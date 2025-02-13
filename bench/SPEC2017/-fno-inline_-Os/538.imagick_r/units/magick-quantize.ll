; ModuleID = 'magick/quantize.c'
source_filename = "magick/quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }
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
%struct._NodeInfo = type { ptr, [16 x ptr], i64, %struct._RealPixelPacket, float, i64, i64, i64 }
%struct._Nodes = type { ptr, ptr }

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
@switch.table.Riemersma = private unnamed_addr constant [7 x i32] [i32 8, i32 6, i32 6, i32 6, i32 4, i32 6, i32 2], align 4
@switch.table.Riemersma.13 = private unnamed_addr constant [7 x i32] [i32 6, i32 8, i32 8, i32 8, i32 2, i32 8, i32 4], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireQuantizeInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #19
  call void @GetExceptionInfo(ptr noundef nonnull %2) #20
  %6 = tail call ptr @__errno_location() #21
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #20
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 377, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #20
  %10 = call ptr @DestroyString(ptr noundef %8) #20
  call void @CatchException(ptr noundef nonnull %2) #20
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #22
  unreachable

12:                                               ; preds = %1
  tail call void @GetQuantizeInfo(ptr noundef nonnull %3) #23
  %13 = icmp eq ptr %0, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !45
  %18 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = tail call i64 @ParseCommandOption(i32 noundef 21, i32 noundef 0, ptr noundef nonnull %18) #20
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 6
  store i32 %22, ptr %23, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 35
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 4
  store i32 %26, ptr %27, align 8, !tbaa !49
  br label %28

28:                                               ; preds = %24, %12
  ret ptr %3
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
define dso_local void @GetQuantizeInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #20
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 48) #20
  store i64 256, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 6
  store i32 2, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 5
  store i64 2880220587, ptr %8, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneQuantizeInfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #19
  call void @GetExceptionInfo(ptr noundef nonnull %2) #20
  %6 = tail call ptr @__errno_location() #21
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #20
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1021, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #20
  %10 = call ptr @DestroyString(ptr noundef %8) #20
  call void @CatchException(ptr noundef nonnull %2) #20
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #22
  unreachable

12:                                               ; preds = %1
  tail call void @GetQuantizeInfo(ptr noundef nonnull %3) #23
  %13 = icmp eq ptr %0, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %12
  %15 = load <2 x i64>, ptr %0, align 8, !tbaa !53
  store <2 x i64> %15, ptr %3, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 6
  store i32 %19, ptr %20, align 8, !tbaa !47
  %21 = load <2 x i32>, ptr %16, align 8, !tbaa !34
  store <2 x i32> %21, ptr %17, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 4
  store i32 %23, ptr %24, align 8, !tbaa !49
  br label %25

25:                                               ; preds = %12, %14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CompressImageColormap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._QuantizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1163, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call i32 @IsPaletteImage(ptr noundef nonnull %0, ptr noundef nonnull %10) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  call void @GetQuantizeInfo(ptr noundef nonnull %2) #23
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %15 = load i64, ptr %14, align 8, !tbaa !65
  store i64 %15, ptr %2, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct._QuantizeInfo, ptr %2, i64 0, i32 1
  store i64 8, ptr %16, align 8, !tbaa !66
  %17 = call i32 @QuantizeImage(ptr noundef nonnull %2, ptr noundef nonnull %0) #23, !range !67
  br label %18

18:                                               ; preds = %9, %13
  %19 = phi i32 [ %17, %13 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsPaletteImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QuantizeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2695, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i64, ptr %0, align 8, !tbaa !50
  %11 = icmp eq i64 %10, 0
  %12 = tail call i64 @llvm.umin.i64(i64 %10, i64 65536)
  %13 = select i1 %11, i64 65536, i64 %12
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !70
  %22 = mul i64 %21, %19
  %23 = icmp ugt i64 %22, %13
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  tail call fastcc void @DirectToColormapImage(ptr noundef nonnull %1, ptr noundef nonnull %25) #23
  br label %26

26:                                               ; preds = %24, %17
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %28 = tail call i32 @IsGrayImage(ptr noundef nonnull %1, ptr noundef nonnull %27) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @SetGrayscaleImage(ptr noundef nonnull %1) #23
  br label %31

31:                                               ; preds = %26, %30, %9
  %32 = load i32, ptr %1, align 8, !tbaa !71
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %36 = load i64, ptr %35, align 8, !tbaa !65
  %37 = icmp ugt i64 %36, %13
  br i1 %37, label %38, label %84

38:                                               ; preds = %34, %31
  %39 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !66
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = icmp eq i64 %13, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ %47, %44 ], [ %13, %42 ]
  %46 = phi i64 [ %48, %44 ], [ 1, %42 ]
  %47 = lshr i64 %45, 2
  %48 = add nuw nsw i64 %46, 1
  %49 = icmp ult i64 %45, 4
  br i1 %49, label %50, label %44, !llvm.loop !72

50:                                               ; preds = %44, %42
  %51 = phi i64 [ 1, %42 ], [ %48, %44 ]
  %52 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !45
  %54 = icmp ne i32 %53, 0
  %55 = icmp ugt i64 %51, 2
  %56 = select i1 %54, i1 %55, i1 false
  %57 = sext i1 %56 to i64
  %58 = add i64 %51, %57
  %59 = load i32, ptr %14, align 8, !tbaa !68
  %60 = icmp ne i32 %59, 0
  %61 = icmp ugt i64 %58, 5
  %62 = select i1 %60, i1 %61, i1 false
  %63 = sext i1 %62 to i64
  %64 = add i64 %58, %63
  %65 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %66 = tail call i32 @IsGrayImage(ptr noundef nonnull %1, ptr noundef nonnull %65) #20
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i64 %64, i64 8
  br label %69

69:                                               ; preds = %50, %38
  %70 = phi i64 [ %68, %50 ], [ %40, %38 ]
  %71 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef %70, i64 noundef %13) #23
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  br i1 %72, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %76 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %73, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2736, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %75) #20
  br label %84

77:                                               ; preds = %69
  %78 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %71, ptr noundef nonnull %1, ptr noundef nonnull %73) #23, !range !67
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  tail call fastcc void @ReduceImageColors(ptr noundef nonnull %1, ptr noundef nonnull %71) #23
  %81 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %1, ptr noundef nonnull %71) #23, !range !67
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %81, %80 ], [ 0, %77 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %71) #23
  br label %84

84:                                               ; preds = %34, %82, %74
  %85 = phi i32 [ 0, %74 ], [ %83, %82 ], [ 1, %34 ]
  ret i32 %85
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyQuantizeInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.6) #20
  %3 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 5
  store i64 -2880220588, ptr %3, align 8, !tbaa !52
  %4 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageQuantizeError(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2153, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = tail call i64 @GetNumberColors(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %9) #20
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 43
  store i64 %10, ptr %11, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 24) #20
  %14 = load i32, ptr %0, align 8, !tbaa !71
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %149, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !69
  %19 = uitofp i64 %18 to double
  %20 = fmul double %19, 3.000000e+00
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !70
  %23 = uitofp i64 %22 to double
  %24 = fmul double %20, %23
  %25 = fptrunc double %24 to float
  %26 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %9) #20
  %27 = load i64, ptr %21, align 8, !tbaa !70
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %140

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %32 = load i64, ptr %17, align 8, !tbaa !69
  br label %33

33:                                               ; preds = %29, %121
  %34 = phi i64 [ %32, %29 ], [ %44, %121 ]
  %35 = phi i64 [ 0, %29 ], [ %126, %121 ]
  %36 = phi float [ 0.000000e+00, %29 ], [ %124, %121 ]
  %37 = phi float [ 0.000000e+00, %29 ], [ %123, %121 ]
  %38 = phi float [ 0.000000e+00, %29 ], [ %122, %121 ]
  %39 = phi <2 x float> [ <float 1.000000e+00, float 1.000000e+00>, %29 ], [ %125, %121 ]
  %40 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef 0, i64 noundef %35, i64 noundef %34, i64 noundef 1, ptr noundef nonnull %9) #24
  %41 = icmp eq ptr %40, null
  br i1 %41, label %129, label %42

42:                                               ; preds = %33
  %43 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %26) #20
  %44 = load i64, ptr %17, align 8, !tbaa !69
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %121

46:                                               ; preds = %42
  %47 = icmp eq ptr %43, null
  %48 = load i32, ptr %30, align 8, !tbaa !68
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr %31, align 8, !tbaa !75
  br label %51

51:                                               ; preds = %46, %75
  %52 = phi i64 [ 0, %46 ], [ %119, %75 ]
  %53 = phi ptr [ %40, %46 ], [ %118, %75 ]
  %54 = phi float [ %36, %46 ], [ %114, %75 ]
  %55 = phi float [ %37, %46 ], [ %115, %75 ]
  %56 = phi float [ %38, %46 ], [ %117, %75 ]
  %57 = phi <2 x float> [ %39, %46 ], [ %76, %75 ]
  br i1 %47, label %62, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds i16, ptr %43, i64 %52
  %60 = load i16, ptr %59, align 2, !tbaa !76
  %61 = zext i16 %60 to i64
  br label %62

62:                                               ; preds = %51, %58
  %63 = phi i64 [ %61, %58 ], [ 0, %51 ]
  br i1 %49, label %75, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !77
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %63, i32 3
  %68 = load i16, ptr %67, align 2, !tbaa !77
  %69 = insertelement <2 x i16> poison, i16 %66, i64 0
  %70 = insertelement <2 x i16> %69, i16 %68, i64 1
  %71 = xor <2 x i16> %70, <i16 -1, i16 -1>
  %72 = uitofp <2 x i16> %71 to <2 x double>
  %73 = fmul <2 x double> %72, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %74 = fptrunc <2 x double> %73 to <2 x float>
  br label %75

75:                                               ; preds = %64, %62
  %76 = phi <2 x float> [ %74, %64 ], [ %57, %62 ]
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !78
  %79 = uitofp i16 %78 to float
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %63, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !78
  %82 = uitofp i16 %81 to float
  %83 = extractelement <2 x float> %76, i64 1
  %84 = fneg float %83
  %85 = fmul float %84, %82
  %86 = extractelement <2 x float> %76, i64 0
  %87 = tail call float @llvm.fmuladd.f32(float %86, float %79, float %85)
  %88 = tail call float @llvm.fabs.f32(float %87)
  %89 = fadd float %54, %88
  %90 = tail call float @llvm.fmuladd.f32(float %87, float %87, float %55)
  %91 = fcmp ogt float %88, %56
  %92 = select i1 %91, float %88, float %56
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  %94 = load i16, ptr %93, align 2, !tbaa !79
  %95 = uitofp i16 %94 to float
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %63, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !79
  %98 = uitofp i16 %97 to float
  %99 = fmul float %84, %98
  %100 = tail call float @llvm.fmuladd.f32(float %86, float %95, float %99)
  %101 = tail call float @llvm.fabs.f32(float %100)
  %102 = fadd float %89, %101
  %103 = tail call float @llvm.fmuladd.f32(float %100, float %100, float %90)
  %104 = fcmp ogt float %101, %92
  %105 = select i1 %104, float %101, float %92
  %106 = load i16, ptr %53, align 2, !tbaa !80
  %107 = uitofp i16 %106 to float
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %63
  %109 = load i16, ptr %108, align 2, !tbaa !80
  %110 = uitofp i16 %109 to float
  %111 = fmul float %84, %110
  %112 = tail call float @llvm.fmuladd.f32(float %86, float %107, float %111)
  %113 = tail call float @llvm.fabs.f32(float %112)
  %114 = fadd float %102, %113
  %115 = tail call float @llvm.fmuladd.f32(float %112, float %112, float %103)
  %116 = fcmp ogt float %113, %105
  %117 = select i1 %116, float %113, float %105
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %119 = add nuw nsw i64 %52, 1
  %120 = icmp eq i64 %119, %44
  br i1 %120, label %121, label %51, !llvm.loop !81

121:                                              ; preds = %75, %42
  %122 = phi float [ %38, %42 ], [ %117, %75 ]
  %123 = phi float [ %37, %42 ], [ %115, %75 ]
  %124 = phi float [ %36, %42 ], [ %114, %75 ]
  %125 = phi <2 x float> [ %39, %42 ], [ %76, %75 ]
  %126 = add nuw nsw i64 %35, 1
  %127 = load i64, ptr %21, align 8, !tbaa !70
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %33, label %129, !llvm.loop !82

129:                                              ; preds = %33, %121
  %130 = phi float [ %122, %121 ], [ %38, %33 ]
  %131 = phi float [ %123, %121 ], [ %37, %33 ]
  %132 = phi float [ %124, %121 ], [ %36, %33 ]
  %133 = fpext float %132 to double
  %134 = fpext float %131 to double
  %135 = fmul double %134, 0x3DF0002000300040
  %136 = fpext float %130 to double
  %137 = fmul double %136, 0x3EF0001000100010
  %138 = insertelement <2 x double> poison, double %133, i64 0
  %139 = insertelement <2 x double> %138, double %135, i64 1
  br label %140

140:                                              ; preds = %129, %16
  %141 = phi double [ 0.000000e+00, %16 ], [ %137, %129 ]
  %142 = phi <2 x double> [ zeroinitializer, %16 ], [ %139, %129 ]
  %143 = tail call ptr @DestroyCacheView(ptr noundef %26) #20
  %144 = fpext float %25 to double
  %145 = insertelement <2 x double> poison, double %144, i64 0
  %146 = shufflevector <2 x double> %145, <2 x double> poison, <2 x i32> zeroinitializer
  %147 = fdiv <2 x double> %142, %146
  store <2 x double> %147, ptr %12, align 8, !tbaa !83
  %148 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %141, ptr %148, align 8, !tbaa !84
  br label %149

149:                                              ; preds = %8, %140
  ret i32 1
}

; Function Attrs: optsize
declare i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PosterizeImage(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @PosterizeImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, i32 noundef %2) #23, !range !67
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PosterizeImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2333, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %4
  %12 = load i32, ptr %0, align 8, !tbaa !71
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %90

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !65
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %90

18:                                               ; preds = %14
  %19 = and i32 %1, 1
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %22 = add i64 %2, -1
  %23 = uitofp i64 %22 to double
  %24 = and i32 %1, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %1, 4
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %1, 8
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %18, %87
  %31 = phi i64 [ 0, %18 ], [ %88, %87 ]
  br i1 %20, label %45, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %21, align 8, !tbaa !75
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 %31, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !78
  %36 = uitofp i16 %35 to double
  %37 = fmul double %36, 0x3EF0001000100010
  %38 = fmul double %37, %23
  %39 = tail call fastcc double @MagickRound(double noundef %38) #23
  %40 = fmul double %39, 6.553500e+04
  %41 = tail call fastcc i64 @MagickMax(i64 noundef %22, i64 noundef 1) #23
  %42 = sitofp i64 %41 to double
  %43 = fdiv double %40, %42
  %44 = fptoui double %43 to i16
  store i16 %44, ptr %34, align 2, !tbaa !78
  br label %45

45:                                               ; preds = %32, %30
  br i1 %25, label %59, label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr %21, align 8, !tbaa !75
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 %31, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !79
  %50 = uitofp i16 %49 to double
  %51 = fmul double %50, 0x3EF0001000100010
  %52 = fmul double %51, %23
  %53 = tail call fastcc double @MagickRound(double noundef %52) #23
  %54 = fmul double %53, 6.553500e+04
  %55 = tail call fastcc i64 @MagickMax(i64 noundef %22, i64 noundef 1) #23
  %56 = sitofp i64 %55 to double
  %57 = fdiv double %54, %56
  %58 = fptoui double %57 to i16
  store i16 %58, ptr %48, align 2, !tbaa !79
  br label %59

59:                                               ; preds = %46, %45
  br i1 %27, label %73, label %60

60:                                               ; preds = %59
  %61 = load ptr, ptr %21, align 8, !tbaa !75
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %31
  %63 = load i16, ptr %62, align 2, !tbaa !80
  %64 = uitofp i16 %63 to double
  %65 = fmul double %64, 0x3EF0001000100010
  %66 = fmul double %65, %23
  %67 = tail call fastcc double @MagickRound(double noundef %66) #23
  %68 = fmul double %67, 6.553500e+04
  %69 = tail call fastcc i64 @MagickMax(i64 noundef %22, i64 noundef 1) #23
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %68, %70
  %72 = fptoui double %71 to i16
  store i16 %72, ptr %62, align 2, !tbaa !80
  br label %73

73:                                               ; preds = %60, %59
  br i1 %29, label %87, label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %21, align 8, !tbaa !75
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 %31, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !77
  %78 = uitofp i16 %77 to double
  %79 = fmul double %78, 0x3EF0001000100010
  %80 = fmul double %79, %23
  %81 = tail call fastcc double @MagickRound(double noundef %80) #23
  %82 = fmul double %81, 6.553500e+04
  %83 = tail call fastcc i64 @MagickMax(i64 noundef %22, i64 noundef 1) #23
  %84 = sitofp i64 %83 to double
  %85 = fdiv double %82, %84
  %86 = fptoui double %85 to i16
  store i16 %86, ptr %76, align 2, !tbaa !77
  br label %87

87:                                               ; preds = %73, %74
  %88 = add nuw nsw i64 %31, 1
  %89 = icmp eq i64 %88, %16
  br i1 %89, label %90, label %30, !llvm.loop !85

90:                                               ; preds = %87, %14, %11
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %92 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %91) #20
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %94 = load i64, ptr %93, align 8, !tbaa !70
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %223

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %98 = and i32 %1, 1
  %99 = icmp eq i32 %98, 0
  %100 = add i64 %2, -1
  %101 = uitofp i64 %100 to double
  %102 = and i32 %1, 2
  %103 = icmp eq i32 %102, 0
  %104 = and i32 %1, 4
  %105 = icmp eq i32 %104, 0
  %106 = and i32 %1, 8
  %107 = icmp eq i32 %106, 0
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %109 = and i32 %1, 32
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %113

113:                                              ; preds = %96, %217
  %114 = phi i32 [ 1, %96 ], [ %219, %217 ]
  %115 = phi i64 [ 0, %96 ], [ %220, %217 ]
  %116 = phi i64 [ 0, %96 ], [ %218, %217 ]
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %217, label %118

118:                                              ; preds = %113
  %119 = load i64, ptr %97, align 8, !tbaa !69
  %120 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %92, i64 noundef 0, i64 noundef %115, i64 noundef %119, i64 noundef 1, ptr noundef nonnull %91) #24
  %121 = icmp eq ptr %120, null
  br i1 %121, label %217, label %122

122:                                              ; preds = %118
  %123 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %92) #20
  %124 = load i64, ptr %97, align 8, !tbaa !69
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %205

126:                                              ; preds = %122
  %127 = icmp eq ptr %123, null
  br label %128

