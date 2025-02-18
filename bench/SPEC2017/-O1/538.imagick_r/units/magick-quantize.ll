; ModuleID = 'magick/quantize.c'
source_filename = "magick/quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._CubeInfo = type { ptr, i64, i64, i64, i64, %struct._RealPixelPacket, float, float, float, i64, i64, i64, ptr, ptr, ptr, ptr, [16 x %struct._RealPixelPacket], [16 x float], ptr, i32, i64, i64, i64, i64, i64 }
%struct._RealPixelPacket = type { float, float, float, float }
%struct._Nodes = type { ptr, ptr }
%struct._NodeInfo = type { ptr, [16 x ptr], i64, %struct._RealPixelPacket, float, i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"magick/quantize.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Posterize/Image\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Assign/Image\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Classify/Image\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Dither/Image\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Reduce/Image\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireQuantizeInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  call void @GetExceptionInfo(ptr noundef nonnull %2) #18
  %6 = tail call ptr @__errno_location() #19
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #18
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 377, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #18
  %10 = call ptr @DestroyString(ptr noundef %8) #18
  call void @CatchException(ptr noundef nonnull %2) #18
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #20
  unreachable

12:                                               ; preds = %1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #18
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 48) #18
  store i64 256, ptr %3, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 2
  store i32 1, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 6
  store i32 2, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !43
  %18 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 5
  store i64 2880220587, ptr %19, align 8, !tbaa !45
  %20 = icmp eq ptr %0, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !46
  store i32 %23, ptr %15, align 8, !tbaa !41
  %24 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call i64 @ParseCommandOption(i32 noundef 21, i32 noundef 0, ptr noundef nonnull %24) #18
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr %16, align 8, !tbaa !42
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 35
  %31 = load i32, ptr %30, align 4, !tbaa !52
  store i32 %31, ptr %18, align 8, !tbaa !44
  br label %32

32:                                               ; preds = %29, %12
  ret ptr %3
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
define dso_local void @GetQuantizeInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #18
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 48) #18
  store i64 256, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 6
  store i32 2, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 5
  store i64 2880220587, ptr %8, align 8, !tbaa !45
  ret void
}

declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneQuantizeInfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  call void @GetExceptionInfo(ptr noundef nonnull %2) #18
  %6 = tail call ptr @__errno_location() #19
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #18
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1021, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #18
  %10 = call ptr @DestroyString(ptr noundef %8) #18
  call void @CatchException(ptr noundef nonnull %2) #18
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #20
  unreachable

12:                                               ; preds = %1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #18
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 48) #18
  store i64 256, ptr %3, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 2
  store i32 1, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 6
  store i32 2, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !43
  %18 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 5
  store i64 2880220587, ptr %19, align 8, !tbaa !45
  %20 = icmp eq ptr %0, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %12
  %22 = load i64, ptr %0, align 8, !tbaa !38
  store i64 %22, ptr %3, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !41
  store i32 %27, ptr %15, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !42
  store i32 %29, ptr %16, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !43
  store i32 %31, ptr %17, align 4, !tbaa !43
  %32 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !44
  store i32 %33, ptr %18, align 8, !tbaa !44
  br label %34

34:                                               ; preds = %12, %21
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CompressImageColormap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._QuantizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1163, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call i32 @IsPaletteImage(ptr noundef %0, ptr noundef nonnull %10) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #18
  %15 = call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 48) #18
  store i64 256, ptr %2, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct._QuantizeInfo, ptr %2, i64 0, i32 2
  store i32 1, ptr %16, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %2, i64 0, i32 6
  store i32 2, ptr %17, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._QuantizeInfo, ptr %2, i64 0, i32 3
  store i32 0, ptr %18, align 4, !tbaa !43
  %19 = getelementptr inbounds %struct._QuantizeInfo, ptr %2, i64 0, i32 4
  store i32 0, ptr %19, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._QuantizeInfo, ptr %2, i64 0, i32 5
  store i64 2880220587, ptr %20, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %22 = load i64, ptr %21, align 8, !tbaa !65
  store i64 %22, ptr %2, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct._QuantizeInfo, ptr %2, i64 0, i32 1
  store i64 8, ptr %23, align 8, !tbaa !53
  %24 = call i32 @QuantizeImage(ptr noundef nonnull %2, ptr noundef %0), !range !66
  br label %25

25:                                               ; preds = %9, %13
  %26 = phi i32 [ %24, %13 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #18
  ret i32 %26
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @IsPaletteImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @QuantizeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2695, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i64, ptr %0, align 8, !tbaa !38
  %12 = icmp eq i64 %11, 0
  %13 = tail call i64 @llvm.umin.i64(i64 %11, i64 65536)
  %14 = select i1 %12, i64 65536, i64 %13
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !67
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %318

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !69
  %23 = mul i64 %22, %20
  %24 = icmp ugt i64 %23, %14
  br i1 %24, label %106, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %27 = tail call i32 @AcquireImageColormap(ptr noundef %1, i64 noundef %23) #18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = icmp eq ptr %1, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2633, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %32) #18
  br label %106

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %36 = load i64, ptr %35, align 8, !tbaa !65
  %37 = icmp eq i64 %36, %23
  br i1 %37, label %38, label %106

38:                                               ; preds = %34
  %39 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %1, ptr noundef nonnull %26) #18
  %40 = load i64, ptr %21, align 8, !tbaa !69
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %104

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 11
  %44 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  %45 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %46 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 48
  br label %51

47:                                               ; preds = %101
  %48 = add nuw nsw i64 %52, 1
  %49 = load i64, ptr %21, align 8, !tbaa !69
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %104, !llvm.loop !70

51:                                               ; preds = %42, %47
  %52 = phi i64 [ 0, %42 ], [ %48, %47 ]
  %53 = phi i64 [ 0, %42 ], [ %102, %47 ]
  %54 = load i64, ptr %19, align 8, !tbaa !68
  %55 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %52, i64 noundef %54, i64 noundef 1, ptr noundef nonnull %26) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %101, label %57

57:                                               ; preds = %51
  %58 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %39) #18
  %59 = load i64, ptr %19, align 8, !tbaa !68
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load ptr, ptr %43, align 8, !tbaa !73
  %63 = icmp eq ptr %58, null
  br label %64

64:                                               ; preds = %61, %82
  %65 = phi i64 [ 0, %61 ], [ %85, %82 ]
  %66 = phi ptr [ %55, %61 ], [ %84, %82 ]
  %67 = phi i64 [ %53, %61 ], [ %83, %82 ]
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  %69 = load i16, ptr %68, align 2, !tbaa !74
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %67, i32 2
  store i16 %69, ptr %70, align 2, !tbaa !74
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !75
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %67, i32 1
  store i16 %72, ptr %73, align 2, !tbaa !75
  %74 = load i16, ptr %66, align 2, !tbaa !76
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %67
  store i16 %74, ptr %75, align 2, !tbaa !76
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !77
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %67, i32 3
  store i16 %77, ptr %78, align 2, !tbaa !77
  br i1 %63, label %82, label %79

79:                                               ; preds = %64
  %80 = getelementptr inbounds i16, ptr %58, i64 %65
  %81 = trunc i64 %67 to i16
  store i16 %81, ptr %80, align 2, !tbaa !78
  br label %82

82:                                               ; preds = %79, %64
  %83 = add nsw i64 %67, 1
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %85 = add nuw nsw i64 %65, 1
  %86 = icmp eq i64 %85, %59
  br i1 %86, label %87, label %64, !llvm.loop !79

87:                                               ; preds = %82, %57
  %88 = phi i64 [ %53, %57 ], [ %83, %82 ]
  %89 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %39, ptr noundef nonnull %26) #21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %21, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #18
  %93 = load ptr, ptr %44, align 8, !tbaa !80
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %45) #18
  %97 = load ptr, ptr %44, align 8, !tbaa !80
  %98 = load ptr, ptr %46, align 8, !tbaa !81
  %99 = call i32 %97(ptr noundef nonnull %3, i64 noundef %52, i64 noundef %92, ptr noundef %98) #18
  br label %100

100:                                              ; preds = %95, %91
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #18
  br label %101

101:                                              ; preds = %100, %87, %51
  %102 = phi i64 [ %88, %100 ], [ %53, %51 ], [ %88, %87 ]
  %103 = phi i1 [ true, %100 ], [ false, %51 ], [ false, %87 ]
  br i1 %103, label %47, label %104

104:                                              ; preds = %47, %101, %38
  %105 = call ptr @DestroyCacheView(ptr noundef %39) #18
  br label %106

106:                                              ; preds = %104, %34, %31, %29, %18
  %107 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %108 = call i32 @IsGrayImage(ptr noundef %1, ptr noundef nonnull %107) #18
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %318, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 77
  %112 = load i32, ptr %111, align 8, !tbaa !82
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call i32 @TransformImageColorspace(ptr noundef %1, i32 noundef 2) #18
  br label %116

116:                                              ; preds = %114, %110
  %117 = call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #22
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = icmp eq ptr %1, null
  br i1 %120, label %318, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %123 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %107, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3345, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %122) #18
  br label %318

124:                                              ; preds = %116
  %125 = load i32, ptr %1, align 8, !tbaa !83
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %196, label %127

127:                                              ; preds = %124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %117, i8 -1, i64 524288, i1 false), !tbaa !84
  %128 = call i32 @AcquireImageColormap(ptr noundef nonnull %1, i64 noundef 65536) #18
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %132 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %107, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3355, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %131) #18
  br label %195

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  store i64 0, ptr %134, align 8, !tbaa !65
  %135 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %1, ptr noundef nonnull %107) #18
  %136 = load i64, ptr %21, align 8, !tbaa !69
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %193

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 11
  br label %140

140:                                              ; preds = %138, %188
  %141 = phi i32 [ 1, %138 ], [ %189, %188 ]
  %142 = phi i64 [ 0, %138 ], [ %190, %188 ]
  %143 = icmp eq i32 %141, 0
  br i1 %143, label %188, label %144

144:                                              ; preds = %140
  %145 = load i64, ptr %19, align 8, !tbaa !68
  %146 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %135, i64 noundef 0, i64 noundef %142, i64 noundef %145, i64 noundef 1, ptr noundef nonnull %107) #21
  %147 = icmp eq ptr %146, null
  br i1 %147, label %188, label %148

148:                                              ; preds = %144
  %149 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %135) #18
  %150 = load i64, ptr %19, align 8, !tbaa !68
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %184

152:                                              ; preds = %148
  %153 = icmp eq ptr %149, null
  br label %154

154:                                              ; preds = %152, %179
  %155 = phi i64 [ 0, %152 ], [ %181, %179 ]
  %156 = phi ptr [ %146, %152 ], [ %180, %179 ]
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 0, i32 2
  %158 = load i16, ptr %157, align 2, !tbaa !74
  %159 = zext i16 %158 to i64
  %160 = getelementptr inbounds i64, ptr %117, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !84
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %154
  %164 = load i64, ptr %134, align 8, !tbaa !65
  store i64 %164, ptr %160, align 8, !tbaa !84
  %165 = load ptr, ptr %139, align 8, !tbaa !73
  %166 = load i64, ptr %134, align 8, !tbaa !65
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %166, i32 2
  store i16 %158, ptr %167, align 2, !tbaa !74
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 0, i32 1
  %169 = load i16, ptr %168, align 2, !tbaa !75
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %166, i32 1
  store i16 %169, ptr %170, align 2, !tbaa !75
  %171 = load i16, ptr %156, align 2, !tbaa !76
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %166
  store i16 %171, ptr %172, align 2, !tbaa !76
  %173 = add i64 %166, 1
  store i64 %173, ptr %134, align 8, !tbaa !65
  br label %174

174:                                              ; preds = %163, %154
  br i1 %153, label %179, label %175

175:                                              ; preds = %174
  %176 = getelementptr inbounds i16, ptr %149, i64 %155
  %177 = load i64, ptr %160, align 8, !tbaa !84
  %178 = trunc i64 %177 to i16
  store i16 %178, ptr %176, align 2, !tbaa !78
  br label %179

179:                                              ; preds = %175, %174
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 1
  %181 = add nuw nsw i64 %155, 1
  %182 = load i64, ptr %19, align 8, !tbaa !68
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %154, label %184, !llvm.loop !85

184:                                              ; preds = %179, %148
  %185 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %135, ptr noundef nonnull %107) #21
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  br label %188

188:                                              ; preds = %184, %144, %140
  %189 = phi i32 [ %187, %184 ], [ 0, %140 ], [ 0, %144 ]
  %190 = add nuw nsw i64 %142, 1
  %191 = load i64, ptr %21, align 8, !tbaa !69
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %140, label %193, !llvm.loop !86

193:                                              ; preds = %188, %133
  %194 = call ptr @DestroyCacheView(ptr noundef %135) #18
  br label %195

195:                                              ; preds = %193, %130
  br i1 %129, label %318, label %196

196:                                              ; preds = %195, %124
  %197 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %198 = load i64, ptr %197, align 8, !tbaa !65
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 11
  %202 = load ptr, ptr %201, align 8, !tbaa !73
  br label %203

203:                                              ; preds = %200, %203
  %204 = phi i64 [ 0, %200 ], [ %207, %203 ]
  %205 = trunc i64 %204 to i16
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %202, i64 %204, i32 3
  store i16 %205, ptr %206, align 2, !tbaa !77
  %207 = add nuw nsw i64 %204, 1
  %208 = icmp eq i64 %207, %198
  br i1 %208, label %209, label %203, !llvm.loop !87

209:                                              ; preds = %203, %196
  %210 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %211 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 11
  %212 = load ptr, ptr %211, align 8, !tbaa !73
  call void @qsort(ptr noundef %212, i64 noundef %198, i64 noundef 8, ptr noundef nonnull @IntensityCompare) #18
  %213 = load i64, ptr %210, align 8, !tbaa !65
  %214 = call ptr @AcquireQuantumMemory(i64 noundef %213, i64 noundef 8) #22
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %218 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %107, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3421, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %217) #18
  br label %318

219:                                              ; preds = %209
  %220 = load ptr, ptr %211, align 8, !tbaa !73
  %221 = load i64, ptr %220, align 2
  store i64 %221, ptr %214, align 2
  %222 = load i64, ptr %210, align 8, !tbaa !65
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %270

224:                                              ; preds = %219, %258
  %225 = phi i64 [ %265, %258 ], [ 0, %219 ]
  %226 = phi i64 [ %259, %258 ], [ 0, %219 ]
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 %226
  %228 = load ptr, ptr %211, align 8, !tbaa !73
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %228, i64 %225
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 %226, i32 2
  %231 = load i16, ptr %230, align 2, !tbaa !74
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %228, i64 %225, i32 2
  %233 = load i16, ptr %232, align 2, !tbaa !74
  %234 = icmp eq i16 %231, %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %224
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 %226, i32 1
  %237 = load i16, ptr %236, align 2, !tbaa !75
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %228, i64 %225, i32 1
  %239 = load i16, ptr %238, align 2, !tbaa !75
  %240 = icmp eq i16 %237, %239
  br i1 %240, label %241, label %254

241:                                              ; preds = %235
  %242 = load i16, ptr %227, align 2, !tbaa !76
  %243 = load i16, ptr %229, align 2, !tbaa !76
  %244 = icmp eq i16 %242, %243
  br i1 %244, label %245, label %254

245:                                              ; preds = %241
  %246 = load i32, ptr %15, align 8, !tbaa !67
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 %226, i32 3
  %250 = load i16, ptr %249, align 2, !tbaa !77
  %251 = getelementptr inbounds %struct._PixelPacket, ptr %228, i64 %225, i32 3
  %252 = load i16, ptr %251, align 2, !tbaa !77
  %253 = icmp eq i16 %250, %252
  br i1 %253, label %258, label %254

254:                                              ; preds = %224, %235, %241, %248
  %255 = add nsw i64 %226, 1
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 %255
  %257 = load i64, ptr %229, align 2
  store i64 %257, ptr %256, align 2
  br label %258

258:                                              ; preds = %245, %248, %254
  %259 = phi i64 [ %255, %254 ], [ %226, %248 ], [ %226, %245 ]
  %260 = load ptr, ptr %211, align 8, !tbaa !73
  %261 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 %225, i32 3
  %262 = load i16, ptr %261, align 2, !tbaa !77
  %263 = zext i16 %262 to i64
  %264 = getelementptr inbounds i64, ptr %117, i64 %263
  store i64 %259, ptr %264, align 8, !tbaa !84
  %265 = add nuw nsw i64 %225, 1
  %266 = load i64, ptr %210, align 8, !tbaa !65
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %224, label %268, !llvm.loop !88

268:                                              ; preds = %258
  %269 = add nsw i64 %259, 1
  br label %270

270:                                              ; preds = %268, %219
  %271 = phi i64 [ 1, %219 ], [ %269, %268 ]
  store i64 %271, ptr %210, align 8, !tbaa !65
  %272 = load ptr, ptr %211, align 8, !tbaa !73
  %273 = call ptr @RelinquishMagickMemory(ptr noundef %272) #18
  store ptr %214, ptr %211, align 8, !tbaa !73
  %274 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %1, ptr noundef nonnull %107) #18
  %275 = load i64, ptr %21, align 8, !tbaa !69
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %312

277:                                              ; preds = %270, %307
  %278 = phi i32 [ %308, %307 ], [ 1, %270 ]
  %279 = phi i64 [ %309, %307 ], [ 0, %270 ]
  %280 = icmp eq i32 %278, 0
  br i1 %280, label %307, label %281

281:                                              ; preds = %277
  %282 = load i64, ptr %19, align 8, !tbaa !68
  %283 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %274, i64 noundef 0, i64 noundef %279, i64 noundef %282, i64 noundef 1, ptr noundef nonnull %107) #21
  %284 = icmp eq ptr %283, null
  br i1 %284, label %307, label %285

285:                                              ; preds = %281
  %286 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %274) #18
  %287 = load i64, ptr %19, align 8, !tbaa !68
  %288 = icmp sgt i64 %287, 0
  br i1 %288, label %289, label %303

289:                                              ; preds = %285
  %290 = icmp eq ptr %286, null
  br label %291

291:                                              ; preds = %289, %300
  %292 = phi i64 [ 0, %289 ], [ %301, %300 ]
  br i1 %290, label %300, label %293

293:                                              ; preds = %291
  %294 = getelementptr inbounds i16, ptr %286, i64 %292
  %295 = load i16, ptr %294, align 2, !tbaa !78
  %296 = zext i16 %295 to i64
  %297 = getelementptr inbounds i64, ptr %117, i64 %296
  %298 = load i64, ptr %297, align 8, !tbaa !84
  %299 = trunc i64 %298 to i16
  store i16 %299, ptr %294, align 2, !tbaa !78
  br label %300

300:                                              ; preds = %293, %291
  %301 = add nuw nsw i64 %292, 1
  %302 = icmp eq i64 %301, %287
  br i1 %302, label %303, label %291, !llvm.loop !89

303:                                              ; preds = %300, %285
  %304 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %274, ptr noundef nonnull %107) #21
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i32
  br label %307

307:                                              ; preds = %303, %281, %277
  %308 = phi i32 [ %306, %303 ], [ 0, %277 ], [ 0, %281 ]
  %309 = add nuw nsw i64 %279, 1
  %310 = load i64, ptr %21, align 8, !tbaa !69
  %311 = icmp slt i64 %309, %310
  br i1 %311, label %277, label %312, !llvm.loop !90

312:                                              ; preds = %307, %270
  %313 = call ptr @DestroyCacheView(ptr noundef %274) #18
  %314 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %117) #18
  store i32 2, ptr %111, align 8, !tbaa !82
  %315 = call i32 @IsMonochromeImage(ptr noundef nonnull %1, ptr noundef nonnull %107) #18
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %312
  store i32 1, ptr %111, align 8, !tbaa !82
  br label %318

318:                                              ; preds = %317, %312, %216, %195, %121, %119, %106, %10
  %319 = load i32, ptr %1, align 8, !tbaa !83
  %320 = icmp eq i32 %319, 2
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %323 = load i64, ptr %322, align 8, !tbaa !65
  %324 = icmp ugt i64 %323, %14
  br i1 %324, label %325, label %371

325:                                              ; preds = %321, %318
  %326 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 1
  %327 = load i64, ptr %326, align 8, !tbaa !53
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %356

329:                                              ; preds = %325
  %330 = icmp eq i64 %14, 0
  br i1 %330, label %337, label %331

331:                                              ; preds = %329, %331
  %332 = phi i64 [ %334, %331 ], [ %14, %329 ]
  %333 = phi i64 [ %335, %331 ], [ 1, %329 ]
  %334 = lshr i64 %332, 2
  %335 = add nuw nsw i64 %333, 1
  %336 = icmp ult i64 %332, 4
  br i1 %336, label %337, label %331, !llvm.loop !91

337:                                              ; preds = %331, %329
  %338 = phi i64 [ 1, %329 ], [ %335, %331 ]
  %339 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %340 = load i32, ptr %339, align 8, !tbaa !41
  %341 = icmp ne i32 %340, 0
  %342 = icmp ugt i64 %338, 2
  %343 = select i1 %341, i1 %342, i1 false
  %344 = sext i1 %343 to i64
  %345 = add i64 %338, %344
  %346 = load i32, ptr %15, align 8, !tbaa !67
  %347 = icmp ne i32 %346, 0
  %348 = icmp ugt i64 %345, 5
  %349 = select i1 %347, i1 %348, i1 false
  %350 = sext i1 %349 to i64
  %351 = add i64 %345, %350
  %352 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %353 = call i32 @IsGrayImage(ptr noundef nonnull %1, ptr noundef nonnull %352) #18
  %354 = icmp eq i32 %353, 0
  %355 = select i1 %354, i64 %351, i64 8
  br label %356

356:                                              ; preds = %337, %325
  %357 = phi i64 [ %355, %337 ], [ %327, %325 ]
  %358 = call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef %357, i64 noundef %14)
  %359 = icmp eq ptr %358, null
  %360 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  br i1 %359, label %361, label %364

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %363 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %360, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2736, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %362) #18
  br label %371

364:                                              ; preds = %356
  %365 = call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %358, ptr noundef nonnull %1, ptr noundef nonnull %360), !range !66
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %369, label %367

367:                                              ; preds = %364
  call fastcc void @ReduceImageColors(ptr noundef nonnull %1, ptr noundef nonnull %358)
  %368 = call fastcc i32 @AssignImageColors(ptr noundef nonnull %1, ptr noundef nonnull %358), !range !66
  br label %369

369:                                              ; preds = %367, %364
  %370 = phi i32 [ %368, %367 ], [ 0, %364 ]
  call fastcc void @DestroyCubeInfo(ptr noundef nonnull %358)
  br label %371

371:                                              ; preds = %321, %369, %361
  %372 = phi i32 [ 0, %361 ], [ %370, %369 ], [ 1, %321 ]
  ret i32 %372
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyQuantizeInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.6) #18
  %3 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 5
  store i64 -2880220588, ptr %3, align 8, !tbaa !45
  %4 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #18
  ret ptr %4
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetImageQuantizeError(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2153, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = tail call i64 @GetNumberColors(ptr noundef %0, ptr noundef null, ptr noundef nonnull %9) #18
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 43
  store i64 %10, ptr %11, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 24) #18
  %14 = load i32, ptr %0, align 8, !tbaa !83
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %151, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !68
  %19 = uitofp i64 %18 to double
  %20 = fmul double %19, 3.000000e+00
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !69
  %23 = uitofp i64 %22 to double
  %24 = fmul double %20, %23
  %25 = fptrunc double %24 to float
  %26 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %9) #18
  %27 = load i64, ptr %21, align 8, !tbaa !69
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %141

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %37

33:                                               ; preds = %129
  %34 = add nuw nsw i64 %38, 1
  %35 = load i64, ptr %21, align 8, !tbaa !69
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %135, !llvm.loop !93

37:                                               ; preds = %29, %33
  %38 = phi i64 [ 0, %29 ], [ %34, %33 ]
  %39 = phi float [ 0.000000e+00, %29 ], [ %134, %33 ]
  %40 = phi float [ 0.000000e+00, %29 ], [ %133, %33 ]
  %41 = phi float [ 0.000000e+00, %29 ], [ %132, %33 ]
  %42 = phi float [ 1.000000e+00, %29 ], [ %131, %33 ]
  %43 = phi float [ 1.000000e+00, %29 ], [ %130, %33 ]
  %44 = load i64, ptr %17, align 8, !tbaa !68
  %45 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef 0, i64 noundef %38, i64 noundef %44, i64 noundef 1, ptr noundef nonnull %9) #21
  %46 = icmp eq ptr %45, null
  br i1 %46, label %129, label %47

47:                                               ; preds = %37
  %48 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %26) #18
  %49 = load i64, ptr %17, align 8, !tbaa !68
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %129

51:                                               ; preds = %47
  %52 = icmp eq ptr %48, null
  %53 = load i32, ptr %30, align 8, !tbaa !67
  %54 = icmp eq i32 %53, 0
  %55 = load ptr, ptr %32, align 8, !tbaa !73
  br label %56

56:                                               ; preds = %51, %84
  %57 = phi i64 [ 0, %51 ], [ %127, %84 ]
  %58 = phi ptr [ %45, %51 ], [ %126, %84 ]
  %59 = phi float [ %39, %51 ], [ %122, %84 ]
  %60 = phi float [ %40, %51 ], [ %123, %84 ]
  %61 = phi float [ %41, %51 ], [ %125, %84 ]
  %62 = phi float [ %42, %51 ], [ %86, %84 ]
  %63 = phi float [ %43, %51 ], [ %85, %84 ]
  br i1 %52, label %68, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds i16, ptr %48, i64 %57
  %66 = load i16, ptr %65, align 2, !tbaa !78
  %67 = zext i16 %66 to i64
  br label %68

