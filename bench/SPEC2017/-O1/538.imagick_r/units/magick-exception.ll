; ModuleID = 'magick/exception.c'
source_filename = "magick/exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"magick/exception.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Exception/%s%s\00", align 1
@error_handler = internal unnamed_addr global ptr @DefaultErrorHandler, align 8
@fatal_error_handler = internal unnamed_addr global ptr @DefaultFatalErrorHandler, align 8
@warning_handler = internal unnamed_addr global ptr @DefaultWarningHandler, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s @ %s/%s/%s/%.20g\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Resource/Limit/Warning/\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Type/Warning/\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Option/Warning/\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Delegate/Warning/\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Missing/Delegate/Warning/\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Corrupt/Image/Warning/\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"File/Open/Warning/\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Blob/Warning/\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Stream/Warning/\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Cache/Warning/\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Coder/Warning/\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Filter/Warning/\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Module/Warning/\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Draw/Warning/\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Image/Warning/\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Wand/Warning/\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"XServer/Warning/\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Monitor/Warning/\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Registry/Warning/\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Configure/Warning/\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Policy/Warning/\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Resource/Limit/Error/\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Type/Error/\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Option/Error/\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Delegate/Error/\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Missing/Delegate/Error/\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Corrupt/Image/Error/\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"File/Open/Error/\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Blob/Error/\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"Stream/Error/\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Cache/Error/\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Coder/Error/\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Filter/Error/\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Module/Error/\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Draw/Error/\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Image/Error/\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Wand/Error/\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"XServer/Error/\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Monitor/Error/\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"Registry/Error/\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"Configure/Error/\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Policy/Error/\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Resource/Limit/FatalError/\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Type/FatalError/\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"Option/FatalError/\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Delegate/FatalError/\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"Missing/Delegate/FatalError/\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"Corrupt/Image/FatalError/\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"File/Open/FatalError/\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"Blob/FatalError/\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Stream/FatalError/\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Cache/FatalError/\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"Coder/FatalError/\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Filter/FatalError/\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"Module/FatalError/\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"Draw/FatalError/\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Image/FatalError/\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"Wand/FatalError/\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"XServer/FatalError/\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Monitor/FatalError/\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"Registry/FatalError/\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"Configure/FatalError/\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Policy/FatalError/\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.75 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireExceptionInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #14
  call void @GetExceptionInfo(ptr noundef nonnull %1)
  %5 = tail call ptr @__errno_location() #15
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = call ptr @GetExceptionMessage(i32 noundef %6)
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 108, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7)
  %9 = call ptr @DestroyString(ptr noundef %7) #14
  call void @CatchException(ptr noundef nonnull %1)
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1)
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

