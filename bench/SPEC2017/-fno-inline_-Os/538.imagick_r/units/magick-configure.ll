; ModuleID = 'magick/configure.c'
source_filename = "magick/configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ConfigureMapInfo = type { ptr, ptr }
%struct._ConfigureInfo = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@configure_semaphore = internal global ptr null, align 8
@configure_cache = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"magick/configure.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Searching for configure file: \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"UnableToOpenConfigureFile\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"MAGICK_CONFIGURE_PATH\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"MAGICK_HOME\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%s/etc/%s/\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ImageMagick-6\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%s/share/%s/\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"/usr/lib64/ImageMagick-6.8.9//config-Q16/\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"%s%s.config%sImageMagick%s\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%s%s.magick%s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Name           Value\0A\00", align 1
@.str.22 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"configure.xml\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@ConfigureMap = internal unnamed_addr constant [3 x %struct._ConfigureMapInfo] [%struct._ConfigureMapInfo { ptr @.str.42, ptr @.str.43 }, %struct._ConfigureMapInfo { ptr @.str.44, ptr @.str.45 }, %struct._ConfigureMapInfo { ptr @.str.46, ptr @.str.2 }], align 16
@.str.28 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Loading configure file \22%s\22 ...\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"<configure\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"ImageMagick\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"QuantumDepth\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"FEATURES\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ConfigureComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #10
  store ptr %4, ptr @configure_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConfigureComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @configure_semaphore) #10
  %4 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #10
  %7 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %7, ptr noundef nonnull @DestroyConfigureElement) #10
  br label %11

11:                                               ; preds = %9, %5
  store ptr null, ptr @configure_cache, align 8, !tbaa !34
  %12 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #10
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @configure_semaphore) #10
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @DestroyConfigureElement(ptr noundef %0) #0 !PGOFuncName !38 {
  %2 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyString(ptr noundef nonnull %7) #10
  store ptr %10, ptr %6, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @DestroyString(ptr noundef nonnull %13) #10
  store ptr %16, ptr %12, align 8, !tbaa !44
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @DestroyString(ptr noundef nonnull %18) #10
  store ptr %21, ptr %0, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %17, %20, %1
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #10
  ret ptr null
}

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyConfigureOptions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @DestroyLinkedList(ptr noundef %0, ptr noundef nonnull @DestroyOptions) #10
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyOptions(ptr noundef %0) #0 !PGOFuncName !46 {
  %2 = tail call ptr @DestroyStringInfo(ptr noundef %0) #10
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetConfigureInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @IsConfigureCacheInstantiated(ptr noundef %1) #11, !range !47
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %6) #10
  %7 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %7) #10
  %8 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %9 = tail call ptr @GetNextValueInLinkedList(ptr noundef %8) #10
  %10 = icmp eq ptr %0, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = icmp eq ptr %9, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %14, %23
  %17 = phi ptr [ %24, %23 ], [ %9, %14 ]
  %18 = getelementptr inbounds %struct._ConfigureInfo, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef %19) #10
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  br i1 %21, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @GetNextValueInLinkedList(ptr noundef %22) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %16, !llvm.loop !48

26:                                               ; preds = %16
  %27 = tail call ptr @RemoveElementByValueFromLinkedList(ptr noundef %22, ptr noundef nonnull %17) #10
  %28 = tail call i32 @InsertValueInLinkedList(ptr noundef %22, i64 noundef 0, ptr noundef %27) #10
  br label %29

29:                                               ; preds = %23, %26, %14, %5, %11
  %30 = phi ptr [ %9, %11 ], [ %9, %5 ], [ %17, %26 ], [ null, %14 ], [ null, %23 ]
  %31 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %31) #10
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi ptr [ null, %2 ], [ %30, %29 ]
  ret ptr %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsConfigureCacheInstantiated(ptr noundef %0) unnamed_addr #0 !PGOFuncName !50 {
  %2 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @configure_semaphore) #10
  %8 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  tail call void @LockSemaphoreInfo(ptr noundef %10) #10
  %11 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @AcquireConfigureCache(ptr noundef %0) #11
  store ptr %14, ptr @configure_cache, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #10
  %17 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ 1, %1 ]
  ret i32 %21
}