68:                                               ; preds = %56, %64
  %69 = phi i64 [ %67, %64 ], [ 0, %56 ]
  br i1 %54, label %84, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  %72 = load i16, ptr %71, align 2, !tbaa !77
  %73 = xor i16 %72, -1
  %74 = uitofp i16 %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fptrunc double %75 to float
  %77 = load ptr, ptr %31, align 8, !tbaa !73
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 %69, i32 3
  %79 = load i16, ptr %78, align 2, !tbaa !77
  %80 = xor i16 %79, -1
  %81 = uitofp i16 %80 to double
  %82 = fmul double %81, 0x3EF0001000100010
  %83 = fptrunc double %82 to float
  br label %84

84:                                               ; preds = %70, %68
  %85 = phi float [ %76, %70 ], [ %63, %68 ]
  %86 = phi float [ %83, %70 ], [ %62, %68 ]
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  %88 = load i16, ptr %87, align 2, !tbaa !74
  %89 = uitofp i16 %88 to float
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %69, i32 2
  %91 = load i16, ptr %90, align 2, !tbaa !74
  %92 = uitofp i16 %91 to float
  %93 = fneg float %86
  %94 = fmul float %93, %92
  %95 = tail call float @llvm.fmuladd.f32(float %85, float %89, float %94)
  %96 = tail call float @llvm.fabs.f32(float %95)
  %97 = fadd float %59, %96
  %98 = tail call float @llvm.fmuladd.f32(float %95, float %95, float %60)
  %99 = fcmp ogt float %96, %61
  %100 = select i1 %99, float %96, float %61
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  %102 = load i16, ptr %101, align 2, !tbaa !75
  %103 = uitofp i16 %102 to float
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %69, i32 1
  %105 = load i16, ptr %104, align 2, !tbaa !75
  %106 = uitofp i16 %105 to float
  %107 = fmul float %93, %106
  %108 = tail call float @llvm.fmuladd.f32(float %85, float %103, float %107)
  %109 = tail call float @llvm.fabs.f32(float %108)
  %110 = fadd float %97, %109
  %111 = tail call float @llvm.fmuladd.f32(float %108, float %108, float %98)
  %112 = fcmp ogt float %109, %100
  %113 = select i1 %112, float %109, float %100
  %114 = load i16, ptr %58, align 2, !tbaa !76
  %115 = uitofp i16 %114 to float
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %69
  %117 = load i16, ptr %116, align 2, !tbaa !76
  %118 = uitofp i16 %117 to float
  %119 = fmul float %93, %118
  %120 = tail call float @llvm.fmuladd.f32(float %85, float %115, float %119)
  %121 = tail call float @llvm.fabs.f32(float %120)
  %122 = fadd float %110, %121
  %123 = tail call float @llvm.fmuladd.f32(float %120, float %120, float %111)
  %124 = fcmp ogt float %121, %113
  %125 = select i1 %124, float %121, float %113
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %127 = add nuw nsw i64 %57, 1
  %128 = icmp eq i64 %127, %49
  br i1 %128, label %129, label %56, !llvm.loop !94

129:                                              ; preds = %84, %47, %37
  %130 = phi float [ %43, %37 ], [ %43, %47 ], [ %85, %84 ]
  %131 = phi float [ %42, %37 ], [ %42, %47 ], [ %86, %84 ]
  %132 = phi float [ %41, %37 ], [ %41, %47 ], [ %125, %84 ]
  %133 = phi float [ %40, %37 ], [ %40, %47 ], [ %123, %84 ]
  %134 = phi float [ %39, %37 ], [ %39, %47 ], [ %122, %84 ]
  br i1 %46, label %135, label %33

135:                                              ; preds = %129, %33
  %136 = fpext float %134 to double
  %137 = fpext float %133 to double
  %138 = fmul double %137, 0x3DF0002000300040
  %139 = fpext float %132 to double
  %140 = fmul double %139, 0x3EF0001000100010
  br label %141

141:                                              ; preds = %135, %16
  %142 = phi double [ 0.000000e+00, %16 ], [ %140, %135 ]
  %143 = phi double [ 0.000000e+00, %16 ], [ %138, %135 ]
  %144 = phi double [ 0.000000e+00, %16 ], [ %136, %135 ]
  %145 = tail call ptr @DestroyCacheView(ptr noundef %26) #18
  %146 = fpext float %25 to double
  %147 = fdiv double %144, %146
  store double %147, ptr %12, align 8, !tbaa !95
  %148 = fdiv double %143, %146
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  store double %148, ptr %149, align 8, !tbaa !96
  %150 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %142, ptr %150, align 8, !tbaa !97
  br label %151

151:                                              ; preds = %8, %141
  ret i32 1
}

declare i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PosterizeImage(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @PosterizeImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, i32 noundef %2), !range !66
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PosterizeImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2333, ptr noundef nonnull @.str.5, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %4
  %13 = load i32, ptr %0, align 8, !tbaa !83
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %120

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %17 = load i64, ptr %16, align 8, !tbaa !65
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %120

19:                                               ; preds = %15
  %20 = and i32 %1, 1
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = add i64 %2, -1
  %24 = uitofp i64 %23 to double
  %25 = tail call i64 @llvm.smax.i64(i64 %23, i64 1)
  %26 = sitofp i64 %25 to double
  %27 = and i32 %1, 2
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %30 = add i64 %2, -1
  %31 = uitofp i64 %30 to double
  %32 = tail call i64 @llvm.smax.i64(i64 %30, i64 1)
  %33 = sitofp i64 %32 to double
  %34 = and i32 %1, 4
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %37 = add i64 %2, -1
  %38 = uitofp i64 %37 to double
  %39 = tail call i64 @llvm.smax.i64(i64 %37, i64 1)
  %40 = sitofp i64 %39 to double
  %41 = and i32 %1, 8
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %44 = add i64 %2, -1
  %45 = uitofp i64 %44 to double
  %46 = tail call i64 @llvm.smax.i64(i64 %44, i64 1)
  %47 = sitofp i64 %46 to double
  br label %48

48:                                               ; preds = %19, %117
  %49 = phi i64 [ 0, %19 ], [ %118, %117 ]
  br i1 %21, label %66, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %22, align 8, !tbaa !73
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 %49, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !74
  %54 = uitofp i16 %53 to double
  %55 = fmul double %54, 0x3EF0001000100010
  %56 = fmul double %55, %24
  %57 = tail call double @llvm.floor.f64(double %56)
  %58 = fsub double %56, %57
  %59 = tail call double @llvm.ceil.f64(double %56)
  %60 = fsub double %59, %56
  %61 = fcmp olt double %58, %60
  %62 = select i1 %61, double %57, double %59
  %63 = fmul double %62, 6.553500e+04
  %64 = fdiv double %63, %26
  %65 = fptoui double %64 to i16
  store i16 %65, ptr %52, align 2, !tbaa !74
  br label %66

66:                                               ; preds = %50, %48
  br i1 %28, label %83, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %29, align 8, !tbaa !73
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %49, i32 1
  %70 = load i16, ptr %69, align 2, !tbaa !75
  %71 = uitofp i16 %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %31
  %74 = tail call double @llvm.floor.f64(double %73)
  %75 = fsub double %73, %74
  %76 = tail call double @llvm.ceil.f64(double %73)
  %77 = fsub double %76, %73
  %78 = fcmp olt double %75, %77
  %79 = select i1 %78, double %74, double %76
  %80 = fmul double %79, 6.553500e+04
  %81 = fdiv double %80, %33
  %82 = fptoui double %81 to i16
  store i16 %82, ptr %69, align 2, !tbaa !75
  br label %83

83:                                               ; preds = %67, %66
  br i1 %35, label %100, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %36, align 8, !tbaa !73
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 %49
  %87 = load i16, ptr %86, align 2, !tbaa !76
  %88 = uitofp i16 %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fmul double %89, %38
  %91 = tail call double @llvm.floor.f64(double %90)
  %92 = fsub double %90, %91
  %93 = tail call double @llvm.ceil.f64(double %90)
  %94 = fsub double %93, %90
  %95 = fcmp olt double %92, %94
  %96 = select i1 %95, double %91, double %93
  %97 = fmul double %96, 6.553500e+04
  %98 = fdiv double %97, %40
  %99 = fptoui double %98 to i16
  store i16 %99, ptr %86, align 2, !tbaa !76
  br label %100

100:                                              ; preds = %84, %83
  br i1 %42, label %117, label %101

101:                                              ; preds = %100
  %102 = load ptr, ptr %43, align 8, !tbaa !73
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 %49, i32 3
  %104 = load i16, ptr %103, align 2, !tbaa !77
  %105 = uitofp i16 %104 to double
  %106 = fmul double %105, 0x3EF0001000100010
  %107 = fmul double %106, %45
  %108 = tail call double @llvm.floor.f64(double %107)
  %109 = fsub double %107, %108
  %110 = tail call double @llvm.ceil.f64(double %107)
  %111 = fsub double %110, %107
  %112 = fcmp olt double %109, %111
  %113 = select i1 %112, double %108, double %110
  %114 = fmul double %113, 6.553500e+04
  %115 = fdiv double %114, %47
  %116 = fptoui double %115 to i16
  store i16 %116, ptr %103, align 2, !tbaa !77
  br label %117

117:                                              ; preds = %100, %101
  %118 = add nuw nsw i64 %49, 1
  %119 = icmp eq i64 %118, %17
  br i1 %119, label %120, label %48, !llvm.loop !98

120:                                              ; preds = %117, %15, %12
  %121 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %122 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %121) #18
  %123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %124 = load i64, ptr %123, align 8, !tbaa !69
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %291

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %128 = and i32 %1, 1
  %129 = icmp eq i32 %128, 0
  %130 = add i64 %2, -1
  %131 = uitofp i64 %130 to double
  %132 = tail call i64 @llvm.smax.i64(i64 %130, i64 1)
  %133 = sitofp i64 %132 to double
  %134 = and i32 %1, 2
  %135 = icmp eq i32 %134, 0
  %136 = add i64 %2, -1
  %137 = uitofp i64 %136 to double
  %138 = tail call i64 @llvm.smax.i64(i64 %136, i64 1)
  %139 = sitofp i64 %138 to double
  %140 = and i32 %1, 4
  %141 = icmp eq i32 %140, 0
  %142 = add i64 %2, -1
  %143 = uitofp i64 %142 to double
  %144 = tail call i64 @llvm.smax.i64(i64 %142, i64 1)
  %145 = sitofp i64 %144 to double
  %146 = and i32 %1, 8
  %147 = icmp eq i32 %146, 0
  %148 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %149 = add i64 %2, -1
  %150 = uitofp i64 %149 to double
  %151 = tail call i64 @llvm.smax.i64(i64 %149, i64 1)
  %152 = sitofp i64 %151 to double
  %153 = and i32 %1, 32
  %154 = icmp eq i32 %153, 0
  %155 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %156 = add i64 %2, -1
  %157 = uitofp i64 %156 to double
  %158 = tail call i64 @llvm.smax.i64(i64 %156, i64 1)
  %159 = sitofp i64 %158 to double
  %160 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %161 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %162 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %163

163:                                              ; preds = %126, %285
  %164 = phi i32 [ 1, %126 ], [ %287, %285 ]
  %165 = phi i64 [ 0, %126 ], [ %288, %285 ]
  %166 = phi i64 [ 0, %126 ], [ %286, %285 ]
  %167 = icmp eq i32 %164, 0
  br i1 %167, label %285, label %168

168:                                              ; preds = %163
  %169 = load i64, ptr %127, align 8, !tbaa !68
  %170 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %122, i64 noundef 0, i64 noundef %165, i64 noundef %169, i64 noundef 1, ptr noundef nonnull %121) #21
  %171 = icmp eq ptr %170, null
  br i1 %171, label %285, label %172

172:                                              ; preds = %168
  %173 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %122) #18
  %174 = load i64, ptr %127, align 8, !tbaa !68
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %270

176:                                              ; preds = %172
  %177 = icmp eq ptr %173, null
  br label %178

178:                                              ; preds = %176, %266
  %179 = phi i64 [ 0, %176 ], [ %268, %266 ]
  %180 = phi ptr [ %170, %176 ], [ %267, %266 ]
  br i1 %129, label %196, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 0, i32 2
  %183 = load i16, ptr %182, align 2, !tbaa !74
  %184 = uitofp i16 %183 to double
  %185 = fmul double %184, 0x3EF0001000100010
  %186 = fmul double %185, %131
  %187 = call double @llvm.floor.f64(double %186)
  %188 = fsub double %186, %187
  %189 = call double @llvm.ceil.f64(double %186)
  %190 = fsub double %189, %186
  %191 = fcmp olt double %188, %190
  %192 = select i1 %191, double %187, double %189
  %193 = fmul double %192, 6.553500e+04
  %194 = fdiv double %193, %133
  %195 = fptoui double %194 to i16
  store i16 %195, ptr %182, align 2, !tbaa !74
  br label %196

196:                                              ; preds = %181, %178
  br i1 %135, label %212, label %197

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 0, i32 1
  %199 = load i16, ptr %198, align 2, !tbaa !75
  %200 = uitofp i16 %199 to double
  %201 = fmul double %200, 0x3EF0001000100010
  %202 = fmul double %201, %137
  %203 = call double @llvm.floor.f64(double %202)
  %204 = fsub double %202, %203
  %205 = call double @llvm.ceil.f64(double %202)
  %206 = fsub double %205, %202
  %207 = fcmp olt double %204, %206
  %208 = select i1 %207, double %203, double %205
  %209 = fmul double %208, 6.553500e+04
  %210 = fdiv double %209, %139
  %211 = fptoui double %210 to i16
  store i16 %211, ptr %198, align 2, !tbaa !75
  br label %212

212:                                              ; preds = %197, %196
  br i1 %141, label %227, label %213

213:                                              ; preds = %212
  %214 = load i16, ptr %180, align 2, !tbaa !76
  %215 = uitofp i16 %214 to double
  %216 = fmul double %215, 0x3EF0001000100010
  %217 = fmul double %216, %143
  %218 = call double @llvm.floor.f64(double %217)
  %219 = fsub double %217, %218
  %220 = call double @llvm.ceil.f64(double %217)
  %221 = fsub double %220, %217
  %222 = fcmp olt double %219, %221
  %223 = select i1 %222, double %218, double %220
  %224 = fmul double %223, 6.553500e+04
  %225 = fdiv double %224, %145
  %226 = fptoui double %225 to i16
  store i16 %226, ptr %180, align 2, !tbaa !76
  br label %227

227:                                              ; preds = %213, %212
  br i1 %147, label %246, label %228

228:                                              ; preds = %227
  %229 = load i32, ptr %148, align 8, !tbaa !67
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %246, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 0, i32 3
  %233 = load i16, ptr %232, align 2, !tbaa !77
  %234 = uitofp i16 %233 to double
  %235 = fmul double %234, 0x3EF0001000100010
  %236 = fmul double %235, %150
  %237 = call double @llvm.floor.f64(double %236)
  %238 = fsub double %236, %237
  %239 = call double @llvm.ceil.f64(double %236)
  %240 = fsub double %239, %236
  %241 = fcmp olt double %238, %240
  %242 = select i1 %241, double %237, double %239
  %243 = fmul double %242, 6.553500e+04
  %244 = fdiv double %243, %152
  %245 = fptoui double %244 to i16
  store i16 %245, ptr %232, align 2, !tbaa !77
  br label %246

246:                                              ; preds = %231, %228, %227
  br i1 %154, label %266, label %247

247:                                              ; preds = %246
  %248 = load i32, ptr %155, align 4, !tbaa !99
  %249 = icmp ne i32 %248, 12
  %250 = select i1 %249, i1 true, i1 %177
  br i1 %250, label %266, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds i16, ptr %173, i64 %179
  %253 = load i16, ptr %252, align 2, !tbaa !78
  %254 = uitofp i16 %253 to double
  %255 = fmul double %254, 0x3EF0001000100010
  %256 = fmul double %255, %157
  %257 = call double @llvm.floor.f64(double %256)
  %258 = fsub double %256, %257
  %259 = call double @llvm.ceil.f64(double %256)
  %260 = fsub double %259, %256
  %261 = fcmp olt double %258, %260
  %262 = select i1 %261, double %257, double %259
  %263 = fmul double %262, 6.553500e+04
  %264 = fdiv double %263, %159
  %265 = fptoui double %264 to i16
  store i16 %265, ptr %252, align 2, !tbaa !78
  br label %266

266:                                              ; preds = %251, %247, %246
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 1
  %268 = add nuw nsw i64 %179, 1
  %269 = icmp eq i64 %268, %174
  br i1 %269, label %270, label %178, !llvm.loop !100

270:                                              ; preds = %266, %172
  %271 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %122, ptr noundef nonnull %121) #21
  %272 = icmp ne i32 %271, 0
  %273 = zext i1 %272 to i32
  %274 = load ptr, ptr %160, align 8, !tbaa !80
  %275 = icmp eq ptr %274, null
  br i1 %275, label %285, label %276

276:                                              ; preds = %270
  %277 = add nsw i64 %166, 1
  %278 = load i64, ptr %123, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %279 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %161) #18
  %280 = load ptr, ptr %160, align 8, !tbaa !80
  %281 = load ptr, ptr %162, align 8, !tbaa !81
  %282 = call i32 %280(ptr noundef nonnull %5, i64 noundef %166, i64 noundef %278, ptr noundef %281) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %283 = icmp eq i32 %282, 0
  %284 = select i1 %283, i32 0, i32 %273
  br label %285

285:                                              ; preds = %270, %276, %168, %163
  %286 = phi i64 [ %166, %163 ], [ %166, %168 ], [ %277, %276 ], [ %166, %270 ]
  %287 = phi i32 [ 0, %163 ], [ 0, %168 ], [ %284, %276 ], [ %273, %270 ]
  %288 = add nuw nsw i64 %165, 1
  %289 = load i64, ptr %123, align 8, !tbaa !69
  %290 = icmp slt i64 %288, %289
  br i1 %290, label %163, label %291, !llvm.loop !101

291:                                              ; preds = %285, %120
  %292 = call ptr @DestroyCacheView(ptr noundef %122) #18
  %293 = call ptr @AcquireQuantizeInfo(ptr noundef null)
  %294 = mul i64 %2, %2
  %295 = mul i64 %294, %2
  %296 = call i64 @llvm.smin.i64(i64 %295, i64 65537)
  store i64 %296, ptr %293, align 8, !tbaa !38
  %297 = getelementptr inbounds %struct._QuantizeInfo, ptr %293, i64 0, i32 2
  store i32 %3, ptr %297, align 8, !tbaa !41
  %298 = getelementptr inbounds %struct._QuantizeInfo, ptr %293, i64 0, i32 1
  store i64 8, ptr %298, align 8, !tbaa !53
  %299 = call i32 @QuantizeImage(ptr noundef nonnull %293, ptr noundef nonnull %0), !range !66
  %300 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.6) #18
  %301 = getelementptr inbounds %struct._QuantizeInfo, ptr %293, i64 0, i32 5
  store i64 -2880220588, ptr %301, align 8, !tbaa !45
  %302 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %293) #18
  ret i32 %299
}

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @GetCubeInfo(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call dereferenceable_or_null(504) ptr @AcquireMagickMemory(i64 noundef 504) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 504) #18
  %8 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 22
  %9 = tail call i64 @llvm.umin.i64(i64 %1, i64 8)
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 2)
  store i64 %10, ptr %8, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 2
  store i64 %2, ptr %11, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 10
  %13 = load i64, ptr %12, align 8, !tbaa !107
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  %19 = tail call dereferenceable_or_null(368640) ptr @AcquireQuantumMemory(i64 noundef 1920, i64 noundef 192) #22
  store ptr %19, ptr %16, align 8, !tbaa !108
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = getelementptr inbounds %struct._Nodes, ptr %16, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !111
  store ptr %16, ptr %22, align 8, !tbaa !110
  %25 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 12
  store ptr %19, ptr %25, align 8, !tbaa !112
  store i64 1920, ptr %12, align 8, !tbaa !107
  br label %26

26:                                               ; preds = %21, %6
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !113
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !113
  %30 = load i64, ptr %12, align 8, !tbaa !107
  %31 = add i64 %30, -1
  store i64 %31, ptr %12, align 8, !tbaa !107
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = getelementptr inbounds %struct._NodeInfo, ptr %33, i64 1
  store ptr %34, ptr %32, align 8, !tbaa !112
  %35 = tail call ptr @ResetMagickMemory(ptr noundef %33, i32 noundef 0, i64 noundef 192) #18
  store ptr null, ptr %33, align 8, !tbaa !114
  %36 = getelementptr inbounds %struct._NodeInfo, ptr %33, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %15, %18, %26
  %38 = phi ptr [ %33, %26 ], [ null, %18 ], [ null, %15 ]
  store ptr %38, ptr %4, align 8, !tbaa !116
  %39 = icmp eq ptr %38, null
  br i1 %39, label %96, label %40

40:                                               ; preds = %37
  store ptr %38, ptr %38, align 8, !tbaa !114
  %41 = tail call ptr @CloneQuantizeInfo(ptr noundef %0)
  %42 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 18
  store ptr %41, ptr %42, align 8, !tbaa !117
  %43 = getelementptr inbounds %struct._QuantizeInfo, ptr %41, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %96, label %46

46:                                               ; preds = %40
  %47 = tail call dereferenceable_or_null(134217728) ptr @AcquireVirtualMemory(i64 noundef 16777216, i64 noundef 8) #22
  %48 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 14
  store ptr %47, ptr %48, align 8, !tbaa !118
  %49 = icmp eq ptr %47, null
  br i1 %49, label %96, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %47) #18
  %52 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 15
  store ptr %51, ptr %52, align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(134217728) %51, i8 -1, i64 134217728, i1 false), !tbaa !84
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %69, %53 ], [ 0, %50 ]
  %55 = phi float [ %68, %53 ], [ 1.000000e+00, %50 ]
  %56 = fpext float %55 to double
  %57 = fcmp olt float %55, 0.000000e+00
  %58 = select i1 %57, double -1.000000e+00, double 1.000000e+00
  %59 = fmul double %58, %56
  %60 = fcmp ult double %59, 1.000000e-15
  %61 = fdiv double 1.000000e+00, %56
  %62 = fdiv double %58, 1.000000e-15
  %63 = select i1 %60, double %62, double %61
  %64 = fptrunc double %63 to float
  %65 = xor i64 %54, 15
  %66 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %65
  store float %64, ptr %66, align 4, !tbaa !120
  %67 = fmul double %56, 0x4000C1B77B6CEBED
  %68 = fptrunc double %67 to float
  %69 = add nuw nsw i64 %54, 1
  %70 = icmp eq i64 %69, 16
  br i1 %70, label %71, label %53, !llvm.loop !121

71:                                               ; preds = %53, %71
  %72 = phi i64 [ %77, %71 ], [ 0, %53 ]
  %73 = phi float [ %76, %71 ], [ 0.000000e+00, %53 ]
  %74 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %72
  %75 = load float, ptr %74, align 4, !tbaa !120
  %76 = fadd float %73, %75
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, 16
  br i1 %78, label %79, label %71, !llvm.loop !122

79:                                               ; preds = %71, %79
  %80 = phi i64 [ %86, %79 ], [ 0, %71 ]
  %81 = phi float [ %85, %79 ], [ 0.000000e+00, %71 ]
  %82 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %80
  %83 = load float, ptr %82, align 4, !tbaa !120
  %84 = fdiv float %83, %76
  store float %84, ptr %82, align 4, !tbaa !120
  %85 = fadd float %81, %84
  %86 = add nuw nsw i64 %80, 1
  %87 = icmp eq i64 %86, 16
  br i1 %87, label %88, label %79, !llvm.loop !123

88:                                               ; preds = %79
  %89 = fpext float %85 to double
  %90 = fsub double 1.000000e+00, %89
  %91 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17
  %92 = load float, ptr %91, align 8, !tbaa !120
  %93 = fpext float %92 to double
  %94 = fadd double %90, %93
  %95 = fptrunc double %94 to float
  store float %95, ptr %91, align 8, !tbaa !120
  br label %96

96:                                               ; preds = %46, %40, %37, %3, %88
  %97 = phi ptr [ %4, %88 ], [ null, %3 ], [ null, %37 ], [ %4, %40 ], [ null, %46 ]
  ret ptr %97
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ClassifyImageColors(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = load i64, ptr %9, align 8, !tbaa !38
  %11 = icmp eq i64 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct._QuantizeInfo, ptr %9, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = icmp eq i32 %14, 2
  %16 = select i1 %15, i32 0, i32 %7
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i32 [ %7, %3 ], [ %16, %12 ]
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  store i32 %18, ptr %19, align 8, !tbaa !124
  %20 = getelementptr inbounds %struct._QuantizeInfo, ptr %9, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !43
  switch i32 %21, label %25 [
    i32 0, label %22
    i32 12, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !99
  switch i32 %24, label %25 [
    i32 29, label %28
    i32 13, label %28
    i32 3, label %28
    i32 1, label %28
    i32 19, label %28
    i32 17, label %28
    i32 2, label %28
  ]

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %21, %17 ], [ 13, %22 ]
  %27 = tail call i32 @TransformImageColorspace(ptr noundef %1, i32 noundef %26) #18
  br label %28

28:                                               ; preds = %25, %22, %22, %22, %22, %22, %22, %22
  %29 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %2) #18
  %30 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !69
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %422

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %35 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %36 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %37 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 10
  %38 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 13
  %39 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 12
  %40 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 12
  %41 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 1
  %42 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %43 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 2
  %45 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  %46 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %47 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 48
  br label %48

48:                                               ; preds = %33, %418
  %49 = phi i64 [ 0, %33 ], [ %419, %418 ]
  %50 = phi float [ 0.000000e+00, %33 ], [ %415, %418 ]
  %51 = load i64, ptr %34, align 8, !tbaa !68
  %52 = call ptr @GetCacheViewVirtualPixels(ptr noundef %29, i64 noundef 0, i64 noundef %49, i64 noundef %51, i64 noundef 1, ptr noundef %2) #21
  %53 = icmp eq ptr %52, null
  br i1 %53, label %414, label %54

