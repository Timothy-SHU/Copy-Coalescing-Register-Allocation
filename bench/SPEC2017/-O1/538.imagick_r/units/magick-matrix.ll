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

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireMatrixInfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call dereferenceable_or_null(4176) ptr @AcquireMagickMemory(i64 noundef 4176) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %115, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @ResetMagickMemory(ptr noundef %5, i32 noundef 0, i64 noundef 4176) #19
  %9 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 11
  store i64 2880220587, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 1
  store i64 %0, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 2
  store i64 %1, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 3
  store i64 %2, ptr %12, align 8, !tbaa !44
  %13 = tail call ptr @AllocateSemaphoreInfo() #19
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 10
  store ptr %13, ptr %14, align 8, !tbaa !45
  %15 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = tail call i32 @IsStringTrue(ptr noundef nonnull %15) #19
  %19 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 6
  store i32 %18, ptr %19, align 4, !tbaa !46
  %20 = tail call ptr @DestroyString(ptr noundef nonnull %15) #19
  br label %21

21:                                               ; preds = %17, %7
  %22 = mul i64 %1, %0
  %23 = mul i64 %22, %2
  %24 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 4
  store i64 %23, ptr %24, align 8, !tbaa !47
  %25 = load i64, ptr %10, align 8, !tbaa !42
  %26 = udiv i64 %23, %1
  %27 = udiv i64 %26, %2
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 241, i32 noundef 445, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #19
  %31 = tail call ptr @DestroyMatrixInfo(ptr noundef %5)
  br label %115

32:                                               ; preds = %21
  store i32 1, ptr %5, align 8, !tbaa !48
  %33 = tail call i32 @AcquireMagickResource(i32 noundef 1, i64 noundef %23) #19
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %24, align 8, !tbaa !47
  %37 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 5
  store i32 0, ptr %40, align 8, !tbaa !49
  %41 = load i64, ptr %24, align 8, !tbaa !47
  %42 = tail call ptr @AcquireMagickMemory(i64 noundef %41) #18
  %43 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 9
  store ptr %42, ptr %43, align 8, !tbaa !50
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  store i32 1, ptr %40, align 8, !tbaa !49
  %46 = load i64, ptr %24, align 8, !tbaa !47
  %47 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %46) #19
  store ptr %47, ptr %43, align 8, !tbaa !50
  br label %48

48:                                               ; preds = %45, %39
  %49 = load ptr, ptr %43, align 8, !tbaa !50
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i64, ptr %24, align 8, !tbaa !47
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %52) #19
  br label %53

53:                                               ; preds = %35, %51, %48, %32
  %54 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 8
  store i32 -1, ptr %54, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %115

58:                                               ; preds = %53
  %59 = load i64, ptr %24, align 8, !tbaa !47
  %60 = tail call i32 @AcquireMagickResource(i32 noundef 2, i64 noundef %59) #19
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 272, i32 noundef 445, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #19
  %64 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %5)
  br label %115

65:                                               ; preds = %58
  store i32 3, ptr %5, align 8, !tbaa !48
  %66 = load i64, ptr %24, align 8, !tbaa !47
  %67 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %66) #19
  %68 = getelementptr inbounds %struct._MatrixInfo, ptr %5, i64 0, i32 7
  %69 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %68) #19
  store i32 %69, ptr %54, align 8, !tbaa !51
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %5)
  br label %115

73:                                               ; preds = %65
  %74 = load i64, ptr %24, align 8, !tbaa !47
  %75 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %74) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %115, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %24, align 8, !tbaa !47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %79 = load i32, ptr %54, align 8, !tbaa !51, !alias.scope !52
  %80 = tail call i64 @lseek(i32 noundef %79, i64 noundef 0, i32 noundef 2) #19, !noalias !52
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %115, label %82

82:                                               ; preds = %77
  %83 = icmp ult i64 %80, %78
  br i1 %83, label %84, label %107

84:                                               ; preds = %82
  %85 = add nsw i64 %78, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %86 = load ptr, ptr %14, align 8, !tbaa !45, !alias.scope !58, !noalias !59
  tail call void @LockSemaphoreInfo(ptr noundef %86) #19, !noalias !61
  %87 = tail call i64 @lseek(i32 noundef %79, i64 noundef %85, i32 noundef 0) #19, !noalias !61
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  tail call void @UnlockSemaphoreInfo(ptr noundef %86) #19, !noalias !61
  %90 = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @MatrixSignalHandler) #19, !noalias !52
  br label %115

91:                                               ; preds = %84, %100
  %92 = phi i64 [ %101, %100 ], [ 0, %84 ]
  %93 = getelementptr inbounds i8, ptr @.str.2, i64 %92
  %94 = tail call i64 @write(i32 noundef %79, ptr noundef nonnull %93, i64 noundef 1) #19, !noalias !58
  %95 = icmp slt i64 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = tail call ptr @__errno_location() #20
  %98 = load i32, ptr %97, align 4, !tbaa !62, !noalias !61
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %103

100:                                              ; preds = %96, %91
  %101 = phi i64 [ 0, %96 ], [ %94, %91 ]
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %91, label %103, !llvm.loop !63

103:                                              ; preds = %96, %100
  %104 = phi i64 [ %92, %96 ], [ %101, %100 ]
  tail call void @UnlockSemaphoreInfo(ptr noundef %86) #19, !noalias !61
  %105 = icmp eq i64 %104, 1
  %106 = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @MatrixSignalHandler) #19, !noalias !52
  br i1 %105, label %107, label %115

