; ModuleID = 'magick/matrix.c'
source_filename = "magick/matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MatrixInfo = type { i32, i64, i64, i64, i64, i32, i32, [4096 x i8], i32, ptr, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireMatrixInfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call dereferenceable_or_null(4176) ptr @AcquireMagickMemory(i64 noundef 4176) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 4176) #19
  %9 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 11
  store i64 2880220587, ptr %9, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 1
  store i64 %0, ptr %10, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 2
  store i64 %1, ptr %11, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 3
  store i64 %2, ptr %12, align 8, !tbaa !15
  %13 = tail call ptr @AllocateSemaphoreInfo() #19
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 10
  store ptr %13, ptr %14, align 8, !tbaa !16
  %15 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = tail call i32 @IsStringTrue(ptr noundef nonnull %15) #19
  %19 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 6
  store i32 %18, ptr %19, align 4, !tbaa !17
  %20 = tail call ptr @DestroyString(ptr noundef nonnull %15) #19
  br label %21

21:                                               ; preds = %17, %7
  %22 = mul i64 %1, %0
  %23 = mul i64 %22, %2
  %24 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 4
  store i64 %23, ptr %24, align 8, !tbaa !18
  %25 = load i64, ptr %10, align 8, !tbaa !13
  %26 = udiv i64 %23, %1
  %27 = udiv i64 %26, %2
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 241, i32 noundef 445, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #19
  %31 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %5) #20
  br label %87

32:                                               ; preds = %21
  store i32 1, ptr %5, align 8, !tbaa !19
  %33 = tail call i32 @AcquireMagickResource(i32 noundef 1, i64 noundef %23) #19
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %24, align 8, !tbaa !18
  %37 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 5
  store i32 0, ptr %40, align 8, !tbaa !20
  %41 = load i64, ptr %24, align 8, !tbaa !18
  %42 = tail call ptr @AcquireMagickMemory(i64 noundef %41) #18
  %43 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 9
  store ptr %42, ptr %43, align 8, !tbaa !21
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  store i32 1, ptr %40, align 8, !tbaa !20
  %46 = load i64, ptr %24, align 8, !tbaa !18
  %47 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %46) #19
  store ptr %47, ptr %43, align 8, !tbaa !21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, ptr %24, align 8, !tbaa !18
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %50) #19
  br label %51

51:                                               ; preds = %39, %35, %49, %45, %32
  %52 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 8
  store i32 -1, ptr %52, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load i64, ptr %24, align 8, !tbaa !18
  %58 = tail call i32 @AcquireMagickResource(i32 noundef 2, i64 noundef %57) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 272, i32 noundef 445, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #19
  %62 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %5) #20
  br label %87

63:                                               ; preds = %56
  store i32 3, ptr %5, align 8, !tbaa !19
  %64 = load i64, ptr %24, align 8, !tbaa !18
  %65 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %64) #19
  %66 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 7
  %67 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %66) #19
  store i32 %67, ptr %52, align 8, !tbaa !22
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %5) #20
  br label %87

71:                                               ; preds = %63
  %72 = load i64, ptr %24, align 8, !tbaa !18
  %73 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %72) #19
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load i64, ptr %24, align 8, !tbaa !18
  %77 = tail call fastcc i32 @SetMatrixExtent(ptr noundef nonnull %5, i64 noundef %76) #20, !range !23
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %52, align 8, !tbaa !22
  %81 = load i64, ptr %24, align 8, !tbaa !18
  %82 = tail call ptr @MapBlob(i32 noundef %80, i32 noundef 2, i64 noundef 0, i64 noundef %81) #19
  store ptr %82, ptr %53, align 8, !tbaa !21
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 2, ptr %5, align 8, !tbaa !19
  br label %87

85:                                               ; preds = %79
  %86 = load i64, ptr %24, align 8, !tbaa !18
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %86) #19
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
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  tail call void @LockSemaphoreInfo(ptr noundef %3) #19
  %4 = load i32, ptr %0, align 8, !tbaa !19
  switch i32 %4, label %39 [
    i32 1, label %5
    i32 2, label %19
    i32 3, label %26
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  br i1 %8, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call ptr @RelinquishMagickMemory(ptr noundef %10) #19
  br label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !18
  %16 = tail call i32 @UnmapBlob(ptr noundef %10, i64 noundef %15) #19
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi ptr [ null, %13 ], [ %12, %11 ]
  store ptr %18, ptr %9, align 8, !tbaa !21
  br label %35

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !18
  %24 = tail call i32 @UnmapBlob(ptr noundef %21, i64 noundef %23) #19
  store ptr null, ptr %20, align 8, !tbaa !21
  %25 = load i64, ptr %22, align 8, !tbaa !18
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %25) #19
  br label %26