54:                                               ; preds = %48
  %55 = load i64, ptr %35, align 8, !tbaa !113
  %56 = icmp ugt i64 %55, 266817
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load ptr, ptr %0, align 8, !tbaa !116
  call fastcc void @PruneLevel(ptr noundef nonnull %0, ptr noundef %58)
  %59 = load i64, ptr %36, align 8, !tbaa !102
  %60 = add i64 %59, -1
  store i64 %60, ptr %36, align 8, !tbaa !102
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i64, ptr %34, align 8, !tbaa !68
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %394

64:                                               ; preds = %61, %390
  %65 = phi i64 [ %392, %390 ], [ %62, %61 ]
  %66 = phi i64 [ %113, %390 ], [ 0, %61 ]
  %67 = phi ptr [ %391, %390 ], [ %52, %61 ]
  %68 = phi float [ %324, %390 ], [ %50, %61 ]
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 1
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %71 = add nsw i64 %66, 1
  %72 = icmp slt i64 %71, %65
  br i1 %72, label %73, label %111

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 2
  %75 = load i16, ptr %74, align 2, !tbaa !74
  %76 = sub i64 %65, %66
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !74
  %79 = icmp eq i16 %75, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %82 = load i16, ptr %69, align 2, !tbaa !75
  br label %89

83:                                               ; preds = %108
  %84 = add nsw i64 %109, %66
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 %109
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 %109, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !74
  %88 = icmp eq i16 %75, %87
  br i1 %88, label %89, label %111, !llvm.loop !125

89:                                               ; preds = %80, %83
  %90 = phi ptr [ %81, %80 ], [ %85, %83 ]
  %91 = phi i64 [ 1, %80 ], [ %109, %83 ]
  %92 = phi i64 [ %71, %80 ], [ %84, %83 ]
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 %91, i32 1
  %94 = load i16, ptr %93, align 2, !tbaa !75
  %95 = icmp eq i16 %82, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %89
  %97 = load i16, ptr %67, align 2, !tbaa !76
  %98 = load i16, ptr %90, align 2, !tbaa !76
  %99 = icmp eq i16 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i32, ptr %6, align 8, !tbaa !67
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i16, ptr %70, align 2, !tbaa !77
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 %91, i32 3
  %106 = load i16, ptr %105, align 2, !tbaa !77
  %107 = icmp eq i16 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103, %100
  %109 = add i64 %91, 1
  %110 = icmp eq i64 %109, %76
  br i1 %110, label %111, label %83, !llvm.loop !125

111:                                              ; preds = %103, %96, %89, %83, %108, %73, %64
  %112 = phi i64 [ 1, %64 ], [ 1, %73 ], [ %76, %108 ], [ %109, %83 ], [ %91, %89 ], [ %91, %96 ], [ %91, %103 ]
  %113 = phi i64 [ %71, %64 ], [ %71, %73 ], [ %65, %108 ], [ %84, %83 ], [ %92, %89 ], [ %92, %96 ], [ %92, %103 ]
  %114 = load i32, ptr %19, align 8, !tbaa !124
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %118 = load i16, ptr %117, align 2, !tbaa !77
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %116, %111
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 2
  %122 = load i16, ptr %121, align 2, !tbaa !74
  %123 = uitofp i16 %122 to float
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 1
  %125 = load i16, ptr %124, align 2, !tbaa !75
  %126 = uitofp i16 %125 to float
  %127 = load i16, ptr %67, align 2, !tbaa !76
  %128 = uitofp i16 %127 to float
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %130 = load i16, ptr %129, align 2, !tbaa !77
  br label %147

131:                                              ; preds = %116
  %132 = xor i16 %118, -1
  %133 = uitofp i16 %132 to double
  %134 = fmul double %133, 0x3EF0001000100010
  %135 = fptrunc double %134 to float
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 2
  %137 = load i16, ptr %136, align 2, !tbaa !74
  %138 = uitofp i16 %137 to float
  %139 = fmul float %135, %138
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 1
  %141 = load i16, ptr %140, align 2, !tbaa !75
  %142 = uitofp i16 %141 to float
  %143 = fmul float %135, %142
  %144 = load i16, ptr %67, align 2, !tbaa !76
  %145 = uitofp i16 %144 to float
  %146 = fmul float %135, %145
  br label %147

147:                                              ; preds = %120, %131
  %148 = phi i16 [ %130, %120 ], [ %118, %131 ]
  %149 = phi float [ %128, %120 ], [ %146, %131 ]
  %150 = phi float [ %126, %120 ], [ %143, %131 ]
  %151 = phi float [ %123, %120 ], [ %139, %131 ]
  %152 = uitofp i16 %148 to float
  %153 = load ptr, ptr %0, align 8, !tbaa !116
  %154 = fcmp olt float %151, 0.000000e+00
  %155 = fcmp olt float %150, 0.000000e+00
  %156 = fcmp olt float %149, 0.000000e+00
  %157 = fcmp oge float %151, 6.553500e+04
  %158 = fadd float %151, 5.000000e-01
  %159 = fptoui float %158 to i16
  %160 = zext i16 %159 to i64
  %161 = add nuw nsw i64 %160, 128
  %162 = fcmp oge float %150, 6.553500e+04
  %163 = fadd float %150, 5.000000e-01
  %164 = fptoui float %163 to i16
  %165 = zext i16 %164 to i64
  %166 = add nuw nsw i64 %165, 128
  %167 = fcmp oge float %149, 6.553500e+04
  %168 = fadd float %149, 5.000000e-01
  %169 = fptoui float %168 to i16
  %170 = zext i16 %169 to i64
  %171 = add nuw nsw i64 %170, 128
  %172 = icmp eq i16 %148, -1
  %173 = fadd float %152, 5.000000e-01
  %174 = fptoui float %173 to i16
  %175 = zext i16 %174 to i64
  %176 = add nuw nsw i64 %175, 128
  %177 = select i1 %172, i64 65663, i64 %176
  %178 = lshr i64 %177, 8
  %179 = sub nsw i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = lshr i32 %180, 8
  %182 = and i32 %181, 255
  %183 = uitofp i64 %112 to double
  %184 = select i1 %157, i64 65663, i64 %161
  %185 = select i1 %154, i64 128, i64 %184
  %186 = lshr i64 %185, 8
  %187 = sub nsw i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = lshr i32 %188, 8
  %190 = and i32 %189, 255
  %191 = select i1 %162, i64 65663, i64 %166
  %192 = select i1 %155, i64 128, i64 %191
  %193 = lshr i64 %192, 8
  %194 = sub nsw i64 %192, %193
  %195 = trunc i64 %194 to i32
  %196 = lshr i32 %195, 8
  %197 = and i32 %196, 255
  %198 = select i1 %167, i64 65663, i64 %171
  %199 = select i1 %156, i64 128, i64 %198
  %200 = lshr i64 %199, 8
  %201 = sub nsw i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = lshr i32 %202, 8
  %204 = and i32 %203, 255
  br label %205

205:                                              ; preds = %147, %323
  %206 = phi i64 [ 1, %147 ], [ %327, %323 ]
  %207 = phi i64 [ 7, %147 ], [ %326, %323 ]
  %208 = phi float [ 3.276800e+04, %147 ], [ %215, %323 ]
  %209 = phi ptr [ %153, %147 ], [ %325, %323 ]
  %210 = phi float [ 3.276750e+04, %147 ], [ %239, %323 ]
  %211 = phi float [ 3.276750e+04, %147 ], [ %243, %323 ]
  %212 = phi float [ 3.276750e+04, %147 ], [ %247, %323 ]
  %213 = phi float [ 3.276750e+04, %147 ], [ %250, %323 ]
  %214 = phi float [ %68, %147 ], [ %324, %323 ]
  %215 = fmul float %208, 5.000000e-01
  %216 = trunc i64 %207 to i32
  %217 = lshr i32 %190, %216
  %218 = and i32 %217, 1
  %219 = lshr i32 %197, %216
  %220 = shl nuw nsw i32 %219, 1
  %221 = and i32 %220, 2
  %222 = or disjoint i32 %221, %218
  %223 = lshr i32 %204, %216
  %224 = shl nuw nsw i32 %223, 2
  %225 = and i32 %224, 4
  %226 = or disjoint i32 %222, %225
  %227 = load i32, ptr %19, align 8, !tbaa !124
  %228 = icmp eq i32 %227, 0
  %229 = lshr i32 %182, %216
  %230 = shl nuw nsw i32 %229, 3
  %231 = and i32 %230, 8
  %232 = select i1 %228, i32 0, i32 %231
  %233 = or disjoint i32 %226, %232
  %234 = zext nneg i32 %233 to i64
  %235 = and i64 %234, 1
  %236 = icmp eq i64 %235, 0
  %237 = fneg float %215
  %238 = select i1 %236, float %237, float %215
  %239 = fadd float %210, %238
  %240 = and i64 %234, 2
  %241 = icmp eq i64 %240, 0
  %242 = select i1 %241, float %237, float %215
  %243 = fadd float %211, %242
  %244 = and i64 %234, 4
  %245 = icmp eq i64 %244, 0
  %246 = select i1 %245, float %237, float %215
  %247 = fadd float %212, %246
  %248 = icmp ult i32 %233, 8
  %249 = select i1 %248, float %237, float %215
  %250 = fadd float %213, %249
  %251 = getelementptr inbounds %struct._NodeInfo, ptr %209, i64 0, i32 1, i64 %234
  %252 = load ptr, ptr %251, align 8, !tbaa !126
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %286

254:                                              ; preds = %205
  %255 = load i64, ptr %37, align 8, !tbaa !107
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %254
  %258 = call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #17
  %259 = icmp eq ptr %258, null
  br i1 %259, label %276, label %260

260:                                              ; preds = %257
  %261 = call dereferenceable_or_null(368640) ptr @AcquireQuantumMemory(i64 noundef 1920, i64 noundef 192) #22
  store ptr %261, ptr %258, align 8, !tbaa !108
  %262 = icmp eq ptr %261, null
  br i1 %262, label %276, label %263

263:                                              ; preds = %260
  %264 = load ptr, ptr %38, align 8, !tbaa !110
  %265 = getelementptr inbounds %struct._Nodes, ptr %258, i64 0, i32 1
  store ptr %264, ptr %265, align 8, !tbaa !111
  store ptr %258, ptr %38, align 8, !tbaa !110
  store ptr %261, ptr %39, align 8, !tbaa !112
  store i64 1920, ptr %37, align 8, !tbaa !107
  br label %266

266:                                              ; preds = %263, %254
  %267 = load i64, ptr %35, align 8, !tbaa !113
  %268 = add i64 %267, 1
  store i64 %268, ptr %35, align 8, !tbaa !113
  %269 = load i64, ptr %37, align 8, !tbaa !107
  %270 = add i64 %269, -1
  store i64 %270, ptr %37, align 8, !tbaa !107
  %271 = load ptr, ptr %40, align 8, !tbaa !112
  %272 = getelementptr inbounds %struct._NodeInfo, ptr %271, i64 1
  store ptr %272, ptr %40, align 8, !tbaa !112
  %273 = call ptr @ResetMagickMemory(ptr noundef %271, i32 noundef 0, i64 noundef 192) #18
  store ptr %209, ptr %271, align 8, !tbaa !114
  %274 = getelementptr inbounds %struct._NodeInfo, ptr %271, i64 0, i32 6
  store i64 %234, ptr %274, align 8, !tbaa !127
  %275 = getelementptr inbounds %struct._NodeInfo, ptr %271, i64 0, i32 7
  store i64 %206, ptr %275, align 8, !tbaa !128
  br label %276

276:                                              ; preds = %257, %260, %266
  %277 = phi ptr [ %271, %266 ], [ null, %260 ], [ null, %257 ]
  store ptr %277, ptr %251, align 8, !tbaa !126
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 848, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %42) #18
  br label %323

281:                                              ; preds = %276
  %282 = icmp eq i64 %206, 8
  br i1 %282, label %283, label %286

283:                                              ; preds = %281
  %284 = load i64, ptr %41, align 8, !tbaa !129
  %285 = add i64 %284, 1
  store i64 %285, ptr %41, align 8, !tbaa !129
  br label %286

286:                                              ; preds = %281, %283, %205
  %287 = load ptr, ptr %251, align 8, !tbaa !126
  %288 = fsub float %151, %239
  %289 = fpext float %288 to double
  %290 = fmul double %289, 0x3EF0001000100010
  %291 = fptrunc double %290 to float
  %292 = fsub float %150, %243
  %293 = fpext float %292 to double
  %294 = fmul double %293, 0x3EF0001000100010
  %295 = fptrunc double %294 to float
  %296 = fsub float %149, %247
  %297 = fpext float %296 to double
  %298 = fmul double %297, 0x3EF0001000100010
  %299 = fptrunc double %298 to float
  %300 = load i32, ptr %19, align 8, !tbaa !124
  %301 = icmp eq i32 %300, 0
  %302 = fsub float %152, %250
  %303 = fpext float %302 to double
  %304 = fmul double %303, 0x3EF0001000100010
  %305 = fptrunc double %304 to float
  %306 = select i1 %301, float %214, float %305
  %307 = fmul float %295, %295
  %308 = call float @llvm.fmuladd.f32(float %291, float %291, float %307)
  %309 = call float @llvm.fmuladd.f32(float %299, float %299, float %308)
  %310 = call float @llvm.fmuladd.f32(float %306, float %306, float %309)
  %311 = fpext float %310 to double
  %312 = call double @sqrt(double noundef %311) #18
  %313 = getelementptr inbounds %struct._NodeInfo, ptr %287, i64 0, i32 4
  %314 = load float, ptr %313, align 8, !tbaa !130
  %315 = fpext float %314 to double
  %316 = call double @llvm.fmuladd.f64(double %183, double %312, double %315)
  %317 = fptrunc double %316 to float
  store float %317, ptr %313, align 8, !tbaa !130
  %318 = load ptr, ptr %0, align 8, !tbaa !116
  %319 = getelementptr inbounds %struct._NodeInfo, ptr %318, i64 0, i32 4
  %320 = load float, ptr %319, align 8, !tbaa !130
  %321 = fadd float %320, %317
  store float %321, ptr %319, align 8, !tbaa !130
  %322 = add i64 %207, -1
  br label %323

323:                                              ; preds = %286, %279
  %324 = phi float [ %214, %279 ], [ %306, %286 ]
  %325 = phi ptr [ %209, %279 ], [ %287, %286 ]
  %326 = phi i64 [ %207, %279 ], [ %322, %286 ]
  %327 = add nuw nsw i64 %206, 1
  %328 = icmp eq i64 %327, 9
  br i1 %328, label %329, label %205, !llvm.loop !131

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct._NodeInfo, ptr %325, i64 0, i32 2
  %331 = load i64, ptr %330, align 8, !tbaa !132
  %332 = add i64 %331, %112
  store i64 %332, ptr %330, align 8, !tbaa !132
  %333 = uitofp i64 %112 to double
  %334 = fmul double %333, 0x3EF0001000100010
  %335 = fcmp olt float %151, 0.000000e+00
  br i1 %335, label %341, label %336

336:                                              ; preds = %329
  %337 = fcmp ult float %151, 6.553500e+04
  br i1 %337, label %338, label %341

338:                                              ; preds = %336
  %339 = fadd float %151, 5.000000e-01
  %340 = fptoui float %339 to i16
  br label %341

341:                                              ; preds = %329, %336, %338
  %342 = phi i16 [ %340, %338 ], [ 0, %329 ], [ -1, %336 ]
  %343 = uitofp i16 %342 to double
  %344 = getelementptr inbounds %struct._NodeInfo, ptr %325, i64 0, i32 3
  %345 = load float, ptr %344, align 8, !tbaa !133
  %346 = fpext float %345 to double
  %347 = call double @llvm.fmuladd.f64(double %334, double %343, double %346)
  %348 = fptrunc double %347 to float
  store float %348, ptr %344, align 8, !tbaa !133
  %349 = fcmp olt float %150, 0.000000e+00
  br i1 %349, label %355, label %350

350:                                              ; preds = %341
  %351 = fcmp ult float %150, 6.553500e+04
  br i1 %351, label %352, label %355

352:                                              ; preds = %350
  %353 = fadd float %150, 5.000000e-01
  %354 = fptoui float %353 to i16
  br label %355

355:                                              ; preds = %341, %350, %352
  %356 = phi i16 [ %354, %352 ], [ 0, %341 ], [ -1, %350 ]
  %357 = uitofp i16 %356 to double
  %358 = getelementptr inbounds %struct._NodeInfo, ptr %325, i64 0, i32 3, i32 1
  %359 = load float, ptr %358, align 4, !tbaa !134
  %360 = fpext float %359 to double
  %361 = call double @llvm.fmuladd.f64(double %334, double %357, double %360)
  %362 = fptrunc double %361 to float
  store float %362, ptr %358, align 4, !tbaa !134
  %363 = fcmp olt float %149, 0.000000e+00
  br i1 %363, label %369, label %364

364:                                              ; preds = %355
  %365 = fcmp ult float %149, 6.553500e+04
  br i1 %365, label %366, label %369

366:                                              ; preds = %364
  %367 = fadd float %149, 5.000000e-01
  %368 = fptoui float %367 to i16
  br label %369

369:                                              ; preds = %355, %364, %366
  %370 = phi i16 [ %368, %366 ], [ 0, %355 ], [ -1, %364 ]
  %371 = uitofp i16 %370 to double
  %372 = getelementptr inbounds %struct._NodeInfo, ptr %325, i64 0, i32 3, i32 2
  %373 = load float, ptr %372, align 8, !tbaa !135
  %374 = fpext float %373 to double
  %375 = call double @llvm.fmuladd.f64(double %334, double %371, double %374)
  %376 = fptrunc double %375 to float
  store float %376, ptr %372, align 8, !tbaa !135
  %377 = load i32, ptr %19, align 8, !tbaa !124
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %390, label %379

379:                                              ; preds = %369
  %380 = icmp eq i16 %148, -1
  %381 = fadd float %152, 5.000000e-01
  %382 = fptoui float %381 to i16
  %383 = select i1 %380, i16 -1, i16 %382
  %384 = uitofp i16 %383 to double
  %385 = getelementptr inbounds %struct._NodeInfo, ptr %325, i64 0, i32 3, i32 3
  %386 = load float, ptr %385, align 4, !tbaa !136
  %387 = fpext float %386 to double
  %388 = call double @llvm.fmuladd.f64(double %334, double %384, double %387)
  %389 = fptrunc double %388 to float
  store float %389, ptr %385, align 4, !tbaa !136
  br label %390

390:                                              ; preds = %379, %369
  %391 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 %112
  %392 = load i64, ptr %34, align 8, !tbaa !68
  %393 = icmp slt i64 %113, %392
  br i1 %393, label %64, label %394, !llvm.loop !137

394:                                              ; preds = %390, %61
  %395 = phi float [ %50, %61 ], [ %324, %390 ]
  %396 = load i64, ptr %43, align 8, !tbaa !129
  %397 = load i64, ptr %44, align 8, !tbaa !106
  %398 = icmp ugt i64 %396, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %394
  %400 = load ptr, ptr %0, align 8, !tbaa !116
  call fastcc void @PruneToCubeDepth(ptr noundef nonnull %0, ptr noundef %400)
  br label %414

401:                                              ; preds = %394
  %402 = load i64, ptr %30, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %403 = load ptr, ptr %45, align 8, !tbaa !80
  %404 = icmp eq ptr %403, null
  br i1 %404, label %410, label %405

405:                                              ; preds = %401
  %406 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %46) #18
  %407 = load ptr, ptr %45, align 8, !tbaa !80
  %408 = load ptr, ptr %47, align 8, !tbaa !81
  %409 = call i32 %407(ptr noundef nonnull %5, i64 noundef %49, i64 noundef %402, ptr noundef %408) #18
  br label %410

