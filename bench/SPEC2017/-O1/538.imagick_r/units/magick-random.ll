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
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@random_semaphore = internal global ptr null, align 8
@gather_true_random = internal unnamed_addr global i32 0, align 4
@environ = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/dev/srandom\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SequenceWrapError\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireRandomInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(112) ptr @AcquireMagickMemory(i64 noundef 112) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #16
  call void @GetExceptionInfo(ptr noundef nonnull %1) #16
  %7 = tail call ptr @__errno_location() #17
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #16
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 188, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #16
  %11 = call ptr @DestroyString(ptr noundef %9) #16
  call void @CatchException(ptr noundef nonnull %1) #16
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #16
  call void @MagickCoreTerminus() #16
  call void @_exit(i32 noundef 1) #18
  unreachable

13:                                               ; preds = %0
  %14 = tail call ptr @ResetMagickMemory(ptr noundef %4, i32 noundef 0, i64 noundef 112) #16
  %15 = tail call ptr @AcquireSignatureInfo() #16
  store ptr %15, ptr %4, align 8, !tbaa !38
  %16 = tail call i32 @GetSignatureDigestsize(ptr noundef %15) #16
  %17 = shl i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @AcquireStringInfo(i64 noundef %18) #16
  %20 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !44
  tail call void @ResetStringInfo(ptr noundef %19) #16
  %21 = load ptr, ptr %4, align 8, !tbaa !38
  %22 = tail call i32 @GetSignatureDigestsize(ptr noundef %21) #16
  %23 = zext i32 %22 to i64
  %24 = tail call ptr @AcquireStringInfo(i64 noundef %23) #16
  %25 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !45
  tail call void @ResetStringInfo(ptr noundef %24) #16
  %26 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 5
  store double 0x3BF0000000000000, ptr %26, align 8, !tbaa !46
  %27 = load i64, ptr @secret_key, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 6
  store i64 %27, ptr %28, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 7
  store i16 1, ptr %29, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 8
  store i16 0, ptr %30, align 2, !tbaa !50
  %31 = tail call ptr @AllocateSemaphoreInfo() #16
  %32 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 9
  store ptr %31, ptr %32, align 8, !tbaa !51
  %33 = tail call i64 @time(ptr noundef null) #16
  %34 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 10
  store i64 %33, ptr %34, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 11
  store i64 2880220587, ptr %35, align 8, !tbaa !53
  %36 = tail call fastcc ptr @GenerateEntropicChaos(ptr noundef nonnull %4)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #16
  call void @GetExceptionInfo(ptr noundef nonnull %2) #16
  %39 = tail call ptr @__errno_location() #17
  %40 = load i32, ptr %39, align 4, !tbaa !34
  %41 = call ptr @GetExceptionMessage(i32 noundef %40) #16
  %42 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 209, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %41) #16
  %43 = call ptr @DestroyString(ptr noundef %41) #16
  call void @CatchException(ptr noundef nonnull %2) #16
  %44 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #16
  call void @MagickCoreTerminus() #16
  call void @_exit(i32 noundef 1) #18
  unreachable

45:                                               ; preds = %13
  %46 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @InitializeSignature(ptr noundef %46) #16
  %47 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @UpdateSignature(ptr noundef %47, ptr noundef nonnull %36) #16
  %48 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @FinalizeSignature(ptr noundef %48) #16
  %49 = load ptr, ptr %4, align 8, !tbaa !38
  %50 = tail call i32 @GetSignatureDigestsize(ptr noundef %49) #16
  %51 = add i32 %50, 1
  %52 = lshr i32 %51, 1
  %53 = zext nneg i32 %52 to i64
  tail call void @SetStringInfoLength(ptr noundef nonnull %36, i64 noundef %53) #16
  %54 = load ptr, ptr %4, align 8, !tbaa !38
  %55 = tail call ptr @GetSignatureDigest(ptr noundef %54) #16
  tail call void @SetStringInfo(ptr noundef nonnull %36, ptr noundef %55) #16
  %56 = load ptr, ptr %20, align 8, !tbaa !44
  tail call void @SetStringInfo(ptr noundef %56, ptr noundef nonnull %36) #16
  %57 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %36) #16
  %58 = tail call fastcc ptr @GenerateEntropicChaos(ptr noundef nonnull %4)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  call void @GetExceptionInfo(ptr noundef nonnull %3) #16
  %61 = tail call ptr @__errno_location() #17
  %62 = load i32, ptr %61, align 4, !tbaa !34
  %63 = call ptr @GetExceptionMessage(i32 noundef %62) #16
  %64 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 223, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %63) #16
  %65 = call ptr @DestroyString(ptr noundef %63) #16
  call void @CatchException(ptr noundef nonnull %3) #16
  %66 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #16
  call void @MagickCoreTerminus() #16
  call void @_exit(i32 noundef 1) #18
  unreachable

