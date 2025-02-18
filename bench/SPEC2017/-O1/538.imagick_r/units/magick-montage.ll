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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneMontageInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(4224) ptr @AcquireMagickMemory(i64 noundef 4224) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @GetExceptionInfo(ptr noundef nonnull %3) #15
  %7 = tail call ptr @__errno_location() #16
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #15
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 109, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #15
  %11 = call ptr @DestroyString(ptr noundef %9) #15
  call void @CatchException(ptr noundef nonnull %3) #15
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #15
  call void @MagickCoreTerminus() #15
  call void @_exit(i32 noundef 1) #17
  unreachable

13:                                               ; preds = %2
  tail call void @GetMontageInfo(ptr noundef %0, ptr noundef nonnull %4)
  %14 = icmp eq ptr %1, null
  br i1 %14, label %88, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #15
  store ptr %19, ptr %4, align 8, !tbaa !38
  br label %20

20:                                               ; preds = %18, %15
  %21 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @AcquireString(ptr noundef nonnull %22) #15
  %26 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @AcquireString(ptr noundef nonnull %29) #15
  %33 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @AcquireString(ptr noundef nonnull %36) #15
  %40 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !47
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @AcquireString(ptr noundef nonnull %43) #15
  %47 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 4
  store ptr %46, ptr %47, align 8, !tbaa !48
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @AcquireString(ptr noundef nonnull %50) #15
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
  %85 = tail call i64 @CopyMagickString(ptr noundef nonnull %83, ptr noundef nonnull %84, i64 noundef 4096) #15
  %86 = tail call i32 @IsEventLogging() #15
  %87 = getelementptr inbounds %struct._MontageInfo, ptr %4, i64 0, i32 16
  store i32 %86, ptr %87, align 8, !tbaa !54
  br label %88

88:                                               ; preds = %13, %55
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

; Function Attrs: nounwind uwtable
define dso_local void @GetMontageInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 219, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef 4224) #15
  %11 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 15
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %13 = tail call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef nonnull %12, i64 noundef 4096) #15
  %14 = tail call ptr @AcquireString(ptr noundef nonnull @DefaultTileGeometry) #15
  store ptr %14, ptr %1, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #15
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
  %37 = tail call i32 @IsEventLogging() #15
  %38 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 16
  store i32 %37, ptr %38, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 17
  store i64 2880220587, ptr %39, align 8, !tbaa !61
  ret void
}

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyMontageInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 166, ptr noundef nonnull @.str.4) #15
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #15
  store ptr %11, ptr %0, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @DestroyString(ptr noundef nonnull %14) #15
  store ptr %17, ptr %13, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @DestroyString(ptr noundef nonnull %20) #15
  store ptr %23, ptr %19, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @DestroyString(ptr noundef nonnull %26) #15
  store ptr %29, ptr %25, align 8, !tbaa !47
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %32) #15
  store ptr %35, ptr %31, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @DestroyString(ptr noundef nonnull %38) #15
  store ptr %41, ptr %37, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct._MontageInfo, ptr %0, i64 0, i32 17
  store i64 -2880220588, ptr %43, align 8, !tbaa !61
  %44 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #15
  ret ptr %44
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @MontageImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @AcquireImageInfo() #15
  %5 = tail call ptr @MontageImageList(ptr noundef %4, ptr noundef %1, ptr noundef %0, ptr noundef %2)
  %6 = tail call ptr @DestroyImageInfo(ptr noundef %4) #15
  ret ptr %5
}

declare ptr @AcquireImageInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @MontageImageList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct._FrameInfo, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca %struct._RectangleInfo, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct._TypeMetric, align 8
  %18 = alloca [4096 x i8], align 16
  %19 = alloca [4096 x i8], align 16
  %20 = alloca %struct._TypeMetric, align 8
  %21 = alloca %struct._RectangleInfo, align 8
  %22 = alloca %struct._FrameInfo, align 8
  %23 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %17) #15
  %24 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %25 = load i32, ptr %24, align 8, !tbaa !62
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %29 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 423, ptr noundef nonnull @.str.5, ptr noundef nonnull %28) #15
  br label %30

30:                                               ; preds = %27, %4
  %31 = tail call i64 @GetImageListLength(ptr noundef %2) #15
  %32 = tail call ptr @ImageListToArray(ptr noundef %2, ptr noundef %3) #15
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = tail call ptr @NewImageList() #15
  %35 = icmp sgt i64 %31, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 1
  %38 = load ptr, ptr %32, align 8, !tbaa !73
  %39 = tail call ptr @CloneImage(ptr noundef %38, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %82, label %46

41:                                               ; preds = %77
  %42 = getelementptr inbounds ptr, ptr %32, i64 %79
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = call ptr @CloneImage(ptr noundef %43, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %82, label %46, !llvm.loop !74

46:                                               ; preds = %36, %41
  %47 = phi ptr [ %44, %41 ], [ %39, %36 ]
  %48 = phi ptr [ %42, %41 ], [ %32, %36 ]
  %49 = phi i64 [ %79, %41 ], [ 0, %36 ]
  %50 = phi i1 [ %80, %41 ], [ %35, %36 ]
  %51 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 26
  %52 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.6, ptr noundef nonnull %51) #15
  %53 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 48
  %54 = load ptr, ptr %53, align 8, !tbaa !77
  %55 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %47, ptr noundef null, ptr noundef %54) #15
  %56 = load ptr, ptr %1, align 8, !tbaa !38
  %57 = call i32 @ParseRegionGeometry(ptr noundef nonnull %47, ptr noundef %56, ptr noundef nonnull %9, ptr noundef %3) #15
  %58 = load i64, ptr %9, align 8, !tbaa !78
  %59 = load i64, ptr %37, align 8, !tbaa !79
  %60 = call ptr @ThumbnailImage(ptr noundef nonnull %47, i64 noundef %58, i64 noundef %59, ptr noundef %3) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %82, label %62

62:                                               ; preds = %46
  store ptr %60, ptr %48, align 8, !tbaa !73
  %63 = load ptr, ptr %53, align 8, !tbaa !77
  %64 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %47, ptr noundef %55, ptr noundef %63) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #15
  %65 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 47
  %66 = load ptr, ptr %65, align 8, !tbaa !80
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 53
  %70 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, ptr noundef nonnull %69) #15
  %71 = load ptr, ptr %65, align 8, !tbaa !80
  %72 = load ptr, ptr %53, align 8, !tbaa !77
  %73 = call i32 %71(ptr noundef nonnull %6, i64 noundef %49, i64 noundef %31, ptr noundef %72) #15
  br label %74

74:                                               ; preds = %62, %68
  %75 = phi i32 [ %73, %68 ], [ 1, %62 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #15
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = call ptr @DestroyImage(ptr noundef nonnull %47) #15
  %79 = add nuw nsw i64 %49, 1
  %80 = icmp slt i64 %79, %31
  %81 = icmp eq i64 %79, %31
  br i1 %81, label %82, label %41, !llvm.loop !74

82:                                               ; preds = %74, %46, %41, %77, %36, %30
  %83 = phi i64 [ 0, %30 ], [ 0, %36 ], [ %31, %77 ], [ %79, %41 ], [ %49, %46 ], [ %49, %74 ]
  %84 = phi i1 [ %35, %30 ], [ %35, %36 ], [ %80, %77 ], [ %80, %41 ], [ %50, %46 ], [ %50, %74 ]
  %85 = phi ptr [ %34, %30 ], [ %34, %36 ], [ %60, %77 ], [ %60, %41 ], [ null, %46 ], [ %60, %74 ]
  %86 = phi ptr [ %33, %30 ], [ null, %36 ], [ %78, %77 ], [ null, %41 ], [ %47, %46 ], [ %47, %74 ]
  br i1 %84, label %89, label %87

87:                                               ; preds = %82
  %88 = icmp sgt i64 %31, 0
  br i1 %88, label %108, label %118

89:                                               ; preds = %82
  %90 = icmp eq ptr %85, null
  %91 = sext i1 %90 to i64
  %92 = add nsw i64 %83, %91
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = add i64 %83, %91
  br label %96

96:                                               ; preds = %94, %103
  %97 = phi i64 [ %104, %103 ], [ 0, %94 ]
  %98 = getelementptr inbounds ptr, ptr %32, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !73
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = call ptr @DestroyImage(ptr noundef nonnull %99) #15
  store ptr %102, ptr %98, align 8, !tbaa !73
  br label %103

103:                                              ; preds = %96, %101
  %104 = add nuw i64 %97, 1
  %105 = icmp eq i64 %97, %95
  br i1 %105, label %106, label %96, !llvm.loop !81

106:                                              ; preds = %103, %89
  %107 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %32) #15
  br label %944