107:                                              ; preds = %82, %103
  %108 = load i32, ptr %54, align 8, !tbaa !51
  %109 = load i64, ptr %24, align 8, !tbaa !47
  %110 = tail call ptr @MapBlob(i32 noundef %108, i32 noundef 2, i64 noundef 0, i64 noundef %109) #19
  store ptr %110, ptr %55, align 8, !tbaa !50
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i32 2, ptr %5, align 8, !tbaa !48
  br label %115

113:                                              ; preds = %107
  %114 = load i64, ptr %24, align 8, !tbaa !47
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %114) #19
  br label %115

115:                                              ; preds = %89, %77, %53, %103, %113, %112, %73, %4, %71, %62, %29
  %116 = phi ptr [ %31, %29 ], [ %64, %62 ], [ %72, %71 ], [ null, %4 ], [ %5, %73 ], [ %5, %112 ], [ %5, %113 ], [ %5, %103 ], [ %5, %53 ], [ %5, %77 ], [ %5, %89 ]
  ret ptr %116
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #3

declare i32 @IsStringTrue(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyMatrixInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void @LockSemaphoreInfo(ptr noundef %3) #19
  %4 = load i32, ptr %0, align 8, !tbaa !48
  switch i32 %4, label %39 [
    i32 1, label %5
    i32 2, label %19
    i32 3, label %26
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !49
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  br i1 %8, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call ptr @RelinquishMagickMemory(ptr noundef %10) #19
  br label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = tail call i32 @UnmapBlob(ptr noundef %10, i64 noundef %15) #19
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi ptr [ null, %13 ], [ %12, %11 ]
  store ptr %18, ptr %9, align 8, !tbaa !50
  br label %35

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !47
  %24 = tail call i32 @UnmapBlob(ptr noundef %21, i64 noundef %23) #19
  store ptr null, ptr %20, align 8, !tbaa !50
  %25 = load i64, ptr %22, align 8, !tbaa !47
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %25) #19
  br label %26

26:                                               ; preds = %1, %19
  %27 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 8, !tbaa !51
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
  %38 = load i64, ptr %37, align 8, !tbaa !47
  tail call void @RelinquishMagickResource(i32 noundef %36, i64 noundef %38) #19
  br label %39

39:                                               ; preds = %35, %1
  %40 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #19
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %2) #19
  %41 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #19
  ret ptr %41
}

declare i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
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
  store ptr %12, ptr %13, align 8, !tbaa !66
  %14 = icmp eq ptr %12, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  br i1 %8, label %16, label %28

16:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %12, i8 0, i64 %9, i1 false), !tbaa !67
  br label %28

17:                                               ; preds = %10
  %18 = icmp eq i64 %11, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %17 ]
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef %22) #19
  store ptr %23, ptr %21, align 8, !tbaa !66
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %11
  br i1 %25, label %26, label %19, !llvm.loop !69

26:                                               ; preds = %19, %17
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #19
  br label %31

28:                                               ; preds = %16, %15
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp eq i64 %29, %0
  br i1 %30, label %31, label %10, !llvm.loop !70

31:                                               ; preds = %28, %5, %2, %26
  %32 = phi ptr [ null, %26 ], [ null, %2 ], [ %3, %5 ], [ %3, %28 ]
  ret ptr %32
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #3

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  br i1 %8, label %226, label %20

20:                                               ; preds = %19
  %21 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #19
  br label %226

22:                                               ; preds = %4
  %23 = shl i64 %2, 3
  %24 = tail call ptr @ResetMagickMemory(ptr noundef %5, i32 noundef 0, i64 noundef %23) #19
  %25 = tail call ptr @ResetMagickMemory(ptr noundef %6, i32 noundef 0, i64 noundef %23) #19
  %26 = tail call ptr @ResetMagickMemory(ptr noundef %7, i32 noundef 0, i64 noundef %23) #19
  %27 = icmp sgt i64 %2, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = icmp sgt i64 %3, 0
  %30 = icmp sgt i64 %3, 0
  %31 = icmp sgt i64 %3, 0
  br label %32

32:                                               ; preds = %28, %191
  %33 = phi i64 [ 0, %28 ], [ %74, %191 ]
  %34 = phi i64 [ 0, %28 ], [ %73, %191 ]
  %35 = phi i64 [ 0, %28 ], [ %192, %191 ]
  br label %38

36:                                               ; preds = %191, %22
  %37 = icmp sgt i64 %2, 0
  br i1 %37, label %194, label %222

38:                                               ; preds = %32, %71
  %39 = phi i64 [ %74, %71 ], [ %33, %32 ]
  %40 = phi i64 [ %73, %71 ], [ %34, %32 ]
  %41 = phi i64 [ %75, %71 ], [ 0, %32 ]
  %42 = phi double [ %72, %71 ], [ 0.000000e+00, %32 ]
  %43 = getelementptr inbounds i64, ptr %7, i64 %41
  %44 = load i64, ptr %43, align 8, !tbaa !71
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %71, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds ptr, ptr %0, i64 %41
  br label %48

