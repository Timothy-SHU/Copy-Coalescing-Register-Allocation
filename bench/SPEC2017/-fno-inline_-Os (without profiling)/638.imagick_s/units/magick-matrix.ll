; ModuleID = 'magick/matrix.c'
source_filename = "magick/matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct._MatrixInfo = type { i32, i64, i64, i64, i64, i32, i32, [4096 x i8], i32, ptr, ptr, i64 }
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

@.str = private unnamed_addr constant [19 x i8] c"MAGICK_SYNCHRONIZE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"magick/matrix.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"CacheResourcesExhausted\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"matrix cache\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"UnableToExtendMatrixCache\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireMatrixInfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call dereferenceable_or_null(4176) ptr @AcquireMagickMemory(i64 noundef 4176) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 4176) #21
  %9 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 11
  store i64 2880220587, ptr %9, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 1
  store i64 %0, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 2
  store i64 %1, ptr %11, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 3
  store i64 %2, ptr %12, align 8, !tbaa !16
  %13 = tail call ptr @AllocateSemaphoreInfo() #21
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 10
  store ptr %13, ptr %14, align 8, !tbaa !17
  %15 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = tail call i32 @IsStringTrue(ptr noundef nonnull %15) #21
  %19 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 6
  store i32 %18, ptr %19, align 4, !tbaa !18
  %20 = tail call ptr @DestroyString(ptr noundef nonnull %15) #21
  br label %21

21:                                               ; preds = %17, %7
  %22 = mul i64 %1, %0
  %23 = mul i64 %22, %2
  %24 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 4
  store i64 %23, ptr %24, align 8, !tbaa !19
  %25 = load i64, ptr %10, align 8, !tbaa !14
  %26 = udiv i64 %23, %1
  %27 = udiv i64 %26, %2
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 241, i32 noundef 445, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #21
  %31 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %5) #22
  br label %87

32:                                               ; preds = %21
  store i32 1, ptr %5, align 8, !tbaa !20
  %33 = tail call i32 @AcquireMagickResource(i32 noundef 1, i64 noundef %23) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %24, align 8, !tbaa !19
  %37 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %36) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 5
  store i32 0, ptr %40, align 8, !tbaa !21
  %41 = load i64, ptr %24, align 8, !tbaa !19
  %42 = tail call ptr @AcquireMagickMemory(i64 noundef %41) #20
  %43 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 9
  store ptr %42, ptr %43, align 8, !tbaa !22
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  store i32 1, ptr %40, align 8, !tbaa !21
  %46 = load i64, ptr %24, align 8, !tbaa !19
  %47 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %46) #21
  store ptr %47, ptr %43, align 8, !tbaa !22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, ptr %24, align 8, !tbaa !19
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %50) #21
  br label %51

51:                                               ; preds = %39, %35, %49, %45, %32
  %52 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 8
  store i32 -1, ptr %52, align 8, !tbaa !23
  %53 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load i64, ptr %24, align 8, !tbaa !19
  %58 = tail call i32 @AcquireMagickResource(i32 noundef 2, i64 noundef %57) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 272, i32 noundef 445, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #21
  %62 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %5) #22
  br label %87

63:                                               ; preds = %56
  store i32 3, ptr %5, align 8, !tbaa !20
  %64 = load i64, ptr %24, align 8, !tbaa !19
  %65 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %64) #21
  %66 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 7
  %67 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %66) #21
  store i32 %67, ptr %52, align 8, !tbaa !23
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %5) #22
  br label %87

71:                                               ; preds = %63
  %72 = load i64, ptr %24, align 8, !tbaa !19
  %73 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %72) #21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load i64, ptr %24, align 8, !tbaa !19
  %77 = tail call fastcc i32 @SetMatrixExtent(ptr noundef nonnull %5, i64 noundef %76) #22, !range !24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %52, align 8, !tbaa !23
  %81 = load i64, ptr %24, align 8, !tbaa !19
  %82 = tail call ptr @MapBlob(i32 noundef %80, i32 noundef 2, i64 noundef 0, i64 noundef %81) #21
  store ptr %82, ptr %53, align 8, !tbaa !22
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 2, ptr %5, align 8, !tbaa !20
  br label %87

85:                                               ; preds = %79
  %86 = load i64, ptr %24, align 8, !tbaa !19
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %86) #21
  br label %87

87:                                               ; preds = %51, %75, %85, %84, %71, %4, %69, %60, %29
  %88 = phi ptr [ %31, %29 ], [ %62, %60 ], [ %70, %69 ], [ null, %4 ], [ %5, %71 ], [ %5, %84 ], [ %5, %85 ], [ %5, %75 ], [ %5, %51 ]
  ret ptr %88
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsStringTrue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyMatrixInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  tail call void @LockSemaphoreInfo(ptr noundef %3) #21
  %4 = load i32, ptr %0, align 8, !tbaa !20
  switch i32 %4, label %39 [
    i32 1, label %5
    i32 2, label %19
    i32 3, label %26
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !21
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  br i1 %8, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call ptr @RelinquishMagickMemory(ptr noundef %10) #21
  br label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !19
  %16 = tail call i32 @UnmapBlob(ptr noundef %10, i64 noundef %15) #21
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi ptr [ null, %13 ], [ %12, %11 ]
  store ptr %18, ptr %9, align 8, !tbaa !22
  br label %35

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !19
  %24 = tail call i32 @UnmapBlob(ptr noundef %21, i64 noundef %23) #21
  store ptr null, ptr %20, align 8, !tbaa !22
  %25 = load i64, ptr %22, align 8, !tbaa !19
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %25) #21
  br label %26