108:                                              ; preds = %87, %115
  %109 = phi i64 [ %116, %115 ], [ 0, %87 ]
  %110 = getelementptr inbounds ptr, ptr %32, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !73
  %112 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 39
  %113 = load i64, ptr %112, align 8, !tbaa !82
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = add nuw nsw i64 %109, 1
  %117 = icmp eq i64 %116, %31
  br i1 %117, label %118, label %108, !llvm.loop !83

118:                                              ; preds = %115, %108, %87
  %119 = phi i64 [ 0, %87 ], [ %31, %115 ], [ %109, %108 ]
  %120 = icmp eq i64 %119, %31
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  call void @qsort(ptr noundef nonnull %32, i64 noundef %31, i64 noundef 8, ptr noundef nonnull @SceneCompare) #15
  br label %122

122:                                              ; preds = %121, %118
  %123 = uitofp i64 %31 to double
  %124 = call double @sqrt(double noundef %123) #15
  %125 = fptoui double %124 to i64
  store i64 %125, ptr %12, align 8, !tbaa !84
  %126 = uitofp i64 %125 to double
  %127 = fdiv double %123, %126
  %128 = call double @llvm.ceil.f64(double %127)
  %129 = fptoui double %128 to i64
  store i64 %129, ptr %13, align 8, !tbaa !84
  store i64 0, ptr %14, align 8, !tbaa !84
  store i64 0, ptr %16, align 8, !tbaa !84
  %130 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !45
  %132 = icmp eq ptr %131, null
  br i1 %132, label %161, label %133

133:                                              ; preds = %122
  store i64 0, ptr %12, align 8, !tbaa !84
  store i64 0, ptr %13, align 8, !tbaa !84
  %134 = call i32 @GetGeometry(ptr noundef nonnull %131, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef nonnull %12) #15
  %135 = load i64, ptr %12, align 8, !tbaa !84
  %136 = icmp eq i64 %135, 0
  %137 = load i64, ptr %13, align 8
  %138 = icmp eq i64 %137, 0
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = call double @sqrt(double noundef %123) #15
  %142 = fptoui double %141 to i64
  store i64 %142, ptr %12, align 8, !tbaa !84
  br label %143

143:                                              ; preds = %140, %133
  %144 = load i64, ptr %12, align 8, !tbaa !84
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i64, ptr %13, align 8, !tbaa !84
  %148 = uitofp i64 %147 to double
  %149 = fdiv double %123, %148
  %150 = call double @llvm.ceil.f64(double %149)
  %151 = fptoui double %150 to i64
  store i64 %151, ptr %12, align 8, !tbaa !84
  br label %152

152:                                              ; preds = %146, %143
  %153 = load i64, ptr %13, align 8, !tbaa !84
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i64, ptr %12, align 8, !tbaa !84
  %157 = uitofp i64 %156 to double
  %158 = fdiv double %123, %157
  %159 = call double @llvm.ceil.f64(double %158)
  %160 = fptoui double %159 to i64
  store i64 %160, ptr %13, align 8, !tbaa !84
  br label %161

161:                                              ; preds = %155, %152, %122
  %162 = load ptr, ptr %32, align 8, !tbaa !73
  call void @SetGeometry(ptr noundef %162, ptr noundef nonnull %10) #15
  %163 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 7
  %164 = load i64, ptr %163, align 8, !tbaa !51
  %165 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 2
  store i64 %164, ptr %165, align 8, !tbaa !85
  %166 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 3
  store i64 %164, ptr %166, align 8, !tbaa !86
  %167 = load ptr, ptr %1, align 8, !tbaa !38
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  %171 = call i32 @GetGeometry(ptr noundef nonnull %167, ptr noundef nonnull %165, ptr noundef nonnull %166, ptr noundef nonnull %10, ptr noundef nonnull %170) #15
  %172 = and i32 %171, 12
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i32
  br label %175

175:                                              ; preds = %169, %161
  %176 = phi i32 [ %174, %169 ], [ 0, %161 ]
  %177 = load i64, ptr %163, align 8, !tbaa !51
  %178 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 48) #15
  %179 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !47
  %181 = icmp eq ptr %180, null
  br i1 %181, label %215, label %182

182:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %18) #15
  %183 = load i64, ptr %10, align 8, !tbaa !78
  store i64 %183, ptr %8, align 8, !tbaa !87
  %184 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !79
  %186 = getelementptr inbounds %struct._FrameInfo, ptr %8, i64 0, i32 1
  store i64 %185, ptr %186, align 8, !tbaa !89
  %187 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %18, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull %180) #15
  %188 = getelementptr inbounds %struct._FrameInfo, ptr %8, i64 0, i32 5
  %189 = getelementptr inbounds %struct._FrameInfo, ptr %8, i64 0, i32 4
  %190 = call i32 @ParseMetaGeometry(ptr noundef nonnull %18, ptr noundef nonnull %188, ptr noundef nonnull %189, ptr noundef nonnull %8, ptr noundef nonnull %186) #15
  %191 = and i32 %190, 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %182
  %194 = load i64, ptr %8, align 8, !tbaa !87
  store i64 %194, ptr %186, align 8, !tbaa !89
  br label %195

195:                                              ; preds = %193, %182
  %196 = and i32 %190, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i64, ptr %8, align 8, !tbaa !87
  %200 = sdiv i64 %199, 2
  store i64 %200, ptr %188, align 8, !tbaa !90
  br label %201

201:                                              ; preds = %198, %195
  %202 = and i32 %190, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i64, ptr %188, align 8, !tbaa !90
  store i64 %205, ptr %189, align 8, !tbaa !91
  br label %206

206:                                              ; preds = %204, %201
  %207 = load i64, ptr %8, align 8, !tbaa !87
  %208 = getelementptr inbounds %struct._FrameInfo, ptr %8, i64 0, i32 2
  store i64 %207, ptr %208, align 8, !tbaa !92
  %209 = load i64, ptr %186, align 8, !tbaa !89
  %210 = getelementptr inbounds %struct._FrameInfo, ptr %8, i64 0, i32 3
  store i64 %209, ptr %210, align 8, !tbaa !93
  %211 = load i64, ptr %189, align 8, !tbaa !91
  %212 = load i64, ptr %188, align 8, !tbaa !90
  %213 = call i64 @llvm.smax.i64(i64 %211, i64 %212)
  %214 = call i64 @llvm.smax.i64(i64 %207, i64 %209)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %18) #15
  br label %215

215:                                              ; preds = %206, %175
  %216 = phi i64 [ %213, %206 ], [ 0, %175 ]
  %217 = phi i64 [ %214, %206 ], [ %177, %175 ]
  %218 = icmp sgt i64 %31, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %215
  %220 = load i64, ptr %10, align 8, !tbaa !78
  %221 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  %222 = load i64, ptr %221, align 8, !tbaa !79
  br label %223

223:                                              ; preds = %219, %239
  %224 = phi i64 [ %222, %219 ], [ %240, %239 ]
  %225 = phi i64 [ 0, %219 ], [ %241, %239 ]
  %226 = phi i64 [ %220, %219 ], [ %234, %239 ]
  %227 = getelementptr inbounds ptr, ptr %32, i64 %225
  %228 = load ptr, ptr %227, align 8, !tbaa !73
  %229 = getelementptr inbounds %struct._Image, ptr %228, i64 0, i32 7
  %230 = load i64, ptr %229, align 8, !tbaa !94
  %231 = icmp ugt i64 %230, %226
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  store i64 %230, ptr %10, align 8, !tbaa !78
  br label %233

233:                                              ; preds = %232, %223
  %234 = phi i64 [ %230, %232 ], [ %226, %223 ]
  %235 = getelementptr inbounds %struct._Image, ptr %228, i64 0, i32 8
  %236 = load i64, ptr %235, align 8, !tbaa !95
  %237 = icmp ugt i64 %236, %224
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i64 %236, ptr %221, align 8, !tbaa !79
  br label %239

239:                                              ; preds = %233, %238
  %240 = phi i64 [ %224, %233 ], [ %236, %238 ]
  %241 = add nuw nsw i64 %225, 1
  %242 = icmp eq i64 %241, %31
  br i1 %242, label %243, label %223, !llvm.loop !96

