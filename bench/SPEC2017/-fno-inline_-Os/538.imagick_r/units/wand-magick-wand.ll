; ModuleID = 'wand/magick-wand.c'
source_filename = "wand/magick-wand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagickWand = type { i64, [4096 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ConfigureInfo = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct._TypeMetric = type { %struct._PointInfo, double, double, double, double, double, double, double, %struct._SegmentInfo, %struct._PointInfo }
%struct._SegmentInfo = type { double, double, double, double }
%struct._PointInfo = type { double, double }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }

@.str = private unnamed_addr constant [19 x i8] c"wand/magick-wand.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MagickWand\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ContainsNoIterators\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ContainsNoImages\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"QuantumDepthMismatch\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClearMagickWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 82, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = tail call ptr @DestroyQuantizeInfo(ptr noundef %10) #7
  store ptr %11, ptr %9, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = tail call ptr @DestroyImageInfo(ptr noundef %13) #7
  store ptr %14, ptr %12, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = tail call ptr @DestroyImageList(ptr noundef %16) #7
  store ptr %17, ptr %15, align 8, !tbaa !43
  %18 = tail call ptr @AcquireImageInfo() #7
  store ptr %18, ptr %12, align 8, !tbaa !42
  %19 = tail call ptr @CloneQuantizeInfo(ptr noundef null) #7
  store ptr %19, ptr %9, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 6
  store i32 0, ptr %20, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 7
  store i32 0, ptr %21, align 4, !tbaa !45
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  tail call void @ClearMagickException(ptr noundef %23) #7
  %24 = tail call i32 @IsEventLogging() #7
  store i32 %24, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneQuantizeInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneMagickWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 124, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %1
  %10 = tail call dereferenceable_or_null(4160) ptr @AcquireMagickMemory(i64 noundef 4160) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #9
  call void @GetExceptionInfo(ptr noundef nonnull %2) #7
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 128, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #7
  call void @CatchException(ptr noundef nonnull %2) #7
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #7
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #11
  unreachable

16:                                               ; preds = %9
  %17 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 4160) #7
  %18 = tail call i64 @AcquireWandId() #7
  store i64 %18, ptr %10, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 1
  %20 = uitofp i64 %18 to double
  %21 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %19, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %20) #7
  %22 = tail call ptr @AcquireExceptionInfo() #7
  %23 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  tail call void @InheritException(ptr noundef %22, ptr noundef %25) #7
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = tail call ptr @CloneImageInfo(ptr noundef %27) #7
  %29 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = tail call ptr @CloneQuantizeInfo(ptr noundef %31) #7
  %33 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 4
  store ptr %32, ptr %33, align 8, !tbaa !41
  %34 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = load ptr, ptr %23, align 8, !tbaa !46
  %37 = tail call ptr @CloneImageList(ptr noundef %35, ptr noundef %36) #7
  %38 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 5
  store ptr %37, ptr %38, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 6
  store i32 0, ptr %39, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 7
  store i32 0, ptr %40, align 4, !tbaa !45
  %41 = tail call i32 @IsEventLogging() #7
  %42 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 8
  store i32 %41, ptr %42, align 8, !tbaa !34
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %16
  %45 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 142, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #7
  br label %46

46:                                               ; preds = %44, %16
  %47 = getelementptr inbounds %struct._MagickWand, ptr %10, i64 0, i32 9
  store i64 2880220587, ptr %47, align 8, !tbaa !48
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickWandTerminus() local_unnamed_addr #0 {
  tail call void @DestroyWandIds() #7
  tail call void @MagickCoreTerminus() #7
  ret void
}

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @AcquireWandId() local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneImageList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyMagickWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 174, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = tail call ptr @DestroyImageList(ptr noundef %10) #7
  store ptr %11, ptr %9, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %13) #7
  store ptr %16, ptr %12, align 8, !tbaa !41
  br label %17

17:                                               ; preds = %15, %8
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %19) #7
  store ptr %22, ptr %18, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @DestroyExceptionInfo(ptr noundef nonnull %25) #7
  store ptr %28, ptr %24, align 8, !tbaa !46
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i64, ptr %0, align 8, !tbaa !47
  tail call void @RelinquishWandId(i64 noundef %30) #7
  %31 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 9
  store i64 -2880220588, ptr %31, align 8, !tbaa !48
  %32 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #7
  ret ptr %32
}

