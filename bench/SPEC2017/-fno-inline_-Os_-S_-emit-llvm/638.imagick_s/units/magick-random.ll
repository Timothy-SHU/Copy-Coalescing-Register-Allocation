; ModuleID = 'magick/random.c'
source_filename = "magick/random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._RandomInfo = type { ptr, ptr, ptr, i64, [4 x i64], double, i64, i16, i16, ptr, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"magick/random.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@secret_key = internal unnamed_addr global i64 -1, align 8
@environ = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@gather_true_random = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"/dev/srandom\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@random_semaphore = internal global ptr null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"SequenceWrapError\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireRandomInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(112) ptr @AcquireMagickMemory(i64 noundef 112) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #18
  call void @GetExceptionInfo(ptr noundef nonnull %1) #19
  %7 = tail call ptr @__errno_location() #20
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #19
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 188, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #19
  %11 = call ptr @DestroyString(ptr noundef %9) #19
  call void @CatchException(ptr noundef nonnull %1) #19
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #21
  unreachable

13:                                               ; preds = %0
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 112) #19
  %15 = tail call ptr @AcquireSignatureInfo() #19
  store ptr %15, ptr %4, align 8, !tbaa !10
  %16 = tail call i32 @GetSignatureDigestsize(ptr noundef %15) #19
  %17 = shl i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @AcquireStringInfo(i64 noundef %18) #19
  %20 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !16
  tail call void @ResetStringInfo(ptr noundef %19) #19
  %21 = load ptr, ptr %4, align 8, !tbaa !10
  %22 = tail call i32 @GetSignatureDigestsize(ptr noundef %21) #19
  %23 = zext i32 %22 to i64
  %24 = tail call ptr @AcquireStringInfo(i64 noundef %23) #19
  %25 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !17
  tail call void @ResetStringInfo(ptr noundef %24) #19
  %26 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 5
  store double 0x3BF0000000000000, ptr %26, align 8, !tbaa !18
  %27 = load i64, ptr @secret_key, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 6
  store i64 %27, ptr %28, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 7
  store i16 1, ptr %29, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 8
  store i16 0, ptr %30, align 2, !tbaa !22
  %31 = tail call ptr @AllocateSemaphoreInfo() #19
  %32 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 9
  store ptr %31, ptr %32, align 8, !tbaa !23
  %33 = tail call i64 @time(ptr noundef null) #19
  %34 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 10
  store i64 %33, ptr %34, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 11
  store i64 2880220587, ptr %35, align 8, !tbaa !25
  %36 = tail call fastcc ptr @GenerateEntropicChaos(ptr noundef nonnull %4) #22
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  call void @GetExceptionInfo(ptr noundef nonnull %2) #19
  %39 = tail call ptr @__errno_location() #20
  %40 = load i32, ptr %39, align 4, !tbaa !6
  %41 = call ptr @GetExceptionMessage(i32 noundef %40) #19
  %42 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 209, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %41) #19
  %43 = call ptr @DestroyString(ptr noundef %41) #19
  call void @CatchException(ptr noundef nonnull %2) #19
  %44 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #21
  unreachable

45:                                               ; preds = %13
  %46 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @InitializeSignature(ptr noundef %46) #19
  %47 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @UpdateSignature(ptr noundef %47, ptr noundef nonnull %36) #19
  %48 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @FinalizeSignature(ptr noundef %48) #19
  %49 = load ptr, ptr %4, align 8, !tbaa !10
  %50 = tail call i32 @GetSignatureDigestsize(ptr noundef %49) #19
  %51 = add i32 %50, 1
  %52 = lshr i32 %51, 1
  %53 = zext nneg i32 %52 to i64
  tail call void @SetStringInfoLength(ptr noundef nonnull %36, i64 noundef %53) #19
  %54 = load ptr, ptr %4, align 8, !tbaa !10
  %55 = tail call ptr @GetSignatureDigest(ptr noundef %54) #19
  tail call void @SetStringInfo(ptr noundef nonnull %36, ptr noundef %55) #19
  %56 = load ptr, ptr %20, align 8, !tbaa !16
  tail call void @SetStringInfo(ptr noundef %56, ptr noundef nonnull %36) #19
  %57 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %36) #19
  %58 = tail call fastcc ptr @GenerateEntropicChaos(ptr noundef nonnull %4) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  call void @GetExceptionInfo(ptr noundef nonnull %3) #19
  %61 = tail call ptr @__errno_location() #20
  %62 = load i32, ptr %61, align 4, !tbaa !6
  %63 = call ptr @GetExceptionMessage(i32 noundef %62) #19
  %64 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 223, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %63) #19
  %65 = call ptr @DestroyString(ptr noundef %63) #19
  call void @CatchException(ptr noundef nonnull %3) #19
  %66 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #21
  unreachable