243:                                              ; preds = %239, %215
  %244 = call ptr @CloneImageInfo(ptr noundef %0) #15
  %245 = getelementptr inbounds %struct._ImageInfo, ptr %244, i64 0, i32 24
  %246 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 11
  %247 = load i64, ptr %246, align 4
  store i64 %247, ptr %245, align 8
  %248 = getelementptr inbounds %struct._ImageInfo, ptr %244, i64 0, i32 25
  %249 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 12
  %250 = load i64, ptr %249, align 4
  store i64 %250, ptr %248, align 8
  %251 = call ptr @CloneDrawInfo(ptr noundef %244, ptr noundef null) #15
  %252 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 5
  %253 = load ptr, ptr %252, align 8, !tbaa !49
  %254 = icmp eq ptr %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %243
  %256 = getelementptr inbounds %struct._DrawInfo, ptr %251, i64 0, i32 23
  %257 = call ptr @CloneString(ptr noundef nonnull %256, ptr noundef nonnull %253) #15
  br label %258

258:                                              ; preds = %255, %243
  %259 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 6
  %260 = load double, ptr %259, align 8, !tbaa !50
  %261 = fcmp une double %260, 0.000000e+00
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct._DrawInfo, ptr %251, i64 0, i32 30
  store double %260, ptr %263, align 8, !tbaa !97
  br label %264

264:                                              ; preds = %262, %258
  %265 = getelementptr inbounds %struct._DrawInfo, ptr %251, i64 0, i32 4
  store i32 5, ptr %265, align 8, !tbaa !105
  %266 = getelementptr inbounds %struct._DrawInfo, ptr %251, i64 0, i32 6
  %267 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 10
  %268 = load i64, ptr %267, align 4
  store i64 %268, ptr %266, align 4
  %269 = getelementptr inbounds %struct._DrawInfo, ptr %251, i64 0, i32 5
  %270 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 9
  %271 = load i64, ptr %270, align 4
  store i64 %271, ptr %269, align 4
  %272 = call ptr @AcquireString(ptr noundef nonnull @.str.1) #15
  %273 = getelementptr inbounds %struct._DrawInfo, ptr %251, i64 0, i32 21
  store ptr %272, ptr %273, align 8, !tbaa !106
  %274 = load ptr, ptr %32, align 8, !tbaa !73
  %275 = call i32 @GetTypeMetrics(ptr noundef %274, ptr noundef %251, ptr noundef nonnull %17) #15
  %276 = call ptr @NewImageList() #15
  %277 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 4
  %278 = load ptr, ptr %277, align 8, !tbaa !48
  %279 = icmp eq ptr %278, null
  br i1 %279, label %284, label %280

280:                                              ; preds = %264
  %281 = getelementptr inbounds %struct._ImageInfo, ptr %244, i64 0, i32 51
  %282 = call i64 @CopyMagickString(ptr noundef nonnull %281, ptr noundef nonnull %278, i64 noundef 4096) #15
  %283 = call ptr @ReadImage(ptr noundef %244, ptr noundef %3) #15
  br label %284

284:                                              ; preds = %280, %264
  %285 = phi ptr [ %283, %280 ], [ %276, %264 ]
  %286 = load ptr, ptr %32, align 8, !tbaa !73
  %287 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !46
  %289 = call ptr @InterpretImageProperties(ptr noundef %244, ptr noundef %286, ptr noundef %288) #15
  %290 = load ptr, ptr %287, align 8, !tbaa !46
  %291 = icmp eq ptr %290, null
  br i1 %291, label %306, label %292

292:                                              ; preds = %284
  %293 = getelementptr inbounds %struct._TypeMetric, ptr %17, i64 0, i32 1
  %294 = load double, ptr %293, align 8, !tbaa !107
  %295 = getelementptr inbounds %struct._TypeMetric, ptr %17, i64 0, i32 2
  %296 = load double, ptr %295, align 8, !tbaa !109
  %297 = fsub double %294, %296
  %298 = fmul double %297, 2.000000e+00
  %299 = call i64 @MultilineCensus(ptr noundef %289) #15
  %300 = uitofp i64 %299 to double
  %301 = load i64, ptr %166, align 8, !tbaa !86
  %302 = shl nsw i64 %301, 1
  %303 = sitofp i64 %302 to double
  %304 = call double @llvm.fmuladd.f64(double %298, double %300, double %303)
  %305 = fptoui double %304 to i64
  br label %306

306:                                              ; preds = %292, %284
  %307 = phi i64 [ %305, %292 ], [ 0, %284 ]
  %308 = icmp sgt i64 %31, 0
  br i1 %308, label %309, label %327

309:                                              ; preds = %306, %321
  %310 = phi i64 [ %322, %321 ], [ 0, %306 ]
  %311 = phi i64 [ %323, %321 ], [ 0, %306 ]
  %312 = getelementptr inbounds ptr, ptr %32, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !73
  %314 = call ptr @GetImageProperty(ptr noundef %313, ptr noundef nonnull @.str.9) #15
  %315 = icmp eq ptr %314, null
  br i1 %315, label %321, label %316

316:                                              ; preds = %309
  %317 = call i64 @MultilineCensus(ptr noundef nonnull %314) #15
  %318 = icmp ugt i64 %317, %310
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = call i64 @MultilineCensus(ptr noundef nonnull %314) #15
  br label %321

321:                                              ; preds = %316, %319, %309
  %322 = phi i64 [ %310, %309 ], [ %320, %319 ], [ %310, %316 ]
  %323 = add nuw nsw i64 %311, 1
  %324 = icmp eq i64 %323, %31
  br i1 %324, label %325, label %309, !llvm.loop !110

325:                                              ; preds = %321
  %326 = uitofp i64 %322 to double
  br label %327

327:                                              ; preds = %325, %306
  %328 = phi double [ 0.000000e+00, %306 ], [ %326, %325 ]
  %329 = call ptr @AcquireImage(ptr noundef null) #15
  %330 = call ptr @AcquireImage(ptr noundef %244) #15
  %331 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 12
  %332 = load i64, ptr %246, align 4
  store i64 %332, ptr %331, align 8
  %333 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 39
  store i64 0, ptr %333, align 8, !tbaa !82
  %334 = add i64 %31, -1
  %335 = load i64, ptr %13, align 8, !tbaa !84
  %336 = load i64, ptr %12, align 8, !tbaa !84
  %337 = mul i64 %336, %335
  %338 = udiv i64 %334, %337
  %339 = add i64 %338, 1
  %340 = icmp ult i64 %338, 9223372036854775807
  br i1 %340, label %341, label %932

341:                                              ; preds = %327
  %342 = icmp eq i32 %176, 0
  %343 = icmp eq i32 %176, 0
  %344 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  %345 = getelementptr inbounds %struct._TypeMetric, ptr %17, i64 0, i32 1
  %346 = getelementptr inbounds %struct._TypeMetric, ptr %17, i64 0, i32 2
  %347 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 8
  %348 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 8
  %349 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 15
  %350 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  %351 = getelementptr inbounds %struct._TypeMetric, ptr %17, i64 0, i32 1
  %352 = getelementptr inbounds %struct._TypeMetric, ptr %17, i64 0, i32 2
  %353 = icmp eq ptr %285, null
  %354 = getelementptr inbounds %struct._TypeMetric, ptr %20, i64 0, i32 1
  %355 = getelementptr inbounds %struct._TypeMetric, ptr %20, i64 0, i32 2
  %356 = icmp eq i32 %176, 0
  %357 = icmp eq i64 %217, 0
  %358 = getelementptr inbounds %struct._RectangleInfo, ptr %21, i64 0, i32 1
  %359 = getelementptr inbounds %struct._Image, ptr %329, i64 0, i32 7
  %360 = getelementptr inbounds %struct._Image, ptr %329, i64 0, i32 8
  %361 = getelementptr inbounds %struct._MontageInfo, ptr %1, i64 0, i32 14
  %362 = getelementptr inbounds %struct._Image, ptr %329, i64 0, i32 35
  %363 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  %364 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  %365 = icmp ne i64 %216, 0
  %366 = getelementptr inbounds %struct._FrameInfo, ptr %8, i64 0, i32 1
  %367 = getelementptr inbounds %struct._FrameInfo, ptr %22, i64 0, i32 1
  %368 = shl i64 %217, 1
  %369 = add i64 %217, 4
  %370 = getelementptr inbounds %struct._DrawInfo, ptr %251, i64 0, i32 1
  %371 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 47
  br label %372

372:                                              ; preds = %341, %927
  %373 = phi ptr [ %86, %341 ], [ %913, %927 ]
  %374 = phi ptr [ %32, %341 ], [ %930, %927 ]
  %375 = phi i64 [ %31, %341 ], [ %929, %927 ]
  %376 = phi ptr [ %330, %341 ], [ %928, %927 ]
  %377 = phi i64 [ 0, %341 ], [ %914, %927 ]
  %378 = phi i64 [ 0, %341 ], [ %912, %927 ]
  store i64 0, ptr %14, align 8, !tbaa !84
  store i64 0, ptr %16, align 8, !tbaa !84
  %379 = load ptr, ptr %130, align 8, !tbaa !45
  %380 = icmp eq ptr %379, null
  br i1 %380, label %407, label %381