410:                                              ; preds = %401, %405
  %411 = phi i32 [ %409, %405 ], [ 1, %401 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %412 = icmp eq i32 %411, 0
  %413 = select i1 %412, i32 2, i32 0
  br label %414

414:                                              ; preds = %410, %48, %399
  %415 = phi float [ %395, %399 ], [ %50, %48 ], [ %395, %410 ]
  %416 = phi i32 [ 2, %399 ], [ 2, %48 ], [ %413, %410 ]
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %414
  %419 = add nuw nsw i64 %49, 1
  %420 = load i64, ptr %30, align 8, !tbaa !69
  %421 = icmp slt i64 %419, %420
  br i1 %421, label %48, label %422, !llvm.loop !138

422:                                              ; preds = %418, %414, %28
  %423 = phi i64 [ 0, %28 ], [ %419, %418 ], [ %49, %414 ]
  %424 = phi float [ 0.000000e+00, %28 ], [ %415, %414 ], [ %415, %418 ]
  %425 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %426 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %427 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %428 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %429 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 10
  %430 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 13
  %431 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 12
  %432 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 12
  %433 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 1
  %434 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %435 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  %436 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %437 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 48
  br label %438

438:                                              ; preds = %809, %422
  %439 = phi float [ %424, %422 ], [ %810, %809 ]
  %440 = phi i64 [ %423, %422 ], [ %441, %809 ]
  %441 = add nuw nsw i64 %440, 1
  %442 = load i64, ptr %30, align 8, !tbaa !69
  %443 = icmp slt i64 %441, %442
  br i1 %443, label %444, label %813

444:                                              ; preds = %438
  %445 = load i64, ptr %425, align 8, !tbaa !68
  %446 = call ptr @GetCacheViewVirtualPixels(ptr noundef %29, i64 noundef 0, i64 noundef %441, i64 noundef %445, i64 noundef 1, ptr noundef %2) #21
  %447 = icmp eq ptr %446, null
  br i1 %447, label %809, label %448

448:                                              ; preds = %444
  %449 = load i64, ptr %426, align 8, !tbaa !113
  %450 = icmp ugt i64 %449, 266817
  br i1 %450, label %451, label %455

451:                                              ; preds = %448
  %452 = load ptr, ptr %0, align 8, !tbaa !116
  call fastcc void @PruneLevel(ptr noundef nonnull %0, ptr noundef %452)
  %453 = load i64, ptr %427, align 8, !tbaa !102
  %454 = add i64 %453, -1
  store i64 %454, ptr %427, align 8, !tbaa !102
  br label %455

455:                                              ; preds = %451, %448
  %456 = load i64, ptr %425, align 8, !tbaa !68
  %457 = icmp sgt i64 %456, 0
  br i1 %457, label %458, label %795

458:                                              ; preds = %455, %791
  %459 = phi i64 [ %793, %791 ], [ %456, %455 ]
  %460 = phi i64 [ %507, %791 ], [ 0, %455 ]
  %461 = phi ptr [ %792, %791 ], [ %446, %455 ]
  %462 = phi float [ %729, %791 ], [ %439, %455 ]
  %463 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 1
  %464 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 3
  %465 = add nsw i64 %460, 1
  %466 = icmp slt i64 %465, %459
  br i1 %466, label %467, label %505

467:                                              ; preds = %458
  %468 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 2
  %469 = load i16, ptr %468, align 2, !tbaa !74
  %470 = sub i64 %459, %460
  %471 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 1, i32 2
  %472 = load i16, ptr %471, align 2, !tbaa !74
  %473 = icmp eq i16 %469, %472
  br i1 %473, label %474, label %505

474:                                              ; preds = %467
  %475 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 1
  %476 = load i16, ptr %463, align 2, !tbaa !75
  br label %483

477:                                              ; preds = %502
  %478 = add nsw i64 %503, %460
  %479 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %503
  %480 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %503, i32 2
  %481 = load i16, ptr %480, align 2, !tbaa !74
  %482 = icmp eq i16 %469, %481
  br i1 %482, label %483, label %505, !llvm.loop !139

483:                                              ; preds = %474, %477
  %484 = phi ptr [ %475, %474 ], [ %479, %477 ]
  %485 = phi i64 [ 1, %474 ], [ %503, %477 ]
  %486 = phi i64 [ %465, %474 ], [ %478, %477 ]
  %487 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %485, i32 1
  %488 = load i16, ptr %487, align 2, !tbaa !75
  %489 = icmp eq i16 %476, %488
  br i1 %489, label %490, label %505

490:                                              ; preds = %483
  %491 = load i16, ptr %461, align 2, !tbaa !76
  %492 = load i16, ptr %484, align 2, !tbaa !76
  %493 = icmp eq i16 %491, %492
  br i1 %493, label %494, label %505

494:                                              ; preds = %490
  %495 = load i32, ptr %6, align 8, !tbaa !67
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %502, label %497

497:                                              ; preds = %494
  %498 = load i16, ptr %464, align 2, !tbaa !77
  %499 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %485, i32 3
  %500 = load i16, ptr %499, align 2, !tbaa !77
  %501 = icmp eq i16 %498, %500
  br i1 %501, label %502, label %505

502:                                              ; preds = %497, %494
  %503 = add i64 %485, 1
  %504 = icmp eq i64 %503, %470
  br i1 %504, label %505, label %477, !llvm.loop !139

505:                                              ; preds = %497, %490, %483, %477, %502, %467, %458
  %506 = phi i64 [ 1, %458 ], [ 1, %467 ], [ %470, %502 ], [ %503, %477 ], [ %485, %483 ], [ %485, %490 ], [ %485, %497 ]
  %507 = phi i64 [ %465, %458 ], [ %465, %467 ], [ %459, %502 ], [ %478, %477 ], [ %486, %483 ], [ %486, %490 ], [ %486, %497 ]
  %508 = load i32, ptr %19, align 8, !tbaa !124
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %514, label %510

510:                                              ; preds = %505
  %511 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 3
  %512 = load i16, ptr %511, align 2, !tbaa !77
  %513 = icmp eq i16 %512, 0
  br i1 %513, label %514, label %525

514:                                              ; preds = %510, %505
  %515 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 2
  %516 = load i16, ptr %515, align 2, !tbaa !74
  %517 = uitofp i16 %516 to float
  %518 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 1
  %519 = load i16, ptr %518, align 2, !tbaa !75
  %520 = uitofp i16 %519 to float
  %521 = load i16, ptr %461, align 2, !tbaa !76
  %522 = uitofp i16 %521 to float
  %523 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 3
  %524 = load i16, ptr %523, align 2, !tbaa !77
  br label %541

525:                                              ; preds = %510
  %526 = xor i16 %512, -1
  %527 = uitofp i16 %526 to double
  %528 = fmul double %527, 0x3EF0001000100010
  %529 = fptrunc double %528 to float
  %530 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 2
  %531 = load i16, ptr %530, align 2, !tbaa !74
  %532 = uitofp i16 %531 to float
  %533 = fmul float %529, %532
  %534 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 0, i32 1
  %535 = load i16, ptr %534, align 2, !tbaa !75
  %536 = uitofp i16 %535 to float
  %537 = fmul float %529, %536
  %538 = load i16, ptr %461, align 2, !tbaa !76
  %539 = uitofp i16 %538 to float
  %540 = fmul float %529, %539
  br label %541

541:                                              ; preds = %514, %525
  %542 = phi i16 [ %524, %514 ], [ %512, %525 ]
  %543 = phi float [ %522, %514 ], [ %540, %525 ]
  %544 = phi float [ %520, %514 ], [ %537, %525 ]
  %545 = phi float [ %517, %514 ], [ %533, %525 ]
  %546 = uitofp i16 %542 to float
  %547 = load ptr, ptr %0, align 8, !tbaa !116
  %548 = load i64, ptr %428, align 8, !tbaa !102
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %728, label %550

550:                                              ; preds = %541
  %551 = fcmp olt float %545, 0.000000e+00
  %552 = fcmp oge float %545, 6.553500e+04
  %553 = fadd float %545, 5.000000e-01
  %554 = fptoui float %553 to i16
  %555 = zext i16 %554 to i64
  %556 = add nuw nsw i64 %555, 128
  %557 = fcmp olt float %544, 0.000000e+00
  %558 = fcmp oge float %544, 6.553500e+04
  %559 = fadd float %544, 5.000000e-01
  %560 = fptoui float %559 to i16
  %561 = zext i16 %560 to i64
  %562 = add nuw nsw i64 %561, 128
  %563 = fcmp olt float %543, 0.000000e+00
  %564 = fcmp oge float %543, 6.553500e+04
  %565 = fadd float %543, 5.000000e-01
  %566 = fptoui float %565 to i16
  %567 = zext i16 %566 to i64
  %568 = add nuw nsw i64 %567, 128
  %569 = icmp eq i16 %542, -1
  %570 = fadd float %546, 5.000000e-01
  %571 = fptoui float %570 to i16
  %572 = zext i16 %571 to i64
  %573 = add nuw nsw i64 %572, 128
  %574 = select i1 %569, i64 65663, i64 %573
  %575 = lshr i64 %574, 8
  %576 = sub nsw i64 %574, %575
  %577 = trunc i64 %576 to i32
  %578 = lshr i32 %577, 8
  %579 = and i32 %578, 255
  %580 = uitofp i64 %506 to double
  %581 = select i1 %552, i64 65663, i64 %556
  %582 = select i1 %551, i64 128, i64 %581
  %583 = lshr i64 %582, 8
  %584 = sub nsw i64 %582, %583
  %585 = trunc i64 %584 to i32
  %586 = lshr i32 %585, 8
  %587 = and i32 %586, 255
  %588 = select i1 %558, i64 65663, i64 %562
  %589 = select i1 %557, i64 128, i64 %588
  %590 = lshr i64 %589, 8
  %591 = sub nsw i64 %589, %590
  %592 = trunc i64 %591 to i32
  %593 = lshr i32 %592, 8
  %594 = and i32 %593, 255
  %595 = select i1 %564, i64 65663, i64 %568
  %596 = select i1 %563, i64 128, i64 %595
  %597 = lshr i64 %596, 8
  %598 = sub nsw i64 %596, %597
  %599 = trunc i64 %598 to i32
  %600 = lshr i32 %599, 8
  %601 = and i32 %600, 255
  br label %602

602:                                              ; preds = %550, %721
  %603 = phi i64 [ 1, %550 ], [ %725, %721 ]
  %604 = phi i64 [ 7, %550 ], [ %724, %721 ]
  %605 = phi float [ 3.276800e+04, %550 ], [ %612, %721 ]
  %606 = phi ptr [ %547, %550 ], [ %723, %721 ]
  %607 = phi float [ 3.276750e+04, %550 ], [ %636, %721 ]
  %608 = phi float [ 3.276750e+04, %550 ], [ %640, %721 ]
  %609 = phi float [ 3.276750e+04, %550 ], [ %644, %721 ]
  %610 = phi float [ 3.276750e+04, %550 ], [ %647, %721 ]
  %611 = phi float [ %462, %550 ], [ %722, %721 ]
  %612 = fmul float %605, 5.000000e-01
  %613 = trunc i64 %604 to i32
  %614 = lshr i32 %587, %613
  %615 = and i32 %614, 1
  %616 = lshr i32 %594, %613
  %617 = shl nuw nsw i32 %616, 1
  %618 = and i32 %617, 2
  %619 = or disjoint i32 %618, %615
  %620 = lshr i32 %601, %613
  %621 = shl nuw nsw i32 %620, 2
  %622 = and i32 %621, 4
  %623 = or disjoint i32 %619, %622
  %624 = load i32, ptr %19, align 8, !tbaa !124
  %625 = icmp eq i32 %624, 0
  %626 = lshr i32 %579, %613
  %627 = shl nuw nsw i32 %626, 3
  %628 = and i32 %627, 8
  %629 = select i1 %625, i32 0, i32 %628
  %630 = or disjoint i32 %623, %629
  %631 = zext nneg i32 %630 to i64
  %632 = and i64 %631, 1
  %633 = icmp eq i64 %632, 0
  %634 = fneg float %612
  %635 = select i1 %633, float %634, float %612
  %636 = fadd float %607, %635
  %637 = and i64 %631, 2
  %638 = icmp eq i64 %637, 0
  %639 = select i1 %638, float %634, float %612
  %640 = fadd float %608, %639
  %641 = and i64 %631, 4
  %642 = icmp eq i64 %641, 0
  %643 = select i1 %642, float %634, float %612
  %644 = fadd float %609, %643
  %645 = icmp ult i32 %630, 8
  %646 = select i1 %645, float %634, float %612
  %647 = fadd float %610, %646
  %648 = getelementptr inbounds %struct._NodeInfo, ptr %606, i64 0, i32 1, i64 %631
  %649 = load ptr, ptr %648, align 8, !tbaa !126
  %650 = icmp eq ptr %649, null
  br i1 %650, label %651, label %684

651:                                              ; preds = %602
  %652 = load i64, ptr %429, align 8, !tbaa !107
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %654, label %663

654:                                              ; preds = %651
  %655 = call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #17
  %656 = icmp eq ptr %655, null
  br i1 %656, label %673, label %657

657:                                              ; preds = %654
  %658 = call dereferenceable_or_null(368640) ptr @AcquireQuantumMemory(i64 noundef 1920, i64 noundef 192) #22
  store ptr %658, ptr %655, align 8, !tbaa !108
  %659 = icmp eq ptr %658, null
  br i1 %659, label %673, label %660

660:                                              ; preds = %657
  %661 = load ptr, ptr %430, align 8, !tbaa !110
  %662 = getelementptr inbounds %struct._Nodes, ptr %655, i64 0, i32 1
  store ptr %661, ptr %662, align 8, !tbaa !111
  store ptr %655, ptr %430, align 8, !tbaa !110
  store ptr %658, ptr %431, align 8, !tbaa !112
  store i64 1920, ptr %429, align 8, !tbaa !107
  br label %663

663:                                              ; preds = %660, %651
  %664 = load i64, ptr %426, align 8, !tbaa !113
  %665 = add i64 %664, 1
  store i64 %665, ptr %426, align 8, !tbaa !113
  %666 = load i64, ptr %429, align 8, !tbaa !107
  %667 = add i64 %666, -1
  store i64 %667, ptr %429, align 8, !tbaa !107
  %668 = load ptr, ptr %432, align 8, !tbaa !112
  %669 = getelementptr inbounds %struct._NodeInfo, ptr %668, i64 1
  store ptr %669, ptr %432, align 8, !tbaa !112
  %670 = call ptr @ResetMagickMemory(ptr noundef %668, i32 noundef 0, i64 noundef 192) #18
  store ptr %606, ptr %668, align 8, !tbaa !114
  %671 = getelementptr inbounds %struct._NodeInfo, ptr %668, i64 0, i32 6
  store i64 %631, ptr %671, align 8, !tbaa !127
  %672 = getelementptr inbounds %struct._NodeInfo, ptr %668, i64 0, i32 7
  store i64 %603, ptr %672, align 8, !tbaa !128
  br label %673

673:                                              ; preds = %654, %657, %663
  %674 = phi ptr [ %668, %663 ], [ null, %657 ], [ null, %654 ]
  store ptr %674, ptr %648, align 8, !tbaa !126
  %675 = icmp eq ptr %674, null
  br i1 %675, label %676, label %678

676:                                              ; preds = %673
  %677 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull %434) #18
  br label %721

678:                                              ; preds = %673
  %679 = load i64, ptr %428, align 8, !tbaa !102
  %680 = icmp eq i64 %603, %679
  br i1 %680, label %681, label %684

681:                                              ; preds = %678
  %682 = load i64, ptr %433, align 8, !tbaa !129
  %683 = add i64 %682, 1
  store i64 %683, ptr %433, align 8, !tbaa !129
  br label %684

684:                                              ; preds = %678, %681, %602
  %685 = load ptr, ptr %648, align 8, !tbaa !126
  %686 = fsub float %545, %636
  %687 = fpext float %686 to double
  %688 = fmul double %687, 0x3EF0001000100010
  %689 = fptrunc double %688 to float
  %690 = fsub float %544, %640
  %691 = fpext float %690 to double
  %692 = fmul double %691, 0x3EF0001000100010
  %693 = fptrunc double %692 to float
  %694 = fsub float %543, %644
  %695 = fpext float %694 to double
  %696 = fmul double %695, 0x3EF0001000100010
  %697 = fptrunc double %696 to float
  %698 = load i32, ptr %19, align 8, !tbaa !124
  %699 = icmp eq i32 %698, 0
  %700 = fsub float %546, %647
  %701 = fpext float %700 to double
  %702 = fmul double %701, 0x3EF0001000100010
  %703 = fptrunc double %702 to float
  %704 = select i1 %699, float %611, float %703
  %705 = fmul float %693, %693
  %706 = call float @llvm.fmuladd.f32(float %689, float %689, float %705)
  %707 = call float @llvm.fmuladd.f32(float %697, float %697, float %706)
  %708 = call float @llvm.fmuladd.f32(float %704, float %704, float %707)
  %709 = fpext float %708 to double
  %710 = call double @sqrt(double noundef %709) #18
  %711 = getelementptr inbounds %struct._NodeInfo, ptr %685, i64 0, i32 4
  %712 = load float, ptr %711, align 8, !tbaa !130
  %713 = fpext float %712 to double
  %714 = call double @llvm.fmuladd.f64(double %580, double %710, double %713)
  %715 = fptrunc double %714 to float
  store float %715, ptr %711, align 8, !tbaa !130
  %716 = load ptr, ptr %0, align 8, !tbaa !116
  %717 = getelementptr inbounds %struct._NodeInfo, ptr %716, i64 0, i32 4
  %718 = load float, ptr %717, align 8, !tbaa !130
  %719 = fadd float %718, %715
  store float %719, ptr %717, align 8, !tbaa !130
  %720 = add i64 %604, -1
  br label %721

721:                                              ; preds = %684, %676
  %722 = phi float [ %611, %676 ], [ %704, %684 ]
  %723 = phi ptr [ %606, %676 ], [ %685, %684 ]
  %724 = phi i64 [ %604, %676 ], [ %720, %684 ]
  %725 = add i64 %603, 1
  %726 = load i64, ptr %428, align 8, !tbaa !102
  %727 = icmp ugt i64 %725, %726
  br i1 %727, label %728, label %602, !llvm.loop !140

728:                                              ; preds = %721, %541
  %729 = phi float [ %462, %541 ], [ %722, %721 ]
  %730 = phi ptr [ %547, %541 ], [ %723, %721 ]
  %731 = getelementptr inbounds %struct._NodeInfo, ptr %730, i64 0, i32 2
  %732 = load i64, ptr %731, align 8, !tbaa !132
  %733 = add i64 %732, %506
  store i64 %733, ptr %731, align 8, !tbaa !132
  %734 = uitofp i64 %506 to double
  %735 = fmul double %734, 0x3EF0001000100010
  %736 = fcmp olt float %545, 0.000000e+00
  br i1 %736, label %742, label %737

737:                                              ; preds = %728
  %738 = fcmp ult float %545, 6.553500e+04
  br i1 %738, label %739, label %742

739:                                              ; preds = %737
  %740 = fadd float %545, 5.000000e-01
  %741 = fptoui float %740 to i16
  br label %742

742:                                              ; preds = %728, %737, %739
  %743 = phi i16 [ %741, %739 ], [ 0, %728 ], [ -1, %737 ]
  %744 = uitofp i16 %743 to double
  %745 = getelementptr inbounds %struct._NodeInfo, ptr %730, i64 0, i32 3
  %746 = load float, ptr %745, align 8, !tbaa !133
  %747 = fpext float %746 to double
  %748 = call double @llvm.fmuladd.f64(double %735, double %744, double %747)
  %749 = fptrunc double %748 to float
  store float %749, ptr %745, align 8, !tbaa !133
  %750 = fcmp olt float %544, 0.000000e+00
  br i1 %750, label %756, label %751

751:                                              ; preds = %742
  %752 = fcmp ult float %544, 6.553500e+04
  br i1 %752, label %753, label %756

753:                                              ; preds = %751
  %754 = fadd float %544, 5.000000e-01
  %755 = fptoui float %754 to i16
  br label %756

756:                                              ; preds = %742, %751, %753
  %757 = phi i16 [ %755, %753 ], [ 0, %742 ], [ -1, %751 ]
  %758 = uitofp i16 %757 to double
  %759 = getelementptr inbounds %struct._NodeInfo, ptr %730, i64 0, i32 3, i32 1
  %760 = load float, ptr %759, align 4, !tbaa !134
  %761 = fpext float %760 to double
  %762 = call double @llvm.fmuladd.f64(double %735, double %758, double %761)
  %763 = fptrunc double %762 to float
  store float %763, ptr %759, align 4, !tbaa !134
  %764 = fcmp olt float %543, 0.000000e+00
  br i1 %764, label %770, label %765

765:                                              ; preds = %756
  %766 = fcmp ult float %543, 6.553500e+04
  br i1 %766, label %767, label %770

767:                                              ; preds = %765
  %768 = fadd float %543, 5.000000e-01
  %769 = fptoui float %768 to i16
  br label %770

770:                                              ; preds = %756, %765, %767
  %771 = phi i16 [ %769, %767 ], [ 0, %756 ], [ -1, %765 ]
  %772 = uitofp i16 %771 to double
  %773 = getelementptr inbounds %struct._NodeInfo, ptr %730, i64 0, i32 3, i32 2
  %774 = load float, ptr %773, align 8, !tbaa !135
  %775 = fpext float %774 to double
  %776 = call double @llvm.fmuladd.f64(double %735, double %772, double %775)
  %777 = fptrunc double %776 to float
  store float %777, ptr %773, align 8, !tbaa !135
  %778 = load i32, ptr %19, align 8, !tbaa !124
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %791, label %780

780:                                              ; preds = %770
  %781 = icmp eq i16 %542, -1
  %782 = fadd float %546, 5.000000e-01
  %783 = fptoui float %782 to i16
  %784 = select i1 %781, i16 -1, i16 %783
  %785 = uitofp i16 %784 to double
  %786 = getelementptr inbounds %struct._NodeInfo, ptr %730, i64 0, i32 3, i32 3
  %787 = load float, ptr %786, align 4, !tbaa !136
  %788 = fpext float %787 to double
  %789 = call double @llvm.fmuladd.f64(double %735, double %785, double %788)
  %790 = fptrunc double %789 to float
  store float %790, ptr %786, align 4, !tbaa !136
  br label %791

791:                                              ; preds = %780, %770
  %792 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %506
  %793 = load i64, ptr %425, align 8, !tbaa !68
  %794 = icmp slt i64 %507, %793
  br i1 %794, label %458, label %795, !llvm.loop !141

795:                                              ; preds = %791, %455
  %796 = phi float [ %439, %455 ], [ %729, %791 ]
  %797 = load i64, ptr %30, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %798 = load ptr, ptr %435, align 8, !tbaa !80
  %799 = icmp eq ptr %798, null
  br i1 %799, label %805, label %800

800:                                              ; preds = %795
  %801 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %436) #18
  %802 = load ptr, ptr %435, align 8, !tbaa !80
  %803 = load ptr, ptr %437, align 8, !tbaa !81
  %804 = call i32 %802(ptr noundef nonnull %4, i64 noundef %441, i64 noundef %797, ptr noundef %803) #18
  br label %805

805:                                              ; preds = %795, %800
  %806 = phi i32 [ %804, %800 ], [ 1, %795 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %807 = icmp eq i32 %806, 0
  %808 = select i1 %807, i32 14, i32 0
  br label %809

809:                                              ; preds = %805, %444
  %810 = phi float [ %439, %444 ], [ %796, %805 ]
  %811 = phi i32 [ 14, %444 ], [ %808, %805 ]
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %438, label %813, !llvm.loop !142

813:                                              ; preds = %809, %438
  %814 = call ptr @DestroyCacheView(ptr noundef %29) #18
  %815 = load ptr, ptr %8, align 8, !tbaa !117
  %816 = getelementptr inbounds %struct._QuantizeInfo, ptr %815, i64 0, i32 3
  %817 = load i32, ptr %816, align 4, !tbaa !43
  switch i32 %817, label %818 [
    i32 0, label %820
    i32 12, label %820
  ]

818:                                              ; preds = %813
  %819 = call i32 @TransformImageColorspace(ptr noundef %1, i32 noundef 13) #18
  br label %820

820:                                              ; preds = %813, %813, %818
  %821 = load i64, ptr %30, align 8, !tbaa !69
  %822 = icmp sge i64 %441, %821
  %823 = zext i1 %822 to i32
  ret i32 %823
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ReduceImageColors(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 8
  store float 0.000000e+00, ptr %4, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !129
  %7 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !106
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !113
  %13 = icmp ugt i64 %12, 128
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = tail call ptr @AcquireQuantumMemory(i64 noundef %12, i64 noundef 4) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 8, !tbaa !116
  %19 = tail call fastcc i64 @QuantizeErrorFlatten(ptr noundef nonnull %1, ptr noundef %18, i64 noundef 0, ptr noundef nonnull %15)
  %20 = load i64, ptr %11, align 8, !tbaa !113
  tail call void @qsort(ptr noundef nonnull %15, i64 noundef %20, i64 noundef 4, ptr noundef nonnull @MagickRealTypeCompare) #18
  %21 = load i64, ptr %11, align 8, !tbaa !113
  %22 = load i64, ptr %7, align 8, !tbaa !106
  %23 = mul i64 %22, 110
  %24 = add i64 %23, 110
  %25 = udiv i64 %24, 100
  %26 = sub i64 %21, %25
  %27 = tail call i64 @llvm.smax.i64(i64 %26, i64 0)
  %28 = getelementptr inbounds float, ptr %15, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !120
  store float %29, ptr %4, align 8, !tbaa !143
  %30 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #18
  br label %31

31:                                               ; preds = %14, %17, %10, %2
  %32 = load i64, ptr %5, align 8, !tbaa !129
  %33 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 7
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %35 = add i64 %32, 1
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %38

38:                                               ; preds = %59, %31
  %39 = load i64, ptr %5, align 8, !tbaa !129
  %40 = load i64, ptr %7, align 8, !tbaa !106
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load float, ptr %4, align 8, !tbaa !143
  store float %43, ptr %33, align 4, !tbaa !144
  %44 = load ptr, ptr %1, align 8, !tbaa !116
  %45 = getelementptr inbounds %struct._NodeInfo, ptr %44, i64 0, i32 4
  %46 = load float, ptr %45, align 8, !tbaa !130
  %47 = fadd float %46, -1.000000e+00
  store float %47, ptr %4, align 8, !tbaa !143
  store i64 0, ptr %5, align 8, !tbaa !129
  call fastcc void @Reduce(ptr noundef nonnull %1, ptr noundef %44)
  %48 = load i64, ptr %5, align 8, !tbaa !129
  %49 = load i64, ptr %7, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #18
  %50 = load ptr, ptr %34, align 8, !tbaa !80
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %42
  %53 = sub i64 %35, %49
  %54 = sub i64 %32, %48
  %55 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef nonnull %36) #18
  %56 = load ptr, ptr %34, align 8, !tbaa !80
  %57 = load ptr, ptr %37, align 8, !tbaa !81
  %58 = call i32 %56(ptr noundef nonnull %3, i64 noundef %54, i64 noundef %53, ptr noundef %57) #18
  br label %59

59:                                               ; preds = %42, %52
  %60 = phi i32 [ %58, %52 ], [ 1, %42 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %38, !llvm.loop !145

62:                                               ; preds = %59, %38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @AssignImageColors(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._CubeInfo, align 8
  %6 = alloca %struct._CubeInfo, align 8
  %7 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct._QuantizeInfo, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !43
  switch i32 %10, label %14 [
    i32 0, label %11
    i32 12, label %11
  ]

11:                                               ; preds = %2, %2
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !99
  switch i32 %13, label %14 [
    i32 29, label %17
    i32 13, label %17
    i32 3, label %17
    i32 1, label %17
    i32 19, label %17
    i32 17, label %17
    i32 2, label %17
  ]

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %10, %2 ], [ 13, %11 ]
  %16 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %15) #18
  br label %17

17:                                               ; preds = %14, %11, %11, %11, %11, %11, %11, %11
  %18 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !129
  %20 = tail call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %19) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = icmp eq ptr %0, null
  br i1 %23, label %900, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 517, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %26) #18
  br label %900

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  store i64 0, ptr %29, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 4
  store i64 0, ptr %30, align 8, !tbaa !146
  %31 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 3
  store i64 -1, ptr %31, align 8, !tbaa !147
  %32 = load ptr, ptr %1, align 8, !tbaa !116
  tail call fastcc void @DefineImageColormap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %32)
  %33 = load ptr, ptr %7, align 8, !tbaa !117
  %34 = getelementptr inbounds %struct._QuantizeInfo, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !41
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %581, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct._QuantizeInfo, ptr %33, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !42
  switch i32 %39, label %40 [
    i32 1, label %581
    i32 2, label %549
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !68
  %43 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %44 = tail call ptr @AcquireQuantumMemory(i64 noundef %43, i64 noundef 8) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %74, label %46

46:                                               ; preds = %40
  %47 = shl i64 %43, 3
  %48 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %44, i32 noundef 0, i64 noundef %47) #18
  %49 = icmp sgt i64 %43, 0
  br i1 %49, label %53, label %74

50:                                               ; preds = %53
  %51 = add nuw nsw i64 %54, 1
  %52 = icmp eq i64 %51, %43
  br i1 %52, label %74, label %53, !llvm.loop !148

53:                                               ; preds = %46, %50
  %54 = phi i64 [ %51, %50 ], [ 0, %46 ]
  %55 = tail call ptr @AcquireQuantumMemory(i64 noundef %42, i64 noundef 32) #22
  %56 = getelementptr inbounds ptr, ptr %44, i64 %54
  store ptr %55, ptr %56, align 8, !tbaa !126
  %57 = icmp eq ptr %55, null
  br i1 %57, label %58, label %50

58:                                               ; preds = %53
  %59 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58, %68
  %62 = phi i64 [ %69, %68 ], [ 0, %58 ]
  %63 = getelementptr inbounds ptr, ptr %44, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !126
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %64) #18
  store ptr %67, ptr %63, align 8, !tbaa !126
  br label %68

68:                                               ; preds = %66, %61
  %69 = add nuw nsw i64 %62, 1
  %70 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %61, label %72, !llvm.loop !149

72:                                               ; preds = %68, %58
  %73 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %44) #18
  br label %74

74:                                               ; preds = %50, %46, %72, %40
  %75 = phi ptr [ %73, %72 ], [ null, %40 ], [ %44, %46 ], [ %44, %50 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %845, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %79 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %78) #18
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %81 = load i64, ptr %80, align 8, !tbaa !69
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %532

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 19
  %85 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 15
  %86 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 5
  %87 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 5, i32 1
  %88 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 5, i32 2
  %89 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 5, i32 3
  %90 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 6
  %91 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 11
  %92 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 18
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %98

98:                                               ; preds = %83, %527
  %99 = phi i32 [ 1, %83 ], [ %528, %527 ]
  %100 = phi i64 [ 0, %83 ], [ %529, %527 ]
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %5) #18
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %527, label %102

102:                                              ; preds = %98
  %103 = load i64, ptr %41, align 8, !tbaa !68
  %104 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %79, i64 noundef 0, i64 noundef %100, i64 noundef %103, i64 noundef 1, ptr noundef nonnull %78) #21
  %105 = icmp eq ptr %104, null
  br i1 %105, label %527, label %106

