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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireExceptionInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #15
  call void @GetExceptionInfo(ptr noundef nonnull %1) #16
  %5 = tail call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #16
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 108, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7) #16
  %9 = call ptr @DestroyString(ptr noundef %7) #18
  call void @CatchException(ptr noundef nonnull %1) #16
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #16
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #19
  unreachable

11:                                               ; preds = %0
  tail call void @GetExceptionInfo(ptr noundef nonnull %2) #16
  %12 = getelementptr inbounds %struct._ExceptionInfo, ptr %2, i64 0, i32 5
  store i32 1, ptr %12, align 8, !tbaa !38
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetExceptionInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 56) #18
  store i32 0, ptr %0, align 8, !tbaa !42
  %3 = tail call ptr @NewLinkedList(i64 noundef 0) #18
  %4 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  store ptr %3, ptr %4, align 8, !tbaa !43
  %5 = tail call ptr @AllocateSemaphoreInfo() #18
  %6 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  store ptr %5, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 7
  store i64 2880220587, ptr %7, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetExceptionMessage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #15
  store i8 0, ptr %2, align 16, !tbaa !46
  %3 = tail call ptr @strerror(i32 noundef %0) #18
  %4 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %3, i64 noundef 4096) #18
  %5 = call ptr @ConstantString(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ThrowMagickException(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #0 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  call void @llvm.va_start(ptr nonnull %8)
  %9 = call i32 @ThrowMagickExceptionList(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %8) #16
  call void @llvm.va_end(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CatchException(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %7) #18
  %8 = load ptr, ptr %2, align 8, !tbaa !43
  tail call void @ResetLinkedListIterator(ptr noundef %8) #18
  %9 = load ptr, ptr %2, align 8, !tbaa !43
  %10 = tail call ptr @GetNextValueInLinkedList(ptr noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %5, %41
  %13 = phi ptr [ %43, %41 ], [ %10, %5 ]
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %15 = add i32 %14, -300
  %16 = icmp ult i32 %15, 100
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  tail call void @MagickWarning(i32 noundef %14, ptr noundef %19, ptr noundef %21) #16
  %22 = load i32, ptr %13, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi i32 [ %22, %17 ], [ %14, %12 ]
  %25 = add i32 %24, -400
  %26 = icmp ult i32 %25, 300
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  tail call void @MagickError(i32 noundef %24, ptr noundef %29, ptr noundef %31) #16
  %32 = load i32, ptr %13, align 8, !tbaa !42
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i32 [ %32, %27 ], [ %24, %23 ]
  %35 = icmp ugt i32 %34, 699
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct._ExceptionInfo, ptr %13, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  tail call void @MagickFatalError(i32 noundef %34, ptr noundef %38, ptr noundef %40) #16
  br label %41

41:                                               ; preds = %36, %33
  %42 = load ptr, ptr %2, align 8, !tbaa !43
  %43 = tail call ptr @GetNextValueInLinkedList(ptr noundef %42) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %12, !llvm.loop !49

45:                                               ; preds = %41, %5
  %46 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %46) #18
  tail call void @ClearMagickException(ptr noundef nonnull %0) #16
  br label %47

47:                                               ; preds = %1, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyExceptionInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull %2) #18
  %6 = load ptr, ptr %2, align 8, !tbaa !44
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  tail call void @LockSemaphoreInfo(ptr noundef %8) #18
  store i32 0, ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 7
  store i64 -2880220588, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %15, ptr noundef nonnull @DestroyExceptionElement) #18
  store ptr %18, ptr %14, align 8, !tbaa !43
  br label %24

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @ClearLinkedList(ptr noundef nonnull %21, ptr noundef nonnull @DestroyExceptionElement) #18
  br label %24

24:                                               ; preds = %19, %23, %12, %17
  %25 = load i32, ptr %9, align 8, !tbaa !38
  %26 = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %26) #18
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #18
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #18
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %0, %24 ]
  ret ptr %31
}

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClearMagickException(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %7) #18
  %8 = load ptr, ptr %2, align 8, !tbaa !43
  tail call void @ClearLinkedList(ptr noundef %8, ptr noundef nonnull @DestroyExceptionElement) #18
  store i32 0, ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #18
  %11 = tail call ptr @__errno_location() #17
  store i32 0, ptr %11, align 4, !tbaa !34
  br label %12

