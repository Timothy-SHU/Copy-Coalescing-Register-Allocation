; ModuleID = 'magick/montage.c'
source_filename = "magick/montage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MontageInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, double, i64, i32, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, [4096 x i8], i32, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._FrameInfo = type { i64, i64, i64, i64, i64, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._TypeMetric = type { %struct._PointInfo, double, double, double, double, double, double, double, %struct._SegmentInfo, %struct._PointInfo }
%struct._SegmentInfo = type { double, double, double, double }
%struct._PointInfo = type { double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"magick/montage.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DefaultTileGeometry = external constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Tile/Image\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s!\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%.20gx%.20g+0+0\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"#000000\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Montage/Image\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneMontageInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(4224) ptr @AcquireMagickMemory(i64 noundef 4224) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @GetExceptionInfo(ptr noundef nonnull %3) #16
  %7 = tail call ptr @__errno_location() #17
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #16
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 109, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #16
  %11 = call ptr @DestroyString(ptr noundef %9) #16
  call void @CatchException(ptr noundef nonnull %3) #16
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #16
  call void @MagickCoreTerminus() #16
  call void @_exit(i32 noundef 1) #18
  unreachable

13:                                               ; preds = %2
  tail call void @GetMontageInfo(ptr noundef %0, ptr noundef nonnull %4) #19
  %14 = icmp eq ptr %1, null
  br i1 %14, label %88, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #16
  store ptr %19, ptr %4, align 8, !tbaa !38
  br label %20

20:                                               ; preds = %18, %15
  %21 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @AcquireString(ptr noundef nonnull %22) #16
  %26 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @AcquireString(ptr noundef nonnull %29) #16
  %33 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @AcquireString(ptr noundef nonnull %36) #16
  %40 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !47
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @AcquireString(ptr noundef nonnull %43) #16
  %47 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 4
  store ptr %46, ptr %47, align 8, !tbaa !48
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @AcquireString(ptr noundef nonnull %50) #16
  %54 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 5
  store ptr %53, ptr %54, align 8, !tbaa !49
  br label %55

55:                                               ; preds = %52, %48
  %56 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 6
  %57 = load double, ptr %56, align 8, !tbaa !50
  %58 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 6
  store double %57, ptr %58, align 8, !tbaa !50
  %59 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !51
  %61 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 7
  store i64 %60, ptr %61, align 8, !tbaa !51
  %62 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 8
  %63 = load i32, ptr %62, align 8, !tbaa !52
  %64 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 8
  store i32 %63, ptr %64, align 8, !tbaa !52
  %65 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 9
  %66 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 9
  %67 = load i64, ptr %66, align 4
  store i64 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 10
  %69 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 10
  %70 = load i64, ptr %69, align 4
  store i64 %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 11
  %72 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 11
  %73 = load i64, ptr %72, align 4
  store i64 %73, ptr %71, align 4
  %74 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 12
  %75 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 12
  %76 = load i64, ptr %75, align 4
  store i64 %76, ptr %74, align 4
  %77 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 13
  %78 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 13
  %79 = load i64, ptr %78, align 4
  store i64 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 14
  %81 = load i32, ptr %80, align 4, !tbaa !53
  %82 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 14
  store i32 %81, ptr %82, align 4, !tbaa !53
  %83 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 15
  %84 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 15
  %85 = tail call i64 @CopyMagickString(ptr noundef nonnull %83, ptr noundef nonnull %84, i64 noundef 4096) #16
  %86 = tail call i32 @IsEventLogging() #16
  %87 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 16
  store i32 %86, ptr %87, align 8, !tbaa !54
  br label %88

88:                                               ; preds = %13, %55
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetMontageInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 219, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #16
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef 4224) #16
  %11 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 15
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = tail call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef nonnull %12, i64 noundef 4096) #16
  %14 = tail call ptr @AcquireString(ptr noundef nonnull @DefaultTileGeometry) #16
  store ptr %14, ptr %1, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #16
  %20 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !49
  br label %21

21:                                               ; preds = %18, %9
  %22 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 14
  store i32 5, ptr %22, align 4, !tbaa !53
  %23 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 22
  %24 = load double, ptr %23, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 6
  store double %24, ptr %25, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 9, i32 3
  store i16 0, ptr %26, align 2, !tbaa !59
  %27 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 10, i32 3
  store i16 -1, ptr %27, align 2, !tbaa !60
  %28 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 11
  %29 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 24
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 12
  %32 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 25
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 13
  %35 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 26
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %34, align 4
  %37 = tail call i32 @IsEventLogging() #16
  %38 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 16
  store i32 %37, ptr %38, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 17
  store i64 2880220587, ptr %39, align 8, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyMontageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 166, ptr noundef nonnull @.str.4) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #16
  store ptr %11, ptr %0, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @DestroyString(ptr noundef nonnull %14) #16
  store ptr %17, ptr %13, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @DestroyString(ptr noundef nonnull %20) #16
  store ptr %23, ptr %19, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @DestroyString(ptr noundef nonnull %26) #16
  store ptr %29, ptr %25, align 8, !tbaa !47
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %32) #16
  store ptr %35, ptr %31, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @DestroyString(ptr noundef nonnull %38) #16
  store ptr %41, ptr %37, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 17
  store i64 -2880220588, ptr %43, align 8, !tbaa !61
  %44 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #16
  ret ptr %44
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MontageImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @AcquireImageInfo() #16
  %5 = tail call ptr @MontageImageList(ptr noundef %4, ptr noundef %1, ptr noundef %0, ptr noundef %2) #19
  %6 = tail call ptr @DestroyImageInfo(ptr noundef %4) #16
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MontageImageList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._FrameInfo, align 16
  %7 = alloca %struct._RectangleInfo, align 8
  %8 = alloca %struct._RectangleInfo, align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct._TypeMetric, align 8
  %16 = alloca [4096 x i8], align 16
  %17 = alloca [4096 x i8], align 16
  %18 = alloca %struct._TypeMetric, align 8
  %19 = alloca %struct._RectangleInfo, align 8
  %20 = alloca %struct._FrameInfo, align 16
  %21 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %15) #15
  %22 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %23 = load i32, ptr %22, align 8, !tbaa !62
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %27 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 423, ptr noundef nonnull @.str.5, ptr noundef nonnull %26) #16
  br label %28

28:                                               ; preds = %25, %4
  %29 = tail call i64 @GetImageListLength(ptr noundef nonnull %2) #16
  %30 = tail call ptr @ImageListToArray(ptr noundef nonnull %2, ptr noundef %3) #16
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = tail call ptr @NewImageList() #16
  %33 = icmp sgt i64 %29, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 1
  %36 = load ptr, ptr %30, align 8, !tbaa !73
  %37 = tail call ptr @CloneImage(ptr noundef %36, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %71, label %46

39:                                               ; preds = %67
  br i1 %33, label %93, label %103

40:                                               ; preds = %67
  %41 = add nuw i64 %50, 1
  %42 = getelementptr inbounds ptr, ptr %30, i64 %69
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = call ptr @CloneImage(ptr noundef %43, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46, !llvm.loop !74

46:                                               ; preds = %34, %40
  %47 = phi ptr [ %44, %40 ], [ %37, %34 ]
  %48 = phi ptr [ %42, %40 ], [ %30, %34 ]
  %49 = phi i64 [ %69, %40 ], [ 0, %34 ]
  %50 = phi i64 [ %41, %40 ], [ 1, %34 ]
  %51 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 26
  %52 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.6, ptr noundef nonnull %51) #16
  %53 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 48
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %47, ptr noundef null, ptr noundef %54) #16
  %56 = load ptr, ptr %1, align 8, !tbaa !38
  %57 = call i32 @ParseRegionGeometry(ptr noundef nonnull %47, ptr noundef %56, ptr noundef nonnull %7, ptr noundef %3) #16
  %58 = load i64, ptr %7, align 8, !tbaa !77
  %59 = load i64, ptr %35, align 8, !tbaa !78
  %60 = call ptr @ThumbnailImage(ptr noundef nonnull %47, i64 noundef %58, i64 noundef %59, ptr noundef %3) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %46
  store ptr %60, ptr %48, align 8, !tbaa !73
  %63 = load ptr, ptr %53, align 8, !tbaa !76
  %64 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %47, ptr noundef %55, ptr noundef %63) #16
  %65 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %47, ptr noundef nonnull @.str.7, i64 noundef %49, i64 noundef %29) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = call ptr @DestroyImage(ptr noundef nonnull %47) #16
  %69 = add nuw nsw i64 %49, 1
  %70 = icmp eq i64 %69, %29
  br i1 %70, label %39, label %40, !llvm.loop !74

