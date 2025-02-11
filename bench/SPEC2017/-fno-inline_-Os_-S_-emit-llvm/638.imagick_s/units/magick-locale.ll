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
@.str.4 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"locale.xml\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"english.xml\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Loading locale configure file \22%s\22 ...\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"<locale\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"</locale>\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"<localemap>\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"</localemap>\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"<message\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"</message>\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.35 = private unnamed_addr constant [143 x i8] c"<?xml version=\221.0\22?><localemap>  <locale name=\22C\22>    <Exception>     <Message name=\22\22>     </Message>    </Exception>  </locale></localemap>\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"Searching for locale file: \22%s\22\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"Tag/Message\0A\00", align 1
@.str.42 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyLocaleOptions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 304, ptr noundef nonnull @.str.2) #19
  %3 = tail call ptr @DestroyLinkedList(ptr noundef %0, ptr noundef nonnull @DestroyOptions) #19
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyOptions(ptr noundef %0) #0 {
  %2 = tail call ptr @DestroyStringInfo(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @FormatLocaleFileList(ptr nocapture noundef %0, ptr noalias nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @FormatLocaleFile(ptr nocapture noundef %0, ptr noalias nocapture noundef readonly %1, ...) local_unnamed_addr #2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i64 @FormatLocaleFileList(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #20, !range !6
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret i64 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @FormatLocaleStringList(ptr noalias nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #19
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i64 %1
  %9 = getelementptr i8, ptr %8, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !7
  br label %10

10:                                               ; preds = %7, %4
  %11 = sext i32 %5 to i64
  ret i64 %11
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @FormatLocaleString(ptr noalias nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ...) local_unnamed_addr #2 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i64 @FormatLocaleStringList(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #20, !range !6
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetLocaleInfo_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @IsLocaleTreeInstantiated(ptr noundef %1) #20, !range !10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  tail call void @LockSemaphoreInfo(ptr noundef %6) #19
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %5
  %12 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  tail call void @ResetSplayTreeIterator(ptr noundef %12) #19
  %13 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %13) #19
  br label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %17 = tail call ptr @GetValueFromSplayTree(ptr noundef %16, ptr noundef nonnull %0) #19
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ %14, %11 ]
  %20 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  tail call void @UnlockSemaphoreInfo(ptr noundef %20) #19
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi ptr [ null, %2 ], [ %19, %18 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsLocaleTreeInstantiated(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %42

4:                                                ; preds = %1
  %5 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @locale_semaphore) #19
  %8 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  tail call void @LockSemaphoreInfo(ptr noundef %10) #19
  %11 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @ConstantString(ptr noundef nonnull %14) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %13, %16
  %20 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.4) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.5) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.6) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.7) #19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call ptr @ConstantString(ptr noundef nonnull @.str.8) #19
  br label %33

33:                                               ; preds = %16, %19, %22, %25, %31, %28
  %34 = phi ptr [ %32, %31 ], [ %29, %28 ], [ %26, %25 ], [ %23, %22 ], [ %20, %19 ], [ %17, %16 ]
  %35 = tail call fastcc ptr @AcquireLocaleSplayTree(ptr noundef %34, ptr noundef %0) #20
  store ptr %35, ptr @locale_cache, align 8, !tbaa !11
  %36 = tail call ptr @DestroyString(ptr noundef %34) #19
  br label %37

37:                                               ; preds = %33, %9
  %38 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  tail call void @UnlockSemaphoreInfo(ptr noundef %38) #19
  %39 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %1
  %43 = phi i32 [ %41, %37 ], [ 1, %1 ]
  ret i32 %43
}

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireLocaleSplayTree(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef null, ptr noundef nonnull @DestroyLocaleNode) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #21
  call void @GetExceptionInfo(ptr noundef nonnull %3) #19
  %7 = tail call ptr @__errno_location() #22
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #19
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 198, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %9) #19
  %11 = call ptr @DestroyString(ptr noundef %9) #19
  call void @CatchException(ptr noundef nonnull %3) #19
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #23
  unreachable

13:                                               ; preds = %2
  %14 = tail call ptr @GetLocaleOptions(ptr noundef nonnull @.str.9, ptr noundef %1) #20
  %15 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %13 ]
  %19 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %18) #19
  %20 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %18) #19
  %21 = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %4, ptr noundef %19, ptr noundef %20, ptr noundef %0, i64 noundef 0, ptr noundef %1) #20
  %22 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !15