12:                                               ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ClearLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @DestroyExceptionElement(ptr noundef %0) #0 !PGOFuncName !51 {
  %2 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyString(ptr noundef nonnull %3) #18
  store ptr %6, ptr %2, align 8, !tbaa !47
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @DestroyString(ptr noundef nonnull %9) #18
  store ptr %12, ptr %8, align 8, !tbaa !48
  br label %13

13:                                               ; preds = %11, %7
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #18
  ret ptr null
}

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickWarning(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @warning_handler, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(i32 noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickError(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @error_handler, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(i32 noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickFatalError(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @fatal_error_handler, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(i32 noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneExceptionInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @GetExceptionInfo(ptr noundef nonnull %2) #16
  %6 = tail call ptr @__errno_location() #17
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #16
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 248, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #16
  %10 = call ptr @DestroyString(ptr noundef %8) #18
  call void @CatchException(ptr noundef nonnull %2) #16
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #16
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #19
  unreachable

12:                                               ; preds = %1
  tail call void @GetExceptionInfo(ptr noundef nonnull %3) #16
  tail call void @InheritException(ptr noundef nonnull %3, ptr noundef %0) #16
  %13 = getelementptr inbounds %struct._ExceptionInfo, ptr %3, i64 0, i32 5
  store i32 1, ptr %13, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @InheritException(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ExceptionInfo, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ExceptionInfo, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %8) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !43
  tail call void @ResetLinkedListIterator(ptr noundef %9) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !43
  %11 = tail call ptr @GetNextValueInLinkedList(ptr noundef %10) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %22, %13 ], [ %11, %6 ]
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._ExceptionInfo, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct._ExceptionInfo, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = tail call i32 @ThrowException(ptr noundef %0, i32 noundef %15, ptr noundef %17, ptr noundef %19) #16
  %21 = load ptr, ptr %3, align 8, !tbaa !43
  %22 = tail call ptr @GetNextValueInLinkedList(ptr noundef %21) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !53

24:                                               ; preds = %13, %6
  %25 = load ptr, ptr %7, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %25) #18
  br label %26

26:                                               ; preds = %2, %24
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetLocaleExceptionMessage(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  %4 = tail call fastcc ptr @ExceptionSeverityToTag(i32 noundef %0) #16
  %5 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef nonnull %4, ptr noundef %1) #18
  %6 = call ptr @GetLocaleMessage(ptr noundef nonnull %3) #18
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %6, %3
  %9 = or i1 %7, %8
  %10 = select i1 %9, ptr %1, ptr %6
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  ret ptr %10
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @ExceptionSeverityToTag(i32 noundef %0) unnamed_addr #7 !PGOFuncName !54 {
  switch i32 %0, label %64 [
    i32 300, label %65
    i32 305, label %2
    i32 310, label %3
    i32 315, label %4
    i32 320, label %5
    i32 325, label %6
    i32 330, label %7
    i32 335, label %8
    i32 340, label %9
    i32 345, label %10
    i32 350, label %11
    i32 352, label %12
    i32 355, label %13
    i32 360, label %14
    i32 365, label %15
    i32 370, label %16
    i32 380, label %17
    i32 385, label %18
    i32 390, label %19
    i32 395, label %20
    i32 399, label %21
    i32 400, label %22
    i32 405, label %23
    i32 410, label %24
    i32 415, label %25
    i32 420, label %26
    i32 425, label %27
    i32 430, label %28
    i32 435, label %29
    i32 440, label %30
    i32 445, label %31
    i32 450, label %32
    i32 452, label %33
    i32 455, label %34
    i32 460, label %35
    i32 465, label %36
    i32 470, label %37
    i32 480, label %38
    i32 485, label %39
    i32 490, label %40
    i32 495, label %41
    i32 499, label %42
    i32 700, label %43
    i32 705, label %44
    i32 710, label %45
    i32 715, label %46
    i32 720, label %47
    i32 725, label %48
    i32 730, label %49
    i32 735, label %50
    i32 740, label %51
    i32 745, label %52
    i32 750, label %53
    i32 752, label %54
    i32 755, label %55
    i32 760, label %56
    i32 765, label %57
    i32 770, label %58
    i32 780, label %59
    i32 785, label %60
    i32 790, label %61
    i32 795, label %62
    i32 799, label %63
  ]

2:                                                ; preds = %1
  br label %65

3:                                                ; preds = %1
  br label %65

4:                                                ; preds = %1
  br label %65

5:                                                ; preds = %1
  br label %65

6:                                                ; preds = %1
  br label %65

7:                                                ; preds = %1
  br label %65

8:                                                ; preds = %1
  br label %65

9:                                                ; preds = %1
  br label %65

10:                                               ; preds = %1
  br label %65

11:                                               ; preds = %1
  br label %65

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  br label %65

14:                                               ; preds = %1
  br label %65

15:                                               ; preds = %1
  br label %65

16:                                               ; preds = %1
  br label %65

17:                                               ; preds = %1
  br label %65

18:                                               ; preds = %1
  br label %65

19:                                               ; preds = %1
  br label %65

20:                                               ; preds = %1
  br label %65

21:                                               ; preds = %1
  br label %65

22:                                               ; preds = %1
  br label %65

23:                                               ; preds = %1
  br label %65

24:                                               ; preds = %1
  br label %65

25:                                               ; preds = %1
  br label %65

26:                                               ; preds = %1
  br label %65

27:                                               ; preds = %1
  br label %65

28:                                               ; preds = %1
  br label %65

29:                                               ; preds = %1
  br label %65

30:                                               ; preds = %1
  br label %65

31:                                               ; preds = %1
  br label %65

32:                                               ; preds = %1
  br label %65

33:                                               ; preds = %1
  br label %65

34:                                               ; preds = %1
  br label %65

35:                                               ; preds = %1
  br label %65

36:                                               ; preds = %1
  br label %65

37:                                               ; preds = %1
  br label %65

38:                                               ; preds = %1
  br label %65

39:                                               ; preds = %1
  br label %65

40:                                               ; preds = %1
  br label %65

41:                                               ; preds = %1
  br label %65

42:                                               ; preds = %1
  br label %65

43:                                               ; preds = %1
  br label %65

44:                                               ; preds = %1
  br label %65

45:                                               ; preds = %1
  br label %65

46:                                               ; preds = %1
  br label %65

47:                                               ; preds = %1
  br label %65

48:                                               ; preds = %1
  br label %65

49:                                               ; preds = %1
  br label %65

50:                                               ; preds = %1
  br label %65

51:                                               ; preds = %1
  br label %65

52:                                               ; preds = %1
  br label %65

53:                                               ; preds = %1
  br label %65

54:                                               ; preds = %1
  br label %65

55:                                               ; preds = %1
  br label %65

56:                                               ; preds = %1
  br label %65

57:                                               ; preds = %1
  br label %65

58:                                               ; preds = %1
  br label %65

59:                                               ; preds = %1
  br label %65

60:                                               ; preds = %1
  br label %65

61:                                               ; preds = %1
  br label %65

62:                                               ; preds = %1
  br label %65

63:                                               ; preds = %1
  br label %65

64:                                               ; preds = %1
  br label %65

65:                                               ; preds = %1, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %66 = phi ptr [ @.str.1, %64 ], [ @.str.74, %63 ], [ @.str.73, %62 ], [ @.str.72, %61 ], [ @.str.71, %60 ], [ @.str.70, %59 ], [ @.str.69, %58 ], [ @.str.68, %57 ], [ @.str.67, %56 ], [ @.str.66, %55 ], [ @.str.65, %54 ], [ @.str.64, %53 ], [ @.str.63, %52 ], [ @.str.62, %51 ], [ @.str.61, %50 ], [ @.str.60, %49 ], [ @.str.59, %48 ], [ @.str.58, %47 ], [ @.str.57, %46 ], [ @.str.56, %45 ], [ @.str.55, %44 ], [ @.str.54, %43 ], [ @.str.53, %42 ], [ @.str.52, %41 ], [ @.str.51, %40 ], [ @.str.50, %39 ], [ @.str.49, %38 ], [ @.str.48, %37 ], [ @.str.47, %36 ], [ @.str.46, %35 ], [ @.str.45, %34 ], [ @.str.44, %33 ], [ @.str.43, %32 ], [ @.str.42, %31 ], [ @.str.41, %30 ], [ @.str.40, %29 ], [ @.str.39, %28 ], [ @.str.38, %27 ], [ @.str.37, %26 ], [ @.str.36, %25 ], [ @.str.35, %24 ], [ @.str.34, %23 ], [ @.str.33, %22 ], [ @.str.32, %21 ], [ @.str.31, %20 ], [ @.str.30, %19 ], [ @.str.29, %18 ], [ @.str.28, %17 ], [ @.str.27, %16 ], [ @.str.26, %15 ], [ @.str.25, %14 ], [ @.str.24, %13 ], [ @.str.23, %12 ], [ @.str.22, %11 ], [ @.str.21, %10 ], [ @.str.20, %9 ], [ @.str.19, %8 ], [ @.str.18, %7 ], [ @.str.17, %6 ], [ @.str.16, %5 ], [ @.str.15, %4 ], [ @.str.14, %3 ], [ @.str.13, %2 ], [ @.str.12, %1 ]
  ret ptr %66
}

; Function Attrs: optsize
declare ptr @GetLocaleMessage(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ThrowException(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @LockSemaphoreInfo(ptr noundef %7) #18
  %8 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @GetLastValueInLinkedList(ptr noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %10, align 8, !tbaa !42
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef %2) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = tail call i32 @LocaleCompare(ptr noundef %22, ptr noundef %3) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %20, %15, %12, %4
  %26 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %29) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #15
  call void @GetExceptionInfo(ptr noundef nonnull %5) #16
  %30 = tail call ptr @__errno_location() #17
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = call ptr @GetExceptionMessage(i32 noundef %31) #16
  %33 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 933, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %32) #16
  %34 = call ptr @DestroyString(ptr noundef %32) #18
  call void @CatchException(ptr noundef nonnull %5) #16
  %35 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #16
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #19
  unreachable

36:                                               ; preds = %25
  %37 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %26, i32 noundef 0, i64 noundef 56) #18
  store i32 %1, ptr %26, align 8, !tbaa !42
  %38 = icmp eq ptr %2, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @ConstantString(ptr noundef nonnull %2) #18
  %41 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !47
  br label %42

42:                                               ; preds = %39, %36
  %43 = icmp eq ptr %3, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = tail call ptr @ConstantString(ptr noundef nonnull %3) #18
  %46 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 3
  store ptr %45, ptr %46, align 8, !tbaa !48
  br label %47

47:                                               ; preds = %44, %42
  %48 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 7
  store i64 2880220587, ptr %48, align 8, !tbaa !45
  %49 = load ptr, ptr %8, align 8, !tbaa !43
  %50 = tail call i32 @AppendValueToLinkedList(ptr noundef %49, ptr noundef nonnull %26) #18
  %51 = load i32, ptr %26, align 8, !tbaa !42
  %52 = load i32, ptr %0, align 8, !tbaa !42
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  store i32 %51, ptr %0, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct._ExceptionInfo, ptr %26, i64 0, i32 2
  %56 = getelementptr inbounds %struct._ExceptionInfo, ptr %0, i64 0, i32 2
  %57 = load <2 x ptr>, ptr %55, align 8, !tbaa !52
  store <2 x ptr> %57, ptr %56, align 8, !tbaa !52
  br label %58

58:                                               ; preds = %47, %54, %20
  %59 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @UnlockSemaphoreInfo(ptr noundef %59) #18
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @SetErrorHandler(ptr noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @error_handler, align 8, !tbaa !52
  store ptr %0, ptr @error_handler, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @SetFatalErrorHandler(ptr noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @fatal_error_handler, align 8, !tbaa !52
  store ptr %0, ptr @fatal_error_handler, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @SetWarningHandler(ptr noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @warning_handler, align 8, !tbaa !52
  store ptr %0, ptr @warning_handler, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @GetLastValueInLinkedList(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ThrowMagickExceptionList(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  %11 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #15
  %12 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %4, ptr noundef %5) #16
  %13 = call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef %12, i64 noundef 4096) #18
  %14 = call i64 @ConcatenateMagickString(ptr noundef nonnull %11, ptr noundef nonnull @.str.5, i64 noundef 4096) #18
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #20
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  %17 = sub i64 4096, %15
  %18 = call i32 @vsnprintf(ptr noundef nonnull %16, i64 noundef %17, ptr noundef %6, ptr noundef %7) #18
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = getelementptr inbounds [4096 x i8], ptr %11, i64 0, i64 4095
  store i8 0, ptr %21, align 1, !tbaa !46
  br label %22

22:                                               ; preds = %20, %8
  %23 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 256, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %11) #18
  call void @GetPathComponent(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %10) #18
  %24 = add i32 %4, -300
  %25 = icmp ult i32 %24, 100
  %26 = select i1 %25, ptr @.str.8, ptr @.str.7
  %27 = add i32 %4, -400
  %28 = icmp ult i32 %27, 300
  %29 = select i1 %28, ptr @.str.9, ptr %26
  %30 = icmp ugt i32 %4, 699
  %31 = select i1 %30, ptr @.str.10, ptr %29
  %32 = uitofp i64 %3 to double
  %33 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %11, ptr noundef nonnull %31, ptr noundef nonnull %10, ptr noundef %2, double noundef %32) #18
  %34 = call i32 @ThrowException(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %9, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #15
  ret i32 %23
}

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal void @DefaultErrorHandler(i32 %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !55 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !52
  %7 = tail call ptr @GetClientName() #18
  %8 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.75, ptr noundef %7, ptr noundef nonnull %1) #18
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !52
  %12 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %11, ptr noundef nonnull @.str.76, ptr noundef nonnull %2) #18
  br label %13

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr @stderr, align 8, !tbaa !52
  %15 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %14, ptr noundef nonnull @.str.77) #18
  %16 = load ptr, ptr @stderr, align 8, !tbaa !52
  %17 = tail call i32 @fflush(ptr noundef %16) #16
  br label %18

18:                                               ; preds = %3, %13
  ret void
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @GetClientName() local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal void @DefaultFatalErrorHandler(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !56 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !52
  %8 = tail call ptr @GetClientName() #18
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.75, ptr noundef %8, ptr noundef nonnull %1) #18
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @stderr, align 8, !tbaa !52
  %13 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %12, ptr noundef nonnull @.str.76, ptr noundef nonnull %2) #18
  br label %14