71:                                               ; preds = %40, %46, %62, %34
  %72 = phi i64 [ 1, %34 ], [ %41, %40 ], [ %50, %46 ], [ %50, %62 ]
  %73 = phi i64 [ 0, %34 ], [ %69, %40 ], [ %49, %46 ], [ %49, %62 ]
  %74 = phi ptr [ %32, %34 ], [ %60, %40 ], [ null, %46 ], [ %60, %62 ]
  %75 = icmp eq ptr %74, null
  %76 = sext i1 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %71
  %80 = add i64 %72, %76
  br label %81

81:                                               ; preds = %79, %88
  %82 = phi i64 [ %89, %88 ], [ 0, %79 ]
  %83 = getelementptr inbounds ptr, ptr %30, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !73
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = call ptr @DestroyImage(ptr noundef nonnull %84) #16
  store ptr %87, ptr %83, align 8, !tbaa !73
  br label %88

88:                                               ; preds = %81, %86
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, %80
  br i1 %90, label %91, label %81, !llvm.loop !79

91:                                               ; preds = %88, %71
  %92 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %30) #16
  br label %784

93:                                               ; preds = %39, %100
  %94 = phi i64 [ %101, %100 ], [ 0, %39 ]
  %95 = getelementptr inbounds ptr, ptr %30, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !73
  %97 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 39
  %98 = load i64, ptr %97, align 8, !tbaa !80
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = add nuw nsw i64 %94, 1
  %102 = icmp eq i64 %101, %29
  br i1 %102, label %107, label %93, !llvm.loop !81

103:                                              ; preds = %93, %28, %39
  %104 = phi ptr [ %68, %39 ], [ %31, %28 ], [ %68, %93 ]
  %105 = phi i64 [ 0, %39 ], [ 0, %28 ], [ %94, %93 ]
  %106 = icmp eq i64 %105, %29
  br i1 %106, label %107, label %109

107:                                              ; preds = %100, %103
  %108 = phi ptr [ %104, %103 ], [ %68, %100 ]
  call void @qsort(ptr noundef nonnull %30, i64 noundef %29, i64 noundef 8, ptr noundef nonnull @SceneCompare) #16
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi ptr [ %108, %107 ], [ %104, %103 ]
  %111 = uitofp i64 %29 to double
  %112 = call double @llvm.sqrt.f64(double %111)
  %113 = fptoui double %112 to i64
  store i64 %113, ptr %10, align 8, !tbaa !82
  %114 = uitofp i64 %113 to double
  %115 = fdiv double %111, %114
  %116 = call double @llvm.ceil.f64(double %115)
  %117 = fptoui double %116 to i64
  store i64 %117, ptr %11, align 8, !tbaa !82
  store i64 0, ptr %12, align 8, !tbaa !82
  store i64 0, ptr %14, align 8, !tbaa !82
  %118 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !45
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %109
  call fastcc void @GetMontageGeometry(ptr noundef nonnull %119, i64 noundef %29, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  br label %122

122:                                              ; preds = %121, %109
  %123 = load ptr, ptr %30, align 8, !tbaa !73
  call void @SetGeometry(ptr noundef %123, ptr noundef nonnull %8) #16
  %124 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 7
  %125 = load i64, ptr %124, align 8, !tbaa !51
  %126 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  store i64 %125, ptr %126, align 16, !tbaa !83
  %127 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 3
  store i64 %125, ptr %127, align 8, !tbaa !84
  %128 = load ptr, ptr %1, align 8, !tbaa !38
  %129 = icmp eq ptr %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 1
  %132 = call i32 @GetGeometry(ptr noundef nonnull %128, ptr noundef nonnull %126, ptr noundef nonnull %127, ptr noundef nonnull %8, ptr noundef nonnull %131) #16
  %133 = and i32 %132, 12
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = load i64, ptr %124, align 8, !tbaa !51
  br label %137

137:                                              ; preds = %130, %122
  %138 = phi i64 [ %136, %130 ], [ %125, %122 ]
  %139 = phi i32 [ %135, %130 ], [ 0, %122 ]
  %140 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 48) #16
  %141 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !47
  %143 = icmp eq ptr %142, null
  br i1 %143, label %178, label %144

144:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %16) #15
  %145 = getelementptr inbounds %struct._FrameInfo, ptr %6, i64 0, i32 1
  %146 = load <2 x i64>, ptr %8, align 16, !tbaa !82
  store <2 x i64> %146, ptr %6, align 16, !tbaa !82
  %147 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %16, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull %142) #16
  %148 = getelementptr inbounds %struct._FrameInfo, ptr %6, i64 0, i32 5
  %149 = getelementptr inbounds %struct._FrameInfo, ptr %6, i64 0, i32 4
  %150 = call i32 @ParseMetaGeometry(ptr noundef nonnull %16, ptr noundef nonnull %148, ptr noundef nonnull %149, ptr noundef nonnull %6, ptr noundef nonnull %145) #16
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i64, ptr %6, align 16, !tbaa !85
  store i64 %154, ptr %145, align 8, !tbaa !87
  br label %155

155:                                              ; preds = %153, %144
  %156 = and i32 %150, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i64, ptr %6, align 16, !tbaa !85
  %160 = sdiv i64 %159, 2
  store i64 %160, ptr %148, align 8, !tbaa !88
  br label %161

161:                                              ; preds = %158, %155
  %162 = and i32 %150, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i64, ptr %149, align 16, !tbaa !89
  %166 = load i64, ptr %148, align 8, !tbaa !88
  br label %169

167:                                              ; preds = %161
  %168 = load i64, ptr %148, align 8, !tbaa !88
  store i64 %168, ptr %149, align 16, !tbaa !89
  br label %169

169:                                              ; preds = %164, %167
  %170 = phi i64 [ %166, %164 ], [ %168, %167 ]
  %171 = phi i64 [ %165, %164 ], [ %168, %167 ]
  %172 = load i64, ptr %6, align 16, !tbaa !85
  %173 = getelementptr inbounds %struct._FrameInfo, ptr %6, i64 0, i32 2
  store i64 %172, ptr %173, align 16, !tbaa !90
  %174 = load i64, ptr %145, align 8, !tbaa !87
  %175 = getelementptr inbounds %struct._FrameInfo, ptr %6, i64 0, i32 3
  store i64 %174, ptr %175, align 8, !tbaa !91
  %176 = call fastcc i64 @MagickMax(i64 noundef %171, i64 noundef %170) #19
  %177 = call fastcc i64 @MagickMax(i64 noundef %172, i64 noundef %174) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %16) #15
  br label %178

178:                                              ; preds = %169, %137
  %179 = phi i64 [ %176, %169 ], [ 0, %137 ]
  %180 = phi i64 [ %177, %169 ], [ %138, %137 ]
  br i1 %33, label %181, label %205

181:                                              ; preds = %178
  %182 = load i64, ptr %8, align 16, !tbaa !77
  %183 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !78
  br label %185

185:                                              ; preds = %181, %201
  %186 = phi i64 [ %184, %181 ], [ %202, %201 ]
  %187 = phi i64 [ 0, %181 ], [ %203, %201 ]
  %188 = phi i64 [ %182, %181 ], [ %196, %201 ]
  %189 = getelementptr inbounds ptr, ptr %30, i64 %187
  %190 = load ptr, ptr %189, align 8, !tbaa !73
  %191 = getelementptr inbounds %struct._Image, ptr %190, i64 0, i32 7
  %192 = load i64, ptr %191, align 8, !tbaa !92
  %193 = icmp ugt i64 %192, %188
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  store i64 %192, ptr %8, align 16, !tbaa !77
  br label %195

195:                                              ; preds = %194, %185
  %196 = phi i64 [ %192, %194 ], [ %188, %185 ]
  %197 = getelementptr inbounds %struct._Image, ptr %190, i64 0, i32 8
  %198 = load i64, ptr %197, align 8, !tbaa !93
  %199 = icmp ugt i64 %198, %186
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i64 %198, ptr %183, align 8, !tbaa !78
  br label %201

201:                                              ; preds = %195, %200
  %202 = phi i64 [ %186, %195 ], [ %198, %200 ]
  %203 = add nuw nsw i64 %187, 1
  %204 = icmp eq i64 %203, %29
  br i1 %204, label %205, label %185, !llvm.loop !94