24:                                               ; preds = %17, %13
  %25 = tail call ptr @DestroyLocaleOptions(ptr noundef %14) #20
  %26 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %4) #19
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = tail call ptr @GetLocaleOptions(ptr noundef nonnull @.str.12, ptr noundef %1) #20
  %30 = tail call ptr @GetNextValueInLinkedList(ptr noundef %29) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %37, %32 ], [ %30, %28 ]
  %34 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %33) #19
  %35 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %33) #19
  %36 = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %4, ptr noundef %34, ptr noundef %35, ptr noundef %0, i64 noundef 0, ptr noundef %1) #20
  %37 = tail call ptr @GetNextValueInLinkedList(ptr noundef %29) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %32, !llvm.loop !17

39:                                               ; preds = %32, %28
  %40 = tail call ptr @DestroyLocaleOptions(ptr noundef %29) #20
  br label %41

41:                                               ; preds = %39, %24
  %42 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %4) #19
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.13, ptr noundef %0, i64 noundef 0, ptr noundef %1) #20
  br label %46

46:                                               ; preds = %44, %41
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyLocaleNode(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @DestroyString(ptr noundef nonnull %2) #19
  store ptr %5, ptr %0, align 8, !tbaa !18
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct._LocaleInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @DestroyString(ptr noundef nonnull %8) #19
  store ptr %11, ptr %7, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct._LocaleInfo, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @DestroyString(ptr noundef nonnull %14) #19
  store ptr %17, ptr %13, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #19
  ret ptr %19
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetLocaleOptions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #21
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 814, ptr noundef nonnull @.str.36, ptr noundef %0) #19
  %5 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4096) #19
  %6 = call ptr @NewLinkedList(i64 noundef 0) #19
  %7 = call ptr @GetConfigurePaths(ptr noundef %0, ptr noundef %1) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  call void @ResetLinkedListIterator(ptr noundef nonnull %7) #19
  %10 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %7) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %20
  %13 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %14 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.38, ptr noundef nonnull %13, ptr noundef %0) #20, !range !6
  %15 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1024, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 829, ptr noundef nonnull @.str.39, ptr noundef nonnull %3) #19
  %16 = call ptr @ConfigureFileToStringInfo(ptr noundef nonnull %3) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call i32 @AppendValueToLinkedList(ptr noundef %6, ptr noundef nonnull %16) #19
  br label %20

20:                                               ; preds = %18, %12
  %21 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %7) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !23

23:                                               ; preds = %20, %9
  %24 = call ptr @DestroyLinkedList(ptr noundef nonnull %7, ptr noundef nonnull @RelinquishMagickMemory) #19
  br label %25

25:                                               ; preds = %23, %2
  call void @ResetLinkedListIterator(ptr noundef %6) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #21
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @LoadLocaleCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1186, ptr noundef nonnull @.str.14, ptr noundef %2) #19
  %14 = icmp eq ptr %1, null
  br i1 %14, label %311, label %15

15:                                               ; preds = %6
  store i8 0, ptr %9, align 16, !tbaa !7
  store i8 0, ptr %8, align 16, !tbaa !7
  store i8 0, ptr %7, align 16, !tbaa !7
  %16 = tail call ptr @SetFatalErrorHandler(ptr noundef nonnull @LocaleFatalErrorHandler) #19
  %17 = tail call ptr @AcquireString(ptr noundef nonnull %1) #19
  store ptr %1, ptr %10, align 8, !tbaa !11
  %18 = getelementptr i8, ptr %17, i64 -1
  %19 = load i8, ptr %1, align 1, !tbaa !7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %307, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %7, i64 1
  %23 = getelementptr inbounds i8, ptr %17, i64 1
  %24 = icmp ugt i64 %4, 200
  %25 = add nuw nsw i64 %4, 1
  br label %26

26:                                               ; preds = %21, %67
  %27 = phi ptr [ %1, %21 ], [ %69, %67 ]
  %28 = phi i32 [ 1, %21 ], [ %68, %67 ]
  call void @GetMagickToken(ptr noundef nonnull %27, ptr noundef nonnull %10, ptr noundef %17) #19
  %29 = load i8, ptr %17, align 1, !tbaa !7
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %307, label %31

31:                                               ; preds = %26
  %32 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef 4096) #19
  %33 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i64 noundef 9) #19
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load ptr, ptr %10, align 8, !tbaa !11
  %37 = call i32 @LocaleNCompare(ptr noundef %36, ptr noundef nonnull @.str.16, i64 noundef 2) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %67, label %43