11:                                               ; preds = %0
  %12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 56) #14
  store i32 0, ptr %2, align 8, !tbaa !38
  %13 = tail call ptr @NewLinkedList(i64 noundef 0) #14
  %14 = getelementptr inbounds %struct._ExceptionInfo, ptr %2, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !42
  %15 = tail call ptr @AllocateSemaphoreInfo() #14
  %16 = getelementptr inbounds %struct._ExceptionInfo, ptr %2, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._ExceptionInfo, ptr %2, i64 0, i32 7
  store i64 2880220587, ptr %17, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct._ExceptionInfo, ptr %2, i64 0, i32 5
  store i32 1, ptr %18, align 8, !tbaa !45
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GetExceptionInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 56) #14
  store i32 0, ptr %0, align 8, !tbaa !38
  %3 = tail call ptr @NewLinkedList(i64 noundef 0) #14
  %4 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  store ptr %3, ptr %4, align 8, !tbaa !42
  %5 = tail call ptr @AllocateSemaphoreInfo() #14
  %6 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  store ptr %5, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 7
  store i64 2880220587, ptr %7, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetExceptionMessage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #14
  store i8 0, ptr %2, align 16, !tbaa !46
  %3 = tail call ptr @strerror(i32 noundef %0) #14
  %4 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %3, i64 noundef 4096) #14
  %5 = call ptr @ConstantString(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ThrowMagickException(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #0 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call void @llvm.va_start(ptr nonnull %8)
  %9 = call i32 @ThrowMagickExceptionList(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %8)
  call void @llvm.va_end(ptr %8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  ret i32 %9
}

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @CatchException(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @LockSemaphoreInfo(ptr noundef %7) #14
  %8 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void @ResetLinkedListIterator(ptr noundef %8) #14
  %9 = load ptr, ptr %2, align 8, !tbaa !42
  %10 = tail call ptr @GetNextValueInLinkedList(ptr noundef %9) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %5, %48
  %13 = phi ptr [ %50, %48 ], [ %10, %5 ]
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = add i32 %14, -300
  %16 = icmp ult i32 %15, 100
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load ptr, ptr @warning_handler, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  tail call void %18(i32 noundef %14, ptr noundef %24, ptr noundef %22) #14
  br label %25

25:                                               ; preds = %20, %17, %12
  %26 = load i32, ptr %13, align 8, !tbaa !38
  %27 = add i32 %26, -400
  %28 = icmp ult i32 %27, 300
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load ptr, ptr @error_handler, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  tail call void %30(i32 noundef %26, ptr noundef %36, ptr noundef %34) #14
  br label %37

37:                                               ; preds = %32, %29, %25
  %38 = load i32, ptr %13, align 8, !tbaa !38
  %39 = icmp ugt i32 %38, 699
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load ptr, ptr @fatal_error_handler, align 8, !tbaa !47
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  tail call void %41(i32 noundef %38, ptr noundef %47, ptr noundef %45) #14
  br label %48

48:                                               ; preds = %43, %40, %37
  %49 = load ptr, ptr %2, align 8, !tbaa !42
  %50 = tail call ptr @GetNextValueInLinkedList(ptr noundef %49) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %12, !llvm.loop !50

52:                                               ; preds = %48, %5
  %53 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @UnlockSemaphoreInfo(ptr noundef %53) #14
  %54 = load ptr, ptr %2, align 8, !tbaa !42
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @LockSemaphoreInfo(ptr noundef %57) #14
  %58 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void @ClearLinkedList(ptr noundef %58, ptr noundef nonnull @DestroyExceptionElement) #14
  store i32 0, ptr %0, align 8, !tbaa !38
  %59 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  %60 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @UnlockSemaphoreInfo(ptr noundef %60) #14
  %61 = tail call ptr @__errno_location() #15
  store i32 0, ptr %61, align 4, !tbaa !34
  br label %62

62:                                               ; preds = %56, %52, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyExceptionInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull %2) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %2, align 8, !tbaa !43
  tail call void @LockSemaphoreInfo(ptr noundef %7) #14
  store i32 0, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 7
  store i64 -2880220588, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %14, ptr noundef nonnull @DestroyExceptionElement) #14
  store ptr %17, ptr %13, align 8, !tbaa !42
  br label %23

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @ClearLinkedList(ptr noundef nonnull %20, ptr noundef nonnull @DestroyExceptionElement) #14
  br label %23

23:                                               ; preds = %18, %22, %11, %16
  %24 = load i32, ptr %8, align 8, !tbaa !45
  %25 = load ptr, ptr %2, align 8, !tbaa !43
  tail call void @UnlockSemaphoreInfo(ptr noundef %25) #14
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #14
  %28 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #14
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %0, %23 ]
  ret ptr %30
}

