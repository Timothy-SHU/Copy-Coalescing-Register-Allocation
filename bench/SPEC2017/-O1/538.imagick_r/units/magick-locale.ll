; ModuleID = 'magick/locale.c'
source_filename = "magick/locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._LocaleInfo = type { ptr, ptr, ptr, i32, ptr, ptr, i64 }

@.str = private unnamed_addr constant [16 x i8] c"magick/locale.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@locale_semaphore = internal global ptr null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@locale_cache = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Searching for locale file: \22%s\22\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Tag/Message\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"locale.xml\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"english.xml\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Loading locale configure file \22%s\22 ...\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"<locale\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"</locale>\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"<localemap>\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"</localemap>\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"<message\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"</message>\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.44 = private unnamed_addr constant [143 x i8] c"<?xml version=\221.0\22?><localemap>  <locale name=\22C\22>    <Exception>     <Message name=\22\22>     </Message>    </Exception>  </locale></localemap>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyLocaleOptions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 304, ptr noundef nonnull @.str.2) #17
  %3 = tail call ptr @DestroyLinkedList(ptr noundef %0, ptr noundef nonnull @DestroyOptions) #17
  ret ptr %3
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @DestroyOptions(ptr noundef %0) #0 {
  %2 = tail call ptr @DestroyStringInfo(ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @FormatLocaleFileList(ptr nocapture noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @FormatLocaleFile(ptr nocapture noundef %0, ptr noalias nocapture noundef readonly %1, ...) local_unnamed_addr #2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %5 = sext i32 %4 to i64
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i64 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @FormatLocaleStringList(ptr noalias nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #17
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i64 %1
  %9 = getelementptr i8, ptr %8, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !34
  br label %10

10:                                               ; preds = %7, %4
  %11 = sext i32 %5 to i64
  ret i64 %11
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @FormatLocaleString(ptr noalias nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ...) local_unnamed_addr #2 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #17
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i64 %1
  %9 = getelementptr i8, ptr %8, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !34, !alias.scope !37, !noalias !40
  br label %10

10:                                               ; preds = %3, %7
  %11 = sext i32 %5 to i64
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleInfo_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %94

6:                                                ; preds = %2
  %7 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @locale_semaphore) #17
  br label %10

10:                                               ; preds = %9, %6
  %11 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @LockSemaphoreInfo(ptr noundef %11) #17
  %12 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %92

14:                                               ; preds = %10
  %15 = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @ConstantString(ptr noundef nonnull %15) #17
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %18, %17 ], [ null, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.14) #17
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %23, %22 ], [ %20, %19 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #17
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi ptr [ %28, %27 ], [ %25, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #17
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi ptr [ %33, %32 ], [ %30, %29 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.17) #17
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi ptr [ %38, %37 ], [ %35, %34 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call ptr @ConstantString(ptr noundef nonnull @.str.18) #17
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi ptr [ %43, %42 ], [ %40, %39 ]
  %46 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef null, ptr noundef nonnull @DestroyLocaleNode) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @GetExceptionInfo(ptr noundef nonnull %3) #17
  %49 = tail call ptr @__errno_location() #18
  %50 = load i32, ptr %49, align 4, !tbaa !44
  %51 = call ptr @GetExceptionMessage(i32 noundef %50) #17
  %52 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 198, i32 noundef 700, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %51) #17
  %53 = call ptr @DestroyString(ptr noundef %51) #17
  call void @CatchException(ptr noundef nonnull %3) #17
  %54 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #17
  call void @MagickCoreTerminus() #17
  call void @_exit(i32 noundef 1) #19
  unreachable

55:                                               ; preds = %44
  %56 = tail call ptr @GetLocaleOptions(ptr noundef nonnull @.str.19, ptr noundef %1)
  %57 = tail call ptr @GetNextValueInLinkedList(ptr noundef %56) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %64, %59 ], [ %57, %55 ]
  %61 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %60) #17
  %62 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %60) #17
  %63 = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %46, ptr noundef %61, ptr noundef %62, ptr noundef %45, i64 noundef 0, ptr noundef %1)
  %64 = tail call ptr @GetNextValueInLinkedList(ptr noundef %56) #17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %59, !llvm.loop !46

66:                                               ; preds = %59, %55
  %67 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 304, ptr noundef nonnull @.str.2) #17
  %68 = tail call ptr @DestroyLinkedList(ptr noundef %56, ptr noundef nonnull @DestroyOptions) #17
  %69 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %46) #17
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = tail call ptr @GetLocaleOptions(ptr noundef nonnull @.str.22, ptr noundef %1)
  %73 = tail call ptr @GetNextValueInLinkedList(ptr noundef %72) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %71, %75
  %76 = phi ptr [ %80, %75 ], [ %73, %71 ]
  %77 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %76) #17
  %78 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %76) #17
  %79 = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %46, ptr noundef %77, ptr noundef %78, ptr noundef %45, i64 noundef 0, ptr noundef %1)
  %80 = tail call ptr @GetNextValueInLinkedList(ptr noundef %72) #17
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %75, !llvm.loop !49