128:                                              ; preds = %126, %201
  %129 = phi i64 [ 0, %126 ], [ %203, %201 ]
  %130 = phi ptr [ %120, %126 ], [ %202, %201 ]
  br i1 %99, label %143, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 2
  %133 = load i16, ptr %132, align 2, !tbaa !78
  %134 = uitofp i16 %133 to double
  %135 = fmul double %134, 0x3EF0001000100010
  %136 = fmul double %135, %101
  %137 = tail call fastcc double @MagickRound(double noundef %136) #23
  %138 = fmul double %137, 6.553500e+04
  %139 = tail call fastcc i64 @MagickMax(i64 noundef %100, i64 noundef 1) #23
  %140 = sitofp i64 %139 to double
  %141 = fdiv double %138, %140
  %142 = fptoui double %141 to i16
  store i16 %142, ptr %132, align 2, !tbaa !78
  br label %143

143:                                              ; preds = %131, %128
  br i1 %103, label %156, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 1
  %146 = load i16, ptr %145, align 2, !tbaa !79
  %147 = uitofp i16 %146 to double
  %148 = fmul double %147, 0x3EF0001000100010
  %149 = fmul double %148, %101
  %150 = tail call fastcc double @MagickRound(double noundef %149) #23
  %151 = fmul double %150, 6.553500e+04
  %152 = tail call fastcc i64 @MagickMax(i64 noundef %100, i64 noundef 1) #23
  %153 = sitofp i64 %152 to double
  %154 = fdiv double %151, %153
  %155 = fptoui double %154 to i16
  store i16 %155, ptr %145, align 2, !tbaa !79
  br label %156

156:                                              ; preds = %144, %143
  br i1 %105, label %168, label %157

157:                                              ; preds = %156
  %158 = load i16, ptr %130, align 2, !tbaa !80
  %159 = uitofp i16 %158 to double
  %160 = fmul double %159, 0x3EF0001000100010
  %161 = fmul double %160, %101
  %162 = tail call fastcc double @MagickRound(double noundef %161) #23
  %163 = fmul double %162, 6.553500e+04
  %164 = tail call fastcc i64 @MagickMax(i64 noundef %100, i64 noundef 1) #23
  %165 = sitofp i64 %164 to double
  %166 = fdiv double %163, %165
  %167 = fptoui double %166 to i16
  store i16 %167, ptr %130, align 2, !tbaa !80
  br label %168

168:                                              ; preds = %157, %156
  br i1 %107, label %184, label %169

169:                                              ; preds = %168
  %170 = load i32, ptr %108, align 8, !tbaa !68
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 3
  %174 = load i16, ptr %173, align 2, !tbaa !77
  %175 = uitofp i16 %174 to double
  %176 = fmul double %175, 0x3EF0001000100010
  %177 = fmul double %176, %101
  %178 = tail call fastcc double @MagickRound(double noundef %177) #23
  %179 = fmul double %178, 6.553500e+04
  %180 = tail call fastcc i64 @MagickMax(i64 noundef %100, i64 noundef 1) #23
  %181 = sitofp i64 %180 to double
  %182 = fdiv double %179, %181
  %183 = fptoui double %182 to i16
  store i16 %183, ptr %173, align 2, !tbaa !77
  br label %184

184:                                              ; preds = %172, %169, %168
  br i1 %110, label %201, label %185

185:                                              ; preds = %184
  %186 = load i32, ptr %111, align 4, !tbaa !86
  %187 = icmp ne i32 %186, 12
  %188 = select i1 %187, i1 true, i1 %127
  br i1 %188, label %201, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds i16, ptr %123, i64 %129
  %191 = load i16, ptr %190, align 2, !tbaa !76
  %192 = uitofp i16 %191 to double
  %193 = fmul double %192, 0x3EF0001000100010
  %194 = fmul double %193, %101
  %195 = tail call fastcc double @MagickRound(double noundef %194) #23
  %196 = fmul double %195, 6.553500e+04
  %197 = tail call fastcc i64 @MagickMax(i64 noundef %100, i64 noundef 1) #23
  %198 = sitofp i64 %197 to double
  %199 = fdiv double %196, %198
  %200 = fptoui double %199 to i16
  store i16 %200, ptr %190, align 2, !tbaa !76
  br label %201

201:                                              ; preds = %189, %185, %184
  %202 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 1
  %203 = add nuw nsw i64 %129, 1
  %204 = icmp eq i64 %203, %124
  br i1 %204, label %205, label %128, !llvm.loop !87

205:                                              ; preds = %201, %122
  %206 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %92, ptr noundef nonnull %91) #24
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i32
  %209 = load ptr, ptr %112, align 8, !tbaa !88
  %210 = icmp eq ptr %209, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = add nsw i64 %116, 1
  %213 = load i64, ptr %93, align 8, !tbaa !70
  %214 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %116, i64 noundef %213) #23
  %215 = icmp eq i32 %214, 0
  %216 = select i1 %215, i32 0, i32 %208
  br label %217

217:                                              ; preds = %205, %211, %118, %113
  %218 = phi i64 [ %116, %113 ], [ %116, %118 ], [ %212, %211 ], [ %116, %205 ]
  %219 = phi i32 [ 0, %113 ], [ 0, %118 ], [ %216, %211 ], [ %208, %205 ]
  %220 = add nuw nsw i64 %115, 1
  %221 = load i64, ptr %93, align 8, !tbaa !70
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %113, label %223, !llvm.loop !89

223:                                              ; preds = %217, %90
  %224 = tail call ptr @DestroyCacheView(ptr noundef %92) #20
  %225 = tail call ptr @AcquireQuantizeInfo(ptr noundef null) #23
  %226 = mul i64 %2, %2
  %227 = mul i64 %226, %2
  %228 = tail call fastcc i64 @MagickMin(i64 noundef %227) #23
  store i64 %228, ptr %225, align 8, !tbaa !50
  %229 = getelementptr inbounds %struct._QuantizeInfo, ptr %225, i64 0, i32 2
  store i32 %3, ptr %229, align 8, !tbaa !45
  %230 = getelementptr inbounds %struct._QuantizeInfo, ptr %225, i64 0, i32 1
  store i64 8, ptr %230, align 8, !tbaa !66
  %231 = tail call i32 @QuantizeImage(ptr noundef nonnull %225, ptr noundef nonnull %0) #23, !range !67
  %232 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %225) #23
  ret i32 %231
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickRound(double noundef %0) unnamed_addr #8 !PGOFuncName !90 {
  %2 = tail call double @llvm.floor.f64(double %0)
  %3 = fsub double %0, %2
  %4 = tail call double @llvm.ceil.f64(double %0)
  %5 = fsub double %4, %0
  %6 = fcmp olt double %3, %5
  %7 = select i1 %6, double %2, double %4
  ret double %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0, i64 noundef %1) unnamed_addr #8 !PGOFuncName !91 {
  %3 = tail call i64 @llvm.smax.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !PGOFuncName !92 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %10) #20
  %12 = load ptr, ptr %6, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #20
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #19
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #8 !PGOFuncName !94 {
  %2 = tail call i64 @llvm.smin.i64(i64 %0, i64 65537)
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DirectToColormapImage(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !95 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = mul i64 %6, %4
  %8 = tail call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %7) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2633, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %12) #20
  br label %66

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !65
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %1) #20
  %20 = load i64, ptr %5, align 8, !tbaa !70
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %24

24:                                               ; preds = %22, %56
  %25 = phi i64 [ 0, %22 ], [ %61, %56 ]
  %26 = phi i32 [ 1, %22 ], [ %60, %56 ]
  %27 = phi i64 [ 0, %22 ], [ %53, %56 ]
  %28 = load i64, ptr %3, align 8, !tbaa !69
  %29 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %19, i64 noundef 0, i64 noundef %25, i64 noundef %28, i64 noundef 1, ptr noundef %1) #24
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %31

31:                                               ; preds = %24
  %32 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %19) #20
  %33 = load i64, ptr %3, align 8, !tbaa !69
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load ptr, ptr %23, align 8, !tbaa !75
  %37 = icmp eq ptr %32, null
  br label %38

38:                                               ; preds = %35, %47
  %39 = phi i64 [ 0, %35 ], [ %50, %47 ]
  %40 = phi ptr [ %29, %35 ], [ %49, %47 ]
  %41 = phi i64 [ %27, %35 ], [ %48, %47 ]
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %41
  %43 = load <4 x i16>, ptr %40, align 2, !tbaa !76
  store <4 x i16> %43, ptr %42, align 2, !tbaa !76
  br i1 %37, label %47, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds i16, ptr %32, i64 %39
  %46 = trunc i64 %41 to i16
  store i16 %46, ptr %45, align 2, !tbaa !76
  br label %47

47:                                               ; preds = %44, %38
  %48 = add nsw i64 %41, 1
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %40, i64 1
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, %33
  br i1 %51, label %52, label %38, !llvm.loop !96

52:                                               ; preds = %47, %31
  %53 = phi i64 [ %27, %31 ], [ %48, %47 ]
  %54 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %19, ptr noundef %1) #24
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i64, ptr %5, align 8, !tbaa !70
  %58 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i64 noundef %25, i64 noundef %57) #23
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 0, i32 %26
  %61 = add nuw nsw i64 %25, 1
  %62 = load i64, ptr %5, align 8, !tbaa !70
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %24, label %64, !llvm.loop !97

64:                                               ; preds = %56, %24, %52, %18
  %65 = tail call ptr @DestroyCacheView(ptr noundef %19) #20
  br label %66

66:                                               ; preds = %14, %10, %64
  ret void
}

; Function Attrs: optsize
declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @SetGrayscaleImage(ptr noundef %0) unnamed_addr #0 !PGOFuncName !98 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %3 = load i32, ptr %2, align 8, !tbaa !99
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3345, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %12) #20
  br label %245

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !71
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %86, label %17

17:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %8, i8 -1, i64 524288, i1 false), !tbaa !53
  %18 = tail call i32 @AcquireImageColormap(ptr noundef nonnull %0, i64 noundef 65536) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3355, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %22) #20
  br label %245

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  store i64 0, ptr %25, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %26) #20
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !70
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %34

34:                                               ; preds = %31, %79
  %35 = phi i32 [ 1, %31 ], [ %80, %79 ]
  %36 = phi i64 [ 0, %31 ], [ %81, %79 ]
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %79, label %38

38:                                               ; preds = %34
  %39 = load i64, ptr %32, align 8, !tbaa !69
  %40 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %27, i64 noundef 0, i64 noundef %36, i64 noundef %39, i64 noundef 1, ptr noundef nonnull %26) #24
  %41 = icmp eq ptr %40, null
  br i1 %41, label %79, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %27) #20
  %44 = load i64, ptr %32, align 8, !tbaa !69
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = icmp eq ptr %43, null
  br label %48

48:                                               ; preds = %46, %70
  %49 = phi i64 [ 0, %46 ], [ %72, %70 ]
  %50 = phi ptr [ %40, %46 ], [ %71, %70 ]
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 2
  %52 = load i16, ptr %51, align 2, !tbaa !78
  %53 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %52) #23, !range !100
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %8, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !53
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i64, ptr %25, align 8, !tbaa !65
  store i64 %59, ptr %55, align 8, !tbaa !53
  %60 = load ptr, ptr %33, align 8, !tbaa !75
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 %59, i32 2
  store i16 %52, ptr %61, align 2, !tbaa !78
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 %59
  %63 = load <2 x i16>, ptr %50, align 2, !tbaa !76
  store <2 x i16> %63, ptr %62, align 2, !tbaa !76
  %64 = add i64 %59, 1
  store i64 %64, ptr %25, align 8, !tbaa !65
  br label %65

65:                                               ; preds = %58, %48
  br i1 %47, label %70, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds i16, ptr %43, i64 %49
  %68 = load i64, ptr %55, align 8, !tbaa !53
  %69 = trunc i64 %68 to i16
  store i16 %69, ptr %67, align 2, !tbaa !76
  br label %70

70:                                               ; preds = %66, %65
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 1
  %72 = add nuw nsw i64 %49, 1
  %73 = load i64, ptr %32, align 8, !tbaa !69
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %48, label %75, !llvm.loop !101

75:                                               ; preds = %70, %42
  %76 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %27, ptr noundef nonnull %26) #24
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  br label %79

79:                                               ; preds = %38, %34, %75
  %80 = phi i32 [ %78, %75 ], [ 0, %34 ], [ 0, %38 ]
  %81 = add nuw nsw i64 %36, 1
  %82 = load i64, ptr %28, align 8, !tbaa !70
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %34, label %84, !llvm.loop !102

84:                                               ; preds = %79, %24
  %85 = tail call ptr @DestroyCacheView(ptr noundef %27) #20
  br label %86

86:                                               ; preds = %84, %14
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %88 = load i64, ptr %87, align 8, !tbaa !65
  %89 = icmp sgt i64 %88, 0
  %90 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !75
  br i1 %89, label %92, label %152

92:                                               ; preds = %86
  %93 = add nuw i64 %88, 7
  %94 = and i64 %93, -8
  %95 = add nsw i64 %88, -1
  %96 = insertelement <8 x i64> poison, i64 %95, i64 0
  %97 = shufflevector <8 x i64> %96, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %98

98:                                               ; preds = %148, %92
  %99 = phi i64 [ 0, %92 ], [ %149, %148 ]
  %100 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %92 ], [ %150, %148 ]
  %101 = trunc i64 %99 to i16
  %102 = icmp ule <8 x i64> %100, %97
  %103 = extractelement <8 x i1> %102, i64 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %99, i32 3
  store i16 %101, ptr %105, align 2, !tbaa !77
  br label %106

106:                                              ; preds = %104, %98
  %107 = extractelement <8 x i1> %102, i64 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = or disjoint i64 %99, 1
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %109, i32 3
  %111 = or disjoint i16 %101, 1
  store i16 %111, ptr %110, align 2, !tbaa !77
  br label %112

112:                                              ; preds = %108, %106
  %113 = extractelement <8 x i1> %102, i64 2
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = or disjoint i64 %99, 2
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %115, i32 3
  %117 = or disjoint i16 %101, 2
  store i16 %117, ptr %116, align 2, !tbaa !77
  br label %118

118:                                              ; preds = %114, %112
  %119 = extractelement <8 x i1> %102, i64 3
  br i1 %119, label %120, label %124

120:                                              ; preds = %118
  %121 = or disjoint i64 %99, 3
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %121, i32 3
  %123 = or disjoint i16 %101, 3
  store i16 %123, ptr %122, align 2, !tbaa !77
  br label %124

124:                                              ; preds = %120, %118
  %125 = extractelement <8 x i1> %102, i64 4
  br i1 %125, label %126, label %130

126:                                              ; preds = %124
  %127 = or disjoint i64 %99, 4
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %127, i32 3
  %129 = or disjoint i16 %101, 4
  store i16 %129, ptr %128, align 2, !tbaa !77
  br label %130

130:                                              ; preds = %126, %124
  %131 = extractelement <8 x i1> %102, i64 5
  br i1 %131, label %132, label %136

132:                                              ; preds = %130
  %133 = or disjoint i64 %99, 5
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %133, i32 3
  %135 = or disjoint i16 %101, 5
  store i16 %135, ptr %134, align 2, !tbaa !77
  br label %136

136:                                              ; preds = %132, %130
  %137 = extractelement <8 x i1> %102, i64 6
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  %139 = or disjoint i64 %99, 6
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %139, i32 3
  %141 = or disjoint i16 %101, 6
  store i16 %141, ptr %140, align 2, !tbaa !77
  br label %142

142:                                              ; preds = %138, %136
  %143 = extractelement <8 x i1> %102, i64 7
  br i1 %143, label %144, label %148

144:                                              ; preds = %142
  %145 = or disjoint i64 %99, 7
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %145, i32 3
  %147 = or disjoint i16 %101, 7
  store i16 %147, ptr %146, align 2, !tbaa !77
  br label %148

148:                                              ; preds = %144, %142
  %149 = add i64 %99, 8
  %150 = add <8 x i64> %100, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %151 = icmp eq i64 %149, %94
  br i1 %151, label %152, label %98, !llvm.loop !103

152:                                              ; preds = %148, %86
  %153 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  tail call void @qsort(ptr noundef %91, i64 noundef %88, i64 noundef 8, ptr noundef nonnull @IntensityCompare) #20
  %154 = load i64, ptr %87, align 8, !tbaa !65
  %155 = tail call ptr @AcquireQuantumMemory(i64 noundef %154, i64 noundef 8) #25
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %159 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %160 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %158, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3421, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %159) #20
  br label %245

161:                                              ; preds = %152
  %162 = load ptr, ptr %153, align 8, !tbaa !75
  %163 = load i64, ptr %162, align 2
  store i64 %163, ptr %155, align 2
  %164 = load i64, ptr %87, align 8, !tbaa !65
  %165 = icmp sgt i64 %164, 0
  %166 = load ptr, ptr %153, align 8, !tbaa !75
  br i1 %165, label %167, label %192

167:                                              ; preds = %161, %180
  %168 = phi ptr [ %181, %180 ], [ %166, %161 ]
  %169 = phi i64 [ %187, %180 ], [ 0, %161 ]
  %170 = phi i64 [ %182, %180 ], [ 0, %161 ]
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 %170
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 %169
  %173 = tail call fastcc i32 @IsSameColor(ptr noundef nonnull %0, ptr noundef nonnull %171, ptr noundef %172) #23, !range !67
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %167
  %176 = add nsw i64 %170, 1
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 %176
  %178 = load i64, ptr %172, align 2
  store i64 %178, ptr %177, align 2
  %179 = load ptr, ptr %153, align 8, !tbaa !75
  br label %180

180:                                              ; preds = %175, %167
  %181 = phi ptr [ %179, %175 ], [ %168, %167 ]
  %182 = phi i64 [ %176, %175 ], [ %170, %167 ]
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %181, i64 %169, i32 3
  %184 = load i16, ptr %183, align 2, !tbaa !77
  %185 = zext i16 %184 to i64
  %186 = getelementptr inbounds i64, ptr %8, i64 %185
  store i64 %182, ptr %186, align 8, !tbaa !53
  %187 = add nuw nsw i64 %169, 1
  %188 = load i64, ptr %87, align 8, !tbaa !65
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %167, label %190, !llvm.loop !106

190:                                              ; preds = %180
  %191 = add nsw i64 %182, 1
  br label %192

192:                                              ; preds = %190, %161
  %193 = phi ptr [ %166, %161 ], [ %181, %190 ]
  %194 = phi i64 [ 1, %161 ], [ %191, %190 ]
  store i64 %194, ptr %87, align 8, !tbaa !65
  %195 = tail call ptr @RelinquishMagickMemory(ptr noundef %193) #20
  store ptr %155, ptr %153, align 8, !tbaa !75
  %196 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %197 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %196) #20
  %198 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %199 = load i64, ptr %198, align 8, !tbaa !70
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %239

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %203