48:                                               ; preds = %46, %65
  %49 = phi i64 [ %39, %46 ], [ %68, %65 ]
  %50 = phi i64 [ %40, %46 ], [ %67, %65 ]
  %51 = phi i64 [ 0, %46 ], [ %69, %65 ]
  %52 = phi double [ %42, %46 ], [ %66, %65 ]
  %53 = getelementptr inbounds i64, ptr %7, i64 %51
  %54 = load i64, ptr %53, align 8, !tbaa !71
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = icmp sgt i64 %54, 1
  br i1 %57, label %226, label %65

58:                                               ; preds = %48
  %59 = load ptr, ptr %47, align 8, !tbaa !66
  %60 = getelementptr inbounds double, ptr %59, i64 %51
  %61 = load double, ptr %60, align 8, !tbaa !67
  %62 = tail call double @llvm.fabs.f64(double %61)
  %63 = fcmp ult double %62, %52
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %56, %64, %58
  %66 = phi double [ %52, %56 ], [ %62, %64 ], [ %52, %58 ]
  %67 = phi i64 [ %50, %56 ], [ %51, %64 ], [ %50, %58 ]
  %68 = phi i64 [ %49, %56 ], [ %41, %64 ], [ %49, %58 ]
  %69 = add nuw nsw i64 %51, 1
  %70 = icmp eq i64 %69, %2
  br i1 %70, label %71, label %48, !llvm.loop !72

71:                                               ; preds = %65, %38
  %72 = phi double [ %42, %38 ], [ %66, %65 ]
  %73 = phi i64 [ %40, %38 ], [ %67, %65 ]
  %74 = phi i64 [ %39, %38 ], [ %68, %65 ]
  %75 = add nuw nsw i64 %41, 1
  %76 = icmp eq i64 %75, %2
  br i1 %76, label %77, label %38, !llvm.loop !73

77:                                               ; preds = %71
  %78 = getelementptr inbounds i64, ptr %7, i64 %73
  %79 = load i64, ptr %78, align 8, !tbaa !71
  %80 = add nsw i64 %79, 1
  store i64 %80, ptr %78, align 8, !tbaa !71
  %81 = icmp eq i64 %74, %73
  br i1 %81, label %122, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds ptr, ptr %0, i64 %74
  %84 = load ptr, ptr %83, align 8, !tbaa !66
  %85 = getelementptr inbounds ptr, ptr %0, i64 %73
  %86 = load ptr, ptr %85, align 8, !tbaa !66
  br label %88

87:                                               ; preds = %101
  br i1 %29, label %104, label %122

88:                                               ; preds = %82, %101
  %89 = phi i64 [ 0, %82 ], [ %102, %101 ]
  %90 = getelementptr inbounds double, ptr %84, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !67
  %92 = getelementptr inbounds double, ptr %86, i64 %89
  %93 = load double, ptr %92, align 8, !tbaa !67
  %94 = fcmp une double %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = fadd double %91, %93
  store double %96, ptr %90, align 8, !tbaa !67
  %97 = load double, ptr %92, align 8, !tbaa !67
  %98 = fsub double %96, %97
  store double %98, ptr %92, align 8, !tbaa !67
  %99 = load double, ptr %90, align 8, !tbaa !67
  %100 = fsub double %99, %98
  store double %100, ptr %90, align 8, !tbaa !67
  br label %101

101:                                              ; preds = %88, %95
  %102 = add nuw nsw i64 %89, 1
  %103 = icmp eq i64 %102, %2
  br i1 %103, label %87, label %88, !llvm.loop !74

104:                                              ; preds = %87, %119
  %105 = phi i64 [ %120, %119 ], [ 0, %87 ]
  %106 = getelementptr inbounds ptr, ptr %1, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !66
  %108 = getelementptr inbounds double, ptr %107, i64 %74
  %109 = load double, ptr %108, align 8, !tbaa !67
  %110 = getelementptr inbounds double, ptr %107, i64 %73
  %111 = load double, ptr %110, align 8, !tbaa !67
  %112 = fcmp une double %109, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = fadd double %109, %111
  store double %114, ptr %108, align 8, !tbaa !67
  %115 = load double, ptr %110, align 8, !tbaa !67
  %116 = fsub double %114, %115
  store double %116, ptr %110, align 8, !tbaa !67
  %117 = load double, ptr %108, align 8, !tbaa !67
  %118 = fsub double %117, %116
  store double %118, ptr %108, align 8, !tbaa !67
  br label %119

119:                                              ; preds = %104, %113
  %120 = add nuw nsw i64 %105, 1
  %121 = icmp eq i64 %120, %3
  br i1 %121, label %122, label %104, !llvm.loop !75

122:                                              ; preds = %119, %87, %77
  %123 = getelementptr inbounds i64, ptr %6, i64 %35
  store i64 %74, ptr %123, align 8, !tbaa !71
  %124 = getelementptr inbounds i64, ptr %5, i64 %35
  store i64 %73, ptr %124, align 8, !tbaa !71
  %125 = getelementptr inbounds ptr, ptr %0, i64 %73
  %126 = load ptr, ptr %125, align 8, !tbaa !66
  %127 = getelementptr inbounds double, ptr %126, i64 %73
  %128 = load double, ptr %127, align 8, !tbaa !67
  %129 = fcmp oeq double %128, 0.000000e+00
  br i1 %129, label %226, label %130