381:                                              ; preds = %372
  store i64 0, ptr %11, align 8, !tbaa !84
  %382 = call i32 @GetGeometry(ptr noundef nonnull %379, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef nonnull %11) #15
  %383 = load i64, ptr %11, align 8, !tbaa !84
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %381
  %386 = uitofp i64 %375 to double
  %387 = call double @sqrt(double noundef %386) #15
  %388 = fptoui double %387 to i64
  store i64 %388, ptr %11, align 8, !tbaa !84
  br label %389

389:                                              ; preds = %385, %381
  %390 = load i64, ptr %11, align 8, !tbaa !84
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %389
  %393 = uitofp i64 %375 to double
  %394 = uitofp i64 %390 to double
  %395 = fdiv double %393, %394
  %396 = call double @llvm.ceil.f64(double %395)
  %397 = fptoui double %396 to i64
  store i64 %397, ptr %11, align 8, !tbaa !84
  br label %398

398:                                              ; preds = %392, %389
  %399 = load i64, ptr %11, align 8, !tbaa !84
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %398
  %402 = uitofp i64 %375 to double
  %403 = uitofp i64 %399 to double
  %404 = fdiv double %402, %403
  %405 = call double @llvm.ceil.f64(double %404)
  %406 = fptoui double %405 to i64
  store i64 %406, ptr %11, align 8, !tbaa !84
  br label %407

407:                                              ; preds = %401, %398, %372
  %408 = load i64, ptr %13, align 8, !tbaa !84
  %409 = load i64, ptr %12, align 8, !tbaa !84
  %410 = mul i64 %409, %408
  %411 = load i64, ptr %16, align 8, !tbaa !84
  %412 = add nsw i64 %411, %307
  store i64 %412, ptr %16, align 8, !tbaa !84
  %413 = icmp sgt i64 %410, 0
  br i1 %413, label %414, label %506

414:                                              ; preds = %407
  %415 = uitofp i64 %375 to double
  %416 = uitofp i64 %375 to double
  %417 = uitofp i64 %375 to double
  br label %418

418:                                              ; preds = %414, %502
  %419 = phi i64 [ 0, %414 ], [ %448, %502 ]
  %420 = phi i64 [ 0, %414 ], [ %440, %502 ]
  %421 = phi i64 [ 0, %414 ], [ %504, %502 ]
  %422 = phi i64 [ 0, %414 ], [ %447, %502 ]
  %423 = phi i64 [ 0, %414 ], [ %503, %502 ]
  %424 = icmp slt i64 %419, %375
  br i1 %424, label %425, label %438

425:                                              ; preds = %418
  br i1 %342, label %430, label %426

426:                                              ; preds = %425
  %427 = getelementptr inbounds ptr, ptr %374, i64 %419
  %428 = load ptr, ptr %427, align 8, !tbaa !73
  %429 = getelementptr inbounds %struct._Image, ptr %428, i64 0, i32 7
  br label %430

430:                                              ; preds = %425, %426
  %431 = phi ptr [ %429, %426 ], [ %10, %425 ]
  %432 = load i64, ptr %431, align 8, !tbaa !84
  %433 = getelementptr inbounds ptr, ptr %374, i64 %419
  %434 = load ptr, ptr %433, align 8, !tbaa !73
  %435 = getelementptr inbounds %struct._Image, ptr %434, i64 0, i32 8
  %436 = load i64, ptr %435, align 8, !tbaa !95
  %437 = call i64 @llvm.umax.i64(i64 %436, i64 %421)
  br label %438

438:                                              ; preds = %430, %418
  %439 = phi i64 [ %421, %418 ], [ %437, %430 ]
  %440 = phi i64 [ %420, %418 ], [ %432, %430 ]
  %441 = load i64, ptr %165, align 8, !tbaa !85
  %442 = add i64 %441, %217
  %443 = shl i64 %442, 1
  %444 = load i64, ptr %14, align 8, !tbaa !84
  %445 = add i64 %444, %440
  %446 = add i64 %445, %443
  store i64 %446, ptr %14, align 8, !tbaa !84
  %447 = call i64 @llvm.smax.i64(i64 %446, i64 %422)
  %448 = add nuw nsw i64 %419, 1
  %449 = icmp eq i64 %448, %410
  br i1 %449, label %454, label %450

450:                                              ; preds = %438
  %451 = load i64, ptr %13, align 8, !tbaa !84
  %452 = urem i64 %448, %451
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %502

454:                                              ; preds = %450, %438
  store i64 0, ptr %14, align 8, !tbaa !84
  %455 = load ptr, ptr %130, align 8, !tbaa !45
  %456 = icmp eq ptr %455, null
  br i1 %456, label %480, label %457

457:                                              ; preds = %454
  store i64 0, ptr %11, align 8, !tbaa !84
  %458 = call i32 @GetGeometry(ptr noundef nonnull %455, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %11, ptr noundef nonnull %11) #15
  %459 = load i64, ptr %11, align 8, !tbaa !84
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %457
  %462 = call double @sqrt(double noundef %415) #15
  %463 = fptoui double %462 to i64
  store i64 %463, ptr %11, align 8, !tbaa !84
  br label %464

464:                                              ; preds = %461, %457
  %465 = load i64, ptr %11, align 8, !tbaa !84
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %464
  %468 = uitofp i64 %465 to double
  %469 = fdiv double %416, %468
  %470 = call double @llvm.ceil.f64(double %469)
  %471 = fptoui double %470 to i64
  store i64 %471, ptr %11, align 8, !tbaa !84
  br label %472

472:                                              ; preds = %467, %464
  %473 = load i64, ptr %11, align 8, !tbaa !84
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %472
  %476 = uitofp i64 %473 to double
  %477 = fdiv double %417, %476
  %478 = call double @llvm.ceil.f64(double %477)
  %479 = fptoui double %478 to i64
  store i64 %479, ptr %11, align 8, !tbaa !84
  br label %480

480:                                              ; preds = %475, %472, %454
  %481 = load i64, ptr %344, align 8
  %482 = select i1 %343, i64 %481, i64 %439
  %483 = load i64, ptr %166, align 8, !tbaa !86
  %484 = add nsw i64 %483, %217
  %485 = shl nsw i64 %484, 1
  %486 = add i64 %485, %482
  %487 = uitofp i64 %486 to double
  %488 = load double, ptr %345, align 8, !tbaa !107
  %489 = load double, ptr %346, align 8, !tbaa !109
  %490 = fsub double %488, %489
  %491 = fadd double %490, 4.000000e+00
  %492 = call double @llvm.fmuladd.f64(double %491, double %328, double %487)
  %493 = load i32, ptr %347, align 8, !tbaa !52
  %494 = icmp eq i32 %493, 0
  %495 = select i1 %494, i32 0, i32 4
  %496 = sitofp i32 %495 to double
  %497 = fadd double %492, %496
  %498 = fptosi double %497 to i64
  %499 = load i64, ptr %16, align 8, !tbaa !84
  %500 = add nsw i64 %499, %498
  store i64 %500, ptr %16, align 8, !tbaa !84
  %501 = call i64 @llvm.smax.i64(i64 %500, i64 %423)
  br label %502

502:                                              ; preds = %450, %480
  %503 = phi i64 [ %501, %480 ], [ %423, %450 ]
  %504 = phi i64 [ 0, %480 ], [ %439, %450 ]
  %505 = icmp eq i64 %448, %410
  br i1 %505, label %506, label %418, !llvm.loop !111

506:                                              ; preds = %502, %407
  %507 = phi i64 [ 0, %407 ], [ %503, %502 ]
  %508 = phi i64 [ 0, %407 ], [ %447, %502 ]
  %509 = load i32, ptr %348, align 8, !tbaa !52
  %510 = icmp eq i32 %509, 0
  %511 = add nuw i64 %508, 4
  %512 = select i1 %510, i64 %508, i64 %511
  %513 = getelementptr inbounds %struct._Image, ptr %376, i64 0, i32 53
  %514 = call i64 @CopyMagickString(ptr noundef nonnull %513, ptr noundef nonnull %349, i64 noundef 4096) #15
  %515 = call i64 @llvm.smax.i64(i64 %512, i64 1)
  %516 = getelementptr inbounds %struct._Image, ptr %376, i64 0, i32 7
  store i64 %515, ptr %516, align 8, !tbaa !94
  %517 = call i64 @llvm.smax.i64(i64 %507, i64 1)
  %518 = getelementptr inbounds %struct._Image, ptr %376, i64 0, i32 8
  store i64 %517, ptr %518, align 8, !tbaa !95
  %519 = call i32 @SetImageBackgroundColor(ptr noundef %376) #15
  %520 = call ptr @AcquireString(ptr noundef null) #15
  %521 = getelementptr inbounds %struct._Image, ptr %376, i64 0, i32 20
  store ptr %520, ptr %521, align 8, !tbaa !112
  %522 = call i64 @llvm.smin.i64(i64 %410, i64 %375)
  %523 = icmp sgt i64 %522, 0
  br i1 %523, label %524, label %535