82:                                               ; preds = %75, %71
  %83 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 304, ptr noundef nonnull @.str.2) #17
  %84 = tail call ptr @DestroyLinkedList(ptr noundef %72, ptr noundef nonnull @DestroyOptions) #17
  br label %85

85:                                               ; preds = %82, %66
  %86 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %46) #17
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %46, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.23, ptr noundef %45, i64 noundef 0, ptr noundef %1)
  br label %90

90:                                               ; preds = %88, %85
  store ptr %46, ptr @locale_cache, align 8, !tbaa !42
  %91 = tail call ptr @DestroyString(ptr noundef %45) #17
  br label %92

92:                                               ; preds = %90, %10
  %93 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @UnlockSemaphoreInfo(ptr noundef %93) #17
  br label %94

94:                                               ; preds = %2, %92
  %95 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %96 = icmp eq ptr %95, null
  br i1 %96, label %113, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @LockSemaphoreInfo(ptr noundef %98) #17
  %99 = icmp eq ptr %0, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #17
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100, %97
  %104 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  tail call void @ResetSplayTreeIterator(ptr noundef %104) #17
  %105 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %106 = tail call ptr @GetNextValueInSplayTree(ptr noundef %105) #17
  br label %110

107:                                              ; preds = %100
  %108 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %109 = tail call ptr @GetValueFromSplayTree(ptr noundef %108, ptr noundef nonnull %0) #17
  br label %110

110:                                              ; preds = %103, %107
  %111 = phi ptr [ %109, %107 ], [ %106, %103 ]
  %112 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @UnlockSemaphoreInfo(ptr noundef %112) #17
  br label %113

113:                                              ; preds = %110, %94
  %114 = phi ptr [ null, %94 ], [ %111, %110 ]
  ret ptr %114
}

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 605, ptr noundef nonnull @.str.4, ptr noundef %0) #17
  store i64 0, ptr %1, align 8, !tbaa !50
  %5 = tail call ptr @GetLocaleInfo_(ptr noundef nonnull @.str.3, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #17
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @LockSemaphoreInfo(ptr noundef %14) #17
  %15 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #17
  %16 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._LocaleInfo, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !52
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._LocaleInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 1) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !42
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %36 = tail call ptr @GetNextValueInSplayTree(ptr noundef %35) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !55

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #17
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @LocaleInfoCompare) #17
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !42
  store i64 %39, ptr %1, align 8, !tbaa !50
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #1

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal i32 @LocaleInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #17
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !42
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._LocaleInfo, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %1, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct._LocaleInfo, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !42
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %10 ]
  %18 = phi ptr [ %9, %14 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = load ptr, ptr %17, align 8, !tbaa !42
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #17
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 700, ptr noundef nonnull @.str.4, ptr noundef %0) #17
  store i64 0, ptr %1, align 8, !tbaa !50
  %5 = tail call ptr @GetLocaleInfo_(ptr noundef nonnull @.str.3, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #17
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @LockSemaphoreInfo(ptr noundef %14) #17
  %15 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %16 = tail call ptr @GetNextValueInSplayTree(ptr noundef %15) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %13, %34
  %19 = phi i64 [ %35, %34 ], [ 0, %13 ]
  %20 = phi ptr [ %37, %34 ], [ %16, %13 ]
  %21 = getelementptr inbounds %struct._LocaleInfo, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !52
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._LocaleInfo, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = tail call i32 @GlobExpression(ptr noundef %26, ptr noundef %0, i32 noundef 1) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8, !tbaa !54
  %31 = tail call ptr @ConstantString(ptr noundef %30) #17
  %32 = add nsw i64 %19, 1
  %33 = getelementptr inbounds ptr, ptr %11, i64 %19
  store ptr %31, ptr %33, align 8, !tbaa !42
  br label %34

34:                                               ; preds = %29, %24, %18
  %35 = phi i64 [ %32, %29 ], [ %19, %24 ], [ %19, %18 ]
  %36 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %37 = tail call ptr @GetNextValueInSplayTree(ptr noundef %36) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %18, !llvm.loop !57

39:                                               ; preds = %34, %13
  %40 = phi i64 [ 0, %13 ], [ %35, %34 ]
  %41 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @UnlockSemaphoreInfo(ptr noundef %41) #17
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %40, i64 noundef 8, ptr noundef nonnull @LocaleTagCompare) #17
  %42 = getelementptr inbounds ptr, ptr %11, i64 %40
  store ptr null, ptr %42, align 8, !tbaa !42
  store i64 %40, ptr %1, align 8, !tbaa !50
  br label %43

43:                                               ; preds = %7, %3, %39
  %44 = phi ptr [ %11, %39 ], [ null, %3 ], [ null, %7 ]
  ret ptr %44
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @LocaleTagCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #17
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleMessage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #17
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @AcquireExceptionInfo() #17
  %9 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull %0), !range !58
  %10 = call ptr @GetLocaleInfo_(ptr noundef nonnull %2, ptr noundef %8)
  %11 = call ptr @DestroyExceptionInfo(ptr noundef %8) #17
  %12 = icmp eq ptr %10, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._LocaleInfo, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %7, %1, %4, %13
  %17 = phi ptr [ %15, %13 ], [ %0, %4 ], [ %0, %1 ], [ %0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #17
  ret ptr %17
}

declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleOptions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #17
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 814, ptr noundef nonnull @.str.4, ptr noundef %0) #17
  %5 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4096) #17
  %6 = call ptr @NewLinkedList(i64 noundef 0) #17
  %7 = call ptr @GetConfigurePaths(ptr noundef %0, ptr noundef %1) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  call void @ResetLinkedListIterator(ptr noundef nonnull %7) #17
  %10 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %7) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %20
  %13 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %14 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %13, ptr noundef %0), !range !58
  %15 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1024, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 829, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #17
  %16 = call ptr @ConfigureFileToStringInfo(ptr noundef nonnull %3) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call i32 @AppendValueToLinkedList(ptr noundef %6, ptr noundef nonnull %16) #17
  br label %20

20:                                               ; preds = %18, %12
  %21 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %7) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !60

23:                                               ; preds = %20, %9
  %24 = call ptr @DestroyLinkedList(ptr noundef nonnull %7, ptr noundef nonnull @RelinquishMagickMemory) #17
  br label %25

25:                                               ; preds = %23, %2
  call void @ResetLinkedListIterator(ptr noundef %6) #17
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #17
  ret ptr %6
}

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #1

declare ptr @GetConfigurePaths(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

declare ptr @ConfigureFileToStringInfo(ptr noundef) local_unnamed_addr #1

declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleValue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 882, ptr noundef nonnull @.str.2) #17
  %3 = getelementptr inbounds %struct._LocaleInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local double @InterpretLocaleValue(ptr noalias noundef %0, ptr noalias noundef writeonly %1) local_unnamed_addr #8 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = load i8, ptr %0, align 1, !tbaa !34
  %5 = icmp eq i8 %4, 48
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = and i8 %8, -33
  %10 = icmp eq i8 %9, 88
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = call i64 @strtoul(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 16) #17
  %13 = uitofp i64 %12 to double
  br label %16

14:                                               ; preds = %6, %2
  %15 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #17
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi double [ %13, %11 ], [ %15, %14 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !42
  store ptr %20, ptr %1, align 8, !tbaa !42
  br label %21

21:                                               ; preds = %19, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret double %17
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListLocaleInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  store i64 0, ptr %3, align 8, !tbaa !50
  %7 = call ptr @GetLocaleInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %57, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !50
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %9, %49
  %13 = phi i64 [ %51, %49 ], [ 0, %9 ]
  %14 = phi ptr [ %50, %49 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._LocaleInfo, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !52
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !56
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22, %20
  %27 = load ptr, ptr %15, align 8, !tbaa !42
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef nonnull %28), !range !58
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9), !range !58
  %34 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.10), !range !58
  br label %35

35:                                               ; preds = %32, %22
  %36 = load ptr, ptr %15, align 8, !tbaa !42
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct._LocaleInfo, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef %39), !range !58
  %41 = load ptr, ptr %15, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct._LocaleInfo, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %43), !range !58
  br label %47

47:                                               ; preds = %45, %35
  %48 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.13), !range !58
  br label %49

49:                                               ; preds = %12, %47
  %50 = phi ptr [ %14, %12 ], [ %37, %47 ]
  %51 = add nuw nsw i64 %13, 1
  %52 = load i64, ptr %3, align 8, !tbaa !50
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %12, label %54, !llvm.loop !61

54:                                               ; preds = %49, %9
  %55 = tail call i32 @fflush(ptr noundef %6)
  %56 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #17
  br label %57

57:                                               ; preds = %2, %54
  %58 = phi i32 [ 1, %54 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %58
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @LocaleComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #17
  store ptr %4, ptr @locale_semaphore, align 8, !tbaa !42
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @LocaleComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @locale_semaphore) #17
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @LockSemaphoreInfo(ptr noundef %5) #17
  %6 = load ptr, ptr @locale_cache, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroySplayTree(ptr noundef nonnull %6) #17
  store ptr %9, ptr @locale_cache, align 8, !tbaa !42
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @locale_semaphore, align 8, !tbaa !42
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #17
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @locale_semaphore) #17
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #10

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @DestroyLocaleNode(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @DestroyString(ptr noundef nonnull %2) #17
  store ptr %5, ptr %0, align 8, !tbaa !56
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct._LocaleInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @DestroyString(ptr noundef nonnull %8) #17
  store ptr %11, ptr %7, align 8, !tbaa !54
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct._LocaleInfo, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @DestroyString(ptr noundef nonnull %14) #17
  store ptr %17, ptr %13, align 8, !tbaa !59
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #17
  ret ptr %19
}

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadLocaleCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1186, ptr noundef nonnull @.str.24, ptr noundef %2) #17
  %14 = icmp eq ptr %1, null
  br i1 %14, label %399, label %15