67:                                               ; preds = %45
  %68 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @UpdateSignature(ptr noundef %68, ptr noundef nonnull %58) #16
  %69 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @FinalizeSignature(ptr noundef %69) #16
  %70 = load ptr, ptr %25, align 8, !tbaa !45
  %71 = load ptr, ptr %4, align 8, !tbaa !38
  %72 = tail call ptr @GetSignatureDigest(ptr noundef %71) #16
  tail call void @SetStringInfo(ptr noundef %70, ptr noundef %72) #16
  %73 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %58) #16
  %74 = load i64, ptr %28, align 8, !tbaa !48
  %75 = icmp eq i64 %74, -1
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = tail call ptr @AcquireStringInfo(i64 noundef 8) #16
  %78 = tail call ptr @GetStringInfoDatum(ptr noundef %77) #16
  tail call void @SetRandomKey(ptr noundef nonnull %4, i64 noundef 8, ptr noundef %78)
  %79 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4
  %80 = tail call ptr @GetStringInfoDatum(ptr noundef %77) #16
  %81 = tail call i64 @GetStringInfoLength(ptr noundef %77) #16
  %82 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %79, ptr noundef %80, i64 noundef %81) #16
  %83 = tail call ptr @DestroyStringInfo(ptr noundef %77) #16
  br label %96

84:                                               ; preds = %67
  %85 = tail call ptr @AcquireSignatureInfo() #16
  %86 = tail call ptr @AcquireStringInfo(i64 noundef 8) #16
  tail call void @SetStringInfoDatum(ptr noundef %86, ptr noundef nonnull %28) #16
  tail call void @UpdateSignature(ptr noundef %85, ptr noundef %86) #16
  %87 = tail call ptr @DestroyStringInfo(ptr noundef %86) #16
  tail call void @FinalizeSignature(ptr noundef %85) #16
  %88 = tail call ptr @GetSignatureDigest(ptr noundef %85) #16
  %89 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4
  %90 = tail call ptr @GetStringInfoDatum(ptr noundef %88) #16
  %91 = tail call i32 @GetSignatureDigestsize(ptr noundef %85) #16
  %92 = tail call i32 @llvm.umin.i32(i32 %91, i32 8)
  %93 = zext nneg i32 %92 to i64
  %94 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %89, ptr noundef %90, i64 noundef %93) #16
  %95 = tail call ptr @DestroySignatureInfo(ptr noundef %85) #16
  br label %96

96:                                               ; preds = %84, %76
  %97 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4, i64 1
  store i64 1353184337, ptr %97, align 8, !tbaa !47
  %98 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4, i64 2
  store i64 1399144830, ptr %98, align 8, !tbaa !47
  %99 = getelementptr inbounds %struct._RandomInfo, ptr %4, i64 0, i32 4, i64 3
  store i64 3282310938, ptr %99, align 8, !tbaa !47
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

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

declare ptr @AcquireSignatureInfo() local_unnamed_addr #3

declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #3

declare i32 @GetSignatureDigestsize(ptr noundef) local_unnamed_addr #3