524:                                              ; preds = %506, %524
  %525 = phi i64 [ %533, %524 ], [ 0, %506 ]
  %526 = phi i64 [ %532, %524 ], [ 1, %506 ]
  %527 = getelementptr inbounds ptr, ptr %374, i64 %525
  %528 = load ptr, ptr %527, align 8, !tbaa !73
  %529 = getelementptr inbounds %struct._Image, ptr %528, i64 0, i32 53
  %530 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %529) #18
  %531 = add i64 %526, 1
  %532 = add i64 %531, %530
  %533 = add nuw nsw i64 %525, 1
  %534 = icmp eq i64 %533, %522
  br i1 %534, label %535, label %524, !llvm.loop !113

535:                                              ; preds = %524, %506
  %536 = phi i64 [ 1, %506 ], [ %532, %524 ]
  %537 = call ptr @AcquireQuantumMemory(i64 noundef %536, i64 noundef 1) #19
  %538 = getelementptr inbounds %struct._Image, ptr %376, i64 0, i32 21
  store ptr %537, ptr %538, align 8, !tbaa !114
  %539 = load ptr, ptr %521, align 8, !tbaa !112
  %540 = icmp eq ptr %539, null
  %541 = icmp eq ptr %537, null
  %542 = select i1 %540, i1 true, i1 %541
  br i1 %542, label %543, label %546

543:                                              ; preds = %535
  %544 = getelementptr inbounds %struct._Image, ptr %373, i64 0, i32 53
  %545 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 655, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %544) #15
  br label %944

546:                                              ; preds = %535
  store i64 0, ptr %14, align 8, !tbaa !84
  store i64 0, ptr %16, align 8, !tbaa !84
  %547 = load ptr, ptr %130, align 8, !tbaa !45
  %548 = icmp eq ptr %547, null
  br i1 %548, label %575, label %549

549:                                              ; preds = %546
  store i64 0, ptr %11, align 8, !tbaa !84
  %550 = call i32 @GetGeometry(ptr noundef nonnull %547, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef nonnull %11) #15
  %551 = load i64, ptr %11, align 8, !tbaa !84
  %552 = icmp eq i64 %551, 0
  br i1 %552, label %553, label %557

553:                                              ; preds = %549
  %554 = uitofp i64 %375 to double
  %555 = call double @sqrt(double noundef %554) #15
  %556 = fptoui double %555 to i64
  store i64 %556, ptr %11, align 8, !tbaa !84
  br label %557

557:                                              ; preds = %553, %549
  %558 = load i64, ptr %11, align 8, !tbaa !84
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %560, label %566

560:                                              ; preds = %557
  %561 = uitofp i64 %375 to double
  %562 = uitofp i64 %558 to double
  %563 = fdiv double %561, %562
  %564 = call double @llvm.ceil.f64(double %563)
  %565 = fptoui double %564 to i64
  store i64 %565, ptr %11, align 8, !tbaa !84
  br label %566

566:                                              ; preds = %560, %557
  %567 = load i64, ptr %11, align 8, !tbaa !84
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %569, label %575

569:                                              ; preds = %566
  %570 = uitofp i64 %375 to double
  %571 = uitofp i64 %567 to double
  %572 = fdiv double %570, %571
  %573 = call double @llvm.ceil.f64(double %572)
  %574 = fptoui double %573 to i64
  store i64 %574, ptr %11, align 8, !tbaa !84
  br label %575

575:                                              ; preds = %569, %566, %546
  %576 = load i64, ptr %16, align 8, !tbaa !84
  %577 = add nsw i64 %576, %307
  store i64 %577, ptr %16, align 8, !tbaa !84
  %578 = load ptr, ptr %521, align 8, !tbaa !112
  %579 = load i64, ptr %10, align 8, !tbaa !78
  %580 = load i64, ptr %165, align 8, !tbaa !85
  %581 = add i64 %580, %217
  %582 = shl i64 %581, 1
  %583 = add i64 %582, %579
  %584 = uitofp i64 %583 to double
  %585 = load i64, ptr %350, align 8, !tbaa !79
  %586 = load i64, ptr %166, align 8, !tbaa !86
  %587 = add i64 %586, %217
  %588 = shl i64 %587, 1
  %589 = add i64 %588, %585
  %590 = uitofp i64 %589 to double
  %591 = load double, ptr %351, align 8, !tbaa !107
  %592 = load double, ptr %352, align 8, !tbaa !109
  %593 = fsub double %591, %592
  %594 = fadd double %593, 4.000000e+00
  %595 = load i32, ptr %348, align 8, !tbaa !52
  %596 = icmp eq i32 %595, 0
  %597 = select i1 %596, i32 0, i32 4
  %598 = sitofp i32 %597 to double
  %599 = call double @llvm.fmuladd.f64(double %594, double %328, double %598)
  %600 = fadd double %599, %590
  %601 = load i64, ptr %14, align 8, !tbaa !84
  %602 = sitofp i64 %601 to double
  %603 = sitofp i64 %577 to double
  %604 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %578, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %584, double noundef %600, double noundef %602, double noundef %603) #15
  %605 = load ptr, ptr %538, align 8, !tbaa !114
  store i8 0, ptr %605, align 1, !tbaa !115
  %606 = icmp sgt i64 %522, 0
  br i1 %606, label %607, label %618

607:                                              ; preds = %575, %607
  %608 = phi i64 [ %616, %607 ], [ 0, %575 ]
  %609 = load ptr, ptr %538, align 8, !tbaa !114
  %610 = getelementptr inbounds ptr, ptr %374, i64 %608
  %611 = load ptr, ptr %610, align 8, !tbaa !73
  %612 = getelementptr inbounds %struct._Image, ptr %611, i64 0, i32 53
  %613 = call i64 @ConcatenateMagickString(ptr noundef %609, ptr noundef nonnull %612, i64 noundef %536) #15
  %614 = load ptr, ptr %538, align 8, !tbaa !114
  %615 = call i64 @ConcatenateMagickString(ptr noundef %614, ptr noundef nonnull @.str.11, i64 noundef %536) #15
  %616 = add nuw nsw i64 %608, 1
  %617 = icmp eq i64 %616, %522
  br i1 %617, label %618, label %607, !llvm.loop !116

618:                                              ; preds = %607, %575
  %619 = getelementptr inbounds %struct._Image, ptr %376, i64 0, i32 48
  %620 = load ptr, ptr %619, align 8, !tbaa !77
  %621 = call ptr @SetImageProgressMonitor(ptr noundef %376, ptr noundef null, ptr noundef %620) #15
  br i1 %353, label %624, label %622

622:                                              ; preds = %618
  %623 = call i32 @TextureImage(ptr noundef %376, ptr noundef nonnull %285) #15
  br label %624

624:                                              ; preds = %622, %618
  %625 = load ptr, ptr %287, align 8, !tbaa !46
  %626 = icmp eq ptr %625, null
  br i1 %626, label %650, label %627