; Function Attrs: optsize
declare void @RelinquishWandId(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsMagickWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 9
  %5 = load i64, ptr %4, align 8, !tbaa !48
  %6 = icmp eq i64 %5, 2880220587
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.6, i64 noundef 10) #7
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickClearException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 248, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @ClearMagickException(ptr noundef %10) #7
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickGetException(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 287, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load i32, ptr %11, align 8, !tbaa !49
  store i32 %12, ptr %1, align 4, !tbaa !51
  %13 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 294, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #7
  br label %43

19:                                               ; preds = %9
  store i8 0, ptr %13, align 1, !tbaa !52
  %20 = load ptr, ptr %10, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct._ExceptionInfo, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %20, align 8, !tbaa !49
  %26 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %25, ptr noundef nonnull %22) #7
  %27 = tail call i64 @CopyMagickString(ptr noundef nonnull %13, ptr noundef %26, i64 noundef 4096) #7
  %28 = load ptr, ptr %10, align 8, !tbaa !46
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi ptr [ %28, %24 ], [ %20, %19 ]
  %31 = getelementptr inbounds %struct._ExceptionInfo, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %13, ptr noundef nonnull @.str.7, i64 noundef 4096) #7
  %36 = load ptr, ptr %10, align 8, !tbaa !46
  %37 = load i32, ptr %36, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct._ExceptionInfo, ptr %36, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %37, ptr noundef %39) #7
  %41 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %13, ptr noundef %40, i64 noundef 4096) #7
  %42 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %13, ptr noundef nonnull @.str.8, i64 noundef 4096) #7
  br label %43

43:                                               ; preds = %29, %34, %15
  ret ptr %13
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetExceptionType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 340, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load i32, ptr %10, align 8, !tbaa !49
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetIteratorIndex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 372, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 375, i32 noundef 470, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #7
  br label %19

17:                                               ; preds = %8
  %18 = tail call i64 @GetImageIndexInList(ptr noundef nonnull %10) #7
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i64 [ -1, %12 ], [ %18, %17 ]
  ret i64 %20
}