205:                                              ; preds = %201, %178
  %206 = call ptr @CloneImageInfo(ptr noundef %0) #16
  %207 = getelementptr inbounds %struct._ImageInfo, ptr %206, i64 0, i32 24
  %208 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 11
  %209 = load i64, ptr %208, align 4
  store i64 %209, ptr %207, align 8
  %210 = getelementptr inbounds %struct._ImageInfo, ptr %206, i64 0, i32 25
  %211 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 12
  %212 = load i64, ptr %211, align 4
  store i64 %212, ptr %210, align 8
  %213 = call ptr @CloneDrawInfo(ptr noundef %206, ptr noundef null) #16
  %214 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 5
  %215 = load ptr, ptr %214, align 8, !tbaa !49
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %205
  %218 = getelementptr inbounds %struct._DrawInfo, ptr %213, i64 0, i32 23
  %219 = call ptr @CloneString(ptr noundef nonnull %218, ptr noundef nonnull %215) #16
  br label %220

220:                                              ; preds = %217, %205
  %221 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 6
  %222 = load double, ptr %221, align 8, !tbaa !50
  %223 = fcmp une double %222, 0.000000e+00
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct._DrawInfo, ptr %213, i64 0, i32 30
  store double %222, ptr %225, align 8, !tbaa !95
  br label %226

226:                                              ; preds = %224, %220
  %227 = getelementptr inbounds %struct._DrawInfo, ptr %213, i64 0, i32 4
  store i32 5, ptr %227, align 8, !tbaa !103
  %228 = getelementptr inbounds %struct._DrawInfo, ptr %213, i64 0, i32 6
  %229 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 10
  %230 = load i64, ptr %229, align 4
  store i64 %230, ptr %228, align 4
  %231 = getelementptr inbounds %struct._DrawInfo, ptr %213, i64 0, i32 5
  %232 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 9
  %233 = load i64, ptr %232, align 4
  store i64 %233, ptr %231, align 4
  %234 = call ptr @AcquireString(ptr noundef nonnull @.str.1) #16
  %235 = getelementptr inbounds %struct._DrawInfo, ptr %213, i64 0, i32 21
  store ptr %234, ptr %235, align 8, !tbaa !104
  %236 = load ptr, ptr %30, align 8, !tbaa !73
  %237 = call i32 @GetTypeMetrics(ptr noundef %236, ptr noundef %213, ptr noundef nonnull %15) #16
  %238 = call ptr @NewImageList() #16
  %239 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !48
  %241 = icmp eq ptr %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %226
  %243 = getelementptr inbounds %struct._ImageInfo, ptr %206, i64 0, i32 51
  %244 = call i64 @CopyMagickString(ptr noundef nonnull %243, ptr noundef nonnull %240, i64 noundef 4096) #16
  %245 = call ptr @ReadImage(ptr noundef nonnull %206, ptr noundef %3) #16
  br label %246

246:                                              ; preds = %242, %226
  %247 = phi ptr [ %245, %242 ], [ %238, %226 ]
  %248 = load ptr, ptr %30, align 8, !tbaa !73
  %249 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !46
  %251 = call ptr @InterpretImageProperties(ptr noundef nonnull %206, ptr noundef %248, ptr noundef %250) #16
  %252 = load ptr, ptr %249, align 8, !tbaa !46
  %253 = icmp eq ptr %252, null
  br i1 %253, label %268, label %254

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct._TypeMetric, ptr %15, i64 0, i32 1
  %256 = load double, ptr %255, align 8, !tbaa !105
  %257 = getelementptr inbounds %struct._TypeMetric, ptr %15, i64 0, i32 2
  %258 = load double, ptr %257, align 8, !tbaa !107
  %259 = fsub double %256, %258
  %260 = fmul double %259, 2.000000e+00
  %261 = call i64 @MultilineCensus(ptr noundef %251) #16
  %262 = uitofp i64 %261 to double
  %263 = load i64, ptr %127, align 8, !tbaa !84
  %264 = shl nsw i64 %263, 1
  %265 = sitofp i64 %264 to double
  %266 = call double @llvm.fmuladd.f64(double %260, double %262, double %265)
  %267 = fptoui double %266 to i64
  br label %268

268:                                              ; preds = %254, %246
  %269 = phi i64 [ %267, %254 ], [ 0, %246 ]
  br i1 %33, label %270, label %288

270:                                              ; preds = %268, %282
  %271 = phi i64 [ %283, %282 ], [ 0, %268 ]
  %272 = phi i64 [ %284, %282 ], [ 0, %268 ]
  %273 = getelementptr inbounds ptr, ptr %30, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !73
  %275 = call ptr @GetImageProperty(ptr noundef %274, ptr noundef nonnull @.str.9) #16
  %276 = icmp eq ptr %275, null
  br i1 %276, label %282, label %277

277:                                              ; preds = %270
  %278 = call i64 @MultilineCensus(ptr noundef nonnull %275) #16
  %279 = icmp ugt i64 %278, %271
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = call i64 @MultilineCensus(ptr noundef nonnull %275) #16
  br label %282

282:                                              ; preds = %277, %280, %270
  %283 = phi i64 [ %271, %270 ], [ %281, %280 ], [ %271, %277 ]
  %284 = add nuw nsw i64 %272, 1
  %285 = icmp eq i64 %284, %29
  br i1 %285, label %286, label %270, !llvm.loop !108

286:                                              ; preds = %282
  %287 = uitofp i64 %283 to double
  br label %288

288:                                              ; preds = %286, %268
  %289 = phi double [ 0.000000e+00, %268 ], [ %287, %286 ]
  %290 = call ptr @AcquireImage(ptr noundef null) #16
  %291 = call ptr @AcquireImage(ptr noundef %206) #16
  %292 = getelementptr inbounds %struct._Image, ptr %291, i64 0, i32 12
  %293 = load i64, ptr %208, align 4
  store i64 %293, ptr %292, align 8
  %294 = getelementptr inbounds %struct._Image, ptr %291, i64 0, i32 39
  store i64 0, ptr %294, align 8, !tbaa !80
  %295 = add i64 %29, -1
  %296 = load i64, ptr %11, align 8, !tbaa !82
  %297 = load i64, ptr %10, align 8, !tbaa !82
  %298 = mul i64 %297, %296
  %299 = udiv i64 %295, %298
  %300 = add i64 %299, 1
  %301 = icmp ult i64 %299, 9223372036854775807
  br i1 %301, label %302, label %772

302:                                              ; preds = %288
  %303 = icmp eq i32 %139, 0
  %304 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 1
  %305 = getelementptr inbounds %struct._TypeMetric, ptr %15, i64 0, i32 1
  %306 = getelementptr inbounds %struct._TypeMetric, ptr %15, i64 0, i32 2
  %307 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 8
  %308 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 15
  %309 = icmp eq ptr %247, null
  %310 = getelementptr inbounds %struct._TypeMetric, ptr %18, i64 0, i32 1
  %311 = getelementptr inbounds %struct._TypeMetric, ptr %18, i64 0, i32 2
  %312 = icmp eq i64 %180, 0
  %313 = getelementptr inbounds %struct._RectangleInfo, ptr %19, i64 0, i32 1
  %314 = getelementptr inbounds %struct._Image, ptr %290, i64 0, i32 7
  %315 = getelementptr inbounds %struct._Image, ptr %290, i64 0, i32 8
  %316 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 14
  %317 = getelementptr inbounds %struct._Image, ptr %290, i64 0, i32 35
  %318 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 2
  %319 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 3
  %320 = icmp ne i64 %179, 0
  %321 = getelementptr inbounds %struct._FrameInfo, ptr %20, i64 0, i32 1
  %322 = shl i64 %180, 1
  %323 = add i64 %180, 4
  %324 = getelementptr inbounds %struct._DrawInfo, ptr %213, i64 0, i32 1
  %325 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 47
  br label %326

326:                                              ; preds = %766, %302
  %327 = phi ptr [ %110, %302 ], [ %758, %766 ]
  %328 = phi ptr [ %30, %302 ], [ %770, %766 ]
  %329 = phi i64 [ %29, %302 ], [ %771, %766 ]
  %330 = phi ptr [ %291, %302 ], [ %767, %766 ]
  %331 = phi i64 [ 0, %302 ], [ %759, %766 ]
  %332 = phi i64 [ 0, %302 ], [ %757, %766 ]
  store i64 0, ptr %12, align 8, !tbaa !82
  store i64 0, ptr %14, align 8, !tbaa !82
  %333 = load ptr, ptr %118, align 8, !tbaa !45
  %334 = icmp eq ptr %333, null
  br i1 %334, label %337, label %335