203:                                              ; preds = %201, %234
  %204 = phi i32 [ 1, %201 ], [ %235, %234 ]
  %205 = phi i64 [ 0, %201 ], [ %236, %234 ]
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %234, label %207

207:                                              ; preds = %203
  %208 = load i64, ptr %202, align 8, !tbaa !69
  %209 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %197, i64 noundef 0, i64 noundef %205, i64 noundef %208, i64 noundef 1, ptr noundef nonnull %196) #24
  %210 = icmp eq ptr %209, null
  br i1 %210, label %234, label %211

211:                                              ; preds = %207
  %212 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %197) #20
  %213 = load i64, ptr %202, align 8, !tbaa !69
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = icmp eq ptr %212, null
  br label %217

217:                                              ; preds = %215, %227
  %218 = phi i64 [ 0, %215 ], [ %228, %227 ]
  br i1 %216, label %227, label %219

219:                                              ; preds = %217
  %220 = getelementptr inbounds i16, ptr %212, i64 %218
  %221 = load i16, ptr %220, align 2, !tbaa !76
  %222 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %221) #23, !range !100
  %223 = zext nneg i32 %222 to i64
  %224 = getelementptr inbounds i64, ptr %8, i64 %223
  %225 = load i64, ptr %224, align 8, !tbaa !53
  %226 = trunc i64 %225 to i16
  store i16 %226, ptr %220, align 2, !tbaa !76
  br label %227

227:                                              ; preds = %217, %219
  %228 = add nuw nsw i64 %218, 1
  %229 = icmp eq i64 %228, %213
  br i1 %229, label %230, label %217, !llvm.loop !107

230:                                              ; preds = %227, %211
  %231 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %197, ptr noundef nonnull %196) #24
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i32
  br label %234

234:                                              ; preds = %207, %203, %230
  %235 = phi i32 [ %233, %230 ], [ 0, %203 ], [ 0, %207 ]
  %236 = add nuw nsw i64 %205, 1
  %237 = load i64, ptr %198, align 8, !tbaa !70
  %238 = icmp slt i64 %236, %237
  br i1 %238, label %203, label %239, !llvm.loop !108

239:                                              ; preds = %234, %192
  %240 = tail call ptr @DestroyCacheView(ptr noundef %197) #20
  %241 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #20
  store i32 2, ptr %2, align 8, !tbaa !99
  %242 = tail call i32 @IsMonochromeImage(ptr noundef nonnull %0, ptr noundef nonnull %196) #20
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239
  store i32 1, ptr %2, align 8, !tbaa !99
  br label %245

245:                                              ; preds = %20, %239, %244, %10, %157
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @GetCubeInfo(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !PGOFuncName !109 {
  %4 = tail call dereferenceable_or_null(504) ptr @AcquireMagickMemory(i64 noundef 504) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 504) #20
  %8 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 22
  %9 = tail call i64 @llvm.umin.i64(i64 %1, i64 8)
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 2)
  store i64 %10, ptr %8, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 2
  store i64 %2, ptr %11, align 8, !tbaa !114
  %12 = tail call fastcc ptr @GetNodeInfo(ptr noundef nonnull %4, i64 noundef 0, i64 noundef 0, ptr noundef null) #23
  store ptr %12, ptr %4, align 8, !tbaa !115
  %13 = icmp eq ptr %12, null
  br i1 %13, label %64, label %14

14:                                               ; preds = %6
  store ptr %12, ptr %12, align 8, !tbaa !116
  %15 = tail call ptr @CloneQuantizeInfo(ptr noundef %0) #23
  %16 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 18
  store ptr %15, ptr %16, align 8, !tbaa !118
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !45
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %14
  %21 = tail call dereferenceable_or_null(134217728) ptr @AcquireVirtualMemory(i64 noundef 16777216, i64 noundef 8) #25
  %22 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 14
  store ptr %21, ptr %22, align 8, !tbaa !119
  %23 = icmp eq ptr %21, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %21) #20
  %26 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 15
  store ptr %25, ptr %26, align 8, !tbaa !120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(134217728) %25, i8 -1, i64 134217728, i1 false), !tbaa !53
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i64 [ %37, %27 ], [ 0, %24 ]
  %29 = phi float [ %36, %27 ], [ 1.000000e+00, %24 ]
  %30 = fpext float %29 to double
  %31 = tail call fastcc double @PerceptibleReciprocal(double noundef %30) #23
  %32 = fptrunc double %31 to float
  %33 = xor i64 %28, 15
  %34 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %33
  store float %32, ptr %34, align 4, !tbaa !121
  %35 = fmul double %30, 0x4000C1B77B6CEBED
  %36 = fptrunc double %35 to float
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, 16
  br i1 %38, label %39, label %27, !llvm.loop !122

39:                                               ; preds = %27, %39
  %40 = phi i64 [ %45, %39 ], [ 0, %27 ]
  %41 = phi float [ %44, %39 ], [ 0.000000e+00, %27 ]
  %42 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %40
  %43 = load float, ptr %42, align 4, !tbaa !121
  %44 = fadd float %41, %43
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, 16
  br i1 %46, label %47, label %39, !llvm.loop !123

47:                                               ; preds = %39, %47
  %48 = phi i64 [ %54, %47 ], [ 0, %39 ]
  %49 = phi float [ %53, %47 ], [ 0.000000e+00, %39 ]
  %50 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %48
  %51 = load float, ptr %50, align 4, !tbaa !121
  %52 = fdiv float %51, %44
  store float %52, ptr %50, align 4, !tbaa !121
  %53 = fadd float %49, %52
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, 16
  br i1 %55, label %56, label %47, !llvm.loop !124

56:                                               ; preds = %47
  %57 = fpext float %53 to double
  %58 = fsub double 1.000000e+00, %57
  %59 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17
  %60 = load float, ptr %59, align 8, !tbaa !121
  %61 = fpext float %60 to double
  %62 = fadd double %58, %61
  %63 = fptrunc double %62 to float
  store float %63, ptr %59, align 8, !tbaa !121
  br label %64

64:                                               ; preds = %20, %14, %6, %3, %56
  %65 = phi ptr [ %4, %56 ], [ null, %3 ], [ null, %6 ], [ %4, %14 ], [ null, %20 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ClassifyImageColors(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !125 {
  %4 = alloca %struct._RealPixelPacket, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  tail call fastcc void @SetAssociatedAlpha(ptr noundef %1, ptr noundef %0) #23
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct._QuantizeInfo, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !51
  switch i32 %8, label %9 [
    i32 0, label %11
    i32 12, label %11
  ]

9:                                                ; preds = %3
  %10 = tail call i32 @TransformImageColorspace(ptr noundef %1, i32 noundef %8) #20
  br label %18

11:                                               ; preds = %3, %3
  %12 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !86
  %14 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %13) #23, !range !67
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %1, i32 noundef 13) #20
  br label %18

18:                                               ; preds = %11, %16, %9
  %19 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %2) #20
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !70
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %218

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %25 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %26 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct._RealPixelPacket, ptr %4, i64 0, i32 1
  %29 = getelementptr inbounds %struct._RealPixelPacket, ptr %4, i64 0, i32 2
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %31 = getelementptr inbounds %struct._RealPixelPacket, ptr %4, i64 0, i32 3
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %33 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 2
  br label %34

34:                                               ; preds = %23, %214
  %35 = phi i64 [ 0, %23 ], [ %215, %214 ]
  %36 = phi float [ 0.000000e+00, %23 ], [ %204, %214 ]
  %37 = load i64, ptr %24, align 8, !tbaa !69
  %38 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %19, i64 noundef 0, i64 noundef %35, i64 noundef %37, i64 noundef 1, ptr noundef %2) #24
  %39 = icmp eq ptr %38, null
  br i1 %39, label %218, label %40

40:                                               ; preds = %34
  %41 = load i64, ptr %25, align 8, !tbaa !126
  %42 = icmp ugt i64 %41, 266817
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr %0, align 8, !tbaa !115
  tail call fastcc void @PruneLevel(ptr noundef nonnull %0, ptr noundef %44) #23
  %45 = load i64, ptr %26, align 8, !tbaa !110
  %46 = add i64 %45, -1
  store i64 %46, ptr %26, align 8, !tbaa !110
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i64, ptr %24, align 8, !tbaa !69
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %203

50:                                               ; preds = %47, %199
  %51 = phi i64 [ %201, %199 ], [ %48, %47 ]
  %52 = phi i64 [ %74, %199 ], [ 0, %47 ]
  %53 = phi ptr [ %200, %199 ], [ %38, %47 ]
  %54 = phi float [ %160, %199 ], [ %36, %47 ]
  %55 = add nsw i64 %52, 1
  %56 = icmp slt i64 %55, %51
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = sub i64 %51, %52
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %60 = tail call fastcc i32 @IsSameColor(ptr noundef %1, ptr noundef %53, ptr noundef nonnull %59) #23, !range !67
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %66

62:                                               ; preds = %66
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %68
  %64 = tail call fastcc i32 @IsSameColor(ptr noundef %1, ptr noundef %53, ptr noundef %63) #23, !range !67
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !llvm.loop !127

66:                                               ; preds = %57, %62
  %67 = phi i64 [ %68, %62 ], [ 1, %57 ]
  %68 = add i64 %67, 1
  %69 = icmp eq i64 %68, %58
  br i1 %69, label %72, label %62, !llvm.loop !127

70:                                               ; preds = %62
  %71 = add nsw i64 %68, %52
  br label %72

72:                                               ; preds = %66, %57, %70, %50
  %73 = phi i64 [ 1, %50 ], [ %68, %70 ], [ 1, %57 ], [ %58, %66 ]
  %74 = phi i64 [ %55, %50 ], [ %71, %70 ], [ %55, %57 ], [ %51, %66 ]
  call fastcc void @AssociateAlphaPixel(ptr noundef %0, ptr noundef %53, ptr noundef nonnull %4) #23
  %75 = load ptr, ptr %0, align 8, !tbaa !115
  %76 = load float, ptr %4, align 4
  %77 = load float, ptr %28, align 4
  %78 = load float, ptr %29, align 4
  %79 = load float, ptr %31, align 4
  %80 = uitofp i64 %73 to double
  br label %81

81:                                               ; preds = %72, %159
  %82 = phi i64 [ 1, %72 ], [ %163, %159 ]
  %83 = phi i64 [ 7, %72 ], [ %162, %159 ]
  %84 = phi float [ 3.276800e+04, %72 ], [ %91, %159 ]
  %85 = phi ptr [ %75, %72 ], [ %161, %159 ]
  %86 = phi float [ 3.276750e+04, %72 ], [ %97, %159 ]
  %87 = phi float [ 3.276750e+04, %72 ], [ %101, %159 ]
  %88 = phi float [ 3.276750e+04, %72 ], [ %105, %159 ]
  %89 = phi float [ 3.276750e+04, %72 ], [ %108, %159 ]
  %90 = phi float [ %54, %72 ], [ %160, %159 ]
  %91 = fmul float %84, 5.000000e-01
  %92 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %83) #23, !range !128
  %93 = and i64 %92, 1
  %94 = icmp eq i64 %93, 0
  %95 = fneg float %91
  %96 = select i1 %94, float %95, float %91
  %97 = fadd float %86, %96
  %98 = and i64 %92, 2
  %99 = icmp eq i64 %98, 0
  %100 = select i1 %99, float %95, float %91
  %101 = fadd float %87, %100
  %102 = and i64 %92, 4
  %103 = icmp eq i64 %102, 0
  %104 = select i1 %103, float %95, float %91
  %105 = fadd float %88, %104
  %106 = icmp ult i64 %92, 8
  %107 = select i1 %106, float %95, float %91
  %108 = fadd float %89, %107
  %109 = getelementptr inbounds %struct._NodeInfo, ptr %85, i64 0, i32 1, i64 %92
  %110 = load ptr, ptr %109, align 8, !tbaa !129
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %81
  %113 = tail call fastcc ptr @GetNodeInfo(ptr noundef nonnull %0, i64 noundef %92, i64 noundef %82, ptr noundef nonnull %85) #23
  store ptr %113, ptr %109, align 8, !tbaa !129
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 848, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %32) #20
  br label %159

117:                                              ; preds = %112
  %118 = icmp eq i64 %82, 8
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i64, ptr %27, align 8, !tbaa !130
  %121 = add i64 %120, 1
  store i64 %121, ptr %27, align 8, !tbaa !130
  br label %122

122:                                              ; preds = %117, %119, %81
  %123 = phi ptr [ %113, %117 ], [ %113, %119 ], [ %110, %81 ]
  %124 = fsub float %76, %97
  %125 = fpext float %124 to double
  %126 = fmul double %125, 0x3EF0001000100010
  %127 = fptrunc double %126 to float
  %128 = fsub float %77, %101
  %129 = fpext float %128 to double
  %130 = fmul double %129, 0x3EF0001000100010
  %131 = fptrunc double %130 to float
  %132 = fsub float %78, %105
  %133 = fpext float %132 to double
  %134 = fmul double %133, 0x3EF0001000100010
  %135 = fptrunc double %134 to float
  %136 = load i32, ptr %30, align 8, !tbaa !131
  %137 = icmp eq i32 %136, 0
  %138 = fsub float %79, %108
  %139 = fpext float %138 to double
  %140 = fmul double %139, 0x3EF0001000100010
  %141 = fptrunc double %140 to float
  %142 = select i1 %137, float %90, float %141
  %143 = fmul float %131, %131
  %144 = tail call float @llvm.fmuladd.f32(float %127, float %127, float %143)
  %145 = tail call float @llvm.fmuladd.f32(float %135, float %135, float %144)
  %146 = tail call float @llvm.fmuladd.f32(float %142, float %142, float %145)
  %147 = fpext float %146 to double
  %148 = tail call double @llvm.sqrt.f64(double %147)
  %149 = getelementptr inbounds %struct._NodeInfo, ptr %123, i64 0, i32 4
  %150 = load float, ptr %149, align 8, !tbaa !132
  %151 = fpext float %150 to double
  %152 = tail call double @llvm.fmuladd.f64(double %80, double %148, double %151)
  %153 = fptrunc double %152 to float
  store float %153, ptr %149, align 8, !tbaa !132
  %154 = load ptr, ptr %0, align 8, !tbaa !115
  %155 = getelementptr inbounds %struct._NodeInfo, ptr %154, i64 0, i32 4
  %156 = load float, ptr %155, align 8, !tbaa !132
  %157 = fadd float %156, %153
  store float %157, ptr %155, align 8, !tbaa !132
  %158 = add i64 %83, -1
  br label %159

159:                                              ; preds = %122, %115
  %160 = phi float [ %90, %115 ], [ %142, %122 ]
  %161 = phi ptr [ %85, %115 ], [ %123, %122 ]
  %162 = phi i64 [ %83, %115 ], [ %158, %122 ]
  %163 = add nuw nsw i64 %82, 1
  %164 = icmp eq i64 %163, 9
  br i1 %164, label %165, label %81, !llvm.loop !133

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct._NodeInfo, ptr %161, i64 0, i32 2
  %167 = load i64, ptr %166, align 8, !tbaa !134
  %168 = add i64 %167, %73
  store i64 %168, ptr %166, align 8, !tbaa !134
  %169 = fmul double %80, 0x3EF0001000100010
  %170 = tail call fastcc zeroext i16 @ClampPixel(float noundef %76) #23
  %171 = getelementptr inbounds %struct._NodeInfo, ptr %161, i64 0, i32 3
  %172 = tail call fastcc zeroext i16 @ClampPixel(float noundef %77) #23
  %173 = insertelement <2 x i16> poison, i16 %170, i64 0
  %174 = insertelement <2 x i16> %173, i16 %172, i64 1
  %175 = uitofp <2 x i16> %174 to <2 x double>
  %176 = load <2 x float>, ptr %171, align 8, !tbaa !121
  %177 = fpext <2 x float> %176 to <2 x double>
  %178 = insertelement <2 x double> poison, double %169, i64 0
  %179 = shufflevector <2 x double> %178, <2 x double> poison, <2 x i32> zeroinitializer
  %180 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %179, <2 x double> %175, <2 x double> %177)
  %181 = fptrunc <2 x double> %180 to <2 x float>
  store <2 x float> %181, ptr %171, align 8, !tbaa !121
  %182 = tail call fastcc zeroext i16 @ClampPixel(float noundef %78) #23
  %183 = uitofp i16 %182 to double
  %184 = getelementptr inbounds %struct._NodeInfo, ptr %161, i64 0, i32 3, i32 2
  %185 = load float, ptr %184, align 8, !tbaa !135
  %186 = fpext float %185 to double
  %187 = tail call double @llvm.fmuladd.f64(double %169, double %183, double %186)
  %188 = fptrunc double %187 to float
  store float %188, ptr %184, align 8, !tbaa !135
  %189 = load i32, ptr %30, align 8, !tbaa !131
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %165
  %192 = tail call fastcc zeroext i16 @ClampPixel(float noundef %79) #23
  %193 = uitofp i16 %192 to double
  %194 = getelementptr inbounds %struct._NodeInfo, ptr %161, i64 0, i32 3, i32 3
  %195 = load float, ptr %194, align 4, !tbaa !136
  %196 = fpext float %195 to double
  %197 = tail call double @llvm.fmuladd.f64(double %169, double %193, double %196)
  %198 = fptrunc double %197 to float
  store float %198, ptr %194, align 4, !tbaa !136
  br label %199

199:                                              ; preds = %191, %165
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %73
  %201 = load i64, ptr %24, align 8, !tbaa !69
  %202 = icmp slt i64 %74, %201
  br i1 %202, label %50, label %203, !llvm.loop !137

203:                                              ; preds = %199, %47
  %204 = phi float [ %36, %47 ], [ %160, %199 ]
  %205 = load i64, ptr %27, align 8, !tbaa !130
  %206 = load i64, ptr %33, align 8, !tbaa !114
  %207 = icmp ugt i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load ptr, ptr %0, align 8, !tbaa !115
  tail call fastcc void @PruneToCubeDepth(ptr noundef nonnull %0, ptr noundef %209) #23
  br label %218

210:                                              ; preds = %203
  %211 = load i64, ptr %20, align 8, !tbaa !70
  %212 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i64 noundef %35, i64 noundef %211) #23
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = add nuw nsw i64 %35, 1
  %216 = load i64, ptr %20, align 8, !tbaa !70
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %34, label %218, !llvm.loop !138

218:                                              ; preds = %214, %34, %210, %18, %208
  %219 = phi i64 [ %35, %208 ], [ 0, %18 ], [ %215, %214 ], [ %35, %34 ], [ %35, %210 ]
  %220 = phi float [ %204, %208 ], [ 0.000000e+00, %18 ], [ %204, %214 ], [ %36, %34 ], [ %204, %210 ]
  %221 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %222 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %223 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %224 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 1
  %225 = getelementptr inbounds %struct._RealPixelPacket, ptr %4, i64 0, i32 1
  %226 = getelementptr inbounds %struct._RealPixelPacket, ptr %4, i64 0, i32 2
  %227 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %228 = getelementptr inbounds %struct._RealPixelPacket, ptr %4, i64 0, i32 3
  %229 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  br label %230