39:                                               ; preds = %57, %47
  %40 = phi ptr [ %50, %47 ], [ %59, %57 ]
  %41 = call i32 @LocaleNCompare(ptr noundef nonnull %40, ptr noundef nonnull @.str.16, i64 noundef 2) #19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %67, label %43, !llvm.loop !24

43:                                               ; preds = %35, %39
  %44 = load ptr, ptr %10, align 8, !tbaa !11
  %45 = load i8, ptr %44, align 1, !tbaa !7
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %43
  call void @GetMagickToken(ptr noundef nonnull %44, ptr noundef nonnull %10, ptr noundef %17) #19
  %48 = tail call ptr @__ctype_b_loc() #22
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  %50 = load ptr, ptr %10, align 8, !tbaa !11
  %51 = load i8, ptr %50, align 1, !tbaa !7
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds i16, ptr %49, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !25
  %55 = and i16 %54, 8192
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %39, label %57

57:                                               ; preds = %47, %57
  %58 = phi ptr [ %59, %57 ], [ %50, %47 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %10, align 8, !tbaa !11
  %60 = load ptr, ptr %48, align 8, !tbaa !11
  %61 = load i8, ptr %59, align 1, !tbaa !7
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i16, ptr %60, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !25
  %65 = and i16 %64, 8192
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %39, label %57, !llvm.loop !27

67:                                               ; preds = %79, %83, %39, %43, %172, %169, %133, %120, %114, %117, %294, %297, %75, %35, %186, %279, %287, %299, %188, %191, %305, %292
  %68 = phi i32 [ %28, %186 ], [ %28, %188 ], [ %28, %191 ], [ %274, %279 ], [ %28, %287 ], [ %28, %292 ], [ %28, %299 ], [ %28, %305 ], [ %28, %35 ], [ %28, %75 ], [ %28, %297 ], [ %28, %294 ], [ %111, %117 ], [ %111, %114 ], [ %111, %120 ], [ %111, %133 ], [ %28, %169 ], [ %28, %172 ], [ %28, %43 ], [ %28, %39 ], [ %28, %83 ], [ %28, %79 ]
  %69 = load ptr, ptr %10, align 8, !tbaa !11
  %70 = load i8, ptr %69, align 1, !tbaa !7
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %307, label %26, !llvm.loop !28

72:                                               ; preds = %31
  %73 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.17, i64 noundef 4) #19
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %72
  %76 = load ptr, ptr %10, align 8, !tbaa !11
  %77 = call i32 @LocaleNCompare(ptr noundef %76, ptr noundef nonnull @.str.18, i64 noundef 2) #19
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %67, label %83

79:                                               ; preds = %97, %87
  %80 = phi ptr [ %90, %87 ], [ %99, %97 ]
  %81 = call i32 @LocaleNCompare(ptr noundef nonnull %80, ptr noundef nonnull @.str.18, i64 noundef 2) #19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %67, label %83, !llvm.loop !29

83:                                               ; preds = %75, %79
  %84 = load ptr, ptr %10, align 8, !tbaa !11
  %85 = load i8, ptr %84, align 1, !tbaa !7
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %67, label %87

87:                                               ; preds = %83
  call void @GetMagickToken(ptr noundef nonnull %84, ptr noundef nonnull %10, ptr noundef %17) #19
  %88 = tail call ptr @__ctype_b_loc() #22
  %89 = load ptr, ptr %88, align 8, !tbaa !11
  %90 = load ptr, ptr %10, align 8, !tbaa !11
  %91 = load i8, ptr %90, align 1, !tbaa !7
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds i16, ptr %89, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !25
  %95 = and i16 %94, 8192
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %79, label %97

97:                                               ; preds = %87, %97
  %98 = phi ptr [ %99, %97 ], [ %90, %87 ]
  %99 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %99, ptr %10, align 8, !tbaa !11
  %100 = load ptr, ptr %88, align 8, !tbaa !11
  %101 = load i8, ptr %99, align 1, !tbaa !7
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i16, ptr %100, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !25
  %105 = and i16 %104, 8192
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %79, label %97, !llvm.loop !30

107:                                              ; preds = %72
  %108 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.19) #19
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %164

110:                                              ; preds = %107, %162
  %111 = phi i32 [ %163, %162 ], [ %28, %107 ]
  br label %112

112:                                              ; preds = %136, %110
  %113 = load i8, ptr %17, align 1, !tbaa !7
  br label %114