26:                                               ; preds = %1, %19
  %27 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 8, !tbaa !22
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @close(i32 noundef %28) #19
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 7
  %34 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %33) #19
  br label %35

35:                                               ; preds = %17, %32
  %36 = phi i32 [ 2, %32 ], [ 5, %17 ]
  %37 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !18
  tail call void @RelinquishMagickResource(i32 noundef %36, i64 noundef %38) #19
  br label %39

39:                                               ; preds = %35, %1
  %40 = load ptr, ptr %2, align 8, !tbaa !16
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #19
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #19
  %41 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #19
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
  %4 = load i32, ptr %3, align 8, !tbaa !22
  %5 = tail call i64 @lseek(i32 noundef %4, i64 noundef 0, i32 noundef 2) #19
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = add nsw i64 %1, -1
  %11 = tail call fastcc i64 @WriteMatrixElements(ptr noundef nonnull %0, i64 noundef %10, i64 noundef 1, ptr noundef nonnull @.str.2) #20
  %12 = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @MatrixSignalHandler) #19
  %13 = icmp eq i64 %11, 1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2, %9
  %16 = phi i32 [ %14, %9 ], [ 0, %2 ], [ 1, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireMagickMatrix(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 8) #21
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
  %12 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #21
  %13 = getelementptr inbounds ptr, ptr %3, i64 %11
  store ptr %12, ptr %13, align 8, !tbaa !24
  %14 = icmp eq ptr %12, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  br i1 %8, label %16, label %28

16:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %12, i8 0, i64 %9, i1 false), !tbaa !25
  br label %28

17:                                               ; preds = %10
  %18 = icmp eq i64 %11, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %17 ]
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef %22) #19
  store ptr %23, ptr %21, align 8, !tbaa !24
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %11
  br i1 %25, label %26, label %19, !llvm.loop !27

26:                                               ; preds = %19, %17
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #19
  br label %31

28:                                               ; preds = %16, %15
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp eq i64 %29, %0
  br i1 %30, label %31, label %10, !llvm.loop !29

31:                                               ; preds = %28, %5, %2, %26
  %32 = phi ptr [ null, %26 ], [ null, %2 ], [ %3, %5 ], [ %3, %28 ]
  ret ptr %32
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GaussJordanElimination(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #21
  %6 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #21
  %7 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #21
  %8 = icmp eq ptr %6, null
  %9 = icmp eq ptr %5, null
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq ptr %7, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  br i1 %11, label %16, label %14

14:                                               ; preds = %13
  %15 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #19
  br label %16

16:                                               ; preds = %14, %13
  br i1 %9, label %19, label %17

17:                                               ; preds = %16
  %18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #19
  br label %19

19:                                               ; preds = %17, %16
  br i1 %8, label %215, label %20

20:                                               ; preds = %19
  %21 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #19
  br label %215

22:                                               ; preds = %4
  %23 = shl i64 %2, 3
  %24 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef %23) #19
  %25 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef %23) #19
  %26 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef %23) #19
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
  %41 = load i64, ptr %40, align 8, !tbaa !30
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
  %51 = load i64, ptr %50, align 8, !tbaa !30
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = icmp sgt i64 %51, 1
  br i1 %54, label %215, label %62

55:                                               ; preds = %45
  %56 = load ptr, ptr %44, align 8, !tbaa !24
  %57 = getelementptr inbounds double, ptr %56, i64 %48
  %58 = load double, ptr %57, align 8, !tbaa !25
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
  br i1 %67, label %68, label %45, !llvm.loop !31

68:                                               ; preds = %62, %35
  %69 = phi double [ %39, %35 ], [ %63, %62 ]
  %70 = phi i64 [ %37, %35 ], [ %64, %62 ]
  %71 = phi i64 [ %36, %35 ], [ %65, %62 ]
  %72 = add nuw nsw i64 %38, 1
  %73 = icmp eq i64 %72, %2
  br i1 %73, label %74, label %35, !llvm.loop !32

74:                                               ; preds = %68
  %75 = getelementptr inbounds i64, ptr %7, i64 %70
  %76 = load i64, ptr %75, align 8, !tbaa !30
  %77 = add nsw i64 %76, 1
  store i64 %77, ptr %75, align 8, !tbaa !30
  %78 = icmp eq i64 %71, %70
  br i1 %78, label %119, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds ptr, ptr %0, i64 %71
  %81 = load ptr, ptr %80, align 8, !tbaa !24
  %82 = getelementptr inbounds ptr, ptr %0, i64 %70
  %83 = load ptr, ptr %82, align 8, !tbaa !24
  br label %85