335:                                              ; preds = %326
  call fastcc void @GetMontageGeometry(ptr noundef nonnull %333, i64 noundef %329, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %9) #19
  %336 = load i64, ptr %14, align 8, !tbaa !82
  br label %337

337:                                              ; preds = %335, %326
  %338 = phi i64 [ %336, %335 ], [ 0, %326 ]
  %339 = load i64, ptr %11, align 8, !tbaa !82
  %340 = load i64, ptr %10, align 8, !tbaa !82
  %341 = mul i64 %340, %339
  %342 = add nsw i64 %338, %269
  store i64 %342, ptr %14, align 8, !tbaa !82
  %343 = icmp sgt i64 %341, 0
  br i1 %343, label %344, label %409

344:                                              ; preds = %337, %404
  %345 = phi i64 [ %405, %404 ], [ %342, %337 ]
  %346 = phi i64 [ %371, %404 ], [ 0, %337 ]
  %347 = phi i64 [ %363, %404 ], [ 0, %337 ]
  %348 = phi i64 [ %407, %404 ], [ 0, %337 ]
  %349 = phi i64 [ %370, %404 ], [ 0, %337 ]
  %350 = phi i64 [ %406, %404 ], [ 0, %337 ]
  %351 = icmp slt i64 %346, %329
  br i1 %351, label %352, label %361

352:                                              ; preds = %344
  %353 = getelementptr inbounds ptr, ptr %328, i64 %346
  %354 = load ptr, ptr %353, align 8, !tbaa !73
  %355 = getelementptr inbounds %struct._Image, ptr %354, i64 0, i32 7
  %356 = select i1 %303, ptr %8, ptr %355
  %357 = load i64, ptr %356, align 8, !tbaa !82
  %358 = getelementptr inbounds %struct._Image, ptr %354, i64 0, i32 8
  %359 = load i64, ptr %358, align 8, !tbaa !93
  %360 = call i64 @llvm.umax.i64(i64 %359, i64 %348)
  br label %361

361:                                              ; preds = %352, %344
  %362 = phi i64 [ %348, %344 ], [ %360, %352 ]
  %363 = phi i64 [ %347, %344 ], [ %357, %352 ]
  %364 = load i64, ptr %126, align 16, !tbaa !83
  %365 = add i64 %364, %180
  %366 = shl i64 %365, 1
  %367 = load i64, ptr %12, align 8, !tbaa !82
  %368 = add i64 %367, %363
  %369 = add i64 %368, %366
  store i64 %369, ptr %12, align 8, !tbaa !82
  %370 = call i64 @llvm.smax.i64(i64 %369, i64 %349)
  %371 = add nuw nsw i64 %346, 1
  %372 = icmp eq i64 %371, %341
  br i1 %372, label %377, label %373

373:                                              ; preds = %361
  %374 = load i64, ptr %11, align 8, !tbaa !82
  %375 = urem i64 %371, %374
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %404

377:                                              ; preds = %373, %361
  store i64 0, ptr %12, align 8, !tbaa !82
  %378 = load ptr, ptr %118, align 8, !tbaa !45
  %379 = icmp eq ptr %378, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %377
  call fastcc void @GetMontageGeometry(ptr noundef nonnull %378, i64 noundef %329, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %9) #19
  %381 = load i64, ptr %14, align 8, !tbaa !82
  br label %382

382:                                              ; preds = %380, %377
  %383 = phi i64 [ %381, %380 ], [ %345, %377 ]
  %384 = load i64, ptr %304, align 8
  %385 = select i1 %303, i64 %384, i64 %362
  %386 = load i64, ptr %127, align 8, !tbaa !84
  %387 = add nsw i64 %386, %180
  %388 = shl nsw i64 %387, 1
  %389 = add i64 %388, %385
  %390 = uitofp i64 %389 to double
  %391 = load double, ptr %305, align 8, !tbaa !105
  %392 = load double, ptr %306, align 8, !tbaa !107
  %393 = fsub double %391, %392
  %394 = fadd double %393, 4.000000e+00
  %395 = call double @llvm.fmuladd.f64(double %394, double %289, double %390)
  %396 = load i32, ptr %307, align 8, !tbaa !52
  %397 = icmp eq i32 %396, 0
  %398 = select i1 %397, i32 0, i32 4
  %399 = sitofp i32 %398 to double
  %400 = fadd double %395, %399
  %401 = fptosi double %400 to i64
  %402 = add nsw i64 %383, %401
  store i64 %402, ptr %14, align 8, !tbaa !82
  %403 = call i64 @llvm.smax.i64(i64 %402, i64 %350)
  br label %404

404:                                              ; preds = %373, %382
  %405 = phi i64 [ %402, %382 ], [ %345, %373 ]
  %406 = phi i64 [ %403, %382 ], [ %350, %373 ]
  %407 = phi i64 [ 0, %382 ], [ %362, %373 ]
  %408 = icmp eq i64 %371, %341
  br i1 %408, label %409, label %344, !llvm.loop !109

409:                                              ; preds = %404, %337
  %410 = phi i64 [ 0, %337 ], [ %406, %404 ]
  %411 = phi i64 [ 0, %337 ], [ %370, %404 ]
  %412 = load i32, ptr %307, align 8, !tbaa !52
  %413 = icmp eq i32 %412, 0
  %414 = add nuw i64 %411, 4
  %415 = select i1 %413, i64 %411, i64 %414
  %416 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 53
  %417 = call i64 @CopyMagickString(ptr noundef nonnull %416, ptr noundef nonnull %308, i64 noundef 4096) #16
  %418 = call fastcc i64 @MagickMax(i64 noundef %415, i64 noundef 1) #19
  %419 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 7
  store i64 %418, ptr %419, align 8, !tbaa !92
  %420 = call fastcc i64 @MagickMax(i64 noundef %410, i64 noundef 1) #19
  %421 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 8
  store i64 %420, ptr %421, align 8, !tbaa !93
  %422 = call i32 @SetImageBackgroundColor(ptr noundef %330) #16
  %423 = call ptr @AcquireString(ptr noundef null) #16
  %424 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 20
  store ptr %423, ptr %424, align 8, !tbaa !110
  %425 = call fastcc i64 @MagickMin(i64 noundef %341, i64 noundef %329) #19
  %426 = icmp sgt i64 %425, 0
  br i1 %426, label %427, label %438

427:                                              ; preds = %409, %427
  %428 = phi i64 [ %436, %427 ], [ 0, %409 ]
  %429 = phi i64 [ %435, %427 ], [ 1, %409 ]
  %430 = getelementptr inbounds ptr, ptr %328, i64 %428
  %431 = load ptr, ptr %430, align 8, !tbaa !73
  %432 = getelementptr inbounds %struct._Image, ptr %431, i64 0, i32 53
  %433 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %432) #20
  %434 = add i64 %429, 1
  %435 = add i64 %434, %433
  %436 = add nuw nsw i64 %428, 1
  %437 = icmp eq i64 %436, %425
  br i1 %437, label %438, label %427, !llvm.loop !111

438:                                              ; preds = %427, %409
  %439 = phi i64 [ 1, %409 ], [ %435, %427 ]
  %440 = call ptr @AcquireQuantumMemory(i64 noundef %439, i64 noundef 1) #21
  %441 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 21
  store ptr %440, ptr %441, align 8, !tbaa !112
  %442 = load ptr, ptr %424, align 8, !tbaa !110
  %443 = icmp eq ptr %442, null
  %444 = icmp eq ptr %440, null
  %445 = select i1 %443, i1 true, i1 %444
  br i1 %445, label %446, label %449

446:                                              ; preds = %438
  %447 = getelementptr inbounds %struct._Image, ptr %327, i64 0, i32 53
  %448 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 655, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %447) #16
  br label %784

449:                                              ; preds = %438
  store i64 0, ptr %12, align 8, !tbaa !82
  store i64 0, ptr %14, align 8, !tbaa !82
  %450 = load ptr, ptr %118, align 8, !tbaa !45
  %451 = icmp eq ptr %450, null
  br i1 %451, label %456, label %452