26:                                               ; preds = %1, %19
  %27 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 8, !tbaa !23
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @close(i32 noundef %28) #21
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 7
  %34 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %33) #21
  br label %35

35:                                               ; preds = %17, %32
  %36 = phi i32 [ 2, %32 ], [ 5, %17 ]
  %37 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !19
  tail call void @RelinquishMagickResource(i32 noundef %36, i64 noundef %38) #21
  br label %39

39:                                               ; preds = %35, %1
  %40 = load ptr, ptr %2, align 8, !tbaa !17
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #21
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #21
  %41 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #21
  ret ptr %41
}

; Function Attrs: optsize
declare i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetMatrixExtent(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = tail call i64 @lseek(i32 noundef %4, i64 noundef 0, i32 noundef 2) #21
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = add nsw i64 %1, -1
  %11 = tail call fastcc i64 @WriteMatrixElements(ptr noundef nonnull %0, i64 noundef %10, i64 noundef 1, ptr noundef nonnull @.str.2) #22
  %12 = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @MatrixSignalHandler) #21
  %13 = icmp eq i64 %11, 1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2, %9
  %16 = phi i32 [ %14, %9 ], [ 0, %2 ], [ 1, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @WriteMatrixElements(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  tail call void @LockSemaphoreInfo(ptr noundef %6) #21
  %7 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = tail call i64 @lseek(i32 noundef %8, i64 noundef %1, i32 noundef 0) #21
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = icmp sgt i64 %2, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %11, %24
  %14 = phi i64 [ %26, %24 ], [ 0, %11 ]
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  %16 = sub nsw i64 %2, %14
  %17 = tail call fastcc i64 @MagickMin(i64 noundef %16) #22
  %18 = tail call i64 @write(i32 noundef %8, ptr noundef %15, i64 noundef %17) #21
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = tail call ptr @__errno_location() #23
  %22 = load i32, ptr %21, align 4, !tbaa !25
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %13, %20
  %25 = phi i64 [ 0, %20 ], [ %18, %13 ]
  %26 = add nuw nsw i64 %25, %14
  %27 = icmp slt i64 %26, %2
  br i1 %27, label %13, label %28, !llvm.loop !26

28:                                               ; preds = %20, %24, %11, %4
  %29 = phi i64 [ -1, %4 ], [ 0, %11 ], [ %14, %20 ], [ %26, %24 ]
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #21
  ret i64 %29
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal void @MatrixSignalHandler(i32 %0) #5 {
  %2 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #16
  call void @GetExceptionInfo(ptr noundef nonnull %2) #21
  %3 = tail call ptr @__errno_location() #23
  %4 = load i32, ptr %3, align 4, !tbaa !25
  %5 = call ptr @GetExceptionMessage(i32 noundef %4) #21
  %6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 132, i32 noundef 745, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %5) #21
  %7 = call ptr @DestroyString(ptr noundef %5) #21
  call void @CatchException(ptr noundef nonnull %2) #21
  %8 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 46) #24
  unreachable
}

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #7 {
  %2 = tail call i64 @llvm.umin.i64(i64 %0, i64 9223372036854775807)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireMagickMatrix(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 8) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i64 %0, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %5
  %8 = icmp sgt i64 %1, 0
  %9 = shl nuw i64 %1, 3
  br label %10

10:                                               ; preds = %7, %28
  %11 = phi i64 [ 0, %7 ], [ %29, %28 ]
  %12 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #25
  %13 = getelementptr inbounds ptr, ptr %3, i64 %11
  store ptr %12, ptr %13, align 8, !tbaa !28
  %14 = icmp eq ptr %12, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  br i1 %8, label %16, label %28

16:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %12, i8 0, i64 %9, i1 false), !tbaa !29
  br label %28

17:                                               ; preds = %10
  %18 = icmp eq i64 %11, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %17 ]
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef %22) #21
  store ptr %23, ptr %21, align 8, !tbaa !28
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %11
  br i1 %25, label %26, label %19, !llvm.loop !31

26:                                               ; preds = %19, %17
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #21
  br label %31

28:                                               ; preds = %16, %15
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp eq i64 %29, %0
  br i1 %30, label %31, label %10, !llvm.loop !32

31:                                               ; preds = %28, %5, %2, %26
  %32 = phi ptr [ null, %26 ], [ null, %2 ], [ %3, %5 ], [ %3, %28 ]
  ret ptr %32
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GaussJordanElimination(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #25
  %6 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #25
  %7 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #25
  %8 = icmp eq ptr %6, null
  %9 = icmp eq ptr %5, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq ptr %7, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  br i1 %11, label %16, label %14

14:                                               ; preds = %13
  %15 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  br label %16

16:                                               ; preds = %14, %13
  br i1 %9, label %19, label %17

17:                                               ; preds = %16
  %18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #21
  br label %19

19:                                               ; preds = %17, %16
  br i1 %8, label %215, label %20

20:                                               ; preds = %19
  %21 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #21
  br label %215

22:                                               ; preds = %4
  %23 = shl i64 %2, 3
  %24 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef %23) #21
  %25 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef %23) #21
  %26 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef %23) #21
  %27 = icmp sgt i64 %2, 0
  br i1 %27, label %28, label %211

28:                                               ; preds = %22
  %29 = icmp sgt i64 %3, 0
  br label %30

30:                                               ; preds = %180, %28
  %31 = phi i64 [ 0, %28 ], [ %71, %180 ]
  %32 = phi i64 [ 0, %28 ], [ %70, %180 ]
  %33 = phi i64 [ 0, %28 ], [ %181, %180 ]
  br label %35