14:                                               ; preds = %11, %6
  %15 = load ptr, ptr @stderr, align 8, !tbaa !52
  %16 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %15, ptr noundef nonnull @.str.77) #18
  %17 = load ptr, ptr @stderr, align 8, !tbaa !52
  %18 = tail call i32 @fflush(ptr noundef %17) #16
  tail call void @MagickCoreTerminus() #18
  %19 = add i32 %0, -699
  tail call void @exit(i32 noundef %19) #19
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal void @DefaultWarningHandler(i32 %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !57 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !52
  %7 = tail call ptr @GetClientName() #18
  %8 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.75, ptr noundef %7, ptr noundef nonnull %1) #18
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !52
  %12 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %11, ptr noundef nonnull @.str.76, ptr noundef nonnull %2) #18
  br label %13

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr @stderr, align 8, !tbaa !52
  %15 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %14, ptr noundef nonnull @.str.77) #18
  %16 = load ptr, ptr @stderr, align 8, !tbaa !52
  %17 = tail call i32 @fflush(ptr noundef %16) #16
  br label %18

18:                                               ; preds = %3, %13
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #12 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 32}
!39 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !40, i64 40, !41, i64 48}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!39, !35, i64 0}
!43 = !{!39, !40, i64 24}
!44 = !{!39, !40, i64 40}
!45 = !{!39, !41, i64 48}
!46 = !{!36, !36, i64 0}
!47 = !{!39, !40, i64 8}
!48 = !{!39, !40, i64 16}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"exception.c:DestroyExceptionElement"}
!52 = !{!40, !40, i64 0}
!53 = distinct !{!53, !50}
!54 = !{!"exception.c:ExceptionSeverityToTag"}
!55 = !{!"exception.c:DefaultErrorHandler"}
!56 = !{!"exception.c:DefaultFatalErrorHandler"}
!57 = !{!"exception.c:DefaultWarningHandler"}