; Function Attrs: optsize
declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickQueryConfigureOption(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = tail call ptr @AcquireExceptionInfo() #7
  %4 = call ptr @GetConfigureInfoList(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #7
  %5 = call ptr @DestroyExceptionInfo(ptr noundef %3) #7
  %6 = icmp eq ptr %4, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %4, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct._ConfigureInfo, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = call ptr @AcquireString(ptr noundef %10) #7
  %12 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #7
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi ptr [ %11, %7 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @GetConfigureInfoList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickQueryConfigureOptions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireExceptionInfo() #7
  %4 = tail call ptr @GetConfigureList(ptr noundef %0, ptr noundef %1, ptr noundef %3) #7
  %5 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #7
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @GetConfigureList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickQueryFontMetrics(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._TypeMetric, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 535, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 539, i32 noundef 470, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #7
  br label %80

20:                                               ; preds = %11
  %21 = tail call dereferenceable_or_null(104) ptr @AcquireQuantumMemory(i64 noundef 13, i64 noundef 8) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %80, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @PeekDrawingWand(ptr noundef %1) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %21) #7
  br label %80

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %24, i64 0, i32 21
  %30 = tail call ptr @CloneString(ptr noundef nonnull %29, ptr noundef %2) #7
  %31 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 120) #7
  %32 = load ptr, ptr %12, align 8, !tbaa !43
  %33 = call i32 @GetTypeMetrics(ptr noundef %32, ptr noundef nonnull %24, ptr noundef nonnull %4) #7
  %34 = call ptr @DestroyDrawInfo(ptr noundef nonnull %24) #7
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = load ptr, ptr %12, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  call void @InheritException(ptr noundef %38, ptr noundef nonnull %40) #7
  %41 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %21) #7
  br label %80

42:                                               ; preds = %28
  %43 = load double, ptr %4, align 8, !tbaa !58
  store double %43, ptr %21, align 8, !tbaa !63
  %44 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 0, i32 1
  %45 = load double, ptr %44, align 8, !tbaa !64
  %46 = getelementptr inbounds double, ptr %21, i64 1
  store double %45, ptr %46, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 1
  %48 = load double, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds double, ptr %21, i64 2
  store double %48, ptr %49, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 2
  %51 = load double, ptr %50, align 8, !tbaa !66
  %52 = getelementptr inbounds double, ptr %21, i64 3
  store double %51, ptr %52, align 8, !tbaa !63
  %53 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 3
  %54 = load double, ptr %53, align 8, !tbaa !67
  %55 = getelementptr inbounds double, ptr %21, i64 4
  store double %54, ptr %55, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 4
  %57 = load double, ptr %56, align 8, !tbaa !68
  %58 = getelementptr inbounds double, ptr %21, i64 5
  store double %57, ptr %58, align 8, !tbaa !63
  %59 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 5
  %60 = load double, ptr %59, align 8, !tbaa !69
  %61 = getelementptr inbounds double, ptr %21, i64 6
  store double %60, ptr %61, align 8, !tbaa !63
  %62 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 8
  %63 = load double, ptr %62, align 8, !tbaa !70
  %64 = getelementptr inbounds double, ptr %21, i64 7
  store double %63, ptr %64, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 8, i32 1
  %66 = load double, ptr %65, align 8, !tbaa !71
  %67 = getelementptr inbounds double, ptr %21, i64 8
  store double %66, ptr %67, align 8, !tbaa !63
  %68 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 8, i32 2
  %69 = load double, ptr %68, align 8, !tbaa !72
  %70 = getelementptr inbounds double, ptr %21, i64 9
  store double %69, ptr %70, align 8, !tbaa !63
  %71 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 8, i32 3
  %72 = load double, ptr %71, align 8, !tbaa !73
  %73 = getelementptr inbounds double, ptr %21, i64 10
  store double %72, ptr %73, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 9
  %75 = load double, ptr %74, align 8, !tbaa !74
  %76 = getelementptr inbounds double, ptr %21, i64 11
  store double %75, ptr %76, align 8, !tbaa !63
  %77 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 9, i32 1
  %78 = load double, ptr %77, align 8, !tbaa !75
  %79 = getelementptr inbounds double, ptr %21, i64 12
  store double %78, ptr %79, align 8, !tbaa !63
  br label %80

80:                                               ; preds = %20, %42, %36, %26, %15
  %81 = phi ptr [ null, %15 ], [ null, %26 ], [ null, %36 ], [ %21, %42 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #9
  ret ptr %81
}

; Function Attrs: optsize
declare ptr @PeekDrawingWand(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetTypeMetrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickQueryMultilineFontMetrics(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._TypeMetric, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 647, i32 noundef 470, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #7
  br label %80

20:                                               ; preds = %11
  %21 = tail call dereferenceable_or_null(104) ptr @AcquireQuantumMemory(i64 noundef 13, i64 noundef 8) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %80, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @PeekDrawingWand(ptr noundef %1) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %21) #7
  br label %80

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %24, i64 0, i32 21
  %30 = tail call ptr @CloneString(ptr noundef nonnull %29, ptr noundef %2) #7
  %31 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 120) #7
  %32 = load ptr, ptr %12, align 8, !tbaa !43
  %33 = call i32 @GetMultilineTypeMetrics(ptr noundef %32, ptr noundef nonnull %24, ptr noundef nonnull %4) #7
  %34 = call ptr @DestroyDrawInfo(ptr noundef nonnull %24) #7
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = load ptr, ptr %12, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  call void @InheritException(ptr noundef %38, ptr noundef nonnull %40) #7
  %41 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %21) #7
  br label %80