34:                                               ; preds = %180
  br i1 %27, label %183, label %211

35:                                               ; preds = %30, %68
  %36 = phi i64 [ %71, %68 ], [ %31, %30 ]
  %37 = phi i64 [ %70, %68 ], [ %32, %30 ]
  %38 = phi i64 [ %72, %68 ], [ 0, %30 ]
  %39 = phi double [ %69, %68 ], [ 0.000000e+00, %30 ]
  %40 = getelementptr inbounds i64, ptr %7, i64 %38
  %41 = load i64, ptr %40, align 8, !tbaa !33
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %68, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds ptr, ptr %0, i64 %38
  br label %45

45:                                               ; preds = %43, %62
  %46 = phi i64 [ %36, %43 ], [ %65, %62 ]
  %47 = phi i64 [ %37, %43 ], [ %64, %62 ]
  %48 = phi i64 [ 0, %43 ], [ %66, %62 ]
  %49 = phi double [ %39, %43 ], [ %63, %62 ]
  %50 = getelementptr inbounds i64, ptr %7, i64 %48
  %51 = load i64, ptr %50, align 8, !tbaa !33
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = icmp sgt i64 %51, 1
  br i1 %54, label %215, label %62

55:                                               ; preds = %45
  %56 = load ptr, ptr %44, align 8, !tbaa !28
  %57 = getelementptr inbounds double, ptr %56, i64 %48
  %58 = load double, ptr %57, align 8, !tbaa !29
  %59 = tail call double @llvm.fabs.f64(double %58)
  %60 = fcmp ult double %59, %49
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %53, %61, %55
  %63 = phi double [ %49, %53 ], [ %59, %61 ], [ %49, %55 ]
  %64 = phi i64 [ %47, %53 ], [ %48, %61 ], [ %47, %55 ]
  %65 = phi i64 [ %46, %53 ], [ %38, %61 ], [ %46, %55 ]
  %66 = add nuw nsw i64 %48, 1
  %67 = icmp eq i64 %66, %2
  br i1 %67, label %68, label %45, !llvm.loop !34

68:                                               ; preds = %62, %35
  %69 = phi double [ %39, %35 ], [ %63, %62 ]
  %70 = phi i64 [ %37, %35 ], [ %64, %62 ]
  %71 = phi i64 [ %36, %35 ], [ %65, %62 ]
  %72 = add nuw nsw i64 %38, 1
  %73 = icmp eq i64 %72, %2
  br i1 %73, label %74, label %35, !llvm.loop !35

74:                                               ; preds = %68
  %75 = getelementptr inbounds i64, ptr %7, i64 %70
  %76 = load i64, ptr %75, align 8, !tbaa !33
  %77 = add nsw i64 %76, 1
  store i64 %77, ptr %75, align 8, !tbaa !33
  %78 = icmp eq i64 %71, %70
  br i1 %78, label %119, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds ptr, ptr %0, i64 %71
  %81 = load ptr, ptr %80, align 8, !tbaa !28
  %82 = getelementptr inbounds ptr, ptr %0, i64 %70
  %83 = load ptr, ptr %82, align 8, !tbaa !28
  br label %85

84:                                               ; preds = %98
  br i1 %29, label %101, label %119

85:                                               ; preds = %79, %98
  %86 = phi i64 [ 0, %79 ], [ %99, %98 ]
  %87 = getelementptr inbounds double, ptr %81, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !29
  %89 = getelementptr inbounds double, ptr %83, i64 %86
  %90 = load double, ptr %89, align 8, !tbaa !29
  %91 = fcmp une double %88, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = fadd double %88, %90
  store double %93, ptr %87, align 8, !tbaa !29
  %94 = load double, ptr %89, align 8, !tbaa !29
  %95 = fsub double %93, %94
  store double %95, ptr %89, align 8, !tbaa !29
  %96 = load double, ptr %87, align 8, !tbaa !29
  %97 = fsub double %96, %95
  store double %97, ptr %87, align 8, !tbaa !29
  br label %98

98:                                               ; preds = %85, %92
  %99 = add nuw nsw i64 %86, 1
  %100 = icmp eq i64 %99, %2
  br i1 %100, label %84, label %85, !llvm.loop !36

101:                                              ; preds = %84, %116
  %102 = phi i64 [ %117, %116 ], [ 0, %84 ]
  %103 = getelementptr inbounds ptr, ptr %1, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !28
  %105 = getelementptr inbounds double, ptr %104, i64 %71
  %106 = load double, ptr %105, align 8, !tbaa !29
  %107 = getelementptr inbounds double, ptr %104, i64 %70
  %108 = load double, ptr %107, align 8, !tbaa !29
  %109 = fcmp une double %106, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = fadd double %106, %108
  store double %111, ptr %105, align 8, !tbaa !29
  %112 = load double, ptr %107, align 8, !tbaa !29
  %113 = fsub double %111, %112
  store double %113, ptr %107, align 8, !tbaa !29
  %114 = load double, ptr %105, align 8, !tbaa !29
  %115 = fsub double %114, %113
  store double %115, ptr %105, align 8, !tbaa !29
  br label %116

116:                                              ; preds = %101, %110
  %117 = add nuw nsw i64 %102, 1
  %118 = icmp eq i64 %117, %3
  br i1 %118, label %119, label %101, !llvm.loop !37