106:                                              ; preds = %102
  %107 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %79) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %5, ptr noundef nonnull align 8 dereferenceable(504) %1, i64 504, i1 false), !tbaa.struct !150
  %108 = load ptr, ptr %75, align 8, !tbaa !126
  %109 = and i64 %100, 1
  %110 = load i64, ptr %41, align 8, !tbaa !68
  %111 = mul nuw nsw i64 %110, %109
  %112 = getelementptr inbounds %struct._RealPixelPacket, ptr %108, i64 %111
  %113 = xor i64 %109, 1
  %114 = mul nuw nsw i64 %110, %113
  %115 = getelementptr inbounds %struct._RealPixelPacket, ptr %108, i64 %114
  %116 = icmp eq i64 %109, 0
  %117 = select i1 %116, i64 1, i64 -1
  %118 = load i64, ptr %41, align 8, !tbaa !68
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %527

120:                                              ; preds = %106
  %121 = icmp eq i64 %100, 0
  %122 = icmp eq ptr %107, null
  br label %123

123:                                              ; preds = %120, %522
  %124 = phi i64 [ %118, %120 ], [ %525, %522 ]
  %125 = phi i32 [ 1, %120 ], [ %523, %522 ]
  %126 = phi i64 [ 0, %120 ], [ %524, %522 ]
  %127 = xor i64 %126, -1
  %128 = add i64 %124, %127
  %129 = select i1 %116, i64 %126, i64 %128
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129
  %131 = load i32, ptr %84, align 8, !tbaa !124
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 3
  %135 = load i16, ptr %134, align 2, !tbaa !77
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %133, %123
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 2
  %139 = load i16, ptr %138, align 2, !tbaa !74
  %140 = uitofp i16 %139 to float
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 1
  %142 = load i16, ptr %141, align 2, !tbaa !75
  %143 = uitofp i16 %142 to float
  %144 = load i16, ptr %130, align 2, !tbaa !76
  %145 = uitofp i16 %144 to float
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 3
  %147 = load i16, ptr %146, align 2, !tbaa !77
  br label %164

148:                                              ; preds = %133
  %149 = xor i16 %135, -1
  %150 = uitofp i16 %149 to double
  %151 = fmul double %150, 0x3EF0001000100010
  %152 = fptrunc double %151 to float
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 2
  %154 = load i16, ptr %153, align 2, !tbaa !74
  %155 = uitofp i16 %154 to float
  %156 = fmul float %152, %155
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 1
  %158 = load i16, ptr %157, align 2, !tbaa !75
  %159 = uitofp i16 %158 to float
  %160 = fmul float %152, %159
  %161 = load i16, ptr %130, align 2, !tbaa !76
  %162 = uitofp i16 %161 to float
  %163 = fmul float %152, %162
  br label %164

164:                                              ; preds = %148, %137
  %165 = phi i16 [ %147, %137 ], [ %135, %148 ]
  %166 = phi float [ %145, %137 ], [ %163, %148 ]
  %167 = phi float [ %143, %137 ], [ %160, %148 ]
  %168 = phi float [ %140, %137 ], [ %156, %148 ]
  %169 = uitofp i16 %165 to float
  %170 = icmp eq i64 %126, 0
  br i1 %170, label %194, label %171

171:                                              ; preds = %164
  %172 = sub nsw i64 %129, %117
  %173 = getelementptr inbounds %struct._RealPixelPacket, ptr %112, i64 %172
  %174 = load float, ptr %173, align 4, !tbaa !153
  %175 = fmul float %174, 7.000000e+00
  %176 = fmul float %175, 6.250000e-02
  %177 = fadd float %168, %176
  %178 = getelementptr inbounds %struct._RealPixelPacket, ptr %112, i64 %172, i32 1
  %179 = load float, ptr %178, align 4, !tbaa !154
  %180 = fmul float %179, 7.000000e+00
  %181 = fmul float %180, 6.250000e-02
  %182 = fadd float %167, %181
  %183 = getelementptr inbounds %struct._RealPixelPacket, ptr %112, i64 %172, i32 2
  %184 = load float, ptr %183, align 4, !tbaa !155
  %185 = fmul float %184, 7.000000e+00
  %186 = fmul float %185, 6.250000e-02
  %187 = fadd float %166, %186
  br i1 %132, label %194, label %188

188:                                              ; preds = %171
  %189 = getelementptr inbounds %struct._RealPixelPacket, ptr %112, i64 %172, i32 3
  %190 = load float, ptr %189, align 4, !tbaa !156
  %191 = fmul float %190, 7.000000e+00
  %192 = fmul float %191, 6.250000e-02
  %193 = fadd float %192, %169
  br label %194

194:                                              ; preds = %188, %171, %164
  %195 = phi float [ %169, %164 ], [ %169, %171 ], [ %193, %188 ]
  %196 = phi float [ %166, %164 ], [ %187, %171 ], [ %187, %188 ]
  %197 = phi float [ %167, %164 ], [ %182, %171 ], [ %182, %188 ]
  %198 = phi float [ %168, %164 ], [ %177, %171 ], [ %177, %188 ]
  br i1 %121, label %272, label %199

199:                                              ; preds = %194
  %200 = add i64 %124, -1
  %201 = icmp slt i64 %126, %200
  br i1 %201, label %202, label %221

202:                                              ; preds = %199
  %203 = getelementptr %struct._RealPixelPacket, ptr %115, i64 %129
  %204 = getelementptr %struct._RealPixelPacket, ptr %203, i64 %117
  %205 = load float, ptr %204, align 4, !tbaa !153
  %206 = fmul float %205, 6.250000e-02
  %207 = fadd float %198, %206
  %208 = getelementptr %struct._RealPixelPacket, ptr %203, i64 %117, i32 1
  %209 = load float, ptr %208, align 4, !tbaa !154
  %210 = fmul float %209, 6.250000e-02
  %211 = fadd float %197, %210
  %212 = getelementptr %struct._RealPixelPacket, ptr %203, i64 %117, i32 2
  %213 = load float, ptr %212, align 4, !tbaa !155
  %214 = fmul float %213, 6.250000e-02
  %215 = fadd float %196, %214
  br i1 %132, label %221, label %216

216:                                              ; preds = %202
  %217 = getelementptr %struct._RealPixelPacket, ptr %203, i64 %117, i32 3
  %218 = load float, ptr %217, align 4, !tbaa !156
  %219 = fmul float %218, 6.250000e-02
  %220 = fadd float %195, %219
  br label %221

221:                                              ; preds = %216, %202, %199
  %222 = phi float [ %195, %202 ], [ %220, %216 ], [ %195, %199 ]
  %223 = phi float [ %215, %202 ], [ %215, %216 ], [ %196, %199 ]
  %224 = phi float [ %211, %202 ], [ %211, %216 ], [ %197, %199 ]
  %225 = phi float [ %207, %202 ], [ %207, %216 ], [ %198, %199 ]
  %226 = getelementptr inbounds %struct._RealPixelPacket, ptr %115, i64 %129
  %227 = load float, ptr %226, align 4, !tbaa !153
  %228 = fmul float %227, 5.000000e+00
  %229 = fmul float %228, 6.250000e-02
  %230 = fadd float %225, %229
  %231 = getelementptr inbounds %struct._RealPixelPacket, ptr %115, i64 %129, i32 1
  %232 = load float, ptr %231, align 4, !tbaa !154
  %233 = fmul float %232, 5.000000e+00
  %234 = fmul float %233, 6.250000e-02
  %235 = fadd float %224, %234
  %236 = getelementptr inbounds %struct._RealPixelPacket, ptr %115, i64 %129, i32 2
  %237 = load float, ptr %236, align 4, !tbaa !155
  %238 = fmul float %237, 5.000000e+00
  %239 = fmul float %238, 6.250000e-02
  %240 = fadd float %223, %239
  br i1 %132, label %247, label %241

241:                                              ; preds = %221
  %242 = getelementptr inbounds %struct._RealPixelPacket, ptr %115, i64 %129, i32 3
  %243 = load float, ptr %242, align 4, !tbaa !156
  %244 = fmul float %243, 5.000000e+00
  %245 = fmul float %244, 6.250000e-02
  %246 = fadd float %222, %245
  br label %247

247:                                              ; preds = %241, %221
  %248 = phi float [ %222, %221 ], [ %246, %241 ]
  br i1 %170, label %272, label %249

249:                                              ; preds = %247
  %250 = sub nsw i64 %129, %117
  %251 = getelementptr inbounds %struct._RealPixelPacket, ptr %115, i64 %250
  %252 = load float, ptr %251, align 4, !tbaa !153
  %253 = fmul float %252, 3.000000e+00
  %254 = fmul float %253, 6.250000e-02
  %255 = fadd float %230, %254
  %256 = getelementptr inbounds %struct._RealPixelPacket, ptr %115, i64 %250, i32 1
  %257 = load float, ptr %256, align 4, !tbaa !154
  %258 = fmul float %257, 3.000000e+00
  %259 = fmul float %258, 6.250000e-02
  %260 = fadd float %235, %259
  %261 = getelementptr inbounds %struct._RealPixelPacket, ptr %115, i64 %250, i32 2
  %262 = load float, ptr %261, align 4, !tbaa !155
  %263 = fmul float %262, 3.000000e+00
  %264 = fmul float %263, 6.250000e-02
  %265 = fadd float %240, %264
  br i1 %132, label %272, label %266

266:                                              ; preds = %249
  %267 = getelementptr inbounds %struct._RealPixelPacket, ptr %115, i64 %250, i32 3
  %268 = load float, ptr %267, align 4, !tbaa !156
  %269 = fmul float %268, 3.000000e+00
  %270 = fmul float %269, 6.250000e-02
  %271 = fadd float %248, %270
  br label %272

272:                                              ; preds = %266, %249, %247, %194
  %273 = phi float [ %195, %194 ], [ %248, %247 ], [ %248, %249 ], [ %271, %266 ]
  %274 = phi float [ %196, %194 ], [ %240, %247 ], [ %265, %249 ], [ %265, %266 ]
  %275 = phi float [ %197, %194 ], [ %235, %247 ], [ %260, %249 ], [ %260, %266 ]
  %276 = phi float [ %198, %194 ], [ %230, %247 ], [ %255, %249 ], [ %255, %266 ]
  %277 = fcmp olt float %276, 0.000000e+00
  br i1 %277, label %283, label %278

278:                                              ; preds = %272
  %279 = fcmp ult float %276, 6.553500e+04
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = fadd float %276, 5.000000e-01
  %282 = fptoui float %281 to i16
  br label %283

283:                                              ; preds = %280, %278, %272
  %284 = phi i16 [ %282, %280 ], [ 0, %272 ], [ -1, %278 ]
  %285 = uitofp i16 %284 to float
  %286 = fcmp olt float %275, 0.000000e+00
  br i1 %286, label %292, label %287

287:                                              ; preds = %283
  %288 = fcmp ult float %275, 6.553500e+04
  br i1 %288, label %289, label %292

289:                                              ; preds = %287
  %290 = fadd float %275, 5.000000e-01
  %291 = fptoui float %290 to i16
  br label %292

292:                                              ; preds = %289, %287, %283
  %293 = phi i16 [ %291, %289 ], [ 0, %283 ], [ -1, %287 ]
  %294 = uitofp i16 %293 to float
  %295 = fcmp olt float %274, 0.000000e+00
  br i1 %295, label %301, label %296

296:                                              ; preds = %292
  %297 = fcmp ult float %274, 6.553500e+04
  br i1 %297, label %298, label %301

298:                                              ; preds = %296
  %299 = fadd float %274, 5.000000e-01
  %300 = fptoui float %299 to i16
  br label %301

301:                                              ; preds = %298, %296, %292
  %302 = phi i16 [ %300, %298 ], [ 0, %292 ], [ -1, %296 ]
  %303 = uitofp i16 %302 to float
  br i1 %132, label %314, label %304

304:                                              ; preds = %301
  %305 = fcmp olt float %273, 0.000000e+00
  br i1 %305, label %311, label %306

306:                                              ; preds = %304
  %307 = fcmp ult float %273, 6.553500e+04
  br i1 %307, label %308, label %311

308:                                              ; preds = %306
  %309 = fadd float %273, 5.000000e-01
  %310 = fptoui float %309 to i16
  br label %311

311:                                              ; preds = %308, %306, %304
  %312 = phi i16 [ %310, %308 ], [ 0, %304 ], [ -1, %306 ]
  %313 = uitofp i16 %312 to float
  br label %314

314:                                              ; preds = %311, %301
  %315 = phi float [ %273, %301 ], [ %313, %311 ]
  %316 = icmp eq i16 %284, -1
  %317 = fadd float %285, 5.000000e-01
  %318 = fptoui float %317 to i16
  %319 = zext i16 %318 to i64
  %320 = add nuw nsw i64 %319, 128
  %321 = select i1 %316, i64 65663, i64 %320
  %322 = lshr i64 %321, 8
  %323 = sub nsw i64 %321, %322
  %324 = lshr i64 %323, 10
  %325 = and i64 %324, 63
  %326 = icmp eq i16 %293, -1
  %327 = fadd float %294, 5.000000e-01
  %328 = fptoui float %327 to i16
  %329 = zext i16 %328 to i64
  %330 = add nuw nsw i64 %329, 128
  %331 = select i1 %326, i64 65663, i64 %330
  %332 = lshr i64 %331, 8
  %333 = sub nsw i64 %331, %332
  %334 = lshr i64 %333, 4
  %335 = and i64 %334, 4032
  %336 = or disjoint i64 %335, %325
  %337 = icmp eq i16 %302, -1
  %338 = fadd float %303, 5.000000e-01
  %339 = fptoui float %338 to i16
  %340 = zext i16 %339 to i64
  %341 = add nuw nsw i64 %340, 128
  %342 = select i1 %337, i64 65663, i64 %341
  %343 = lshr i64 %342, 8
  %344 = sub nsw i64 %342, %343
  %345 = shl nsw i64 %344, 2
  %346 = and i64 %345, 258048
  %347 = or disjoint i64 %336, %346
  br i1 %132, label %364, label %348

348:                                              ; preds = %314
  %349 = fcmp olt float %315, 0.000000e+00
  br i1 %349, label %357, label %350

350:                                              ; preds = %348
  %351 = fcmp ult float %315, 6.553500e+04
  br i1 %351, label %352, label %357

352:                                              ; preds = %350
  %353 = fadd float %315, 5.000000e-01
  %354 = fptoui float %353 to i16
  %355 = zext i16 %354 to i64
  %356 = add nuw nsw i64 %355, 128
  br label %357

357:                                              ; preds = %352, %350, %348
  %358 = phi i64 [ %356, %352 ], [ 128, %348 ], [ 65663, %350 ]
  %359 = lshr i64 %358, 8
  %360 = sub nsw i64 %358, %359
  %361 = shl nsw i64 %360, 8
  %362 = and i64 %361, 16515072
  %363 = or disjoint i64 %362, %347
  br label %364

364:                                              ; preds = %357, %314
  %365 = phi i64 [ %363, %357 ], [ %347, %314 ]
  %366 = load ptr, ptr %85, align 8, !tbaa !119
  %367 = getelementptr inbounds i64, ptr %366, i64 %365
  %368 = load i64, ptr %367, align 8, !tbaa !84
  %369 = icmp slt i64 %368, 0
  br i1 %369, label %370, label %426

370:                                              ; preds = %364
  %371 = load ptr, ptr %5, align 8, !tbaa !116
  %372 = trunc i64 %323 to i32
  %373 = lshr i32 %372, 8
  %374 = and i32 %373, 255
  %375 = trunc i64 %333 to i32
  %376 = lshr i32 %375, 8
  %377 = and i32 %376, 255
  %378 = trunc i64 %344 to i32
  %379 = lshr i32 %378, 8
  %380 = and i32 %379, 255
  %381 = fcmp olt float %315, 0.000000e+00
  %382 = fcmp oge float %315, 6.553500e+04
  %383 = fadd float %315, 5.000000e-01
  %384 = fptoui float %383 to i16
  %385 = zext i16 %384 to i64
  %386 = add nuw nsw i64 %385, 128
  %387 = select i1 %382, i64 65663, i64 %386
  %388 = select i1 %381, i64 128, i64 %387
  %389 = lshr i64 %388, 8
  %390 = sub nsw i64 %388, %389
  %391 = trunc i64 %390 to i32
  %392 = lshr i32 %391, 8
  %393 = and i32 %392, 255
  br label %397

394:                                              ; preds = %397
  %395 = add nsw i64 %399, -1
  %396 = icmp ugt i64 %399, 1
  br i1 %396, label %397, label %420, !llvm.loop !157

397:                                              ; preds = %370, %394
  %398 = phi ptr [ %371, %370 ], [ %418, %394 ]
  %399 = phi i64 [ 7, %370 ], [ %395, %394 ]
  %400 = trunc i64 %399 to i32
  %401 = lshr i32 %374, %400
  %402 = and i32 %401, 1
  %403 = lshr i32 %377, %400
  %404 = shl nuw nsw i32 %403, 1
  %405 = and i32 %404, 2
  %406 = or disjoint i32 %405, %402
  %407 = lshr i32 %380, %400
  %408 = shl nuw nsw i32 %407, 2
  %409 = and i32 %408, 4
  %410 = or disjoint i32 %406, %409
  %411 = lshr i32 %393, %400
  %412 = shl nuw nsw i32 %411, 3
  %413 = and i32 %412, 8
  %414 = or disjoint i32 %413, %410
  %415 = select i1 %132, i32 %410, i32 %414
  %416 = zext nneg i32 %415 to i64
  %417 = getelementptr inbounds %struct._NodeInfo, ptr %398, i64 0, i32 1, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !126
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %394

420:                                              ; preds = %397, %394
  %421 = phi ptr [ %398, %397 ], [ %418, %394 ]
  store float %285, ptr %86, align 8, !tbaa.struct !158
  store float %294, ptr %87, align 4, !tbaa.struct !159
  store float %303, ptr %88, align 8, !tbaa.struct !160
  store float %315, ptr %89, align 4, !tbaa.struct !161
  store float 0x4210000000000000, ptr %90, align 8, !tbaa !162
  %422 = load ptr, ptr %421, align 8, !tbaa !114
  call fastcc void @ClosestColor(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %422)
  %423 = load i64, ptr %91, align 8, !tbaa !163
  %424 = load ptr, ptr %85, align 8, !tbaa !119
  %425 = getelementptr inbounds i64, ptr %424, i64 %365
  store i64 %423, ptr %425, align 8, !tbaa !84
  br label %426

426:                                              ; preds = %420, %364
  %427 = load ptr, ptr %85, align 8, !tbaa !119
  %428 = getelementptr inbounds i64, ptr %427, i64 %365
  %429 = load i64, ptr %428, align 8, !tbaa !84
  %430 = load i32, ptr %0, align 8, !tbaa !83
  %431 = icmp ne i32 %430, 2
  %432 = select i1 %431, i1 true, i1 %122
  br i1 %432, label %436, label %433

433:                                              ; preds = %426
  %434 = getelementptr inbounds i16, ptr %107, i64 %129
  %435 = trunc i64 %429 to i16
  store i16 %435, ptr %434, align 2, !tbaa !78
  br label %436

436:                                              ; preds = %433, %426
  %437 = load ptr, ptr %92, align 8, !tbaa !117
  %438 = getelementptr inbounds %struct._QuantizeInfo, ptr %437, i64 0, i32 4
  %439 = load i32, ptr %438, align 8, !tbaa !44
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %457

441:                                              ; preds = %436
  %442 = load ptr, ptr %93, align 8, !tbaa !73
  %443 = getelementptr inbounds %struct._PixelPacket, ptr %442, i64 %429, i32 2
  %444 = load i16, ptr %443, align 2, !tbaa !74
  %445 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 2
  store i16 %444, ptr %445, align 2, !tbaa !74
  %446 = getelementptr inbounds %struct._PixelPacket, ptr %442, i64 %429, i32 1
  %447 = load i16, ptr %446, align 2, !tbaa !75
  %448 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 1
  store i16 %447, ptr %448, align 2, !tbaa !75
  %449 = getelementptr inbounds %struct._PixelPacket, ptr %442, i64 %429
  %450 = load i16, ptr %449, align 2, !tbaa !76
  store i16 %450, ptr %130, align 2, !tbaa !76
  %451 = load i32, ptr %84, align 8, !tbaa !124
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %441
  %454 = getelementptr inbounds %struct._PixelPacket, ptr %442, i64 %429, i32 3
  %455 = load i16, ptr %454, align 2, !tbaa !77
  %456 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %129, i32 3
  store i16 %455, ptr %456, align 2, !tbaa !77
  br label %457

457:                                              ; preds = %453, %441, %436
  %458 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %79, ptr noundef nonnull %78) #21
  %459 = icmp eq i32 %458, 0
  %460 = select i1 %459, i32 0, i32 %125
  %461 = load ptr, ptr %94, align 8, !tbaa !73
  %462 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %429
  %463 = load i32, ptr %84, align 8, !tbaa !124
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %469, label %465

465:                                              ; preds = %457
  %466 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %429, i32 3
  %467 = load i16, ptr %466, align 2, !tbaa !77
  %468 = icmp eq i16 %467, 0
  br i1 %468, label %469, label %480

469:                                              ; preds = %465, %457
  %470 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %429, i32 2
  %471 = load i16, ptr %470, align 2, !tbaa !74
  %472 = uitofp i16 %471 to float
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %429, i32 1
  %474 = load i16, ptr %473, align 2, !tbaa !75
  %475 = uitofp i16 %474 to float
  %476 = load i16, ptr %462, align 2, !tbaa !76
  %477 = uitofp i16 %476 to float
  %478 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %429, i32 3
  %479 = load i16, ptr %478, align 2, !tbaa !77
  br label %496

480:                                              ; preds = %465
  %481 = xor i16 %467, -1
  %482 = uitofp i16 %481 to double
  %483 = fmul double %482, 0x3EF0001000100010
  %484 = fptrunc double %483 to float
  %485 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %429, i32 2
  %486 = load i16, ptr %485, align 2, !tbaa !74
  %487 = uitofp i16 %486 to float
  %488 = fmul float %484, %487
  %489 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %429, i32 1
  %490 = load i16, ptr %489, align 2, !tbaa !75
  %491 = uitofp i16 %490 to float
  %492 = fmul float %484, %491
  %493 = load i16, ptr %462, align 2, !tbaa !76
  %494 = uitofp i16 %493 to float
  %495 = fmul float %484, %494
  br label %496

496:                                              ; preds = %480, %469
  %497 = phi i16 [ %479, %469 ], [ %467, %480 ]
  %498 = phi float [ %477, %469 ], [ %495, %480 ]
  %499 = phi float [ %475, %469 ], [ %492, %480 ]
  %500 = phi float [ %472, %469 ], [ %488, %480 ]
  %501 = fsub float %285, %500
  %502 = getelementptr inbounds %struct._RealPixelPacket, ptr %112, i64 %129
  store float %501, ptr %502, align 4, !tbaa !153
  %503 = fsub float %294, %499
  %504 = getelementptr inbounds %struct._RealPixelPacket, ptr %112, i64 %129, i32 1
  store float %503, ptr %504, align 4, !tbaa !154
  %505 = fsub float %303, %498
  %506 = getelementptr inbounds %struct._RealPixelPacket, ptr %112, i64 %129, i32 2
  store float %505, ptr %506, align 4, !tbaa !155
  br i1 %464, label %511, label %507

507:                                              ; preds = %496
  %508 = uitofp i16 %497 to float
  %509 = fsub float %315, %508
  %510 = getelementptr inbounds %struct._RealPixelPacket, ptr %112, i64 %129, i32 3
  store float %509, ptr %510, align 4, !tbaa !156
  br label %511

511:                                              ; preds = %507, %496
  %512 = load ptr, ptr %95, align 8, !tbaa !80
  %513 = icmp eq ptr %512, null
  br i1 %513, label %522, label %514

514:                                              ; preds = %511
  %515 = load i64, ptr %80, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %516 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, ptr noundef nonnull %96) #18
  %517 = load ptr, ptr %95, align 8, !tbaa !80
  %518 = load ptr, ptr %97, align 8, !tbaa !81
  %519 = call i32 %517(ptr noundef nonnull %4, i64 noundef %100, i64 noundef %515, ptr noundef %518) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %520 = icmp eq i32 %519, 0
  %521 = select i1 %520, i32 0, i32 %460
  br label %522

522:                                              ; preds = %514, %511
  %523 = phi i32 [ %521, %514 ], [ %460, %511 ]
  %524 = add nuw nsw i64 %126, 1
  %525 = load i64, ptr %41, align 8, !tbaa !68
  %526 = icmp slt i64 %524, %525
  br i1 %526, label %123, label %527, !llvm.loop !164

527:                                              ; preds = %522, %106, %102, %98
  %528 = phi i32 [ 0, %98 ], [ 0, %102 ], [ 1, %106 ], [ %523, %522 ]
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %5) #18
  %529 = add nuw nsw i64 %100, 1
  %530 = load i64, ptr %80, align 8, !tbaa !69
  %531 = icmp slt i64 %529, %530
  br i1 %531, label %98, label %532, !llvm.loop !165

532:                                              ; preds = %527, %77
  %533 = call ptr @DestroyCacheView(ptr noundef %79) #18
  %534 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %535 = icmp sgt i64 %534, 0
  br i1 %535, label %536, label %547

536:                                              ; preds = %532, %543
  %537 = phi i64 [ %544, %543 ], [ 0, %532 ]
  %538 = getelementptr inbounds ptr, ptr %75, i64 %537
  %539 = load ptr, ptr %538, align 8, !tbaa !126
  %540 = icmp eq ptr %539, null
  br i1 %540, label %543, label %541

541:                                              ; preds = %536
  %542 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %539) #18
  store ptr %542, ptr %538, align 8, !tbaa !126
  br label %543

543:                                              ; preds = %541, %536
  %544 = add nuw nsw i64 %537, 1
  %545 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %546 = icmp slt i64 %544, %545
  br i1 %546, label %536, label %547, !llvm.loop !149