67:                                               ; preds = %45
  %68 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @UpdateSignature(ptr noundef %68, ptr noundef nonnull %58) #19
  %69 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @FinalizeSignature(ptr noundef %69) #19
  %70 = load ptr, ptr %25, align 8, !tbaa !17
  %71 = load ptr, ptr %4, align 8, !tbaa !10
  %72 = tail call ptr @GetSignatureDigest(ptr noundef %71) #19
  tail call void @SetStringInfo(ptr noundef %70, ptr noundef %72) #19
  %73 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %58) #19
  %74 = load i64, ptr %28, align 8, !tbaa !20
  %75 = icmp eq i64 %74, -1
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = tail call ptr @GetRandomKey(ptr noundef nonnull %4, i64 noundef 8) #22
  %78 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4
  %79 = tail call ptr @GetStringInfoDatum(ptr noundef %77) #19
  %80 = tail call i64 @GetStringInfoLength(ptr noundef %77) #19
  %81 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %78, ptr noundef %79, i64 noundef %80) #19
  %82 = tail call ptr @DestroyStringInfo(ptr noundef %77) #19
  br label %95

83:                                               ; preds = %67
  %84 = tail call ptr @AcquireSignatureInfo() #19
  %85 = tail call ptr @AcquireStringInfo(i64 noundef 8) #19
  tail call void @SetStringInfoDatum(ptr noundef %85, ptr noundef nonnull %28) #19
  tail call void @UpdateSignature(ptr noundef %84, ptr noundef %85) #19
  %86 = tail call ptr @DestroyStringInfo(ptr noundef %85) #19
  tail call void @FinalizeSignature(ptr noundef %84) #19
  %87 = tail call ptr @GetSignatureDigest(ptr noundef %84) #19
  %88 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4
  %89 = tail call ptr @GetStringInfoDatum(ptr noundef %87) #19
  %90 = tail call i32 @GetSignatureDigestsize(ptr noundef %84) #19
  %91 = zext i32 %90 to i64
  %92 = tail call fastcc i64 @MagickMin(i64 noundef %91) #22
  %93 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %88, ptr noundef %89, i64 noundef %92) #19
  %94 = tail call ptr @DestroySignatureInfo(ptr noundef %84) #19
  br label %95

95:                                               ; preds = %83, %76
  %96 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4, i64 1
  store i64 1353184337, ptr %96, align 8, !tbaa !19
  %97 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4, i64 2
  store i64 1399144830, ptr %97, align 8, !tbaa !19
  %98 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4, i64 3
  store i64 3282310938, ptr %98, align 8, !tbaa !19
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

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