; Function Attrs: optsize
declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetConfigureInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 458, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store i64 0, ptr %1, align 8, !tbaa !51
  %5 = tail call ptr @GetConfigureInfo(ptr noundef nonnull @.str, ptr noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #10
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #10
  %15 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #10
  %16 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %35) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !53

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #10
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @ConfigureInfoCompare) #10
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !34
  store i64 %39, ptr %1, align 8, !tbaa !51
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ConfigureInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !54 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._ConfigureInfo, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %1, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct._ConfigureInfo, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %10 ]
  %18 = phi ptr [ %9, %14 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = load ptr, ptr %17, align 8, !tbaa !34
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #10
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetConfigureList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 552, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store i64 0, ptr %1, align 8, !tbaa !51
  %5 = tail call ptr @GetConfigureInfo(ptr noundef nonnull @.str, ptr noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #10
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #10
  %15 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #10
  %16 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !44
  %32 = tail call ptr @ConstantString(ptr noundef %31) #10
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %38 = tail call ptr @GetNextValueInLinkedList(ptr noundef %37) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !55

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #10
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @ConfigureCompare) #10
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !34
  store i64 %41, ptr %1, align 8, !tbaa !51
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ConfigureCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !56 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetConfigureOption(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 613, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  %3 = tail call ptr @AcquireExceptionInfo() #10
  %4 = tail call ptr @GetConfigureInfo(ptr noundef %0, ptr noundef %3) #11
  %5 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #10
  %6 = icmp eq ptr %4, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @GetConfigureValue(ptr noundef nonnull %4) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %8, align 1, !tbaa !57
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @ConstantString(ptr noundef nonnull %8) #10
  br label %15

15:                                               ; preds = %7, %10, %1, %13
  %16 = phi ptr [ %14, %13 ], [ null, %1 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetConfigureValue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 973, ptr noundef nonnull @.str.19) #10
  %3 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetConfigureOptions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #13
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 668, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  %5 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4096) #10
  %6 = call ptr @NewLinkedList(i64 noundef 0) #10
  %7 = call ptr @GetConfigurePaths(ptr noundef %0, ptr poison) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  call void @ResetLinkedListIterator(ptr noundef nonnull %7) #10
  %10 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %7) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %20
  %13 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %14 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef nonnull %13, ptr noundef %0) #10
  %15 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 683, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #10
  %16 = call ptr @ConfigureFileToStringInfo(ptr noundef nonnull %3) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call i32 @AppendValueToLinkedList(ptr noundef %6, ptr noundef nonnull %16) #10
  br label %20

20:                                               ; preds = %18, %12
  %21 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %7) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !58

23:                                               ; preds = %20, %9
  %24 = call ptr @DestroyLinkedList(ptr noundef nonnull %7, ptr noundef nonnull @RelinquishMagickMemory) #10
  br label %25

25:                                               ; preds = %23, %2
  %26 = call i64 @GetNumberOfElementsInLinkedList(ptr noundef %6) #10
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 710, i32 noundef 395, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %0) #10
  br label %30

30:                                               ; preds = %28, %25
  call void @ResetLinkedListIterator(ptr noundef %6) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #13
  ret ptr %6
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetConfigurePaths(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #13
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 756, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  %6 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4096) #10
  %7 = call ptr @NewLinkedList(i64 noundef 0) #10
  %8 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.8) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %8, i64 -1
  %12 = getelementptr i8, ptr %3, i64 -1
  br label %13

13:                                               ; preds = %10, %29
  %14 = phi ptr [ %11, %10 ], [ %32, %29 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %15, i64 noundef 4096) #10
  %17 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 58) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i8 0, ptr %17, align 1, !tbaa !57
  br label %20

20:                                               ; preds = %19, %13
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #14
  %22 = getelementptr i8, ptr %12, i64 %21
  %23 = icmp ult ptr %22, %3
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i8, ptr %22, align 1, !tbaa !57
  %26 = icmp eq i8 %25, 47
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i64 @ConcatenateMagickString(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, i64 noundef 4096) #10
  br label %29

29:                                               ; preds = %27, %24, %20
  %30 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %31 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %30) #10
  %32 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 58) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %13, !llvm.loop !59

34:                                               ; preds = %29
  %35 = call ptr @DestroyString(ptr noundef nonnull %8) #10
  br label %36