declare void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ClearMagickException(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @LockSemaphoreInfo(ptr noundef %7) #14
  %8 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void @ClearLinkedList(ptr noundef %8, ptr noundef nonnull @DestroyExceptionElement) #14
  store i32 0, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #14
  %11 = tail call ptr @__errno_location() #15
  store i32 0, ptr %11, align 4, !tbaa !34
  br label %12

12:                                               ; preds = %1, %5
  ret void
}

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare void @ClearLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @DestroyExceptionElement(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyString(ptr noundef nonnull %3) #14
  store ptr %6, ptr %2, align 8, !tbaa !49
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @DestroyString(ptr noundef nonnull %9) #14
  store ptr %12, ptr %8, align 8, !tbaa !48
  br label %13

13:                                               ; preds = %11, %7
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #14
  ret ptr null
}

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #4

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @MagickWarning(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @warning_handler, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(i32 noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MagickError(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @error_handler, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(i32 noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MagickFatalError(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @fatal_error_handler, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(i32 noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneExceptionInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #14
  call void @GetExceptionInfo(ptr noundef nonnull %2)
  %6 = tail call ptr @__errno_location() #15
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7)
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 248, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8)
  %10 = call ptr @DestroyString(ptr noundef %8) #14
  call void @CatchException(ptr noundef nonnull %2)
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2)
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 56) #14
  store i32 0, ptr %3, align 8, !tbaa !38
  %14 = tail call ptr @NewLinkedList(i64 noundef 0) #14
  %15 = getelementptr inbounds %struct._ExceptionInfo, ptr %3, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !42
  %16 = tail call ptr @AllocateSemaphoreInfo() #14
  %17 = getelementptr inbounds %struct._ExceptionInfo, ptr %3, i64 0, i32 6
  store ptr %16, ptr %17, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct._ExceptionInfo, ptr %3, i64 0, i32 7
  store i64 2880220587, ptr %18, align 8, !tbaa !44
  tail call void @InheritException(ptr noundef nonnull %3, ptr noundef %0)
  %19 = getelementptr inbounds %struct._ExceptionInfo, ptr %3, i64 0, i32 5
  store i32 1, ptr %19, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @InheritException(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ExceptionInfo, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ExceptionInfo, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call void @LockSemaphoreInfo(ptr noundef %8) #14
  %9 = load ptr, ptr %3, align 8, !tbaa !42
  tail call void @ResetLinkedListIterator(ptr noundef %9) #14
  %10 = load ptr, ptr %3, align 8, !tbaa !42
  %11 = tail call ptr @GetNextValueInLinkedList(ptr noundef %10) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %22, %13 ], [ %11, %6 ]
  %15 = load i32, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct._ExceptionInfo, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct._ExceptionInfo, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = tail call i32 @ThrowException(ptr noundef %0, i32 noundef %15, ptr noundef %17, ptr noundef %19)
  %21 = load ptr, ptr %3, align 8, !tbaa !42
  %22 = tail call ptr @GetNextValueInLinkedList(ptr noundef %21) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !53

24:                                               ; preds = %13, %6
  %25 = load ptr, ptr %7, align 8, !tbaa !43
  tail call void @UnlockSemaphoreInfo(ptr noundef %25) #14
  br label %26

26:                                               ; preds = %2, %24
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #4

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #4

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleExceptionMessage(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #14
  switch i32 %0, label %66 [
    i32 300, label %67
    i32 305, label %4
    i32 310, label %5
    i32 315, label %6
    i32 320, label %7
    i32 325, label %8
    i32 330, label %9
    i32 335, label %10
    i32 340, label %11
    i32 345, label %12
    i32 350, label %13
    i32 352, label %14
    i32 355, label %15
    i32 360, label %16
    i32 365, label %17
    i32 370, label %18
    i32 380, label %19
    i32 385, label %20
    i32 390, label %21
    i32 395, label %22
    i32 399, label %23
    i32 400, label %24
    i32 405, label %25
    i32 410, label %26
    i32 415, label %27
    i32 420, label %28
    i32 425, label %29
    i32 430, label %30
    i32 435, label %31
    i32 440, label %32
    i32 445, label %33
    i32 450, label %34
    i32 452, label %35
    i32 455, label %36
    i32 460, label %37
    i32 465, label %38
    i32 470, label %39
    i32 480, label %40
    i32 485, label %41
    i32 490, label %42
    i32 495, label %43
    i32 499, label %44
    i32 700, label %45
    i32 705, label %46
    i32 710, label %47
    i32 715, label %48
    i32 720, label %49
    i32 725, label %50
    i32 730, label %51
    i32 735, label %52
    i32 740, label %53
    i32 745, label %54
    i32 750, label %55
    i32 752, label %56
    i32 755, label %57
    i32 760, label %58
    i32 765, label %59
    i32 770, label %60
    i32 780, label %61
    i32 785, label %62
    i32 790, label %63
    i32 795, label %64
    i32 799, label %65
  ]

4:                                                ; preds = %2
  br label %67

5:                                                ; preds = %2
  br label %67

6:                                                ; preds = %2
  br label %67

7:                                                ; preds = %2
  br label %67

8:                                                ; preds = %2
  br label %67

9:                                                ; preds = %2
  br label %67

10:                                               ; preds = %2
  br label %67

11:                                               ; preds = %2
  br label %67

12:                                               ; preds = %2
  br label %67

13:                                               ; preds = %2
  br label %67

14:                                               ; preds = %2
  br label %67

15:                                               ; preds = %2
  br label %67

16:                                               ; preds = %2
  br label %67

17:                                               ; preds = %2
  br label %67

18:                                               ; preds = %2
  br label %67

19:                                               ; preds = %2
  br label %67

20:                                               ; preds = %2
  br label %67

21:                                               ; preds = %2
  br label %67

22:                                               ; preds = %2
  br label %67

23:                                               ; preds = %2
  br label %67

24:                                               ; preds = %2
  br label %67

25:                                               ; preds = %2
  br label %67

26:                                               ; preds = %2
  br label %67

27:                                               ; preds = %2
  br label %67

28:                                               ; preds = %2
  br label %67

29:                                               ; preds = %2
  br label %67

30:                                               ; preds = %2
  br label %67

31:                                               ; preds = %2
  br label %67

32:                                               ; preds = %2
  br label %67

33:                                               ; preds = %2
  br label %67

34:                                               ; preds = %2
  br label %67

35:                                               ; preds = %2
  br label %67

36:                                               ; preds = %2
  br label %67

37:                                               ; preds = %2
  br label %67

38:                                               ; preds = %2
  br label %67

39:                                               ; preds = %2
  br label %67

40:                                               ; preds = %2
  br label %67

41:                                               ; preds = %2
  br label %67

42:                                               ; preds = %2
  br label %67

43:                                               ; preds = %2
  br label %67

44:                                               ; preds = %2
  br label %67

45:                                               ; preds = %2
  br label %67

46:                                               ; preds = %2
  br label %67

47:                                               ; preds = %2
  br label %67

48:                                               ; preds = %2
  br label %67

49:                                               ; preds = %2
  br label %67

50:                                               ; preds = %2
  br label %67

51:                                               ; preds = %2
  br label %67

52:                                               ; preds = %2
  br label %67

53:                                               ; preds = %2
  br label %67

54:                                               ; preds = %2
  br label %67

55:                                               ; preds = %2
  br label %67

56:                                               ; preds = %2
  br label %67

57:                                               ; preds = %2
  br label %67

58:                                               ; preds = %2
  br label %67

59:                                               ; preds = %2
  br label %67

60:                                               ; preds = %2
  br label %67

61:                                               ; preds = %2
  br label %67

62:                                               ; preds = %2
  br label %67

63:                                               ; preds = %2
  br label %67

64:                                               ; preds = %2
  br label %67

65:                                               ; preds = %2
  br label %67

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %2, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66
  %68 = phi ptr [ @.str.1, %66 ], [ @.str.74, %65 ], [ @.str.73, %64 ], [ @.str.72, %63 ], [ @.str.71, %62 ], [ @.str.70, %61 ], [ @.str.69, %60 ], [ @.str.68, %59 ], [ @.str.67, %58 ], [ @.str.66, %57 ], [ @.str.65, %56 ], [ @.str.64, %55 ], [ @.str.63, %54 ], [ @.str.62, %53 ], [ @.str.61, %52 ], [ @.str.60, %51 ], [ @.str.59, %50 ], [ @.str.58, %49 ], [ @.str.57, %48 ], [ @.str.56, %47 ], [ @.str.55, %46 ], [ @.str.54, %45 ], [ @.str.53, %44 ], [ @.str.52, %43 ], [ @.str.51, %42 ], [ @.str.50, %41 ], [ @.str.49, %40 ], [ @.str.48, %39 ], [ @.str.47, %38 ], [ @.str.46, %37 ], [ @.str.45, %36 ], [ @.str.44, %35 ], [ @.str.43, %34 ], [ @.str.42, %33 ], [ @.str.41, %32 ], [ @.str.40, %31 ], [ @.str.39, %30 ], [ @.str.38, %29 ], [ @.str.37, %28 ], [ @.str.36, %27 ], [ @.str.35, %26 ], [ @.str.34, %25 ], [ @.str.33, %24 ], [ @.str.32, %23 ], [ @.str.31, %22 ], [ @.str.30, %21 ], [ @.str.29, %20 ], [ @.str.28, %19 ], [ @.str.27, %18 ], [ @.str.26, %17 ], [ @.str.25, %16 ], [ @.str.24, %15 ], [ @.str.23, %14 ], [ @.str.22, %13 ], [ @.str.21, %12 ], [ @.str.20, %11 ], [ @.str.19, %10 ], [ @.str.18, %9 ], [ @.str.17, %8 ], [ @.str.16, %7 ], [ @.str.15, %6 ], [ @.str.14, %5 ], [ @.str.13, %4 ], [ @.str.12, %2 ]
  %69 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef nonnull %68, ptr noundef %1) #14
  %70 = call ptr @GetLocaleMessage(ptr noundef nonnull %3) #14
  %71 = icmp eq ptr %70, null
  %72 = icmp eq ptr %70, %3
  %73 = or i1 %71, %72
  %74 = select i1 %73, ptr %1, ptr %70
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #14
  ret ptr %74
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @GetLocaleMessage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ThrowException(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @LockSemaphoreInfo(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = tail call ptr @GetLastValueInLinkedList(ptr noundef %9) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %10, align 8, !tbaa !38
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef %2) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = tail call i32 @LocaleCompare(ptr noundef %22, ptr noundef %3) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %20, %15, %12, %4
  %26 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @UnlockSemaphoreInfo(ptr noundef %29) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  call void @GetExceptionInfo(ptr noundef nonnull %5)
  %30 = tail call ptr @__errno_location() #15
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = call ptr @GetExceptionMessage(i32 noundef %31)
  %33 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 933, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %32)
  %34 = call ptr @DestroyString(ptr noundef %32) #14
  call void @CatchException(ptr noundef nonnull %5)
  %35 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5)
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

36:                                               ; preds = %25
  %37 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %26, i32 noundef 0, i64 noundef 56) #14
  store i32 %1, ptr %26, align 8, !tbaa !38
  %38 = icmp eq ptr %2, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @ConstantString(ptr noundef nonnull %2) #14
  %41 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %39, %36
  %43 = icmp eq ptr %3, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = tail call ptr @ConstantString(ptr noundef nonnull %3) #14
  %46 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 3
  store ptr %45, ptr %46, align 8, !tbaa !48
  br label %47