627:                                              ; preds = %624
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %20) #15
  %628 = call ptr @CloneDrawInfo(ptr noundef %0, ptr noundef %251) #15
  %629 = getelementptr inbounds %struct._DrawInfo, ptr %628, i64 0, i32 4
  store i32 5, ptr %629, align 8, !tbaa !105
  %630 = getelementptr inbounds %struct._DrawInfo, ptr %628, i64 0, i32 30
  %631 = load double, ptr %630, align 8, !tbaa !97
  %632 = fmul double %631, 2.000000e+00
  store double %632, ptr %630, align 8, !tbaa !97
  %633 = load ptr, ptr %374, align 8, !tbaa !73
  %634 = call i32 @GetTypeMetrics(ptr noundef %633, ptr noundef %628, ptr noundef nonnull %20) #15
  %635 = load i64, ptr %516, align 8, !tbaa !94
  %636 = uitofp i64 %635 to double
  %637 = load double, ptr %354, align 8, !tbaa !107
  %638 = load double, ptr %355, align 8, !tbaa !109
  %639 = fsub double %637, %638
  %640 = load i64, ptr %166, align 8, !tbaa !86
  %641 = sitofp i64 %640 to double
  %642 = fadd double %641, 4.000000e+00
  %643 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %19, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %636, double noundef %639, double noundef 0.000000e+00, double noundef %642) #15
  %644 = getelementptr inbounds %struct._DrawInfo, ptr %628, i64 0, i32 1
  %645 = call ptr @CloneString(ptr noundef nonnull %644, ptr noundef nonnull %19) #15
  %646 = getelementptr inbounds %struct._DrawInfo, ptr %628, i64 0, i32 21
  %647 = call ptr @CloneString(ptr noundef nonnull %646, ptr noundef %289) #15
  %648 = call i32 @AnnotateImage(ptr noundef %376, ptr noundef %628) #15
  %649 = call ptr @DestroyDrawInfo(ptr noundef %628) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %19) #15
  br label %650

650:                                              ; preds = %627, %624
  %651 = load ptr, ptr %619, align 8, !tbaa !77
  %652 = call ptr @SetImageProgressMonitor(ptr noundef %376, ptr noundef %621, ptr noundef %651) #15
  store i64 0, ptr %14, align 8, !tbaa !84
  store i64 0, ptr %16, align 8, !tbaa !84
  %653 = load ptr, ptr %130, align 8, !tbaa !45
  %654 = icmp eq ptr %653, null
  br i1 %654, label %681, label %655

655:                                              ; preds = %650
  store i64 0, ptr %11, align 8, !tbaa !84
  %656 = call i32 @GetGeometry(ptr noundef nonnull %653, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef nonnull %11) #15
  %657 = load i64, ptr %11, align 8, !tbaa !84
  %658 = icmp eq i64 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %655
  %660 = uitofp i64 %375 to double
  %661 = call double @sqrt(double noundef %660) #15
  %662 = fptoui double %661 to i64
  store i64 %662, ptr %11, align 8, !tbaa !84
  br label %663

663:                                              ; preds = %659, %655
  %664 = load i64, ptr %11, align 8, !tbaa !84
  %665 = icmp eq i64 %664, 0
  br i1 %665, label %666, label %672

666:                                              ; preds = %663
  %667 = uitofp i64 %375 to double
  %668 = uitofp i64 %664 to double
  %669 = fdiv double %667, %668
  %670 = call double @llvm.ceil.f64(double %669)
  %671 = fptoui double %670 to i64
  store i64 %671, ptr %11, align 8, !tbaa !84
  br label %672

672:                                              ; preds = %666, %663
  %673 = load i64, ptr %11, align 8, !tbaa !84
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %675, label %681

675:                                              ; preds = %672
  %676 = uitofp i64 %375 to double
  %677 = uitofp i64 %673 to double
  %678 = fdiv double %676, %677
  %679 = call double @llvm.ceil.f64(double %678)
  %680 = fptoui double %679 to i64
  store i64 %680, ptr %11, align 8, !tbaa !84
  br label %681

681:                                              ; preds = %675, %672, %650
  %682 = load i64, ptr %165, align 8, !tbaa !85
  %683 = load i64, ptr %14, align 8, !tbaa !84
  %684 = add nsw i64 %683, %682
  store i64 %684, ptr %14, align 8, !tbaa !84
  %685 = load i64, ptr %166, align 8, !tbaa !86
  %686 = add nsw i64 %685, %307
  %687 = load i64, ptr %16, align 8, !tbaa !84
  %688 = add nsw i64 %686, %687
  store i64 %688, ptr %16, align 8, !tbaa !84
  %689 = icmp sgt i64 %522, 0
  br i1 %689, label %690, label %911

690:                                              ; preds = %681, %905
  %691 = phi i64 [ %864, %905 ], [ 0, %681 ]
  %692 = phi i64 [ %890, %905 ], [ 0, %681 ]
  %693 = phi i64 [ %909, %905 ], [ %378, %681 ]
  %694 = getelementptr inbounds ptr, ptr %374, i64 %691
  %695 = load ptr, ptr %694, align 8, !tbaa !73
  %696 = call ptr @CloneImage(ptr noundef %695, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #15
  %697 = getelementptr inbounds %struct._Image, ptr %696, i64 0, i32 48
  %698 = load ptr, ptr %697, align 8, !tbaa !77
  %699 = call ptr @SetImageProgressMonitor(ptr noundef %696, ptr noundef null, ptr noundef %698) #15
  %700 = getelementptr inbounds %struct._Image, ptr %696, i64 0, i32 7
  %701 = select i1 %356, ptr %10, ptr %700
  %702 = load i64, ptr %701, align 8, !tbaa !84
  %703 = getelementptr inbounds %struct._Image, ptr %696, i64 0, i32 8
  %704 = load i64, ptr %703, align 8, !tbaa !95
  %705 = call i64 @llvm.umax.i64(i64 %704, i64 %692)
  %706 = load i64, ptr %350, align 8
  %707 = select i1 %356, i64 %706, i64 %705
  br i1 %357, label %735, label %708

708:                                              ; preds = %690
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #15
  store i64 %217, ptr %21, align 8, !tbaa !78
  store i64 %217, ptr %358, align 8, !tbaa !79
  %709 = load ptr, ptr %179, align 8, !tbaa !47
  %710 = icmp eq ptr %709, null
  br i1 %710, label %719, label %711

711:                                              ; preds = %708
  %712 = load i64, ptr %700, align 8, !tbaa !94
  %713 = add i64 %702, 1
  %714 = sub i64 %713, %712
  %715 = lshr i64 %714, 1
  store i64 %715, ptr %21, align 8, !tbaa !78
  %716 = sub i64 %707, %704
  %717 = add i64 %716, 1
  %718 = lshr i64 %717, 1
  store i64 %718, ptr %358, align 8, !tbaa !79
  br label %719

719:                                              ; preds = %711, %708
  %720 = call ptr @BorderImage(ptr noundef %696, ptr noundef nonnull %21, ptr noundef %3) #15
  %721 = icmp eq ptr %720, null
  br i1 %721, label %724, label %722

722:                                              ; preds = %719
  %723 = call ptr @DestroyImage(ptr noundef %696) #15
  br label %724

724:                                              ; preds = %722, %719
  %725 = phi ptr [ %720, %722 ], [ %696, %719 ]
  %726 = load ptr, ptr %179, align 8, !tbaa !47
  %727 = icmp eq ptr %726, null
  br i1 %727, label %734, label %728

728:                                              ; preds = %724
  %729 = getelementptr inbounds %struct._Image, ptr %725, i64 0, i32 36
  %730 = load i32, ptr %729, align 8, !tbaa !117
  %731 = icmp eq i32 %730, 24
  br i1 %731, label %732, label %734

732:                                              ; preds = %728
  %733 = call i32 @NegateImageChannel(ptr noundef %725, i32 noundef 8, i32 noundef 0) #15
  br label %734

734:                                              ; preds = %732, %728, %724
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #15
  br label %735

735:                                              ; preds = %734, %690
  %736 = phi ptr [ %725, %734 ], [ %696, %690 ]
  store i64 %702, ptr %359, align 8, !tbaa !94
  store i64 %707, ptr %360, align 8, !tbaa !95
  %737 = load i32, ptr %361, align 4, !tbaa !53
  store i32 %737, ptr %362, align 4, !tbaa !118
  %738 = getelementptr inbounds %struct._Image, ptr %736, i64 0, i32 35
  %739 = load i32, ptr %738, align 4, !tbaa !118
  %740 = icmp eq i32 %739, 0
  %741 = select i1 %740, i32 %737, i32 %739
  store i32 %741, ptr %362, align 4
  %742 = getelementptr inbounds %struct._Image, ptr %736, i64 0, i32 7
  %743 = load i64, ptr %742, align 8, !tbaa !94
  %744 = uitofp i64 %743 to double
  %745 = getelementptr inbounds %struct._Image, ptr %736, i64 0, i32 8
  %746 = load i64, ptr %745, align 8, !tbaa !95
  %747 = uitofp i64 %746 to double
  %748 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %744, double noundef %747) #15
  %749 = call i32 @ParseGravityGeometry(ptr noundef %329, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %3) #15
  %750 = load i64, ptr %363, align 8, !tbaa !85
  %751 = add i64 %750, %217
  %752 = load i64, ptr %364, align 8, !tbaa !86
  %753 = add i64 %752, %217
  store i64 %753, ptr %15, align 8, !tbaa !84
  %754 = load ptr, ptr %179, align 8, !tbaa !47
  %755 = icmp ne ptr %754, null
  %756 = select i1 %755, i1 %365, i1 false
  br i1 %756, label %757, label %784