declare void @ResetStringInfo(ptr noundef) local_unnamed_addr #3

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GenerateEntropicChaos(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = tail call ptr @AcquireStringInfo(i64 noundef 0) #16
  store ptr %7, ptr %3, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void @LockSemaphoreInfo(ptr noundef %9) #16
  %10 = tail call ptr @AcquireStringInfo(i64 noundef 8) #16
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %3) #16
  %11 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %11, ptr noundef %10) #16
  %12 = load ptr, ptr %3, align 8, !tbaa !54
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef %12) #16
  %13 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %13, ptr noundef %10) #16
  %14 = call i32 @getpid() #16
  %15 = sext i32 %14 to i64
  store i64 %15, ptr %6, align 8, !tbaa !47
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #16
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %6) #16
  %16 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %16, ptr noundef %10) #16
  %17 = call i32 @getpid() #16
  store i32 %17, ptr %2, align 4, !tbaa !34
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 4) #16
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %2) #16
  %18 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %18, ptr noundef %10) #16
  %19 = call i64 @time(ptr noundef null) #16
  store i64 %19, ptr %5, align 8, !tbaa !47
  store i64 0, ptr %4, align 8, !tbaa !47
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #16
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %5) #16
  %20 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %20, ptr noundef %10) #16
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #16
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %4) #16
  %21 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %21, ptr noundef %10) #16
  store i64 0, ptr %4, align 8, !tbaa !47
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 8) #16
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef nonnull %4) #16
  %22 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %22, ptr noundef %10) #16
  %23 = load ptr, ptr @environ, align 8, !tbaa !54
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr @environ, align 8, !tbaa !54
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %40, %29 ], [ %27, %25 ]
  %31 = phi i64 [ %37, %29 ], [ 0, %25 ]
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #19
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef %32) #16
  %33 = load ptr, ptr @environ, align 8, !tbaa !54
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  call void @SetStringInfoDatum(ptr noundef %10, ptr noundef %35) #16
  %36 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %36, ptr noundef %10) #16
  %37 = add nuw nsw i64 %31, 1
  %38 = load ptr, ptr @environ, align 8, !tbaa !54
  %39 = getelementptr inbounds ptr, ptr %38, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %29, !llvm.loop !55

42:                                               ; preds = %29, %25, %1
  %43 = call ptr @AcquireString(ptr noundef nonnull @.str.5) #16
  %44 = call ptr @StringToStringInfo(ptr noundef %43) #16
  %45 = call ptr @DestroyStringInfo(ptr noundef %44) #16
  %46 = call i32 (ptr, i32, ...) @open(ptr noundef %43, i32 noundef 0, i32 noundef 0) #16
  %47 = call ptr @DestroyString(ptr noundef %43) #16
  %48 = icmp eq i32 %46, -1
  br i1 %48, label %74, label %49

49:                                               ; preds = %42
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 64) #16
  %50 = call ptr @GetStringInfoDatum(ptr noundef %10) #16
  br label %51

51:                                               ; preds = %64, %49
  %52 = phi i64 [ 0, %49 ], [ %66, %64 ]
  %53 = phi ptr [ %50, %49 ], [ %65, %64 ]
  %54 = phi i64 [ 64, %49 ], [ %68, %64 ]
  %55 = call i64 @read(i32 noundef %46, ptr noundef %53, i64 noundef %54) #16
  %56 = icmp slt i64 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = tail call ptr @__errno_location() #17
  %59 = load i32, ptr %58, align 4, !tbaa !34
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %64, label %70

61:                                               ; preds = %51
  %62 = getelementptr inbounds i8, ptr %53, i64 %55
  %63 = add nsw i64 %55, %52
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi ptr [ %53, %57 ], [ %62, %61 ]
  %66 = phi i64 [ %52, %57 ], [ %63, %61 ]
  %67 = phi i64 [ 0, %57 ], [ %55, %61 ]
  %68 = sub i64 %54, %67
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %51, !llvm.loop !58

70:                                               ; preds = %57, %64
  %71 = phi i64 [ -1, %57 ], [ %66, %64 ]
  %72 = call i32 @close(i32 noundef %46) #16
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef %71) #16
  %73 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %73, ptr noundef %10) #16
  br label %74

74:                                               ; preds = %70, %42
  %75 = load i32, ptr @gather_true_random, align 4, !tbaa !34
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %117, label %77

77:                                               ; preds = %74
  %78 = call ptr @AcquireString(ptr noundef nonnull @.str.6) #16
  %79 = call ptr @StringToStringInfo(ptr noundef %78) #16
  %80 = call ptr @DestroyStringInfo(ptr noundef %79) #16
  %81 = call i32 (ptr, i32, ...) @open(ptr noundef %78, i32 noundef 0, i32 noundef 0) #16
  %82 = call ptr @DestroyString(ptr noundef %78) #16
  %83 = icmp eq i32 %81, -1
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = call ptr @AcquireString(ptr noundef nonnull @.str.7) #16
  %86 = call ptr @StringToStringInfo(ptr noundef %85) #16
  %87 = call ptr @DestroyStringInfo(ptr noundef %86) #16
  %88 = call i32 (ptr, i32, ...) @open(ptr noundef %85, i32 noundef 0, i32 noundef 0) #16
  br label %89

