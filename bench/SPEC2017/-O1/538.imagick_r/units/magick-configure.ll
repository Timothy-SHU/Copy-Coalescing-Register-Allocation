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

; Function Attrs: nounwind uwtable
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

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ConfigureComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @configure_semaphore) #10
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #10
  %6 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %6, ptr noundef nonnull @DestroyConfigureElement) #10
  store ptr %9, ptr @configure_cache, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4
  store ptr null, ptr @configure_cache, align 8, !tbaa !34
  %11 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #10
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @configure_semaphore) #10
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @DestroyConfigureElement(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyString(ptr noundef nonnull %7) #10
  store ptr %10, ptr %6, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @DestroyString(ptr noundef nonnull %13) #10
  store ptr %16, ptr %12, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr %0, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @DestroyString(ptr noundef nonnull %18) #10
  store ptr %21, ptr %0, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %17, %20, %1
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #10
  ret ptr null
}

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyConfigureOptions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @DestroyLinkedList(ptr noundef %0, ptr noundef nonnull @DestroyOptions) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal ptr @DestroyOptions(ptr noundef %0) #0 {
  %2 = tail call ptr @DestroyStringInfo(ptr noundef %0) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %71

6:                                                ; preds = %2
  %7 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @configure_semaphore) #10
  br label %10

10:                                               ; preds = %9, %6
  %11 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %11) #10
  %12 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %69

14:                                               ; preds = %10
  %15 = tail call ptr @NewLinkedList(i64 noundef 0) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @GetExceptionInfo(ptr noundef nonnull %3) #10
  %18 = tail call ptr @__errno_location() #11
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = call ptr @GetExceptionMessage(i32 noundef %19) #10
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 173, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %20) #10
  %22 = call ptr @DestroyString(ptr noundef %20) #10
  call void @CatchException(ptr noundef nonnull %3) #10
  %23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

24:                                               ; preds = %14
  %25 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.26, ptr noundef %1)
  %26 = tail call ptr @GetNextValueInLinkedList(ptr noundef %25) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %24 ]
  %30 = phi i32 [ %34, %28 ], [ 1, %24 ]
  %31 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %29) #10
  %32 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %29) #10
  %33 = tail call fastcc i32 @LoadConfigureCache(ptr noundef nonnull %15, ptr noundef %31, ptr noundef %32, i64 noundef 0, ptr noundef %1)
  %34 = and i32 %33, %30
  %35 = tail call ptr @GetNextValueInLinkedList(ptr noundef %25) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !46

37:                                               ; preds = %28, %24
  %38 = phi i32 [ 1, %24 ], [ %34, %28 ]
  %39 = tail call ptr @DestroyLinkedList(ptr noundef %25, ptr noundef nonnull @DestroyOptions) #10
  br label %40

40:                                               ; preds = %37, %64
  %41 = phi i32 [ %38, %37 ], [ %65, %64 ]
  %42 = phi i64 [ 0, %37 ], [ %66, %64 ]
  %43 = getelementptr inbounds %struct._ConfigureMapInfo, ptr @ConfigureMap, i64 %42
  %44 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load ptr, ptr %43, align 16, !tbaa !49
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 200, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %47) #10
  br label %64

49:                                               ; preds = %40
  %50 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %44, i32 noundef 0, i64 noundef 56) #10
  store ptr @.str.28, ptr %44, align 8, !tbaa !44
  %51 = load ptr, ptr %43, align 16, !tbaa !49
  %52 = getelementptr inbounds %struct._ConfigureInfo, ptr %44, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !43
  %53 = getelementptr inbounds %struct._ConfigureMapInfo, ptr @ConfigureMap, i64 %42, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct._ConfigureInfo, ptr %44, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !42
  %56 = getelementptr inbounds %struct._ConfigureInfo, ptr %44, i64 0, i32 3
  store i32 1, ptr %56, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct._ConfigureInfo, ptr %44, i64 0, i32 7
  store i64 2880220587, ptr %57, align 8, !tbaa !52
  %58 = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %15, ptr noundef nonnull %44) #10
  %59 = and i32 %58, %41
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load ptr, ptr %52, align 8, !tbaa !43
  %63 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 212, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %62) #10
  br label %64