757:                                              ; preds = %735
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %22) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !119
  %758 = load i64, ptr %8, align 8, !tbaa !87
  %759 = shl i64 %758, 1
  %760 = add i64 %759, %702
  store i64 %760, ptr %22, align 8, !tbaa !87
  %761 = load i64, ptr %366, align 8, !tbaa !89
  %762 = shl i64 %761, 1
  %763 = add i64 %762, %707
  store i64 %763, ptr %367, align 8, !tbaa !89
  %764 = call ptr @GetImageProperty(ptr noundef %736, ptr noundef nonnull @.str.9) #15
  %765 = icmp eq ptr %764, null
  br i1 %765, label %777, label %766

766:                                              ; preds = %757
  %767 = load double, ptr %351, align 8, !tbaa !107
  %768 = load double, ptr %352, align 8, !tbaa !109
  %769 = fsub double %767, %768
  %770 = fadd double %769, 4.000000e+00
  %771 = call i64 @MultilineCensus(ptr noundef nonnull %764) #15
  %772 = uitofp i64 %771 to double
  %773 = fmul double %770, %772
  %774 = fptoui double %773 to i64
  %775 = load i64, ptr %367, align 8, !tbaa !89
  %776 = add i64 %775, %774
  store i64 %776, ptr %367, align 8, !tbaa !89
  br label %777

777:                                              ; preds = %766, %757
  %778 = call ptr @FrameImage(ptr noundef %736, ptr noundef nonnull %22, ptr noundef %3) #15
  %779 = icmp eq ptr %778, null
  br i1 %779, label %782, label %780

780:                                              ; preds = %777
  %781 = call ptr @DestroyImage(ptr noundef %736) #15
  br label %782

782:                                              ; preds = %780, %777
  %783 = phi ptr [ %778, %780 ], [ %736, %777 ]
  store i64 0, ptr %15, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %22) #15
  br label %784

784:                                              ; preds = %782, %735
  %785 = phi i64 [ 0, %782 ], [ %751, %735 ]
  %786 = phi ptr [ %783, %782 ], [ %736, %735 ]
  %787 = getelementptr inbounds %struct._Image, ptr %786, i64 0, i32 55
  %788 = call i32 @LocaleCompare(ptr noundef nonnull %787, ptr noundef nonnull @.str.13) #15
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %856, label %790

790:                                              ; preds = %784
  %791 = load i32, ptr %348, align 8, !tbaa !52
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %802, label %793

793:                                              ; preds = %790
  %794 = getelementptr inbounds %struct._Image, ptr %786, i64 0, i32 12
  %795 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.14, ptr noundef nonnull %794, ptr noundef %3) #15
  %796 = call ptr @ShadowImage(ptr noundef %786, double noundef 8.000000e+01, double noundef 2.000000e+00, i64 noundef 5, i64 noundef 5, ptr noundef %3) #15
  %797 = icmp eq ptr %796, null
  br i1 %797, label %802, label %798

798:                                              ; preds = %793
  %799 = getelementptr inbounds %struct._Image, ptr %796, i64 0, i32 58
  call void @InheritException(ptr noundef nonnull %799, ptr noundef %3) #15
  %800 = call i32 @CompositeImage(ptr noundef nonnull %796, i32 noundef 40, ptr noundef %786, i64 noundef 0, i64 noundef 0) #15
  %801 = call ptr @DestroyImage(ptr noundef %786) #15
  br label %802

802:                                              ; preds = %793, %798, %790
  %803 = phi ptr [ %786, %790 ], [ %796, %798 ], [ %786, %793 ]
  %804 = getelementptr inbounds %struct._Image, ptr %803, i64 0, i32 36
  %805 = load i32, ptr %804, align 8, !tbaa !117
  %806 = load i64, ptr %14, align 8, !tbaa !84
  %807 = add nsw i64 %806, %785
  %808 = load i64, ptr %16, align 8, !tbaa !84
  %809 = load i64, ptr %15, align 8, !tbaa !84
  %810 = add nsw i64 %809, %808
  %811 = call i32 @CompositeImage(ptr noundef %376, i32 noundef %805, ptr noundef %803, i64 noundef %807, i64 noundef %810) #15
  %812 = call ptr @GetImageProperty(ptr noundef %803, ptr noundef nonnull @.str.9) #15
  %813 = icmp eq ptr %812, null
  br i1 %813, label %856, label %814

814:                                              ; preds = %802
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %23) #15
  %815 = load ptr, ptr %179, align 8, !tbaa !47
  %816 = icmp eq ptr %815, null
  br i1 %816, label %820, label %817

817:                                              ; preds = %814
  %818 = getelementptr inbounds %struct._Image, ptr %803, i64 0, i32 7
  %819 = load i64, ptr %818, align 8, !tbaa !94
  br label %820

820:                                              ; preds = %814, %817
  %821 = phi i64 [ %819, %817 ], [ %702, %814 ]
  %822 = sub i64 %821, %368
  %823 = uitofp i64 %822 to double
  %824 = load double, ptr %351, align 8, !tbaa !107
  %825 = load double, ptr %352, align 8, !tbaa !109
  %826 = fsub double %824, %825
  %827 = fadd double %826, 4.000000e+00
  %828 = call i64 @MultilineCensus(ptr noundef nonnull %812) #15
  %829 = uitofp i64 %828 to double
  %830 = fmul double %827, %829
  %831 = load i64, ptr %14, align 8, !tbaa !84
  %832 = add i64 %831, %217
  %833 = uitofp i64 %832 to double
  %834 = load ptr, ptr %179, align 8, !tbaa !47
  %835 = icmp eq ptr %834, null
  %836 = load i64, ptr %16, align 8, !tbaa !84
  br i1 %835, label %840, label %837

837:                                              ; preds = %820
  %838 = add i64 %369, %707
  %839 = add i64 %838, %836
  br label %848

840:                                              ; preds = %820
  %841 = load i64, ptr %350, align 8, !tbaa !79
  %842 = load i32, ptr %348, align 8, !tbaa !52
  %843 = icmp eq i32 %842, 0
  %844 = select i1 %843, i64 0, i64 4
  %845 = add i64 %836, %217
  %846 = add i64 %845, %841
  %847 = add i64 %846, %844
  br label %848

848:                                              ; preds = %840, %837
  %849 = phi i64 [ %839, %837 ], [ %847, %840 ]
  %850 = add i64 %849, %216
  %851 = uitofp i64 %850 to double
  %852 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %23, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %823, double noundef %830, double noundef %833, double noundef %851) #15
  %853 = call ptr @CloneString(ptr noundef nonnull %370, ptr noundef nonnull %23) #15
  %854 = call ptr @CloneString(ptr noundef nonnull %273, ptr noundef nonnull %812) #15
  %855 = call i32 @AnnotateImage(ptr noundef %376, ptr noundef %251) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %23) #15
  br label %856

856:                                              ; preds = %802, %848, %784
  %857 = phi ptr [ %803, %848 ], [ %803, %802 ], [ %786, %784 ]
  %858 = load i64, ptr %165, align 8, !tbaa !85
  %859 = add i64 %858, %217
  %860 = shl i64 %859, 1
  %861 = load i64, ptr %14, align 8, !tbaa !84
  %862 = add i64 %861, %702
  %863 = add i64 %862, %860
  store i64 %863, ptr %14, align 8, !tbaa !84
  %864 = add nuw nsw i64 %691, 1
  %865 = icmp eq i64 %864, %410
  br i1 %865, label %870, label %866

866:                                              ; preds = %856
  %867 = load i64, ptr %13, align 8, !tbaa !84
  %868 = urem i64 %864, %867
  %869 = icmp eq i64 %868, 0
  br i1 %869, label %870, label %889

870:                                              ; preds = %866, %856
  store i64 %858, ptr %14, align 8, !tbaa !84
  %871 = load i64, ptr %166, align 8, !tbaa !86
  %872 = add i64 %871, %217
  %873 = shl i64 %872, 1
  %874 = add i64 %873, %707
  %875 = uitofp i64 %874 to double
  %876 = load double, ptr %351, align 8, !tbaa !107
  %877 = load double, ptr %352, align 8, !tbaa !109
  %878 = fsub double %876, %877
  %879 = fadd double %878, 4.000000e+00
  %880 = call double @llvm.fmuladd.f64(double %879, double %328, double %875)
  %881 = load i32, ptr %348, align 8, !tbaa !52
  %882 = icmp eq i32 %881, 0
  %883 = select i1 %882, i32 0, i32 4
  %884 = sitofp i32 %883 to double
  %885 = fadd double %880, %884
  %886 = fptosi double %885 to i64
  %887 = load i64, ptr %16, align 8, !tbaa !84
  %888 = add nsw i64 %887, %886
  store i64 %888, ptr %16, align 8, !tbaa !84
  br label %889