47:                                               ; preds = %44, %42
  %48 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 7
  store i64 2880220587, ptr %48, align 8, !tbaa !44
  %49 = load ptr, ptr %8, align 8, !tbaa !42
  %50 = tail call i32 @AppendValueToLinkedList(ptr noundef %49, ptr noundef nonnull %26) #14
  %51 = load i32, ptr %26, align 8, !tbaa !38
  %52 = load i32, ptr %0, align 8, !tbaa !38
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  store i32 %51, ptr %0, align 8, !tbaa !38
  %55 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !49
  %58 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !48
  br label %61

61:                                               ; preds = %47, %54, %20
  %62 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @UnlockSemaphoreInfo(ptr noundef %62) #14
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @SetErrorHandler(ptr noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr @error_handler, align 8, !tbaa !47
  store ptr %0, ptr @error_handler, align 8, !tbaa !47
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @SetFatalErrorHandler(ptr noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr @fatal_error_handler, align 8, !tbaa !47
  store ptr %0, ptr @fatal_error_handler, align 8, !tbaa !47
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @SetWarningHandler(ptr noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr @warning_handler, align 8, !tbaa !47
  store ptr %0, ptr @warning_handler, align 8, !tbaa !47
  ret ptr %2
}

declare ptr @GetLastValueInLinkedList(ptr noundef) local_unnamed_addr #4

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @ThrowMagickExceptionList(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  %11 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #14
  %12 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %4, ptr noundef %5)
  %13 = call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef %12, i64 noundef 4096) #14
  %14 = call i64 @ConcatenateMagickString(ptr noundef nonnull %11, ptr noundef nonnull @.str.5, i64 noundef 4096) #14
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #17
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  %17 = sub i64 4096, %15
  %18 = call i32 @vsnprintf(ptr noundef nonnull %16, i64 noundef %17, ptr noundef %6, ptr noundef %7) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = getelementptr inbounds [4096 x i8], ptr %11, i64 0, i64 4095
  store i8 0, ptr %21, align 1, !tbaa !46
  br label %22

22:                                               ; preds = %20, %8
  %23 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 256, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %11) #14
  call void @GetPathComponent(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %10) #14
  %24 = add i32 %4, -300
  %25 = icmp ult i32 %24, 100
  %26 = select i1 %25, ptr @.str.8, ptr @.str.7
  %27 = add i32 %4, -400
  %28 = icmp ult i32 %27, 300
  %29 = select i1 %28, ptr @.str.9, ptr %26
  %30 = icmp ugt i32 %4, 699
  %31 = select i1 %30, ptr @.str.10, ptr %29
  %32 = uitofp i64 %3 to double
  %33 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %11, ptr noundef nonnull %31, ptr noundef nonnull %10, ptr noundef %2, double noundef %32) #14
  %34 = call i32 @ThrowException(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %9, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #14
  ret i32 %23
}

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #9

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: nounwind uwtable
define internal void @DefaultErrorHandler(i32 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !47
  %7 = tail call ptr @GetClientName() #14
  %8 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.75, ptr noundef %7, ptr noundef nonnull %1) #14
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !47
  %12 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %11, ptr noundef nonnull @.str.76, ptr noundef nonnull %2) #14
  br label %13

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr @stderr, align 8, !tbaa !47
  %15 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %14, ptr noundef nonnull @.str.77) #14
  %16 = load ptr, ptr @stderr, align 8, !tbaa !47
  %17 = tail call i32 @fflush(ptr noundef %16)
  br label %18