36:                                               ; preds = %34, %2
  %37 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.10) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %37, ptr noundef nonnull @.str.12) #10
  %41 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %42 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %41) #10
  %43 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %37, ptr noundef nonnull @.str.12) #10
  %44 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %45 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %44) #10
  %46 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #10
  %47 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %48 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %47) #10
  %49 = call ptr @DestroyString(ptr noundef nonnull %37) #10
  br label %50

50:                                               ; preds = %39, %36
  %51 = call ptr @GetClientPath() #10
  %52 = load i8, ptr %51, align 1, !tbaa !57
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  %55 = call ptr @GetClientPath() #10
  %56 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef %55, i64 noundef 4096) #10
  call void @ChopPathComponents(ptr noundef nonnull %4, i64 noundef 1) #10
  %57 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #10
  %58 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %59 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %58) #10
  %60 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #10
  %61 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %62 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %61) #10
  %63 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #10
  %64 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %65 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %64) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  br label %66

66:                                               ; preds = %54, %50
  %67 = call ptr @ConstantString(ptr noundef nonnull @.str.2) #10
  %68 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %67) #10
  %69 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %66, %71
  %75 = phi ptr [ %72, %71 ], [ %69, %66 ]
  %76 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull %75, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #10
  %77 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %78 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %77) #10
  %79 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull %75, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #10
  %80 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %81 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %80) #10
  %82 = call ptr @DestroyString(ptr noundef nonnull %75) #10
  br label %83

83:                                               ; preds = %74, %71
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #13
  ret ptr %7
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ConfigureFileToStringInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetClientPath() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ChopPathComponents(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListConfigureInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetConfigureInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef %1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !51
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %9, %61
  %13 = phi i64 [ %63, %61 ], [ 0, %9 ]
  %14 = phi ptr [ %62, %61 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct._ConfigureInfo, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !45
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %16, %20 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %30) #10
  br label %34

34:                                               ; preds = %32, %28
  %35 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.21) #10
  %36 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.22) #10
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %15, align 8, !tbaa !34
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct._ConfigureInfo, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr @.str.23, ptr %41
  %44 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %43) #10
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #14
  %46 = icmp slt i64 %45, 14
  br i1 %46, label %47, label %52

47:                                               ; preds = %37, %47
  %48 = phi i64 [ %50, %47 ], [ %45, %37 ]
  %49 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.24) #10
  %50 = add i64 %48, 1
  %51 = icmp eq i64 %50, 14
  br i1 %51, label %52, label %47, !llvm.loop !60

52:                                               ; preds = %47, %37
  %53 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.24) #10
  %54 = load ptr, ptr %15, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct._ConfigureInfo, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !43
  %57 = icmp eq ptr %56, null
  %58 = select i1 %57, ptr @.str.23, ptr %56
  %59 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %58) #10
  %60 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.25) #10
  br label %61

61:                                               ; preds = %12, %52
  %62 = phi ptr [ %14, %12 ], [ %39, %52 ]
  %63 = add nuw nsw i64 %13, 1
  %64 = icmp eq i64 %63, %10
  br i1 %64, label %65, label %12, !llvm.loop !61

65:                                               ; preds = %61, %9
  %66 = tail call i32 @fflush(ptr noundef %6) #11
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #10
  br label %68

68:                                               ; preds = %2, %65
  %69 = phi i32 [ 1, %65 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %69
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireConfigureCache(ptr noundef %0) unnamed_addr #0 !PGOFuncName !62 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call ptr @NewLinkedList(i64 noundef 0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #10
  %6 = tail call ptr @__errno_location() #15
  %7 = load i32, ptr %6, align 4, !tbaa !63
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #10
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 173, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %8) #10
  %10 = call ptr @DestroyString(ptr noundef %8) #10
  call void @CatchException(ptr noundef nonnull %2) #10
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #16
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.26, ptr noundef %0) #11
  %14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %22, %16 ], [ 1, %12 ]
  %19 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %17) #10
  %20 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %17) #10
  %21 = tail call fastcc i32 @LoadConfigureCache(ptr noundef nonnull %3, ptr noundef %19, ptr noundef %20, i64 noundef 0, ptr noundef %0) #11
  %22 = and i32 %21, %18
  %23 = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !64