889:                                              ; preds = %870, %866
  %890 = phi i64 [ 0, %870 ], [ %705, %866 ]
  %891 = load ptr, ptr %371, align 8, !tbaa !80
  %892 = icmp eq ptr %891, null
  br i1 %892, label %905, label %893

893:                                              ; preds = %889
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  %894 = getelementptr inbounds %struct._Image, ptr %857, i64 0, i32 47
  %895 = load ptr, ptr %894, align 8, !tbaa !80
  %896 = icmp eq ptr %895, null
  br i1 %896, label %904, label %897

897:                                              ; preds = %893
  %898 = getelementptr inbounds %struct._Image, ptr %857, i64 0, i32 53
  %899 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef nonnull %898) #15
  %900 = load ptr, ptr %894, align 8, !tbaa !80
  %901 = getelementptr inbounds %struct._Image, ptr %857, i64 0, i32 48
  %902 = load ptr, ptr %901, align 8, !tbaa !77
  %903 = call i32 %900(ptr noundef nonnull %5, i64 noundef %693, i64 noundef %31, ptr noundef %902) #15
  br label %904

904:                                              ; preds = %893, %897
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  br label %905

905:                                              ; preds = %904, %889
  %906 = load ptr, ptr %694, align 8, !tbaa !73
  %907 = call ptr @DestroyImage(ptr noundef %906) #15
  store ptr %907, ptr %694, align 8, !tbaa !73
  %908 = call ptr @DestroyImage(ptr noundef %857) #15
  %909 = add nsw i64 %693, 1
  %910 = icmp eq i64 %864, %522
  br i1 %910, label %911, label %690, !llvm.loop !120

911:                                              ; preds = %905, %681
  %912 = phi i64 [ %378, %681 ], [ %909, %905 ]
  %913 = phi ptr [ %373, %681 ], [ %908, %905 ]
  %914 = add nuw nsw i64 %377, 1
  %915 = icmp slt i64 %914, %339
  br i1 %915, label %916, label %927

916:                                              ; preds = %911
  call void @AcquireNextImage(ptr noundef %244, ptr noundef %376) #15
  %917 = call ptr @GetNextImageInList(ptr noundef %376) #15
  %918 = icmp eq ptr %917, null
  br i1 %918, label %919, label %921

919:                                              ; preds = %916
  %920 = call ptr @DestroyImageList(ptr noundef %376) #15
  br label %944

921:                                              ; preds = %916
  %922 = call ptr @GetNextImageInList(ptr noundef %376) #15
  %923 = getelementptr inbounds %struct._Image, ptr %922, i64 0, i32 12
  %924 = load i64, ptr %246, align 4
  store i64 %924, ptr %923, align 8
  %925 = getelementptr inbounds ptr, ptr %374, i64 %410
  %926 = sub i64 %375, %410
  br label %927

927:                                              ; preds = %911, %921
  %928 = phi ptr [ %922, %921 ], [ %376, %911 ]
  %929 = phi i64 [ %926, %921 ], [ %375, %911 ]
  %930 = phi ptr [ %925, %921 ], [ %374, %911 ]
  %931 = icmp slt i64 %914, %339
  br i1 %931, label %372, label %932, !llvm.loop !121

932:                                              ; preds = %927, %327
  %933 = phi ptr [ %330, %327 ], [ %928, %927 ]
  %934 = call ptr @DestroyImage(ptr noundef %329) #15
  %935 = icmp eq ptr %285, null
  br i1 %935, label %938, label %936

936:                                              ; preds = %932
  %937 = call ptr @DestroyImage(ptr noundef nonnull %285) #15
  br label %938

938:                                              ; preds = %936, %932
  %939 = call ptr @DestroyString(ptr noundef %289) #15
  %940 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %32) #15
  %941 = call ptr @DestroyDrawInfo(ptr noundef %251) #15
  %942 = call ptr @DestroyImageInfo(ptr noundef %244) #15
  %943 = call ptr @GetFirstImageInList(ptr noundef %933) #15
  br label %944

944:                                              ; preds = %938, %919, %543, %106
  %945 = phi ptr [ null, %106 ], [ null, %543 ], [ null, %919 ], [ %943, %938 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #15
  ret ptr %945
}

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

declare ptr @ImageListToArray(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @NewImageList() local_unnamed_addr #3

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ThumbnailImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @SceneCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 39
  %5 = load i64, ptr %4, align 8, !tbaa !82
  %6 = load ptr, ptr %1, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 39
  %8 = load i64, ptr %7, align 8, !tbaa !82
  %9 = sub i64 %5, %8
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #10

declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @GetGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ParseMetaGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #3

declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @GetTypeMetrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @MultilineCensus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #12

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @TextureImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @AnnotateImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #3

declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @NegateImageChannel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @FrameImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ShadowImage(ptr noundef, double noundef, double noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @AcquireNextImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0,1) }

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
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!63, !40, i64 576}
!78 = !{!66, !42, i64 0}
!79 = !{!66, !42, i64 8}
!80 = !{!63, !40, i64 568}
!81 = distinct !{!81, !75, !76}
!82 = !{!63, !42, i64 432}
!83 = distinct !{!83, !75, !76}
!84 = !{!42, !42, i64 0}
!85 = !{!66, !42, i64 16}
!86 = !{!66, !42, i64 24}
!87 = !{!88, !42, i64 0}
!88 = !{!"_FrameInfo", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!89 = !{!88, !42, i64 8}
!90 = !{!88, !42, i64 40}
!91 = !{!88, !42, i64 32}
!92 = !{!88, !42, i64 16}
!93 = !{!88, !42, i64 24}
!94 = !{!63, !42, i64 40}
!95 = !{!63, !42, i64 48}
!96 = distinct !{!96, !75, !76}
!97 = !{!98, !41, i64 392}
!98 = !{!"_DrawInfo", !40, i64 0, !40, i64 8, !66, i64 16, !99, i64 48, !35, i64 96, !43, i64 100, !43, i64 108, !41, i64 120, !100, i64 128, !40, i64 256, !40, i64 264, !40, i64 272, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !42, i64 304, !41, i64 312, !35, i64 320, !35, i64 324, !40, i64 328, !42, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !35, i64 368, !35, i64 372, !42, i64 376, !40, i64 384, !41, i64 392, !40, i64 400, !35, i64 408, !43, i64 412, !43, i64 420, !40, i64 432, !40, i64 440, !40, i64 448, !101, i64 456, !35, i64 488, !44, i64 492, !35, i64 496, !104, i64 504, !35, i64 672, !42, i64 680, !41, i64 688, !41, i64 696, !41, i64 704, !35, i64 712}
!99 = !{!"_AffineMatrix", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40}
!100 = !{!"_GradientInfo", !35, i64 0, !66, i64 8, !101, i64 40, !40, i64 72, !42, i64 80, !35, i64 88, !35, i64 92, !42, i64 96, !102, i64 104, !103, i64 120}
!101 = !{!"_SegmentInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!102 = !{!"_PointInfo", !41, i64 0, !41, i64 8}
!103 = !{!"float", !36, i64 0}
!104 = !{!"_ElementReference", !40, i64 0, !35, i64 8, !100, i64 16, !42, i64 144, !40, i64 152, !40, i64 160}
!105 = !{!98, !35, i64 96}
!106 = !{!98, !40, i64 328}
!107 = !{!108, !41, i64 16}
!108 = !{!"_TypeMetric", !102, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !101, i64 72, !102, i64 104}
!109 = !{!108, !41, i64 24}
!110 = distinct !{!110, !75, !76}
!111 = distinct !{!111, !75, !76}
!112 = !{!63, !40, i64 232}
!113 = distinct !{!113, !75, !76}
!114 = !{!63, !40, i64 240}
!115 = !{!36, !36, i64 0}
!116 = distinct !{!116, !75, !76}
!117 = !{!63, !35, i64 416}
!118 = !{!63, !35, i64 412}
!119 = !{i64 0, i64 8, !84, i64 8, i64 8, !84, i64 16, i64 8, !84, i64 24, i64 8, !84, i64 32, i64 8, !84, i64 40, i64 8, !84}
!120 = distinct !{!120, !75, !76}
!121 = distinct !{!121, !75, !76}