84:                                               ; preds = %98
  br i1 %29, label %101, label %119

85:                                               ; preds = %79, %98
  %86 = phi i64 [ 0, %79 ], [ %99, %98 ]
  %87 = getelementptr inbounds double, ptr %81, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !25
  %89 = getelementptr inbounds double, ptr %83, i64 %86
  %90 = load double, ptr %89, align 8, !tbaa !25
  %91 = fcmp une double %88, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = fadd double %88, %90
  store double %93, ptr %87, align 8, !tbaa !25
  %94 = load double, ptr %89, align 8, !tbaa !25
  %95 = fsub double %93, %94
  store double %95, ptr %89, align 8, !tbaa !25
  %96 = load double, ptr %87, align 8, !tbaa !25
  %97 = fsub double %96, %95
  store double %97, ptr %87, align 8, !tbaa !25
  br label %98

98:                                               ; preds = %85, %92
  %99 = add nuw nsw i64 %86, 1
  %100 = icmp eq i64 %99, %2
  br i1 %100, label %84, label %85, !llvm.loop !33

101:                                              ; preds = %84, %116
  %102 = phi i64 [ %117, %116 ], [ 0, %84 ]
  %103 = getelementptr inbounds ptr, ptr %1, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !24
  %105 = getelementptr inbounds double, ptr %104, i64 %71
  %106 = load double, ptr %105, align 8, !tbaa !25
  %107 = getelementptr inbounds double, ptr %104, i64 %70
  %108 = load double, ptr %107, align 8, !tbaa !25
  %109 = fcmp une double %106, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = fadd double %106, %108
  store double %111, ptr %105, align 8, !tbaa !25
  %112 = load double, ptr %107, align 8, !tbaa !25
  %113 = fsub double %111, %112
  store double %113, ptr %107, align 8, !tbaa !25
  %114 = load double, ptr %105, align 8, !tbaa !25
  %115 = fsub double %114, %113
  store double %115, ptr %105, align 8, !tbaa !25
  br label %116

116:                                              ; preds = %101, %110
  %117 = add nuw nsw i64 %102, 1
  %118 = icmp eq i64 %117, %3
  br i1 %118, label %119, label %101, !llvm.loop !34

119:                                              ; preds = %116, %84, %74
  %120 = getelementptr inbounds i64, ptr %6, i64 %33
  store i64 %71, ptr %120, align 8, !tbaa !30
  %121 = getelementptr inbounds i64, ptr %5, i64 %33
  store i64 %70, ptr %121, align 8, !tbaa !30
  %122 = getelementptr inbounds ptr, ptr %0, i64 %70
  %123 = load ptr, ptr %122, align 8, !tbaa !24
  %124 = getelementptr inbounds double, ptr %123, i64 %70
  %125 = load double, ptr %124, align 8, !tbaa !25
  %126 = fcmp oeq double %125, 0.000000e+00
  br i1 %126, label %215, label %127

127:                                              ; preds = %119
  %128 = tail call fastcc double @PerceptibleReciprocal(double noundef %125) #20
  store double 1.000000e+00, ptr %124, align 8, !tbaa !25
  br label %130

129:                                              ; preds = %130
  br i1 %29, label %137, label %146

130:                                              ; preds = %127, %130
  %131 = phi i64 [ %135, %130 ], [ 0, %127 ]
  %132 = getelementptr inbounds double, ptr %123, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !25
  %134 = fmul double %128, %133
  store double %134, ptr %132, align 8, !tbaa !25
  %135 = add nuw nsw i64 %131, 1
  %136 = icmp eq i64 %135, %2
  br i1 %136, label %129, label %130, !llvm.loop !35

137:                                              ; preds = %129, %137
  %138 = phi i64 [ %144, %137 ], [ 0, %129 ]
  %139 = getelementptr inbounds ptr, ptr %1, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !24
  %141 = getelementptr inbounds double, ptr %140, i64 %70
  %142 = load double, ptr %141, align 8, !tbaa !25
  %143 = fmul double %128, %142
  store double %143, ptr %141, align 8, !tbaa !25
  %144 = add nuw nsw i64 %138, 1
  %145 = icmp eq i64 %144, %3
  br i1 %145, label %146, label %137, !llvm.loop !36

146:                                              ; preds = %137, %129
  br label %147