64:                                               ; preds = %61, %49, %46
  %65 = phi i32 [ %41, %46 ], [ %59, %61 ], [ %59, %49 ]
  %66 = add nuw nsw i64 %42, 1
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %40, !llvm.loop !53

68:                                               ; preds = %64
  store ptr %15, ptr @configure_cache, align 8, !tbaa !34
  br label %69

69:                                               ; preds = %68, %10
  %70 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %70) #10
  br label %71

71:                                               ; preds = %2, %69
  %72 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %101, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %75) #10
  %76 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %76) #10
  %77 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %78 = tail call ptr @GetNextValueInLinkedList(ptr noundef %77) #10
  %79 = icmp eq ptr %0, null
  br i1 %79, label %98, label %80

80:                                               ; preds = %74
  %81 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str) #10
  %82 = icmp eq i32 %81, 0
  %83 = icmp eq ptr %78, null
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %98, label %85

85:                                               ; preds = %80, %92
  %86 = phi ptr [ %93, %92 ], [ %78, %80 ]
  %87 = getelementptr inbounds %struct._ConfigureInfo, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !43
  %89 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef %88) #10
  %90 = icmp eq i32 %89, 0
  %91 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  br i1 %90, label %95, label %92

92:                                               ; preds = %85
  %93 = tail call ptr @GetNextValueInLinkedList(ptr noundef %91) #10
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %85, !llvm.loop !54

95:                                               ; preds = %85
  %96 = tail call ptr @RemoveElementByValueFromLinkedList(ptr noundef %91, ptr noundef nonnull %86) #10
  %97 = tail call i32 @InsertValueInLinkedList(ptr noundef %91, i64 noundef 0, ptr noundef %96) #10
  br label %98

98:                                               ; preds = %92, %95, %74, %80
  %99 = phi ptr [ %78, %80 ], [ %78, %74 ], [ %86, %95 ], [ %93, %92 ]
  %100 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %100) #10
  br label %101

101:                                              ; preds = %98, %71
  %102 = phi ptr [ null, %71 ], [ %99, %98 ]
  ret ptr %102
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 458, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store i64 0, ptr %1, align 8, !tbaa !55
  %5 = tail call ptr @GetConfigureInfo(ptr noundef nonnull @.str, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #10
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #14
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
  %23 = load i32, ptr %22, align 4, !tbaa !56
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !43
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
  br i1 %37, label %38, label %19, !llvm.loop !57

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #10
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @ConfigureInfoCompare) #10
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !34
  store i64 %39, ptr %1, align 8, !tbaa !55
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #1

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @ConfigureInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = load ptr, ptr %5, align 8, !tbaa !44
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

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 552, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store i64 0, ptr %1, align 8, !tbaa !55
  %5 = tail call ptr @GetConfigureInfo(ptr noundef nonnull @.str, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @configure_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #10
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #14
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
  %23 = load i32, ptr %22, align 4, !tbaa !56
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !43
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
  br i1 %39, label %40, label %19, !llvm.loop !58

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @configure_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #10
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @ConfigureCompare) #10
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !34
  store i64 %41, ptr %1, align 8, !tbaa !55
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ConfigureCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureOption(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 613, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  %3 = tail call ptr @AcquireExceptionInfo() #10
  %4 = tail call ptr @GetConfigureInfo(ptr noundef %0, ptr noundef %3)
  %5 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #10
  %6 = icmp eq ptr %4, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 973, ptr noundef nonnull @.str.19) #10
  %9 = getelementptr inbounds %struct._ConfigureInfo, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %10, align 1, !tbaa !59
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @ConstantString(ptr noundef nonnull %10) #10
  br label %17

17:                                               ; preds = %7, %12, %1, %15
  %18 = phi ptr [ %16, %15 ], [ null, %1 ], [ null, %12 ], [ null, %7 ]
  ret ptr %18
}

declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureValue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 973, ptr noundef nonnull @.str.19) #10
  %3 = getelementptr inbounds %struct._ConfigureInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureOptions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #10
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 668, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  %5 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4096) #10
  %6 = call ptr @NewLinkedList(i64 noundef 0) #10
  %7 = call ptr @GetConfigurePaths(ptr noundef %0, ptr poison)
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
  br i1 %22, label %23, label %12, !llvm.loop !60

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
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #10
  ret ptr %6
}

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigurePaths(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #10
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
  %17 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 58) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i8 0, ptr %17, align 1, !tbaa !59
  br label %20