89:                                               ; preds = %84, %77
  %90 = phi i32 [ %88, %84 ], [ %81, %77 ]
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %117, label %92

92:                                               ; preds = %89
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef 64) #16
  %93 = call ptr @GetStringInfoDatum(ptr noundef %10) #16
  br label %94

94:                                               ; preds = %107, %92
  %95 = phi i64 [ 0, %92 ], [ %109, %107 ]
  %96 = phi ptr [ %93, %92 ], [ %108, %107 ]
  %97 = phi i64 [ 64, %92 ], [ %111, %107 ]
  %98 = call i64 @read(i32 noundef %90, ptr noundef %96, i64 noundef %97) #16
  %99 = icmp slt i64 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = tail call ptr @__errno_location() #17
  %102 = load i32, ptr %101, align 4, !tbaa !34
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %107, label %113

104:                                              ; preds = %94
  %105 = getelementptr inbounds i8, ptr %96, i64 %98
  %106 = add nsw i64 %98, %95
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi ptr [ %96, %100 ], [ %105, %104 ]
  %109 = phi i64 [ %95, %100 ], [ %106, %104 ]
  %110 = phi i64 [ 0, %100 ], [ %98, %104 ]
  %111 = sub i64 %97, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %94, !llvm.loop !58

113:                                              ; preds = %100, %107
  %114 = phi i64 [ -1, %100 ], [ %109, %107 ]
  %115 = call i32 @close(i32 noundef %90) #16
  call void @SetStringInfoLength(ptr noundef %10, i64 noundef %114) #16
  %116 = load ptr, ptr %3, align 8, !tbaa !54
  call void @ConcatenateStringInfo(ptr noundef %116, ptr noundef %10) #16
  br label %117

117:                                              ; preds = %89, %113, %74
  %118 = call ptr @DestroyStringInfo(ptr noundef %10) #16
  %119 = load ptr, ptr %8, align 8, !tbaa !51
  call void @UnlockSemaphoreInfo(ptr noundef %119) #16
  %120 = load ptr, ptr %3, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret ptr %120
}

declare void @InitializeSignature(ptr noundef) local_unnamed_addr #3

declare void @UpdateSignature(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FinalizeSignature(ptr noundef) local_unnamed_addr #3

declare void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @SetStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetSignatureDigest(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GetRandomKey(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireStringInfo(i64 noundef %1) #16
  %4 = tail call ptr @GetStringInfoDatum(ptr noundef %3) #16
  tail call void @SetRandomKey(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  ret ptr %3
}

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

declare void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroySignatureInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyRandomInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 288, ptr noundef nonnull @.str.4) #16
  %3 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  tail call void @LockSemaphoreInfo(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %6) #16
  store ptr %9, ptr %5, align 8, !tbaa !45
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %12) #16
  store ptr %15, ptr %11, align 8, !tbaa !44
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr %0, align 8, !tbaa !38
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @DestroySignatureInfo(ptr noundef nonnull %17) #16
  store ptr %20, ptr %0, align 8, !tbaa !38
  br label %21

21:                                               ; preds = %19, %16
  %22 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4
  %23 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %22, i32 noundef 0, i64 noundef 8) #16
  %24 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 11
  store i64 -2880220588, ptr %24, align 8, !tbaa !53
  %25 = load ptr, ptr %3, align 8, !tbaa !51
  tail call void @UnlockSemaphoreInfo(ptr noundef %25) #16
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %3) #16
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #16
  ret ptr %26
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local double @GetPseudoRandomValue(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4, i64 1
  %4 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4, i64 2
  %5 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4, i64 3
  %6 = load i64, ptr %3, align 8, !tbaa !47
  %7 = load i64, ptr %4, align 8, !tbaa !47
  %8 = load i64, ptr %5, align 8, !tbaa !47
  %9 = load i64, ptr %2, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi i64 [ %21, %10 ], [ %9, %1 ]
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
  br i1 %22, label %10, label %23, !llvm.loop !59

23:                                               ; preds = %10
  store i64 %13, ptr %3, align 8, !tbaa !47
  store i64 %12, ptr %4, align 8, !tbaa !47
  store i64 %11, ptr %5, align 8, !tbaa !47
  store i64 %21, ptr %2, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 5
  %25 = load double, ptr %24, align 8, !tbaa !46
  %26 = uitofp i64 %21 to double
  %27 = fmul double %25, %26
  ret double %27
}