230:                                              ; preds = %417, %218
  %231 = phi float [ %220, %218 ], [ %418, %417 ]
  %232 = phi i64 [ %219, %218 ], [ %233, %417 ]
  %233 = add nuw nsw i64 %232, 1
  %234 = load i64, ptr %20, align 8, !tbaa !70
  %235 = icmp slt i64 %233, %234
  br i1 %235, label %236, label %422

236:                                              ; preds = %230
  %237 = load i64, ptr %221, align 8, !tbaa !69
  %238 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %19, i64 noundef 0, i64 noundef %233, i64 noundef %237, i64 noundef 1, ptr noundef %2) #24
  %239 = icmp eq ptr %238, null
  br i1 %239, label %422, label %240

240:                                              ; preds = %236
  %241 = load i64, ptr %222, align 8, !tbaa !126
  %242 = icmp ugt i64 %241, 266817
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load ptr, ptr %0, align 8, !tbaa !115
  tail call fastcc void @PruneLevel(ptr noundef nonnull %0, ptr noundef %244) #23
  %245 = load i64, ptr %223, align 8, !tbaa !110
  %246 = add i64 %245, -1
  store i64 %246, ptr %223, align 8, !tbaa !110
  br label %247

247:                                              ; preds = %243, %240
  %248 = load i64, ptr %221, align 8, !tbaa !69
  %249 = icmp sgt i64 %248, 0
  br i1 %249, label %250, label %417

250:                                              ; preds = %247, %413
  %251 = phi i64 [ %415, %413 ], [ %248, %247 ]
  %252 = phi i64 [ %274, %413 ], [ 0, %247 ]
  %253 = phi ptr [ %414, %413 ], [ %238, %247 ]
  %254 = phi float [ %377, %413 ], [ %231, %247 ]
  %255 = add nsw i64 %252, 1
  %256 = icmp slt i64 %255, %251
  br i1 %256, label %257, label %272

257:                                              ; preds = %250
  %258 = sub i64 %251, %252
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %253, i64 1
  %260 = tail call fastcc i32 @IsSameColor(ptr noundef %1, ptr noundef %253, ptr noundef nonnull %259) #23, !range !67
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %272, label %266

262:                                              ; preds = %266
  %263 = getelementptr inbounds %struct._PixelPacket, ptr %253, i64 %268
  %264 = tail call fastcc i32 @IsSameColor(ptr noundef %1, ptr noundef %253, ptr noundef %263) #23, !range !67
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %270, label %266, !llvm.loop !139

266:                                              ; preds = %257, %262
  %267 = phi i64 [ %268, %262 ], [ 1, %257 ]
  %268 = add i64 %267, 1
  %269 = icmp eq i64 %268, %258
  br i1 %269, label %272, label %262, !llvm.loop !139

270:                                              ; preds = %262
  %271 = add nsw i64 %268, %252
  br label %272

272:                                              ; preds = %266, %257, %270, %250
  %273 = phi i64 [ 1, %250 ], [ %268, %270 ], [ 1, %257 ], [ %258, %266 ]
  %274 = phi i64 [ %255, %250 ], [ %271, %270 ], [ %255, %257 ], [ %251, %266 ]
  call fastcc void @AssociateAlphaPixel(ptr noundef %0, ptr noundef %253, ptr noundef nonnull %4) #23
  %275 = load ptr, ptr %0, align 8, !tbaa !115
  %276 = load i64, ptr %223, align 8, !tbaa !110
  %277 = icmp eq i64 %276, 0
  %278 = load float, ptr %4, align 4
  %279 = load float, ptr %225, align 4
  %280 = load float, ptr %226, align 4
  br i1 %277, label %281, label %283

281:                                              ; preds = %272
  %282 = uitofp i64 %273 to double
  br label %375

283:                                              ; preds = %272
  %284 = load float, ptr %228, align 4
  %285 = uitofp i64 %273 to double
  br label %286

286:                                              ; preds = %283, %368
  %287 = phi i64 [ %276, %283 ], [ %369, %368 ]
  %288 = phi i64 [ 1, %283 ], [ %373, %368 ]
  %289 = phi i64 [ 7, %283 ], [ %372, %368 ]
  %290 = phi float [ 3.276800e+04, %283 ], [ %297, %368 ]
  %291 = phi ptr [ %275, %283 ], [ %371, %368 ]
  %292 = phi float [ 3.276750e+04, %283 ], [ %303, %368 ]
  %293 = phi float [ 3.276750e+04, %283 ], [ %307, %368 ]
  %294 = phi float [ 3.276750e+04, %283 ], [ %311, %368 ]
  %295 = phi float [ 3.276750e+04, %283 ], [ %314, %368 ]
  %296 = phi float [ %254, %283 ], [ %370, %368 ]
  %297 = fmul float %290, 5.000000e-01
  %298 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %289) #23, !range !128
  %299 = and i64 %298, 1
  %300 = icmp eq i64 %299, 0
  %301 = fneg float %297
  %302 = select i1 %300, float %301, float %297
  %303 = fadd float %292, %302
  %304 = and i64 %298, 2
  %305 = icmp eq i64 %304, 0
  %306 = select i1 %305, float %301, float %297
  %307 = fadd float %293, %306
  %308 = and i64 %298, 4
  %309 = icmp eq i64 %308, 0
  %310 = select i1 %309, float %301, float %297
  %311 = fadd float %294, %310
  %312 = icmp ult i64 %298, 8
  %313 = select i1 %312, float %301, float %297
  %314 = fadd float %295, %313
  %315 = getelementptr inbounds %struct._NodeInfo, ptr %291, i64 0, i32 1, i64 %298
  %316 = load ptr, ptr %315, align 8, !tbaa !129
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %330

318:                                              ; preds = %286
  %319 = tail call fastcc ptr @GetNodeInfo(ptr noundef nonnull %0, i64 noundef %298, i64 noundef %288, ptr noundef nonnull %291) #23
  store ptr %319, ptr %315, align 8, !tbaa !129
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull %229) #20
  %323 = load i64, ptr %223, align 8, !tbaa !110
  br label %368

324:                                              ; preds = %318
  %325 = load i64, ptr %223, align 8, !tbaa !110
  %326 = icmp eq i64 %288, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i64, ptr %224, align 8, !tbaa !130
  %329 = add i64 %328, 1
  store i64 %329, ptr %224, align 8, !tbaa !130
  br label %330

330:                                              ; preds = %324, %327, %286
  %331 = phi i64 [ %325, %324 ], [ %288, %327 ], [ %287, %286 ]
  %332 = phi ptr [ %319, %324 ], [ %319, %327 ], [ %316, %286 ]
  %333 = fsub float %278, %303
  %334 = fpext float %333 to double
  %335 = fmul double %334, 0x3EF0001000100010
  %336 = fptrunc double %335 to float
  %337 = fsub float %279, %307
  %338 = fpext float %337 to double
  %339 = fmul double %338, 0x3EF0001000100010
  %340 = fptrunc double %339 to float
  %341 = fsub float %280, %311
  %342 = fpext float %341 to double
  %343 = fmul double %342, 0x3EF0001000100010
  %344 = fptrunc double %343 to float
  %345 = load i32, ptr %227, align 8, !tbaa !131
  %346 = icmp eq i32 %345, 0
  %347 = fsub float %284, %314
  %348 = fpext float %347 to double
  %349 = fmul double %348, 0x3EF0001000100010
  %350 = fptrunc double %349 to float
  %351 = select i1 %346, float %296, float %350
  %352 = fmul float %340, %340
  %353 = tail call float @llvm.fmuladd.f32(float %336, float %336, float %352)
  %354 = tail call float @llvm.fmuladd.f32(float %344, float %344, float %353)
  %355 = tail call float @llvm.fmuladd.f32(float %351, float %351, float %354)
  %356 = fpext float %355 to double
  %357 = tail call double @llvm.sqrt.f64(double %356)
  %358 = getelementptr inbounds %struct._NodeInfo, ptr %332, i64 0, i32 4
  %359 = load float, ptr %358, align 8, !tbaa !132
  %360 = fpext float %359 to double
  %361 = tail call double @llvm.fmuladd.f64(double %285, double %357, double %360)
  %362 = fptrunc double %361 to float
  store float %362, ptr %358, align 8, !tbaa !132
  %363 = load ptr, ptr %0, align 8, !tbaa !115
  %364 = getelementptr inbounds %struct._NodeInfo, ptr %363, i64 0, i32 4
  %365 = load float, ptr %364, align 8, !tbaa !132
  %366 = fadd float %365, %362
  store float %366, ptr %364, align 8, !tbaa !132
  %367 = add i64 %289, -1
  br label %368

368:                                              ; preds = %330, %321
  %369 = phi i64 [ %323, %321 ], [ %331, %330 ]
  %370 = phi float [ %296, %321 ], [ %351, %330 ]
  %371 = phi ptr [ %291, %321 ], [ %332, %330 ]
  %372 = phi i64 [ %289, %321 ], [ %367, %330 ]
  %373 = add i64 %288, 1
  %374 = icmp ugt i64 %373, %369
  br i1 %374, label %375, label %286, !llvm.loop !140

375:                                              ; preds = %368, %281
  %376 = phi double [ %282, %281 ], [ %285, %368 ]
  %377 = phi float [ %254, %281 ], [ %370, %368 ]
  %378 = phi ptr [ %275, %281 ], [ %371, %368 ]
  %379 = getelementptr inbounds %struct._NodeInfo, ptr %378, i64 0, i32 2
  %380 = load i64, ptr %379, align 8, !tbaa !134
  %381 = add i64 %380, %273
  store i64 %381, ptr %379, align 8, !tbaa !134
  %382 = fmul double %376, 0x3EF0001000100010
  %383 = tail call fastcc zeroext i16 @ClampPixel(float noundef %278) #23
  %384 = getelementptr inbounds %struct._NodeInfo, ptr %378, i64 0, i32 3
  %385 = tail call fastcc zeroext i16 @ClampPixel(float noundef %279) #23
  %386 = insertelement <2 x i16> poison, i16 %383, i64 0
  %387 = insertelement <2 x i16> %386, i16 %385, i64 1
  %388 = uitofp <2 x i16> %387 to <2 x double>
  %389 = load <2 x float>, ptr %384, align 8, !tbaa !121
  %390 = fpext <2 x float> %389 to <2 x double>
  %391 = insertelement <2 x double> poison, double %382, i64 0
  %392 = shufflevector <2 x double> %391, <2 x double> poison, <2 x i32> zeroinitializer
  %393 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %392, <2 x double> %388, <2 x double> %390)
  %394 = fptrunc <2 x double> %393 to <2 x float>
  store <2 x float> %394, ptr %384, align 8, !tbaa !121
  %395 = tail call fastcc zeroext i16 @ClampPixel(float noundef %280) #23
  %396 = uitofp i16 %395 to double
  %397 = getelementptr inbounds %struct._NodeInfo, ptr %378, i64 0, i32 3, i32 2
  %398 = load float, ptr %397, align 8, !tbaa !135
  %399 = fpext float %398 to double
  %400 = tail call double @llvm.fmuladd.f64(double %382, double %396, double %399)
  %401 = fptrunc double %400 to float
  store float %401, ptr %397, align 8, !tbaa !135
  %402 = load i32, ptr %227, align 8, !tbaa !131
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %375
  %405 = load float, ptr %228, align 4, !tbaa !141
  %406 = tail call fastcc zeroext i16 @ClampPixel(float noundef %405) #23
  %407 = uitofp i16 %406 to double
  %408 = getelementptr inbounds %struct._NodeInfo, ptr %378, i64 0, i32 3, i32 3
  %409 = load float, ptr %408, align 4, !tbaa !136
  %410 = fpext float %409 to double
  %411 = tail call double @llvm.fmuladd.f64(double %382, double %407, double %410)
  %412 = fptrunc double %411 to float
  store float %412, ptr %408, align 4, !tbaa !136
  br label %413

413:                                              ; preds = %404, %375
  %414 = getelementptr inbounds %struct._PixelPacket, ptr %253, i64 %273
  %415 = load i64, ptr %221, align 8, !tbaa !69
  %416 = icmp slt i64 %274, %415
  br i1 %416, label %250, label %417, !llvm.loop !142

417:                                              ; preds = %413, %247
  %418 = phi float [ %231, %247 ], [ %377, %413 ]
  %419 = load i64, ptr %20, align 8, !tbaa !70
  %420 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i64 noundef %233, i64 noundef %419) #23
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %230, !llvm.loop !143

422:                                              ; preds = %417, %236, %230
  %423 = tail call ptr @DestroyCacheView(ptr noundef %19) #20
  %424 = load ptr, ptr %5, align 8, !tbaa !118
  %425 = getelementptr inbounds %struct._QuantizeInfo, ptr %424, i64 0, i32 3
  %426 = load i32, ptr %425, align 4, !tbaa !51
  switch i32 %426, label %427 [
    i32 0, label %429
    i32 12, label %429
  ]

427:                                              ; preds = %422
  %428 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %1, i32 noundef 13) #20
  br label %429

429:                                              ; preds = %422, %422, %427
  %430 = load i64, ptr %20, align 8, !tbaa !70
  %431 = icmp sge i64 %233, %430
  %432 = zext i1 %431 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret i32 %432
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ReduceImageColors(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !144 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 8
  store float 0.000000e+00, ptr %3, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !130
  %6 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !114
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !126
  %12 = icmp ugt i64 %11, 128
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %11, i64 noundef 4) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !115
  %18 = tail call fastcc i64 @QuantizeErrorFlatten(ptr noundef nonnull %1, ptr noundef %17, i64 noundef 0, ptr noundef nonnull %14) #23
  %19 = load i64, ptr %10, align 8, !tbaa !126
  tail call void @qsort(ptr noundef nonnull %14, i64 noundef %19, i64 noundef 4, ptr noundef nonnull @MagickRealTypeCompare) #20
  %20 = load i64, ptr %10, align 8, !tbaa !126
  %21 = load i64, ptr %6, align 8, !tbaa !114
  %22 = mul i64 %21, 110
  %23 = add i64 %22, 110
  %24 = udiv i64 %23, 100
  %25 = sub i64 %20, %24
  %26 = tail call fastcc i64 @MagickMax(i64 noundef %25, i64 noundef 0) #23
  %27 = getelementptr inbounds float, ptr %14, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !121
  store float %28, ptr %3, align 8, !tbaa !145
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #20
  br label %30

30:                                               ; preds = %13, %16, %9, %2
  %31 = load i64, ptr %4, align 8, !tbaa !130
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 7
  %33 = add i64 %31, 1
  br label %34

34:                                               ; preds = %38, %30
  %35 = load i64, ptr %4, align 8, !tbaa !130
  %36 = load i64, ptr %6, align 8, !tbaa !114
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load float, ptr %3, align 8, !tbaa !145
  store float %39, ptr %32, align 4, !tbaa !146
  %40 = load ptr, ptr %1, align 8, !tbaa !115
  %41 = getelementptr inbounds %struct._NodeInfo, ptr %40, i64 0, i32 4
  %42 = load float, ptr %41, align 8, !tbaa !132
  %43 = fadd float %42, -1.000000e+00
  store float %43, ptr %3, align 8, !tbaa !145
  store i64 0, ptr %4, align 8, !tbaa !130
  tail call fastcc void @Reduce(ptr noundef nonnull %1, ptr noundef %40) #23
  %44 = load i64, ptr %4, align 8, !tbaa !130
  %45 = sub i64 %31, %44
  %46 = load i64, ptr %6, align 8, !tbaa !114
  %47 = sub i64 %33, %46
  %48 = tail call fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %45, i64 noundef %47) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %34, !llvm.loop !147

50:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @AssignImageColors(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !148 {
  %3 = alloca %struct._CubeInfo, align 8
  %4 = alloca %struct._RealPixelPacket, align 4
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct._QuantizeInfo, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !51
  switch i32 %8, label %9 [
    i32 0, label %11
    i32 12, label %11
  ]

9:                                                ; preds = %2
  %10 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %8) #20
  br label %18

11:                                               ; preds = %2, %2
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !86
  %14 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %13) #23, !range !67
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #20
  br label %18

18:                                               ; preds = %11, %16, %9
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !130
  %21 = tail call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %20) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = icmp eq ptr %0, null
  br i1 %24, label %205, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 517, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %27) #20
  br label %205

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  store i64 0, ptr %30, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 4
  store i64 0, ptr %31, align 8, !tbaa !149
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 3
  store i64 -1, ptr %32, align 8, !tbaa !150
  %33 = load ptr, ptr %1, align 8, !tbaa !115
  tail call fastcc void @DefineImageColormap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %33) #23
  %34 = load ptr, ptr %5, align 8, !tbaa !118
  %35 = getelementptr inbounds %struct._QuantizeInfo, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !45
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct._QuantizeInfo, ptr %34, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !47
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @DitherImage(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %165

43:                                               ; preds = %38, %29
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %45 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %44) #20
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !70
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %163

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %51 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 5
  %52 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 6
  %53 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 11
  %54 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 18
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %56 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 19
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %58

58:                                               ; preds = %49, %158
  %59 = phi i64 [ 0, %49 ], [ %160, %158 ]
  %60 = phi i32 [ 1, %49 ], [ %159, %158 ]
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %3) #19
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %158, label %62

62:                                               ; preds = %58
  %63 = load i64, ptr %50, align 8, !tbaa !69
  %64 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %45, i64 noundef 0, i64 noundef %59, i64 noundef %63, i64 noundef 1, ptr noundef nonnull %44) #24
  %65 = icmp eq ptr %64, null
  br i1 %65, label %158, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %45) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %3, ptr noundef nonnull align 8 dereferenceable(504) %1, i64 504, i1 false), !tbaa.struct !151
  %68 = load i64, ptr %50, align 8, !tbaa !69
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %147

70:                                               ; preds = %66
  %71 = icmp eq ptr %67, null
  br label %72