114:                                              ; preds = %112, %124
  %115 = phi i8 [ %113, %112 ], [ %127, %124 ]
  %116 = icmp eq i8 %115, 47
  br i1 %116, label %67, label %117

117:                                              ; preds = %114
  %118 = load i8, ptr %23, align 1, !tbaa !7
  %119 = icmp eq i8 %118, 62
  br i1 %119, label %67, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %10, align 8, !tbaa !11
  %122 = load i8, ptr %121, align 1, !tbaa !7
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %67, label %124

124:                                              ; preds = %120
  %125 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef 4096) #19
  %126 = load ptr, ptr %10, align 8, !tbaa !11
  call void @GetMagickToken(ptr noundef %126, ptr noundef nonnull %10, ptr noundef nonnull %17) #19
  %127 = load i8, ptr %17, align 1, !tbaa !7
  %128 = icmp eq i8 %127, 61
  br i1 %128, label %129, label %114, !llvm.loop !31

129:                                              ; preds = %124
  %130 = load ptr, ptr %10, align 8, !tbaa !11
  call void @GetMagickToken(ptr noundef %130, ptr noundef nonnull %10, ptr noundef nonnull %17) #19
  %131 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.20) #19
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = call i32 @LocaleCompare(ptr noundef %3, ptr noundef nonnull %17) #19
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %67

136:                                              ; preds = %133, %141, %137
  br label %112, !llvm.loop !31

137:                                              ; preds = %129
  %138 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.21) #19
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %136

140:                                              ; preds = %137
  br i1 %24, label %141, label %143

141:                                              ; preds = %140
  %142 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1253, i32 noundef 495, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.11, ptr noundef nonnull %17) #19
  br label %136

143:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #21
  store i8 0, ptr %11, align 16, !tbaa !7
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %11) #19
  %144 = load i8, ptr %11, align 16, !tbaa !7
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = call i64 @ConcatenateMagickString(ptr noundef nonnull %11, ptr noundef nonnull @.str.23, i64 noundef 4096) #19
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i8, ptr %17, align 1, !tbaa !7
  %150 = icmp eq i8 %149, 47
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef nonnull %17, i64 noundef 4096) #19
  br label %155

153:                                              ; preds = %148
  %154 = call i64 @ConcatenateMagickString(ptr noundef nonnull %11, ptr noundef nonnull %17, i64 noundef 4096) #19
  br label %155

155:                                              ; preds = %153, %151
  %156 = call ptr @FileToXML(ptr noundef nonnull %11, i64 noundef -1) #19
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = call fastcc i32 @LoadLocaleCache(ptr noundef %0, ptr noundef nonnull %156, ptr noundef nonnull %11, ptr noundef %3, i64 noundef %25, ptr noundef %5) #20
  %160 = and i32 %159, %111
  %161 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %156) #19
  br label %162

162:                                              ; preds = %158, %155
  %163 = phi i32 [ %160, %158 ], [ %111, %155 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #21
  br label %110, !llvm.loop !31

164:                                              ; preds = %107
  %165 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.24) #19
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %164, %181
  %168 = load i8, ptr %17, align 1, !tbaa !7
  br label %169

169:                                              ; preds = %167, %176
  %170 = phi i8 [ %168, %167 ], [ %179, %176 ]
  %171 = icmp eq i8 %170, 62
  br i1 %171, label %67, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %10, align 8, !tbaa !11
  %174 = load i8, ptr %173, align 1, !tbaa !7
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %67, label %176

176:                                              ; preds = %172
  %177 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef 4096) #19
  %178 = load ptr, ptr %10, align 8, !tbaa !11
  call void @GetMagickToken(ptr noundef %178, ptr noundef nonnull %10, ptr noundef nonnull %17) #19
  %179 = load i8, ptr %17, align 1, !tbaa !7
  %180 = icmp eq i8 %179, 61
  br i1 %180, label %181, label %169, !llvm.loop !32

181:                                              ; preds = %176
  %182 = load ptr, ptr %10, align 8, !tbaa !11
  call void @GetMagickToken(ptr noundef %182, ptr noundef nonnull %10, ptr noundef nonnull %17) #19
  br label %167, !llvm.loop !32

183:                                              ; preds = %164
  %184 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.25) #19
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  call fastcc void @ChopLocaleComponents(ptr noundef nonnull %9, i64 noundef 1) #20
  %187 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.23, i64 noundef 4096) #19
  br label %67

188:                                              ; preds = %183
  %189 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.26) #19
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %67, label %191