130:                                              ; preds = %122
  %131 = fcmp olt double %128, 0.000000e+00
  %132 = select i1 %131, double -1.000000e+00, double 1.000000e+00
  %133 = fmul double %128, %132
  %134 = fcmp ult double %133, 1.000000e-15
  %135 = fdiv double 1.000000e+00, %128
  %136 = fdiv double %132, 1.000000e-15
  %137 = select i1 %134, double %136, double %135
  store double 1.000000e+00, ptr %127, align 8, !tbaa !67
  br label %139

138:                                              ; preds = %139
  br i1 %30, label %146, label %155

139:                                              ; preds = %130, %139
  %140 = phi i64 [ %144, %139 ], [ 0, %130 ]
  %141 = getelementptr inbounds double, ptr %126, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !67
  %143 = fmul double %137, %142
  store double %143, ptr %141, align 8, !tbaa !67
  %144 = add nuw nsw i64 %140, 1
  %145 = icmp eq i64 %144, %2
  br i1 %145, label %138, label %139, !llvm.loop !76

146:                                              ; preds = %138, %146
  %147 = phi i64 [ %153, %146 ], [ 0, %138 ]
  %148 = getelementptr inbounds ptr, ptr %1, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !66
  %150 = getelementptr inbounds double, ptr %149, i64 %73
  %151 = load double, ptr %150, align 8, !tbaa !67
  %152 = fmul double %137, %151
  store double %152, ptr %150, align 8, !tbaa !67
  %153 = add nuw nsw i64 %147, 1
  %154 = icmp eq i64 %153, %3
  br i1 %154, label %155, label %146, !llvm.loop !77

155:                                              ; preds = %146, %138
  br label %156

156:                                              ; preds = %155, %188
  %157 = phi i64 [ %189, %188 ], [ 0, %155 ]
  %158 = icmp eq i64 %157, %73
  br i1 %158, label %188, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds ptr, ptr %0, i64 %157
  %161 = load ptr, ptr %160, align 8, !tbaa !66
  %162 = getelementptr inbounds double, ptr %161, i64 %73
  %163 = load double, ptr %162, align 8, !tbaa !67
  store double 0.000000e+00, ptr %162, align 8, !tbaa !67
  %164 = fneg double %163
  br label %168

165:                                              ; preds = %168
  br i1 %31, label %166, label %188

166:                                              ; preds = %165
  %167 = fneg double %163
  br label %177

168:                                              ; preds = %159, %168
  %169 = phi i64 [ 0, %159 ], [ %175, %168 ]
  %170 = getelementptr inbounds double, ptr %126, i64 %169
  %171 = load double, ptr %170, align 8, !tbaa !67
  %172 = getelementptr inbounds double, ptr %161, i64 %169
  %173 = load double, ptr %172, align 8, !tbaa !67
  %174 = tail call double @llvm.fmuladd.f64(double %164, double %171, double %173)
  store double %174, ptr %172, align 8, !tbaa !67
  %175 = add nuw nsw i64 %169, 1
  %176 = icmp eq i64 %175, %2
  br i1 %176, label %165, label %168, !llvm.loop !78

177:                                              ; preds = %166, %177
  %178 = phi i64 [ 0, %166 ], [ %186, %177 ]
  %179 = getelementptr inbounds ptr, ptr %1, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !66
  %181 = getelementptr inbounds double, ptr %180, i64 %73
  %182 = load double, ptr %181, align 8, !tbaa !67
  %183 = getelementptr inbounds double, ptr %180, i64 %157
  %184 = load double, ptr %183, align 8, !tbaa !67
  %185 = tail call double @llvm.fmuladd.f64(double %167, double %182, double %184)
  store double %185, ptr %183, align 8, !tbaa !67
  %186 = add nuw nsw i64 %178, 1
  %187 = icmp eq i64 %186, %3
  br i1 %187, label %188, label %177, !llvm.loop !79

188:                                              ; preds = %177, %165, %156
  %189 = add nuw nsw i64 %157, 1
  %190 = icmp eq i64 %189, %2
  br i1 %190, label %191, label %156, !llvm.loop !80

191:                                              ; preds = %188
  %192 = add nuw nsw i64 %35, 1
  %193 = icmp eq i64 %192, %2
  br i1 %193, label %36, label %32, !llvm.loop !81

194:                                              ; preds = %36, %220
  %195 = phi i64 [ %196, %220 ], [ %2, %36 ]
  %196 = add nsw i64 %195, -1
  %197 = getelementptr inbounds i64, ptr %5, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !71
  %199 = getelementptr inbounds i64, ptr %6, i64 %196
  %200 = load i64, ptr %199, align 8, !tbaa !71
  %201 = icmp eq i64 %198, %200
  br i1 %201, label %220, label %202

202:                                              ; preds = %194, %217
  %203 = phi i64 [ %218, %217 ], [ 0, %194 ]
  %204 = getelementptr inbounds ptr, ptr %0, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !66
  %206 = getelementptr inbounds double, ptr %205, i64 %200
  %207 = load double, ptr %206, align 8, !tbaa !67
  %208 = getelementptr inbounds double, ptr %205, i64 %198
  %209 = load double, ptr %208, align 8, !tbaa !67
  %210 = fcmp une double %207, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %202
  %212 = fadd double %207, %209
  store double %212, ptr %206, align 8, !tbaa !67
  %213 = load double, ptr %208, align 8, !tbaa !67
  %214 = fsub double %212, %213
  store double %214, ptr %208, align 8, !tbaa !67
  %215 = load double, ptr %206, align 8, !tbaa !67
  %216 = fsub double %215, %214
  store double %216, ptr %206, align 8, !tbaa !67
  br label %217