72:                                               ; preds = %70, %144
  %73 = phi i64 [ %68, %70 ], [ %145, %144 ]
  %74 = phi i64 [ 0, %70 ], [ %95, %144 ]
  %75 = phi ptr [ %64, %70 ], [ %141, %144 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %76 = add nuw nsw i64 %74, 1
  %77 = icmp slt i64 %76, %73
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = sub i64 %73, %74
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %81 = tail call fastcc i32 @IsSameColor(ptr noundef %0, ptr noundef nonnull %75, ptr noundef nonnull %80) #23, !range !67
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %87

83:                                               ; preds = %87
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 %89
  %85 = tail call fastcc i32 @IsSameColor(ptr noundef %0, ptr noundef nonnull %75, ptr noundef nonnull %84) #23, !range !67
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !llvm.loop !154

87:                                               ; preds = %78, %83
  %88 = phi i64 [ %89, %83 ], [ 1, %78 ]
  %89 = add nuw i64 %88, 1
  %90 = icmp eq i64 %89, %79
  br i1 %90, label %93, label %83, !llvm.loop !154

91:                                               ; preds = %83
  %92 = add nuw nsw i64 %89, %74
  br label %93

93:                                               ; preds = %87, %78, %91, %72
  %94 = phi i64 [ 1, %72 ], [ %89, %91 ], [ 1, %78 ], [ %79, %87 ]
  %95 = phi i64 [ %76, %72 ], [ %92, %91 ], [ %76, %78 ], [ %73, %87 ]
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %3, ptr noundef nonnull %75, ptr noundef nonnull %4) #23
  %96 = load ptr, ptr %3, align 8, !tbaa !115
  br label %100

97:                                               ; preds = %100
  %98 = add nsw i64 %101, -1
  %99 = icmp ugt i64 %101, 1
  br i1 %99, label %100, label %107, !llvm.loop !155

100:                                              ; preds = %93, %97
  %101 = phi i64 [ 7, %93 ], [ %98, %97 ]
  %102 = phi ptr [ %96, %93 ], [ %105, %97 ]
  %103 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef %101) #23, !range !128
  %104 = getelementptr inbounds %struct._NodeInfo, ptr %102, i64 0, i32 1, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !129
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %97

107:                                              ; preds = %100, %97
  %108 = phi ptr [ %102, %100 ], [ %105, %97 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !156
  store float 0x4210000000000000, ptr %52, align 8, !tbaa !157
  %109 = load ptr, ptr %108, align 8, !tbaa !116
  call fastcc void @ClosestColor(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %109) #23
  %110 = load i64, ptr %53, align 8, !tbaa !158
  %111 = load i32, ptr %0, align 8, !tbaa !71
  %112 = icmp ne i32 %111, 2
  %113 = select i1 %112, i1 true, i1 %71
  %114 = load ptr, ptr %54, align 8, !tbaa !118
  %115 = getelementptr inbounds %struct._QuantizeInfo, ptr %114, i64 0, i32 4
  %116 = load i32, ptr %115, align 8, !tbaa !49
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds i16, ptr %67, i64 %74
  %119 = trunc i64 %110 to i16
  %120 = load i32, ptr %56, align 8
  %121 = icmp eq i32 %120, 0
  %122 = tail call i64 @llvm.umax.i64(i64 %94, i64 1)
  br label %123

123:                                              ; preds = %107, %140
  %124 = phi i64 [ 0, %107 ], [ %142, %140 ]
  %125 = phi ptr [ %75, %107 ], [ %141, %140 ]
  br i1 %113, label %128, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds i16, ptr %118, i64 %124
  store i16 %119, ptr %127, align 2, !tbaa !76
  br label %128

128:                                              ; preds = %126, %123
  br i1 %117, label %129, label %140

129:                                              ; preds = %128
  %130 = load ptr, ptr %55, align 8, !tbaa !75
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 %110, i32 2
  %132 = load i16, ptr %131, align 2, !tbaa !78
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 2
  store i16 %132, ptr %133, align 2, !tbaa !78
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 %110
  %135 = load <2 x i16>, ptr %134, align 2, !tbaa !76
  store <2 x i16> %135, ptr %125, align 2, !tbaa !76
  br i1 %121, label %140, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 %110, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !77
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 3
  store i16 %138, ptr %139, align 2, !tbaa !77
  br label %140

140:                                              ; preds = %129, %136, %128
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 1
  %142 = add nuw nsw i64 %124, 1
  %143 = icmp eq i64 %142, %122
  br i1 %143, label %144, label %123, !llvm.loop !159

144:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  %145 = load i64, ptr %50, align 8, !tbaa !69
  %146 = icmp slt i64 %95, %145
  br i1 %146, label %72, label %147, !llvm.loop !160

147:                                              ; preds = %144, %66
  %148 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %45, ptr noundef nonnull %44) #24
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load ptr, ptr %57, align 8, !tbaa !88
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %147
  %154 = load i64, ptr %46, align 8, !tbaa !70
  %155 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i64 noundef %59, i64 noundef %154) #23
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %156, i32 0, i32 %150
  br label %158

158:                                              ; preds = %147, %153, %62, %58
  %159 = phi i32 [ 0, %58 ], [ 0, %62 ], [ %157, %153 ], [ %150, %147 ]
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %3) #19
  %160 = add nuw nsw i64 %59, 1
  %161 = load i64, ptr %46, align 8, !tbaa !70
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %58, label %163, !llvm.loop !161

163:                                              ; preds = %158, %43
  %164 = tail call ptr @DestroyCacheView(ptr noundef %45) #20
  br label %165

165:                                              ; preds = %163, %42
  %166 = load ptr, ptr %5, align 8, !tbaa !118
  %167 = getelementptr inbounds %struct._QuantizeInfo, ptr %166, i64 0, i32 4
  %168 = load i32, ptr %167, align 8, !tbaa !49
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = tail call i32 @GetImageQuantizeError(ptr noundef nonnull %0) #23
  %172 = load ptr, ptr %5, align 8, !tbaa !118
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi ptr [ %172, %170 ], [ %166, %165 ]
  %175 = load i64, ptr %174, align 8, !tbaa !50
  %176 = icmp eq i64 %175, 2
  br i1 %176, label %177, label %198

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct._QuantizeInfo, ptr %174, i64 0, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !51
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %198

181:                                              ; preds = %177
  %182 = load i64, ptr %30, align 8, !tbaa !65
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %186 = load ptr, ptr %185, align 8, !tbaa !75
  br label %187

187:                                              ; preds = %184, %187
  %188 = phi i64 [ %196, %187 ], [ 0, %184 ]
  %189 = phi ptr [ %195, %187 ], [ %186, %184 ]
  %190 = tail call fastcc float @GetPixelLuma(ptr noundef nonnull %0, ptr noundef %189) #23
  %191 = fcmp uge float %190, 3.276750e+04
  %192 = sext i1 %191 to i16
  %193 = getelementptr inbounds %struct._PixelPacket, ptr %189, i64 0, i32 2
  store i16 %192, ptr %193, align 2, !tbaa !78
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %189, i64 0, i32 1
  store i16 %192, ptr %194, align 2, !tbaa !79
  store i16 %192, ptr %189, align 2, !tbaa !80
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %189, i64 1
  %196 = add nuw nsw i64 %188, 1
  %197 = icmp eq i64 %196, %182
  br i1 %197, label %198, label %187, !llvm.loop !162

198:                                              ; preds = %187, %181, %177, %173
  %199 = tail call i32 @SyncImage(ptr noundef nonnull %0) #20
  %200 = load ptr, ptr %5, align 8, !tbaa !118
  %201 = getelementptr inbounds %struct._QuantizeInfo, ptr %200, i64 0, i32 3
  %202 = load i32, ptr %201, align 4, !tbaa !51
  switch i32 %202, label %203 [
    i32 0, label %205
    i32 12, label %205
  ]

203:                                              ; preds = %198
  %204 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #20
  br label %205

205:                                              ; preds = %203, %198, %198, %23, %25
  %206 = phi i32 [ 0, %25 ], [ 0, %23 ], [ 1, %198 ], [ 1, %198 ], [ 1, %203 ]
  ret i32 %206
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyCubeInfo(ptr noundef %0) unnamed_addr #0 !PGOFuncName !163 {
  %2 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %3, %1 ]
  %6 = getelementptr inbounds %struct._Nodes, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !165
  %8 = load ptr, ptr %5, align 8, !tbaa !167
  %9 = tail call ptr @RelinquishMagickMemory(ptr noundef %8) #20
  %10 = load ptr, ptr %2, align 8, !tbaa !164
  store ptr %9, ptr %10, align 8, !tbaa !167
  %11 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #20
  store ptr %7, ptr %2, align 8, !tbaa !164
  %12 = icmp eq ptr %7, null
  br i1 %12, label %13, label %4, !llvm.loop !168

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %15) #20
  store ptr %18, ptr %14, align 8, !tbaa !119
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !118
  %22 = tail call ptr @DestroyQuantizeInfo(ptr noundef %21) #23
  store ptr %22, ptr %20, align 8, !tbaa !118
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QuantizeImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2807, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @QuantizeImage(ptr noundef %0, ptr noundef nonnull %1) #23, !range !67
  br label %86

14:                                               ; preds = %9
  %15 = load i64, ptr %0, align 8, !tbaa !50
  %16 = icmp eq i64 %15, 0
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 65536)
  %18 = select i1 %16, i64 65536, i64 %17
  %19 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !66
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ %27, %24 ], [ %18, %22 ]
  %26 = phi i64 [ %28, %24 ], [ 1, %22 ]
  %27 = lshr i64 %25, 2
  %28 = add nuw nsw i64 %26, 1
  %29 = icmp ult i64 %25, 4
  br i1 %29, label %30, label %24, !llvm.loop !169

30:                                               ; preds = %24, %22
  %31 = phi i64 [ 1, %22 ], [ %28, %24 ]
  %32 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !45
  %34 = icmp ne i32 %33, 0
  %35 = sext i1 %34 to i64
  %36 = add i64 %31, %35
  br label %37

37:                                               ; preds = %30, %14
  %38 = phi i64 [ %36, %30 ], [ %20, %14 ]
  %39 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef %38, i64 noundef %18) #23
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %43 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %44 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %42, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2843, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %43) #20
  br label %86

45:                                               ; preds = %37
  %46 = tail call i64 @GetImageListLength(ptr noundef %1) #20
  %47 = icmp eq ptr %1, null
  br i1 %47, label %84, label %48

48:                                               ; preds = %45, %62
  %49 = phi i64 [ %64, %62 ], [ 0, %45 ]
  %50 = phi ptr [ %63, %62 ], [ %1, %45 ]
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 48
  %52 = load ptr, ptr %51, align 8, !tbaa !93
  %53 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %50, ptr noundef null, ptr noundef %52) #20
  %54 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 58
  %55 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %39, ptr noundef nonnull %50, ptr noundef nonnull %54) #23, !range !67
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %48
  %58 = load ptr, ptr %51, align 8, !tbaa !93
  %59 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %50, ptr noundef %53, ptr noundef %58) #20
  %60 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %50, ptr noundef nonnull @.str.8, i64 noundef %49, i64 noundef %46) #23
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = tail call ptr @GetNextImageInList(ptr noundef nonnull %50) #20
  %64 = add nuw nsw i64 %49, 1
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %48, !llvm.loop !170

66:                                               ; preds = %62, %57
  tail call fastcc void @ReduceImageColors(ptr noundef nonnull %1, ptr noundef nonnull %39) #23
  br label %67

67:                                               ; preds = %66, %80
  %68 = phi i64 [ %82, %80 ], [ 0, %66 ]
  %69 = phi ptr [ %81, %80 ], [ %1, %66 ]
  %70 = getelementptr inbounds %struct._Image, ptr %69, i64 0, i32 48
  %71 = load ptr, ptr %70, align 8, !tbaa !93
  %72 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %69, ptr noundef null, ptr noundef %71) #20
  %73 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %69, ptr noundef nonnull %39) #23, !range !67
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %67
  %76 = load ptr, ptr %70, align 8, !tbaa !93
  %77 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %69, ptr noundef %72, ptr noundef %76) #20
  %78 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %69, ptr noundef nonnull @.str.8, i64 noundef %68, i64 noundef %46) #23
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = tail call ptr @GetNextImageInList(ptr noundef nonnull %69) #20
  %82 = add nuw nsw i64 %68, 1
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %67, !llvm.loop !171

84:                                               ; preds = %48, %75, %67, %80, %45
  %85 = phi i32 [ 0, %45 ], [ 1, %75 ], [ 0, %67 ], [ 1, %80 ], [ 0, %48 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %39) #23
  br label %86

86:                                               ; preds = %84, %41, %12
  %87 = phi i32 [ %13, %12 ], [ 0, %41 ], [ %85, %84 ]
  ret i32 %87
}

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RemapImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3168, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i64, ptr %0, align 8, !tbaa !50
  %12 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef 8, i64 noundef %11) #23
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  br i1 %13, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3175, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %16) #20
  br label %29

18:                                               ; preds = %10
  %19 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %14) #23, !range !67
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !130
  %24 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !118
  store i64 %23, ptr %25, align 8, !tbaa !50
  %26 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %1, ptr noundef nonnull %12) #23, !range !67
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i32 [ %26, %21 ], [ 0, %18 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %12) #23
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %15 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RemapImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3232, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 @QuantizeImages(ptr noundef %0, ptr noundef nonnull %1) #23, !range !67
  br label %39

14:                                               ; preds = %10
  %15 = load i64, ptr %0, align 8, !tbaa !50
  %16 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef 8, i64 noundef %15) #23
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  br i1 %17, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3249, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %20) #20
  br label %39

22:                                               ; preds = %14
  %23 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %16, ptr noundef nonnull %2, ptr noundef nonnull %18) #23, !range !67
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._CubeInfo, ptr %16, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !130
  %28 = getelementptr inbounds %struct._CubeInfo, ptr %16, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  store i64 %27, ptr %29, align 8, !tbaa !50
  br label %30

30:                                               ; preds = %25, %34
  %31 = phi ptr [ %35, %34 ], [ %1, %25 ]
  %32 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %31, ptr noundef nonnull %16) #23, !range !67
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @GetNextImageInList(ptr noundef nonnull %31) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %30, !llvm.loop !172

37:                                               ; preds = %30, %34, %22
  %38 = phi i32 [ 0, %22 ], [ 0, %30 ], [ 1, %34 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %16) #23
  br label %39

39:                                               ; preds = %19, %37, %12
  %40 = phi i32 [ %13, %12 ], [ %38, %37 ], [ 0, %19 ]
  ret i32 %40
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @GetNodeInfo(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !173 {
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 10
  %6 = load i64, ptr %5, align 8, !tbaa !174
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !175
  %11 = add i64 %6, -1
  br label %22

12:                                               ; preds = %4
  %13 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = tail call dereferenceable_or_null(368640) ptr @AcquireQuantumMemory(i64 noundef 1920, i64 noundef 192) #25
  store ptr %16, ptr %13, align 8, !tbaa !167
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = getelementptr inbounds %struct._Nodes, ptr %13, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !165
  store ptr %13, ptr %19, align 8, !tbaa !164
  br label %22

22:                                               ; preds = %8, %18
  %23 = phi ptr [ %16, %18 ], [ %10, %8 ]
  %24 = phi i64 [ 1919, %18 ], [ %11, %8 ]
  %25 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %26 = load i64, ptr %25, align 8, !tbaa !126
  %27 = add i64 %26, 1
  store i64 %27, ptr %25, align 8, !tbaa !126
  store i64 %24, ptr %5, align 8, !tbaa !174
  %28 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 12
  %29 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 1
  store ptr %29, ptr %28, align 8, !tbaa !175
  %30 = tail call ptr @ResetMagickMemory(ptr noundef %23, i32 noundef 0, i64 noundef 192) #20
  store ptr %3, ptr %23, align 8, !tbaa !116
  %31 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 0, i32 6
  store i64 %1, ptr %31, align 8, !tbaa !176
  %32 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 0, i32 7
  store i64 %2, ptr %32, align 8, !tbaa !177
  br label %33

33:                                               ; preds = %12, %15, %22
  %34 = phi ptr [ %23, %22 ], [ null, %15 ], [ null, %12 ]
  ret ptr %34
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #8 !PGOFuncName !178 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SetAssociatedAlpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #10 !PGOFuncName !179 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = load i64, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i64 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._QuantizeInfo, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = icmp eq i32 %11, 2
  %13 = select i1 %12, i32 0, i32 %4
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ %4, %2 ], [ %13, %9 ]
  %16 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 19
  store i32 %15, ptr %16, align 8, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IssRGBCompatibleColorspace(i32 noundef %0) unnamed_addr #8 !PGOFuncName !180 {
  switch i32 %0, label %2 [
    i32 29, label %4
    i32 13, label %4
    i32 3, label %4
    i32 1, label %4
  ]

2:                                                ; preds = %1
  %3 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %0) #23, !range !67
  br label %4