20:                                               ; preds = %19, %13
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %22 = getelementptr i8, ptr %12, i64 %21
  %23 = icmp ult ptr %22, %3
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i8, ptr %22, align 1, !tbaa !59
  %26 = icmp eq i8 %25, 47
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i64 @ConcatenateMagickString(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, i64 noundef 4096) #10
  br label %29

29:                                               ; preds = %27, %24, %20
  %30 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %31 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %30) #10
  %32 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 58) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %13, !llvm.loop !61

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
  %52 = load i8, ptr %51, align 1, !tbaa !59
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #10
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
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #10
  br label %66

66:                                               ; preds = %54, %50
  %67 = call ptr @ConstantString(ptr noundef nonnull @.str.2) #10
  %68 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %67) #10
  %69 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #10
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi ptr [ %72, %71 ], [ %69, %66 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull %74, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #10
  %78 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %79 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %78) #10
  %80 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull %74, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #10
  %81 = call ptr @ConstantString(ptr noundef nonnull %3) #10
  %82 = call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef %81) #10
  %83 = call ptr @DestroyString(ptr noundef nonnull %74) #10
  br label %84

84:                                               ; preds = %76, %73
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #10
  ret ptr %7
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @ConfigureFileToStringInfo(ptr noundef) local_unnamed_addr #1

declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare ptr @GetClientPath() local_unnamed_addr #1

declare void @ChopPathComponents(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListConfigureInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetConfigureInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %9, %59
  %13 = phi i64 [ %61, %59 ], [ 0, %9 ]
  %14 = phi ptr [ %60, %59 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct._ConfigureInfo, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !44
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22, %20
  %27 = load ptr, ptr %15, align 8, !tbaa !34
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %28) #10
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.21) #10
  %34 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.22) #10
  br label %35

35:                                               ; preds = %32, %22
  %36 = load ptr, ptr %15, align 8, !tbaa !34
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct._ConfigureInfo, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr @.str.23, ptr %39
  %42 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %41) #10
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #15
  %44 = icmp slt i64 %43, 14
  br i1 %44, label %45, label %50

45:                                               ; preds = %35, %45
  %46 = phi i64 [ %48, %45 ], [ %43, %35 ]
  %47 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.24) #10
  %48 = add i64 %46, 1
  %49 = icmp eq i64 %48, 14
  br i1 %49, label %50, label %45, !llvm.loop !62

50:                                               ; preds = %45, %35
  %51 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.24) #10
  %52 = load ptr, ptr %15, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct._ConfigureInfo, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, ptr @.str.23, ptr %54
  %57 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %56) #10
  %58 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.25) #10
  br label %59

59:                                               ; preds = %12, %50
  %60 = phi ptr [ %14, %12 ], [ %37, %50 ]
  %61 = add nuw nsw i64 %13, 1
  %62 = load i64, ptr %3, align 8, !tbaa !55
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %12, label %64, !llvm.loop !63

64:                                               ; preds = %59, %9
  %65 = tail call i32 @fflush(ptr noundef %6)
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #10
  br label %67

67:                                               ; preds = %2, %64
  %68 = phi i32 [ 1, %64 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %68
}

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #1

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadConfigureCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1152, ptr noundef nonnull @.str.29, ptr noundef %2) #10
  %11 = tail call ptr @AcquireString(ptr noundef %1) #10
  store ptr %1, ptr %7, align 8, !tbaa !34
  %12 = load i8, ptr %1, align 1, !tbaa !59
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %167, label %14

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
  %22 = load i8, ptr %11, align 1, !tbaa !59
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %167, label %24

24:                                               ; preds = %18
  %25 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef %11, i64 noundef 4096) #10
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
  %34 = load i8, ptr %33, align 1, !tbaa !59
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  call void @GetMagickToken(ptr noundef nonnull %33, ptr noundef nonnull %7, ptr noundef %11) #10
  %37 = load ptr, ptr %7, align 8, !tbaa !34
  %38 = call i32 @LocaleNCompare(ptr noundef %37, ptr noundef nonnull @.str.31, i64 noundef 2) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %32, !llvm.loop !64