452:                                              ; preds = %449
  call fastcc void @GetMontageGeometry(ptr noundef nonnull %450, i64 noundef %329, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %9) #19
  %453 = load i64, ptr %14, align 8, !tbaa !82
  %454 = load ptr, ptr %424, align 8, !tbaa !110
  %455 = load i64, ptr %12, align 8, !tbaa !82
  br label %456

456:                                              ; preds = %452, %449
  %457 = phi i64 [ %455, %452 ], [ 0, %449 ]
  %458 = phi ptr [ %454, %452 ], [ %442, %449 ]
  %459 = phi i64 [ %453, %452 ], [ 0, %449 ]
  %460 = add nsw i64 %459, %269
  store i64 %460, ptr %14, align 8, !tbaa !82
  %461 = load i64, ptr %8, align 16, !tbaa !77
  %462 = load i64, ptr %126, align 16, !tbaa !83
  %463 = add i64 %462, %180
  %464 = shl i64 %463, 1
  %465 = add i64 %464, %461
  %466 = uitofp i64 %465 to double
  %467 = load i64, ptr %304, align 8, !tbaa !78
  %468 = load i64, ptr %127, align 8, !tbaa !84
  %469 = add i64 %468, %180
  %470 = shl i64 %469, 1
  %471 = add i64 %470, %467
  %472 = uitofp i64 %471 to double
  %473 = load double, ptr %305, align 8, !tbaa !105
  %474 = load double, ptr %306, align 8, !tbaa !107
  %475 = fsub double %473, %474
  %476 = fadd double %475, 4.000000e+00
  %477 = load i32, ptr %307, align 8, !tbaa !52
  %478 = icmp eq i32 %477, 0
  %479 = select i1 %478, i32 0, i32 4
  %480 = sitofp i32 %479 to double
  %481 = call double @llvm.fmuladd.f64(double %476, double %289, double %480)
  %482 = fadd double %481, %472
  %483 = sitofp i64 %457 to double
  %484 = sitofp i64 %460 to double
  %485 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %458, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %466, double noundef %482, double noundef %483, double noundef %484) #16
  %486 = load ptr, ptr %441, align 8, !tbaa !112
  store i8 0, ptr %486, align 1, !tbaa !113
  br i1 %426, label %487, label %498

487:                                              ; preds = %456, %487
  %488 = phi i64 [ %496, %487 ], [ 0, %456 ]
  %489 = load ptr, ptr %441, align 8, !tbaa !112
  %490 = getelementptr inbounds ptr, ptr %328, i64 %488
  %491 = load ptr, ptr %490, align 8, !tbaa !73
  %492 = getelementptr inbounds %struct._Image, ptr %491, i64 0, i32 53
  %493 = call i64 @ConcatenateMagickString(ptr noundef %489, ptr noundef nonnull %492, i64 noundef %439) #16
  %494 = load ptr, ptr %441, align 8, !tbaa !112
  %495 = call i64 @ConcatenateMagickString(ptr noundef %494, ptr noundef nonnull @.str.11, i64 noundef %439) #16
  %496 = add nuw nsw i64 %488, 1
  %497 = icmp eq i64 %496, %425
  br i1 %497, label %498, label %487, !llvm.loop !114

498:                                              ; preds = %487, %456
  %499 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 48
  %500 = load ptr, ptr %499, align 8, !tbaa !76
  %501 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %330, ptr noundef null, ptr noundef %500) #16
  br i1 %309, label %504, label %502

502:                                              ; preds = %498
  %503 = call i32 @TextureImage(ptr noundef nonnull %330, ptr noundef nonnull %247) #16
  br label %504

504:                                              ; preds = %502, %498
  %505 = load ptr, ptr %249, align 8, !tbaa !46
  %506 = icmp eq ptr %505, null
  br i1 %506, label %530, label %507

507:                                              ; preds = %504
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %18) #15
  %508 = call ptr @CloneDrawInfo(ptr noundef %0, ptr noundef %213) #16
  %509 = getelementptr inbounds %struct._DrawInfo, ptr %508, i64 0, i32 4
  store i32 5, ptr %509, align 8, !tbaa !103
  %510 = getelementptr inbounds %struct._DrawInfo, ptr %508, i64 0, i32 30
  %511 = load double, ptr %510, align 8, !tbaa !95
  %512 = fmul double %511, 2.000000e+00
  store double %512, ptr %510, align 8, !tbaa !95
  %513 = load ptr, ptr %328, align 8, !tbaa !73
  %514 = call i32 @GetTypeMetrics(ptr noundef %513, ptr noundef %508, ptr noundef nonnull %18) #16
  %515 = load i64, ptr %419, align 8, !tbaa !92
  %516 = uitofp i64 %515 to double
  %517 = load double, ptr %310, align 8, !tbaa !105
  %518 = load double, ptr %311, align 8, !tbaa !107
  %519 = fsub double %517, %518
  %520 = load i64, ptr %127, align 8, !tbaa !84
  %521 = sitofp i64 %520 to double
  %522 = fadd double %521, 4.000000e+00
  %523 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %17, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %516, double noundef %519, double noundef 0.000000e+00, double noundef %522) #16
  %524 = getelementptr inbounds %struct._DrawInfo, ptr %508, i64 0, i32 1
  %525 = call ptr @CloneString(ptr noundef nonnull %524, ptr noundef nonnull %17) #16
  %526 = getelementptr inbounds %struct._DrawInfo, ptr %508, i64 0, i32 21
  %527 = call ptr @CloneString(ptr noundef nonnull %526, ptr noundef %251) #16
  %528 = call i32 @AnnotateImage(ptr noundef nonnull %330, ptr noundef %508) #16
  %529 = call ptr @DestroyDrawInfo(ptr noundef %508) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %17) #15
  br label %530

530:                                              ; preds = %507, %504
  %531 = load ptr, ptr %499, align 8, !tbaa !76
  %532 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %330, ptr noundef %501, ptr noundef %531) #16
  store i64 0, ptr %12, align 8, !tbaa !82
  store i64 0, ptr %14, align 8, !tbaa !82
  %533 = load ptr, ptr %118, align 8, !tbaa !45
  %534 = icmp eq ptr %533, null
  br i1 %534, label %538, label %535

535:                                              ; preds = %530
  call fastcc void @GetMontageGeometry(ptr noundef nonnull %533, i64 noundef %329, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %9) #19
  %536 = load i64, ptr %12, align 8, !tbaa !82
  %537 = load i64, ptr %14, align 8, !tbaa !82
  br label %538

538:                                              ; preds = %535, %530
  %539 = phi i64 [ %537, %535 ], [ 0, %530 ]
  %540 = phi i64 [ %536, %535 ], [ 0, %530 ]
  %541 = load i64, ptr %126, align 16, !tbaa !83
  %542 = add nsw i64 %540, %541
  store i64 %542, ptr %12, align 8, !tbaa !82
  %543 = load i64, ptr %127, align 8, !tbaa !84
  %544 = add nsw i64 %543, %269
  %545 = add nsw i64 %544, %539
  store i64 %545, ptr %14, align 8, !tbaa !82
  br i1 %426, label %546, label %756