42:                                               ; preds = %28
  %43 = load double, ptr %4, align 8, !tbaa !58
  store double %43, ptr %21, align 8, !tbaa !63
  %44 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 0, i32 1
  %45 = load double, ptr %44, align 8, !tbaa !64
  %46 = getelementptr inbounds double, ptr %21, i64 1
  store double %45, ptr %46, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 1
  %48 = load double, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds double, ptr %21, i64 2
  store double %48, ptr %49, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 2
  %51 = load double, ptr %50, align 8, !tbaa !66
  %52 = getelementptr inbounds double, ptr %21, i64 3
  store double %51, ptr %52, align 8, !tbaa !63
  %53 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 3
  %54 = load double, ptr %53, align 8, !tbaa !67
  %55 = getelementptr inbounds double, ptr %21, i64 4
  store double %54, ptr %55, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 4
  %57 = load double, ptr %56, align 8, !tbaa !68
  %58 = getelementptr inbounds double, ptr %21, i64 5
  store double %57, ptr %58, align 8, !tbaa !63
  %59 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 5
  %60 = load double, ptr %59, align 8, !tbaa !69
  %61 = getelementptr inbounds double, ptr %21, i64 6
  store double %60, ptr %61, align 8, !tbaa !63
  %62 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 8
  %63 = load double, ptr %62, align 8, !tbaa !70
  %64 = getelementptr inbounds double, ptr %21, i64 7
  store double %63, ptr %64, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 8, i32 1
  %66 = load double, ptr %65, align 8, !tbaa !71
  %67 = getelementptr inbounds double, ptr %21, i64 8
  store double %66, ptr %67, align 8, !tbaa !63
  %68 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 8, i32 2
  %69 = load double, ptr %68, align 8, !tbaa !72
  %70 = getelementptr inbounds double, ptr %21, i64 9
  store double %69, ptr %70, align 8, !tbaa !63
  %71 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 8, i32 3
  %72 = load double, ptr %71, align 8, !tbaa !73
  %73 = getelementptr inbounds double, ptr %21, i64 10
  store double %72, ptr %73, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 9
  %75 = load double, ptr %74, align 8, !tbaa !74
  %76 = getelementptr inbounds double, ptr %21, i64 11
  store double %75, ptr %76, align 8, !tbaa !63
  %77 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 9, i32 1
  %78 = load double, ptr %77, align 8, !tbaa !75
  %79 = getelementptr inbounds double, ptr %21, i64 12
  store double %78, ptr %79, align 8, !tbaa !63
  br label %80

80:                                               ; preds = %20, %42, %36, %26, %15
  %81 = phi ptr [ null, %15 ], [ null, %26 ], [ null, %36 ], [ %21, %42 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #9
  ret ptr %81
}

; Function Attrs: optsize
declare i32 @GetMultilineTypeMetrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickQueryFonts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireExceptionInfo() #7
  %4 = tail call ptr @GetTypeList(ptr noundef %0, ptr noundef %1, ptr noundef %3) #7
  %5 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #7
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @GetTypeList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickQueryFormats(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireExceptionInfo() #7
  %4 = tail call ptr @GetMagickList(ptr noundef %0, ptr noundef %1, ptr noundef %3) #7
  %5 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #7
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @GetMagickList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickRelinquishMemory(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 794, ptr noundef nonnull @.str.11) #7
  %3 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #7
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickResetIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 835, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = tail call ptr @GetFirstImageInList(ptr noundef %10) #7
  store ptr %11, ptr %9, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 6
  store i32 0, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 7
  store i32 1, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickSetFirstIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 879, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = tail call ptr @GetFirstImageInList(ptr noundef %10) #7
  store ptr %11, ptr %9, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 6
  store i32 1, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 7
  store i32 0, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetIteratorIndex(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 935, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @GetImageFromList(ptr noundef nonnull %11, i64 noundef %1) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = load ptr, ptr %10, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 58
  tail call void @InheritException(ptr noundef %18, ptr noundef nonnull %20) #7
  br label %24

21:                                               ; preds = %13
  store ptr %14, ptr %10, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 6
  store i32 0, ptr %22, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 7
  store i32 0, ptr %23, align 4, !tbaa !45
  br label %24

24:                                               ; preds = %9, %21, %16
  %25 = phi i32 [ 0, %16 ], [ 1, %21 ], [ 0, %9 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @GetImageFromList(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickSetLastIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 985, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #7
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = tail call ptr @GetLastImageInList(ptr noundef %10) #7
  store ptr %11, ptr %9, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 6
  store i32 0, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 7
  store i32 1, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @GetLastImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickWandGenesis() local_unnamed_addr #0 {
  %1 = tail call i32 @IsMagickCoreInstantiated() #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @MagickCoreGenesis(ptr noundef null, i32 noundef 0) #7
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare i32 @IsMagickCoreInstantiated() local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreGenesis(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroyWandIds() local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewMagickWand() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #9
  store i64 16, ptr %1, align 8, !tbaa !76
  %4 = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %1) #7
  %5 = load i64, ptr %1, align 8, !tbaa !76
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #9
  call void @GetExceptionInfo(ptr noundef nonnull %2) #7
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1074, i32 noundef 470, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef %4) #7
  call void @CatchException(ptr noundef nonnull %2) #7
  %9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #7
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef -229) #11
  unreachable

10:                                               ; preds = %0
  %11 = call dereferenceable_or_null(4160) ptr @AcquireMagickMemory(i64 noundef 4160) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @GetExceptionInfo(ptr noundef nonnull %3) #7
  %14 = tail call ptr @__errno_location() #13
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = call ptr @GetExceptionMessage(i32 noundef %15) #7
  %17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1078, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %16) #7
  call void @CatchException(ptr noundef nonnull %3) #7
  %18 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #7
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #11
  unreachable

19:                                               ; preds = %10
  %20 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 4160) #7
  %21 = call i64 @AcquireWandId() #7
  store i64 %21, ptr %11, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 1
  %23 = uitofp i64 %21 to double
  %24 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %22, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %23) #7
  %25 = call ptr @NewImageList() #7
  %26 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !43
  %27 = call ptr @AcquireImageInfo() #7
  %28 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 3
  store ptr %27, ptr %28, align 8, !tbaa !42
  %29 = call ptr @AcquireExceptionInfo() #7
  %30 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !46
  %31 = call ptr @CloneQuantizeInfo(ptr noundef null) #7
  %32 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !41
  %33 = call i32 @IsEventLogging() #7
  %34 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 8
  store i32 %33, ptr %34, align 8, !tbaa !34
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %19
  %37 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1089, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #7
  br label %38