; Function Attrs: nounwind uwtable
define dso_local void @SetRandomKey(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %80, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  tail call void @LockSemaphoreInfo(ptr noundef %7) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = tail call ptr @GetStringInfoDatum(ptr noundef %10) #16
  %12 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %5, %28
  %14 = phi i64 [ %1, %5 ], [ %29, %28 ]
  %15 = phi ptr [ %2, %5 ], [ %21, %28 ]
  %16 = load i64, ptr %12, align 8, !tbaa !60
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %11, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !61
  %21 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %20, ptr %15, align 1, !tbaa !61
  %22 = load i64, ptr %12, align 8, !tbaa !60
  %23 = add i64 %22, 1
  store i64 %23, ptr %12, align 8, !tbaa !60
  %24 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #16
  %25 = zext i32 %24 to i64
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i64 0, ptr %12, align 8, !tbaa !60
  br label %28

28:                                               ; preds = %18, %27
  %29 = add i64 %14, -1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %13, !llvm.loop !62

31:                                               ; preds = %28, %13
  %32 = phi ptr [ %21, %28 ], [ %15, %13 ]
  %33 = phi i64 [ 0, %28 ], [ %14, %13 ]
  %34 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #16
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %58, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 1
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ %33, %37 ], [ %54, %39 ]
  %41 = phi ptr [ %32, %37 ], [ %51, %39 ]
  tail call void @InitializeSignature(ptr noundef %8) #16
  %42 = load ptr, ptr %38, align 8, !tbaa !44
  tail call void @UpdateSignature(ptr noundef %8, ptr noundef %42) #16
  tail call void @FinalizeSignature(ptr noundef %8) #16
  %43 = load ptr, ptr %38, align 8, !tbaa !44
  tail call fastcc void @IncrementRandomNonce(ptr noundef %43)
  %44 = tail call ptr @GetSignatureDigest(ptr noundef %8) #16
  %45 = tail call ptr @GetStringInfoDatum(ptr noundef %44) #16
  %46 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #16
  %47 = zext i32 %46 to i64
  %48 = tail call ptr @CopyMagickMemory(ptr noundef %41, ptr noundef %45, i64 noundef %47) #16
  %49 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #16
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %41, i64 %50
  %52 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #16
  %53 = zext i32 %52 to i64
  %54 = sub i64 %40, %53
  %55 = tail call i32 @GetSignatureDigestsize(ptr noundef %8) #16
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %39, !llvm.loop !63

58:                                               ; preds = %39, %31
  %59 = phi ptr [ %32, %31 ], [ %51, %39 ]
  %60 = phi i64 [ %33, %31 ], [ %54, %39 ]
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  tail call void @InitializeSignature(ptr noundef %8) #16
  %63 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  tail call void @UpdateSignature(ptr noundef %8, ptr noundef %64) #16
  tail call void @FinalizeSignature(ptr noundef %8) #16
  %65 = load ptr, ptr %63, align 8, !tbaa !44
  tail call fastcc void @IncrementRandomNonce(ptr noundef %65)
  %66 = load ptr, ptr %9, align 8, !tbaa !45
  %67 = tail call ptr @GetSignatureDigest(ptr noundef %8) #16
  tail call void @SetStringInfo(ptr noundef %66, ptr noundef %67) #16
  %68 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 3
  store i64 %60, ptr %68, align 8, !tbaa !60
  %69 = load ptr, ptr %9, align 8, !tbaa !45
  %70 = tail call ptr @GetStringInfoDatum(ptr noundef %69) #16
  br label %71

71:                                               ; preds = %62, %71
  %72 = phi i64 [ %60, %62 ], [ %73, %71 ]
  %73 = add i64 %72, -1
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !61
  %76 = getelementptr inbounds i8, ptr %59, i64 %73
  store i8 %75, ptr %76, align 1, !tbaa !61
  %77 = icmp eq i64 %73, 0
  br i1 %77, label %78, label %71, !llvm.loop !64