191:                                              ; preds = %188
  %192 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.27) #19
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %67, label %194

194:                                              ; preds = %191
  %195 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.28) #19
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %284

197:                                              ; preds = %194, %218
  %198 = load i8, ptr %17, align 1, !tbaa !7
  br label %199

199:                                              ; preds = %197, %206
  %200 = phi i8 [ %198, %197 ], [ %209, %206 ]
  %201 = icmp eq i8 %200, 62
  %202 = load ptr, ptr %10, align 8, !tbaa !11
  br i1 %201, label %219, label %203

203:                                              ; preds = %199
  %204 = load i8, ptr %202, align 1, !tbaa !7
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %219, label %206

206:                                              ; preds = %203
  %207 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef 4096) #19
  %208 = load ptr, ptr %10, align 8, !tbaa !11
  call void @GetMagickToken(ptr noundef %208, ptr noundef nonnull %10, ptr noundef nonnull %17) #19
  %209 = load i8, ptr %17, align 1, !tbaa !7
  %210 = icmp eq i8 %209, 61
  br i1 %210, label %211, label %199, !llvm.loop !33

211:                                              ; preds = %206
  %212 = load ptr, ptr %10, align 8, !tbaa !11
  call void @GetMagickToken(ptr noundef %212, ptr noundef nonnull %10, ptr noundef nonnull %17) #19
  %213 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.29) #19
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull %17, i64 noundef 4096) #19
  %217 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.23, i64 noundef 4096) #19
  br label %218

218:                                              ; preds = %215, %211
  br label %197, !llvm.loop !33

219:                                              ; preds = %199, %203
  br label %220

220:                                              ; preds = %219, %223
  %221 = phi ptr [ %224, %223 ], [ %202, %219 ]
  %222 = load i8, ptr %221, align 1, !tbaa !7
  switch i8 %222, label %223 [
    i8 60, label %225
    i8 0, label %225
  ]

223:                                              ; preds = %220
  %224 = getelementptr inbounds i8, ptr %221, i64 1
  store ptr %224, ptr %10, align 8, !tbaa !11
  br label %220, !llvm.loop !34

225:                                              ; preds = %220, %220
  %226 = tail call ptr @__ctype_b_loc() #22
  %227 = load ptr, ptr %226, align 8, !tbaa !11
  br label %228

228:                                              ; preds = %228, %225
  %229 = phi ptr [ %202, %225 ], [ %236, %228 ]
  %230 = load i8, ptr %229, align 1, !tbaa !7
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds i16, ptr %227, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !25
  %234 = and i16 %233, 8192
  %235 = icmp eq i16 %234, 0
  %236 = getelementptr inbounds i8, ptr %229, i64 1
  br i1 %235, label %237, label %228, !llvm.loop !35

237:                                              ; preds = %228, %237
  %238 = phi ptr [ %239, %237 ], [ %221, %228 ]
  %239 = getelementptr inbounds i8, ptr %238, i64 -1
  store ptr %239, ptr %10, align 8, !tbaa !11
  %240 = load ptr, ptr %226, align 8, !tbaa !11
  %241 = load i8, ptr %239, align 1, !tbaa !7
  %242 = zext i8 %241 to i64
  %243 = getelementptr inbounds i16, ptr %240, i64 %242
  %244 = load i16, ptr %243, align 2, !tbaa !25
  %245 = and i16 %244, 8192
  %246 = icmp ne i16 %245, 0
  %247 = icmp ugt ptr %239, %229
  %248 = and i1 %247, %246
  br i1 %248, label %237, label %249, !llvm.loop !36

249:                                              ; preds = %237
  %250 = ptrtoint ptr %239 to i64
  %251 = ptrtoint ptr %229 to i64
  %252 = sub i64 %250, %251
  %253 = add i64 %252, 2
  %254 = call fastcc i64 @MagickMin(i64 noundef %253) #20
  %255 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %229, i64 noundef %254) #19
  %256 = call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #24
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %265

258:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #21
  call void @GetExceptionInfo(ptr noundef nonnull %12) #19
  %259 = tail call ptr @__errno_location() #22
  %260 = load i32, ptr %259, align 4, !tbaa !13
  %261 = call ptr @GetExceptionMessage(i32 noundef %260) #19
  %262 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1335, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %261) #19
  %263 = call ptr @DestroyString(ptr noundef %261) #19
  call void @CatchException(ptr noundef nonnull %12) #19
  %264 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %12) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #23
  unreachable