15:                                               ; preds = %6
  store i8 0, ptr %9, align 16, !tbaa !34
  store i8 0, ptr %8, align 16, !tbaa !34
  store i8 0, ptr %7, align 16, !tbaa !34
  %16 = tail call ptr @SetFatalErrorHandler(ptr noundef nonnull @LocaleFatalErrorHandler) #17
  %17 = tail call ptr @AcquireString(ptr noundef nonnull %1) #17
  store ptr %1, ptr %10, align 8, !tbaa !42
  %18 = getelementptr i8, ptr %9, i64 -1
  %19 = getelementptr i8, ptr %17, i64 -1
  %20 = getelementptr i8, ptr %9, i64 -1
  %21 = getelementptr i8, ptr %9, i64 -1
  %22 = load i8, ptr %1, align 1, !tbaa !34
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %395, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds i8, ptr %7, i64 1
  %26 = getelementptr inbounds i8, ptr %17, i64 1
  %27 = getelementptr inbounds i8, ptr %17, i64 1
  %28 = icmp ugt i64 %4, 200
  %29 = add nuw nsw i64 %4, 1
  br label %30

30:                                               ; preds = %24, %71
  %31 = phi ptr [ %1, %24 ], [ %73, %71 ]
  %32 = phi i32 [ 1, %24 ], [ %72, %71 ]
  call void @GetMagickToken(ptr noundef nonnull %31, ptr noundef nonnull %10, ptr noundef %17) #17
  %33 = load i8, ptr %17, align 1, !tbaa !34
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %395, label %35

35:                                               ; preds = %30
  %36 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef %17, i64 noundef 4096) #17
  %37 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.25, i64 noundef 9) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %35
  %40 = load ptr, ptr %10, align 8, !tbaa !42
  %41 = call i32 @LocaleNCompare(ptr noundef %40, ptr noundef nonnull @.str.26, i64 noundef 2) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %71, label %47

43:                                               ; preds = %61, %51
  %44 = load ptr, ptr %10, align 8, !tbaa !42
  %45 = call i32 @LocaleNCompare(ptr noundef %44, ptr noundef nonnull @.str.26, i64 noundef 2) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %71, label %47, !llvm.loop !62

47:                                               ; preds = %39, %43
  %48 = load ptr, ptr %10, align 8, !tbaa !42
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %47
  call void @GetMagickToken(ptr noundef nonnull %48, ptr noundef nonnull %10, ptr noundef %17) #17
  %52 = tail call ptr @__ctype_b_loc() #18
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = load ptr, ptr %10, align 8, !tbaa !42
  %55 = load i8, ptr %54, align 1, !tbaa !34
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds i16, ptr %53, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !63
  %59 = and i16 %58, 8192
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %43, label %61

61:                                               ; preds = %51, %61
  %62 = phi ptr [ %63, %61 ], [ %54, %51 ]
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %63, ptr %10, align 8, !tbaa !42
  %64 = load ptr, ptr %52, align 8, !tbaa !42
  %65 = load i8, ptr %63, align 1, !tbaa !34
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i16, ptr %64, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !63
  %69 = and i16 %68, 8192
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %43, label %61, !llvm.loop !65

71:                                               ; preds = %189, %178, %168, %83, %87, %43, %47, %119, %131, %138, %122, %382, %385, %175, %114, %79, %39, %221, %315, %349, %387, %223, %226, %393, %354
  %72 = phi i32 [ %32, %221 ], [ %32, %223 ], [ %32, %226 ], [ %310, %315 ], [ %32, %349 ], [ %32, %354 ], [ %32, %387 ], [ %32, %393 ], [ %32, %39 ], [ %32, %79 ], [ %32, %114 ], [ %32, %175 ], [ %32, %385 ], [ %32, %382 ], [ %118, %122 ], [ %118, %138 ], [ %118, %131 ], [ %118, %119 ], [ %32, %47 ], [ %32, %43 ], [ %32, %87 ], [ %32, %83 ], [ %169, %168 ], [ %32, %178 ], [ %32, %189 ]
  %73 = load ptr, ptr %10, align 8, !tbaa !42
  %74 = load i8, ptr %73, align 1, !tbaa !34
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %395, label %30, !llvm.loop !66

76:                                               ; preds = %35
  %77 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.27, i64 noundef 4) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load ptr, ptr %10, align 8, !tbaa !42
  %81 = call i32 @LocaleNCompare(ptr noundef %80, ptr noundef nonnull @.str.28, i64 noundef 2) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %71, label %87

83:                                               ; preds = %101, %91
  %84 = load ptr, ptr %10, align 8, !tbaa !42
  %85 = call i32 @LocaleNCompare(ptr noundef %84, ptr noundef nonnull @.str.28, i64 noundef 2) #17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %71, label %87, !llvm.loop !67

87:                                               ; preds = %79, %83
  %88 = load ptr, ptr %10, align 8, !tbaa !42
  %89 = load i8, ptr %88, align 1, !tbaa !34
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %71, label %91

91:                                               ; preds = %87
  call void @GetMagickToken(ptr noundef nonnull %88, ptr noundef nonnull %10, ptr noundef %17) #17
  %92 = tail call ptr @__ctype_b_loc() #18
  %93 = load ptr, ptr %92, align 8, !tbaa !42
  %94 = load ptr, ptr %10, align 8, !tbaa !42
  %95 = load i8, ptr %94, align 1, !tbaa !34
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds i16, ptr %93, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !63
  %99 = and i16 %98, 8192
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %83, label %101