40:                                               ; preds = %57, %53, %36, %32, %73, %67, %70, %152, %158, %164, %149, %155, %161, %145, %134, %137, %49, %28, %124, %129, %141
  %41 = phi ptr [ %115, %124 ], [ null, %129 ], [ %21, %141 ], [ %21, %28 ], [ %21, %49 ], [ null, %137 ], [ null, %134 ], [ %21, %145 ], [ %21, %161 ], [ %21, %155 ], [ %21, %149 ], [ %21, %164 ], [ %21, %158 ], [ %21, %152 ], [ %21, %70 ], [ %21, %67 ], [ %21, %73 ], [ %21, %32 ], [ %21, %36 ], [ %21, %53 ], [ %21, %57 ]
  %42 = phi i32 [ %20, %124 ], [ %20, %129 ], [ %20, %141 ], [ %20, %28 ], [ %20, %49 ], [ %135, %137 ], [ %135, %134 ], [ %20, %145 ], [ %20, %161 ], [ %20, %155 ], [ %20, %149 ], [ %20, %164 ], [ %20, %158 ], [ %20, %152 ], [ %65, %70 ], [ %65, %67 ], [ %65, %73 ], [ %20, %32 ], [ %20, %36 ], [ %20, %53 ], [ %20, %57 ]
  %43 = load ptr, ptr %7, align 8, !tbaa !34
  %44 = load i8, ptr %43, align 1, !tbaa !59
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %167, label %18, !llvm.loop !65

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
  %55 = load i8, ptr %54, align 1, !tbaa !59
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %40, label %57

57:                                               ; preds = %53
  call void @GetMagickToken(ptr noundef nonnull %54, ptr noundef nonnull %7, ptr noundef %11) #10
  %58 = load ptr, ptr %7, align 8, !tbaa !34
  %59 = call i32 @LocaleNCompare(ptr noundef %58, ptr noundef nonnull @.str.33, i64 noundef 2) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %40, label %53, !llvm.loop !66

61:                                               ; preds = %46
  %62 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.34) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %111

64:                                               ; preds = %61, %109
  %65 = phi i32 [ %110, %109 ], [ %20, %61 ]
  br label %66

66:                                               ; preds = %89, %64
  br label %67

67:                                               ; preds = %66, %77
  %68 = load i8, ptr %11, align 1, !tbaa !59
  %69 = icmp eq i8 %68, 47
  br i1 %69, label %40, label %70

70:                                               ; preds = %67
  %71 = load i8, ptr %15, align 1, !tbaa !59
  %72 = icmp eq i8 %71, 62
  br i1 %72, label %40, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %7, align 8, !tbaa !34
  %75 = load i8, ptr %74, align 1, !tbaa !59
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %40, label %77

77:                                               ; preds = %73
  %78 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %11, i64 noundef 4096) #10
  %79 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %79, ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %80 = load i8, ptr %11, align 1, !tbaa !59
  %81 = icmp eq i8 %80, 61
  br i1 %81, label %82, label %67, !llvm.loop !67

82:                                               ; preds = %77
  %83 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %83, ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %84 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.35) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  br i1 %16, label %87, label %90

87:                                               ; preds = %86
  %88 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1199, i32 noundef 495, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.7, ptr noundef nonnull %11) #10
  br label %89

89:                                               ; preds = %87, %82
  br label %66, !llvm.loop !67

90:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #10
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #10
  %91 = load i8, ptr %8, align 16, !tbaa !59
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, i64 noundef 4096) #10
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i8, ptr %11, align 1, !tbaa !59
  %97 = icmp eq i8 %96, 47
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %11, i64 noundef 4096) #10
  br label %102

100:                                              ; preds = %95
  %101 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %11, i64 noundef 4096) #10
  br label %102

102:                                              ; preds = %100, %98
  %103 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #10
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = call fastcc i32 @LoadConfigureCache(ptr noundef %0, ptr noundef nonnull %103, ptr noundef nonnull %8, i64 noundef %17, ptr noundef %4)
  %107 = and i32 %106, %65
  %108 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %103) #10
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi i32 [ %107, %105 ], [ %65, %102 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #10
  br label %64, !llvm.loop !67

111:                                              ; preds = %61
  %112 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.37) #10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #13
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #10
  call void @GetExceptionInfo(ptr noundef nonnull %9) #10
  %118 = tail call ptr @__errno_location() #11
  %119 = load i32, ptr %118, align 4, !tbaa !45
  %120 = call ptr @GetExceptionMessage(i32 noundef %119) #10
  %121 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1235, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %120) #10
  %122 = call ptr @DestroyString(ptr noundef %120) #10
  call void @CatchException(ptr noundef nonnull %9) #10
  %123 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