547:                                              ; preds = %543, %532
  %548 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %75) #18
  br label %845

549:                                              ; preds = %37
  %550 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 16
  %551 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %550, i32 noundef 0, i64 noundef 256) #18
  %552 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 20
  %553 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %552, i8 0, i64 16, i1 false)
  %554 = load i64, ptr %553, align 8, !tbaa !68
  %555 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %556 = load i64, ptr %555, align 8, !tbaa !69
  %557 = tail call i64 @llvm.smax.i64(i64 %554, i64 %556)
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %549, %559
  %560 = phi i64 [ %563, %559 ], [ 1, %549 ]
  %561 = phi i64 [ %562, %559 ], [ %557, %549 ]
  %562 = ashr i64 %561, 1
  %563 = add i64 %560, 1
  %564 = icmp ult i64 %561, 2
  br i1 %564, label %565, label %559, !llvm.loop !166

565:                                              ; preds = %559, %549
  %566 = phi i64 [ 1, %549 ], [ %563, %559 ]
  %567 = shl nuw i64 1, %566
  %568 = icmp slt i64 %567, %557
  %569 = zext i1 %568 to i64
  %570 = add i64 %566, %569
  %571 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 23
  store i64 0, ptr %571, align 8, !tbaa !167
  %572 = mul i64 %556, %554
  %573 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 24
  store i64 %572, ptr %573, align 8, !tbaa !168
  %574 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %575 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %574) #18
  %576 = icmp ugt i64 %570, 1
  br i1 %576, label %577, label %579

577:                                              ; preds = %565
  %578 = add i64 %570, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %575, ptr noundef nonnull %1, i64 noundef %578, i32 noundef 2)
  br label %579

579:                                              ; preds = %577, %565
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %575, ptr noundef nonnull %1, i32 noundef 0)
  %580 = tail call ptr @DestroyCacheView(ptr noundef %575) #18
  br label %845

581:                                              ; preds = %37, %28
  %582 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %583 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %582) #18
  %584 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %585 = load i64, ptr %584, align 8, !tbaa !69
  %586 = icmp sgt i64 %585, 0
  br i1 %586, label %587, label %843

587:                                              ; preds = %581
  %588 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %589 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %590 = getelementptr inbounds %struct._CubeInfo, ptr %6, i64 0, i32 19
  %591 = getelementptr inbounds %struct._CubeInfo, ptr %6, i64 0, i32 5
  %592 = getelementptr inbounds %struct._CubeInfo, ptr %6, i64 0, i32 5, i32 1
  %593 = getelementptr inbounds %struct._CubeInfo, ptr %6, i64 0, i32 5, i32 2
  %594 = getelementptr inbounds %struct._CubeInfo, ptr %6, i64 0, i32 5, i32 3
  %595 = getelementptr inbounds %struct._CubeInfo, ptr %6, i64 0, i32 6
  %596 = getelementptr inbounds %struct._CubeInfo, ptr %6, i64 0, i32 11
  %597 = getelementptr inbounds %struct._CubeInfo, ptr %6, i64 0, i32 18
  %598 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %599 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %600 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %601 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %602

602:                                              ; preds = %587, %838
  %603 = phi i64 [ 0, %587 ], [ %840, %838 ]
  %604 = phi i32 [ 1, %587 ], [ %839, %838 ]
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %6) #18
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %838, label %606

606:                                              ; preds = %602
  %607 = load i64, ptr %588, align 8, !tbaa !68
  %608 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %583, i64 noundef 0, i64 noundef %603, i64 noundef %607, i64 noundef 1, ptr noundef nonnull %582) #21
  %609 = icmp eq ptr %608, null
  br i1 %609, label %838, label %610

610:                                              ; preds = %606
  %611 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %583) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %6, ptr noundef nonnull align 8 dereferenceable(504) %1, i64 504, i1 false), !tbaa.struct !150
  %612 = load i64, ptr %588, align 8, !tbaa !68
  %613 = icmp sgt i64 %612, 0
  br i1 %613, label %614, label %824

614:                                              ; preds = %610
  %615 = icmp eq ptr %611, null
  br label %619

616:                                              ; preds = %820
  %617 = load i64, ptr %588, align 8, !tbaa !68
  %618 = icmp slt i64 %667, %617
  br i1 %618, label %619, label %824, !llvm.loop !169

619:                                              ; preds = %614, %616
  %620 = phi i64 [ %612, %614 ], [ %617, %616 ]
  %621 = phi i64 [ 0, %614 ], [ %667, %616 ]
  %622 = phi ptr [ %608, %614 ], [ %821, %616 ]
  %623 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 1
  %624 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 3
  %625 = add nuw nsw i64 %621, 1
  %626 = icmp slt i64 %625, %620
  br i1 %626, label %627, label %665

627:                                              ; preds = %619
  %628 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 2
  %629 = load i16, ptr %628, align 2, !tbaa !74
  %630 = sub i64 %620, %621
  %631 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 1, i32 2
  %632 = load i16, ptr %631, align 2, !tbaa !74
  %633 = icmp eq i16 %629, %632
  br i1 %633, label %634, label %665

634:                                              ; preds = %627
  %635 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 1
  %636 = load i16, ptr %623, align 2, !tbaa !75
  br label %643

637:                                              ; preds = %662
  %638 = add nuw nsw i64 %663, %621
  %639 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 %663
  %640 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 %663, i32 2
  %641 = load i16, ptr %640, align 2, !tbaa !74
  %642 = icmp eq i16 %629, %641
  br i1 %642, label %643, label %665, !llvm.loop !170

643:                                              ; preds = %634, %637
  %644 = phi ptr [ %635, %634 ], [ %639, %637 ]
  %645 = phi i64 [ 1, %634 ], [ %663, %637 ]
  %646 = phi i64 [ %625, %634 ], [ %638, %637 ]
  %647 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 %645, i32 1
  %648 = load i16, ptr %647, align 2, !tbaa !75
  %649 = icmp eq i16 %636, %648
  br i1 %649, label %650, label %665

650:                                              ; preds = %643
  %651 = load i16, ptr %622, align 2, !tbaa !76
  %652 = load i16, ptr %644, align 2, !tbaa !76
  %653 = icmp eq i16 %651, %652
  br i1 %653, label %654, label %665

654:                                              ; preds = %650
  %655 = load i32, ptr %589, align 8, !tbaa !67
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %662, label %657

657:                                              ; preds = %654
  %658 = load i16, ptr %624, align 2, !tbaa !77
  %659 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 %645, i32 3
  %660 = load i16, ptr %659, align 2, !tbaa !77
  %661 = icmp eq i16 %658, %660
  br i1 %661, label %662, label %665

662:                                              ; preds = %657, %654
  %663 = add nuw i64 %645, 1
  %664 = icmp eq i64 %663, %630
  br i1 %664, label %665, label %637, !llvm.loop !170

665:                                              ; preds = %657, %650, %643, %637, %662, %627, %619
  %666 = phi i64 [ 1, %619 ], [ 1, %627 ], [ %630, %662 ], [ %663, %637 ], [ %645, %643 ], [ %645, %650 ], [ %645, %657 ]
  %667 = phi i64 [ %625, %619 ], [ %625, %627 ], [ %620, %662 ], [ %638, %637 ], [ %646, %643 ], [ %646, %650 ], [ %646, %657 ]
  %668 = load i32, ptr %590, align 8, !tbaa !124
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %674, label %670

670:                                              ; preds = %665
  %671 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 3
  %672 = load i16, ptr %671, align 2, !tbaa !77
  %673 = icmp eq i16 %672, 0
  br i1 %673, label %674, label %685

674:                                              ; preds = %670, %665
  %675 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 2
  %676 = load i16, ptr %675, align 2, !tbaa !74
  %677 = uitofp i16 %676 to float
  %678 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 1
  %679 = load i16, ptr %678, align 2, !tbaa !75
  %680 = uitofp i16 %679 to float
  %681 = load i16, ptr %622, align 2, !tbaa !76
  %682 = uitofp i16 %681 to float
  %683 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 3
  %684 = load i16, ptr %683, align 2, !tbaa !77
  br label %701

685:                                              ; preds = %670
  %686 = xor i16 %672, -1
  %687 = uitofp i16 %686 to double
  %688 = fmul double %687, 0x3EF0001000100010
  %689 = fptrunc double %688 to float
  %690 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 2
  %691 = load i16, ptr %690, align 2, !tbaa !74
  %692 = uitofp i16 %691 to float
  %693 = fmul float %689, %692
  %694 = getelementptr inbounds %struct._PixelPacket, ptr %622, i64 0, i32 1
  %695 = load i16, ptr %694, align 2, !tbaa !75
  %696 = uitofp i16 %695 to float
  %697 = fmul float %689, %696
  %698 = load i16, ptr %622, align 2, !tbaa !76
  %699 = uitofp i16 %698 to float
  %700 = fmul float %689, %699
  br label %701

701:                                              ; preds = %674, %685
  %702 = phi i16 [ %684, %674 ], [ %672, %685 ]
  %703 = phi float [ %682, %674 ], [ %700, %685 ]
  %704 = phi float [ %680, %674 ], [ %697, %685 ]
  %705 = phi float [ %677, %674 ], [ %693, %685 ]
  %706 = uitofp i16 %702 to float
  %707 = load ptr, ptr %6, align 8, !tbaa !116
  %708 = fcmp olt float %705, 0.000000e+00
  %709 = fcmp oge float %705, 6.553500e+04
  %710 = fadd float %705, 5.000000e-01
  %711 = fptoui float %710 to i16
  %712 = zext i16 %711 to i64
  %713 = add nuw nsw i64 %712, 128
  %714 = fcmp olt float %704, 0.000000e+00
  %715 = fcmp oge float %704, 6.553500e+04
  %716 = fadd float %704, 5.000000e-01
  %717 = fptoui float %716 to i16
  %718 = zext i16 %717 to i64
  %719 = add nuw nsw i64 %718, 128
  %720 = fcmp olt float %703, 0.000000e+00
  %721 = fcmp oge float %703, 6.553500e+04
  %722 = fadd float %703, 5.000000e-01
  %723 = fptoui float %722 to i16
  %724 = zext i16 %723 to i64
  %725 = add nuw nsw i64 %724, 128
  %726 = icmp eq i16 %702, -1
  %727 = fadd float %706, 5.000000e-01
  %728 = fptoui float %727 to i16
  %729 = zext i16 %728 to i64
  %730 = add nuw nsw i64 %729, 128
  %731 = select i1 %726, i64 65663, i64 %730
  %732 = lshr i64 %731, 8
  %733 = sub nsw i64 %731, %732
  %734 = trunc i64 %733 to i32
  %735 = lshr i32 %734, 8
  %736 = and i32 %735, 255
  %737 = select i1 %709, i64 65663, i64 %713
  %738 = select i1 %708, i64 128, i64 %737
  %739 = lshr i64 %738, 8
  %740 = sub nsw i64 %738, %739
  %741 = trunc i64 %740 to i32
  %742 = lshr i32 %741, 8
  %743 = and i32 %742, 255
  %744 = select i1 %715, i64 65663, i64 %719
  %745 = select i1 %714, i64 128, i64 %744
  %746 = lshr i64 %745, 8
  %747 = sub nsw i64 %745, %746
  %748 = trunc i64 %747 to i32
  %749 = lshr i32 %748, 8
  %750 = and i32 %749, 255
  %751 = select i1 %721, i64 65663, i64 %725
  %752 = select i1 %720, i64 128, i64 %751
  %753 = lshr i64 %752, 8
  %754 = sub nsw i64 %752, %753
  %755 = trunc i64 %754 to i32
  %756 = lshr i32 %755, 8
  %757 = and i32 %756, 255
  br label %761

758:                                              ; preds = %761
  %759 = add nsw i64 %762, -1
  %760 = icmp ugt i64 %762, 1
  br i1 %760, label %761, label %784, !llvm.loop !171

761:                                              ; preds = %701, %758
  %762 = phi i64 [ 7, %701 ], [ %759, %758 ]
  %763 = phi ptr [ %707, %701 ], [ %782, %758 ]
  %764 = trunc i64 %762 to i32
  %765 = lshr i32 %743, %764
  %766 = and i32 %765, 1
  %767 = lshr i32 %750, %764
  %768 = shl nuw nsw i32 %767, 1
  %769 = and i32 %768, 2
  %770 = or disjoint i32 %769, %766
  %771 = lshr i32 %757, %764
  %772 = shl nuw nsw i32 %771, 2
  %773 = and i32 %772, 4
  %774 = or disjoint i32 %770, %773
  %775 = lshr i32 %736, %764
  %776 = shl nuw nsw i32 %775, 3
  %777 = and i32 %776, 8
  %778 = select i1 %669, i32 0, i32 %777
  %779 = or disjoint i32 %774, %778
  %780 = zext nneg i32 %779 to i64
  %781 = getelementptr inbounds %struct._NodeInfo, ptr %763, i64 0, i32 1, i64 %780
  %782 = load ptr, ptr %781, align 8, !tbaa !126
  %783 = icmp eq ptr %782, null
  br i1 %783, label %784, label %758

784:                                              ; preds = %761, %758
  %785 = phi ptr [ %763, %761 ], [ %782, %758 ]
  store float %705, ptr %591, align 8, !tbaa.struct !158
  store float %704, ptr %592, align 4, !tbaa.struct !159
  store float %703, ptr %593, align 8, !tbaa.struct !160
  store float %706, ptr %594, align 4, !tbaa.struct !161
  store float 0x4210000000000000, ptr %595, align 8, !tbaa !162
  %786 = load ptr, ptr %785, align 8, !tbaa !114
  call fastcc void @ClosestColor(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %786)
  %787 = load i64, ptr %596, align 8, !tbaa !163
  %788 = load i32, ptr %0, align 8, !tbaa !83
  %789 = icmp ne i32 %788, 2
  %790 = select i1 %789, i1 true, i1 %615
  %791 = load ptr, ptr %597, align 8, !tbaa !117
  %792 = getelementptr inbounds %struct._QuantizeInfo, ptr %791, i64 0, i32 4
  %793 = load i32, ptr %792, align 8, !tbaa !44
  %794 = icmp eq i32 %793, 0
  %795 = getelementptr inbounds i16, ptr %611, i64 %621
  %796 = trunc i64 %787 to i16
  %797 = load i32, ptr %590, align 8
  %798 = icmp eq i32 %797, 0
  %799 = call i64 @llvm.umax.i64(i64 %666, i64 1)
  br label %800

800:                                              ; preds = %784, %820
  %801 = phi i64 [ 0, %784 ], [ %822, %820 ]
  %802 = phi ptr [ %622, %784 ], [ %821, %820 ]
  br i1 %790, label %805, label %803

803:                                              ; preds = %800
  %804 = getelementptr inbounds i16, ptr %795, i64 %801
  store i16 %796, ptr %804, align 2, !tbaa !78
  br label %805

805:                                              ; preds = %803, %800
  br i1 %794, label %806, label %820

806:                                              ; preds = %805
  %807 = load ptr, ptr %598, align 8, !tbaa !73
  %808 = getelementptr inbounds %struct._PixelPacket, ptr %807, i64 %787, i32 2
  %809 = load i16, ptr %808, align 2, !tbaa !74
  %810 = getelementptr inbounds %struct._PixelPacket, ptr %802, i64 0, i32 2
  store i16 %809, ptr %810, align 2, !tbaa !74
  %811 = getelementptr inbounds %struct._PixelPacket, ptr %807, i64 %787, i32 1
  %812 = load i16, ptr %811, align 2, !tbaa !75
  %813 = getelementptr inbounds %struct._PixelPacket, ptr %802, i64 0, i32 1
  store i16 %812, ptr %813, align 2, !tbaa !75
  %814 = getelementptr inbounds %struct._PixelPacket, ptr %807, i64 %787
  %815 = load i16, ptr %814, align 2, !tbaa !76
  store i16 %815, ptr %802, align 2, !tbaa !76
  br i1 %798, label %820, label %816

816:                                              ; preds = %806
  %817 = getelementptr inbounds %struct._PixelPacket, ptr %807, i64 %787, i32 3
  %818 = load i16, ptr %817, align 2, !tbaa !77
  %819 = getelementptr inbounds %struct._PixelPacket, ptr %802, i64 0, i32 3
  store i16 %818, ptr %819, align 2, !tbaa !77
  br label %820

820:                                              ; preds = %806, %816, %805
  %821 = getelementptr inbounds %struct._PixelPacket, ptr %802, i64 1
  %822 = add nuw nsw i64 %801, 1
  %823 = icmp eq i64 %822, %799
  br i1 %823, label %616, label %800, !llvm.loop !172

824:                                              ; preds = %616, %610
  %825 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %583, ptr noundef nonnull %582) #21
  %826 = icmp ne i32 %825, 0
  %827 = zext i1 %826 to i32
  %828 = load ptr, ptr %599, align 8, !tbaa !80
  %829 = icmp eq ptr %828, null
  br i1 %829, label %838, label %830

830:                                              ; preds = %824
  %831 = load i64, ptr %584, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #18
  %832 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %600) #18
  %833 = load ptr, ptr %599, align 8, !tbaa !80
  %834 = load ptr, ptr %601, align 8, !tbaa !81
  %835 = call i32 %833(ptr noundef nonnull %3, i64 noundef %603, i64 noundef %831, ptr noundef %834) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #18
  %836 = icmp eq i32 %835, 0
  %837 = select i1 %836, i32 0, i32 %827
  br label %838

838:                                              ; preds = %824, %830, %606, %602
  %839 = phi i32 [ 0, %602 ], [ 0, %606 ], [ %837, %830 ], [ %827, %824 ]
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %6) #18
  %840 = add nuw nsw i64 %603, 1
  %841 = load i64, ptr %584, align 8, !tbaa !69
  %842 = icmp slt i64 %840, %841
  br i1 %842, label %602, label %843, !llvm.loop !173

843:                                              ; preds = %838, %581
  %844 = call ptr @DestroyCacheView(ptr noundef %583) #18
  br label %845

845:                                              ; preds = %579, %547, %74, %843
  %846 = load ptr, ptr %7, align 8, !tbaa !117
  %847 = getelementptr inbounds %struct._QuantizeInfo, ptr %846, i64 0, i32 4
  %848 = load i32, ptr %847, align 8, !tbaa !44
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %852, label %850

850:                                              ; preds = %845
  %851 = call i32 @GetImageQuantizeError(ptr noundef %0)
  br label %852

852:                                              ; preds = %850, %845
  %853 = load ptr, ptr %7, align 8, !tbaa !117
  %854 = load i64, ptr %853, align 8, !tbaa !38
  %855 = icmp eq i64 %854, 2
  br i1 %855, label %856, label %893

856:                                              ; preds = %852
  %857 = getelementptr inbounds %struct._QuantizeInfo, ptr %853, i64 0, i32 3
  %858 = load i32, ptr %857, align 4, !tbaa !43
  %859 = icmp eq i32 %858, 2
  br i1 %859, label %860, label %893

860:                                              ; preds = %856
  %861 = load i64, ptr %29, align 8, !tbaa !65
  %862 = icmp sgt i64 %861, 0
  br i1 %862, label %863, label %893

863:                                              ; preds = %860
  %864 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %865 = load ptr, ptr %864, align 8, !tbaa !73
  %866 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %867 = load i32, ptr %866, align 4, !tbaa !99, !alias.scope !174, !noalias !177
  %868 = icmp eq i32 %867, 2
  br label %869

869:                                              ; preds = %863, %884
  %870 = phi i64 [ 0, %863 ], [ %891, %884 ]
  %871 = phi ptr [ %865, %863 ], [ %890, %884 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %872 = getelementptr inbounds %struct._PixelPacket, ptr %871, i64 0, i32 2
  %873 = load i16, ptr %872, align 2, !tbaa !74, !alias.scope !177, !noalias !174
  %874 = uitofp i16 %873 to float
  br i1 %868, label %884, label %875

875:                                              ; preds = %869
  %876 = getelementptr inbounds %struct._PixelPacket, ptr %871, i64 0, i32 1
  %877 = load i16, ptr %876, align 2, !tbaa !75, !alias.scope !177, !noalias !174
  %878 = uitofp i16 %877 to float
  %879 = fmul float %878, 0x3FE6E29300000000
  %880 = call float @llvm.fmuladd.f32(float %874, float 0x3FCB384FE0000000, float %879)
  %881 = load i16, ptr %871, align 2, !tbaa !76, !alias.scope !177, !noalias !174
  %882 = uitofp i16 %881 to float
  %883 = call float @llvm.fmuladd.f32(float %882, float 0x3FB27AC820000000, float %880)
  br label %884

884:                                              ; preds = %869, %875
  %885 = phi float [ %883, %875 ], [ %874, %869 ]
  %886 = fcmp uge float %885, 3.276750e+04
  %887 = sext i1 %886 to i16
  %888 = getelementptr inbounds %struct._PixelPacket, ptr %871, i64 0, i32 2
  store i16 %887, ptr %888, align 2, !tbaa !74
  %889 = getelementptr inbounds %struct._PixelPacket, ptr %871, i64 0, i32 1
  store i16 %887, ptr %889, align 2, !tbaa !75
  store i16 %887, ptr %871, align 2, !tbaa !76
  %890 = getelementptr inbounds %struct._PixelPacket, ptr %871, i64 1
  %891 = add nuw nsw i64 %870, 1
  %892 = icmp eq i64 %891, %861
  br i1 %892, label %893, label %869, !llvm.loop !179

893:                                              ; preds = %884, %860, %856, %852
  %894 = call i32 @SyncImage(ptr noundef %0) #18
  %895 = load ptr, ptr %7, align 8, !tbaa !117
  %896 = getelementptr inbounds %struct._QuantizeInfo, ptr %895, i64 0, i32 3
  %897 = load i32, ptr %896, align 4, !tbaa !43
  switch i32 %897, label %898 [
    i32 0, label %900
    i32 12, label %900
  ]

898:                                              ; preds = %893
  %899 = call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 13) #18
  br label %900

900:                                              ; preds = %898, %893, %893, %22, %24
  %901 = phi i32 [ 0, %24 ], [ 0, %22 ], [ 1, %893 ], [ 1, %893 ], [ 1, %898 ]
  ret i32 %901
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DestroyCubeInfo(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 13
  br label %3

3:                                                ; preds = %3, %1
  %4 = load ptr, ptr %2, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct._Nodes, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = load ptr, ptr %4, align 8, !tbaa !108
  %8 = tail call ptr @RelinquishMagickMemory(ptr noundef %7) #18
  %9 = load ptr, ptr %2, align 8, !tbaa !110
  store ptr %8, ptr %9, align 8, !tbaa !108
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #18
  store ptr %6, ptr %2, align 8, !tbaa !110
  %11 = icmp eq ptr %6, null
  br i1 %11, label %12, label %3, !llvm.loop !180

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %14) #18
  store ptr %17, ptr %13, align 8, !tbaa !118
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !117
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.6) #18
  %22 = getelementptr inbounds %struct._QuantizeInfo, ptr %20, i64 0, i32 5
  store i64 -2880220588, ptr %22, align 8, !tbaa !45
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef %20) #18
  store ptr %23, ptr %19, align 8, !tbaa !117
  %24 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @QuantizeImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2807, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #18
  br label %11

11:                                               ; preds = %8, %2
  %12 = tail call ptr @GetNextImageInList(ptr noundef %1) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 @QuantizeImage(ptr noundef %0, ptr noundef %1), !range !66
  br label %109

16:                                               ; preds = %11
  %17 = load i64, ptr %0, align 8, !tbaa !38
  %18 = icmp eq i64 %17, 0
  %19 = tail call i64 @llvm.umin.i64(i64 %17, i64 65536)
  %20 = select i1 %18, i64 65536, i64 %19
  %21 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !53
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %29, %26 ], [ %20, %24 ]
  %28 = phi i64 [ %30, %26 ], [ 1, %24 ]
  %29 = lshr i64 %27, 2
  %30 = add nuw nsw i64 %28, 1
  %31 = icmp ult i64 %27, 4
  br i1 %31, label %32, label %26, !llvm.loop !181

32:                                               ; preds = %26, %24
  %33 = phi i64 [ 1, %24 ], [ %30, %26 ]
  %34 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !41
  %36 = icmp ne i32 %35, 0
  %37 = sext i1 %36 to i64
  %38 = add i64 %33, %37
  br label %39

39:                                               ; preds = %32, %16
  %40 = phi i64 [ %38, %32 ], [ %22, %16 ]
  %41 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef %40, i64 noundef %20)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %45 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %46 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %44, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2843, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %45) #18
  br label %109

47:                                               ; preds = %39
  %48 = tail call i64 @GetImageListLength(ptr noundef %1) #18
  %49 = icmp eq ptr %1, null
  br i1 %49, label %107, label %50

50:                                               ; preds = %47, %74
  %51 = phi i64 [ %76, %74 ], [ 0, %47 ]
  %52 = phi ptr [ %75, %74 ], [ %1, %47 ]
  %53 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 48
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %52, ptr noundef null, ptr noundef %54) #18
  %56 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 58
  %57 = call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %41, ptr noundef nonnull %52, ptr noundef nonnull %56), !range !66
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %107, label %59

59:                                               ; preds = %50
  %60 = load ptr, ptr %53, align 8, !tbaa !81
  %61 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %52, ptr noundef %55, ptr noundef %60) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %62 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 47
  %63 = load ptr, ptr %62, align 8, !tbaa !80
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 53
  %67 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %66) #18
  %68 = load ptr, ptr %62, align 8, !tbaa !80
  %69 = load ptr, ptr %53, align 8, !tbaa !81
  %70 = call i32 %68(ptr noundef nonnull %4, i64 noundef %51, i64 noundef %48, ptr noundef %69) #18
  br label %71