101:                                              ; preds = %91, %101
  %102 = phi ptr [ %103, %101 ], [ %94, %91 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 1
  store ptr %103, ptr %10, align 8, !tbaa !42
  %104 = load ptr, ptr %92, align 8, !tbaa !42
  %105 = load i8, ptr %103, align 1, !tbaa !34
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds i16, ptr %104, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !63
  %109 = and i16 %108, 8192
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %83, label %101, !llvm.loop !68

111:                                              ; preds = %76
  %112 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.29) #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %172

114:                                              ; preds = %111
  %115 = load i8, ptr %17, align 1, !tbaa !34
  %116 = icmp eq i8 %115, 47
  br i1 %116, label %71, label %117

117:                                              ; preds = %114, %168
  %118 = phi i32 [ %169, %168 ], [ %32, %114 ]
  br label %119

119:                                              ; preds = %117, %131
  %120 = load i8, ptr %27, align 1, !tbaa !34
  %121 = icmp eq i8 %120, 62
  br i1 %121, label %71, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %10, align 8, !tbaa !42
  %124 = load i8, ptr %123, align 1, !tbaa !34
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %71, label %126

126:                                              ; preds = %122
  %127 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef 4096) #17
  %128 = load ptr, ptr %10, align 8, !tbaa !42
  call void @GetMagickToken(ptr noundef %128, ptr noundef nonnull %10, ptr noundef nonnull %17) #17
  %129 = load i8, ptr %17, align 1, !tbaa !34
  %130 = icmp eq i8 %129, 61
  br i1 %130, label %134, label %131

131:                                              ; preds = %126, %138
  %132 = load i8, ptr %17, align 1, !tbaa !34
  %133 = icmp eq i8 %132, 47
  br i1 %133, label %71, label %119, !llvm.loop !69

134:                                              ; preds = %126
  %135 = load ptr, ptr %10, align 8, !tbaa !42
  call void @GetMagickToken(ptr noundef %135, ptr noundef nonnull %10, ptr noundef nonnull %17) #17
  %136 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.30) #17
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = call i32 @LocaleCompare(ptr noundef %3, ptr noundef nonnull %17) #17
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %131, label %71

141:                                              ; preds = %134
  %142 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.31) #17
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %141
  br i1 %28, label %145, label %147

145:                                              ; preds = %144
  %146 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1253, i32 noundef 495, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.21, ptr noundef nonnull %17) #17
  br label %168

147:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #17
  store i8 0, ptr %11, align 16, !tbaa !34
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %11) #17
  %148 = load i8, ptr %11, align 16, !tbaa !34
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = call i64 @ConcatenateMagickString(ptr noundef nonnull %11, ptr noundef nonnull @.str.33, i64 noundef 4096) #17
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i8, ptr %17, align 1, !tbaa !34
  %154 = icmp eq i8 %153, 47
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef nonnull %17, i64 noundef 4096) #17
  br label %159

157:                                              ; preds = %152
  %158 = call i64 @ConcatenateMagickString(ptr noundef nonnull %11, ptr noundef nonnull %17, i64 noundef 4096) #17
  br label %159

159:                                              ; preds = %157, %155
  %160 = call ptr @FileToXML(ptr noundef nonnull %11, i64 noundef -1) #17
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = call fastcc i32 @LoadLocaleCache(ptr noundef %0, ptr noundef nonnull %160, ptr noundef nonnull %11, ptr noundef %3, i64 noundef %29, ptr noundef %5)
  %164 = and i32 %163, %118
  %165 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %160) #17
  br label %166

166:                                              ; preds = %162, %159
  %167 = phi i32 [ %164, %162 ], [ %118, %159 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #17
  br label %168

168:                                              ; preds = %145, %166, %141
  %169 = phi i32 [ %118, %145 ], [ %167, %166 ], [ %118, %141 ]
  %170 = load i8, ptr %17, align 1, !tbaa !34
  %171 = icmp eq i8 %170, 47
  br i1 %171, label %71, label %117, !llvm.loop !69

172:                                              ; preds = %111
  %173 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.34) #17
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %172
  %176 = load i8, ptr %17, align 1, !tbaa !34
  %177 = icmp eq i8 %176, 62
  br i1 %177, label %71, label %178

178:                                              ; preds = %175, %189
  %179 = load ptr, ptr %10, align 8, !tbaa !42
  %180 = load i8, ptr %179, align 1, !tbaa !34
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %71, label %182

182:                                              ; preds = %178
  %183 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef 4096) #17
  %184 = load ptr, ptr %10, align 8, !tbaa !42
  call void @GetMagickToken(ptr noundef %184, ptr noundef nonnull %10, ptr noundef nonnull %17) #17
  %185 = load i8, ptr %17, align 1, !tbaa !34
  %186 = icmp eq i8 %185, 61
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load ptr, ptr %10, align 8, !tbaa !42
  call void @GetMagickToken(ptr noundef %188, ptr noundef nonnull %10, ptr noundef nonnull %17) #17
  br label %189

189:                                              ; preds = %187, %182
  %190 = load i8, ptr %17, align 1, !tbaa !34
  %191 = icmp eq i8 %190, 62
  br i1 %191, label %71, label %178, !llvm.loop !70