546:                                              ; preds = %538, %750
  %547 = phi i64 [ %719, %750 ], [ 0, %538 ]
  %548 = phi i64 [ %745, %750 ], [ 0, %538 ]
  %549 = phi i64 [ %754, %750 ], [ %332, %538 ]
  %550 = getelementptr inbounds ptr, ptr %328, i64 %547
  %551 = load ptr, ptr %550, align 8, !tbaa !73
  %552 = call ptr @CloneImage(ptr noundef %551, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #16
  %553 = getelementptr inbounds %struct._Image, ptr %552, i64 0, i32 48
  %554 = load ptr, ptr %553, align 8, !tbaa !76
  %555 = call ptr @SetImageProgressMonitor(ptr noundef %552, ptr noundef null, ptr noundef %554) #16
  %556 = getelementptr inbounds %struct._Image, ptr %552, i64 0, i32 7
  %557 = select i1 %303, ptr %8, ptr %556
  %558 = load i64, ptr %557, align 8, !tbaa !82
  %559 = getelementptr inbounds %struct._Image, ptr %552, i64 0, i32 8
  %560 = load i64, ptr %559, align 8, !tbaa !93
  %561 = call i64 @llvm.umax.i64(i64 %560, i64 %548)
  %562 = load i64, ptr %304, align 8
  %563 = select i1 %303, i64 %562, i64 %561
  br i1 %312, label %591, label %564

564:                                              ; preds = %546
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #15
  store i64 %180, ptr %19, align 8, !tbaa !77
  store i64 %180, ptr %313, align 8, !tbaa !78
  %565 = load ptr, ptr %141, align 8, !tbaa !47
  %566 = icmp eq ptr %565, null
  br i1 %566, label %575, label %567

567:                                              ; preds = %564
  %568 = load i64, ptr %556, align 8, !tbaa !92
  %569 = add i64 %558, 1
  %570 = sub i64 %569, %568
  %571 = lshr i64 %570, 1
  store i64 %571, ptr %19, align 8, !tbaa !77
  %572 = sub i64 %563, %560
  %573 = add i64 %572, 1
  %574 = lshr i64 %573, 1
  store i64 %574, ptr %313, align 8, !tbaa !78
  br label %575

575:                                              ; preds = %567, %564
  %576 = call ptr @BorderImage(ptr noundef nonnull %552, ptr noundef nonnull %19, ptr noundef %3) #16
  %577 = icmp eq ptr %576, null
  br i1 %577, label %580, label %578

578:                                              ; preds = %575
  %579 = call ptr @DestroyImage(ptr noundef nonnull %552) #16
  br label %580

580:                                              ; preds = %578, %575
  %581 = phi ptr [ %576, %578 ], [ %552, %575 ]
  %582 = load ptr, ptr %141, align 8, !tbaa !47
  %583 = icmp eq ptr %582, null
  br i1 %583, label %590, label %584

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct._Image, ptr %581, i64 0, i32 36
  %586 = load i32, ptr %585, align 8, !tbaa !115
  %587 = icmp eq i32 %586, 24
  br i1 %587, label %588, label %590

588:                                              ; preds = %584
  %589 = call i32 @NegateImageChannel(ptr noundef nonnull %581, i32 noundef 8, i32 noundef 0) #16
  br label %590

590:                                              ; preds = %588, %584, %580
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #15
  br label %591

591:                                              ; preds = %590, %546
  %592 = phi ptr [ %581, %590 ], [ %552, %546 ]
  store i64 %558, ptr %314, align 8, !tbaa !92
  store i64 %563, ptr %315, align 8, !tbaa !93
  %593 = load i32, ptr %316, align 4, !tbaa !53
  store i32 %593, ptr %317, align 4, !tbaa !116
  %594 = getelementptr inbounds %struct._Image, ptr %592, i64 0, i32 35
  %595 = load i32, ptr %594, align 4, !tbaa !116
  %596 = icmp eq i32 %595, 0
  %597 = select i1 %596, i32 %593, i32 %595
  store i32 %597, ptr %317, align 4
  %598 = getelementptr inbounds %struct._Image, ptr %592, i64 0, i32 7
  %599 = load i64, ptr %598, align 8, !tbaa !92
  %600 = uitofp i64 %599 to double
  %601 = getelementptr inbounds %struct._Image, ptr %592, i64 0, i32 8
  %602 = load i64, ptr %601, align 8, !tbaa !93
  %603 = uitofp i64 %602 to double
  %604 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %600, double noundef %603) #16
  %605 = call i32 @ParseGravityGeometry(ptr noundef %290, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %3) #16
  %606 = load i64, ptr %318, align 8, !tbaa !83
  %607 = add i64 %606, %180
  %608 = load i64, ptr %319, align 8, !tbaa !84
  %609 = add i64 %608, %180
  store i64 %609, ptr %13, align 8, !tbaa !82
  %610 = load ptr, ptr %141, align 8, !tbaa !47
  %611 = icmp ne ptr %610, null
  %612 = and i1 %320, %611
  br i1 %612, label %613, label %639

613:                                              ; preds = %591
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %20) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %20, ptr noundef nonnull align 16 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !117
  %614 = load <2 x i64>, ptr %6, align 16, !tbaa !82
  %615 = shl <2 x i64> %614, <i64 1, i64 1>
  %616 = insertelement <2 x i64> poison, i64 %558, i64 0
  %617 = insertelement <2 x i64> %616, i64 %563, i64 1
  %618 = add <2 x i64> %615, %617
  store <2 x i64> %618, ptr %20, align 16, !tbaa !82
  %619 = call ptr @GetImageProperty(ptr noundef nonnull %592, ptr noundef nonnull @.str.9) #16
  %620 = icmp eq ptr %619, null
  br i1 %620, label %632, label %621

621:                                              ; preds = %613
  %622 = load double, ptr %305, align 8, !tbaa !105
  %623 = load double, ptr %306, align 8, !tbaa !107
  %624 = fsub double %622, %623
  %625 = fadd double %624, 4.000000e+00
  %626 = call i64 @MultilineCensus(ptr noundef nonnull %619) #16
  %627 = uitofp i64 %626 to double
  %628 = fmul double %625, %627
  %629 = fptoui double %628 to i64
  %630 = load i64, ptr %321, align 8, !tbaa !87
  %631 = add i64 %630, %629
  store i64 %631, ptr %321, align 8, !tbaa !87
  br label %632

632:                                              ; preds = %621, %613
  %633 = call ptr @FrameImage(ptr noundef nonnull %592, ptr noundef nonnull %20, ptr noundef %3) #16
  %634 = icmp eq ptr %633, null
  br i1 %634, label %637, label %635

635:                                              ; preds = %632
  %636 = call ptr @DestroyImage(ptr noundef nonnull %592) #16
  br label %637

637:                                              ; preds = %635, %632
  %638 = phi ptr [ %633, %635 ], [ %592, %632 ]
  store i64 0, ptr %13, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %20) #15
  br label %639

639:                                              ; preds = %637, %591
  %640 = phi i64 [ 0, %637 ], [ %607, %591 ]
  %641 = phi ptr [ %638, %637 ], [ %592, %591 ]
  %642 = getelementptr inbounds %struct._Image, ptr %641, i64 0, i32 55
  %643 = call i32 @LocaleCompare(ptr noundef nonnull %642, ptr noundef nonnull @.str.13) #16
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %711, label %645

645:                                              ; preds = %639
  %646 = load i32, ptr %307, align 8, !tbaa !52
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %657, label %648

648:                                              ; preds = %645
  %649 = getelementptr inbounds %struct._Image, ptr %641, i64 0, i32 12
  %650 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.14, ptr noundef nonnull %649, ptr noundef %3) #16
  %651 = call ptr @ShadowImage(ptr noundef nonnull %641, double noundef 8.000000e+01, double noundef 2.000000e+00, i64 noundef 5, i64 noundef 5, ptr noundef %3) #16
  %652 = icmp eq ptr %651, null
  br i1 %652, label %657, label %653

653:                                              ; preds = %648
  %654 = getelementptr inbounds %struct._Image, ptr %651, i64 0, i32 58
  call void @InheritException(ptr noundef nonnull %654, ptr noundef %3) #16
  %655 = call i32 @CompositeImage(ptr noundef nonnull %651, i32 noundef 40, ptr noundef nonnull %641, i64 noundef 0, i64 noundef 0) #16
  %656 = call ptr @DestroyImage(ptr noundef nonnull %641) #16
  br label %657

657:                                              ; preds = %648, %653, %645
  %658 = phi ptr [ %641, %645 ], [ %651, %653 ], [ %641, %648 ]
  %659 = getelementptr inbounds %struct._Image, ptr %658, i64 0, i32 36
  %660 = load i32, ptr %659, align 8, !tbaa !115
  %661 = load i64, ptr %12, align 8, !tbaa !82
  %662 = add nsw i64 %661, %640
  %663 = load i64, ptr %14, align 8, !tbaa !82
  %664 = load i64, ptr %13, align 8, !tbaa !82
  %665 = add nsw i64 %664, %663
  %666 = call i32 @CompositeImage(ptr noundef %330, i32 noundef %660, ptr noundef nonnull %658, i64 noundef %662, i64 noundef %665) #16
  %667 = call ptr @GetImageProperty(ptr noundef nonnull %658, ptr noundef nonnull @.str.9) #16
  %668 = icmp eq ptr %667, null
  br i1 %668, label %711, label %669

669:                                              ; preds = %657
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %21) #15
  %670 = load ptr, ptr %141, align 8, !tbaa !47
  %671 = icmp eq ptr %670, null
  br i1 %671, label %675, label %672