217:                                              ; preds = %202, %211
  %218 = add nuw nsw i64 %203, 1
  %219 = icmp eq i64 %218, %2
  br i1 %219, label %220, label %202, !llvm.loop !82

220:                                              ; preds = %217, %194
  %221 = icmp sgt i64 %195, 1
  br i1 %221, label %194, label %222, !llvm.loop !83

222:                                              ; preds = %220, %36
  %223 = tail call ptr @RelinquishMagickMemory(ptr noundef %7) #19
  %224 = tail call ptr @RelinquishMagickMemory(ptr noundef %6) #19
  %225 = tail call ptr @RelinquishMagickMemory(ptr noundef %5) #19
  br label %226

226:                                              ; preds = %122, %56, %19, %20, %222
  %227 = phi i32 [ 1, %222 ], [ 0, %20 ], [ 0, %19 ], [ 0, %56 ], [ 0, %122 ]
  ret i32 %227
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @GetMatrixColumns(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !42
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMatrixElement(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = icmp slt i64 %2, 0
  %8 = icmp sgt i64 %6, %2
  %9 = add i64 %6, -1
  %10 = select i1 %8, i64 %2, i64 %9
  %11 = select i1 %7, i64 0, i64 %10
  %12 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = mul i64 %11, %13
  %15 = icmp slt i64 %1, 0
  %16 = icmp sgt i64 %13, %1
  %17 = add i64 %13, -1
  %18 = select i1 %16, i64 %1, i64 %17
  %19 = select i1 %15, i64 0, i64 %18
  %20 = add i64 %14, %19
  %21 = load i32, ptr %0, align 8, !tbaa !48
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !44
  %28 = mul i64 %27, %20
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %29, i64 %27, i1 false)
  br label %62

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !44
  %33 = mul i64 %32, %20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %34 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !45, !alias.scope !84, !noalias !87
  tail call void @LockSemaphoreInfo(ptr noundef %35) #19, !noalias !89
  %36 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !51, !alias.scope !84, !noalias !87
  %38 = tail call i64 @lseek(i32 noundef %37, i64 noundef %33, i32 noundef 0) #19, !noalias !89
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %30
  %41 = icmp sgt i64 %32, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %40, %53
  %43 = phi i64 [ %55, %53 ], [ 0, %40 ]
  %44 = getelementptr inbounds i8, ptr %3, i64 %43
  %45 = sub nsw i64 %32, %43
  %46 = tail call i64 @llvm.umin.i64(i64 %45, i64 9223372036854775807)
  %47 = tail call i64 @read(i32 noundef %37, ptr noundef %44, i64 noundef %46) #19, !noalias !84
  %48 = icmp slt i64 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = tail call ptr @__errno_location() #20
  %51 = load i32, ptr %50, align 4, !tbaa !62, !noalias !89
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %42
  %54 = phi i64 [ 0, %49 ], [ %47, %42 ]
  %55 = add nuw nsw i64 %54, %43
  %56 = icmp slt i64 %55, %32
  br i1 %56, label %42, label %57, !llvm.loop !90

57:                                               ; preds = %49, %53, %40, %30
  %58 = phi i64 [ -1, %30 ], [ 0, %40 ], [ %55, %53 ], [ %43, %49 ]
  tail call void @UnlockSemaphoreInfo(ptr noundef %35) #19, !noalias !89
  %59 = load i64, ptr %31, align 8, !tbaa !44
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %57, %23
  %63 = phi i32 [ 1, %23 ], [ %61, %57 ]
  ret i32 %63
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @GetMatrixRows(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !43
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LeastSquaresAddTerms(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #8 {
  %7 = icmp sgt i64 %4, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %6
  %9 = icmp sgt i64 %5, 0
  br label %10

10:                                               ; preds = %8, %40
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
  %19 = load double, ptr %18, align 8, !tbaa !67
  %20 = load double, ptr %12, align 8, !tbaa !67
  %21 = getelementptr inbounds ptr, ptr %0, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds double, ptr %22, i64 %11
  %24 = load double, ptr %23, align 8, !tbaa !67
  %25 = tail call double @llvm.fmuladd.f64(double %19, double %20, double %24)
  store double %25, ptr %23, align 8, !tbaa !67
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, %4
  br i1 %27, label %13, label %16, !llvm.loop !91

28:                                               ; preds = %14, %28
  %29 = phi i64 [ 0, %14 ], [ %38, %28 ]
  %30 = getelementptr inbounds double, ptr %3, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !67
  %32 = load double, ptr %15, align 8, !tbaa !67
  %33 = getelementptr inbounds ptr, ptr %1, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = getelementptr inbounds double, ptr %34, i64 %11
  %36 = load double, ptr %35, align 8, !tbaa !67
  %37 = tail call double @llvm.fmuladd.f64(double %31, double %32, double %36)
  store double %37, ptr %35, align 8, !tbaa !67
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, %5
  br i1 %39, label %40, label %28, !llvm.loop !92

40:                                               ; preds = %28, %13
  %41 = add nuw nsw i64 %11, 1
  %42 = icmp eq i64 %41, %4
  br i1 %42, label %43, label %10, !llvm.loop !93

43:                                               ; preds = %40, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MatrixToImage(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !44
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %126, label %8

8:                                                ; preds = %2
  %9 = call i32 @GetMatrixElement(ptr noundef %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3), !range !94
  %10 = load double, ptr %3, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !43
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %40
  %17 = phi i64 [ 0, %14 ], [ %43, %40 ]
  %18 = phi double [ %10, %14 ], [ %42, %40 ]
  %19 = phi double [ %10, %14 ], [ %41, %40 ]
  %20 = load i64, ptr %15, align 8, !tbaa !42
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %16, %34
  %23 = phi i64 [ %37, %34 ], [ 0, %16 ]
  %24 = phi double [ %36, %34 ], [ %18, %16 ]
  %25 = phi double [ %35, %34 ], [ %19, %16 ]
  %26 = call i32 @GetMatrixElement(ptr noundef %0, i64 noundef %23, i64 noundef %17, ptr noundef nonnull %3), !range !94
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load double, ptr %3, align 8, !tbaa !67
  %30 = fcmp olt double %29, %24
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = fcmp ogt double %29, %25
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %28, %33, %31, %22
  %35 = phi double [ %25, %22 ], [ %29, %33 ], [ %25, %31 ], [ %25, %28 ]
  %36 = phi double [ %24, %22 ], [ %24, %33 ], [ %24, %31 ], [ %29, %28 ]
  %37 = add nuw nsw i64 %23, 1
  %38 = load i64, ptr %15, align 8, !tbaa !42
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %22, label %40, !llvm.loop !95

40:                                               ; preds = %34, %16
  %41 = phi double [ %19, %16 ], [ %35, %34 ]
  %42 = phi double [ %18, %16 ], [ %36, %34 ]
  %43 = add nuw nsw i64 %17, 1
  %44 = load i64, ptr %11, align 8, !tbaa !43
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %16, label %46, !llvm.loop !96

46:                                               ; preds = %40, %8
  %47 = phi double [ %10, %8 ], [ %41, %40 ]
  %48 = phi double [ %10, %8 ], [ %42, %40 ]
  %49 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %50 = fcmp oeq double %48, 0.000000e+00
  %51 = fcmp oeq double %47, 0.000000e+00
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = fcmp oeq double %48, %47
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = fdiv double 6.553500e+04, %48
  br label %60

57:                                               ; preds = %53
  %58 = fsub double %47, %48
  %59 = fdiv double 6.553500e+04, %58
  br label %60

60:                                               ; preds = %46, %55, %57
  %61 = phi double [ 0.000000e+00, %55 ], [ %48, %57 ], [ %48, %46 ]
  %62 = phi double [ %56, %55 ], [ %59, %57 ], [ 0.000000e+00, %46 ]
  %63 = tail call ptr @AcquireImage(ptr noundef null) #19
  %64 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !42
  %66 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 7
  store i64 %65, ptr %66, align 8, !tbaa !97
  %67 = load i64, ptr %49, align 8, !tbaa !43
  %68 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 8
  store i64 %67, ptr %68, align 8, !tbaa !109
  %69 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 1
  store i32 2, ptr %69, align 4, !tbaa !110
  %70 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %63, ptr noundef %1) #19
  %71 = load i64, ptr %68, align 8, !tbaa !109
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %124

73:                                               ; preds = %60, %114
  %74 = phi i64 [ %116, %114 ], [ 0, %60 ]
  %75 = phi i32 [ %115, %114 ], [ 1, %60 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %114, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %66, align 8, !tbaa !97
  %79 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %70, i64 noundef 0, i64 noundef %74, i64 noundef %78, i64 noundef 1, ptr noundef %1) #22
  %80 = icmp eq ptr %79, null
  br i1 %80, label %114, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %66, align 8, !tbaa !97
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81, %105
  %85 = phi i64 [ %107, %105 ], [ 0, %81 ]
  %86 = phi ptr [ %106, %105 ], [ %79, %81 ]
  %87 = call i32 @GetMatrixElement(ptr noundef %0, i64 noundef %85, i64 noundef %74, ptr noundef nonnull %4), !range !94
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %84
  %90 = load double, ptr %4, align 8, !tbaa !67
  %91 = fsub double %90, %61
  %92 = fmul double %62, %91
  store double %92, ptr %4, align 8, !tbaa !67
  %93 = fptrunc double %92 to float
  %94 = fcmp ugt float %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = fcmp ult float %93, 6.553500e+04
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = fadd float %93, 5.000000e-01
  %99 = fptoui float %98 to i16
  br label %100

100:                                              ; preds = %89, %95, %97
  %101 = phi i16 [ %99, %97 ], [ 0, %89 ], [ -1, %95 ]
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 2
  store i16 %101, ptr %102, align 2, !tbaa !111
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 1
  store i16 %101, ptr %103, align 2, !tbaa !112
  store i16 %101, ptr %86, align 2, !tbaa !113
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 1
  br label %105

105:                                              ; preds = %84, %100
  %106 = phi ptr [ %86, %84 ], [ %104, %100 ]
  %107 = add nuw nsw i64 %85, 1
  %108 = load i64, ptr %66, align 8, !tbaa !97
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %84, label %110, !llvm.loop !114

110:                                              ; preds = %105, %81
  %111 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %70, ptr noundef %1) #22
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  br label %114

114:                                              ; preds = %77, %73, %110
  %115 = phi i32 [ %113, %110 ], [ 0, %73 ], [ 0, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %116 = add nuw nsw i64 %74, 1
  %117 = load i64, ptr %68, align 8, !tbaa !109
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %73, label %119, !llvm.loop !115

119:                                              ; preds = %114
  %120 = icmp eq i32 %115, 0
  %121 = tail call ptr @DestroyCacheView(ptr noundef %70) #19
  br i1 %120, label %122, label %126

122:                                              ; preds = %119
  %123 = tail call ptr @DestroyImage(ptr noundef %63) #19
  br label %126

124:                                              ; preds = %60
  %125 = tail call ptr @DestroyCacheView(ptr noundef %70) #19
  br label %126

126:                                              ; preds = %124, %119, %122, %2
  %127 = phi ptr [ null, %2 ], [ %123, %122 ], [ %63, %119 ], [ %63, %124 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %127
}

declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @NullMatrix(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  %3 = load i32, ptr %0, align 8, !tbaa !48
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @ResetMagickMemory(ptr noundef %7, i32 noundef 0, i64 noundef %9) #19
  br label %48

11:                                               ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !116
  %12 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = tail call i64 @lseek(i32 noundef %13, i64 noundef 0, i32 noundef 0) #19
  %15 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !43
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  br label %21

21:                                               ; preds = %18, %38
  %22 = phi i64 [ 0, %18 ], [ %39, %38 ]
  %23 = load i64, ptr %19, align 8, !tbaa !47
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21, %30
  %26 = phi i64 [ %31, %30 ], [ 0, %21 ]
  %27 = load i32, ptr %12, align 8, !tbaa !51
  %28 = call i64 @write(i32 noundef %27, ptr noundef nonnull %2, i64 noundef 1) #19
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = add nuw nsw i64 %26, 1
  %32 = load i64, ptr %19, align 8, !tbaa !47
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %25, label %34, !llvm.loop !117

34:                                               ; preds = %30, %25, %21
  %35 = phi i64 [ 0, %21 ], [ %31, %30 ], [ %26, %25 ]
  %36 = load i64, ptr %20, align 8, !tbaa !47
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = add nuw nsw i64 %22, 1
  %40 = load i64, ptr %15, align 8, !tbaa !43
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %21, label %42, !llvm.loop !118

42:                                               ; preds = %38, %34, %11
  %43 = phi i64 [ 0, %11 ], [ %39, %38 ], [ %22, %34 ]
  %44 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !43
  %46 = icmp sge i64 %43, %45
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %42, %5
  %49 = phi i32 [ 1, %5 ], [ %47, %42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  ret i32 %49
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local ptr @RelinquishMagickMatrix(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i64 %1, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %11, %6 ], [ 0, %4 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef %9) #19
  store ptr %10, ptr %8, align 8, !tbaa !66
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %13, label %6, !llvm.loop !119

13:                                               ; preds = %6, %4
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #19
  br label %15

15:                                               ; preds = %2, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetMatrixElement(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !42
  %7 = mul i64 %6, %2
  %8 = add i64 %7, %1
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !44
  %13 = mul i64 %12, %8
  %14 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %10
  %18 = load i32, ptr %0, align 8, !tbaa !48
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds i8, ptr %22, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %3, i64 %12, i1 false)
  br label %53

24:                                               ; preds = %17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %25 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !45, !alias.scope !120, !noalias !123
  tail call void @LockSemaphoreInfo(ptr noundef %26) #19, !noalias !125
  %27 = getelementptr inbounds %struct._MatrixInfo, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 8, !tbaa !51, !alias.scope !120, !noalias !123
  %29 = tail call i64 @lseek(i32 noundef %28, i64 noundef %13, i32 noundef 0) #19, !noalias !125
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %24
  %32 = icmp sgt i64 %12, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %31, %44
  %34 = phi i64 [ %46, %44 ], [ 0, %31 ]
  %35 = getelementptr inbounds i8, ptr %3, i64 %34
  %36 = sub nsw i64 %12, %34
  %37 = tail call i64 @llvm.umin.i64(i64 %36, i64 9223372036854775807)
  %38 = tail call i64 @write(i32 noundef %28, ptr noundef %35, i64 noundef %37) #19, !noalias !120
  %39 = icmp slt i64 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = tail call ptr @__errno_location() #20
  %42 = load i32, ptr %41, align 4, !tbaa !62, !noalias !125
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %33
  %45 = phi i64 [ 0, %40 ], [ %38, %33 ]
  %46 = add nuw nsw i64 %45, %34
  %47 = icmp slt i64 %46, %12
  br i1 %47, label %33, label %48, !llvm.loop !63

48:                                               ; preds = %40, %44, %31, %24
  %49 = phi i64 [ -1, %24 ], [ 0, %31 ], [ %46, %44 ], [ %34, %40 ]
  tail call void @UnlockSemaphoreInfo(ptr noundef %26) #19, !noalias !125
  %50 = load i64, ptr %11, align 8, !tbaa !44
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  br label %53

53:                                               ; preds = %48, %4, %10, %20
  %54 = phi i32 [ 1, %20 ], [ 0, %10 ], [ 0, %4 ], [ %52, %48 ]
  ret i32 %54
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind uwtable
define internal void @MatrixSignalHandler(i32 %0) #12 {
  %2 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #19
  call void @GetExceptionInfo(ptr noundef nonnull %2) #19
  %3 = tail call ptr @__errno_location() #20
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = call ptr @GetExceptionMessage(i32 noundef %4) #19
  %6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 132, i32 noundef 745, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %5) #19
  %7 = call ptr @DestroyString(ptr noundef %5) #19
  call void @CatchException(ptr noundef nonnull %2) #19
  %8 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 46) #23
  unreachable
}

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { hot nounwind }
attributes #23 = { noreturn nounwind }

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
!34 = !{!35, !39, i64 4168}
!35 = !{!"_MatrixInfo", !36, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !36, i64 40, !36, i64 44, !37, i64 48, !36, i64 4144, !41, i64 4152, !41, i64 4160, !39, i64 4168}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"long long", !37, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!35, !39, i64 8}
!43 = !{!35, !39, i64 16}
!44 = !{!35, !39, i64 24}
!45 = !{!35, !41, i64 4160}
!46 = !{!35, !36, i64 44}
!47 = !{!35, !40, i64 32}
!48 = !{!35, !36, i64 0}
!49 = !{!35, !36, i64 40}
!50 = !{!35, !41, i64 4152}
!51 = !{!35, !36, i64 4144}
!52 = !{!53}
!53 = distinct !{!53, !54, !"SetMatrixExtent: argument 0"}
!54 = distinct !{!54, !"SetMatrixExtent"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"WriteMatrixElements: argument 0"}
!57 = distinct !{!57, !"WriteMatrixElements"}
!58 = !{!56, !53}
!59 = !{!60}
!60 = distinct !{!60, !57, !"WriteMatrixElements: argument 1"}
!61 = !{!56, !60, !53}
!62 = !{!36, !36, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!41, !41, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"double", !37, i64 0}
!69 = distinct !{!69, !64, !65}
!70 = distinct !{!70, !64, !65}
!71 = !{!39, !39, i64 0}
!72 = distinct !{!72, !64, !65}
!73 = distinct !{!73, !64, !65}
!74 = distinct !{!74, !64, !65}
!75 = distinct !{!75, !64, !65}
!76 = distinct !{!76, !64, !65}
!77 = distinct !{!77, !64, !65}
!78 = distinct !{!78, !64, !65}
!79 = distinct !{!79, !64, !65}
!80 = distinct !{!80, !64, !65}
!81 = distinct !{!81, !64, !65}
!82 = distinct !{!82, !64, !65}
!83 = distinct !{!83, !64, !65}
!84 = !{!85}
!85 = distinct !{!85, !86, !"ReadMatrixElements: argument 0"}
!86 = distinct !{!86, !"ReadMatrixElements"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"ReadMatrixElements: argument 1"}
!89 = !{!85, !88}
!90 = distinct !{!90, !64, !65}
!91 = distinct !{!91, !64, !65}
!92 = distinct !{!92, !64, !65}
!93 = distinct !{!93, !64, !65}
!94 = !{i32 0, i32 2}
!95 = distinct !{!95, !64, !65}
!96 = distinct !{!96, !64, !65}
!97 = !{!98, !39, i64 40}
!98 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !41, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !68, i64 104, !101, i64 112, !36, i64 208, !41, i64 216, !36, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !39, i64 256, !68, i64 264, !68, i64 272, !103, i64 280, !103, i64 312, !103, i64 344, !68, i64 376, !68, i64 384, !68, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !41, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !104, i64 480, !105, i64 504, !41, i64 568, !41, i64 576, !41, i64 584, !41, i64 592, !41, i64 600, !41, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !107, i64 12920, !36, i64 12976, !39, i64 12984, !41, i64 12992, !108, i64 13000, !108, i64 13032, !41, i64 13064, !39, i64 13072, !39, i64 13080, !41, i64 13088, !41, i64 13096, !41, i64 13104, !36, i64 13112, !36, i64 13116, !99, i64 13120, !41, i64 13128, !103, i64 13136, !41, i64 13168, !41, i64 13176, !36, i64 13184, !36, i64 13188, !40, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!99 = !{!"_PixelPacket", !100, i64 0, !100, i64 2, !100, i64 4, !100, i64 6}
!100 = !{!"short", !37, i64 0}
!101 = !{!"_ChromaticityInfo", !102, i64 0, !102, i64 24, !102, i64 48, !102, i64 72}
!102 = !{!"_PrimaryInfo", !68, i64 0, !68, i64 8, !68, i64 16}
!103 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!104 = !{!"_ErrorInfo", !68, i64 0, !68, i64 8, !68, i64 16}
!105 = !{!"_TimerInfo", !106, i64 0, !106, i64 24, !36, i64 48, !39, i64 56}
!106 = !{!"_Timer", !68, i64 0, !68, i64 8, !68, i64 16}
!107 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !39, i64 48}
!108 = !{!"_ProfileInfo", !41, i64 0, !39, i64 8, !41, i64 16, !39, i64 24}
!109 = !{!98, !39, i64 48}
!110 = !{!98, !36, i64 4}
!111 = !{!99, !100, i64 4}
!112 = !{!99, !100, i64 2}
!113 = !{!99, !100, i64 0}
!114 = distinct !{!114, !64, !65}
!115 = distinct !{!115, !64, !65}
!116 = !{!37, !37, i64 0}
!117 = distinct !{!117, !64, !65}
!118 = distinct !{!118, !64, !65}
!119 = distinct !{!119, !64, !65}
!120 = !{!121}
!121 = distinct !{!121, !122, !"WriteMatrixElements: argument 0"}
!122 = distinct !{!122, !"WriteMatrixElements"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"WriteMatrixElements: argument 1"}
!125 = !{!121, !124}