192:                                              ; preds = %172
  %193 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.35) #17
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %223

195:                                              ; preds = %192
  %196 = load i8, ptr %9, align 16, !tbaa !34
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %221, label %198

198:                                              ; preds = %195
  %199 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #21
  %200 = getelementptr i8, ptr %21, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !34
  %202 = icmp eq i8 %201, 47
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  store i8 0, ptr %200, align 1, !tbaa !34
  br label %204

204:                                              ; preds = %203, %198
  %205 = icmp ugt ptr %200, %9
  br i1 %205, label %206, label %220

206:                                              ; preds = %204, %213
  %207 = phi i64 [ %214, %213 ], [ 0, %204 ]
  %208 = phi ptr [ %215, %213 ], [ %200, %204 ]
  %209 = load i8, ptr %208, align 1, !tbaa !34
  %210 = icmp eq i8 %209, 47
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  store i8 0, ptr %208, align 1, !tbaa !34
  %212 = add nsw i64 %207, 1
  br label %213

213:                                              ; preds = %211, %206
  %214 = phi i64 [ %212, %211 ], [ %207, %206 ]
  %215 = getelementptr inbounds i8, ptr %208, i64 -1
  %216 = icmp slt i64 %214, 1
  %217 = icmp ugt ptr %215, %9
  %218 = select i1 %216, i1 %217, i1 false
  br i1 %218, label %206, label %219, !llvm.loop !71

219:                                              ; preds = %213
  br i1 %216, label %220, label %221

220:                                              ; preds = %204, %219
  store i8 0, ptr %9, align 16, !tbaa !34
  br label %221

221:                                              ; preds = %195, %219, %220
  %222 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.33, i64 noundef 4096) #17
  br label %71

223:                                              ; preds = %192
  %224 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.36) #17
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %71, label %226

226:                                              ; preds = %223
  %227 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.37) #17
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %71, label %229

229:                                              ; preds = %226
  %230 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.38) #17
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %320

232:                                              ; preds = %229
  %233 = load i8, ptr %17, align 1, !tbaa !34
  %234 = icmp eq i8 %233, 62
  br i1 %234, label %254, label %235

235:                                              ; preds = %232, %251
  %236 = load ptr, ptr %10, align 8, !tbaa !42
  %237 = load i8, ptr %236, align 1, !tbaa !34
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %254, label %239

239:                                              ; preds = %235
  %240 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef 4096) #17
  %241 = load ptr, ptr %10, align 8, !tbaa !42
  call void @GetMagickToken(ptr noundef %241, ptr noundef nonnull %10, ptr noundef nonnull %17) #17
  %242 = load i8, ptr %17, align 1, !tbaa !34
  %243 = icmp eq i8 %242, 61
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load ptr, ptr %10, align 8, !tbaa !42
  call void @GetMagickToken(ptr noundef %245, ptr noundef nonnull %10, ptr noundef nonnull %17) #17
  %246 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.39) #17
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull %17, i64 noundef 4096) #17
  %250 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.33, i64 noundef 4096) #17
  br label %251

251:                                              ; preds = %244, %248, %239
  %252 = load i8, ptr %17, align 1, !tbaa !34
  %253 = icmp eq i8 %252, 62
  br i1 %253, label %254, label %235, !llvm.loop !72

254:                                              ; preds = %235, %251, %232
  %255 = load ptr, ptr %10, align 8, !tbaa !42
  br label %256

256:                                              ; preds = %259, %254
  %257 = phi ptr [ %260, %259 ], [ %255, %254 ]
  %258 = load i8, ptr %257, align 1, !tbaa !34
  switch i8 %258, label %259 [
    i8 60, label %261
    i8 0, label %261
  ]

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %257, i64 1
  store ptr %260, ptr %10, align 8, !tbaa !42
  br label %256, !llvm.loop !73

261:                                              ; preds = %256, %256
  %262 = tail call ptr @__ctype_b_loc() #18
  %263 = load ptr, ptr %262, align 8, !tbaa !42
  br label %264

264:                                              ; preds = %264, %261
  %265 = phi ptr [ %255, %261 ], [ %272, %264 ]
  %266 = load i8, ptr %265, align 1, !tbaa !34
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds i16, ptr %263, i64 %267
  %269 = load i16, ptr %268, align 2, !tbaa !63
  %270 = and i16 %269, 8192
  %271 = icmp eq i16 %270, 0
  %272 = getelementptr inbounds i8, ptr %265, i64 1
  br i1 %271, label %273, label %264, !llvm.loop !74

273:                                              ; preds = %264, %273
  %274 = phi ptr [ %275, %273 ], [ %257, %264 ]
  %275 = getelementptr inbounds i8, ptr %274, i64 -1
  store ptr %275, ptr %10, align 8, !tbaa !42
  %276 = load ptr, ptr %262, align 8, !tbaa !42
  %277 = load i8, ptr %275, align 1, !tbaa !34
  %278 = zext i8 %277 to i64
  %279 = getelementptr inbounds i16, ptr %276, i64 %278
  %280 = load i16, ptr %279, align 2, !tbaa !63
  %281 = and i16 %280, 8192
  %282 = icmp ne i16 %281, 0
  %283 = icmp ugt ptr %275, %265
  %284 = and i1 %283, %282
  br i1 %284, label %273, label %285, !llvm.loop !75