147:                                              ; preds = %146, %177
  %148 = phi i64 [ %178, %177 ], [ 0, %146 ]
  %149 = icmp eq i64 %148, %70
  br i1 %149, label %177, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds ptr, ptr %0, i64 %148
  %152 = load ptr, ptr %151, align 8, !tbaa !24
  %153 = getelementptr inbounds double, ptr %152, i64 %70
  %154 = load double, ptr %153, align 8, !tbaa !25
  store double 0.000000e+00, ptr %153, align 8, !tbaa !25
  %155 = fneg double %154
  br label %157

156:                                              ; preds = %157
  br i1 %29, label %166, label %177

157:                                              ; preds = %150, %157
  %158 = phi i64 [ 0, %150 ], [ %164, %157 ]
  %159 = getelementptr inbounds double, ptr %123, i64 %158
  %160 = load double, ptr %159, align 8, !tbaa !25
  %161 = getelementptr inbounds double, ptr %152, i64 %158
  %162 = load double, ptr %161, align 8, !tbaa !25
  %163 = tail call double @llvm.fmuladd.f64(double %155, double %160, double %162)
  store double %163, ptr %161, align 8, !tbaa !25
  %164 = add nuw nsw i64 %158, 1
  %165 = icmp eq i64 %164, %2
  br i1 %165, label %156, label %157, !llvm.loop !37

166:                                              ; preds = %156, %166
  %167 = phi i64 [ %175, %166 ], [ 0, %156 ]
  %168 = getelementptr inbounds ptr, ptr %1, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !24
  %170 = getelementptr inbounds double, ptr %169, i64 %70
  %171 = load double, ptr %170, align 8, !tbaa !25
  %172 = getelementptr inbounds double, ptr %169, i64 %148
  %173 = load double, ptr %172, align 8, !tbaa !25
  %174 = tail call double @llvm.fmuladd.f64(double %155, double %171, double %173)
  store double %174, ptr %172, align 8, !tbaa !25
  %175 = add nuw nsw i64 %167, 1
  %176 = icmp eq i64 %175, %3
  br i1 %176, label %177, label %166, !llvm.loop !38

177:                                              ; preds = %166, %156, %147
  %178 = add nuw nsw i64 %148, 1
  %179 = icmp eq i64 %178, %2
  br i1 %179, label %180, label %147, !llvm.loop !39

180:                                              ; preds = %177
  %181 = add nuw nsw i64 %33, 1
  %182 = icmp eq i64 %181, %2
  br i1 %182, label %34, label %30, !llvm.loop !40

183:                                              ; preds = %34, %209
  %184 = phi i64 [ %185, %209 ], [ %2, %34 ]
  %185 = add nsw i64 %184, -1
  %186 = getelementptr inbounds i64, ptr %5, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !30
  %188 = getelementptr inbounds i64, ptr %6, i64 %185
  %189 = load i64, ptr %188, align 8, !tbaa !30
  %190 = icmp eq i64 %187, %189
  br i1 %190, label %209, label %191

191:                                              ; preds = %183, %206
  %192 = phi i64 [ %207, %206 ], [ 0, %183 ]
  %193 = getelementptr inbounds ptr, ptr %0, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !24
  %195 = getelementptr inbounds double, ptr %194, i64 %189
  %196 = load double, ptr %195, align 8, !tbaa !25
  %197 = getelementptr inbounds double, ptr %194, i64 %187
  %198 = load double, ptr %197, align 8, !tbaa !25
  %199 = fcmp une double %196, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %191
  %201 = fadd double %196, %198
  store double %201, ptr %195, align 8, !tbaa !25
  %202 = load double, ptr %197, align 8, !tbaa !25
  %203 = fsub double %201, %202
  store double %203, ptr %197, align 8, !tbaa !25
  %204 = load double, ptr %195, align 8, !tbaa !25
  %205 = fsub double %204, %203
  store double %205, ptr %195, align 8, !tbaa !25
  br label %206

206:                                              ; preds = %191, %200
  %207 = add nuw nsw i64 %192, 1
  %208 = icmp eq i64 %207, %2
  br i1 %208, label %209, label %191, !llvm.loop !41

209:                                              ; preds = %206, %183
  %210 = icmp sgt i64 %184, 1
  br i1 %210, label %183, label %211, !llvm.loop !42

211:                                              ; preds = %209, %22, %34
  %212 = tail call ptr @RelinquishMagickMemory(ptr noundef %7) #19
  %213 = tail call ptr @RelinquishMagickMemory(ptr noundef %6) #19
  %214 = tail call ptr @RelinquishMagickMemory(ptr noundef %5) #19
  br label %215