265:                                              ; preds = %249
  %266 = call ptr @ResetMagickMemory(ptr noundef nonnull %256, i32 noundef 0, i64 noundef 56) #19
  %267 = call ptr @ConstantString(ptr noundef %2) #19
  store ptr %267, ptr %256, align 8, !tbaa !18
  %268 = call ptr @ConstantString(ptr noundef nonnull %9) #19
  %269 = getelementptr inbounds %struct._LocaleInfo, ptr %256, i64 0, i32 1
  store ptr %268, ptr %269, align 8, !tbaa !21
  %270 = call ptr @ConstantString(ptr noundef nonnull %8) #19
  %271 = getelementptr inbounds %struct._LocaleInfo, ptr %256, i64 0, i32 2
  store ptr %270, ptr %271, align 8, !tbaa !22
  %272 = getelementptr inbounds %struct._LocaleInfo, ptr %256, i64 0, i32 6
  store i64 2880220587, ptr %272, align 8, !tbaa !37
  %273 = load ptr, ptr %269, align 8, !tbaa !21
  %274 = call i32 @AddValueToSplayTree(ptr noundef %0, ptr noundef %273, ptr noundef nonnull %256) #19
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %265
  %277 = load ptr, ptr %269, align 8, !tbaa !21
  %278 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1343, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %277) #19
  br label %279

279:                                              ; preds = %276, %265
  %280 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull %8, i64 noundef 4096) #19
  %281 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.30, i64 noundef 4096) #19
  %282 = load ptr, ptr %10, align 8, !tbaa !11
  %283 = getelementptr inbounds i8, ptr %282, i64 1
  store ptr %283, ptr %10, align 8, !tbaa !11
  br label %67

284:                                              ; preds = %194
  %285 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.31) #19
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  call fastcc void @ChopLocaleComponents(ptr noundef nonnull %9, i64 noundef 2) #20
  %288 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.23, i64 noundef 4096) #19
  br label %67

289:                                              ; preds = %284
  %290 = load i8, ptr %7, align 16, !tbaa !7
  %291 = icmp eq i8 %290, 60
  br i1 %291, label %292, label %305

292:                                              ; preds = %289
  %293 = load i8, ptr %22, align 1, !tbaa !7
  switch i8 %293, label %299 [
    i8 63, label %67
    i8 47, label %294
  ]

294:                                              ; preds = %292
  call fastcc void @ChopLocaleComponents(ptr noundef nonnull %9, i64 noundef 1) #20
  %295 = load i8, ptr %9, align 16, !tbaa !7
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %67, label %297

297:                                              ; preds = %294
  %298 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.23, i64 noundef 4096) #19
  br label %67

299:                                              ; preds = %292
  %300 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #25
  %301 = getelementptr i8, ptr %18, i64 %300
  store i8 0, ptr %301, align 1, !tbaa !7
  %302 = call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %23, i64 noundef 4096) #19
  %303 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull %17, i64 noundef 4096) #19
  %304 = call i64 @ConcatenateMagickString(ptr noundef nonnull %9, ptr noundef nonnull @.str.23, i64 noundef 4096) #19
  br label %67

305:                                              ; preds = %289
  %306 = load ptr, ptr %10, align 8, !tbaa !11
  call void @GetMagickToken(ptr noundef %306, ptr noundef null, ptr noundef nonnull %17) #19
  br label %67

307:                                              ; preds = %67, %26, %15
  %308 = phi i32 [ 1, %15 ], [ %28, %26 ], [ %68, %67 ]
  %309 = call ptr @RelinquishMagickMemory(ptr noundef %17) #19
  %310 = call ptr @SetFatalErrorHandler(ptr noundef %16) #19
  br label %311

311:                                              ; preds = %6, %307
  %312 = phi i32 [ %308, %307 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #21
  ret i32 %312
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: optsize
declare ptr @SetFatalErrorHandler(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LocaleFatalErrorHandler(i32 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !11
  %8 = tail call ptr @GetClientName() #19
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef %8, ptr noundef nonnull %1) #20, !range !6
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @stderr, align 8, !tbaa !11
  %13 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %12, ptr noundef nonnull @.str.33, ptr noundef nonnull %2) #20, !range !6
  br label %14

14:                                               ; preds = %11, %6
  %15 = load ptr, ptr @stderr, align 8, !tbaa !11
  %16 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %15, ptr noundef nonnull @.str.34) #20, !range !6
  %17 = load ptr, ptr @stderr, align 8, !tbaa !11
  %18 = tail call i32 @fflush(ptr noundef %17) #20
  tail call void @exit(i32 noundef 1) #23
  unreachable
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ChopLocaleComponents(ptr noundef %0, i64 noundef %1) unnamed_addr #9 {
  %3 = load i8, ptr %0, align 1, !tbaa !7
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 -1
  %9 = load i8, ptr %8, align 1, !tbaa !7
  %10 = icmp eq i8 %9, 47
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i8 0, ptr %8, align 1, !tbaa !7
  br label %12