4:                                                ; preds = %2, %1, %1, %1, %1
  %5 = phi i32 [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ %3, %2 ]
  ret i32 %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @PruneLevel(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !181 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !131
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneLevel(ptr noundef %0, ptr noundef nonnull %10) #23
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !182

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !177
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %20 = load i64, ptr %19, align 8, !tbaa !110
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %23

23:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsSameColor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !183 {
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !78
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !78
  %8 = icmp eq i16 %5, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !79
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !79
  %14 = icmp eq i16 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load i16, ptr %1, align 2, !tbaa !80
  %17 = load i16, ptr %2, align 2, !tbaa !80
  %18 = icmp eq i16 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !77
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !77
  %28 = icmp eq i16 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %19
  br label %30

30:                                               ; preds = %23, %3, %9, %15, %29
  %31 = phi i32 [ 1, %29 ], [ 0, %15 ], [ 0, %9 ], [ 0, %3 ], [ 0, %23 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AssociateAlphaPixel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !PGOFuncName !184 {
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !131
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !77
  br i1 %6, label %9, label %11

9:                                                ; preds = %3
  %10 = uitofp i16 %8 to float
  br label %13

11:                                               ; preds = %3
  %12 = icmp eq i16 %8, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9, %11
  %14 = phi float [ %10, %9 ], [ 0.000000e+00, %11 ]
  %15 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %16 = load <2 x i16>, ptr %15, align 2, !tbaa !76
  %17 = uitofp <2 x i16> %16 to <2 x float>
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %18, ptr %2, align 4, !tbaa !121
  %19 = load i16, ptr %1, align 2, !tbaa !80
  %20 = uitofp i16 %19 to float
  %21 = getelementptr inbounds %struct._RealPixelPacket, ptr %2, i64 0, i32 2
  store float %20, ptr %21, align 4, !tbaa !185
  br label %39

22:                                               ; preds = %11
  %23 = xor i16 %8, -1
  %24 = uitofp i16 %23 to double
  %25 = fmul double %24, 0x3EF0001000100010
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %28 = load <2 x i16>, ptr %27, align 2, !tbaa !76
  %29 = uitofp <2 x i16> %28 to <2 x float>
  %30 = insertelement <2 x float> poison, float %26, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x float> %31, %29
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %33, ptr %2, align 4, !tbaa !121
  %34 = load i16, ptr %1, align 2, !tbaa !80
  %35 = uitofp i16 %34 to float
  %36 = fmul float %26, %35
  %37 = getelementptr inbounds %struct._RealPixelPacket, ptr %2, i64 0, i32 2
  store float %36, ptr %37, align 4, !tbaa !185
  %38 = uitofp i16 %8 to float
  br label %39

39:                                               ; preds = %22, %13
  %40 = phi float [ %38, %22 ], [ %14, %13 ]
  %41 = getelementptr inbounds %struct._RealPixelPacket, ptr %2, i64 0, i32 3
  store float %40, ptr %41, align 4, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ColorToNodeId(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #12 !PGOFuncName !186 {
  %4 = load float, ptr %1, align 4, !tbaa !187
  %5 = tail call fastcc zeroext i16 @ClampPixel(float noundef %4) #23
  %6 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %5) #23
  %7 = zext i8 %6 to i32
  %8 = trunc i64 %2 to i32
  %9 = lshr i32 %7, %8
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !188
  %13 = tail call fastcc zeroext i16 @ClampPixel(float noundef %12) #23
  %14 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %13) #23
  %15 = zext i8 %14 to i32
  %16 = lshr i32 %15, %8
  %17 = shl nuw nsw i32 %16, 1
  %18 = and i32 %17, 2
  %19 = or disjoint i32 %18, %10
  %20 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !185
  %22 = tail call fastcc zeroext i16 @ClampPixel(float noundef %21) #23
  %23 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %22) #23
  %24 = zext i8 %23 to i32
  %25 = lshr i32 %24, %8
  %26 = shl nuw nsw i32 %25, 2
  %27 = and i32 %26, 4
  %28 = or disjoint i32 %19, %27
  %29 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %30 = load i32, ptr %29, align 8, !tbaa !131
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !141
  %35 = tail call fastcc zeroext i16 @ClampPixel(float noundef %34) #23
  %36 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %35) #23
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %37, %8
  %39 = shl nuw nsw i32 %38, 3
  %40 = and i32 %39, 8
  %41 = or disjoint i32 %40, %28
  br label %42

42:                                               ; preds = %32, %3
  %43 = phi i32 [ %41, %32 ], [ %28, %3 ]
  %44 = zext nneg i32 %43 to i64
  ret i64 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampPixel(float noundef %0) unnamed_addr #8 !PGOFuncName !189 {
  %2 = fcmp olt float %0, 0.000000e+00
  br i1 %2, label %8, label %3

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

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @PruneToCubeDepth(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !190 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !131
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneToCubeDepth(ptr noundef %0, ptr noundef nonnull %10) #23
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !191

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !177
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %20 = load i64, ptr %19, align 8, !tbaa !110
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %23

23:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #8 !PGOFuncName !192 {
  switch i32 %0, label %2 [
    i32 19, label %3
    i32 17, label %3
    i32 2, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @PruneChild(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !193 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !131
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneChild(ptr noundef %0, ptr noundef nonnull %10) #23
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !194

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !116
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !134
  %20 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !134
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8, !tbaa !134
  %23 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 3
  %25 = load <4 x float>, ptr %23, align 8, !tbaa !121
  %26 = load <4 x float>, ptr %24, align 8, !tbaa !121
  %27 = fadd <4 x float> %25, %26
  store <4 x float> %27, ptr %24, align 8, !tbaa !121
  %28 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 6
  %29 = load i64, ptr %28, align 8, !tbaa !176
  %30 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 1, i64 %29
  store ptr null, ptr %30, align 8, !tbaa !129
  %31 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %32 = load i64, ptr %31, align 8, !tbaa !126
  %33 = add i64 %32, -1
  store i64 %33, ptr %31, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #8 !PGOFuncName !195 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DefineImageColormap(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #11 !PGOFuncName !196 {
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !131
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 8, i64 16
  br label %8

8:                                                ; preds = %3, %14
  %9 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %10 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @DefineImageColormap(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #23
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !197

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !134
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %108, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25
  %27 = sitofp i64 %19 to float
  %28 = fpext float %27 to double
  %29 = tail call fastcc double @PerceptibleReciprocal(double noundef %28) #23
  %30 = fptrunc double %29 to float
  %31 = load i32, ptr %4, align 8, !tbaa !131
  %32 = icmp eq i32 %31, 0
  %33 = fmul float %30, 6.553500e+04
  %34 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3
  br i1 %32, label %35, label %50

35:                                               ; preds = %21
  %36 = load float, ptr %34, align 8, !tbaa !198
  %37 = fmul float %33, %36
  %38 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %37) #23
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %38, ptr %39, align 2, !tbaa !78
  %40 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !199
  %42 = fmul float %33, %41
  %43 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %42) #23
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %43, ptr %44, align 2, !tbaa !79
  %45 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %46 = load float, ptr %45, align 8, !tbaa !135
  %47 = fmul float %33, %46
  %48 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %47) #23
  store i16 %48, ptr %26, align 2, !tbaa !80
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  store i16 0, ptr %49, align 2, !tbaa !77
  br label %105

50:                                               ; preds = %21
  %51 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 3
  %52 = load float, ptr %51, align 4, !tbaa !136
  %53 = fmul float %33, %52
  %54 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %53) #23
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  store i16 %54, ptr %55, align 2, !tbaa !77
  %56 = icmp eq i16 %54, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load float, ptr %34, align 8, !tbaa !198
  %59 = fmul float %33, %58
  %60 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %59) #23
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %60, ptr %61, align 2, !tbaa !78
  %62 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %63 = load float, ptr %62, align 4, !tbaa !199
  %64 = fmul float %33, %63
  %65 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %64) #23
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %65, ptr %66, align 2, !tbaa !79
  %67 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %68 = load float, ptr %67, align 8, !tbaa !135
  %69 = fmul float %33, %68
  %70 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %69) #23
  store i16 %70, ptr %26, align 2, !tbaa !80
  br label %105

71:                                               ; preds = %50
  %72 = uitofp i16 %54 to double
  %73 = fsub double 6.553500e+04, %72
  %74 = fmul double %73, 0x3EF0001000100010
  %75 = fcmp olt double %74, 0.000000e+00
  %76 = select i1 %75, double 0.000000e+00, double %74
  %77 = tail call fastcc double @PerceptibleReciprocal(double noundef %76) #23
  %78 = fpext float %30 to double
  %79 = fmul double %77, %78
  %80 = fmul double %79, 6.553500e+04
  %81 = load float, ptr %34, align 8, !tbaa !198
  %82 = fpext float %81 to double
  %83 = fmul double %80, %82
  %84 = fptrunc double %83 to float
  %85 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %84) #23
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %85, ptr %86, align 2, !tbaa !78
  %87 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %88 = load float, ptr %87, align 4, !tbaa !199
  %89 = fpext float %88 to double
  %90 = fmul double %80, %89
  %91 = fptrunc double %90 to float
  %92 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %91) #23
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %92, ptr %93, align 2, !tbaa !79
  %94 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %95 = load float, ptr %94, align 8, !tbaa !135
  %96 = fpext float %95 to double
  %97 = fmul double %80, %96
  %98 = fptrunc double %97 to float
  %99 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #23
  store i16 %99, ptr %26, align 2, !tbaa !80
  %100 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !149
  %102 = icmp ugt i64 %19, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %71
  store i64 %19, ptr %100, align 8, !tbaa !149
  %104 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 3
  store i64 %25, ptr %104, align 8, !tbaa !150
  br label %105

105:                                              ; preds = %57, %103, %71, %35
  %106 = add i64 %25, 1
  store i64 %106, ptr %24, align 8, !tbaa !65
  %107 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 5
  store i64 %25, ptr %107, align 8, !tbaa !200
  br label %108

108:                                              ; preds = %17, %105
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DitherImage(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !201 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct._QuantizeInfo, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @FloydSteinbergDither(ptr noundef %0, ptr noundef nonnull %1) #23, !range !67
  br label %43

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 16
  %12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 256) #20
  %13 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 20
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = load i64, ptr %14, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !70
  %18 = tail call fastcc i64 @MagickMax(i64 noundef %15, i64 noundef %17) #23
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %10, %20
  %21 = phi i64 [ %24, %20 ], [ 1, %10 ]
  %22 = phi i64 [ %23, %20 ], [ %18, %10 ]
  %23 = ashr i64 %22, 1
  %24 = add i64 %21, 1
  %25 = icmp ult i64 %22, 2
  br i1 %25, label %26, label %20, !llvm.loop !202

26:                                               ; preds = %20, %10
  %27 = phi i64 [ 1, %10 ], [ %24, %20 ]
  %28 = shl nuw i64 1, %27
  %29 = icmp slt i64 %28, %18
  %30 = zext i1 %29 to i64
  %31 = add i64 %27, %30
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 23
  store i64 0, ptr %32, align 8, !tbaa !203
  %33 = mul i64 %17, %15
  %34 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 24
  store i64 %33, ptr %34, align 8, !tbaa !204
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %36 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %35) #20
  %37 = icmp ugt i64 %31, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = add i64 %31, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %1, i64 noundef %39, i32 noundef 2) #23
  br label %40

40:                                               ; preds = %38, %26
  %41 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %1, i32 noundef 0) #23, !range !67
  %42 = tail call ptr @DestroyCacheView(ptr noundef %36) #20
  br label %43

43:                                               ; preds = %40, %8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ClosestColor(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !205 {
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !131
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 8, i64 16
  br label %8

8:                                                ; preds = %3, %14
  %9 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %10 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @ClosestColor(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #23
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !206

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !134
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %83, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !200
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5
  %28 = load i32, ptr %4, align 8, !tbaa !131
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !77
  %33 = xor i16 %32, -1
  %34 = uitofp i16 %33 to double
  %35 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !141
  %37 = fsub float 6.553500e+04, %36
  %38 = fpext float %37 to double
  %39 = insertelement <2 x double> poison, double %34, i64 0
  %40 = insertelement <2 x double> %39, double %38, i64 1
  %41 = fmul <2 x double> %40, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %42 = fptrunc <2 x double> %41 to <2 x float>
  br label %43

43:                                               ; preds = %30, %21
  %44 = phi <2 x float> [ %42, %30 ], [ <float 1.000000e+00, float 1.000000e+00>, %21 ]
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  %46 = load i16, ptr %45, align 2, !tbaa !78
  %47 = uitofp i16 %46 to float
  %48 = load float, ptr %27, align 4, !tbaa !187
  %49 = extractelement <2 x float> %44, i64 1
  %50 = fneg float %49
  %51 = fmul float %48, %50
  %52 = extractelement <2 x float> %44, i64 0
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %47, float %51)
  %54 = fmul float %53, %53
  %55 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 6
  %56 = load float, ptr %55, align 8, !tbaa !157
  %57 = fcmp ugt float %54, %56
  br i1 %57, label %83, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !79
  %61 = uitofp i16 %60 to float
  %62 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 1
  %63 = load float, ptr %62, align 4, !tbaa !188
  %64 = fmul float %63, %50
  %65 = tail call float @llvm.fmuladd.f32(float %52, float %61, float %64)
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %65, float %54)
  %67 = fcmp ugt float %66, %56
  br i1 %67, label %83, label %68

68:                                               ; preds = %58
  %69 = load i16, ptr %26, align 2, !tbaa !80
  %70 = uitofp i16 %69 to float
  %71 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 2
  %72 = load float, ptr %71, align 4, !tbaa !185
  %73 = fmul float %72, %50
  %74 = tail call float @llvm.fmuladd.f32(float %52, float %70, float %73)
  %75 = tail call float @llvm.fmuladd.f32(float %74, float %74, float %66)
  %76 = fcmp ugt float %75, %56
  br i1 %76, label %83, label %77

77:                                               ; preds = %68
  %78 = fsub float %52, %49
  %79 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %75)
  %80 = fcmp ugt float %79, %56
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  store float %79, ptr %55, align 8, !tbaa !157
  %82 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 11
  store i64 %25, ptr %82, align 8, !tbaa !158
  br label %83

83:                                               ; preds = %43, %68, %81, %77, %58, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @GetPixelLuma(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !207 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !86
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !78
  %8 = uitofp i16 %7 to float
  br i1 %5, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !79
  %12 = uitofp i16 %11 to float
  %13 = fmul float %12, 0x3FE6E29300000000
  %14 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FCB384FE0000000, float %13)
  %15 = load i16, ptr %1, align 2, !tbaa !80
  %16 = uitofp i16 %15 to float
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 0x3FB27AC820000000, float %14)
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi float [ %17, %9 ], [ %8, %2 ]
  ret float %19
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #8 !PGOFuncName !208 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @FloydSteinbergDither(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !209 {
  %3 = alloca %struct._CubeInfo, align 8
  %4 = alloca %struct._RealPixelPacket, align 8
  %5 = alloca %struct._RealPixelPacket, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %7 = load i64, ptr %6, align 8, !tbaa !69
  %8 = tail call fastcc ptr @AcquirePixelThreadSet(i64 noundef %7) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %256, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %11) #20
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !70
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %253

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._RealPixelPacket, ptr %5, i64 0, i32 2
  %18 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 19
  %19 = getelementptr inbounds %struct._RealPixelPacket, ptr %5, i64 0, i32 3
  %20 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 15
  %21 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 5
  %22 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 6
  %23 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 11
  %24 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 18
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %26 = getelementptr inbounds %struct._RealPixelPacket, ptr %4, i64 0, i32 2
  %27 = getelementptr inbounds %struct._RealPixelPacket, ptr %4, i64 0, i32 3
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %29

29:                                               ; preds = %16, %248
  %30 = phi i32 [ 1, %16 ], [ %249, %248 ]
  %31 = phi i64 [ 0, %16 ], [ %250, %248 ]
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %3) #19
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %248, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %6, align 8, !tbaa !69
  %35 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %12, i64 noundef 0, i64 noundef %31, i64 noundef %34, i64 noundef 1, ptr noundef nonnull %11) #24
  %36 = icmp eq ptr %35, null
  br i1 %36, label %248, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %12) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %3, ptr noundef nonnull align 8 dereferenceable(504) %1, i64 504, i1 false), !tbaa.struct !151
  %39 = load ptr, ptr %8, align 8, !tbaa !129
  %40 = and i64 %31, 1
  %41 = load i64, ptr %6, align 8, !tbaa !69
  %42 = mul nuw nsw i64 %41, %40
  %43 = getelementptr inbounds %struct._RealPixelPacket, ptr %39, i64 %42
  %44 = xor i64 %40, 1
  %45 = mul nuw nsw i64 %41, %44
  %46 = getelementptr inbounds %struct._RealPixelPacket, ptr %39, i64 %45
  %47 = icmp eq i64 %40, 0
  %48 = select i1 %47, i64 1, i64 -1
  %49 = icmp sgt i64 %41, 0
  br i1 %49, label %50, label %248

50:                                               ; preds = %37
  %51 = icmp eq i64 %31, 0
  %52 = icmp eq ptr %38, null
  %53 = load i32, ptr %18, align 8, !tbaa !131
  br label %54

54:                                               ; preds = %50, %243
  %55 = phi i32 [ %53, %50 ], [ %204, %243 ]
  %56 = phi i64 [ %41, %50 ], [ %246, %243 ]
  %57 = phi i32 [ 1, %50 ], [ %244, %243 ]
  %58 = phi i64 [ 0, %50 ], [ %245, %243 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %59 = xor i64 %58, -1
  %60 = add i64 %56, %59
  %61 = select i1 %47, i64 %58, i64 %60
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 %61
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %3, ptr noundef nonnull %62, ptr noundef nonnull %5) #23
  %63 = icmp eq i64 %58, 0
  %64 = load <2 x float>, ptr %5, align 8, !tbaa !121
  %65 = load float, ptr %17, align 8, !tbaa !185
  br i1 %63, label %86, label %66

66:                                               ; preds = %54
  %67 = sub nsw i64 %61, %48
  %68 = getelementptr inbounds %struct._RealPixelPacket, ptr %43, i64 %67
  %69 = load <2 x float>, ptr %68, align 4, !tbaa !121
  %70 = fmul <2 x float> %69, <float 7.000000e+00, float 7.000000e+00>
  %71 = fmul <2 x float> %70, <float 6.250000e-02, float 6.250000e-02>
  %72 = fadd <2 x float> %64, %71
  %73 = getelementptr inbounds %struct._RealPixelPacket, ptr %43, i64 %67, i32 2
  %74 = load float, ptr %73, align 4, !tbaa !185
  %75 = fmul float %74, 7.000000e+00
  %76 = fmul float %75, 6.250000e-02
  %77 = fadd float %65, %76
  %78 = icmp eq i32 %55, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct._RealPixelPacket, ptr %43, i64 %67, i32 3
  %81 = load float, ptr %80, align 4, !tbaa !141
  %82 = fmul float %81, 7.000000e+00
  %83 = fmul float %82, 6.250000e-02
  %84 = load float, ptr %19, align 4, !tbaa !141
  %85 = fadd float %84, %83
  store float %85, ptr %19, align 4, !tbaa !141
  br label %86

86:                                               ; preds = %66, %79, %54
  %87 = phi float [ %77, %66 ], [ %77, %79 ], [ %65, %54 ]
  %88 = phi <2 x float> [ %72, %66 ], [ %72, %79 ], [ %64, %54 ]
  br i1 %51, label %150, label %89

89:                                               ; preds = %86
  %90 = add nsw i64 %56, -1
  %91 = icmp slt i64 %58, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = getelementptr %struct._RealPixelPacket, ptr %46, i64 %61
  %94 = getelementptr %struct._RealPixelPacket, ptr %93, i64 %48
  %95 = load <2 x float>, ptr %94, align 4, !tbaa !121
  %96 = fmul <2 x float> %95, <float 6.250000e-02, float 6.250000e-02>
  %97 = fadd <2 x float> %88, %96
  %98 = getelementptr %struct._RealPixelPacket, ptr %93, i64 %48, i32 2
  %99 = load float, ptr %98, align 4, !tbaa !185
  %100 = fmul float %99, 6.250000e-02
  %101 = fadd float %87, %100
  store float %101, ptr %17, align 8, !tbaa !185
  %102 = icmp eq i32 %55, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %92
  %104 = getelementptr %struct._RealPixelPacket, ptr %93, i64 %48, i32 3
  %105 = load float, ptr %104, align 4, !tbaa !141
  %106 = fmul float %105, 6.250000e-02
  %107 = load float, ptr %19, align 4, !tbaa !141
  %108 = fadd float %107, %106
  store float %108, ptr %19, align 4, !tbaa !141
  br label %109

109:                                              ; preds = %92, %103, %89
  %110 = phi float [ %101, %92 ], [ %101, %103 ], [ %87, %89 ]
  %111 = phi <2 x float> [ %97, %92 ], [ %97, %103 ], [ %88, %89 ]
  %112 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %61
  %113 = load <2 x float>, ptr %112, align 4, !tbaa !121
  %114 = fmul <2 x float> %113, <float 5.000000e+00, float 5.000000e+00>
  %115 = fmul <2 x float> %114, <float 6.250000e-02, float 6.250000e-02>
  %116 = fadd <2 x float> %111, %115
  store <2 x float> %116, ptr %5, align 8, !tbaa !121
  %117 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %61, i32 2
  %118 = load float, ptr %117, align 4, !tbaa !185
  %119 = fmul float %118, 5.000000e+00
  %120 = fmul float %119, 6.250000e-02
  %121 = fadd float %110, %120
  %122 = icmp eq i32 %55, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %109
  %124 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %61, i32 3
  %125 = load float, ptr %124, align 4, !tbaa !141
  %126 = fmul float %125, 5.000000e+00
  %127 = fmul float %126, 6.250000e-02
  %128 = load float, ptr %19, align 4, !tbaa !141
  %129 = fadd float %128, %127
  store float %129, ptr %19, align 4, !tbaa !141
  br label %130