78:                                               ; preds = %71, %58
  %79 = load ptr, ptr %6, align 8, !tbaa !51
  tail call void @UnlockSemaphoreInfo(ptr noundef %79) #16
  br label %80

80:                                               ; preds = %3, %78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @GetRandomSecretKey(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 6
  %3 = load i64, ptr %2, align 8, !tbaa !48
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local double @GetRandomValue(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  br label %3

3:                                                ; preds = %3, %1
  call void @SetRandomKey(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %2)
  %4 = load i64, ptr %2, align 8, !tbaa !47
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %3, label %6, !llvm.loop !65

6:                                                ; preds = %3
  %7 = uitofp i64 %4 to double
  %8 = fmul double %7, 0x3BF0000000000000
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret double %8
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RandomComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @random_semaphore, align 8, !tbaa !54
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #16
  store ptr %4, ptr @random_semaphore, align 8, !tbaa !54
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @RandomComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @random_semaphore, align 8, !tbaa !54
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @random_semaphore) #16
  br label %4

4:                                                ; preds = %3, %0
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @random_semaphore) #16
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @IncrementRandomNonce(ptr noundef %0) unnamed_addr #9 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call ptr @GetStringInfoDatum(ptr noundef %0) #16
  %4 = tail call i64 @GetStringInfoLength(ptr noundef %0) #16
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi i64 [ %4, %1 ], [ %7, %9 ]
  %7 = add i64 %6, -1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %3, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !61
  %12 = add i8 %11, 1
  store i8 %12, ptr %10, align 1, !tbaa !61
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !66

14:                                               ; preds = %9
  ret void

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #16
  call void @GetExceptionInfo(ptr noundef nonnull %2) #16
  %16 = tail call ptr @__errno_location() #17
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = call ptr @GetExceptionMessage(i32 noundef %17) #16
  %19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 827, i32 noundef 775, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef %18) #16
  %20 = call ptr @DestroyString(ptr noundef %18) #16
  call void @CatchException(ptr noundef nonnull %2) #16
  %21 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #16
  call void @MagickCoreTerminus() #16
  call void @_exit(i32 noundef 76) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SeedPseudoRandomGenerator(i64 noundef %0) local_unnamed_addr #10 {
  store i64 %0, ptr @secret_key, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SetRandomSecretKey(i64 noundef %0) local_unnamed_addr #10 {
  store i64 %0, ptr @secret_key, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SetRandomTrueRandom(i32 noundef %0) local_unnamed_addr #10 {
  store i32 %0, ptr @gather_true_random, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @GetRandomInfoSeed(ptr noundef readnone %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden double @GetRandomInfoNormalize(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._RandomInfo, ptr %0, i64 0, i32 5
  %3 = load double, ptr %2, align 8, !tbaa !46
  ret double %3
}

declare void @ConcatenateStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare ptr @StringToStringInfo(ptr noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !40, i64 0}
!39 = !{!"_RandomInfo", !40, i64 0, !40, i64 8, !40, i64 16, !41, i64 24, !36, i64 32, !42, i64 64, !41, i64 72, !43, i64 80, !43, i64 82, !40, i64 88, !41, i64 96, !41, i64 104}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!"double", !36, i64 0}
!43 = !{!"short", !36, i64 0}
!44 = !{!39, !40, i64 8}
!45 = !{!39, !40, i64 16}
!46 = !{!39, !42, i64 64}
!47 = !{!41, !41, i64 0}
!48 = !{!39, !41, i64 72}
!49 = !{!39, !43, i64 80}
!50 = !{!39, !43, i64 82}
!51 = !{!39, !40, i64 88}
!52 = !{!39, !41, i64 96}
!53 = !{!39, !41, i64 104}
!54 = !{!40, !40, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = distinct !{!59, !56, !57}
!60 = !{!39, !41, i64 24}
!61 = !{!36, !36, i64 0}
!62 = distinct !{!62, !56, !57}
!63 = distinct !{!63, !56, !57}
!64 = distinct !{!64, !56, !57}
!65 = distinct !{!65, !56, !57}
!66 = distinct !{!66, !56, !57}