285:                                              ; preds = %273
  %286 = ptrtoint ptr %275 to i64
  %287 = ptrtoint ptr %265 to i64
  %288 = sub i64 %286, %287
  %289 = add i64 %288, 2
  %290 = call i64 @llvm.umin.i64(i64 %289, i64 4096)
  %291 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %265, i64 noundef %290) #17
  %292 = call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #22
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %301

294:                                              ; preds = %285
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #17
  call void @GetExceptionInfo(ptr noundef nonnull %12) #17
  %295 = tail call ptr @__errno_location() #18
  %296 = load i32, ptr %295, align 4, !tbaa !44
  %297 = call ptr @GetExceptionMessage(i32 noundef %296) #17
  %298 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1335, i32 noundef 700, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %297) #17
  %299 = call ptr @DestroyString(ptr noundef %297) #17
  call void @CatchException(ptr noundef nonnull %12) #17
  %300 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %12) #17
  call void @MagickCoreTerminus() #17
  call void @_exit(i32 noundef 1) #19
  unreachable

301:                                              ; preds = %285
  %302 = call ptr @ResetMagickMemory(ptr noundef nonnull %292, i32 noundef 0, i64 noundef 56) #17
  %303 = call ptr @ConstantString(ptr noundef %2) #17
  store ptr %303, ptr %292, align 8, !tbaa !56
  %304 = call ptr @ConstantString(ptr noundef nonnull %9) #17
  %305 = getelementptr inbounds %struct._LocaleInfo, ptr %292, i64 0, i32 1
  store ptr %304, ptr %305, align 8, !tbaa !54
  %306 = call ptr @ConstantString(ptr noundef nonnull %8) #17
  %307 = getelementptr inbounds %struct._LocaleInfo, ptr %292, i64 0, i32 2
  store ptr %306, ptr %307, align 8, !tbaa !59
  %308 = getelementptr inbounds %struct._LocaleInfo, ptr %292, i64 0, i32 6
  store i64 2880220587, ptr %308, align 8, !tbaa !76
  %309 = load ptr, ptr %305, align 8, !tbaa !54
  %310 = call i32 @AddValueToSplayTree(ptr noundef %0, ptr noundef %309, ptr noundef nonnull %292) #17
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %301
  %313 = load ptr, ptr %305, align 8, !tbaa !54
  %314 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1343, i32 noundef 400, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %313) #17
  br label %315

315:                                              ; preds = %312, %301
  %316 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull %8, i64 noundef 4096) #17
  %317 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.13, i64 noundef 4096) #17
  %318 = load ptr, ptr %10, align 8, !tbaa !42
  %319 = getelementptr inbounds i8, ptr %318, i64 1
  store ptr %319, ptr %10, align 8, !tbaa !42
  br label %71

320:                                              ; preds = %229
  %321 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.40) #17
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %351

323:                                              ; preds = %320
  %324 = load i8, ptr %9, align 16, !tbaa !34
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %349, label %326

326:                                              ; preds = %323
  %327 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #21
  %328 = getelementptr i8, ptr %20, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !34
  %330 = icmp eq i8 %329, 47
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  store i8 0, ptr %328, align 1, !tbaa !34
  br label %332

332:                                              ; preds = %331, %326
  %333 = icmp ugt ptr %328, %9
  br i1 %333, label %334, label %348

334:                                              ; preds = %332, %341
  %335 = phi i64 [ %342, %341 ], [ 0, %332 ]
  %336 = phi ptr [ %343, %341 ], [ %328, %332 ]
  %337 = load i8, ptr %336, align 1, !tbaa !34
  %338 = icmp eq i8 %337, 47
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  store i8 0, ptr %336, align 1, !tbaa !34
  %340 = add nsw i64 %335, 1
  br label %341

341:                                              ; preds = %339, %334
  %342 = phi i64 [ %340, %339 ], [ %335, %334 ]
  %343 = getelementptr inbounds i8, ptr %336, i64 -1
  %344 = icmp slt i64 %342, 2
  %345 = icmp ugt ptr %343, %9
  %346 = select i1 %344, i1 %345, i1 false
  br i1 %346, label %334, label %347, !llvm.loop !71

347:                                              ; preds = %341
  br i1 %344, label %348, label %349

348:                                              ; preds = %332, %347
  store i8 0, ptr %9, align 16, !tbaa !34
  br label %349

349:                                              ; preds = %323, %347, %348
  %350 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.33, i64 noundef 4096) #17
  br label %71

351:                                              ; preds = %320
  %352 = load i8, ptr %7, align 16, !tbaa !34
  %353 = icmp eq i8 %352, 60
  br i1 %353, label %354, label %393

354:                                              ; preds = %351
  %355 = load i8, ptr %25, align 1, !tbaa !34
  switch i8 %355, label %387 [
    i8 63, label %71
    i8 47, label %356
  ]

356:                                              ; preds = %354
  %357 = load i8, ptr %9, align 16, !tbaa !34
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %382, label %359