119:                                              ; preds = %116, %84, %74
  %120 = getelementptr inbounds i64, ptr %6, i64 %33
  store i64 %71, ptr %120, align 8, !tbaa !33
  %121 = getelementptr inbounds i64, ptr %5, i64 %33
  store i64 %70, ptr %121, align 8, !tbaa !33
  %122 = getelementptr inbounds ptr, ptr %0, i64 %70
  %123 = load ptr, ptr %122, align 8, !tbaa !28
  %124 = getelementptr inbounds double, ptr %123, i64 %70
  %125 = load double, ptr %124, align 8, !tbaa !29
  %126 = fcmp oeq double %125, 0.000000e+00
  br i1 %126, label %215, label %127

127:                                              ; preds = %119
  %128 = tail call fastcc double @PerceptibleReciprocal(double noundef %125) #22
  store double 1.000000e+00, ptr %124, align 8, !tbaa !29
  br label %130

129:                                              ; preds = %130
  br i1 %29, label %137, label %146

130:                                              ; preds = %127, %130
  %131 = phi i64 [ %135, %130 ], [ 0, %127 ]
  %132 = getelementptr inbounds double, ptr %123, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !29
  %134 = fmul double %128, %133
  store double %134, ptr %132, align 8, !tbaa !29
  %135 = add nuw nsw i64 %131, 1
  %136 = icmp eq i64 %135, %2
  br i1 %136, label %129, label %130, !llvm.loop !38

137:                                              ; preds = %129, %137
  %138 = phi i64 [ %144, %137 ], [ 0, %129 ]
  %139 = getelementptr inbounds ptr, ptr %1, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !28
  %141 = getelementptr inbounds double, ptr %140, i64 %70
  %142 = load double, ptr %141, align 8, !tbaa !29
  %143 = fmul double %128, %142
  store double %143, ptr %141, align 8, !tbaa !29
  %144 = add nuw nsw i64 %138, 1
  %145 = icmp eq i64 %144, %3
  br i1 %145, label %146, label %137, !llvm.loop !39

146:                                              ; preds = %137, %129
  br label %147

147:                                              ; preds = %146, %177
  %148 = phi i64 [ %178, %177 ], [ 0, %146 ]
  %149 = icmp eq i64 %148, %70
  br i1 %149, label %177, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds ptr, ptr %0, i64 %148
  %152 = load ptr, ptr %151, align 8, !tbaa !28
  %153 = getelementptr inbounds double, ptr %152, i64 %70
  %154 = load double, ptr %153, align 8, !tbaa !29
  store double 0.000000e+00, ptr %153, align 8, !tbaa !29
  %155 = fneg double %154
  br label %157

156:                                              ; preds = %157
  br i1 %29, label %166, label %177

157:                                              ; preds = %150, %157
  %158 = phi i64 [ 0, %150 ], [ %164, %157 ]
  %159 = getelementptr inbounds double, ptr %123, i64 %158
  %160 = load double, ptr %159, align 8, !tbaa !29
  %161 = getelementptr inbounds double, ptr %152, i64 %158
  %162 = load double, ptr %161, align 8, !tbaa !29
  %163 = tail call double @llvm.fmuladd.f64(double %155, double %160, double %162)
  store double %163, ptr %161, align 8, !tbaa !29
  %164 = add nuw nsw i64 %158, 1
  %165 = icmp eq i64 %164, %2
  br i1 %165, label %156, label %157, !llvm.loop !40

166:                                              ; preds = %156, %166
  %167 = phi i64 [ %175, %166 ], [ 0, %156 ]
  %168 = getelementptr inbounds ptr, ptr %1, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !28
  %170 = getelementptr inbounds double, ptr %169, i64 %70
  %171 = load double, ptr %170, align 8, !tbaa !29
  %172 = getelementptr inbounds double, ptr %169, i64 %148
  %173 = load double, ptr %172, align 8, !tbaa !29
  %174 = tail call double @llvm.fmuladd.f64(double %155, double %171, double %173)
  store double %174, ptr %172, align 8, !tbaa !29
  %175 = add nuw nsw i64 %167, 1
  %176 = icmp eq i64 %175, %3
  br i1 %176, label %177, label %166, !llvm.loop !41

177:                                              ; preds = %166, %156, %147
  %178 = add nuw nsw i64 %148, 1
  %179 = icmp eq i64 %178, %2
  br i1 %179, label %180, label %147, !llvm.loop !42

180:                                              ; preds = %177
  %181 = add nuw nsw i64 %33, 1
  %182 = icmp eq i64 %181, %2
  br i1 %182, label %34, label %30, !llvm.loop !43

183:                                              ; preds = %34, %209
  %184 = phi i64 [ %185, %209 ], [ %2, %34 ]
  %185 = add nsw i64 %184, -1
  %186 = getelementptr inbounds i64, ptr %5, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !33
  %188 = getelementptr inbounds i64, ptr %6, i64 %185
  %189 = load i64, ptr %188, align 8, !tbaa !33
  %190 = icmp eq i64 %187, %189
  br i1 %190, label %209, label %191

191:                                              ; preds = %183, %206
  %192 = phi i64 [ %207, %206 ], [ 0, %183 ]
  %193 = getelementptr inbounds ptr, ptr %0, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !28
  %195 = getelementptr inbounds double, ptr %194, i64 %189
  %196 = load double, ptr %195, align 8, !tbaa !29
  %197 = getelementptr inbounds double, ptr %194, i64 %187
  %198 = load double, ptr %197, align 8, !tbaa !29
  %199 = fcmp une double %196, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %191
  %201 = fadd double %196, %198
  store double %201, ptr %195, align 8, !tbaa !29
  %202 = load double, ptr %197, align 8, !tbaa !29
  %203 = fsub double %201, %202
  store double %203, ptr %197, align 8, !tbaa !29
  %204 = load double, ptr %195, align 8, !tbaa !29
  %205 = fsub double %204, %203
  store double %205, ptr %195, align 8, !tbaa !29
  br label %206