12:                                               ; preds = %11, %5
  %13 = icmp sgt i64 %1, 0
  %14 = icmp ugt ptr %8, %0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12, %23
  %17 = phi i64 [ %24, %23 ], [ 0, %12 ]
  %18 = phi ptr [ %25, %23 ], [ %8, %12 ]
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = icmp eq i8 %19, 47
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  store i8 0, ptr %18, align 1, !tbaa !7
  %22 = add nsw i64 %17, 1
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %25 = getelementptr inbounds i8, ptr %18, i64 -1
  %26 = icmp slt i64 %24, %1
  %27 = icmp ugt ptr %25, %0
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %16, label %29, !llvm.loop !38

29:                                               ; preds = %23, %12
  %30 = phi i1 [ %13, %12 ], [ %26, %23 ]
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  store i8 0, ptr %0, align 1, !tbaa !7
  br label %32

32:                                               ; preds = %29, %31, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #10 {
  %2 = tail call i64 @llvm.umin.i64(i64 %0, i64 4096)
  ret i64 %2
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @GetClientName() local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetLocaleInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 605, ptr noundef nonnull @.str.36, ptr noundef %0) #19
  store i64 0, ptr %1, align 8, !tbaa !39
  %5 = tail call ptr @GetLocaleInfo_(ptr noundef nonnull @.str.3, ptr noundef %2) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #19
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  tail call void @LockSemaphoreInfo(ptr noundef %14) #19
  %15 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #19
  %16 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._LocaleInfo, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !40
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._LocaleInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 1) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !11
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %36 = tail call ptr @GetNextValueInSplayTree(ptr noundef %35) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !41

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #19
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @LocaleInfoCompare) #19
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !11
  store i64 %39, ptr %1, align 8, !tbaa !39
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @LocaleInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = load ptr, ptr %1, align 8, !tbaa !11
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._LocaleInfo, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %1, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct._LocaleInfo, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %10 ]
  %18 = phi ptr [ %9, %14 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = load ptr, ptr %17, align 8, !tbaa !11
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #19
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetLocaleList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 700, ptr noundef nonnull @.str.36, ptr noundef %0) #19
  store i64 0, ptr %1, align 8, !tbaa !39
  %5 = tail call ptr @GetLocaleInfo_(ptr noundef nonnull @.str.3, ptr noundef %2) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #19
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  tail call void @LockSemaphoreInfo(ptr noundef %14) #19
  %15 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %16 = tail call ptr @GetNextValueInSplayTree(ptr noundef %15) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %13, %34
  %19 = phi i64 [ %35, %34 ], [ 0, %13 ]
  %20 = phi ptr [ %37, %34 ], [ %16, %13 ]
  %21 = getelementptr inbounds %struct._LocaleInfo, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !40
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._LocaleInfo, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = tail call i32 @GlobExpression(ptr noundef %26, ptr noundef %0, i32 noundef 1) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8, !tbaa !21
  %31 = tail call ptr @ConstantString(ptr noundef %30) #19
  %32 = add nsw i64 %19, 1
  %33 = getelementptr inbounds ptr, ptr %11, i64 %19
  store ptr %31, ptr %33, align 8, !tbaa !11
  br label %34

34:                                               ; preds = %29, %24, %18
  %35 = phi i64 [ %32, %29 ], [ %19, %24 ], [ %19, %18 ]
  %36 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %37 = tail call ptr @GetNextValueInSplayTree(ptr noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %18, !llvm.loop !42

39:                                               ; preds = %34, %13
  %40 = phi i64 [ 0, %13 ], [ %35, %34 ]
  %41 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  tail call void @UnlockSemaphoreInfo(ptr noundef %41) #19
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %40, i64 noundef 8, ptr noundef nonnull @LocaleTagCompare) #19
  %42 = getelementptr inbounds ptr, ptr %11, i64 %40
  store ptr null, ptr %42, align 8, !tbaa !11
  store i64 %40, ptr %1, align 8, !tbaa !39
  br label %43