672:                                              ; preds = %669
  %673 = getelementptr inbounds %struct._Image, ptr %658, i64 0, i32 7
  %674 = load i64, ptr %673, align 8, !tbaa !92
  br label %675

675:                                              ; preds = %669, %672
  %676 = phi i64 [ %674, %672 ], [ %558, %669 ]
  %677 = sub i64 %676, %322
  %678 = uitofp i64 %677 to double
  %679 = load double, ptr %305, align 8, !tbaa !105
  %680 = load double, ptr %306, align 8, !tbaa !107
  %681 = fsub double %679, %680
  %682 = fadd double %681, 4.000000e+00
  %683 = call i64 @MultilineCensus(ptr noundef nonnull %667) #16
  %684 = uitofp i64 %683 to double
  %685 = fmul double %682, %684
  %686 = load i64, ptr %12, align 8, !tbaa !82
  %687 = add i64 %686, %180
  %688 = uitofp i64 %687 to double
  %689 = load ptr, ptr %141, align 8, !tbaa !47
  %690 = icmp eq ptr %689, null
  %691 = load i64, ptr %14, align 8, !tbaa !82
  br i1 %690, label %695, label %692

692:                                              ; preds = %675
  %693 = add i64 %323, %563
  %694 = add i64 %693, %691
  br label %703

695:                                              ; preds = %675
  %696 = load i64, ptr %304, align 8, !tbaa !78
  %697 = load i32, ptr %307, align 8, !tbaa !52
  %698 = icmp eq i32 %697, 0
  %699 = select i1 %698, i64 0, i64 4
  %700 = add i64 %691, %180
  %701 = add i64 %700, %696
  %702 = add i64 %701, %699
  br label %703

703:                                              ; preds = %695, %692
  %704 = phi i64 [ %694, %692 ], [ %702, %695 ]
  %705 = add i64 %704, %179
  %706 = uitofp i64 %705 to double
  %707 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %21, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %678, double noundef %685, double noundef %688, double noundef %706) #16
  %708 = call ptr @CloneString(ptr noundef nonnull %324, ptr noundef nonnull %21) #16
  %709 = call ptr @CloneString(ptr noundef nonnull %235, ptr noundef nonnull %667) #16
  %710 = call i32 @AnnotateImage(ptr noundef %330, ptr noundef %213) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %21) #15
  br label %711

711:                                              ; preds = %657, %703, %639
  %712 = phi ptr [ %658, %703 ], [ %658, %657 ], [ %641, %639 ]
  %713 = load i64, ptr %126, align 16, !tbaa !83
  %714 = add i64 %713, %180
  %715 = shl i64 %714, 1
  %716 = load i64, ptr %12, align 8, !tbaa !82
  %717 = add i64 %716, %558
  %718 = add i64 %717, %715
  store i64 %718, ptr %12, align 8, !tbaa !82
  %719 = add nuw nsw i64 %547, 1
  %720 = icmp eq i64 %719, %341
  br i1 %720, label %725, label %721

721:                                              ; preds = %711
  %722 = load i64, ptr %11, align 8, !tbaa !82
  %723 = urem i64 %719, %722
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %725, label %744

725:                                              ; preds = %721, %711
  store i64 %713, ptr %12, align 8, !tbaa !82
  %726 = load i64, ptr %127, align 8, !tbaa !84
  %727 = add i64 %726, %180
  %728 = shl i64 %727, 1
  %729 = add i64 %728, %563
  %730 = uitofp i64 %729 to double
  %731 = load double, ptr %305, align 8, !tbaa !105
  %732 = load double, ptr %306, align 8, !tbaa !107
  %733 = fsub double %731, %732
  %734 = fadd double %733, 4.000000e+00
  %735 = call double @llvm.fmuladd.f64(double %734, double %289, double %730)
  %736 = load i32, ptr %307, align 8, !tbaa !52
  %737 = icmp eq i32 %736, 0
  %738 = select i1 %737, i32 0, i32 4
  %739 = sitofp i32 %738 to double
  %740 = fadd double %735, %739
  %741 = fptosi double %740 to i64
  %742 = load i64, ptr %14, align 8, !tbaa !82
  %743 = add nsw i64 %742, %741
  store i64 %743, ptr %14, align 8, !tbaa !82
  br label %744

744:                                              ; preds = %725, %721
  %745 = phi i64 [ 0, %725 ], [ %561, %721 ]
  %746 = load ptr, ptr %325, align 8, !tbaa !118
  %747 = icmp eq ptr %746, null
  br i1 %747, label %750, label %748

748:                                              ; preds = %744
  %749 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %712, ptr noundef nonnull @.str.15, i64 noundef %549, i64 noundef %29) #19
  br label %750

750:                                              ; preds = %748, %744
  %751 = load ptr, ptr %550, align 8, !tbaa !73
  %752 = call ptr @DestroyImage(ptr noundef %751) #16
  store ptr %752, ptr %550, align 8, !tbaa !73
  %753 = call ptr @DestroyImage(ptr noundef nonnull %712) #16
  %754 = add nsw i64 %549, 1
  %755 = icmp eq i64 %719, %425
  br i1 %755, label %756, label %546, !llvm.loop !119

756:                                              ; preds = %750, %538
  %757 = phi i64 [ %332, %538 ], [ %754, %750 ]
  %758 = phi ptr [ %327, %538 ], [ %753, %750 ]
  %759 = add nuw nsw i64 %331, 1
  %760 = icmp slt i64 %759, %300
  br i1 %760, label %761, label %772

761:                                              ; preds = %756
  call void @AcquireNextImage(ptr noundef %206, ptr noundef %330) #16
  %762 = call ptr @GetNextImageInList(ptr noundef %330) #16
  %763 = icmp eq ptr %762, null
  br i1 %763, label %764, label %766

764:                                              ; preds = %761
  %765 = call ptr @DestroyImageList(ptr noundef %330) #16
  br label %784

766:                                              ; preds = %761
  %767 = call ptr @GetNextImageInList(ptr noundef %330) #16
  %768 = getelementptr inbounds %struct._Image, ptr %767, i64 0, i32 12
  %769 = load i64, ptr %208, align 4
  store i64 %769, ptr %768, align 8
  %770 = getelementptr inbounds ptr, ptr %328, i64 %341
  %771 = sub i64 %329, %341
  br label %326

772:                                              ; preds = %756, %288
  %773 = phi ptr [ %291, %288 ], [ %330, %756 ]
  %774 = call ptr @DestroyImage(ptr noundef %290) #16
  %775 = icmp eq ptr %247, null
  br i1 %775, label %778, label %776

776:                                              ; preds = %772
  %777 = call ptr @DestroyImage(ptr noundef nonnull %247) #16
  br label %778

778:                                              ; preds = %776, %772
  %779 = call ptr @DestroyString(ptr noundef %251) #16
  %780 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %30) #16
  %781 = call ptr @DestroyDrawInfo(ptr noundef %213) #16
  %782 = call ptr @DestroyImageInfo(ptr noundef %206) #16
  %783 = call ptr @GetFirstImageInList(ptr noundef %773) #16
  br label %784