206:                                              ; preds = %191, %200
  %207 = add nuw nsw i64 %192, 1
  %208 = icmp eq i64 %207, %2
  br i1 %208, label %209, label %191, !llvm.loop !44

209:                                              ; preds = %206, %183
  %210 = icmp sgt i64 %184, 1
  br i1 %210, label %183, label %211, !llvm.loop !45

211:                                              ; preds = %209, %22, %34
  %212 = tail call ptr @RelinquishMagickMemory(ptr noundef %7) #21
  %213 = tail call ptr @RelinquishMagickMemory(ptr noundef %6) #21
  %214 = tail call ptr @RelinquishMagickMemory(ptr noundef %5) #21
  br label %215

215:                                              ; preds = %119, %53, %19, %20, %211
  %216 = phi i32 [ 1, %211 ], [ 0, %20 ], [ 0, %19 ], [ 0, %53 ], [ 0, %119 ]
  ret i32 %216
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #7 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetMatrixColumns(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !14
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMatrixElement(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = tail call fastcc i64 @EdgeY(i64 noundef %2, i64 noundef %6) #22
  %8 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = mul i64 %9, %7
  %11 = tail call fastcc i64 @EdgeX(i64 noundef %1, i64 noundef %9) #22
  %12 = add i64 %10, %11
  %13 = load i32, ptr %0, align 8, !tbaa !20
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !16
  %20 = mul i64 %19, %12
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %21, i64 %19, i1 false)
  br label %30

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !16
  %25 = mul i64 %24, %12
  %26 = tail call fastcc i64 @ReadMatrixElements(ptr noundef nonnull %0, i64 noundef %25, i64 noundef %24, ptr noundef %3) #22
  %27 = load i64, ptr %23, align 8, !tbaa !16
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %22, %15
  %31 = phi i32 [ 1, %15 ], [ %29, %22 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @EdgeY(i64 noundef %0, i64 noundef %1) unnamed_addr #7 {
  %3 = icmp slt i64 %0, 0
  %4 = icmp slt i64 %0, %1
  %5 = add i64 %1, -1
  %6 = select i1 %4, i64 %0, i64 %5
  %7 = select i1 %3, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @EdgeX(i64 noundef %0, i64 noundef %1) unnamed_addr #7 {
  %3 = icmp slt i64 %0, 0
  %4 = icmp slt i64 %0, %1
  %5 = add i64 %1, -1
  %6 = select i1 %4, i64 %0, i64 %5
  %7 = select i1 %3, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ReadMatrixElements(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  tail call void @LockSemaphoreInfo(ptr noundef %6) #21
  %7 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = tail call i64 @lseek(i32 noundef %8, i64 noundef %1, i32 noundef 0) #21
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = icmp sgt i64 %2, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %11, %24
  %14 = phi i64 [ %26, %24 ], [ 0, %11 ]
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  %16 = sub nsw i64 %2, %14
  %17 = tail call fastcc i64 @MagickMin(i64 noundef %16) #22
  %18 = tail call i64 @read(i32 noundef %8, ptr noundef %15, i64 noundef %17) #21
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = tail call ptr @__errno_location() #23
  %22 = load i32, ptr %21, align 4, !tbaa !25
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %13, %20
  %25 = phi i64 [ 0, %20 ], [ %18, %13 ]
  %26 = add nuw nsw i64 %25, %14
  %27 = icmp slt i64 %26, %2
  br i1 %27, label %13, label %28, !llvm.loop !46

28:                                               ; preds = %20, %24, %11, %4
  %29 = phi i64 [ -1, %4 ], [ 0, %11 ], [ %14, %20 ], [ %26, %24 ]
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #21
  ret i64 %29
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetMatrixRows(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !15
  ret i64 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LeastSquaresAddTerms(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 {
  %7 = icmp sgt i64 %4, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %6
  %9 = icmp sgt i64 %5, 0
  br label %10

10:                                               ; preds = %40, %8
  %11 = phi i64 [ 0, %8 ], [ %41, %40 ]
  %12 = getelementptr inbounds double, ptr %2, i64 %11
  br label %16

13:                                               ; preds = %16
  br i1 %9, label %14, label %40

14:                                               ; preds = %13
  %15 = getelementptr inbounds double, ptr %2, i64 %11
  br label %28

16:                                               ; preds = %10, %16
  %17 = phi i64 [ 0, %10 ], [ %26, %16 ]
  %18 = getelementptr inbounds double, ptr %2, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !29
  %20 = load double, ptr %12, align 8, !tbaa !29
  %21 = getelementptr inbounds ptr, ptr %0, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds double, ptr %22, i64 %11
  %24 = load double, ptr %23, align 8, !tbaa !29
  %25 = tail call double @llvm.fmuladd.f64(double %19, double %20, double %24)
  store double %25, ptr %23, align 8, !tbaa !29
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, %4
  br i1 %27, label %13, label %16, !llvm.loop !47

28:                                               ; preds = %14, %28
  %29 = phi i64 [ 0, %14 ], [ %38, %28 ]
  %30 = getelementptr inbounds double, ptr %3, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !29
  %32 = load double, ptr %15, align 8, !tbaa !29
  %33 = getelementptr inbounds ptr, ptr %1, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  %35 = getelementptr inbounds double, ptr %34, i64 %11
  %36 = load double, ptr %35, align 8, !tbaa !29
  %37 = tail call double @llvm.fmuladd.f64(double %31, double %32, double %36)
  store double %37, ptr %35, align 8, !tbaa !29
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, %5
  br i1 %39, label %40, label %28, !llvm.loop !48

40:                                               ; preds = %28, %13
  %41 = add nuw nsw i64 %11, 1
  %42 = icmp eq i64 %41, %4
  br i1 %42, label %43, label %10, !llvm.loop !49

43:                                               ; preds = %40, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MatrixToImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !28
  store ptr %1, ptr %4, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %12 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !16
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %107, label %15

15:                                               ; preds = %2
  %16 = call i32 @GetMatrixElement(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %8) #22, !range !24
  %17 = load double, ptr %8, align 8, !tbaa !29
  store double %17, ptr %6, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !15
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !14
  br label %24

24:                                               ; preds = %21, %52
  %25 = phi i64 [ %53, %52 ], [ %23, %21 ]
  %26 = phi i64 [ %54, %52 ], [ %19, %21 ]
  %27 = phi double [ %55, %52 ], [ %17, %21 ]
  %28 = phi i64 [ %57, %52 ], [ 0, %21 ]
  %29 = phi double [ %56, %52 ], [ %17, %21 ]
  %30 = icmp sgt i64 %25, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %24, %44
  %32 = phi double [ %45, %44 ], [ %27, %24 ]
  %33 = phi i64 [ %47, %44 ], [ 0, %24 ]
  %34 = phi double [ %46, %44 ], [ %29, %24 ]
  %35 = call i32 @GetMatrixElement(ptr noundef nonnull %0, i64 noundef %33, i64 noundef %28, ptr noundef nonnull %8) #22, !range !24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load double, ptr %8, align 8, !tbaa !29
  %39 = fcmp olt double %38, %32
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store double %38, ptr %6, align 8, !tbaa !29
  br label %44

41:                                               ; preds = %37
  %42 = fcmp ogt double %38, %34
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %40, %43, %41, %31
  %45 = phi double [ %32, %31 ], [ %38, %40 ], [ %32, %43 ], [ %32, %41 ]
  %46 = phi double [ %34, %31 ], [ %34, %40 ], [ %38, %43 ], [ %34, %41 ]
  %47 = add nuw nsw i64 %33, 1
  %48 = load i64, ptr %22, align 8, !tbaa !14
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %31, label %50, !llvm.loop !50

50:                                               ; preds = %44
  %51 = load i64, ptr %18, align 8, !tbaa !15
  br label %52

52:                                               ; preds = %50, %24
  %53 = phi i64 [ %25, %24 ], [ %48, %50 ]
  %54 = phi i64 [ %26, %24 ], [ %51, %50 ]
  %55 = phi double [ %27, %24 ], [ %45, %50 ]
  %56 = phi double [ %29, %24 ], [ %46, %50 ]
  %57 = add nuw nsw i64 %28, 1
  %58 = icmp slt i64 %57, %54
  br i1 %58, label %24, label %59, !llvm.loop !51

59:                                               ; preds = %52, %15
  %60 = phi double [ %17, %15 ], [ %55, %52 ]
  %61 = phi double [ %17, %15 ], [ %56, %52 ]
  %62 = fcmp oeq double %60, 0.000000e+00
  %63 = fcmp oeq double %61, 0.000000e+00
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store double 0.000000e+00, ptr %7, align 8, !tbaa !29
  br label %73

66:                                               ; preds = %59
  %67 = fcmp oeq double %60, %61
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = fdiv double 6.553500e+04, %60
  store double %69, ptr %7, align 8, !tbaa !29
  store double 0.000000e+00, ptr %6, align 8, !tbaa !29
  br label %73

70:                                               ; preds = %66
  %71 = fsub double %61, %60
  %72 = fdiv double 6.553500e+04, %71
  store double %72, ptr %7, align 8, !tbaa !29
  br label %73

73:                                               ; preds = %68, %70, %65
  %74 = tail call ptr @AcquireImage(ptr noundef null) #21
  store ptr %74, ptr %9, align 8, !tbaa !28
  %75 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %76 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 7
  %77 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 8
  %78 = load <2 x i64>, ptr %75, align 8, !tbaa !33
  store <2 x i64> %78, ptr %76, align 8, !tbaa !33
  %79 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 1
  store i32 2, ptr %79, align 4, !tbaa !52
  store i32 1, ptr %10, align 4, !tbaa !25
  %80 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %74, ptr noundef %1) #21
  store ptr %80, ptr %5, align 8, !tbaa !28
  %81 = load i64, ptr %77, align 8, !tbaa !64
  %82 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %83 = shl i64 %82, 5
  %84 = icmp ugt i64 %81, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %73
  %86 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %74) #21
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %74) #21
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %97

93:                                               ; preds = %88, %85, %73
  %94 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %95 = icmp ult i64 %94, 2
  %96 = select i1 %95, i64 1, i64 2
  br label %97

97:                                               ; preds = %93, %91
  %98 = phi i64 [ %92, %91 ], [ %96, %93 ]
  %99 = trunc i64 %98 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %11, i32 %99)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @MatrixToImage.omp_outlined, ptr nonnull %9, ptr nonnull %10, ptr nonnull %5, ptr nonnull %4, ptr nonnull %3, ptr nonnull %7, ptr nonnull %6)
  %100 = load ptr, ptr %5, align 8, !tbaa !28
  %101 = call ptr @DestroyCacheView(ptr noundef %100) #21
  store ptr %101, ptr %5, align 8, !tbaa !28
  %102 = load i32, ptr %10, align 4, !tbaa !25
  %103 = icmp eq i32 %102, 0
  %104 = load ptr, ptr %9, align 8, !tbaa !28
  br i1 %103, label %105, label %107