25:                                               ; preds = %16, %12
  %26 = phi i32 [ 1, %12 ], [ %22, %16 ]
  %27 = tail call ptr @DestroyConfigureOptions(ptr noundef %13) #11
  br label %28

28:                                               ; preds = %25, %49
  %29 = phi i32 [ %26, %25 ], [ %50, %49 ]
  %30 = phi i64 [ 0, %25 ], [ %51, %49 ]
  %31 = getelementptr inbounds %struct._ConfigureMapInfo, ptr @ConfigureMap, i64 %30
  %32 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %32, i32 noundef 0, i64 noundef 56) #10
  store ptr @.str.28, ptr %32, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct._ConfigureInfo, ptr %32, i64 0, i32 1
  %37 = load <2 x ptr>, ptr %31, align 16, !tbaa !34
  store <2 x ptr> %37, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct._ConfigureInfo, ptr %32, i64 0, i32 3
  store i32 1, ptr %38, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct._ConfigureInfo, ptr %32, i64 0, i32 7
  store i64 2880220587, ptr %39, align 8, !tbaa !65
  %40 = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %3, ptr noundef nonnull %32) #10
  %41 = and i32 %40, %29
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34, %28
  %44 = phi ptr [ %31, %28 ], [ %36, %34 ]
  %45 = phi i64 [ 200, %28 ], [ 212, %34 ]
  %46 = phi i32 [ %29, %28 ], [ 0, %34 ]
  %47 = load ptr, ptr %44, align 8, !tbaa !34
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %45, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %47) #10
  br label %49

49:                                               ; preds = %43, %34
  %50 = phi i32 [ %41, %34 ], [ %46, %43 ]
  %51 = add nuw nsw i64 %30, 1
  %52 = icmp eq i64 %51, 3
  br i1 %52, label %53, label %28, !llvm.loop !66

53:                                               ; preds = %49
  ret ptr %3
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @LoadConfigureCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !67 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1152, ptr noundef nonnull @.str.29, ptr noundef %2) #10
  %11 = tail call ptr @AcquireString(ptr noundef %1) #10
  store ptr %1, ptr %7, align 8, !tbaa !34
  %12 = load i8, ptr %1, align 1, !tbaa !57
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %168, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = icmp ugt i64 %3, 200
  %17 = add nuw nsw i64 %3, 1
  br label %18

18:                                               ; preds = %14, %40
  %19 = phi ptr [ %1, %14 ], [ %43, %40 ]
  %20 = phi i32 [ 1, %14 ], [ %42, %40 ]
  %21 = phi ptr [ null, %14 ], [ %41, %40 ]
  call void @GetMagickToken(ptr noundef nonnull %19, ptr noundef nonnull %7, ptr noundef %11) #10
  %22 = load i8, ptr %11, align 1, !tbaa !57
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %168, label %24

24:                                               ; preds = %18
  %25 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %11, i64 noundef 4096) #10
  %26 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.30, i64 noundef 9) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 8, !tbaa !34
  %30 = call i32 @LocaleNCompare(ptr noundef %29, ptr noundef nonnull @.str.31, i64 noundef 2) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28, %36
  %33 = load ptr, ptr %7, align 8, !tbaa !34
  %34 = load i8, ptr %33, align 1, !tbaa !57
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  call void @GetMagickToken(ptr noundef nonnull %33, ptr noundef nonnull %7, ptr noundef %11) #10
  %37 = load ptr, ptr %7, align 8, !tbaa !34
  %38 = call i32 @LocaleNCompare(ptr noundef %37, ptr noundef nonnull @.str.31, i64 noundef 2) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %32, !llvm.loop !68