784:                                              ; preds = %778, %764, %446, %91
  %785 = phi ptr [ null, %91 ], [ null, %446 ], [ null, %764 ], [ %783, %778 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  ret ptr %785
}

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ImageListToArray(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ThumbnailImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !PGOFuncName !120 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef %1, ptr noundef nonnull %10) #16
  %12 = load ptr, ptr %6, align 8, !tbaa !118
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #16
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @SceneCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !PGOFuncName !121 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 39
  %5 = load i64, ptr %4, align 8, !tbaa !80
  %6 = load ptr, ptr %1, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 39
  %8 = load i64, ptr %7, align 8, !tbaa !80
  %9 = sub i64 %5, %8
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetMontageGeometry(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !122 {
  store i64 0, ptr %4, align 8, !tbaa !82
  store i64 0, ptr %5, align 8, !tbaa !82
  %7 = tail call i32 @GetGeometry(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %8 = load i64, ptr %4, align 8, !tbaa !82
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i64, ptr %5, align 8, !tbaa !82
  %12 = icmp eq i64 %11, 0
  %13 = uitofp i64 %1 to double
  br i1 %12, label %14, label %20

14:                                               ; preds = %10
  %15 = tail call double @llvm.sqrt.f64(double %13)
  %16 = fptoui double %15 to i64
  store i64 %16, ptr %4, align 8, !tbaa !82
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i64, ptr %5, align 8, !tbaa !82
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi i64 [ %19, %18 ], [ %11, %10 ]
  %22 = uitofp i64 %21 to double
  %23 = fdiv double %13, %22
  %24 = tail call double @llvm.ceil.f64(double %23)
  %25 = fptoui double %24 to i64
  store i64 %25, ptr %4, align 8, !tbaa !82
  br label %26

26:                                               ; preds = %6, %20, %14
  %27 = phi i64 [ %8, %6 ], [ %25, %20 ], [ %16, %14 ]
  %28 = load i64, ptr %5, align 8, !tbaa !82
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = uitofp i64 %1 to double
  %32 = uitofp i64 %27 to double
  %33 = fdiv double %31, %32
  %34 = tail call double @llvm.ceil.f64(double %33)
  %35 = fptoui double %34 to i64
  store i64 %35, ptr %5, align 8, !tbaa !82
  br label %36

36:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ParseMetaGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0, i64 noundef %1) unnamed_addr #10 !PGOFuncName !123 {
  %3 = tail call i64 @llvm.smax.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize
declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetTypeMetrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @MultilineCensus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #10 !PGOFuncName !124 {
  %3 = tail call i64 @llvm.smin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @TextureImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AnnotateImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @NegateImageChannel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @FrameImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ShadowImage(ptr noundef, double noundef, double noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @AcquireNextImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(none) }
attributes #18 = { noreturn nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { nounwind optsize allocsize(0,1) }

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
!38 = !{!39, !40, i64 0}
!39 = !{!"_MontageInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !42, i64 56, !35, i64 64, !43, i64 68, !43, i64 76, !43, i64 84, !43, i64 92, !43, i64 100, !35, i64 108, !36, i64 112, !35, i64 4208, !42, i64 4216}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"double", !36, i64 0}
!42 = !{!"long", !36, i64 0}
!43 = !{!"_PixelPacket", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6}
!44 = !{!"short", !36, i64 0}
!45 = !{!39, !40, i64 8}
!46 = !{!39, !40, i64 16}
!47 = !{!39, !40, i64 24}
!48 = !{!39, !40, i64 32}
!49 = !{!39, !40, i64 40}
!50 = !{!39, !41, i64 48}
!51 = !{!39, !42, i64 56}
!52 = !{!39, !35, i64 64}
!53 = !{!39, !35, i64 108}
!54 = !{!39, !35, i64 4208}
!55 = !{!56, !35, i64 16712}
!56 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !42, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !41, i64 144, !41, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !35, i64 184, !35, i64 188, !42, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !42, i64 216, !35, i64 224, !35, i64 228, !40, i64 232, !40, i64 240, !35, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !42, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !40, i64 16720, !42, i64 16728, !42, i64 16736, !43, i64 16744, !42, i64 16752, !35, i64 16760, !43, i64 16764, !40, i64 16776, !35, i64 16784}
!57 = !{!56, !40, i64 120}
!58 = !{!56, !41, i64 144}
!59 = !{!39, !44, i64 74}
!60 = !{!39, !44, i64 82}
!61 = !{!39, !42, i64 4216}
!62 = !{!63, !35, i64 12976}
!63 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !42, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !40, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !41, i64 104, !64, i64 112, !35, i64 208, !40, i64 216, !35, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !42, i64 256, !41, i64 264, !41, i64 272, !66, i64 280, !66, i64 312, !66, i64 344, !41, i64 376, !41, i64 384, !41, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !40, i64 424, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !67, i64 480, !68, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !42, i64 12904, !42, i64 12912, !70, i64 12920, !35, i64 12976, !42, i64 12984, !40, i64 12992, !71, i64 13000, !71, i64 13032, !40, i64 13064, !42, i64 13072, !42, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !35, i64 13112, !35, i64 13116, !43, i64 13120, !40, i64 13128, !66, i64 13136, !40, i64 13168, !40, i64 13176, !35, i64 13184, !35, i64 13188, !72, i64 13192, !35, i64 13200, !42, i64 13208, !42, i64 13216, !35, i64 13224, !42, i64 13232}
!64 = !{!"_ChromaticityInfo", !65, i64 0, !65, i64 24, !65, i64 48, !65, i64 72}
!65 = !{!"_PrimaryInfo", !41, i64 0, !41, i64 8, !41, i64 16}
!66 = !{!"_RectangleInfo", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!67 = !{!"_ErrorInfo", !41, i64 0, !41, i64 8, !41, i64 16}
!68 = !{!"_TimerInfo", !69, i64 0, !69, i64 24, !35, i64 48, !42, i64 56}
!69 = !{!"_Timer", !41, i64 0, !41, i64 8, !41, i64 16}
!70 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !40, i64 40, !42, i64 48}
!71 = !{!"_ProfileInfo", !40, i64 0, !42, i64 8, !40, i64 16, !42, i64 24}
!72 = !{!"long long", !36, i64 0}
!73 = !{!40, !40, i64 0}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!63, !40, i64 576}
!77 = !{!66, !42, i64 0}
!78 = !{!66, !42, i64 8}
!79 = distinct !{!79, !75}
!80 = !{!63, !42, i64 432}
!81 = distinct !{!81, !75}
!82 = !{!42, !42, i64 0}
!83 = !{!66, !42, i64 16}
!84 = !{!66, !42, i64 24}
!85 = !{!86, !42, i64 0}
!86 = !{!"_FrameInfo", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!87 = !{!86, !42, i64 8}
!88 = !{!86, !42, i64 40}
!89 = !{!86, !42, i64 32}
!90 = !{!86, !42, i64 16}
!91 = !{!86, !42, i64 24}
!92 = !{!63, !42, i64 40}
!93 = !{!63, !42, i64 48}
!94 = distinct !{!94, !75}
!95 = !{!96, !41, i64 392}
!96 = !{!"_DrawInfo", !40, i64 0, !40, i64 8, !66, i64 16, !97, i64 48, !35, i64 96, !43, i64 100, !43, i64 108, !41, i64 120, !98, i64 128, !40, i64 256, !40, i64 264, !40, i64 272, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !42, i64 304, !41, i64 312, !35, i64 320, !35, i64 324, !40, i64 328, !42, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !35, i64 368, !35, i64 372, !42, i64 376, !40, i64 384, !41, i64 392, !40, i64 400, !35, i64 408, !43, i64 412, !43, i64 420, !40, i64 432, !40, i64 440, !40, i64 448, !99, i64 456, !35, i64 488, !44, i64 492, !35, i64 496, !102, i64 504, !35, i64 672, !42, i64 680, !41, i64 688, !41, i64 696, !41, i64 704, !35, i64 712}
!97 = !{!"_AffineMatrix", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40}
!98 = !{!"_GradientInfo", !35, i64 0, !66, i64 8, !99, i64 40, !40, i64 72, !42, i64 80, !35, i64 88, !35, i64 92, !42, i64 96, !100, i64 104, !101, i64 120}
!99 = !{!"_SegmentInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!100 = !{!"_PointInfo", !41, i64 0, !41, i64 8}
!101 = !{!"float", !36, i64 0}
!102 = !{!"_ElementReference", !40, i64 0, !35, i64 8, !98, i64 16, !42, i64 144, !40, i64 152, !40, i64 160}
!103 = !{!96, !35, i64 96}
!104 = !{!96, !40, i64 328}
!105 = !{!106, !41, i64 16}
!106 = !{!"_TypeMetric", !100, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !99, i64 72, !100, i64 104}
!107 = !{!106, !41, i64 24}
!108 = distinct !{!108, !75}
!109 = distinct !{!109, !75}
!110 = !{!63, !40, i64 232}
!111 = distinct !{!111, !75}
!112 = !{!63, !40, i64 240}
!113 = !{!36, !36, i64 0}
!114 = distinct !{!114, !75}
!115 = !{!63, !35, i64 416}
!116 = !{!63, !35, i64 412}
!117 = !{i64 0, i64 8, !82, i64 8, i64 8, !82, i64 16, i64 8, !82, i64 24, i64 8, !82, i64 32, i64 8, !82, i64 40, i64 8, !82}
!118 = !{!63, !40, i64 568}
!119 = distinct !{!119, !75}
!120 = !{!"montage.c:SetImageProgress"}
!121 = !{!"montage.c:SceneCompare"}
!122 = !{!"montage.c:GetMontageGeometry"}
!123 = !{!"montage.c:MagickMax"}
!124 = !{!"montage.c:MagickMin"}