130:                                              ; preds = %123, %109
  br i1 %63, label %150, label %131

131:                                              ; preds = %130
  %132 = sub nsw i64 %61, %48
  %133 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %132
  %134 = load <2 x float>, ptr %133, align 4, !tbaa !121
  %135 = fmul <2 x float> %134, <float 3.000000e+00, float 3.000000e+00>
  %136 = fmul <2 x float> %135, <float 6.250000e-02, float 6.250000e-02>
  %137 = fadd <2 x float> %116, %136
  %138 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %132, i32 2
  %139 = load float, ptr %138, align 4, !tbaa !185
  %140 = fmul float %139, 3.000000e+00
  %141 = fmul float %140, 6.250000e-02
  %142 = fadd float %121, %141
  br i1 %122, label %150, label %143

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %132, i32 3
  %145 = load float, ptr %144, align 4, !tbaa !141
  %146 = fmul float %145, 3.000000e+00
  %147 = fmul float %146, 6.250000e-02
  %148 = load float, ptr %19, align 4, !tbaa !141
  %149 = fadd float %148, %147
  store float %149, ptr %19, align 4, !tbaa !141
  br label %150

150:                                              ; preds = %130, %143, %131, %86
  %151 = phi float [ %121, %130 ], [ %142, %143 ], [ %142, %131 ], [ %87, %86 ]
  %152 = phi <2 x float> [ %116, %130 ], [ %137, %143 ], [ %137, %131 ], [ %88, %86 ]
  %153 = extractelement <2 x float> %152, i64 0
  %154 = tail call fastcc zeroext i16 @ClampPixel(float noundef %153) #23
  %155 = extractelement <2 x float> %152, i64 1
  %156 = tail call fastcc zeroext i16 @ClampPixel(float noundef %155) #23
  %157 = insertelement <2 x i16> poison, i16 %154, i64 0
  %158 = insertelement <2 x i16> %157, i16 %156, i64 1
  %159 = uitofp <2 x i16> %158 to <2 x float>
  store <2 x float> %159, ptr %5, align 8, !tbaa !121
  %160 = tail call fastcc zeroext i16 @ClampPixel(float noundef %151) #23
  %161 = uitofp i16 %160 to float
  store float %161, ptr %17, align 8, !tbaa !185
  %162 = icmp eq i32 %55, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %150
  %164 = load float, ptr %19, align 4, !tbaa !141
  %165 = tail call fastcc zeroext i16 @ClampPixel(float noundef %164) #23
  %166 = uitofp i16 %165 to float
  store float %166, ptr %19, align 4, !tbaa !141
  br label %167

167:                                              ; preds = %163, %150
  %168 = call fastcc i64 @CacheOffset(ptr noundef nonnull %3, ptr noundef nonnull %5) #23, !range !210
  %169 = load ptr, ptr %20, align 8, !tbaa !120
  %170 = getelementptr inbounds i64, ptr %169, i64 %168
  %171 = load i64, ptr %170, align 8, !tbaa !53
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %167
  %174 = load ptr, ptr %3, align 8, !tbaa !115
  br label %178

175:                                              ; preds = %178
  %176 = add nsw i64 %180, -1
  %177 = icmp ugt i64 %180, 1
  br i1 %177, label %178, label %185, !llvm.loop !211

178:                                              ; preds = %173, %175
  %179 = phi ptr [ %174, %173 ], [ %183, %175 ]
  %180 = phi i64 [ 7, %173 ], [ %176, %175 ]
  %181 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef %180) #23, !range !128
  %182 = getelementptr inbounds %struct._NodeInfo, ptr %179, i64 0, i32 1, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !129
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %175

185:                                              ; preds = %178, %175
  %186 = phi ptr [ %179, %178 ], [ %183, %175 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !156
  store float 0x4210000000000000, ptr %22, align 8, !tbaa !157
  %187 = load ptr, ptr %186, align 8, !tbaa !116
  call fastcc void @ClosestColor(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %187) #23
  %188 = load i64, ptr %23, align 8, !tbaa !158
  %189 = load ptr, ptr %20, align 8, !tbaa !120
  %190 = getelementptr inbounds i64, ptr %189, i64 %168
  store i64 %188, ptr %190, align 8, !tbaa !53
  br label %191

191:                                              ; preds = %185, %167
  %192 = phi i64 [ %188, %185 ], [ %171, %167 ]
  %193 = load i32, ptr %0, align 8, !tbaa !71
  %194 = icmp ne i32 %193, 2
  %195 = select i1 %194, i1 true, i1 %52
  br i1 %195, label %199, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds i16, ptr %38, i64 %61
  %198 = trunc i64 %192 to i16
  store i16 %198, ptr %197, align 2, !tbaa !76
  br label %199

199:                                              ; preds = %196, %191
  %200 = load ptr, ptr %24, align 8, !tbaa !118
  %201 = getelementptr inbounds %struct._QuantizeInfo, ptr %200, i64 0, i32 4
  %202 = load i32, ptr %201, align 8, !tbaa !49
  %203 = icmp eq i32 %202, 0
  %204 = load i32, ptr %18, align 8, !tbaa !131
  br i1 %203, label %205, label %217

205:                                              ; preds = %199
  %206 = load ptr, ptr %25, align 8, !tbaa !75
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 %192, i32 2
  %208 = load i16, ptr %207, align 2, !tbaa !78
  %209 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 %61, i32 2
  store i16 %208, ptr %209, align 2, !tbaa !78
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 %192
  %211 = load <2 x i16>, ptr %210, align 2, !tbaa !76
  store <2 x i16> %211, ptr %62, align 2, !tbaa !76
  %212 = icmp eq i32 %204, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 %192, i32 3
  %215 = load i16, ptr %214, align 2, !tbaa !77
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 %61, i32 3
  store i16 %215, ptr %216, align 2, !tbaa !77
  br label %217

217:                                              ; preds = %205, %213, %199
  %218 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %12, ptr noundef nonnull %11) #24
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %219, i32 0, i32 %57
  %221 = load ptr, ptr %25, align 8, !tbaa !75
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %221, i64 %192
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %3, ptr noundef %222, ptr noundef nonnull %4) #23
  %223 = getelementptr inbounds %struct._RealPixelPacket, ptr %43, i64 %61
  %224 = load <2 x float>, ptr %4, align 8, !tbaa !121
  %225 = fsub <2 x float> %159, %224
  store <2 x float> %225, ptr %223, align 4, !tbaa !121
  %226 = load float, ptr %26, align 8, !tbaa !185
  %227 = fsub float %161, %226
  %228 = getelementptr inbounds %struct._RealPixelPacket, ptr %43, i64 %61, i32 2
  store float %227, ptr %228, align 4, !tbaa !185
  %229 = icmp eq i32 %204, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %217
  %231 = load float, ptr %19, align 4, !tbaa !141
  %232 = load float, ptr %27, align 4, !tbaa !141
  %233 = fsub float %231, %232
  %234 = getelementptr inbounds %struct._RealPixelPacket, ptr %43, i64 %61, i32 3
  store float %233, ptr %234, align 4, !tbaa !141
  br label %235

235:                                              ; preds = %230, %217
  %236 = load ptr, ptr %28, align 8, !tbaa !88
  %237 = icmp eq ptr %236, null
  br i1 %237, label %243, label %238

238:                                              ; preds = %235
  %239 = load i64, ptr %13, align 8, !tbaa !70
  %240 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %31, i64 noundef %239) #23
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, i32 0, i32 %220
  br label %243

243:                                              ; preds = %238, %235
  %244 = phi i32 [ %242, %238 ], [ %220, %235 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  %245 = add nuw nsw i64 %58, 1
  %246 = load i64, ptr %6, align 8, !tbaa !69
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %54, label %248, !llvm.loop !212

248:                                              ; preds = %243, %37, %33, %29
  %249 = phi i32 [ 0, %29 ], [ 0, %33 ], [ 1, %37 ], [ %244, %243 ]
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %3) #19
  %250 = add nuw nsw i64 %31, 1
  %251 = load i64, ptr %13, align 8, !tbaa !70
  %252 = icmp slt i64 %250, %251
  br i1 %252, label %29, label %253, !llvm.loop !213

253:                                              ; preds = %248, %10
  %254 = tail call ptr @DestroyCacheView(ptr noundef %12) #20
  %255 = tail call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %8) #23
  br label %256

256:                                              ; preds = %2, %253
  %257 = phi i32 [ 1, %253 ], [ 0, %2 ]
  ret i32 %257
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !214 {
  %6 = icmp eq i64 %3, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %18, %5
  %8 = phi i32 [ %4, %5 ], [ %20, %18 ]
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %35, label %50

11:                                               ; preds = %5, %18
  %12 = phi i32 [ %20, %18 ], [ %4, %5 ]
  %13 = phi i64 [ %19, %18 ], [ %3, %5 ]
  switch i32 %12, label %50 [
    i32 4, label %14
    i32 6, label %23
    i32 2, label %27
    i32 8, label %31
  ]

14:                                               ; preds = %11
  %15 = add i64 %13, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %15, i32 noundef 2) #23
  %16 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6) #23, !range !67
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %15, i32 noundef 4) #23
  %17 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8) #23, !range !67
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %15, i32 noundef 4) #23
  br label %18

18:                                               ; preds = %14, %23, %27, %31
  %19 = phi i64 [ %15, %14 ], [ %24, %23 ], [ %28, %27 ], [ %32, %31 ]
  %20 = phi i32 [ 8, %14 ], [ 2, %23 ], [ 6, %27 ], [ 4, %31 ]
  %21 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %12) #23, !range !67
  %22 = icmp eq i64 %19, 1
  br i1 %22, label %7, label %11

23:                                               ; preds = %11
  %24 = add i64 %13, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %24, i32 noundef 8) #23
  %25 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4) #23, !range !67
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %24, i32 noundef 6) #23
  %26 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2) #23, !range !67
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %24, i32 noundef 6) #23
  br label %18

27:                                               ; preds = %11
  %28 = add i64 %13, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %28, i32 noundef 4) #23
  %29 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8) #23, !range !67
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %28, i32 noundef 2) #23
  %30 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6) #23, !range !67
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %28, i32 noundef 2) #23
  br label %18

31:                                               ; preds = %11
  %32 = add i64 %13, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %32, i32 noundef 6) #23
  %33 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2) #23, !range !67
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %32, i32 noundef 8) #23
  %34 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4) #23, !range !67
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %32, i32 noundef 8) #23
  br label %18

35:                                               ; preds = %7
  %36 = trunc i32 %9 to i8
  %37 = lshr i8 85, %36
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = zext nneg i32 %9 to i64
  %42 = getelementptr inbounds [7 x i32], ptr @switch.table.Riemersma, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = zext nneg i32 %9 to i64
  %45 = getelementptr inbounds [7 x i32], ptr @switch.table.Riemersma.13, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %43) #23, !range !67
  %48 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %46) #23, !range !67
  %49 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %8) #23, !range !67
  br label %50

50:                                               ; preds = %11, %35, %7, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !215 {
  %5 = alloca %struct._RealPixelPacket, align 8
  %6 = alloca %struct._RealPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 20
  %8 = load i64, ptr %7, align 8, !tbaa !216
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %10, label %162

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !69
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %162

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 21
  %16 = load i64, ptr %15, align 8, !tbaa !217
  %17 = icmp sgt i64 %16, -1
  br i1 %17, label %18, label %162

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !70
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %162

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %8, i64 noundef %16, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %23) #24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %173, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1) #20
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %2, ptr noundef nonnull %24, ptr noundef nonnull %6) #23
  %28 = getelementptr inbounds %struct._RealPixelPacket, ptr %6, i64 0, i32 1
  %29 = getelementptr inbounds %struct._RealPixelPacket, ptr %6, i64 0, i32 2
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 19
  %31 = load i32, ptr %30, align 8, !tbaa !131
  %32 = icmp eq i32 %31, 0
  %33 = load float, ptr %6, align 8, !tbaa !187
  %34 = load <2 x float>, ptr %28, align 4, !tbaa !121
  %35 = getelementptr inbounds %struct._RealPixelPacket, ptr %6, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !141
  br label %37

37:                                               ; preds = %26, %56
  %38 = phi float [ %36, %26 ], [ %57, %56 ]
  %39 = phi i64 [ 0, %26 ], [ %58, %56 ]
  %40 = phi float [ %33, %26 ], [ %46, %56 ]
  %41 = phi <2 x float> [ %34, %26 ], [ %51, %56 ]
  %42 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 17, i64 %39
  %43 = load float, ptr %42, align 4, !tbaa !121
  %44 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %39
  %45 = load float, ptr %44, align 8, !tbaa !187
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %45, float %40)
  %47 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %39, i32 1
  %48 = load <2 x float>, ptr %47, align 4, !tbaa !121
  %49 = insertelement <2 x float> poison, float %43, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %48, <2 x float> %41)
  br i1 %32, label %56, label %52

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %39, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !141
  %55 = tail call float @llvm.fmuladd.f32(float %43, float %54, float %38)
  br label %56

56:                                               ; preds = %37, %52
  %57 = phi float [ %38, %37 ], [ %55, %52 ]
  %58 = add nuw nsw i64 %39, 1
  %59 = icmp eq i64 %58, 16
  br i1 %59, label %60, label %37, !llvm.loop !218

60:                                               ; preds = %56
  store float %57, ptr %35, align 4, !tbaa !141
  %61 = tail call fastcc zeroext i16 @ClampPixel(float noundef %46) #23
  %62 = extractelement <2 x float> %51, i64 0
  %63 = tail call fastcc zeroext i16 @ClampPixel(float noundef %62) #23
  %64 = insertelement <2 x i16> poison, i16 %61, i64 0
  %65 = insertelement <2 x i16> %64, i16 %63, i64 1
  %66 = uitofp <2 x i16> %65 to <2 x float>
  store <2 x float> %66, ptr %6, align 8, !tbaa !121
  %67 = extractelement <2 x float> %51, i64 1
  %68 = tail call fastcc zeroext i16 @ClampPixel(float noundef %67) #23
  %69 = uitofp i16 %68 to float
  store float %69, ptr %29, align 8, !tbaa !185
  br i1 %32, label %73, label %70

70:                                               ; preds = %60
  %71 = tail call fastcc zeroext i16 @ClampPixel(float noundef %57) #23
  %72 = uitofp i16 %71 to float
  store float %72, ptr %35, align 4, !tbaa !141
  br label %73

73:                                               ; preds = %70, %60
  %74 = phi float [ %72, %70 ], [ %57, %60 ]
  %75 = call fastcc i64 @CacheOffset(ptr noundef nonnull %2, ptr noundef nonnull %6) #23, !range !210
  %76 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 15
  %77 = load ptr, ptr %76, align 8, !tbaa !120
  %78 = getelementptr inbounds i64, ptr %77, i64 %75
  %79 = load i64, ptr %78, align 8, !tbaa !53
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %73
  %82 = load ptr, ptr %2, align 8, !tbaa !115
  br label %86

83:                                               ; preds = %86
  %84 = add nsw i64 %88, -1
  %85 = icmp ugt i64 %88, 1
  br i1 %85, label %86, label %93, !llvm.loop !219

86:                                               ; preds = %81, %83
  %87 = phi ptr [ %82, %81 ], [ %91, %83 ]
  %88 = phi i64 [ 7, %81 ], [ %84, %83 ]
  %89 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef %88) #23, !range !128
  %90 = getelementptr inbounds %struct._NodeInfo, ptr %87, i64 0, i32 1, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !129
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %83

93:                                               ; preds = %86, %83
  %94 = phi ptr [ %87, %86 ], [ %91, %83 ]
  %95 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !156
  %96 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 6
  store float 0x4210000000000000, ptr %96, align 8, !tbaa !157
  %97 = load ptr, ptr %94, align 8, !tbaa !116
  tail call fastcc void @ClosestColor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %97) #23
  %98 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 11
  %99 = load i64, ptr %98, align 8, !tbaa !158
  %100 = load ptr, ptr %76, align 8, !tbaa !120
  %101 = getelementptr inbounds i64, ptr %100, i64 %75
  store i64 %99, ptr %101, align 8, !tbaa !53
  br label %102

102:                                              ; preds = %93, %73
  %103 = phi i64 [ %99, %93 ], [ %79, %73 ]
  %104 = load i32, ptr %0, align 8, !tbaa !71
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = trunc i64 %103 to i16
  store i16 %107, ptr %27, align 2, !tbaa !76
  br label %108

108:                                              ; preds = %106, %102
  %109 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 18
  %110 = load ptr, ptr %109, align 8, !tbaa !118
  %111 = getelementptr inbounds %struct._QuantizeInfo, ptr %110, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !49
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !75
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 %103, i32 2
  %118 = load i16, ptr %117, align 2, !tbaa !78
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 2
  store i16 %118, ptr %119, align 2, !tbaa !78
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 %103
  %121 = load <2 x i16>, ptr %120, align 2, !tbaa !76
  store <2 x i16> %121, ptr %24, align 2, !tbaa !76
  %122 = load i32, ptr %30, align 8, !tbaa !131
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 %103, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !77
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 3
  store i16 %126, ptr %127, align 2, !tbaa !77
  br label %128

128:                                              ; preds = %114, %124, %108
  %129 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %23) #24
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %173, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16
  %133 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 1
  %134 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %132, ptr noundef nonnull %133, i64 noundef 240) #20
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %136 = load ptr, ptr %135, align 8, !tbaa !75
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 %103
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %2, ptr noundef %137, ptr noundef nonnull %5) #23
  %138 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15
  %139 = load <2 x float>, ptr %5, align 8, !tbaa !121
  %140 = fsub <2 x float> %66, %139
  store <2 x float> %140, ptr %138, align 8, !tbaa !121
  %141 = getelementptr inbounds %struct._RealPixelPacket, ptr %5, i64 0, i32 2
  %142 = load float, ptr %141, align 8, !tbaa !185
  %143 = fsub float %69, %142
  %144 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15, i32 2
  store float %143, ptr %144, align 8, !tbaa !185
  %145 = load i32, ptr %30, align 8, !tbaa !131
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %131
  %148 = getelementptr inbounds %struct._RealPixelPacket, ptr %5, i64 0, i32 3
  %149 = load float, ptr %148, align 4, !tbaa !141
  %150 = fsub float %74, %149
  %151 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15, i32 3
  store float %150, ptr %151, align 4, !tbaa !141
  br label %152