; Function Attrs: optsize
declare ptr @AcquireSignatureInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetSignatureDigestsize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ResetStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GenerateEntropicChaos(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = tail call ptr @AcquireStringInfo(i64 noundef 0) #19
  store ptr %7, ptr %3, align 8, !tbaa !26
  %8 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  tail call void @LockSemaphoreInfo(ptr noundef %9) #19
  %10 = tail call ptr @AcquireStringInfo(i64 noundef 8) #19
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %3) #19
  %11 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %11, ptr noundef %10) #19
  %12 = load ptr, ptr %3, align 8, !tbaa !26
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef %12) #19
  %13 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %13, ptr noundef %10) #19
  %14 = call i32 @getpid() #19
  %15 = sext i32 %14 to i64
  store i64 %15, ptr %6, align 8, !tbaa !19
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #19
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %6) #19
  %16 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %16, ptr noundef %10) #19
  %17 = tail call fastcc i64 @GetMagickThreadId() #22
  store i64 %17, ptr %2, align 8, !tbaa !19
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #19
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %2) #19
  %18 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %18, ptr noundef %10) #19
  %19 = call i64 @time(ptr noundef null) #19
  store i64 %19, ptr %5, align 8, !tbaa !19
  store i64 0, ptr %4, align 8, !tbaa !19
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #19
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %5) #19
  %20 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %20, ptr noundef %10) #19
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #19
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %4) #19
  %21 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %21, ptr noundef %10) #19
  store i64 0, ptr %4, align 8, !tbaa !19
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #19
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %4) #19
  %22 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %22, ptr noundef %10) #19
  %23 = load ptr, ptr @environ, align 8, !tbaa !26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr %23, align 8, !tbaa !26
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %39, %28 ], [ %26, %25 ]
  %30 = phi i64 [ %36, %28 ], [ 0, %25 ]
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #23
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef %31) #19
  %32 = load ptr, ptr @environ, align 8, !tbaa !26
  %33 = getelementptr inbounds ptr, ptr %32, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !26
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef %34) #19
  %35 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %35, ptr noundef %10) #19
  %36 = add nuw nsw i64 %30, 1
  %37 = load ptr, ptr @environ, align 8, !tbaa !26
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !26
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %28, !llvm.loop !27

41:                                               ; preds = %28, %25, %1
  %42 = call ptr @AcquireString(ptr noundef nonnull @.str.4) #19
  %43 = call ptr @StringToStringInfo(ptr noundef %42) #19
  %44 = call ptr @DestroyStringInfo(ptr noundef %43) #19
  %45 = call fastcc i32 @open_utf8(ptr noundef %42) #22
  %46 = call ptr @DestroyString(ptr noundef %42) #19
  %47 = icmp eq i32 %45, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 64) #19
  %49 = call ptr @GetStringInfoDatum(ptr noundef %10) #19
  %50 = call fastcc i64 @ReadRandom(i32 noundef %45, ptr noundef %49) #22
  %51 = call i32 @close(i32 noundef %45) #19
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef %50) #19
  %52 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %52, ptr noundef %10) #19
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i32, ptr @gather_true_random, align 4, !tbaa !6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %53
  %57 = call ptr @AcquireString(ptr noundef nonnull @.str.5) #19
  %58 = call ptr @StringToStringInfo(ptr noundef %57) #19
  %59 = call ptr @DestroyStringInfo(ptr noundef %58) #19
  %60 = call fastcc i32 @open_utf8(ptr noundef %57) #22
  %61 = call ptr @DestroyString(ptr noundef %57) #19
  %62 = icmp eq i32 %60, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = call ptr @AcquireString(ptr noundef nonnull @.str.6) #19
  %65 = call ptr @StringToStringInfo(ptr noundef %64) #19
  %66 = call ptr @DestroyStringInfo(ptr noundef %65) #19
  %67 = call fastcc i32 @open_utf8(ptr noundef %64) #22
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %75, label %69

69:                                               ; preds = %56, %63
  %70 = phi i32 [ %67, %63 ], [ %60, %56 ]
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 64) #19
  %71 = call ptr @GetStringInfoDatum(ptr noundef %10) #19
  %72 = call fastcc i64 @ReadRandom(i32 noundef %70, ptr noundef %71) #22
  %73 = call i32 @close(i32 noundef %70) #19
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef %72) #19
  %74 = load ptr, ptr %3, align 8, !tbaa !26
  call void @ConcatenateStringInfo(ptr noundef %74, ptr noundef %10) #19
  br label %75