43:                                               ; preds = %7, %3, %39
  %44 = phi ptr [ %11, %39 ], [ null, %3 ], [ null, %7 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @LocaleTagCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = load ptr, ptr %1, align 8, !tbaa !11
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #19
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetLocaleMessage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #21
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !7
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @AcquireExceptionInfo() #19
  %9 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull %0) #20, !range !6
  %10 = call ptr @GetLocaleInfo_(ptr noundef nonnull %2, ptr noundef %8) #20
  %11 = call ptr @DestroyExceptionInfo(ptr noundef %8) #19
  %12 = icmp eq ptr %10, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._LocaleInfo, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  br label %16

16:                                               ; preds = %7, %1, %4, %13
  %17 = phi ptr [ %15, %13 ], [ %0, %4 ], [ null, %1 ], [ %0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #21
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetConfigurePaths(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ConfigureFileToStringInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetLocaleValue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 882, ptr noundef nonnull @.str.2) #19
  %3 = getelementptr inbounds %struct._LocaleInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local double @InterpretLocaleValue(ptr noalias noundef %0, ptr noalias noundef writeonly %1) local_unnamed_addr #16 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = load i8, ptr %0, align 1, !tbaa !7
  %5 = icmp eq i8 %4, 48
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !7
  %9 = and i8 %8, -33
  %10 = icmp eq i8 %9, 88
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = call i64 @strtoul(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 16) #19
  %13 = uitofp i64 %12 to double
  br label %16

14:                                               ; preds = %6, %2
  %15 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #19
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi double [ %13, %11 ], [ %15, %14 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !11
  store ptr %20, ptr %1, align 8, !tbaa !11
  br label %21

21:                                               ; preds = %19, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret double %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListLocaleInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  store i64 0, ptr %3, align 8, !tbaa !39
  %7 = call ptr @GetLocaleInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef %1) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !39
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %9, %51
  %13 = phi i64 [ %53, %51 ], [ 0, %9 ]
  %14 = phi ptr [ %52, %51 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct._LocaleInfo, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !40
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !18
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %16, %20 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.40, ptr noundef nonnull %30) #20, !range !6
  br label %34

34:                                               ; preds = %32, %28
  %35 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.41) #20, !range !6
  %36 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.42) #20, !range !6
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %15, align 8, !tbaa !11
  %39 = load ptr, ptr %38, align 8, !tbaa !18
  %40 = getelementptr inbounds %struct._LocaleInfo, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !21
  %42 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.43, ptr noundef %41) #20, !range !6
  %43 = load ptr, ptr %15, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct._LocaleInfo, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.44, ptr noundef nonnull %45) #20, !range !6
  br label %49

49:                                               ; preds = %47, %37
  %50 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.30) #20, !range !6
  br label %51

51:                                               ; preds = %12, %49
  %52 = phi ptr [ %14, %12 ], [ %39, %49 ]
  %53 = add nuw nsw i64 %13, 1
  %54 = icmp eq i64 %53, %10
  br i1 %54, label %55, label %12, !llvm.loop !43

55:                                               ; preds = %51, %9
  %56 = tail call i32 @fflush(ptr noundef %6) #20
  %57 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #19
  br label %58

58:                                               ; preds = %2, %55
  %59 = phi i32 [ 1, %55 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @LocaleComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #19
  store ptr %4, ptr @locale_semaphore, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LocaleComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @locale_semaphore) #19
  %4 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #19
  %7 = load ptr, ptr @locale_cache, align 8, !tbaa !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroySplayTree(ptr noundef nonnull %7) #19
  store ptr %10, ptr @locale_cache, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @locale_semaphore, align 8, !tbaa !11
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #19
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @locale_semaphore) #19
  ret void
}

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize willreturn memory(none) }
attributes #23 = { noreturn nounwind optsize }
attributes #24 = { nounwind optsize allocsize(0) }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i64 -2147483648, i64 2147483648}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{i32 0, i32 2}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !12, i64 0}
!19 = !{!"_LocaleInfo", !12, i64 0, !12, i64 8, !12, i64 16, !14, i64 24, !12, i64 32, !12, i64 40, !20, i64 48}
!20 = !{!"long", !8, i64 0}
!21 = !{!19, !12, i64 8}
!22 = !{!19, !12, i64 16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !8, i64 0}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = !{!19, !20, i64 48}
!38 = distinct !{!38, !16}
!39 = !{!20, !20, i64 0}
!40 = !{!19, !14, i64 24}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