152:                                              ; preds = %147, %131
  %153 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 23
  %154 = load i64, ptr %153, align 8, !tbaa !203
  %155 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 24
  %156 = load i64, ptr %155, align 8, !tbaa !204
  %157 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %154, i64 noundef %156) #23
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %152
  %160 = load i64, ptr %153, align 8, !tbaa !203
  %161 = add nsw i64 %160, 1
  store i64 %161, ptr %153, align 8, !tbaa !203
  br label %162

162:                                              ; preds = %159, %18, %14, %10, %4
  switch i32 %3, label %173 [
    i32 4, label %168
    i32 6, label %163
    i32 2, label %164
    i32 8, label %166
  ]

163:                                              ; preds = %162
  br label %168

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 21
  br label %168

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 21
  br label %168

168:                                              ; preds = %162, %166, %164, %163
  %169 = phi ptr [ %7, %163 ], [ %165, %164 ], [ %167, %166 ], [ %7, %162 ]
  %170 = phi i64 [ 1, %163 ], [ -1, %164 ], [ 1, %166 ], [ -1, %162 ]
  %171 = load i64, ptr %169, align 8, !tbaa !53
  %172 = add nsw i64 %171, %170
  store i64 %172, ptr %169, align 8, !tbaa !53
  br label %173

173:                                              ; preds = %168, %162, %22, %128, %152
  %174 = phi i32 [ 0, %152 ], [ 0, %128 ], [ 0, %22 ], [ 1, %162 ], [ 1, %168 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  ret i32 %174
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePixelThreadSet(i64 noundef %0) unnamed_addr #0 !PGOFuncName !220 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = shl i64 %2, 3
  %7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef %6) #20
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %12, label %19

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %2
  br i1 %11, label %19, label %12, !llvm.loop !221

12:                                               ; preds = %5, %9
  %13 = phi i64 [ %10, %9 ], [ 0, %5 ]
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 32) #25
  %15 = getelementptr inbounds ptr, ptr %3, i64 %13
  store ptr %14, ptr %15, align 8, !tbaa !129
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %3) #23
  br label %19

19:                                               ; preds = %9, %5, %1, %17
  %20 = phi ptr [ %18, %17 ], [ null, %1 ], [ %3, %5 ], [ %3, %9 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @CacheOffset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !222 {
  %3 = load float, ptr %1, align 4, !tbaa !187
  %4 = tail call fastcc zeroext i16 @ClampPixel(float noundef %3) #23
  %5 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %4) #23
  %6 = lshr i8 %5, 2
  %7 = zext nneg i8 %6 to i64
  %8 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !188
  %10 = tail call fastcc zeroext i16 @ClampPixel(float noundef %9) #23
  %11 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %10) #23
  %12 = lshr i8 %11, 2
  %13 = zext nneg i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 6
  %15 = or disjoint i64 %14, %7
  %16 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !185
  %18 = tail call fastcc zeroext i16 @ClampPixel(float noundef %17) #23
  %19 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %18) #23
  %20 = lshr i8 %19, 2
  %21 = zext nneg i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 12
  %23 = or disjoint i64 %22, %15
  %24 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %25 = load i32, ptr %24, align 8, !tbaa !131
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !141
  %30 = tail call fastcc zeroext i16 @ClampPixel(float noundef %29) #23
  %31 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %30) #23
  %32 = lshr i8 %31, 2
  %33 = zext nneg i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 18
  %35 = or disjoint i64 %34, %23
  br label %36

36:                                               ; preds = %27, %2
  %37 = phi i64 [ %35, %27 ], [ %23, %2 ]
  ret i64 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPixelThreadSet(ptr noundef %0) unnamed_addr #0 !PGOFuncName !223 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #20
  store ptr %10, ptr %6, align 8, !tbaa !129
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !224

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #20
  ret ptr %16
}

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @QuantizeErrorFlatten(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !PGOFuncName !225 {
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %6 = load i64, ptr %5, align 8, !tbaa !126
  %7 = icmp sgt i64 %6, %2
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 4
  %10 = load float, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds float, ptr %3, i64 %2
  store float %10, ptr %11, align 4, !tbaa !121
  %12 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i64 8, i64 16
  br label %16

16:                                               ; preds = %8, %26
  %17 = phi i64 [ 1, %8 ], [ %27, %26 ]
  %18 = phi i64 [ 0, %8 ], [ %28, %26 ]
  %19 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !129
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = add i64 %17, %2
  %24 = tail call fastcc i64 @QuantizeErrorFlatten(ptr noundef %0, ptr noundef nonnull %20, i64 noundef %23, ptr noundef %3) #23
  %25 = add i64 %24, %17
  br label %26

26:                                               ; preds = %16, %22
  %27 = phi i64 [ %25, %22 ], [ %17, %16 ]
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %15
  br i1 %29, label %30, label %16, !llvm.loop !226

30:                                               ; preds = %26, %4
  %31 = phi i64 [ 0, %4 ], [ %27, %26 ]
  ret i64 %31
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @MagickRealTypeCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !PGOFuncName !227 {
  %3 = load float, ptr %0, align 4, !tbaa !121
  %4 = load float, ptr %1, align 4, !tbaa !121
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

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Reduce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !228 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !131
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @Reduce(ptr noundef %0, ptr noundef nonnull %10) #23
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !229

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 4
  %18 = load float, ptr %17, align 8, !tbaa !132
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 7
  %20 = load float, ptr %19, align 4, !tbaa !146
  %21 = fcmp ugt float %18, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %36

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !134
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !130
  %30 = add i64 %29, 1
  store i64 %30, ptr %28, align 8, !tbaa !130
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 8
  %33 = load float, ptr %32, align 8, !tbaa !145
  %34 = fcmp olt float %18, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store float %18, ptr %32, align 8, !tbaa !145
  br label %36

36:                                               ; preds = %31, %35, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ScaleQuantumToMap(i16 noundef zeroext %0) unnamed_addr #8 !PGOFuncName !230 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !PGOFuncName !231 {
  %3 = tail call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef %0) #23
  %4 = zext i16 %3 to i32
  %5 = tail call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef %1) #23
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @IsMonochromeImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @PixelPacketIntensity(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !232 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !78
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !79
  %6 = icmp eq i16 %3, %5
  %7 = load i16, ptr %0, align 2, !tbaa !80
  %8 = icmp eq i16 %3, %7
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = uitofp i16 %3 to double
  %12 = uitofp i16 %5 to double
  %13 = fmul double %12, 0x3FE6E29307AF20EA
  %14 = tail call double @llvm.fmuladd.f64(double %11, double 2.126560e-01, double %13)
  %15 = uitofp i16 %7 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 7.218600e-02, double %14)
  %17 = fptrunc double %16 to float
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #23
  br label %19

19:                                               ; preds = %1, %10
  %20 = phi i16 [ %18, %10 ], [ %3, %1 ]
  ret i16 %20
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind optsize allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize willreturn memory(none) }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { hot nounwind optsize }
attributes #25 = { nounwind optsize allocsize(0,1) }

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
!38 = !{!39, !35, i64 184}
!39 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !41, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !42, i64 144, !42, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !35, i64 184, !35, i64 188, !41, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !41, i64 216, !35, i64 224, !35, i64 228, !40, i64 232, !40, i64 240, !35, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !41, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !40, i64 16720, !41, i64 16728, !41, i64 16736, !43, i64 16744, !41, i64 16752, !35, i64 16760, !43, i64 16764, !40, i64 16776, !35, i64 16784}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!"double", !36, i64 0}
!43 = !{!"_PixelPacket", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6}
!44 = !{!"short", !36, i64 0}
!45 = !{!46, !35, i64 16}
!46 = !{!"_QuantizeInfo", !41, i64 0, !41, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !41, i64 32, !35, i64 40}
!47 = !{!46, !35, i64 40}
!48 = !{!39, !35, i64 228}
!49 = !{!46, !35, i64 24}
!50 = !{!46, !41, i64 0}
!51 = !{!46, !35, i64 20}
!52 = !{!46, !41, i64 32}
!53 = !{!41, !41, i64 0}
!54 = !{!55, !35, i64 12976}
!55 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !41, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !40, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !42, i64 104, !56, i64 112, !35, i64 208, !40, i64 216, !35, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !41, i64 256, !42, i64 264, !42, i64 272, !58, i64 280, !58, i64 312, !58, i64 344, !42, i64 376, !42, i64 384, !42, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !40, i64 424, !41, i64 432, !41, i64 440, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !59, i64 480, !60, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !41, i64 12904, !41, i64 12912, !62, i64 12920, !35, i64 12976, !41, i64 12984, !40, i64 12992, !63, i64 13000, !63, i64 13032, !40, i64 13064, !41, i64 13072, !41, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !35, i64 13112, !35, i64 13116, !43, i64 13120, !40, i64 13128, !58, i64 13136, !40, i64 13168, !40, i64 13176, !35, i64 13184, !35, i64 13188, !64, i64 13192, !35, i64 13200, !41, i64 13208, !41, i64 13216, !35, i64 13224, !41, i64 13232}
!56 = !{!"_ChromaticityInfo", !57, i64 0, !57, i64 24, !57, i64 48, !57, i64 72}
!57 = !{!"_PrimaryInfo", !42, i64 0, !42, i64 8, !42, i64 16}
!58 = !{!"_RectangleInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!59 = !{!"_ErrorInfo", !42, i64 0, !42, i64 8, !42, i64 16}
!60 = !{!"_TimerInfo", !61, i64 0, !61, i64 24, !35, i64 48, !41, i64 56}
!61 = !{!"_Timer", !42, i64 0, !42, i64 8, !42, i64 16}
!62 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !40, i64 40, !41, i64 48}
!63 = !{!"_ProfileInfo", !40, i64 0, !41, i64 8, !40, i64 16, !41, i64 24}
!64 = !{!"long long", !36, i64 0}
!65 = !{!55, !41, i64 64}
!66 = !{!46, !41, i64 8}
!67 = !{i32 0, i32 2}
!68 = !{!55, !35, i64 32}
!69 = !{!55, !41, i64 40}
!70 = !{!55, !41, i64 48}
!71 = !{!55, !35, i64 0}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!55, !41, i64 464}
!75 = !{!55, !40, i64 72}
!76 = !{!44, !44, i64 0}
!77 = !{!43, !44, i64 6}
!78 = !{!43, !44, i64 4}
!79 = !{!43, !44, i64 2}
!80 = !{!43, !44, i64 0}
!81 = distinct !{!81, !73}
!82 = distinct !{!82, !73}
!83 = !{!42, !42, i64 0}
!84 = !{!55, !42, i64 496}
!85 = distinct !{!85, !73}
!86 = !{!55, !35, i64 4}
!87 = distinct !{!87, !73}
!88 = !{!55, !40, i64 568}
!89 = distinct !{!89, !73}
!90 = !{!"quantize.c:MagickRound"}
!91 = !{!"quantize.c:MagickMax"}
!92 = !{!"quantize.c:SetImageProgress"}
!93 = !{!55, !40, i64 576}
!94 = !{!"quantize.c:MagickMin"}
!95 = !{!"quantize.c:DirectToColormapImage"}
!96 = distinct !{!96, !73}
!97 = distinct !{!97, !73}
!98 = !{!"quantize.c:SetGrayscaleImage"}
!99 = !{!55, !35, i64 13184}
!100 = !{i32 0, i32 65536}
!101 = distinct !{!101, !73}
!102 = distinct !{!102, !73}
!103 = distinct !{!103, !73, !104, !105}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = distinct !{!106, !73}
!107 = distinct !{!107, !73}
!108 = distinct !{!108, !73}
!109 = !{!"quantize.c:GetCubeInfo"}
!110 = !{!111, !41, i64 480}
!111 = !{!"_CubeInfo", !40, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !64, i64 32, !112, i64 40, !113, i64 56, !113, i64 60, !113, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !36, i64 128, !36, i64 384, !40, i64 448, !35, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !64, i64 488, !64, i64 496}
!112 = !{!"_RealPixelPacket", !113, i64 0, !113, i64 4, !113, i64 8, !113, i64 12}
!113 = !{!"float", !36, i64 0}
!114 = !{!111, !41, i64 16}
!115 = !{!111, !40, i64 0}
!116 = !{!117, !40, i64 0}
!117 = !{!"_NodeInfo", !40, i64 0, !36, i64 8, !64, i64 136, !112, i64 144, !113, i64 160, !41, i64 168, !41, i64 176, !41, i64 184}
!118 = !{!111, !40, i64 448}
!119 = !{!111, !40, i64 112}
!120 = !{!111, !40, i64 120}
!121 = !{!113, !113, i64 0}
!122 = distinct !{!122, !73}
!123 = distinct !{!123, !73}
!124 = distinct !{!124, !73}
!125 = !{!"quantize.c:ClassifyImageColors"}
!126 = !{!111, !41, i64 72}
!127 = distinct !{!127, !73}
!128 = !{i64 0, i64 16}
!129 = !{!40, !40, i64 0}
!130 = !{!111, !41, i64 8}
!131 = !{!111, !35, i64 456}
!132 = !{!117, !113, i64 160}
!133 = distinct !{!133, !73}
!134 = !{!117, !64, i64 136}
!135 = !{!117, !113, i64 152}
!136 = !{!117, !113, i64 156}
!137 = distinct !{!137, !73}
!138 = distinct !{!138, !73}
!139 = distinct !{!139, !73}
!140 = distinct !{!140, !73}
!141 = !{!112, !113, i64 12}
!142 = distinct !{!142, !73}
!143 = distinct !{!143, !73}
!144 = !{!"quantize.c:ReduceImageColors"}
!145 = !{!111, !113, i64 64}
!146 = !{!111, !113, i64 60}
!147 = distinct !{!147, !73}
!148 = !{!"quantize.c:AssignImageColors"}
!149 = !{!111, !64, i64 32}
!150 = !{!111, !41, i64 24}
!151 = !{i64 0, i64 8, !129, i64 8, i64 8, !53, i64 16, i64 8, !53, i64 24, i64 8, !53, i64 32, i64 8, !152, i64 40, i64 4, !121, i64 44, i64 4, !121, i64 48, i64 4, !121, i64 52, i64 4, !121, i64 56, i64 4, !121, i64 60, i64 4, !121, i64 64, i64 4, !121, i64 72, i64 8, !53, i64 80, i64 8, !53, i64 88, i64 8, !53, i64 96, i64 8, !129, i64 104, i64 8, !129, i64 112, i64 8, !129, i64 120, i64 8, !129, i64 128, i64 256, !153, i64 384, i64 64, !153, i64 448, i64 8, !129, i64 456, i64 4, !34, i64 464, i64 8, !53, i64 472, i64 8, !53, i64 480, i64 8, !53, i64 488, i64 8, !152, i64 496, i64 8, !152}
!152 = !{!64, !64, i64 0}
!153 = !{!36, !36, i64 0}
!154 = distinct !{!154, !73}
!155 = distinct !{!155, !73}
!156 = !{i64 0, i64 4, !121, i64 4, i64 4, !121, i64 8, i64 4, !121, i64 12, i64 4, !121}
!157 = !{!111, !113, i64 56}
!158 = !{!111, !41, i64 88}
!159 = distinct !{!159, !73}
!160 = distinct !{!160, !73}
!161 = distinct !{!161, !73}
!162 = distinct !{!162, !73}
!163 = !{!"quantize.c:DestroyCubeInfo"}
!164 = !{!111, !40, i64 104}
!165 = !{!166, !40, i64 8}
!166 = !{!"_Nodes", !40, i64 0, !40, i64 8}
!167 = !{!166, !40, i64 0}
!168 = distinct !{!168, !73}
!169 = distinct !{!169, !73}
!170 = distinct !{!170, !73}
!171 = distinct !{!171, !73}
!172 = distinct !{!172, !73}
!173 = !{!"quantize.c:GetNodeInfo"}
!174 = !{!111, !41, i64 80}
!175 = !{!111, !40, i64 96}
!176 = !{!117, !41, i64 176}
!177 = !{!117, !41, i64 184}
!178 = !{!"quantize.c:PerceptibleReciprocal"}
!179 = !{!"quantize.c:SetAssociatedAlpha"}
!180 = !{!"quantize.c:IssRGBCompatibleColorspace"}
!181 = !{!"quantize.c:PruneLevel"}
!182 = distinct !{!182, !73}
!183 = !{!"quantize.c:IsSameColor"}
!184 = !{!"quantize.c:AssociateAlphaPixel"}
!185 = !{!112, !113, i64 8}
!186 = !{!"quantize.c:ColorToNodeId"}
!187 = !{!112, !113, i64 0}
!188 = !{!112, !113, i64 4}
!189 = !{!"quantize.c:ClampPixel"}
!190 = !{!"quantize.c:PruneToCubeDepth"}
!191 = distinct !{!191, !73}
!192 = !{!"quantize.c:IsGrayColorspace"}
!193 = !{!"quantize.c:PruneChild"}
!194 = distinct !{!194, !73}
!195 = !{!"quantize.c:ScaleQuantumToChar"}
!196 = !{!"quantize.c:DefineImageColormap"}
!197 = distinct !{!197, !73}
!198 = !{!117, !113, i64 144}
!199 = !{!117, !113, i64 148}
!200 = !{!117, !41, i64 168}
!201 = !{!"quantize.c:DitherImage"}
!202 = distinct !{!202, !73}
!203 = !{!111, !64, i64 488}
!204 = !{!111, !64, i64 496}
!205 = !{!"quantize.c:ClosestColor"}
!206 = distinct !{!206, !73}
!207 = !{!"quantize.c:GetPixelLuma"}
!208 = !{!"quantize.c:ClampToQuantum"}
!209 = !{!"quantize.c:FloydSteinbergDither"}
!210 = !{i64 0, i64 16777216}
!211 = distinct !{!211, !73}
!212 = distinct !{!212, !73}
!213 = distinct !{!213, !73}
!214 = !{!"quantize.c:Riemersma"}
!215 = !{!"quantize.c:RiemersmaDither"}
!216 = !{!111, !41, i64 464}
!217 = !{!111, !41, i64 472}
!218 = distinct !{!218, !73}
!219 = distinct !{!219, !73}
!220 = !{!"quantize.c:AcquirePixelThreadSet"}
!221 = distinct !{!221, !73}
!222 = !{!"quantize.c:CacheOffset"}
!223 = !{!"quantize.c:DestroyPixelThreadSet"}
!224 = distinct !{!224, !73}
!225 = !{!"quantize.c:QuantizeErrorFlatten"}
!226 = distinct !{!226, !73}
!227 = !{!"quantize.c:MagickRealTypeCompare"}
!228 = !{!"quantize.c:Reduce"}
!229 = distinct !{!229, !73}
!230 = !{!"quantize.c:ScaleQuantumToMap"}
!231 = !{!"quantize.c:IntensityCompare"}
!232 = !{!"quantize.c:PixelPacketIntensity"}