40:                                               ; preds = %57, %53, %36, %32, %74, %68, %71, %153, %159, %165, %150, %156, %162, %146, %135, %138, %49, %28, %125, %130, %142
  %41 = phi ptr [ %116, %125 ], [ null, %130 ], [ %21, %142 ], [ %21, %28 ], [ %21, %49 ], [ null, %138 ], [ null, %135 ], [ %21, %146 ], [ %21, %162 ], [ %21, %156 ], [ %21, %150 ], [ %21, %165 ], [ %21, %159 ], [ %21, %153 ], [ %21, %71 ], [ %21, %68 ], [ %21, %74 ], [ %21, %32 ], [ %21, %36 ], [ %21, %53 ], [ %21, %57 ]
  %42 = phi i32 [ %20, %125 ], [ %20, %130 ], [ %20, %142 ], [ %20, %28 ], [ %20, %49 ], [ 0, %138 ], [ %136, %135 ], [ %20, %146 ], [ %20, %162 ], [ %20, %156 ], [ %20, %150 ], [ %20, %165 ], [ %20, %159 ], [ %20, %153 ], [ %65, %71 ], [ %65, %68 ], [ %65, %74 ], [ %20, %32 ], [ %20, %36 ], [ %20, %53 ], [ %20, %57 ]
  %43 = load ptr, ptr %7, align 8, !tbaa !34
  %44 = load i8, ptr %43, align 1, !tbaa !57
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %168, label %18, !llvm.loop !69

46:                                               ; preds = %24
  %47 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.32, i64 noundef 4) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load ptr, ptr %7, align 8, !tbaa !34
  %51 = call i32 @LocaleNCompare(ptr noundef %50, ptr noundef nonnull @.str.33, i64 noundef 2) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %40, label %53

53:                                               ; preds = %49, %57
  %54 = load ptr, ptr %7, align 8, !tbaa !34
  %55 = load i8, ptr %54, align 1, !tbaa !57
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %40, label %57

57:                                               ; preds = %53
  call void @GetMagickToken(ptr noundef nonnull %54, ptr noundef nonnull %7, ptr noundef %11) #10
  %58 = load ptr, ptr %7, align 8, !tbaa !34
  %59 = call i32 @LocaleNCompare(ptr noundef %58, ptr noundef nonnull @.str.33, i64 noundef 2) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %40, label %53, !llvm.loop !70

61:                                               ; preds = %46
  %62 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.34) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %112

64:                                               ; preds = %61, %110
  %65 = phi i32 [ %111, %110 ], [ %20, %61 ]
  br label %66

66:                                               ; preds = %90, %64
  %67 = load i8, ptr %11, align 1, !tbaa !57
  br label %68

68:                                               ; preds = %66, %78
  %69 = phi i8 [ %67, %66 ], [ %81, %78 ]
  %70 = icmp eq i8 %69, 47
  br i1 %70, label %40, label %71

71:                                               ; preds = %68
  %72 = load i8, ptr %15, align 1, !tbaa !57
  %73 = icmp eq i8 %72, 62
  br i1 %73, label %40, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %7, align 8, !tbaa !34
  %76 = load i8, ptr %75, align 1, !tbaa !57
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %40, label %78

78:                                               ; preds = %74
  %79 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %11, i64 noundef 4096) #10
  %80 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %80, ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %81 = load i8, ptr %11, align 1, !tbaa !57
  %82 = icmp eq i8 %81, 61
  br i1 %82, label %83, label %68, !llvm.loop !71

83:                                               ; preds = %78
  %84 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %84, ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %85 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.35) #10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  br i1 %16, label %88, label %91

88:                                               ; preds = %87
  %89 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1199, i32 noundef 495, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.7, ptr noundef nonnull %11) #10
  br label %90

90:                                               ; preds = %88, %83
  br label %66, !llvm.loop !71

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #13
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #10
  %92 = load i8, ptr %8, align 16, !tbaa !57
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, i64 noundef 4096) #10
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i8, ptr %11, align 1, !tbaa !57
  %98 = icmp eq i8 %97, 47
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %11, i64 noundef 4096) #10
  br label %103

101:                                              ; preds = %96
  %102 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %11, i64 noundef 4096) #10
  br label %103

103:                                              ; preds = %101, %99
  %104 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = call fastcc i32 @LoadConfigureCache(ptr noundef %0, ptr noundef nonnull %104, ptr noundef nonnull %8, i64 noundef %17, ptr noundef %4) #11
  %108 = and i32 %107, %65
  %109 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %104) #10
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i32 [ %108, %106 ], [ %65, %103 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #13
  br label %64, !llvm.loop !71

112:                                              ; preds = %61
  %113 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.37) #10
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  %116 = call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #17
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #13
  call void @GetExceptionInfo(ptr noundef nonnull %9) #10
  %119 = tail call ptr @__errno_location() #15
  %120 = load i32, ptr %119, align 4, !tbaa !63
  %121 = call ptr @GetExceptionMessage(i32 noundef %120) #10
  %122 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1235, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %121) #10
  %123 = call ptr @DestroyString(ptr noundef %121) #10
  call void @CatchException(ptr noundef nonnull %9) #10
  %124 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #16
  unreachable