215:                                              ; preds = %119, %53, %19, %20, %211
  %216 = phi i32 [ 1, %211 ], [ 0, %20 ], [ 0, %19 ], [ 0, %53 ], [ 0, %119 ]
  ret i32 %216
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #6 {
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
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetMatrixColumns(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !13
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMatrixElement(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = tail call fastcc i64 @EdgeY(i64 noundef %2, i64 noundef %6) #20
  %8 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = mul i64 %9, %7
  %11 = tail call fastcc i64 @EdgeX(i64 noundef %1, i64 noundef %9) #20
  %12 = add i64 %10, %11
  %13 = load i32, ptr %0, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !15
  %20 = mul i64 %19, %12
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %21, i64 %19, i1 false)
  br label %30

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !15
  %25 = mul i64 %24, %12
  %26 = tail call fastcc i64 @ReadMatrixElements(ptr noundef nonnull %0, i64 noundef %25, i64 noundef %24, ptr noundef %3) #20
  %27 = load i64, ptr %23, align 8, !tbaa !15
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %22, %15
  %31 = phi i32 [ 1, %15 ], [ %29, %22 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @EdgeY(i64 noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = icmp slt i64 %0, 0
  %4 = icmp slt i64 %0, %1
  %5 = add i64 %1, -1
  %6 = select i1 %4, i64 %0, i64 %5
  %7 = select i1 %3, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @EdgeX(i64 noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = icmp slt i64 %0, 0
  %4 = icmp slt i64 %0, %1
  %5 = add i64 %1, -1
  %6 = select i1 %4, i64 %0, i64 %5
  %7 = select i1 %3, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ReadMatrixElements(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @LockSemaphoreInfo(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !22
  %9 = tail call i64 @lseek(i32 noundef %8, i64 noundef %1, i32 noundef 0) #19
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = icmp sgt i64 %2, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %11, %24
  %14 = phi i64 [ %26, %24 ], [ 0, %11 ]
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  %16 = sub nsw i64 %2, %14
  %17 = tail call fastcc i64 @MagickMin(i64 noundef %16) #20
  %18 = tail call i64 @read(i32 noundef %8, ptr noundef %15, i64 noundef %17) #19
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = tail call ptr @__errno_location() #22
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %13, %20
  %25 = phi i64 [ 0, %20 ], [ %18, %13 ]
  %26 = add nuw nsw i64 %25, %14
  %27 = icmp slt i64 %26, %2
  br i1 %27, label %13, label %28, !llvm.loop !44

28:                                               ; preds = %20, %24, %11, %4
  %29 = phi i64 [ -1, %4 ], [ 0, %11 ], [ %14, %20 ], [ %26, %24 ]
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #19
  ret i64 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetMatrixRows(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !14
  ret i64 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LeastSquaresAddTerms(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #9 {
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
  %19 = load double, ptr %18, align 8, !tbaa !25
  %20 = load double, ptr %12, align 8, !tbaa !25
  %21 = getelementptr inbounds ptr, ptr %0, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = getelementptr inbounds double, ptr %22, i64 %11
  %24 = load double, ptr %23, align 8, !tbaa !25
  %25 = tail call double @llvm.fmuladd.f64(double %19, double %20, double %24)
  store double %25, ptr %23, align 8, !tbaa !25
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, %4
  br i1 %27, label %13, label %16, !llvm.loop !45

28:                                               ; preds = %14, %28
  %29 = phi i64 [ 0, %14 ], [ %38, %28 ]
  %30 = getelementptr inbounds double, ptr %3, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !25
  %32 = load double, ptr %15, align 8, !tbaa !25
  %33 = getelementptr inbounds ptr, ptr %1, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = getelementptr inbounds double, ptr %34, i64 %11
  %36 = load double, ptr %35, align 8, !tbaa !25
  %37 = tail call double @llvm.fmuladd.f64(double %31, double %32, double %36)
  store double %37, ptr %35, align 8, !tbaa !25
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, %5
  br i1 %39, label %40, label %28, !llvm.loop !46

40:                                               ; preds = %28, %13
  %41 = add nuw nsw i64 %11, 1
  %42 = icmp eq i64 %41, %4
  br i1 %42, label %43, label %10, !llvm.loop !47

43:                                               ; preds = %40, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MatrixToImage(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %122, label %8

8:                                                ; preds = %2
  %9 = call i32 @GetMatrixElement(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3) #20, !range !23
  %10 = load double, ptr %3, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !13
  br label %17

17:                                               ; preds = %14, %44
  %18 = phi i64 [ %12, %14 ], [ %45, %44 ]
  %19 = phi i64 [ %16, %14 ], [ %46, %44 ]
  %20 = phi i64 [ 0, %14 ], [ %49, %44 ]
  %21 = phi double [ %10, %14 ], [ %48, %44 ]
  %22 = phi double [ %10, %14 ], [ %47, %44 ]
  %23 = icmp sgt i64 %19, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %17, %36
  %25 = phi i64 [ %39, %36 ], [ 0, %17 ]
  %26 = phi double [ %38, %36 ], [ %21, %17 ]
  %27 = phi double [ %37, %36 ], [ %22, %17 ]
  %28 = call i32 @GetMatrixElement(ptr noundef nonnull %0, i64 noundef %25, i64 noundef %20, ptr noundef nonnull %3) #20, !range !23
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load double, ptr %3, align 8, !tbaa !25
  %32 = fcmp olt double %31, %26
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = fcmp ogt double %31, %27
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %30, %35, %33, %24
  %37 = phi double [ %27, %24 ], [ %31, %35 ], [ %27, %33 ], [ %27, %30 ]
  %38 = phi double [ %26, %24 ], [ %26, %35 ], [ %26, %33 ], [ %31, %30 ]
  %39 = add nuw nsw i64 %25, 1
  %40 = load i64, ptr %15, align 8, !tbaa !13
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %24, label %42, !llvm.loop !48

42:                                               ; preds = %36
  %43 = load i64, ptr %11, align 8, !tbaa !14
  br label %44

44:                                               ; preds = %42, %17
  %45 = phi i64 [ %18, %17 ], [ %43, %42 ]
  %46 = phi i64 [ %19, %17 ], [ %40, %42 ]
  %47 = phi double [ %22, %17 ], [ %37, %42 ]
  %48 = phi double [ %21, %17 ], [ %38, %42 ]
  %49 = add nuw nsw i64 %20, 1
  %50 = icmp slt i64 %49, %45
  br i1 %50, label %17, label %51, !llvm.loop !49

51:                                               ; preds = %44, %8
  %52 = phi double [ %10, %8 ], [ %47, %44 ]
  %53 = phi double [ %10, %8 ], [ %48, %44 ]
  %54 = fcmp oeq double %53, 0.000000e+00
  %55 = fcmp oeq double %52, 0.000000e+00
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = fcmp oeq double %53, %52
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = fdiv double 6.553500e+04, %53
  br label %64

61:                                               ; preds = %57
  %62 = fsub double %52, %53
  %63 = fdiv double 6.553500e+04, %62
  br label %64

64:                                               ; preds = %51, %59, %61
  %65 = phi double [ 0.000000e+00, %59 ], [ %53, %61 ], [ %53, %51 ]
  %66 = phi double [ %60, %59 ], [ %63, %61 ], [ 0.000000e+00, %51 ]
  %67 = tail call ptr @AcquireImage(ptr noundef null) #19
  %68 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %69 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 7
  %70 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 8
  %71 = load <2 x i64>, ptr %68, align 8, !tbaa !30
  store <2 x i64> %71, ptr %69, align 8, !tbaa !30
  %72 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 1
  store i32 2, ptr %72, align 4, !tbaa !50
  %73 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %67, ptr noundef %1) #19
  %74 = load i64, ptr %70, align 8, !tbaa !62
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %64
  %77 = tail call ptr @DestroyCacheView(ptr noundef %73) #19
  br label %122

78:                                               ; preds = %64, %112
  %79 = phi i64 [ %114, %112 ], [ 0, %64 ]
  %80 = phi i32 [ %113, %112 ], [ 1, %64 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %112, label %82

82:                                               ; preds = %78
  %83 = load i64, ptr %69, align 8, !tbaa !63
  %84 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %73, i64 noundef 0, i64 noundef %79, i64 noundef %83, i64 noundef 1, ptr noundef %1) #24
  %85 = icmp eq ptr %84, null
  br i1 %85, label %112, label %86

86:                                               ; preds = %82
  %87 = load i64, ptr %69, align 8, !tbaa !63
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86, %103
  %90 = phi i64 [ %105, %103 ], [ 0, %86 ]
  %91 = phi ptr [ %104, %103 ], [ %84, %86 ]
  %92 = call i32 @GetMatrixElement(ptr noundef %0, i64 noundef %90, i64 noundef %79, ptr noundef nonnull %4) #20, !range !23
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load double, ptr %4, align 8, !tbaa !25
  %96 = fsub double %95, %65
  %97 = fmul double %66, %96
  store double %97, ptr %4, align 8, !tbaa !25
  %98 = fptrunc double %97 to float
  %99 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #20
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 2
  store i16 %99, ptr %100, align 2, !tbaa !64
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 1
  store i16 %99, ptr %101, align 2, !tbaa !65
  store i16 %99, ptr %91, align 2, !tbaa !66
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  br label %103

103:                                              ; preds = %89, %94
  %104 = phi ptr [ %91, %89 ], [ %102, %94 ]
  %105 = add nuw nsw i64 %90, 1
  %106 = load i64, ptr %69, align 8, !tbaa !63
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %89, label %108, !llvm.loop !67

108:                                              ; preds = %103, %86
  %109 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %73, ptr noundef %1) #24
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  br label %112

112:                                              ; preds = %82, %78, %108
  %113 = phi i32 [ %111, %108 ], [ 0, %78 ], [ 0, %82 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  %114 = add nuw nsw i64 %79, 1
  %115 = load i64, ptr %70, align 8, !tbaa !62
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %78, label %117, !llvm.loop !68

117:                                              ; preds = %112
  %118 = icmp eq i32 %113, 0
  %119 = tail call ptr @DestroyCacheView(ptr noundef %73) #19
  br i1 %118, label %120, label %122

120:                                              ; preds = %117
  %121 = tail call ptr @DestroyImage(ptr noundef nonnull %67) #19
  br label %122

122:                                              ; preds = %76, %117, %120, %2
  %123 = phi ptr [ null, %2 ], [ %121, %120 ], [ %67, %117 ], [ %67, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret ptr %123
}

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #6 {
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
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NullMatrix(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #23
  %3 = load i32, ptr %0, align 8, !tbaa !19
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !18
  %10 = tail call ptr @ResetMagickMemory(ptr noundef %7, i32 noundef 0, i64 noundef %9) #19
  br label %51

11:                                               ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !69
  %12 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !22
  %14 = tail call i64 @lseek(i32 noundef %13, i64 noundef 0, i32 noundef 0) #19
  %15 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !14
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %18, %43
  %22 = phi i64 [ %16, %18 ], [ %39, %43 ]
  %23 = phi i64 [ %20, %18 ], [ %40, %43 ]
  %24 = phi i64 [ 0, %18 ], [ %44, %43 ]
  %25 = icmp sgt i64 %23, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21, %32
  %27 = phi i64 [ %33, %32 ], [ 0, %21 ]
  %28 = load i32, ptr %12, align 8, !tbaa !22
  %29 = call i64 @write(i32 noundef %28, ptr noundef nonnull %2, i64 noundef 1) #19
  %30 = icmp eq i64 %29, 1
  %31 = load i64, ptr %19, align 8, !tbaa !18
  br i1 %30, label %32, label %35

32:                                               ; preds = %26
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp slt i64 %33, %31
  br i1 %34, label %26, label %35, !llvm.loop !70

35:                                               ; preds = %26, %32
  %36 = phi i64 [ %33, %32 ], [ %27, %26 ]
  %37 = load i64, ptr %15, align 8, !tbaa !14
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
  br i1 %45, label %21, label %46, !llvm.loop !71

46:                                               ; preds = %43, %38, %11
  %47 = phi i64 [ %16, %11 ], [ %39, %38 ], [ %39, %43 ]
  %48 = phi i64 [ 0, %11 ], [ %44, %43 ], [ %24, %38 ]
  %49 = icmp sge i64 %48, %47
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %46, %5
  %52 = phi i32 [ 1, %5 ], [ %50, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #23
  ret i32 %52
}

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

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
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef %9) #19
  store ptr %10, ptr %8, align 8, !tbaa !24
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %13, label %6, !llvm.loop !72

13:                                               ; preds = %6, %4
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #19
  br label %15

15:                                               ; preds = %2, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetMatrixElement(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = mul i64 %6, %2
  %8 = add i64 %7, %1
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = mul i64 %12, %8
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !18
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load i32, ptr %0, align 8, !tbaa !19
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = getelementptr inbounds i8, ptr %22, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %3, i64 %12, i1 false)
  br label %29

24:                                               ; preds = %17
  %25 = tail call fastcc i64 @WriteMatrixElements(ptr noundef nonnull %0, i64 noundef %13, i64 noundef %12, ptr noundef %3) #20
  %26 = load i64, ptr %11, align 8, !tbaa !15
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %4, %10, %20
  %30 = phi i32 [ 1, %20 ], [ 0, %10 ], [ 0, %4 ], [ %28, %24 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @WriteMatrixElements(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @LockSemaphoreInfo(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !22
  %9 = tail call i64 @lseek(i32 noundef %8, i64 noundef %1, i32 noundef 0) #19
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = icmp sgt i64 %2, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %11, %24
  %14 = phi i64 [ %26, %24 ], [ 0, %11 ]
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  %16 = sub nsw i64 %2, %14
  %17 = tail call fastcc i64 @MagickMin(i64 noundef %16) #20
  %18 = tail call i64 @write(i32 noundef %8, ptr noundef %15, i64 noundef %17) #19
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = tail call ptr @__errno_location() #22
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %13, %20
  %25 = phi i64 [ 0, %20 ], [ %18, %13 ]
  %26 = add nuw nsw i64 %25, %14
  %27 = icmp slt i64 %26, %2
  br i1 %27, label %13, label %28, !llvm.loop !73

28:                                               ; preds = %20, %24, %11, %4
  %29 = phi i64 [ -1, %4 ], [ 0, %11 ], [ %14, %20 ], [ %26, %24 ]
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #19
  ret i64 %29
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal void @MatrixSignalHandler(i32 %0) #13 {
  %2 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #23
  call void @GetExceptionInfo(ptr noundef nonnull %2) #19
  %3 = tail call ptr @__errno_location() #22
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = call ptr @GetExceptionMessage(i32 noundef %4) #19
  %6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 132, i32 noundef 745, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %5) #19
  %7 = call ptr @DestroyString(ptr noundef %5) #19
  call void @CatchException(ptr noundef nonnull %2) #19
  %8 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 46) #25
  unreachable
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #6 {
  %2 = tail call i64 @llvm.umin.i64(i64 %0, i64 9223372036854775807)
  ret i64 %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind optsize allocsize(0) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize allocsize(0,1) }
attributes #22 = { nounwind optsize willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { hot nounwind optsize }
attributes #25 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 4168}
!6 = !{!"_MatrixInfo", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !8, i64 48, !7, i64 4144, !12, i64 4152, !12, i64 4160, !10, i64 4168}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"long long", !8, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!6, !10, i64 8}
!14 = !{!6, !10, i64 16}
!15 = !{!6, !10, i64 24}
!16 = !{!6, !12, i64 4160}
!17 = !{!6, !7, i64 44}
!18 = !{!6, !11, i64 32}
!19 = !{!6, !7, i64 0}
!20 = !{!6, !7, i64 40}
!21 = !{!6, !12, i64 4152}
!22 = !{!6, !7, i64 4144}
!23 = !{i32 0, i32 2}
!24 = !{!12, !12, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !8, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!10, !10, i64 0}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = !{!7, !7, i64 0}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = !{!51, !7, i64 4}
!51 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !12, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !26, i64 104, !54, i64 112, !7, i64 208, !12, i64 216, !7, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !10, i64 256, !26, i64 264, !26, i64 272, !56, i64 280, !56, i64 312, !56, i64 344, !26, i64 376, !26, i64 384, !26, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !12, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !57, i64 480, !58, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !60, i64 12920, !7, i64 12976, !10, i64 12984, !12, i64 12992, !61, i64 13000, !61, i64 13032, !12, i64 13064, !10, i64 13072, !10, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !7, i64 13112, !7, i64 13116, !52, i64 13120, !12, i64 13128, !56, i64 13136, !12, i64 13168, !12, i64 13176, !7, i64 13184, !7, i64 13188, !11, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!52 = !{!"_PixelPacket", !53, i64 0, !53, i64 2, !53, i64 4, !53, i64 6}
!53 = !{!"short", !8, i64 0}
!54 = !{!"_ChromaticityInfo", !55, i64 0, !55, i64 24, !55, i64 48, !55, i64 72}
!55 = !{!"_PrimaryInfo", !26, i64 0, !26, i64 8, !26, i64 16}
!56 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!57 = !{!"_ErrorInfo", !26, i64 0, !26, i64 8, !26, i64 16}
!58 = !{!"_TimerInfo", !59, i64 0, !59, i64 24, !7, i64 48, !10, i64 56}
!59 = !{!"_Timer", !26, i64 0, !26, i64 8, !26, i64 16}
!60 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !12, i64 40, !10, i64 48}
!61 = !{!"_ProfileInfo", !12, i64 0, !10, i64 8, !12, i64 16, !10, i64 24}
!62 = !{!51, !10, i64 48}
!63 = !{!51, !10, i64 40}
!64 = !{!52, !53, i64 4}
!65 = !{!52, !53, i64 2}
!66 = !{!52, !53, i64 0}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = !{!8, !8, i64 0}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28}