71:                                               ; preds = %59, %65
  %72 = phi i32 [ %70, %65 ], [ 1, %59 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = call ptr @GetNextImageInList(ptr noundef nonnull %52) #18
  %76 = add nuw nsw i64 %51, 1
  %77 = icmp eq ptr %75, null
  br i1 %77, label %78, label %50, !llvm.loop !182

78:                                               ; preds = %74, %71
  br i1 %58, label %107, label %79

79:                                               ; preds = %78
  call fastcc void @ReduceImageColors(ptr noundef nonnull %1, ptr noundef nonnull %41)
  br label %80

80:                                               ; preds = %79, %103
  %81 = phi i64 [ %105, %103 ], [ 0, %79 ]
  %82 = phi ptr [ %104, %103 ], [ %1, %79 ]
  %83 = getelementptr inbounds %struct._Image, ptr %82, i64 0, i32 48
  %84 = load ptr, ptr %83, align 8, !tbaa !81
  %85 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %82, ptr noundef null, ptr noundef %84) #18
  %86 = call fastcc i32 @AssignImageColors(ptr noundef nonnull %82, ptr noundef nonnull %41), !range !66
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %80
  %89 = load ptr, ptr %83, align 8, !tbaa !81
  %90 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %82, ptr noundef %85, ptr noundef %89) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #18
  %91 = getelementptr inbounds %struct._Image, ptr %82, i64 0, i32 47
  %92 = load ptr, ptr %91, align 8, !tbaa !80
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct._Image, ptr %82, i64 0, i32 53
  %96 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %95) #18
  %97 = load ptr, ptr %91, align 8, !tbaa !80
  %98 = load ptr, ptr %83, align 8, !tbaa !81
  %99 = call i32 %97(ptr noundef nonnull %3, i64 noundef %81, i64 noundef %48, ptr noundef %98) #18
  br label %100

100:                                              ; preds = %88, %94
  %101 = phi i32 [ %99, %94 ], [ 1, %88 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #18
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = call ptr @GetNextImageInList(ptr noundef nonnull %82) #18
  %105 = add nuw nsw i64 %81, 1
  %106 = icmp eq ptr %104, null
  br i1 %106, label %107, label %80, !llvm.loop !183

107:                                              ; preds = %50, %100, %80, %103, %47, %78
  %108 = phi i32 [ 0, %78 ], [ 0, %47 ], [ 1, %103 ], [ 0, %80 ], [ 1, %100 ], [ 0, %50 ]
  call fastcc void @DestroyCubeInfo(ptr noundef nonnull %41)
  br label %109

109:                                              ; preds = %107, %43, %14
  %110 = phi i32 [ %15, %14 ], [ 0, %43 ], [ %108, %107 ]
  ret i32 %110
}

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RemapImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3168, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i64, ptr %0, align 8, !tbaa !38
  %12 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef 8, i64 noundef %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = icmp eq ptr %1, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3175, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %18) #18
  br label %32

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %22 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %21), !range !66
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !129
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  store i64 %26, ptr %28, align 8, !tbaa !38
  %29 = tail call fastcc i32 @AssignImageColors(ptr noundef %1, ptr noundef nonnull %12), !range !66
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i32 [ %29, %24 ], [ 0, %20 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %12)
  br label %32

32:                                               ; preds = %14, %16, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %16 ], [ 0, %14 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RemapImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3232, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %3
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 @QuantizeImages(ptr noundef %0, ptr noundef %1), !range !66
  br label %43

14:                                               ; preds = %10
  %15 = load i64, ptr %0, align 8, !tbaa !38
  %16 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef 8, i64 noundef %15)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = icmp eq ptr %1, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3249, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %22) #18
  br label %43

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %26 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %16, ptr noundef nonnull %2, ptr noundef nonnull %25), !range !66
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._CubeInfo, ptr %16, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !129
  %31 = getelementptr inbounds %struct._CubeInfo, ptr %16, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !117
  store i64 %30, ptr %32, align 8, !tbaa !38
  %33 = icmp eq ptr %1, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %28, %38
  %35 = phi ptr [ %39, %38 ], [ %1, %28 ]
  %36 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %35, ptr noundef nonnull %16), !range !66
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @GetNextImageInList(ptr noundef nonnull %35) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %34, !llvm.loop !184

41:                                               ; preds = %34, %38, %28, %24
  %42 = phi i32 [ 0, %24 ], [ %26, %28 ], [ 1, %38 ], [ 0, %34 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %16)
  br label %43

43:                                               ; preds = %18, %20, %41, %12
  %44 = phi i32 [ %13, %12 ], [ %42, %41 ], [ 0, %20 ], [ 0, %18 ]
  ret i32 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @PruneLevel(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !124
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneLevel(ptr noundef %0, ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !185

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !128
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %20 = load i64, ptr %19, align 8, !tbaa !102
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @PruneToCubeDepth(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !124
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneToCubeDepth(ptr noundef %0, ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !186

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !128
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %20 = load i64, ptr %19, align 8, !tbaa !102
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @PruneChild(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !124
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneChild(ptr noundef %0, ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !187

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !132
  %20 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !132
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8, !tbaa !132
  %23 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 3
  %24 = load float, ptr %23, align 8, !tbaa !133
  %25 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 3
  %26 = load float, ptr %25, align 8, !tbaa !133
  %27 = fadd float %24, %26
  store float %27, ptr %25, align 8, !tbaa !133
  %28 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 3, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !134
  %30 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 3, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !134
  %32 = fadd float %29, %31
  store float %32, ptr %30, align 4, !tbaa !134
  %33 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 3, i32 2
  %34 = load float, ptr %33, align 8, !tbaa !135
  %35 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 3, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !135
  %37 = fadd float %34, %36
  store float %37, ptr %35, align 8, !tbaa !135
  %38 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 3, i32 3
  %39 = load float, ptr %38, align 4, !tbaa !136
  %40 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 3, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !136
  %42 = fadd float %39, %41
  store float %42, ptr %40, align 4, !tbaa !136
  %43 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 6
  %44 = load i64, ptr %43, align 8, !tbaa !127
  %45 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 1, i64 %44
  store ptr null, ptr %45, align 8, !tbaa !126
  %46 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %47 = load i64, ptr %46, align 8, !tbaa !113
  %48 = add i64 %47, -1
  store i64 %48, ptr %46, align 8, !tbaa !113
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DefineImageColormap(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !124
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 8, i64 16
  br label %8

8:                                                ; preds = %3, %14
  %9 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %10 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @DefineImageColormap(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !188

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !132
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %186, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25
  %27 = sitofp i64 %19 to float
  %28 = fpext float %27 to double
  %29 = icmp slt i64 %19, 0
  %30 = select i1 %29, double -1.000000e+00, double 1.000000e+00
  %31 = fmul double %30, %28
  %32 = fcmp ult double %31, 1.000000e-15
  %33 = fdiv double 1.000000e+00, %28
  %34 = fdiv double %30, 1.000000e-15
  %35 = select i1 %32, double %34, double %33
  %36 = fptrunc double %35 to float
  %37 = load i32, ptr %4, align 8, !tbaa !124
  %38 = icmp eq i32 %37, 0
  %39 = fmul float %36, 6.553500e+04
  %40 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3
  br i1 %38, label %41, label %77

41:                                               ; preds = %21
  %42 = load float, ptr %40, align 8, !tbaa !133
  %43 = fmul float %39, %42
  %44 = fcmp ugt float %43, 0.000000e+00
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = fcmp ult float %43, 6.553500e+04
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = fadd float %43, 5.000000e-01
  %49 = fptoui float %48 to i16
  br label %50

50:                                               ; preds = %41, %45, %47
  %51 = phi i16 [ %49, %47 ], [ 0, %41 ], [ -1, %45 ]
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %51, ptr %52, align 2, !tbaa !74
  %53 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %54 = load float, ptr %53, align 4, !tbaa !134
  %55 = fmul float %39, %54
  %56 = fcmp ugt float %55, 0.000000e+00
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = fcmp ult float %55, 6.553500e+04
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = fadd float %55, 5.000000e-01
  %61 = fptoui float %60 to i16
  br label %62

62:                                               ; preds = %50, %57, %59
  %63 = phi i16 [ %61, %59 ], [ 0, %50 ], [ -1, %57 ]
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %63, ptr %64, align 2, !tbaa !75
  %65 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %66 = load float, ptr %65, align 8, !tbaa !135
  %67 = fmul float %39, %66
  %68 = fcmp ugt float %67, 0.000000e+00
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = fcmp ult float %67, 6.553500e+04
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = fadd float %67, 5.000000e-01
  %73 = fptoui float %72 to i16
  br label %74

74:                                               ; preds = %62, %69, %71
  %75 = phi i16 [ %73, %71 ], [ 0, %62 ], [ -1, %69 ]
  store i16 %75, ptr %26, align 2, !tbaa !76
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  store i16 0, ptr %76, align 2, !tbaa !77
  br label %183

77:                                               ; preds = %21
  %78 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 3
  %79 = load float, ptr %78, align 4, !tbaa !136
  %80 = fmul float %39, %79
  %81 = fcmp ugt float %80, 0.000000e+00
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = fcmp ult float %80, 6.553500e+04
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = fadd float %80, 5.000000e-01
  %86 = fptoui float %85 to i16
  br label %87

87:                                               ; preds = %77, %82, %84
  %88 = phi i16 [ %86, %84 ], [ 0, %77 ], [ -1, %82 ]
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  store i16 %88, ptr %89, align 2, !tbaa !77
  %90 = icmp eq i16 %88, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %87
  %92 = load float, ptr %40, align 8, !tbaa !133
  %93 = fmul float %39, %92
  %94 = fcmp ugt float %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = fcmp ult float %93, 6.553500e+04
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = fadd float %93, 5.000000e-01
  %99 = fptoui float %98 to i16
  br label %100

100:                                              ; preds = %91, %95, %97
  %101 = phi i16 [ %99, %97 ], [ 0, %91 ], [ -1, %95 ]
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %101, ptr %102, align 2, !tbaa !74
  %103 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %104 = load float, ptr %103, align 4, !tbaa !134
  %105 = fmul float %39, %104
  %106 = fcmp ugt float %105, 0.000000e+00
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = fcmp ult float %105, 6.553500e+04
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = fadd float %105, 5.000000e-01
  %111 = fptoui float %110 to i16
  br label %112

112:                                              ; preds = %100, %107, %109
  %113 = phi i16 [ %111, %109 ], [ 0, %100 ], [ -1, %107 ]
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %113, ptr %114, align 2, !tbaa !75
  %115 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %116 = load float, ptr %115, align 8, !tbaa !135
  %117 = fmul float %39, %116
  %118 = fcmp ugt float %117, 0.000000e+00
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = fcmp ult float %117, 6.553500e+04
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = fadd float %117, 5.000000e-01
  %123 = fptoui float %122 to i16
  br label %124

124:                                              ; preds = %112, %119, %121
  %125 = phi i16 [ %123, %121 ], [ 0, %112 ], [ -1, %119 ]
  store i16 %125, ptr %26, align 2, !tbaa !76
  br label %183

126:                                              ; preds = %87
  %127 = uitofp i16 %88 to double
  %128 = fsub double 6.553500e+04, %127
  %129 = fmul double %128, 0x3EF0001000100010
  %130 = fcmp olt double %129, 0.000000e+00
  %131 = select i1 %130, double 0.000000e+00, double %129
  %132 = fcmp ult double %131, 1.000000e-15
  %133 = fdiv double 1.000000e+00, %131
  %134 = select i1 %132, double 0x430C6BF52633FFFF, double %133
  %135 = fpext float %36 to double
  %136 = fmul double %134, %135
  %137 = fmul double %136, 6.553500e+04
  %138 = load float, ptr %40, align 8, !tbaa !133
  %139 = fpext float %138 to double
  %140 = fmul double %137, %139
  %141 = fptrunc double %140 to float
  %142 = fcmp ugt float %141, 0.000000e+00
  br i1 %142, label %143, label %148

143:                                              ; preds = %126
  %144 = fcmp ult float %141, 6.553500e+04
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = fadd float %141, 5.000000e-01
  %147 = fptoui float %146 to i16
  br label %148

148:                                              ; preds = %126, %143, %145
  %149 = phi i16 [ %147, %145 ], [ 0, %126 ], [ -1, %143 ]
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %149, ptr %150, align 2, !tbaa !74
  %151 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %152 = load float, ptr %151, align 4, !tbaa !134
  %153 = fpext float %152 to double
  %154 = fmul double %137, %153
  %155 = fptrunc double %154 to float
  %156 = fcmp ugt float %155, 0.000000e+00
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = fcmp ult float %155, 6.553500e+04
  br i1 %158, label %159, label %162

159:                                              ; preds = %157
  %160 = fadd float %155, 5.000000e-01
  %161 = fptoui float %160 to i16
  br label %162

162:                                              ; preds = %148, %157, %159
  %163 = phi i16 [ %161, %159 ], [ 0, %148 ], [ -1, %157 ]
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %163, ptr %164, align 2, !tbaa !75
  %165 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %166 = load float, ptr %165, align 8, !tbaa !135
  %167 = fpext float %166 to double
  %168 = fmul double %137, %167
  %169 = fptrunc double %168 to float
  %170 = fcmp ugt float %169, 0.000000e+00
  br i1 %170, label %171, label %176

171:                                              ; preds = %162
  %172 = fcmp ult float %169, 6.553500e+04
  br i1 %172, label %173, label %176

173:                                              ; preds = %171
  %174 = fadd float %169, 5.000000e-01
  %175 = fptoui float %174 to i16
  br label %176

176:                                              ; preds = %162, %171, %173
  %177 = phi i16 [ %175, %173 ], [ 0, %162 ], [ -1, %171 ]
  store i16 %177, ptr %26, align 2, !tbaa !76
  %178 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 4
  %179 = load i64, ptr %178, align 8, !tbaa !146
  %180 = icmp ugt i64 %19, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  store i64 %19, ptr %178, align 8, !tbaa !146
  %182 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 3
  store i64 %25, ptr %182, align 8, !tbaa !147
  br label %183

183:                                              ; preds = %124, %181, %176, %74
  %184 = add i64 %25, 1
  store i64 %184, ptr %24, align 8, !tbaa !65
  %185 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 5
  store i64 %25, ptr %185, align 8, !tbaa !189
  br label %186

186:                                              ; preds = %183, %17
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ClosestColor(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !124
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 8, i64 16
  br label %8

8:                                                ; preds = %3, %14
  %9 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %10 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @ClosestColor(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !190

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !132
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %82, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !189
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5
  %28 = load i32, ptr %4, align 8, !tbaa !124
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !77
  %33 = xor i16 %32, -1
  %34 = uitofp i16 %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fptrunc double %35 to float
  %37 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 3
  %38 = load float, ptr %37, align 4, !tbaa !156
  %39 = fsub float 6.553500e+04, %38
  %40 = fpext float %39 to double
  %41 = fmul double %40, 0x3EF0001000100010
  %42 = fptrunc double %41 to float
  br label %43

43:                                               ; preds = %30, %21
  %44 = phi float [ %36, %30 ], [ 1.000000e+00, %21 ]
  %45 = phi float [ %42, %30 ], [ 1.000000e+00, %21 ]
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  %47 = load i16, ptr %46, align 2, !tbaa !74
  %48 = uitofp i16 %47 to float
  %49 = load float, ptr %27, align 4, !tbaa !153
  %50 = fneg float %45
  %51 = fmul float %49, %50
  %52 = tail call float @llvm.fmuladd.f32(float %44, float %48, float %51)
  %53 = fmul float %52, %52
  %54 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 6
  %55 = load float, ptr %54, align 8, !tbaa !162
  %56 = fcmp ugt float %53, %55
  br i1 %56, label %82, label %57

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  %59 = load i16, ptr %58, align 2, !tbaa !75
  %60 = uitofp i16 %59 to float
  %61 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 1
  %62 = load float, ptr %61, align 4, !tbaa !154
  %63 = fmul float %62, %50
  %64 = tail call float @llvm.fmuladd.f32(float %44, float %60, float %63)
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %53)
  %66 = fcmp ugt float %65, %55
  br i1 %66, label %82, label %67

67:                                               ; preds = %57
  %68 = load i16, ptr %26, align 2, !tbaa !76
  %69 = uitofp i16 %68 to float
  %70 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 2
  %71 = load float, ptr %70, align 4, !tbaa !155
  %72 = fmul float %71, %50
  %73 = tail call float @llvm.fmuladd.f32(float %44, float %69, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %73, float %73, float %65)
  %75 = fcmp ugt float %74, %55
  br i1 %75, label %82, label %76

76:                                               ; preds = %67
  %77 = fsub float %44, %45
  %78 = tail call float @llvm.fmuladd.f32(float %77, float %77, float %74)
  %79 = fcmp ugt float %78, %55
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  store float %78, ptr %54, align 8, !tbaa !162
  %81 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 11
  store i64 %25, ptr %81, align 8, !tbaa !163
  br label %82

82:                                               ; preds = %43, %67, %80, %76, %57, %17
  ret void
}

declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %22, %20, %18, %16, %5
  %7 = phi i64 [ %3, %5 ], [ %17, %16 ], [ %19, %18 ], [ %21, %20 ], [ %23, %22 ]
  %8 = phi i32 [ %4, %5 ], [ 8, %16 ], [ 2, %18 ], [ 6, %20 ], [ 4, %22 ]
  %9 = icmp eq i64 %7, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  switch i32 %8, label %24 [
    i32 4, label %11
    i32 6, label %12
    i32 2, label %13
    i32 8, label %14
  ]

11:                                               ; preds = %10
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4)
  br label %24

12:                                               ; preds = %10
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6)
  br label %24

13:                                               ; preds = %10
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  br label %24

14:                                               ; preds = %10
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8)
  br label %24

15:                                               ; preds = %6
  switch i32 %8, label %24 [
    i32 4, label %16
    i32 6, label %18
    i32 2, label %20
    i32 8, label %22
  ]

16:                                               ; preds = %15
  %17 = add i64 %7, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %17, i32 noundef 2)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6)
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %17, i32 noundef 4)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8)
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %17, i32 noundef 4)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4)
  br label %6

18:                                               ; preds = %15
  %19 = add i64 %7, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %19, i32 noundef 8)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4)
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %19, i32 noundef 6)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %19, i32 noundef 6)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6)
  br label %6

20:                                               ; preds = %15
  %21 = add i64 %7, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %21, i32 noundef 4)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8)
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %21, i32 noundef 2)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6)
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %21, i32 noundef 2)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  br label %6

22:                                               ; preds = %15
  %23 = add i64 %7, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %23, i32 noundef 6)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %23, i32 noundef 8)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4)
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %23, i32 noundef 8)
  tail call fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8)
  br label %6

24:                                               ; preds = %15, %11, %12, %13, %14, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 20
  %7 = load i64, ptr %6, align 8, !tbaa !191
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %358

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !68
  %12 = icmp slt i64 %7, %11
  br i1 %12, label %13, label %358

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 21
  %15 = load i64, ptr %14, align 8, !tbaa !192
  %16 = icmp sgt i64 %15, -1
  br i1 %16, label %17, label %358

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !69
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %358

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %23 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %7, i64 noundef %15, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %22) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %369, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1) #18
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 19
  %28 = load i32, ptr %27, align 8, !tbaa !124
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !77
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30, %25
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 2
  %36 = load i16, ptr %35, align 2, !tbaa !74
  %37 = uitofp i16 %36 to float
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !75
  %40 = uitofp i16 %39 to float
  %41 = load i16, ptr %23, align 2, !tbaa !76
  %42 = uitofp i16 %41 to float
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 3
  %44 = load i16, ptr %43, align 2, !tbaa !77
  br label %61

45:                                               ; preds = %30
  %46 = xor i16 %32, -1
  %47 = uitofp i16 %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 2
  %51 = load i16, ptr %50, align 2, !tbaa !74
  %52 = uitofp i16 %51 to float
  %53 = fmul float %49, %52
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 1
  %55 = load i16, ptr %54, align 2, !tbaa !75
  %56 = uitofp i16 %55 to float
  %57 = fmul float %49, %56
  %58 = load i16, ptr %23, align 2, !tbaa !76
  %59 = uitofp i16 %58 to float
  %60 = fmul float %49, %59
  br label %61

61:                                               ; preds = %34, %45
  %62 = phi i16 [ %44, %34 ], [ %32, %45 ]
  %63 = phi float [ %42, %34 ], [ %60, %45 ]
  %64 = phi float [ %40, %34 ], [ %57, %45 ]
  %65 = phi float [ %37, %34 ], [ %53, %45 ]
  %66 = uitofp i16 %62 to float
  br label %67

67:                                               ; preds = %61, %88
  %68 = phi i64 [ 0, %61 ], [ %90, %88 ]
  %69 = phi float [ %65, %61 ], [ %77, %88 ]
  %70 = phi float [ %64, %61 ], [ %80, %88 ]
  %71 = phi float [ %63, %61 ], [ %83, %88 ]
  %72 = phi float [ %66, %61 ], [ %89, %88 ]
  %73 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 17, i64 %68
  %74 = load float, ptr %73, align 4, !tbaa !120
  %75 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %68
  %76 = load float, ptr %75, align 8, !tbaa !153
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %76, float %69)
  %78 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %68, i32 1
  %79 = load float, ptr %78, align 4, !tbaa !154
  %80 = tail call float @llvm.fmuladd.f32(float %74, float %79, float %70)
  %81 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %68, i32 2
  %82 = load float, ptr %81, align 8, !tbaa !155
  %83 = tail call float @llvm.fmuladd.f32(float %74, float %82, float %71)
  br i1 %29, label %88, label %84

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %68, i32 3
  %86 = load float, ptr %85, align 4, !tbaa !156
  %87 = tail call float @llvm.fmuladd.f32(float %74, float %86, float %72)
  br label %88

88:                                               ; preds = %67, %84
  %89 = phi float [ %72, %67 ], [ %87, %84 ]
  %90 = add nuw nsw i64 %68, 1
  %91 = icmp eq i64 %90, 16
  br i1 %91, label %92, label %67, !llvm.loop !193

92:                                               ; preds = %88
  %93 = fcmp olt float %77, 0.000000e+00
  br i1 %93, label %99, label %94

94:                                               ; preds = %92
  %95 = fcmp ult float %77, 6.553500e+04
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = fadd float %77, 5.000000e-01
  %98 = fptoui float %97 to i16
  br label %99

99:                                               ; preds = %92, %94, %96
  %100 = phi i16 [ %98, %96 ], [ 0, %92 ], [ -1, %94 ]
  %101 = uitofp i16 %100 to float
  %102 = fcmp olt float %80, 0.000000e+00
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = fcmp ult float %80, 6.553500e+04
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = fadd float %80, 5.000000e-01
  %107 = fptoui float %106 to i16
  br label %108

108:                                              ; preds = %99, %103, %105
  %109 = phi i16 [ %107, %105 ], [ 0, %99 ], [ -1, %103 ]
  %110 = uitofp i16 %109 to float
  %111 = fcmp olt float %83, 0.000000e+00
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = fcmp ult float %83, 6.553500e+04
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = fadd float %83, 5.000000e-01
  %116 = fptoui float %115 to i16
  br label %117

117:                                              ; preds = %108, %112, %114
  %118 = phi i16 [ %116, %114 ], [ 0, %108 ], [ -1, %112 ]
  %119 = uitofp i16 %118 to float
  br i1 %29, label %130, label %120

120:                                              ; preds = %117
  %121 = fcmp olt float %89, 0.000000e+00
  br i1 %121, label %127, label %122

122:                                              ; preds = %120
  %123 = fcmp ult float %89, 6.553500e+04
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = fadd float %89, 5.000000e-01
  %126 = fptoui float %125 to i16
  br label %127

127:                                              ; preds = %120, %122, %124
  %128 = phi i16 [ %126, %124 ], [ 0, %120 ], [ -1, %122 ]
  %129 = uitofp i16 %128 to float
  br label %130

130:                                              ; preds = %117, %127
  %131 = phi float [ %89, %117 ], [ %129, %127 ]
  %132 = icmp eq i16 %100, -1
  %133 = fadd float %101, 5.000000e-01
  %134 = fptoui float %133 to i16
  %135 = zext i16 %134 to i64
  %136 = add nuw nsw i64 %135, 128
  %137 = select i1 %132, i64 65663, i64 %136
  %138 = lshr i64 %137, 8
  %139 = sub nsw i64 %137, %138
  %140 = lshr i64 %139, 10
  %141 = and i64 %140, 63
  %142 = icmp eq i16 %109, -1
  %143 = fadd float %110, 5.000000e-01
  %144 = fptoui float %143 to i16
  %145 = zext i16 %144 to i64
  %146 = add nuw nsw i64 %145, 128
  %147 = select i1 %142, i64 65663, i64 %146
  %148 = lshr i64 %147, 8
  %149 = sub nsw i64 %147, %148
  %150 = lshr i64 %149, 4
  %151 = and i64 %150, 4032
  %152 = or disjoint i64 %151, %141
  %153 = icmp eq i16 %118, -1
  %154 = fadd float %119, 5.000000e-01
  %155 = fptoui float %154 to i16
  %156 = zext i16 %155 to i64
  %157 = add nuw nsw i64 %156, 128
  %158 = select i1 %153, i64 65663, i64 %157
  %159 = lshr i64 %158, 8
  %160 = sub nsw i64 %158, %159
  %161 = shl nsw i64 %160, 2
  %162 = and i64 %161, 258048
  %163 = or disjoint i64 %152, %162
  br i1 %29, label %180, label %164

164:                                              ; preds = %130
  %165 = fcmp olt float %131, 0.000000e+00
  br i1 %165, label %173, label %166

166:                                              ; preds = %164
  %167 = fcmp ult float %131, 6.553500e+04
  br i1 %167, label %168, label %173

168:                                              ; preds = %166
  %169 = fadd float %131, 5.000000e-01
  %170 = fptoui float %169 to i16
  %171 = zext i16 %170 to i64
  %172 = add nuw nsw i64 %171, 128
  br label %173