359:                                              ; preds = %356
  %360 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #21
  %361 = getelementptr i8, ptr %18, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !34
  %363 = icmp eq i8 %362, 47
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  store i8 0, ptr %361, align 1, !tbaa !34
  br label %365

365:                                              ; preds = %364, %359
  %366 = icmp ugt ptr %361, %9
  br i1 %366, label %367, label %381

367:                                              ; preds = %365, %374
  %368 = phi i64 [ %375, %374 ], [ 0, %365 ]
  %369 = phi ptr [ %376, %374 ], [ %361, %365 ]
  %370 = load i8, ptr %369, align 1, !tbaa !34
  %371 = icmp eq i8 %370, 47
  br i1 %371, label %372, label %374

372:                                              ; preds = %367
  store i8 0, ptr %369, align 1, !tbaa !34
  %373 = add nsw i64 %368, 1
  br label %374

374:                                              ; preds = %372, %367
  %375 = phi i64 [ %373, %372 ], [ %368, %367 ]
  %376 = getelementptr inbounds i8, ptr %369, i64 -1
  %377 = icmp slt i64 %375, 1
  %378 = icmp ugt ptr %376, %9
  %379 = select i1 %377, i1 %378, i1 false
  br i1 %379, label %367, label %380, !llvm.loop !71

380:                                              ; preds = %374
  br i1 %377, label %381, label %382

381:                                              ; preds = %365, %380
  store i8 0, ptr %9, align 16, !tbaa !34
  br label %382

382:                                              ; preds = %356, %380, %381
  %383 = load i8, ptr %9, align 16, !tbaa !34
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %71, label %385

385:                                              ; preds = %382
  %386 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.33, i64 noundef 4096) #17
  br label %71

387:                                              ; preds = %354
  %388 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #21
  %389 = getelementptr i8, ptr %19, i64 %388
  store i8 0, ptr %389, align 1, !tbaa !34
  %390 = call i64 @CopyMagickString(ptr noundef %17, ptr noundef nonnull %26, i64 noundef 4096) #17
  %391 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef %17, i64 noundef 4096) #17
  %392 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.33, i64 noundef 4096) #17
  br label %71

393:                                              ; preds = %351
  %394 = load ptr, ptr %10, align 8, !tbaa !42
  call void @GetMagickToken(ptr noundef %394, ptr noundef null, ptr noundef %17) #17
  br label %71

395:                                              ; preds = %71, %30, %15
  %396 = phi i32 [ 1, %15 ], [ %72, %71 ], [ %32, %30 ]
  %397 = call ptr @RelinquishMagickMemory(ptr noundef %17) #17
  %398 = call ptr @SetFatalErrorHandler(ptr noundef %16) #17
  br label %399

399:                                              ; preds = %6, %395
  %400 = phi i32 [ %396, %395 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #17
  ret i32 %400
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

declare ptr @SetFatalErrorHandler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @LocaleFatalErrorHandler(i32 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !42
  %8 = tail call ptr @GetClientName() #17
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.41, ptr noundef %8, ptr noundef nonnull %1), !range !58
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @stderr, align 8, !tbaa !42
  %13 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %12, ptr noundef nonnull @.str.42, ptr noundef nonnull %2), !range !58
  br label %14

14:                                               ; preds = %11, %6
  %15 = load ptr, ptr @stderr, align 8, !tbaa !42
  %16 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %15, ptr noundef nonnull @.str.43), !range !58
  %17 = load ptr, ptr @stderr, align 8, !tbaa !42
  %18 = tail call i32 @fflush(ptr noundef %17)
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #13

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

declare ptr @GetClientName() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }

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
!37 = !{!38}
!38 = distinct !{!38, !39, !"FormatLocaleStringList: argument 0"}
!39 = distinct !{!39, !"FormatLocaleStringList"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"FormatLocaleStringList: argument 1"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !35, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !35, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !47, !48}
!50 = !{!51, !51, i64 0}
!51 = !{!"long", !35, i64 0}
!52 = !{!53, !45, i64 24}
!53 = !{!"_LocaleInfo", !43, i64 0, !43, i64 8, !43, i64 16, !45, i64 24, !43, i64 32, !43, i64 40, !51, i64 48}
!54 = !{!53, !43, i64 8}
!55 = distinct !{!55, !47, !48}
!56 = !{!53, !43, i64 0}
!57 = distinct !{!57, !47, !48}
!58 = !{i64 -2147483648, i64 2147483648}
!59 = !{!53, !43, i64 16}
!60 = distinct !{!60, !47, !48}
!61 = distinct !{!61, !47, !48}
!62 = distinct !{!62, !47, !48}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !35, i64 0}
!65 = distinct !{!65, !47, !48}
!66 = distinct !{!66, !47, !48}
!67 = distinct !{!67, !47, !48}
!68 = distinct !{!68, !47, !48}
!69 = distinct !{!69, !47, !48}
!70 = distinct !{!70, !47, !48}
!71 = distinct !{!71, !47, !48}
!72 = distinct !{!72, !47, !48}
!73 = distinct !{!73, !47, !48}
!74 = distinct !{!74, !47, !48}
!75 = distinct !{!75, !47, !48}
!76 = !{!53, !51, i64 48}