38:                                               ; preds = %36, %19
  %39 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 9
  store i64 2880220587, ptr %39, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #9
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewMagickWandFromImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @NewMagickWand() #10
  %3 = getelementptr inbounds %struct._MagickWand, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #7
  %6 = getelementptr inbounds %struct._MagickWand, ptr %2, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !43
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsMagickWandInstantiated() local_unnamed_addr #0 {
  %1 = tail call i32 @IsMagickCoreInstantiated() #7
  ret i32 %1
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind optsize allocsize(0,1) }
attributes #13 = { nounwind optsize willreturn memory(none) }

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
!34 = !{!35, !40, i64 4144}
!35 = !{!"_MagickWand", !36, i64 0, !37, i64 8, !39, i64 4104, !39, i64 4112, !39, i64 4120, !39, i64 4128, !40, i64 4136, !40, i64 4140, !40, i64 4144, !36, i64 4152}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!35, !39, i64 4120}
!42 = !{!35, !39, i64 4112}
!43 = !{!35, !39, i64 4128}
!44 = !{!35, !40, i64 4136}
!45 = !{!35, !40, i64 4140}
!46 = !{!35, !39, i64 4104}
!47 = !{!35, !36, i64 0}
!48 = !{!35, !36, i64 4152}
!49 = !{!50, !40, i64 0}
!50 = !{!"_ExceptionInfo", !40, i64 0, !40, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !39, i64 40, !36, i64 48}
!51 = !{!40, !40, i64 0}
!52 = !{!37, !37, i64 0}
!53 = !{!50, !39, i64 8}
!54 = !{!50, !39, i64 16}
!55 = !{!39, !39, i64 0}
!56 = !{!57, !39, i64 16}
!57 = !{!"_ConfigureInfo", !39, i64 0, !39, i64 8, !39, i64 16, !40, i64 24, !40, i64 28, !39, i64 32, !39, i64 40, !36, i64 48}
!58 = !{!59, !61, i64 0}
!59 = !{!"_TypeMetric", !60, i64 0, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !62, i64 72, !60, i64 104}
!60 = !{!"_PointInfo", !61, i64 0, !61, i64 8}
!61 = !{!"double", !37, i64 0}
!62 = !{!"_SegmentInfo", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!63 = !{!61, !61, i64 0}
!64 = !{!59, !61, i64 8}
!65 = !{!59, !61, i64 16}
!66 = !{!59, !61, i64 24}
!67 = !{!59, !61, i64 32}
!68 = !{!59, !61, i64 40}
!69 = !{!59, !61, i64 48}
!70 = !{!59, !61, i64 72}
!71 = !{!59, !61, i64 80}
!72 = !{!59, !61, i64 88}
!73 = !{!59, !61, i64 96}
!74 = !{!59, !61, i64 104}
!75 = !{!59, !61, i64 112}
!76 = !{!36, !36, i64 0}