173:                                              ; preds = %168, %166, %164
  %174 = phi i64 [ %172, %168 ], [ 128, %164 ], [ 65663, %166 ]
  %175 = lshr i64 %174, 8
  %176 = sub nsw i64 %174, %175
  %177 = shl nsw i64 %176, 8
  %178 = and i64 %177, 16515072
  %179 = or disjoint i64 %178, %163
  br label %180

180:                                              ; preds = %130, %173
  %181 = phi i64 [ %179, %173 ], [ %163, %130 ]
  %182 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 15
  %183 = load ptr, ptr %182, align 8, !tbaa !119
  %184 = getelementptr inbounds i64, ptr %183, i64 %181
  %185 = load i64, ptr %184, align 8, !tbaa !84
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %249

187:                                              ; preds = %180
  %188 = load ptr, ptr %2, align 8, !tbaa !116
  %189 = trunc i64 %139 to i32
  %190 = lshr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = trunc i64 %149 to i32
  %193 = lshr i32 %192, 8
  %194 = and i32 %193, 255
  %195 = trunc i64 %160 to i32
  %196 = lshr i32 %195, 8
  %197 = and i32 %196, 255
  %198 = fcmp olt float %131, 0.000000e+00
  %199 = fcmp oge float %131, 6.553500e+04
  %200 = fadd float %131, 5.000000e-01
  %201 = fptoui float %200 to i16
  %202 = zext i16 %201 to i64
  %203 = add nuw nsw i64 %202, 128
  %204 = select i1 %199, i64 65663, i64 %203
  %205 = select i1 %198, i64 128, i64 %204
  %206 = lshr i64 %205, 8
  %207 = sub nsw i64 %205, %206
  %208 = trunc i64 %207 to i32
  %209 = lshr i32 %208, 8
  %210 = and i32 %209, 255
  br label %214

211:                                              ; preds = %214
  %212 = add nsw i64 %216, -1
  %213 = icmp ugt i64 %216, 1
  br i1 %213, label %214, label %237, !llvm.loop !194

214:                                              ; preds = %187, %211
  %215 = phi ptr [ %188, %187 ], [ %235, %211 ]
  %216 = phi i64 [ 7, %187 ], [ %212, %211 ]
  %217 = trunc i64 %216 to i32
  %218 = lshr i32 %191, %217
  %219 = and i32 %218, 1
  %220 = lshr i32 %194, %217
  %221 = shl nuw nsw i32 %220, 1
  %222 = and i32 %221, 2
  %223 = or disjoint i32 %222, %219
  %224 = lshr i32 %197, %217
  %225 = shl nuw nsw i32 %224, 2
  %226 = and i32 %225, 4
  %227 = or disjoint i32 %223, %226
  %228 = lshr i32 %210, %217
  %229 = shl nuw nsw i32 %228, 3
  %230 = and i32 %229, 8
  %231 = or disjoint i32 %230, %227
  %232 = select i1 %29, i32 %227, i32 %231
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds %struct._NodeInfo, ptr %215, i64 0, i32 1, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !126
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %211

237:                                              ; preds = %214, %211
  %238 = phi ptr [ %215, %214 ], [ %235, %211 ]
  %239 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 5
  store float %101, ptr %239, align 8, !tbaa.struct !158
  %240 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 5, i32 1
  store float %110, ptr %240, align 4, !tbaa.struct !159
  %241 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 5, i32 2
  store float %119, ptr %241, align 8, !tbaa.struct !160
  %242 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 5, i32 3
  store float %131, ptr %242, align 4, !tbaa.struct !161
  %243 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 6
  store float 0x4210000000000000, ptr %243, align 8, !tbaa !162
  %244 = load ptr, ptr %238, align 8, !tbaa !114
  tail call fastcc void @ClosestColor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %244)
  %245 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 11
  %246 = load i64, ptr %245, align 8, !tbaa !163
  %247 = load ptr, ptr %182, align 8, !tbaa !119
  %248 = getelementptr inbounds i64, ptr %247, i64 %181
  store i64 %246, ptr %248, align 8, !tbaa !84
  br label %249

249:                                              ; preds = %237, %180
  %250 = load ptr, ptr %182, align 8, !tbaa !119
  %251 = getelementptr inbounds i64, ptr %250, i64 %181
  %252 = load i64, ptr %251, align 8, !tbaa !84
  %253 = load i32, ptr %0, align 8, !tbaa !83
  %254 = icmp eq i32 %253, 2
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = trunc i64 %252 to i16
  store i16 %256, ptr %26, align 2, !tbaa !78
  br label %257

257:                                              ; preds = %255, %249
  %258 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 18
  %259 = load ptr, ptr %258, align 8, !tbaa !117
  %260 = getelementptr inbounds %struct._QuantizeInfo, ptr %259, i64 0, i32 4
  %261 = load i32, ptr %260, align 8, !tbaa !44
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %280

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %265 = load ptr, ptr %264, align 8, !tbaa !73
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 %252, i32 2
  %267 = load i16, ptr %266, align 2, !tbaa !74
  %268 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 2
  store i16 %267, ptr %268, align 2, !tbaa !74
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 %252, i32 1
  %270 = load i16, ptr %269, align 2, !tbaa !75
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 1
  store i16 %270, ptr %271, align 2, !tbaa !75
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 %252
  %273 = load i16, ptr %272, align 2, !tbaa !76
  store i16 %273, ptr %23, align 2, !tbaa !76
  %274 = load i32, ptr %27, align 8, !tbaa !124
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %263
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 %252, i32 3
  %278 = load i16, ptr %277, align 2, !tbaa !77
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 3
  store i16 %278, ptr %279, align 2, !tbaa !77
  br label %280

280:                                              ; preds = %263, %276, %257
  %281 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %22) #21
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %369, label %283

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16
  %285 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 1
  %286 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %284, ptr noundef nonnull %285, i64 noundef 240) #18
  %287 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %288 = load ptr, ptr %287, align 8, !tbaa !73
  %289 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 %252
  %290 = load i32, ptr %27, align 8, !tbaa !124
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %283
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 %252, i32 3
  %294 = load i16, ptr %293, align 2, !tbaa !77
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %296, label %307

296:                                              ; preds = %292, %283
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 %252, i32 2
  %298 = load i16, ptr %297, align 2, !tbaa !74
  %299 = uitofp i16 %298 to float
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 %252, i32 1
  %301 = load i16, ptr %300, align 2, !tbaa !75
  %302 = uitofp i16 %301 to float
  %303 = load i16, ptr %289, align 2, !tbaa !76
  %304 = uitofp i16 %303 to float
  %305 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 %252, i32 3
  %306 = load i16, ptr %305, align 2, !tbaa !77
  br label %323

307:                                              ; preds = %292
  %308 = xor i16 %294, -1
  %309 = uitofp i16 %308 to double
  %310 = fmul double %309, 0x3EF0001000100010
  %311 = fptrunc double %310 to float
  %312 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 %252, i32 2
  %313 = load i16, ptr %312, align 2, !tbaa !74
  %314 = uitofp i16 %313 to float
  %315 = fmul float %311, %314
  %316 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 %252, i32 1
  %317 = load i16, ptr %316, align 2, !tbaa !75
  %318 = uitofp i16 %317 to float
  %319 = fmul float %311, %318
  %320 = load i16, ptr %289, align 2, !tbaa !76
  %321 = uitofp i16 %320 to float
  %322 = fmul float %311, %321
  br label %323

323:                                              ; preds = %296, %307
  %324 = phi i16 [ %306, %296 ], [ %294, %307 ]
  %325 = phi float [ %304, %296 ], [ %322, %307 ]
  %326 = phi float [ %302, %296 ], [ %319, %307 ]
  %327 = phi float [ %299, %296 ], [ %315, %307 ]
  %328 = fsub float %101, %327
  %329 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15
  store float %328, ptr %329, align 8, !tbaa !153
  %330 = fsub float %110, %326
  %331 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15, i32 1
  store float %330, ptr %331, align 4, !tbaa !154
  %332 = fsub float %119, %325
  %333 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15, i32 2
  store float %332, ptr %333, align 8, !tbaa !155
  br i1 %291, label %338, label %334

334:                                              ; preds = %323
  %335 = uitofp i16 %324 to float
  %336 = fsub float %131, %335
  %337 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15, i32 3
  store float %336, ptr %337, align 4, !tbaa !156
  br label %338

338:                                              ; preds = %334, %323
  %339 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 23
  %340 = load i64, ptr %339, align 8, !tbaa !167
  %341 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 24
  %342 = load i64, ptr %341, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %343 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %344 = load ptr, ptr %343, align 8, !tbaa !80
  %345 = icmp eq ptr %344, null
  br i1 %345, label %354, label %346

346:                                              ; preds = %338
  %347 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %348 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, ptr noundef nonnull %347) #18
  %349 = load ptr, ptr %343, align 8, !tbaa !80
  %350 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %351 = load ptr, ptr %350, align 8, !tbaa !81
  %352 = call i32 %349(ptr noundef nonnull %5, i64 noundef %340, i64 noundef %342, ptr noundef %351) #18
  %353 = icmp eq i32 %352, 0
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  br i1 %353, label %369, label %355

354:                                              ; preds = %338
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  br label %355

355:                                              ; preds = %354, %346
  %356 = load i64, ptr %339, align 8, !tbaa !167
  %357 = add nsw i64 %356, 1
  store i64 %357, ptr %339, align 8, !tbaa !167
  br label %358

358:                                              ; preds = %355, %17, %13, %9, %4
  switch i32 %3, label %369 [
    i32 4, label %364
    i32 6, label %359
    i32 2, label %360
    i32 8, label %362
  ]

359:                                              ; preds = %358
  br label %364

360:                                              ; preds = %358
  %361 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 21
  br label %364

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 21
  br label %364

364:                                              ; preds = %358, %362, %360, %359
  %365 = phi ptr [ %6, %359 ], [ %361, %360 ], [ %363, %362 ], [ %6, %358 ]
  %366 = phi i64 [ 1, %359 ], [ -1, %360 ], [ 1, %362 ], [ -1, %358 ]
  %367 = load i64, ptr %365, align 8, !tbaa !84
  %368 = add nsw i64 %367, %366
  store i64 %368, ptr %365, align 8, !tbaa !84
  br label %369

369:                                              ; preds = %364, %358, %21, %280, %346
  ret void
}

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @QuantizeErrorFlatten(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 {
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %6 = load i64, ptr %5, align 8, !tbaa !113
  %7 = icmp sgt i64 %6, %2
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 4
  %10 = load float, ptr %9, align 8, !tbaa !130
  %11 = getelementptr inbounds float, ptr %3, i64 %2
  store float %10, ptr %11, align 4, !tbaa !120
  %12 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %13 = load i32, ptr %12, align 8, !tbaa !124
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i64 8, i64 16
  br label %16

16:                                               ; preds = %8, %26
  %17 = phi i64 [ 1, %8 ], [ %27, %26 ]
  %18 = phi i64 [ 0, %8 ], [ %28, %26 ]
  %19 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !126
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = add i64 %17, %2
  %24 = tail call fastcc i64 @QuantizeErrorFlatten(ptr noundef %0, ptr noundef nonnull %20, i64 noundef %23, ptr noundef %3)
  %25 = add i64 %24, %17
  br label %26

26:                                               ; preds = %16, %22
  %27 = phi i64 [ %25, %22 ], [ %17, %16 ]
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %15
  br i1 %29, label %30, label %16, !llvm.loop !195

30:                                               ; preds = %26, %4
  %31 = phi i64 [ 0, %4 ], [ %27, %26 ]
  ret i64 %31
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @MagickRealTypeCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = load float, ptr %0, align 4, !tbaa !120
  %4 = load float, ptr %1, align 4, !tbaa !120
  %5 = fcmp ogt float %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = fsub float %4, %3
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fpext float %8 to double
  %10 = fcmp ugt double %9, 1.000000e-15
  %11 = sext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 1, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Reduce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !124
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @Reduce(ptr noundef %0, ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !196

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 4
  %18 = load float, ptr %17, align 8, !tbaa !130
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 7
  %20 = load float, ptr %19, align 4, !tbaa !144
  %21 = fcmp ugt float %18, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef %0, ptr noundef %1)
  br label %36

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !132
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !129
  %30 = add i64 %29, 1
  store i64 %30, ptr %28, align 8, !tbaa !129
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 8
  %33 = load float, ptr %32, align 8, !tbaa !143
  %34 = fcmp olt float %18, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store float %18, ptr %32, align 8, !tbaa !143
  br label %36

36:                                               ; preds = %31, %35, %22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !74
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !75
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i16, ptr %0, align 2, !tbaa !76
  %10 = icmp eq i16 %6, %9
  br i1 %10, label %26, label %11

11:                                               ; preds = %8, %2
  %12 = uitofp i16 %4 to double
  %13 = uitofp i16 %6 to double
  %14 = fmul double %13, 0x3FE6E29307AF20EA
  %15 = tail call double @llvm.fmuladd.f64(double %12, double 2.126560e-01, double %14)
  %16 = load i16, ptr %0, align 2, !tbaa !76
  %17 = uitofp i16 %16 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 7.218600e-02, double %15)
  %19 = fptrunc double %18 to float
  %20 = fcmp ugt float %19, 0.000000e+00
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = fcmp ult float %19, 6.553500e+04
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = fadd float %19, 5.000000e-01
  %25 = fptoui float %24 to i16
  br label %26

26:                                               ; preds = %8, %11, %21, %23
  %27 = phi i16 [ %4, %8 ], [ %25, %23 ], [ 0, %11 ], [ -1, %21 ]
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %29 = load i16, ptr %28, align 2, !tbaa !74
  %30 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !75
  %32 = icmp eq i16 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i16, ptr %1, align 2, !tbaa !76
  %35 = icmp eq i16 %31, %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %33, %26
  %37 = uitofp i16 %29 to double
  %38 = uitofp i16 %31 to double
  %39 = fmul double %38, 0x3FE6E29307AF20EA
  %40 = tail call double @llvm.fmuladd.f64(double %37, double 2.126560e-01, double %39)
  %41 = load i16, ptr %1, align 2, !tbaa !76
  %42 = uitofp i16 %41 to double
  %43 = tail call double @llvm.fmuladd.f64(double %42, double 7.218600e-02, double %40)
  %44 = fptrunc double %43 to float
  %45 = fcmp ugt float %44, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = fcmp ult float %44, 6.553500e+04
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = fadd float %44, 5.000000e-01
  %50 = fptoui float %49 to i16
  br label %51

51:                                               ; preds = %33, %36, %46, %48
  %52 = phi i16 [ %29, %33 ], [ %50, %48 ], [ 0, %36 ], [ -1, %46 ]
  %53 = zext i16 %27 to i32
  %54 = zext i16 %52 to i32
  %55 = sub nsw i32 %53, %54
  ret i32 %55
}

declare i32 @IsMonochromeImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { noreturn nounwind }
attributes #21 = { hot nounwind }
attributes #22 = { nounwind allocsize(0,1) }

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
!39 = !{!"_QuantizeInfo", !40, i64 0, !40, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !40, i64 32, !35, i64 40}
!40 = !{!"long", !36, i64 0}
!41 = !{!39, !35, i64 16}
!42 = !{!39, !35, i64 40}
!43 = !{!39, !35, i64 20}
!44 = !{!39, !35, i64 24}
!45 = !{!39, !40, i64 32}
!46 = !{!47, !35, i64 184}
!47 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !40, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !49, i64 144, !49, i64 152, !50, i64 160, !50, i64 168, !50, i64 176, !35, i64 184, !35, i64 188, !40, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !40, i64 216, !35, i64 224, !35, i64 228, !48, i64 232, !48, i64 240, !35, i64 248, !48, i64 256, !48, i64 264, !48, i64 272, !48, i64 280, !48, i64 288, !48, i64 296, !48, i64 304, !48, i64 312, !40, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !48, i64 16720, !40, i64 16728, !40, i64 16736, !50, i64 16744, !40, i64 16752, !35, i64 16760, !50, i64 16764, !48, i64 16776, !35, i64 16784}
!48 = !{!"any pointer", !36, i64 0}
!49 = !{!"double", !36, i64 0}
!50 = !{!"_PixelPacket", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!51 = !{!"short", !36, i64 0}
!52 = !{!47, !35, i64 228}
!53 = !{!39, !40, i64 8}
!54 = !{!55, !35, i64 12976}
!55 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !48, i64 72, !50, i64 80, !50, i64 88, !50, i64 96, !49, i64 104, !56, i64 112, !35, i64 208, !48, i64 216, !35, i64 224, !48, i64 232, !48, i64 240, !48, i64 248, !40, i64 256, !49, i64 264, !49, i64 272, !58, i64 280, !58, i64 312, !58, i64 344, !49, i64 376, !49, i64 384, !49, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !48, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !59, i64 480, !60, i64 504, !48, i64 568, !48, i64 576, !48, i64 584, !48, i64 592, !48, i64 600, !48, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !40, i64 12904, !40, i64 12912, !62, i64 12920, !35, i64 12976, !40, i64 12984, !48, i64 12992, !63, i64 13000, !63, i64 13032, !48, i64 13064, !40, i64 13072, !40, i64 13080, !48, i64 13088, !48, i64 13096, !48, i64 13104, !35, i64 13112, !35, i64 13116, !50, i64 13120, !48, i64 13128, !58, i64 13136, !48, i64 13168, !48, i64 13176, !35, i64 13184, !35, i64 13188, !64, i64 13192, !35, i64 13200, !40, i64 13208, !40, i64 13216, !35, i64 13224, !40, i64 13232}
!56 = !{!"_ChromaticityInfo", !57, i64 0, !57, i64 24, !57, i64 48, !57, i64 72}
!57 = !{!"_PrimaryInfo", !49, i64 0, !49, i64 8, !49, i64 16}
!58 = !{!"_RectangleInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!59 = !{!"_ErrorInfo", !49, i64 0, !49, i64 8, !49, i64 16}
!60 = !{!"_TimerInfo", !61, i64 0, !61, i64 24, !35, i64 48, !40, i64 56}
!61 = !{!"_Timer", !49, i64 0, !49, i64 8, !49, i64 16}
!62 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !48, i64 8, !48, i64 16, !48, i64 24, !35, i64 32, !48, i64 40, !40, i64 48}
!63 = !{!"_ProfileInfo", !48, i64 0, !40, i64 8, !48, i64 16, !40, i64 24}
!64 = !{!"long long", !36, i64 0}
!65 = !{!55, !40, i64 64}
!66 = !{i32 0, i32 2}
!67 = !{!55, !35, i64 32}
!68 = !{!55, !40, i64 40}
!69 = !{!55, !40, i64 48}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!55, !48, i64 72}
!74 = !{!50, !51, i64 4}
!75 = !{!50, !51, i64 2}
!76 = !{!50, !51, i64 0}
!77 = !{!50, !51, i64 6}
!78 = !{!51, !51, i64 0}
!79 = distinct !{!79, !71, !72}
!80 = !{!55, !48, i64 568}
!81 = !{!55, !48, i64 576}
!82 = !{!55, !35, i64 13184}
!83 = !{!55, !35, i64 0}
!84 = !{!40, !40, i64 0}
!85 = distinct !{!85, !71, !72}
!86 = distinct !{!86, !71, !72}
!87 = distinct !{!87, !71, !72}
!88 = distinct !{!88, !71, !72}
!89 = distinct !{!89, !71, !72}
!90 = distinct !{!90, !71, !72}
!91 = distinct !{!91, !71, !72}
!92 = !{!55, !40, i64 464}
!93 = distinct !{!93, !71, !72}
!94 = distinct !{!94, !71, !72}
!95 = !{!55, !49, i64 480}
!96 = !{!55, !49, i64 488}
!97 = !{!55, !49, i64 496}
!98 = distinct !{!98, !71, !72}
!99 = !{!55, !35, i64 4}
!100 = distinct !{!100, !71, !72}
!101 = distinct !{!101, !71, !72}
!102 = !{!103, !40, i64 480}
!103 = !{!"_CubeInfo", !48, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !64, i64 32, !104, i64 40, !105, i64 56, !105, i64 60, !105, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !36, i64 128, !36, i64 384, !48, i64 448, !35, i64 456, !40, i64 464, !40, i64 472, !40, i64 480, !64, i64 488, !64, i64 496}
!104 = !{!"_RealPixelPacket", !105, i64 0, !105, i64 4, !105, i64 8, !105, i64 12}
!105 = !{!"float", !36, i64 0}
!106 = !{!103, !40, i64 16}
!107 = !{!103, !40, i64 80}
!108 = !{!109, !48, i64 0}
!109 = !{!"_Nodes", !48, i64 0, !48, i64 8}
!110 = !{!103, !48, i64 104}
!111 = !{!109, !48, i64 8}
!112 = !{!103, !48, i64 96}
!113 = !{!103, !40, i64 72}
!114 = !{!115, !48, i64 0}
!115 = !{!"_NodeInfo", !48, i64 0, !36, i64 8, !64, i64 136, !104, i64 144, !105, i64 160, !40, i64 168, !40, i64 176, !40, i64 184}
!116 = !{!103, !48, i64 0}
!117 = !{!103, !48, i64 448}
!118 = !{!103, !48, i64 112}
!119 = !{!103, !48, i64 120}
!120 = !{!105, !105, i64 0}
!121 = distinct !{!121, !71, !72}
!122 = distinct !{!122, !71, !72}
!123 = distinct !{!123, !71, !72}
!124 = !{!103, !35, i64 456}
!125 = distinct !{!125, !71, !72}
!126 = !{!48, !48, i64 0}
!127 = !{!115, !40, i64 176}
!128 = !{!115, !40, i64 184}
!129 = !{!103, !40, i64 8}
!130 = !{!115, !105, i64 160}
!131 = distinct !{!131, !71, !72}
!132 = !{!115, !64, i64 136}
!133 = !{!115, !105, i64 144}
!134 = !{!115, !105, i64 148}
!135 = !{!115, !105, i64 152}
!136 = !{!115, !105, i64 156}
!137 = distinct !{!137, !71, !72}
!138 = distinct !{!138, !71, !72}
!139 = distinct !{!139, !71, !72}
!140 = distinct !{!140, !71, !72}
!141 = distinct !{!141, !71, !72}
!142 = distinct !{!142, !71, !72}
!143 = !{!103, !105, i64 64}
!144 = !{!103, !105, i64 60}
!145 = distinct !{!145, !71, !72}
!146 = !{!103, !64, i64 32}
!147 = !{!103, !40, i64 24}
!148 = distinct !{!148, !71, !72}
!149 = distinct !{!149, !71, !72}
!150 = !{i64 0, i64 8, !126, i64 8, i64 8, !84, i64 16, i64 8, !84, i64 24, i64 8, !84, i64 32, i64 8, !151, i64 40, i64 4, !120, i64 44, i64 4, !120, i64 48, i64 4, !120, i64 52, i64 4, !120, i64 56, i64 4, !120, i64 60, i64 4, !120, i64 64, i64 4, !120, i64 72, i64 8, !84, i64 80, i64 8, !84, i64 88, i64 8, !84, i64 96, i64 8, !126, i64 104, i64 8, !126, i64 112, i64 8, !126, i64 120, i64 8, !126, i64 128, i64 256, !152, i64 384, i64 64, !152, i64 448, i64 8, !126, i64 456, i64 4, !34, i64 464, i64 8, !84, i64 472, i64 8, !84, i64 480, i64 8, !84, i64 488, i64 8, !151, i64 496, i64 8, !151}
!151 = !{!64, !64, i64 0}
!152 = !{!36, !36, i64 0}
!153 = !{!104, !105, i64 0}
!154 = !{!104, !105, i64 4}
!155 = !{!104, !105, i64 8}
!156 = !{!104, !105, i64 12}
!157 = distinct !{!157, !71, !72}
!158 = !{i64 0, i64 4, !120, i64 4, i64 4, !120, i64 8, i64 4, !120, i64 12, i64 4, !120}
!159 = !{i64 0, i64 4, !120, i64 4, i64 4, !120, i64 8, i64 4, !120}
!160 = !{i64 0, i64 4, !120, i64 4, i64 4, !120}
!161 = !{i64 0, i64 4, !120}
!162 = !{!103, !105, i64 56}
!163 = !{!103, !40, i64 88}
!164 = distinct !{!164, !71, !72}
!165 = distinct !{!165, !71, !72}
!166 = distinct !{!166, !71, !72}
!167 = !{!103, !64, i64 488}
!168 = !{!103, !64, i64 496}
!169 = distinct !{!169, !71, !72}
!170 = distinct !{!170, !71, !72}
!171 = distinct !{!171, !71, !72}
!172 = distinct !{!172, !71, !72}
!173 = distinct !{!173, !71, !72}
!174 = !{!175}
!175 = distinct !{!175, !176, !"GetPixelLuma: argument 0"}
!176 = distinct !{!176, !"GetPixelLuma"}
!177 = !{!178}
!178 = distinct !{!178, !176, !"GetPixelLuma: argument 1"}
!179 = distinct !{!179, !71, !72}
!180 = distinct !{!180, !71, !72}
!181 = distinct !{!181, !71, !72}
!182 = distinct !{!182, !71, !72}
!183 = distinct !{!183, !71, !72}
!184 = distinct !{!184, !71, !72}
!185 = distinct !{!185, !71, !72}
!186 = distinct !{!186, !71, !72}
!187 = distinct !{!187, !71, !72}
!188 = distinct !{!188, !71, !72}
!189 = !{!115, !40, i64 168}
!190 = distinct !{!190, !71, !72}
!191 = !{!103, !40, i64 464}
!192 = !{!103, !40, i64 472}
!193 = distinct !{!193, !71, !72}
!194 = distinct !{!194, !71, !72}
!195 = distinct !{!195, !71, !72}
!196 = distinct !{!196, !71, !72}