125:                                              ; preds = %115
  %126 = call ptr @ResetMagickMemory(ptr noundef nonnull %116, i32 noundef 0, i64 noundef 56) #10
  %127 = call ptr @ConstantString(ptr noundef %2) #10
  store ptr %127, ptr %116, align 8, !tbaa !45
  %128 = getelementptr inbounds %struct._ConfigureInfo, ptr %116, i64 0, i32 3
  store i32 0, ptr %128, align 8, !tbaa !39
  %129 = getelementptr inbounds %struct._ConfigureInfo, ptr %116, i64 0, i32 7
  store i64 2880220587, ptr %129, align 8, !tbaa !65
  br label %40

130:                                              ; preds = %112
  %131 = icmp eq ptr %21, null
  br i1 %131, label %40, label %132

132:                                              ; preds = %130
  %133 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.38) #10
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %21) #10
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %40

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !44
  %141 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1248, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %140) #10
  br label %40

142:                                              ; preds = %132
  %143 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %143, ptr noundef null, ptr noundef nonnull %11) #10
  %144 = load i8, ptr %11, align 1, !tbaa !57
  %145 = icmp eq i8 %144, 61
  br i1 %145, label %146, label %40

146:                                              ; preds = %142
  %147 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %147, ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %148 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %148, ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %149 = load i8, ptr %6, align 16, !tbaa !57
  switch i8 %149, label %40 [
    i8 78, label %150
    i8 110, label %150
    i8 83, label %156
    i8 115, label %156
    i8 86, label %162
    i8 118, label %162
  ]

150:                                              ; preds = %146, %146
  %151 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.39) #10
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %40

153:                                              ; preds = %150
  %154 = call ptr @ConstantString(ptr noundef nonnull %11) #10
  %155 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 1
  store ptr %154, ptr %155, align 8, !tbaa !44
  br label %40

156:                                              ; preds = %146, %146
  %157 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.40) #10
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %40

159:                                              ; preds = %156
  %160 = call i32 @IsMagickTrue(ptr noundef nonnull %11) #10
  %161 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 4
  store i32 %160, ptr %161, align 4, !tbaa !52
  br label %40

162:                                              ; preds = %146, %146
  %163 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.41) #10
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %40

165:                                              ; preds = %162
  %166 = call ptr @ConstantString(ptr noundef nonnull %11) #10
  %167 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 2
  store ptr %166, ptr %167, align 8, !tbaa !43
  br label %40

168:                                              ; preds = %40, %18, %5
  %169 = phi i32 [ 1, %5 ], [ %20, %18 ], [ %42, %40 ]
  %170 = call ptr @RelinquishMagickMemory(ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  ret i32 %169
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"configure.c:DestroyConfigureElement"}
!39 = !{!40, !41, i64 24}
!40 = !{!"_ConfigureInfo", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 28, !35, i64 32, !35, i64 40, !42, i64 48}
!41 = !{!"int", !36, i64 0}
!42 = !{!"long", !36, i64 0}
!43 = !{!40, !35, i64 16}
!44 = !{!40, !35, i64 8}
!45 = !{!40, !35, i64 0}
!46 = !{!"configure.c:DestroyOptions"}
!47 = !{i32 0, i32 2}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"configure.c:IsConfigureCacheInstantiated"}
!51 = !{!42, !42, i64 0}
!52 = !{!40, !41, i64 28}
!53 = distinct !{!53, !49}
!54 = !{!"configure.c:ConfigureInfoCompare"}
!55 = distinct !{!55, !49}
!56 = !{!"configure.c:ConfigureCompare"}
!57 = !{!36, !36, i64 0}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = !{!"configure.c:AcquireConfigureCache"}
!63 = !{!41, !41, i64 0}
!64 = distinct !{!64, !49}
!65 = !{!40, !42, i64 48}
!66 = distinct !{!66, !49}
!67 = !{!"configure.c:LoadConfigureCache"}
!68 = distinct !{!68, !49}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = distinct !{!71, !49}