75:                                               ; preds = %63, %69, %53
  %76 = call ptr @DestroyStringInfo(ptr noundef %10) #19
  %77 = load ptr, ptr %8, align 8, !tbaa !23
  call void @UnlockSemaphoreInfo(ptr noundef %77) #19
  %78 = load ptr, ptr %3, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %78
}

; Function Attrs: optsize
declare void @InitializeSignature(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UpdateSignature(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @FinalizeSignature(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @SetStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetSignatureDigest(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetRandomKey(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireStringInfo(i64 noundef %1) #19
  %4 = tail call ptr @GetStringInfoDatum(ptr noundef %3) #19
  tail call void @SetRandomKey(ptr noundef %0, i64 noundef %1, ptr noundef %4) #22
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #7 {
  %2 = tail call i64 @llvm.umin.i64(i64 %0, i64 8)
  ret i64 %2
}

; Function Attrs: optsize
declare ptr @DestroySignatureInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConcatenateStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetMagickThreadId() unnamed_addr #8 {
  %1 = tail call i64 @pthread_self() #20
  ret i64 %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @StringToStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @open_utf8(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #19
  ret i32 %2
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i64 @ReadRandom(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  br label %3

3:                                                ; preds = %2, %16
  %4 = phi i64 [ 0, %2 ], [ %18, %16 ]
  %5 = phi ptr [ %1, %2 ], [ %17, %16 ]
  %6 = phi i64 [ 64, %2 ], [ %20, %16 ]
  %7 = tail call i64 @read(i32 noundef %0, ptr noundef %5, i64 noundef %6) #19
  %8 = icmp slt i64 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = tail call ptr @__errno_location() #20
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %16, label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds i8, ptr %5, i64 %7
  %15 = add nsw i64 %7, %4
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %5, %9 ], [ %14, %13 ]
  %18 = phi i64 [ %4, %9 ], [ %15, %13 ]
  %19 = phi i64 [ 0, %9 ], [ %7, %13 ]
  %20 = sub i64 %6, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %3, !llvm.loop !29

22:                                               ; preds = %16, %9
  %23 = phi i64 [ -1, %9 ], [ %18, %16 ]
  ret i64 %23
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #4

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyRandomInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 288, ptr noundef nonnull @.str.7) #19
  %3 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  tail call void @LockSemaphoreInfo(ptr noundef %4) #19
  %5 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %6) #19
  store ptr %9, ptr %5, align 8, !tbaa !17
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %12) #19
  store ptr %15, ptr %11, align 8, !tbaa !16
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr %0, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @DestroySignatureInfo(ptr noundef nonnull %17) #19
  store ptr %20, ptr %0, align 8, !tbaa !10
  br label %21

21:                                               ; preds = %19, %16
  %22 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4
  %23 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %22, i32 noundef 0, i64 noundef 8) #19
  %24 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 11
  store i64 -2880220588, ptr %24, align 8, !tbaa !25
  %25 = load ptr, ptr %3, align 8, !tbaa !23
  tail call void @UnlockSemaphoreInfo(ptr noundef %25) #19
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %3) #19
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #19
  ret ptr %26
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local double @GetPseudoRandomValue(ptr nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4, i64 1
  %4 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4, i64 2
  %5 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4, i64 3
  %6 = load i64, ptr %3, align 8, !tbaa !19
  %7 = load i64, ptr %4, align 8, !tbaa !19
  %8 = load i64, ptr %5, align 8, !tbaa !19
  %9 = load i64, ptr %2, align 8, !tbaa !19
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi i64 [ -1, %10 ], [ %9, %1 ]
  %12 = phi i64 [ %11, %10 ], [ %8, %1 ]
  %13 = phi i64 [ %12, %10 ], [ %7, %1 ]
  %14 = phi i64 [ %13, %10 ], [ %6, %1 ]
  %15 = shl i64 %14, 11
  %16 = xor i64 %15, %14
  %17 = lshr i64 %11, 19
  %18 = lshr i64 %16, 8
  %19 = xor i64 %18, %17
  %20 = xor i64 %19, %16
  %21 = xor i64 %20, %11
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %10, label %23, !llvm.loop !30

23:                                               ; preds = %10
  store i64 %13, ptr %3, align 8, !tbaa !19
  store i64 %12, ptr %4, align 8, !tbaa !19
  store i64 %11, ptr %5, align 8, !tbaa !19
  store i64 %21, ptr %2, align 8, !tbaa !19
  %24 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 5
  %25 = load double, ptr %24, align 8, !tbaa !18
  %26 = uitofp i64 %21 to double
  %27 = fmul double %25, %26
  ret double %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetRandomKey(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %79, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  tail call void @LockSemaphoreInfo(ptr noundef %7) #19
  %8 = load ptr, ptr %0, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = tail call ptr @GetStringInfoDatum(ptr noundef %10) #19
  %12 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %5, %28
  %14 = phi i64 [ %1, %5 ], [ %29, %28 ]
  %15 = phi ptr [ %2, %5 ], [ %21, %28 ]
  %16 = load i64, ptr %12, align 8, !tbaa !31
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %11, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !32
  %21 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %20, ptr %15, align 1, !tbaa !32
  %22 = load i64, ptr %12, align 8, !tbaa !31
  %23 = add i64 %22, 1
  store i64 %23, ptr %12, align 8, !tbaa !31
  %24 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #19
  %25 = zext i32 %24 to i64
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i64 0, ptr %12, align 8, !tbaa !31
  br label %28

28:                                               ; preds = %18, %27
  %29 = add i64 %14, -1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %13, !llvm.loop !33

31:                                               ; preds = %28, %13
  %32 = phi ptr [ %21, %28 ], [ %15, %13 ]
  %33 = phi i64 [ 0, %28 ], [ %14, %13 ]
  %34 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #19
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %58, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 1
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ %33, %37 ], [ %54, %39 ]
  %41 = phi ptr [ %32, %37 ], [ %51, %39 ]
  tail call void @InitializeSignature(ptr noundef %8) #19
  %42 = load ptr, ptr %38, align 8, !tbaa !16
  tail call void @UpdateSignature(ptr noundef %8, ptr noundef %42) #19
  tail call void @FinalizeSignature(ptr noundef %8) #19
  %43 = load ptr, ptr %38, align 8, !tbaa !16
  tail call fastcc void @IncrementRandomNonce(ptr noundef %43) #22
  %44 = tail call ptr @GetSignatureDigest(ptr noundef %8) #19
  %45 = tail call ptr @GetStringInfoDatum(ptr noundef %44) #19
  %46 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #19
  %47 = zext i32 %46 to i64
  %48 = tail call ptr @CopyMagickMemory(ptr noundef %41, ptr noundef %45, i64 noundef %47) #19
  %49 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #19
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %41, i64 %50
  %52 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #19
  %53 = zext i32 %52 to i64
  %54 = sub i64 %40, %53
  %55 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #19
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %39, !llvm.loop !34

58:                                               ; preds = %39, %31
  %59 = phi ptr [ %32, %31 ], [ %51, %39 ]
  %60 = phi i64 [ %33, %31 ], [ %54, %39 ]
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %58
  tail call void @InitializeSignature(ptr noundef %8) #19
  %63 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !16
  tail call void @UpdateSignature(ptr noundef %8, ptr noundef %64) #19
  tail call void @FinalizeSignature(ptr noundef %8) #19
  %65 = load ptr, ptr %63, align 8, !tbaa !16
  tail call fastcc void @IncrementRandomNonce(ptr noundef %65) #22
  %66 = load ptr, ptr %9, align 8, !tbaa !17
  %67 = tail call ptr @GetSignatureDigest(ptr noundef %8) #19
  tail call void @SetStringInfo(ptr noundef %66, ptr noundef %67) #19
  store i64 %60, ptr %12, align 8, !tbaa !31
  %68 = load ptr, ptr %9, align 8, !tbaa !17
  %69 = tail call ptr @GetStringInfoDatum(ptr noundef %68) #19
  br label %70

70:                                               ; preds = %62, %70
  %71 = phi i64 [ %60, %62 ], [ %72, %70 ]
  %72 = add i64 %71, -1
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !32
  %75 = getelementptr inbounds i8, ptr %59, i64 %72
  store i8 %74, ptr %75, align 1, !tbaa !32
  %76 = icmp eq i64 %72, 0
  br i1 %76, label %77, label %70, !llvm.loop !35

77:                                               ; preds = %70, %58
  %78 = load ptr, ptr %6, align 8, !tbaa !23
  tail call void @UnlockSemaphoreInfo(ptr noundef %78) #19
  br label %79

79:                                               ; preds = %3, %77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetRandomSecretKey(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 6
  %3 = load i64, ptr %2, align 8, !tbaa !20
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @GetRandomValue(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  br label %3

3:                                                ; preds = %3, %1
  call void @SetRandomKey(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %2) #22
  %4 = load i64, ptr %2, align 8, !tbaa !19
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %3, label %6, !llvm.loop !36

6:                                                ; preds = %3
  %7 = uitofp i64 %4 to double
  %8 = fmul double %7, 0x3BF0000000000000
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret double %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RandomComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @random_semaphore, align 8, !tbaa !26
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #19
  store ptr %4, ptr @random_semaphore, align 8, !tbaa !26
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RandomComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @random_semaphore, align 8, !tbaa !26
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @random_semaphore) #19
  br label %4

4:                                                ; preds = %3, %0
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @random_semaphore) #19
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @IncrementRandomNonce(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call ptr @GetStringInfoDatum(ptr noundef %0) #19
  %4 = tail call i64 @GetStringInfoLength(ptr noundef %0) #19
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi i64 [ %4, %1 ], [ %7, %9 ]
  %7 = add i64 %6, -1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %3, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !32
  %12 = add i8 %11, 1
  store i8 %12, ptr %10, align 1, !tbaa !32
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !37

14:                                               ; preds = %9
  ret void

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  call void @GetExceptionInfo(ptr noundef nonnull %2) #19
  %16 = tail call ptr @__errno_location() #20
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = call ptr @GetExceptionMessage(i32 noundef %17) #19
  %19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 827, i32 noundef 775, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef %18) #19
  %20 = call ptr @DestroyString(ptr noundef %18) #19
  call void @CatchException(ptr noundef nonnull %2) #19
  %21 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 76) #21
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @SeedPseudoRandomGenerator(i64 noundef %0) local_unnamed_addr #14 {
  tail call void @SetRandomSecretKey(i64 noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SetRandomSecretKey(i64 noundef %0) local_unnamed_addr #15 {
  store i64 %0, ptr @secret_key, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SetRandomTrueRandom(i32 noundef %0) local_unnamed_addr #15 {
  store i32 %0, ptr @gather_true_random, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define hidden nonnull ptr @GetRandomInfoSeed(ptr noundef readnone %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define hidden double @GetRandomInfoNormalize(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 5
  %3 = load double, ptr %2, align 8, !tbaa !18
  ret double %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(none) }
attributes #21 = { noreturn nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_RandomInfo", !12, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !8, i64 32, !14, i64 64, !13, i64 72, !15, i64 80, !15, i64 82, !12, i64 88, !13, i64 96, !13, i64 104}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!11, !12, i64 8}
!17 = !{!11, !12, i64 16}
!18 = !{!11, !14, i64 64}
!19 = !{!13, !13, i64 0}
!20 = !{!11, !13, i64 72}
!21 = !{!11, !15, i64 80}
!22 = !{!11, !15, i64 82}
!23 = !{!11, !12, i64 88}
!24 = !{!11, !13, i64 96}
!25 = !{!11, !13, i64 104}
!26 = !{!12, !12, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = !{!11, !13, i64 24}
!32 = !{!8, !8, i64 0}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