105:                                              ; preds = %97
  %106 = call ptr @DestroyImage(ptr noundef %104) #21
  br label %107

107:                                              ; preds = %97, %105, %2
  %108 = phi ptr [ null, %2 ], [ %106, %105 ], [ %104, %97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %108
}

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @MatrixToImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8) #15 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = load ptr, ptr %2, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !64
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %92

20:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 0, ptr %10, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store i64 %18, ptr %11, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store i64 1, ptr %12, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  store i32 0, ptr %13, align 4, !tbaa !25
  %21 = load i32, ptr %0, align 4, !tbaa !25
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %22 = load i64, ptr %11, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %11, align 8, !tbaa !33
  %24 = load i64, ptr %10, align 8, !tbaa !33
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %91, label %26

26:                                               ; preds = %20, %83
  %27 = phi i64 [ %89, %83 ], [ %23, %20 ]
  %28 = phi i64 [ %87, %83 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %83, label %30

30:                                               ; preds = %26, %77
  %31 = phi i64 [ %78, %77 ], [ %28, %26 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  %32 = load i32, ptr %3, align 4, !tbaa !25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !28
  %36 = load ptr, ptr %2, align 8, !tbaa !28
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !65
  %39 = load ptr, ptr %5, align 8, !tbaa !28
  %40 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #26
  %41 = icmp eq ptr %40, null
  br i1 %41, label %76, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %2, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !65
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42, %64
  %48 = phi i64 [ %66, %64 ], [ 0, %42 ]
  %49 = phi ptr [ %65, %64 ], [ %40, %42 ]
  %50 = load ptr, ptr %6, align 8, !tbaa !28
  %51 = call i32 @GetMatrixElement(ptr noundef %50, i64 noundef %48, i64 noundef %31, ptr noundef nonnull %14) #22, !range !24
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = load double, ptr %7, align 8, !tbaa !29
  %55 = load double, ptr %14, align 8, !tbaa !29
  %56 = load double, ptr %8, align 8, !tbaa !29
  %57 = fsub double %55, %56
  %58 = fmul double %54, %57
  store double %58, ptr %14, align 8, !tbaa !29
  %59 = fptrunc double %58 to float
  %60 = call fastcc zeroext i16 @ClampToQuantum(float noundef %59) #22
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 2
  store i16 %60, ptr %61, align 2, !tbaa !66
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 1
  store i16 %60, ptr %62, align 2, !tbaa !67
  store i16 %60, ptr %49, align 2, !tbaa !68
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 1
  br label %64

64:                                               ; preds = %47, %53
  %65 = phi ptr [ %49, %47 ], [ %63, %53 ]
  %66 = add nuw nsw i64 %48, 1
  %67 = load ptr, ptr %2, align 8, !tbaa !28
  %68 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !65
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %47, label %71, !llvm.loop !69

71:                                               ; preds = %64, %42
  %72 = load ptr, ptr %4, align 8, !tbaa !28
  %73 = load ptr, ptr %5, align 8, !tbaa !28
  %74 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %72, ptr noundef %73) #26
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %34
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %77

77:                                               ; preds = %76, %71, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  %78 = add nsw i64 %31, 1
  %79 = load i64, ptr %11, align 8, !tbaa !33
  %80 = icmp slt i64 %31, %79
  br i1 %80, label %30, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %10, align 8, !tbaa !33
  br label %83

83:                                               ; preds = %81, %26
  %84 = phi i64 [ %28, %26 ], [ %82, %81 ]
  %85 = phi i64 [ %27, %26 ], [ %79, %81 ]
  %86 = load i64, ptr %12, align 8, !tbaa !33
  %87 = add nsw i64 %86, %84
  store i64 %87, ptr %10, align 8, !tbaa !33
  %88 = add nsw i64 %86, %85
  %89 = call i64 @llvm.smin.i64(i64 %88, i64 %18)
  store i64 %89, ptr %11, align 8, !tbaa !33
  %90 = icmp sgt i64 %87, %89
  br i1 %90, label %91, label %26

91:                                               ; preds = %83, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %92

92:                                               ; preds = %91, %9
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #16

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #7 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #16

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #16

; Function Attrs: nounwind
declare !callback !70 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NullMatrix(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  %3 = load i32, ptr %0, align 8, !tbaa !20
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @ResetMagickMemory(ptr noundef %7, i32 noundef 0, i64 noundef %9) #21
  br label %51

11:                                               ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !72
  %12 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !23
  %14 = tail call i64 @lseek(i32 noundef %13, i64 noundef 0, i32 noundef 0) #21
  %15 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !15
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !19
  br label %21

21:                                               ; preds = %18, %43
  %22 = phi i64 [ %16, %18 ], [ %39, %43 ]
  %23 = phi i64 [ %20, %18 ], [ %40, %43 ]
  %24 = phi i64 [ 0, %18 ], [ %44, %43 ]
  %25 = icmp sgt i64 %23, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21, %32
  %27 = phi i64 [ %33, %32 ], [ 0, %21 ]
  %28 = load i32, ptr %12, align 8, !tbaa !23
  %29 = call i64 @write(i32 noundef %28, ptr noundef nonnull %2, i64 noundef 1) #21
  %30 = icmp eq i64 %29, 1
  %31 = load i64, ptr %19, align 8, !tbaa !19
  br i1 %30, label %32, label %35

32:                                               ; preds = %26
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp slt i64 %33, %31
  br i1 %34, label %26, label %35, !llvm.loop !73

35:                                               ; preds = %26, %32
  %36 = phi i64 [ %33, %32 ], [ %27, %26 ]
  %37 = load i64, ptr %15, align 8, !tbaa !15
  br label %38

38:                                               ; preds = %35, %21
  %39 = phi i64 [ %22, %21 ], [ %37, %35 ]
  %40 = phi i64 [ %23, %21 ], [ %31, %35 ]
  %41 = phi i64 [ 0, %21 ], [ %36, %35 ]
  %42 = icmp slt i64 %41, %40
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = add nuw nsw i64 %24, 1
  %45 = icmp slt i64 %44, %39
  br i1 %45, label %21, label %46, !llvm.loop !74

46:                                               ; preds = %43, %38, %11
  %47 = phi i64 [ %16, %11 ], [ %39, %38 ], [ %39, %43 ]
  %48 = phi i64 [ 0, %11 ], [ %44, %43 ], [ %24, %38 ]
  %49 = icmp sge i64 %48, %47
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %46, %5
  %52 = phi i32 [ 1, %5 ], [ %50, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RelinquishMagickMatrix(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i64 %1, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %11, %6 ], [ 0, %4 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef %9) #21
  store ptr %10, ptr %8, align 8, !tbaa !28
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %13, label %6, !llvm.loop !75

13:                                               ; preds = %6, %4
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #21
  br label %15

15:                                               ; preds = %2, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetMatrixElement(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = mul i64 %6, %2
  %8 = add i64 %7, %1
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !16
  %13 = mul i64 %12, %8
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !19
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load i32, ptr %0, align 8, !tbaa !20
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = getelementptr inbounds i8, ptr %22, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %3, i64 %12, i1 false)
  br label %29

24:                                               ; preds = %17
  %25 = tail call fastcc i64 @WriteMatrixElements(ptr noundef nonnull %0, i64 noundef %13, i64 noundef %12, ptr noundef %3) #22
  %26 = load i64, ptr %11, align 8, !tbaa !16
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %4, %10, %20
  %30 = phi i32 [ 1, %20 ], [ 0, %10 ], [ 0, %4 ], [ %28, %24 ]
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize willreturn memory(none) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { nounwind optsize allocsize(0,1) }
attributes #26 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 4168}
!7 = !{!"_MatrixInfo", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !8, i64 40, !8, i64 44, !9, i64 48, !8, i64 4144, !13, i64 4152, !13, i64 4160, !11, i64 4168}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"long long", !9, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!7, !11, i64 8}
!15 = !{!7, !11, i64 16}
!16 = !{!7, !11, i64 24}
!17 = !{!7, !13, i64 4160}
!18 = !{!7, !8, i64 44}
!19 = !{!7, !12, i64 32}
!20 = !{!7, !8, i64 0}
!21 = !{!7, !8, i64 40}
!22 = !{!7, !13, i64 4152}
!23 = !{!7, !8, i64 4144}
!24 = !{i32 0, i32 2}
!25 = !{!8, !8, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!13, !13, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !9, i64 0}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !27}
!33 = !{!11, !11, i64 0}
!34 = distinct !{!34, !27}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = !{!53, !8, i64 4}
!53 = !{!"_Image", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !30, i64 104, !56, i64 112, !8, i64 208, !13, i64 216, !8, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !11, i64 256, !30, i64 264, !30, i64 272, !58, i64 280, !58, i64 312, !58, i64 344, !30, i64 376, !30, i64 384, !30, i64 392, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !13, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !59, i64 480, !60, i64 504, !13, i64 568, !13, i64 576, !13, i64 584, !13, i64 592, !13, i64 600, !13, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !11, i64 12904, !11, i64 12912, !62, i64 12920, !8, i64 12976, !11, i64 12984, !13, i64 12992, !63, i64 13000, !63, i64 13032, !13, i64 13064, !11, i64 13072, !11, i64 13080, !13, i64 13088, !13, i64 13096, !13, i64 13104, !8, i64 13112, !8, i64 13116, !54, i64 13120, !13, i64 13128, !58, i64 13136, !13, i64 13168, !13, i64 13176, !8, i64 13184, !8, i64 13188, !12, i64 13192, !8, i64 13200, !11, i64 13208, !11, i64 13216, !8, i64 13224, !11, i64 13232}
!54 = !{!"_PixelPacket", !55, i64 0, !55, i64 2, !55, i64 4, !55, i64 6}
!55 = !{!"short", !9, i64 0}
!56 = !{!"_ChromaticityInfo", !57, i64 0, !57, i64 24, !57, i64 48, !57, i64 72}
!57 = !{!"_PrimaryInfo", !30, i64 0, !30, i64 8, !30, i64 16}
!58 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!59 = !{!"_ErrorInfo", !30, i64 0, !30, i64 8, !30, i64 16}
!60 = !{!"_TimerInfo", !61, i64 0, !61, i64 24, !8, i64 48, !11, i64 56}
!61 = !{!"_Timer", !30, i64 0, !30, i64 8, !30, i64 16}
!62 = !{!"_ExceptionInfo", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !13, i64 40, !11, i64 48}
!63 = !{!"_ProfileInfo", !13, i64 0, !11, i64 8, !13, i64 16, !11, i64 24}
!64 = !{!53, !11, i64 48}
!65 = !{!53, !11, i64 40}
!66 = !{!54, !55, i64 4}
!67 = !{!54, !55, i64 2}
!68 = !{!54, !55, i64 0}
!69 = distinct !{!69, !27}
!70 = !{!71}
!71 = !{i64 2, i64 -1, i64 -1, i1 true}
!72 = !{!9, !9, i64 0}
!73 = distinct !{!73, !27}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !27}