18:                                               ; preds = %3, %13
  ret void
}

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @GetClientName() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @DefaultFatalErrorHandler(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !47
  %8 = tail call ptr @GetClientName() #14
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.75, ptr noundef %8, ptr noundef nonnull %1) #14
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @stderr, align 8, !tbaa !47
  %13 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %12, ptr noundef nonnull @.str.76, ptr noundef nonnull %2) #14
  br label %14

14:                                               ; preds = %11, %6
  %15 = load ptr, ptr @stderr, align 8, !tbaa !47
  %16 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %15, ptr noundef nonnull @.str.77) #14
  %17 = load ptr, ptr @stderr, align 8, !tbaa !47
  %18 = tail call i32 @fflush(ptr noundef %17)
  tail call void @MagickCoreTerminus() #14
  %19 = add i32 %0, -699
  tail call void @exit(i32 noundef %19) #16
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal void @DefaultWarningHandler(i32 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !47
  %7 = tail call ptr @GetClientName() #14
  %8 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.75, ptr noundef %7, ptr noundef nonnull %1) #14
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !47
  %12 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %11, ptr noundef nonnull @.str.76, ptr noundef nonnull %2) #14
  br label %13

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr @stderr, align 8, !tbaa !47
  %15 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %14, ptr noundef nonnull @.str.77) #14
  %16 = load ptr, ptr @stderr, align 8, !tbaa !47
  %17 = tail call i32 @fflush(ptr noundef %16)
  br label %18

18:                                               ; preds = %3, %13
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !40, i64 40, !41, i64 48}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!39, !40, i64 24}
!43 = !{!39, !40, i64 40}
!44 = !{!39, !41, i64 48}
!45 = !{!39, !35, i64 32}
!46 = !{!36, !36, i64 0}
!47 = !{!40, !40, i64 0}
!48 = !{!39, !40, i64 16}
!49 = !{!39, !40, i64 8}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !51, !52}