124:                                              ; preds = %114
  %125 = call ptr @ResetMagickMemory(ptr noundef nonnull %115, i32 noundef 0, i64 noundef 56) #10
  %126 = call ptr @ConstantString(ptr noundef %2) #10
  store ptr %126, ptr %115, align 8, !tbaa !44
  %127 = getelementptr inbounds %struct._ConfigureInfo, ptr %115, i64 0, i32 3
  store i32 0, ptr %127, align 8, !tbaa !38
  %128 = getelementptr inbounds %struct._ConfigureInfo, ptr %115, i64 0, i32 7
  store i64 2880220587, ptr %128, align 8, !tbaa !52
  br label %40

129:                                              ; preds = %111
  %130 = icmp eq ptr %21, null
  br i1 %130, label %40, label %131

131:                                              ; preds = %129
  %132 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.38) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %21) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %40

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !43
  %140 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1248, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %139) #10
  br label %40

141:                                              ; preds = %131
  %142 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %142, ptr noundef null, ptr noundef %11) #10
  %143 = load i8, ptr %11, align 1, !tbaa !59
  %144 = icmp eq i8 %143, 61
  br i1 %144, label %145, label %40

145:                                              ; preds = %141
  %146 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %146, ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %147 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %147, ptr noundef nonnull %7, ptr noundef nonnull %11) #10
  %148 = load i8, ptr %6, align 16, !tbaa !59
  switch i8 %148, label %40 [
    i8 78, label %149
    i8 110, label %149
    i8 83, label %155
    i8 115, label %155
    i8 86, label %161
    i8 118, label %161
  ]

149:                                              ; preds = %145, %145
  %150 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.39) #10
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %40

152:                                              ; preds = %149
  %153 = call ptr @ConstantString(ptr noundef nonnull %11) #10
  %154 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 1
  store ptr %153, ptr %154, align 8, !tbaa !43
  br label %40

155:                                              ; preds = %145, %145
  %156 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.40) #10
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %40

158:                                              ; preds = %155
  %159 = call i32 @IsMagickTrue(ptr noundef nonnull %11) #10
  %160 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 4
  store i32 %159, ptr %160, align 4, !tbaa !56
  br label %40

161:                                              ; preds = %145, %145
  %162 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.41) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %40

164:                                              ; preds = %161
  %165 = call ptr @ConstantString(ptr noundef nonnull %11) #10
  %166 = getelementptr inbounds %struct._ConfigureInfo, ptr %21, i64 0, i32 2
  store ptr %165, ptr %166, align 8, !tbaa !42
  br label %40

167:                                              ; preds = %40, %18, %5
  %168 = phi i32 [ 1, %5 ], [ %42, %40 ], [ %20, %18 ]
  %169 = call ptr @RelinquishMagickMemory(ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #10
  ret i32 %168
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #9

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind willreturn memory(read) }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 24}
!39 = !{!"_ConfigureInfo", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 28, !35, i64 32, !35, i64 40, !41, i64 48}
!40 = !{!"int", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!39, !35, i64 16}
!43 = !{!39, !35, i64 8}
!44 = !{!39, !35, i64 0}
!45 = !{!40, !40, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!50, !35, i64 0}
!50 = !{!"_ConfigureMapInfo", !35, i64 0, !35, i64 8}
!51 = !{!50, !35, i64 8}
!52 = !{!39, !41, i64 48}
!53 = distinct !{!53, !47, !48}
!54 = distinct !{!54, !47, !48}
!55 = !{!41, !41, i64 0}
!56 = !{!39, !40, i64 28}
!57 = distinct !{!57, !47, !48}
!58 = distinct !{!58, !47, !48}
!59 = !{!36, !36, i64 0}
!60 = distinct !{!60, !47, !48}
!61 = distinct !{!61, !47, !48}
!62 = distinct !{!62, !47, !48}
!63 = distinct !{!63, !47, !48}
!64 = distinct !{!64, !47, !48}
!65 = distinct !{!65, !47, !48}
!66 = distinct !{!66, !47, !48}
!67 = distinct !{!67, !47, !48}
