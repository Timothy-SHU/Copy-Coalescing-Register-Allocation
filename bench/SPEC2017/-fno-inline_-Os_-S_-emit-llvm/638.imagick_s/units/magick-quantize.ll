; ModuleID = 'magick/quantize.c'
source_filename = "magick/quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_PosterizeImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"Posterize/Image\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Assign/Image\00", align 1
@.gomp_critical_user_MagickCore_SetGrayscaleImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"Classify/Image\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Reduce/Image\00", align 1
@.gomp_critical_user_MagickCore_AssignImageColors.var = common global [8 x i32] zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"Dither/Image\00", align 1
@switch.table.Riemersma = private unnamed_addr constant [7 x i32] [i32 8, i32 6, i32 6, i32 6, i32 4, i32 6, i32 2], align 4
@switch.table.Riemersma.15 = private unnamed_addr constant [7 x i32] [i32 6, i32 8, i32 8, i32 8, i32 2, i32 8, i32 4], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireQuantizeInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #9
  call void @GetExceptionInfo(ptr noundef nonnull %2) #23
  %6 = tail call ptr @__errno_location() #24
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #23
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 377, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #23
  %10 = call ptr @DestroyString(ptr noundef %8) #23
  call void @CatchException(ptr noundef nonnull %2) #23
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #25
  unreachable

12:                                               ; preds = %1
  tail call void @GetQuantizeInfo(ptr noundef nonnull %3) #26
  %13 = icmp eq ptr %0, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !17
  %18 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = tail call i64 @ParseCommandOption(i32 noundef 21, i32 noundef 0, ptr noundef nonnull %18) #23
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 6
  store i32 %22, ptr %23, align 8, !tbaa !19
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 35
  %26 = load i32, ptr %25, align 4, !tbaa !20
  %27 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 4
  store i32 %26, ptr %27, align 8, !tbaa !21
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
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #23
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 48) #23
  store i64 256, ptr %0, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  store i32 1, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 6
  store i32 2, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !23
  %7 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 5
  store i64 2880220587, ptr %8, align 8, !tbaa !24
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
  %3 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #9
  call void @GetExceptionInfo(ptr noundef nonnull %2) #23
  %6 = tail call ptr @__errno_location() #24
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #23
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1021, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #23
  %10 = call ptr @DestroyString(ptr noundef %8) #23
  call void @CatchException(ptr noundef nonnull %2) #23
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #25
  unreachable

12:                                               ; preds = %1
  tail call void @GetQuantizeInfo(ptr noundef nonnull %3) #26
  %13 = icmp eq ptr %0, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %12
  %15 = load <2 x i64>, ptr %0, align 8, !tbaa !25
  store <2 x i64> %15, ptr %3, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 6
  store i32 %19, ptr %20, align 8, !tbaa !19
  %21 = load <2 x i32>, ptr %16, align 8, !tbaa !6
  store <2 x i32> %21, ptr %17, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct._QuantizeInfo, ptr %3, i64 0, i32 4
  store i32 %23, ptr %24, align 8, !tbaa !21
  br label %25

25:                                               ; preds = %12, %14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CompressImageColormap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._QuantizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1163, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #23
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = tail call i32 @IsPaletteImage(ptr noundef nonnull %0, ptr noundef nonnull %10) #23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  call void @GetQuantizeInfo(ptr noundef nonnull %2) #26
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %15 = load i64, ptr %14, align 8, !tbaa !37
  store i64 %15, ptr %2, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct._QuantizeInfo, ptr %2, i64 0, i32 1
  store i64 8, ptr %16, align 8, !tbaa !38
  %17 = call i32 @QuantizeImage(ptr noundef nonnull %2, ptr noundef nonnull %0) #26, !range !39
  br label %18

18:                                               ; preds = %9, %13
  %19 = phi i32 [ %17, %13 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #9
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsPaletteImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QuantizeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2695, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #23
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i64, ptr %0, align 8, !tbaa !22
  %11 = icmp eq i64 %10, 0
  %12 = tail call i64 @llvm.umin.i64(i64 %10, i64 65536)
  %13 = select i1 %11, i64 65536, i64 %12
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !42
  %22 = mul i64 %21, %19
  %23 = icmp ugt i64 %22, %13
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  tail call fastcc void @DirectToColormapImage(ptr noundef nonnull %1, ptr noundef nonnull %25) #26
  br label %26

26:                                               ; preds = %24, %17
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %28 = tail call i32 @IsGrayImage(ptr noundef nonnull %1, ptr noundef nonnull %27) #23
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @SetGrayscaleImage(ptr noundef nonnull %1) #26
  br label %31

31:                                               ; preds = %26, %30, %9
  %32 = load i32, ptr %1, align 8, !tbaa !43
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 10
  %36 = load i64, ptr %35, align 8, !tbaa !37
  %37 = icmp ugt i64 %36, %13
  br i1 %37, label %38, label %84

38:                                               ; preds = %34, %31
  %39 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !38
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
  br i1 %49, label %50, label %44, !llvm.loop !44

50:                                               ; preds = %44, %42
  %51 = phi i64 [ 1, %42 ], [ %48, %44 ]
  %52 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !17
  %54 = icmp ne i32 %53, 0
  %55 = icmp ugt i64 %51, 2
  %56 = select i1 %54, i1 %55, i1 false
  %57 = sext i1 %56 to i64
  %58 = add i64 %51, %57
  %59 = load i32, ptr %14, align 8, !tbaa !40
  %60 = icmp ne i32 %59, 0
  %61 = icmp ugt i64 %58, 5
  %62 = select i1 %60, i1 %61, i1 false
  %63 = sext i1 %62 to i64
  %64 = add i64 %58, %63
  %65 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %66 = tail call i32 @IsGrayImage(ptr noundef nonnull %1, ptr noundef nonnull %65) #23
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i64 %64, i64 8
  br label %69

69:                                               ; preds = %50, %38
  %70 = phi i64 [ %68, %50 ], [ %40, %38 ]
  %71 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef %70, i64 noundef %13) #26
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  br i1 %72, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %76 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %73, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2736, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %75) #23
  br label %84

77:                                               ; preds = %69
  %78 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %71, ptr noundef nonnull %1, ptr noundef nonnull %73) #26, !range !39
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  tail call fastcc void @ReduceImageColors(ptr noundef nonnull %1, ptr noundef nonnull %71) #26
  %81 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %1, ptr noundef nonnull %71) #26, !range !39
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %81, %80 ], [ 0, %77 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %71) #26
  br label %84

84:                                               ; preds = %34, %82, %74
  %85 = phi i32 [ 0, %74 ], [ %83, %82 ], [ 1, %34 ]
  ret i32 %85
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyQuantizeInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.6) #23
  %3 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 5
  store i64 -2880220588, ptr %3, align 8, !tbaa !24
  %4 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #23
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageQuantizeError(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2153, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = tail call i64 @GetNumberColors(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %9) #23
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 43
  store i64 %10, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 24) #23
  %14 = load i32, ptr %0, align 8, !tbaa !43
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %149, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !41
  %19 = uitofp i64 %18 to double
  %20 = fmul double %19, 3.000000e+00
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !42
  %23 = uitofp i64 %22 to double
  %24 = fmul double %20, %23
  %25 = fptrunc double %24 to float
  %26 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %9) #23
  %27 = load i64, ptr %21, align 8, !tbaa !42
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %140

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %32 = load i64, ptr %17, align 8, !tbaa !41
  br label %33

33:                                               ; preds = %29, %121
  %34 = phi i64 [ %32, %29 ], [ %44, %121 ]
  %35 = phi i64 [ 0, %29 ], [ %126, %121 ]
  %36 = phi float [ 0.000000e+00, %29 ], [ %124, %121 ]
  %37 = phi float [ 0.000000e+00, %29 ], [ %123, %121 ]
  %38 = phi float [ 0.000000e+00, %29 ], [ %122, %121 ]
  %39 = phi <2 x float> [ <float 1.000000e+00, float 1.000000e+00>, %29 ], [ %125, %121 ]
  %40 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef 0, i64 noundef %35, i64 noundef %34, i64 noundef 1, ptr noundef nonnull %9) #27
  %41 = icmp eq ptr %40, null
  br i1 %41, label %129, label %42

42:                                               ; preds = %33
  %43 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %26) #23
  %44 = load i64, ptr %17, align 8, !tbaa !41
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %121

46:                                               ; preds = %42
  %47 = icmp eq ptr %43, null
  %48 = load i32, ptr %30, align 8, !tbaa !40
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr %31, align 8, !tbaa !47
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
  %60 = load i16, ptr %59, align 2, !tbaa !48
  %61 = zext i16 %60 to i64
  br label %62

62:                                               ; preds = %51, %58
  %63 = phi i64 [ %61, %58 ], [ 0, %51 ]
  br i1 %49, label %75, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !49
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %63, i32 3
  %68 = load i16, ptr %67, align 2, !tbaa !49
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
  %78 = load i16, ptr %77, align 2, !tbaa !50
  %79 = uitofp i16 %78 to float
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %63, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !50
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
  %94 = load i16, ptr %93, align 2, !tbaa !51
  %95 = uitofp i16 %94 to float
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %63, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !51
  %98 = uitofp i16 %97 to float
  %99 = fmul float %84, %98
  %100 = tail call float @llvm.fmuladd.f32(float %86, float %95, float %99)
  %101 = tail call float @llvm.fabs.f32(float %100)
  %102 = fadd float %89, %101
  %103 = tail call float @llvm.fmuladd.f32(float %100, float %100, float %90)
  %104 = fcmp ogt float %101, %92
  %105 = select i1 %104, float %101, float %92
  %106 = load i16, ptr %53, align 2, !tbaa !52
  %107 = uitofp i16 %106 to float
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %63
  %109 = load i16, ptr %108, align 2, !tbaa !52
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
  br i1 %120, label %121, label %51, !llvm.loop !53

121:                                              ; preds = %75, %42
  %122 = phi float [ %38, %42 ], [ %117, %75 ]
  %123 = phi float [ %37, %42 ], [ %115, %75 ]
  %124 = phi float [ %36, %42 ], [ %114, %75 ]
  %125 = phi <2 x float> [ %39, %42 ], [ %76, %75 ]
  %126 = add nuw nsw i64 %35, 1
  %127 = load i64, ptr %21, align 8, !tbaa !42
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %33, label %129, !llvm.loop !54

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
  %143 = tail call ptr @DestroyCacheView(ptr noundef %26) #23
  %144 = fpext float %25 to double
  %145 = insertelement <2 x double> poison, double %144, i64 0
  %146 = shufflevector <2 x double> %145, <2 x double> poison, <2 x i32> zeroinitializer
  %147 = fdiv <2 x double> %142, %146
  store <2 x double> %147, ptr %12, align 8, !tbaa !55
  %148 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %141, ptr %148, align 8, !tbaa !56
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
define dso_local i32 @PosterizeImage(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @PosterizeImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, i32 noundef %2) #26
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PosterizeImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !57
  store i32 %1, ptr %6, align 4, !tbaa !6
  store i64 %2, ptr %7, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2333, ptr noundef nonnull @.str.5, ptr noundef nonnull %17) #23
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32, ptr %0, align 8, !tbaa !43
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %24 = and i64 %23, 576460752303423487
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #23
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #23
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  br label %38

34:                                               ; preds = %29, %26, %22
  %35 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %36 = icmp ult i64 %35, 2
  %37 = select i1 %36, i64 1, i64 2
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i64 [ %33, %32 ], [ %37, %34 ]
  %40 = trunc i64 %39 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %40)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @PosterizeImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %6, ptr nonnull %7)
  %41 = load ptr, ptr %5, align 8, !tbaa !57
  br label %42

42:                                               ; preds = %38, %19
  %43 = phi ptr [ %41, %38 ], [ %0, %19 ]
  store i32 1, ptr %10, align 4, !tbaa !6
  store i64 0, ptr %11, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 58
  store ptr %44, ptr %9, align 8, !tbaa !57
  %45 = call ptr @AcquireAuthenticCacheView(ptr noundef %43, ptr noundef nonnull %44) #23
  store ptr %45, ptr %8, align 8, !tbaa !57
  %46 = load ptr, ptr %5, align 8, !tbaa !57
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 8
  %48 = load i64, ptr %47, align 8, !tbaa !42
  %49 = call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %50 = shl i64 %49, 5
  %51 = icmp ugt i64 %48, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load ptr, ptr %5, align 8, !tbaa !57
  %54 = call i32 @GetImagePixelCacheType(ptr noundef %53) #23
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %5, align 8, !tbaa !57
  %58 = call i32 @GetImagePixelCacheType(ptr noundef %57) #23
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  br label %66

62:                                               ; preds = %56, %52, %42
  %63 = call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %64 = icmp ult i64 %63, 2
  %65 = select i1 %64, i64 1, i64 2
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i64 [ %61, %60 ], [ %65, %62 ]
  %68 = trunc i64 %67 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %68)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @PosterizeImageChannel.omp_outlined.7, ptr nonnull %5, ptr nonnull %10, ptr nonnull %8, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %11)
  %69 = load ptr, ptr %8, align 8, !tbaa !57
  %70 = call ptr @DestroyCacheView(ptr noundef %69) #23
  store ptr %70, ptr %8, align 8, !tbaa !57
  %71 = call ptr @AcquireQuantizeInfo(ptr noundef null) #26
  %72 = load i64, ptr %7, align 8, !tbaa !25
  %73 = mul i64 %72, %72
  %74 = mul i64 %73, %72
  %75 = call fastcc i64 @MagickMin(i64 noundef %74) #26
  store i64 %75, ptr %71, align 8, !tbaa !22
  %76 = getelementptr inbounds %struct._QuantizeInfo, ptr %71, i64 0, i32 2
  store i32 %3, ptr %76, align 8, !tbaa !17
  %77 = getelementptr inbounds %struct._QuantizeInfo, ptr %71, i64 0, i32 1
  store i64 8, ptr %77, align 8, !tbaa !38
  %78 = load ptr, ptr %5, align 8, !tbaa !57
  %79 = call i32 @QuantizeImage(ptr noundef nonnull %71, ptr noundef %78) #26, !range !39
  store i32 %79, ptr %10, align 4, !tbaa !6
  %80 = call ptr @DestroyQuantizeInfo(ptr noundef nonnull %71) #26
  %81 = load i32, ptr %10, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  ret i32 %81
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @PosterizeImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4) #8 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %2, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !37
  %13 = add nsw i64 %12, -1
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %107

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  store i64 %13, ptr %7, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 1, ptr %8, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !tbaa !6
  %16 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %16, i32 33, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i64 1, i64 4)
  %17 = load i64, ptr %6, align 8, !tbaa !25
  %18 = load i64, ptr %7, align 8
  %19 = call i64 @llvm.smin.i64(i64 %18, i64 %13)
  store i64 %19, ptr %7, align 8, !tbaa !25
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %106, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %3, align 4, !tbaa !6
  %23 = insertelement <4 x i32> poison, i32 %22, i64 0
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> zeroinitializer
  %25 = and <4 x i32> %24, <i32 8, i32 4, i32 2, i32 1>
  %26 = icmp eq <4 x i32> %25, zeroinitializer
  %27 = load i64, ptr %8, align 8, !tbaa !25
  %28 = extractelement <4 x i1> %26, i64 0
  %29 = extractelement <4 x i1> %26, i64 1
  %30 = extractelement <4 x i1> %26, i64 2
  %31 = extractelement <4 x i1> %26, i64 3
  br label %32

32:                                               ; preds = %21, %100
  %33 = phi i64 [ %19, %21 ], [ %103, %100 ]
  %34 = phi i64 [ %17, %21 ], [ %101, %100 ]
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 11
  %37 = load i64, ptr %4, align 8
  %38 = add i64 %37, -1
  %39 = uitofp i64 %38 to double
  br label %40

40:                                               ; preds = %32, %97
  %41 = phi i64 [ %34, %32 ], [ %98, %97 ]
  br i1 %31, label %55, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %36, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %43, i64 %41, i32 2
  %45 = load i16, ptr %44, align 2, !tbaa !50
  %46 = uitofp i16 %45 to double
  %47 = fmul double %46, 0x3EF0001000100010
  %48 = fmul double %47, %39
  %49 = call fastcc double @MagickRound(double noundef %48) #26
  %50 = fmul double %49, 6.553500e+04
  %51 = call fastcc i64 @MagickMax(i64 noundef %38, i64 noundef 1) #26
  %52 = sitofp i64 %51 to double
  %53 = fdiv double %50, %52
  %54 = fptoui double %53 to i16
  store i16 %54, ptr %44, align 2, !tbaa !50
  br label %55

55:                                               ; preds = %42, %40
  br i1 %30, label %69, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %36, align 8, !tbaa !47
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 %41, i32 1
  %59 = load i16, ptr %58, align 2, !tbaa !51
  %60 = uitofp i16 %59 to double
  %61 = fmul double %60, 0x3EF0001000100010
  %62 = fmul double %61, %39
  %63 = call fastcc double @MagickRound(double noundef %62) #26
  %64 = fmul double %63, 6.553500e+04
  %65 = call fastcc i64 @MagickMax(i64 noundef %38, i64 noundef 1) #26
  %66 = sitofp i64 %65 to double
  %67 = fdiv double %64, %66
  %68 = fptoui double %67 to i16
  store i16 %68, ptr %58, align 2, !tbaa !51
  br label %69

69:                                               ; preds = %56, %55
  br i1 %29, label %83, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %36, align 8, !tbaa !47
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 %41
  %73 = load i16, ptr %72, align 2, !tbaa !52
  %74 = uitofp i16 %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fmul double %75, %39
  %77 = call fastcc double @MagickRound(double noundef %76) #26
  %78 = fmul double %77, 6.553500e+04
  %79 = call fastcc i64 @MagickMax(i64 noundef %38, i64 noundef 1) #26
  %80 = sitofp i64 %79 to double
  %81 = fdiv double %78, %80
  %82 = fptoui double %81 to i16
  store i16 %82, ptr %72, align 2, !tbaa !52
  br label %83

83:                                               ; preds = %70, %69
  br i1 %28, label %97, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %36, align 8, !tbaa !47
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 %41, i32 3
  %87 = load i16, ptr %86, align 2, !tbaa !49
  %88 = uitofp i16 %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fmul double %89, %39
  %91 = call fastcc double @MagickRound(double noundef %90) #26
  %92 = fmul double %91, 6.553500e+04
  %93 = call fastcc i64 @MagickMax(i64 noundef %38, i64 noundef 1) #26
  %94 = sitofp i64 %93 to double
  %95 = fdiv double %92, %94
  %96 = fptoui double %95 to i16
  store i16 %96, ptr %86, align 2, !tbaa !49
  br label %97

97:                                               ; preds = %84, %83
  %98 = add nsw i64 %41, 1
  %99 = icmp slt i64 %41, %33
  br i1 %99, label %40, label %100

100:                                              ; preds = %97
  %101 = add nsw i64 %27, %34
  %102 = add nsw i64 %27, %33
  %103 = call i64 @llvm.smin.i64(i64 %102, i64 %13)
  %104 = icmp sgt i64 %101, %103
  br i1 %104, label %105, label %32

105:                                              ; preds = %100
  store i64 %103, ptr %7, align 8, !tbaa !25
  store i64 %101, ptr %6, align 8, !tbaa !25
  br label %106

106:                                              ; preds = %105, %15
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %107

107:                                              ; preds = %106, %5
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickRound(double noundef %0) unnamed_addr #10 {
  %2 = tail call double @llvm.floor.f64(double %0)
  %3 = fsub double %0, %2
  %4 = tail call double @llvm.ceil.f64(double %0)
  %5 = fsub double %4, %0
  %6 = fcmp olt double %3, %5
  %7 = select i1 %6, double %2, double %4
  ret double %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0, i64 noundef %1) unnamed_addr #10 {
  %3 = tail call i64 @llvm.smax.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !59 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @PosterizeImageChannel.omp_outlined.7(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #8 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %178

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store i64 0, ptr %10, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  store i64 %17, ptr %11, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  store i64 1, ptr %12, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 0, ptr %13, align 4, !tbaa !6
  %20 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !25
  %23 = load i64, ptr %10, align 8, !tbaa !25
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %177, label %25

25:                                               ; preds = %19, %169
  %26 = phi i64 [ %175, %169 ], [ %22, %19 ]
  %27 = phi i64 [ %173, %169 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %169, label %29

29:                                               ; preds = %25, %163
  %30 = phi i64 [ %164, %163 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %163, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !57
  %35 = load ptr, ptr %2, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !41
  %38 = load ptr, ptr %5, align 8, !tbaa !57
  %39 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #27
  %40 = icmp eq ptr %39, null
  br i1 %40, label %162, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !tbaa !57
  %43 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %42) #23
  %44 = load ptr, ptr %2, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !41
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %143

48:                                               ; preds = %41
  %49 = load i32, ptr %6, align 4, !tbaa !6
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  %52 = load i64, ptr %7, align 8
  %53 = add i64 %52, -1
  %54 = uitofp i64 %53 to double
  %55 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 6
  %56 = insertelement <4 x i32> poison, i32 %49, i64 0
  %57 = shufflevector <4 x i32> %56, <4 x i32> poison, <4 x i32> zeroinitializer
  %58 = and <4 x i32> %57, <i32 32, i32 8, i32 4, i32 2>
  %59 = icmp eq <4 x i32> %58, zeroinitializer
  %60 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 1
  %61 = icmp eq ptr %43, null
  %62 = extractelement <4 x i1> %59, i64 0
  %63 = extractelement <4 x i1> %59, i64 1
  %64 = extractelement <4 x i1> %59, i64 2
  %65 = extractelement <4 x i1> %59, i64 3
  br label %66

66:                                               ; preds = %48, %139
  %67 = phi i64 [ 0, %48 ], [ %141, %139 ]
  %68 = phi ptr [ %39, %48 ], [ %140, %139 ]
  br i1 %51, label %81, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 2
  %71 = load i16, ptr %70, align 2, !tbaa !50
  %72 = uitofp i16 %71 to double
  %73 = fmul double %72, 0x3EF0001000100010
  %74 = fmul double %73, %54
  %75 = call fastcc double @MagickRound(double noundef %74) #26
  %76 = fmul double %75, 6.553500e+04
  %77 = call fastcc i64 @MagickMax(i64 noundef %53, i64 noundef 1) #26
  %78 = sitofp i64 %77 to double
  %79 = fdiv double %76, %78
  %80 = fptoui double %79 to i16
  store i16 %80, ptr %70, align 2, !tbaa !50
  br label %81

81:                                               ; preds = %69, %66
  br i1 %65, label %94, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !51
  %85 = uitofp i16 %84 to double
  %86 = fmul double %85, 0x3EF0001000100010
  %87 = fmul double %86, %54
  %88 = call fastcc double @MagickRound(double noundef %87) #26
  %89 = fmul double %88, 6.553500e+04
  %90 = call fastcc i64 @MagickMax(i64 noundef %53, i64 noundef 1) #26
  %91 = sitofp i64 %90 to double
  %92 = fdiv double %89, %91
  %93 = fptoui double %92 to i16
  store i16 %93, ptr %83, align 2, !tbaa !51
  br label %94

94:                                               ; preds = %82, %81
  br i1 %64, label %106, label %95

95:                                               ; preds = %94
  %96 = load i16, ptr %68, align 2, !tbaa !52
  %97 = uitofp i16 %96 to double
  %98 = fmul double %97, 0x3EF0001000100010
  %99 = fmul double %98, %54
  %100 = call fastcc double @MagickRound(double noundef %99) #26
  %101 = fmul double %100, 6.553500e+04
  %102 = call fastcc i64 @MagickMax(i64 noundef %53, i64 noundef 1) #26
  %103 = sitofp i64 %102 to double
  %104 = fdiv double %101, %103
  %105 = fptoui double %104 to i16
  store i16 %105, ptr %68, align 2, !tbaa !52
  br label %106

106:                                              ; preds = %95, %94
  br i1 %63, label %122, label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %55, align 8, !tbaa !40
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 3
  %112 = load i16, ptr %111, align 2, !tbaa !49
  %113 = uitofp i16 %112 to double
  %114 = fmul double %113, 0x3EF0001000100010
  %115 = fmul double %114, %54
  %116 = call fastcc double @MagickRound(double noundef %115) #26
  %117 = fmul double %116, 6.553500e+04
  %118 = call fastcc i64 @MagickMax(i64 noundef %53, i64 noundef 1) #26
  %119 = sitofp i64 %118 to double
  %120 = fdiv double %117, %119
  %121 = fptoui double %120 to i16
  store i16 %121, ptr %111, align 2, !tbaa !49
  br label %122

122:                                              ; preds = %110, %107, %106
  br i1 %62, label %139, label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %60, align 4, !tbaa !61
  %125 = icmp ne i32 %124, 12
  %126 = select i1 %125, i1 true, i1 %61
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds i16, ptr %43, i64 %67
  %129 = load i16, ptr %128, align 2, !tbaa !48
  %130 = uitofp i16 %129 to double
  %131 = fmul double %130, 0x3EF0001000100010
  %132 = fmul double %131, %54
  %133 = call fastcc double @MagickRound(double noundef %132) #26
  %134 = fmul double %133, 6.553500e+04
  %135 = call fastcc i64 @MagickMax(i64 noundef %53, i64 noundef 1) #26
  %136 = sitofp i64 %135 to double
  %137 = fdiv double %134, %136
  %138 = fptoui double %137 to i16
  store i16 %138, ptr %128, align 2, !tbaa !48
  br label %139

139:                                              ; preds = %127, %123, %122
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 1
  %141 = add nuw nsw i64 %67, 1
  %142 = icmp eq i64 %141, %46
  br i1 %142, label %143, label %66, !llvm.loop !62

143:                                              ; preds = %139, %41
  %144 = load ptr, ptr %4, align 8, !tbaa !57
  %145 = load ptr, ptr %5, align 8, !tbaa !57
  %146 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %144, ptr noundef %145) #27
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %149

149:                                              ; preds = %148, %143
  %150 = load ptr, ptr %2, align 8, !tbaa !57
  %151 = getelementptr inbounds %struct._Image, ptr %150, i64 0, i32 47
  %152 = load ptr, ptr %151, align 8, !tbaa !63
  %153 = icmp eq ptr %152, null
  br i1 %153, label %163, label %154

154:                                              ; preds = %149
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_PosterizeImageChannel.var)
  %155 = load ptr, ptr %2, align 8, !tbaa !57
  %156 = load i64, ptr %8, align 8, !tbaa !58
  %157 = add nsw i64 %156, 1
  store i64 %157, ptr %8, align 8, !tbaa !58
  %158 = getelementptr inbounds %struct._Image, ptr %155, i64 0, i32 8
  %159 = load i64, ptr %158, align 8, !tbaa !42
  %160 = call fastcc i32 @SetImageProgress(ptr noundef %155, ptr noundef nonnull @.str.8, i64 noundef %156, i64 noundef %159) #26
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_PosterizeImageChannel.var)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154, %33
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %163

163:                                              ; preds = %162, %149, %154, %29
  %164 = add nsw i64 %30, 1
  %165 = load i64, ptr %11, align 8, !tbaa !25
  %166 = icmp slt i64 %30, %165
  br i1 %166, label %29, label %167

167:                                              ; preds = %163
  %168 = load i64, ptr %10, align 8, !tbaa !25
  br label %169

169:                                              ; preds = %167, %25
  %170 = phi i64 [ %27, %25 ], [ %168, %167 ]
  %171 = phi i64 [ %26, %25 ], [ %165, %167 ]
  %172 = load i64, ptr %12, align 8, !tbaa !25
  %173 = add nsw i64 %172, %170
  store i64 %173, ptr %10, align 8, !tbaa !25
  %174 = add nsw i64 %172, %171
  %175 = call i64 @llvm.smin.i64(i64 %174, i64 %17)
  store i64 %175, ptr %11, align 8, !tbaa !25
  %176 = icmp sgt i64 %173, %175
  br i1 %176, label %177, label %25

177:                                              ; preds = %169, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %178

178:                                              ; preds = %177, %9
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %10) #23
  %12 = load ptr, ptr %6, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #23
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #10 {
  %2 = tail call i64 @llvm.smin.i64(i64 %0, i64 65537)
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DirectToColormapImage(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %6 = load i64, ptr %5, align 8, !tbaa !42
  %7 = mul i64 %6, %4
  %8 = tail call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %7) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2633, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %12) #23
  br label %66

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !37
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %1) #23
  %20 = load i64, ptr %5, align 8, !tbaa !42
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %24

24:                                               ; preds = %22, %56
  %25 = phi i64 [ 0, %22 ], [ %61, %56 ]
  %26 = phi i32 [ 1, %22 ], [ %60, %56 ]
  %27 = phi i64 [ 0, %22 ], [ %53, %56 ]
  %28 = load i64, ptr %3, align 8, !tbaa !41
  %29 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %19, i64 noundef 0, i64 noundef %25, i64 noundef %28, i64 noundef 1, ptr noundef %1) #27
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %31

31:                                               ; preds = %24
  %32 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %19) #23
  %33 = load i64, ptr %3, align 8, !tbaa !41
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load ptr, ptr %23, align 8, !tbaa !47
  %37 = icmp eq ptr %32, null
  br label %38

38:                                               ; preds = %35, %47
  %39 = phi i64 [ 0, %35 ], [ %50, %47 ]
  %40 = phi ptr [ %29, %35 ], [ %49, %47 ]
  %41 = phi i64 [ %27, %35 ], [ %48, %47 ]
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %41
  %43 = load <4 x i16>, ptr %40, align 2, !tbaa !48
  store <4 x i16> %43, ptr %42, align 2, !tbaa !48
  br i1 %37, label %47, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds i16, ptr %32, i64 %39
  %46 = trunc i64 %41 to i16
  store i16 %46, ptr %45, align 2, !tbaa !48
  br label %47

47:                                               ; preds = %44, %38
  %48 = add nsw i64 %41, 1
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %40, i64 1
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, %33
  br i1 %51, label %52, label %38, !llvm.loop !65

52:                                               ; preds = %47, %31
  %53 = phi i64 [ %27, %31 ], [ %48, %47 ]
  %54 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %19, ptr noundef %1) #27
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i64, ptr %5, align 8, !tbaa !42
  %58 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef %25, i64 noundef %57) #26
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 0, i32 %26
  %61 = add nuw nsw i64 %25, 1
  %62 = load i64, ptr %5, align 8, !tbaa !42
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %24, label %64, !llvm.loop !66

64:                                               ; preds = %56, %24, %52, %18
  %65 = tail call ptr @DestroyCacheView(ptr noundef %19) #23
  br label %66

66:                                               ; preds = %14, %10, %64
  ret void
}

; Function Attrs: optsize
declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @SetGrayscaleImage(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %2, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %10 = load i32, ptr %9, align 8, !tbaa !67
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #23
  br label %14

14:                                               ; preds = %12, %1
  %15 = tail call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #28
  store ptr %15, ptr %6, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3345, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #23
  br label %224

21:                                               ; preds = %14
  %22 = load i32, ptr %0, align 8, !tbaa !43
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %58, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %15, i8 -1, i64 524288, i1 false), !tbaa !25
  %25 = tail call i32 @AcquireImageColormap(ptr noundef nonnull %0, i64 noundef 65536) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  store i64 0, ptr %28, align 8, !tbaa !37
  store i32 1, ptr %5, align 4, !tbaa !6
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %29, ptr %7, align 8, !tbaa !57
  %30 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %29) #23
  store ptr %30, ptr %3, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !42
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %34 = shl i64 %33, 5
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #23
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #23
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  br label %52

44:                                               ; preds = %39, %36, %27
  %45 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %46 = icmp ult i64 %45, 2
  %47 = select i1 %46, i64 1, i64 2
  br label %52

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %49, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3355, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %50) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %224

52:                                               ; preds = %42, %44
  %53 = phi i64 [ %43, %42 ], [ %47, %44 ]
  %54 = trunc i64 %53 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %8, i32 %54)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @SetGrayscaleImage.omp_outlined, ptr nonnull %2, ptr nonnull %5, ptr nonnull %3, ptr nonnull %7, ptr nonnull %6)
  %55 = load ptr, ptr %3, align 8, !tbaa !57
  %56 = call ptr @DestroyCacheView(ptr noundef %55) #23
  store ptr %56, ptr %3, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %57 = load ptr, ptr %2, align 8, !tbaa !57
  br label %58

58:                                               ; preds = %52, %21
  %59 = phi ptr [ %57, %52 ], [ %0, %21 ]
  %60 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 10
  %61 = load i64, ptr %60, align 8, !tbaa !37
  %62 = icmp sgt i64 %61, 0
  %63 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !47
  br i1 %62, label %65, label %125

65:                                               ; preds = %58
  %66 = add nuw i64 %61, 7
  %67 = and i64 %66, -8
  %68 = add nsw i64 %61, -1
  %69 = insertelement <8 x i64> poison, i64 %68, i64 0
  %70 = shufflevector <8 x i64> %69, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %71

71:                                               ; preds = %121, %65
  %72 = phi i64 [ 0, %65 ], [ %122, %121 ]
  %73 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %65 ], [ %123, %121 ]
  %74 = trunc i64 %72 to i16
  %75 = icmp ule <8 x i64> %73, %70
  %76 = extractelement <8 x i1> %75, i64 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %72, i32 3
  store i16 %74, ptr %78, align 2, !tbaa !49
  br label %79

79:                                               ; preds = %77, %71
  %80 = extractelement <8 x i1> %75, i64 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = or disjoint i64 %72, 1
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %82, i32 3
  %84 = or disjoint i16 %74, 1
  store i16 %84, ptr %83, align 2, !tbaa !49
  br label %85

85:                                               ; preds = %81, %79
  %86 = extractelement <8 x i1> %75, i64 2
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  %88 = or disjoint i64 %72, 2
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %88, i32 3
  %90 = or disjoint i16 %74, 2
  store i16 %90, ptr %89, align 2, !tbaa !49
  br label %91

91:                                               ; preds = %87, %85
  %92 = extractelement <8 x i1> %75, i64 3
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = or disjoint i64 %72, 3
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %94, i32 3
  %96 = or disjoint i16 %74, 3
  store i16 %96, ptr %95, align 2, !tbaa !49
  br label %97

97:                                               ; preds = %93, %91
  %98 = extractelement <8 x i1> %75, i64 4
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  %100 = or disjoint i64 %72, 4
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %100, i32 3
  %102 = or disjoint i16 %74, 4
  store i16 %102, ptr %101, align 2, !tbaa !49
  br label %103

103:                                              ; preds = %99, %97
  %104 = extractelement <8 x i1> %75, i64 5
  br i1 %104, label %105, label %109

105:                                              ; preds = %103
  %106 = or disjoint i64 %72, 5
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %106, i32 3
  %108 = or disjoint i16 %74, 5
  store i16 %108, ptr %107, align 2, !tbaa !49
  br label %109

109:                                              ; preds = %105, %103
  %110 = extractelement <8 x i1> %75, i64 6
  br i1 %110, label %111, label %115

111:                                              ; preds = %109
  %112 = or disjoint i64 %72, 6
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %112, i32 3
  %114 = or disjoint i16 %74, 6
  store i16 %114, ptr %113, align 2, !tbaa !49
  br label %115

115:                                              ; preds = %111, %109
  %116 = extractelement <8 x i1> %75, i64 7
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  %118 = or disjoint i64 %72, 7
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %118, i32 3
  %120 = or disjoint i16 %74, 7
  store i16 %120, ptr %119, align 2, !tbaa !49
  br label %121

121:                                              ; preds = %117, %115
  %122 = add i64 %72, 8
  %123 = add <8 x i64> %73, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %124 = icmp eq i64 %122, %67
  br i1 %124, label %125, label %71, !llvm.loop !68

125:                                              ; preds = %121, %58
  call void @qsort(ptr noundef %64, i64 noundef %61, i64 noundef 8, ptr noundef nonnull @IntensityCompare) #23
  %126 = load ptr, ptr %2, align 8, !tbaa !57
  %127 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 10
  %128 = load i64, ptr %127, align 8, !tbaa !37
  %129 = call ptr @AcquireQuantumMemory(i64 noundef %128, i64 noundef 8) #28
  %130 = icmp eq ptr %129, null
  %131 = load ptr, ptr %2, align 8, !tbaa !57
  br i1 %130, label %132, label %138

132:                                              ; preds = %125
  %133 = icmp eq ptr %131, null
  br i1 %133, label %224, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct._Image, ptr %131, i64 0, i32 58
  %136 = getelementptr inbounds %struct._Image, ptr %131, i64 0, i32 53
  %137 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %135, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3421, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %136) #23
  br label %224

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct._Image, ptr %131, i64 0, i32 11
  %140 = load ptr, ptr %139, align 8, !tbaa !47
  %141 = load i64, ptr %140, align 2
  store i64 %141, ptr %129, align 2
  %142 = load ptr, ptr %2, align 8, !tbaa !57
  %143 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 10
  %144 = load i64, ptr %143, align 8, !tbaa !37
  %145 = icmp sgt i64 %144, 0
  %146 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 11
  %147 = load ptr, ptr %146, align 8, !tbaa !47
  br i1 %145, label %148, label %179

148:                                              ; preds = %138, %164
  %149 = phi ptr [ %165, %164 ], [ %147, %138 ]
  %150 = phi ptr [ %166, %164 ], [ %142, %138 ]
  %151 = phi i64 [ %167, %164 ], [ 0, %138 ]
  %152 = phi i64 [ %173, %164 ], [ 0, %138 ]
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 %151
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 %152
  %155 = call fastcc i32 @IsSameColor(ptr noundef nonnull %150, ptr noundef nonnull %153, ptr noundef %154) #26, !range !39
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = add nsw i64 %151, 1
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 %158
  %160 = load i64, ptr %154, align 2
  store i64 %160, ptr %159, align 2
  %161 = load ptr, ptr %2, align 8, !tbaa !57
  %162 = getelementptr inbounds %struct._Image, ptr %161, i64 0, i32 11
  %163 = load ptr, ptr %162, align 8, !tbaa !47
  br label %164

164:                                              ; preds = %157, %148
  %165 = phi ptr [ %163, %157 ], [ %149, %148 ]
  %166 = phi ptr [ %161, %157 ], [ %150, %148 ]
  %167 = phi i64 [ %158, %157 ], [ %151, %148 ]
  %168 = load ptr, ptr %6, align 8, !tbaa !57
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %152, i32 3
  %170 = load i16, ptr %169, align 2, !tbaa !49
  %171 = zext i16 %170 to i64
  %172 = getelementptr inbounds i64, ptr %168, i64 %171
  store i64 %167, ptr %172, align 8, !tbaa !25
  %173 = add nuw nsw i64 %152, 1
  %174 = getelementptr inbounds %struct._Image, ptr %166, i64 0, i32 10
  %175 = load i64, ptr %174, align 8, !tbaa !37
  %176 = icmp slt i64 %173, %175
  br i1 %176, label %148, label %177, !llvm.loop !71

177:                                              ; preds = %164
  %178 = add nsw i64 %167, 1
  br label %179

179:                                              ; preds = %138, %177
  %180 = phi ptr [ %165, %177 ], [ %147, %138 ]
  %181 = phi ptr [ %166, %177 ], [ %142, %138 ]
  %182 = phi i64 [ %178, %177 ], [ 1, %138 ]
  %183 = getelementptr inbounds %struct._Image, ptr %181, i64 0, i32 10
  store i64 %182, ptr %183, align 8, !tbaa !37
  %184 = call ptr @RelinquishMagickMemory(ptr noundef %180) #23
  %185 = load ptr, ptr %2, align 8, !tbaa !57
  %186 = getelementptr inbounds %struct._Image, ptr %185, i64 0, i32 11
  store ptr %129, ptr %186, align 8, !tbaa !47
  store i32 1, ptr %5, align 4, !tbaa !6
  %187 = getelementptr inbounds %struct._Image, ptr %185, i64 0, i32 58
  store ptr %187, ptr %4, align 8, !tbaa !57
  %188 = call ptr @AcquireAuthenticCacheView(ptr noundef %185, ptr noundef nonnull %187) #23
  store ptr %188, ptr %3, align 8, !tbaa !57
  %189 = load ptr, ptr %2, align 8, !tbaa !57
  %190 = getelementptr inbounds %struct._Image, ptr %189, i64 0, i32 8
  %191 = load i64, ptr %190, align 8, !tbaa !42
  %192 = call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %193 = shl i64 %192, 5
  %194 = icmp ugt i64 %191, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %179
  %196 = load ptr, ptr %2, align 8, !tbaa !57
  %197 = call i32 @GetImagePixelCacheType(ptr noundef %196) #23
  %198 = icmp eq i32 %197, 3
  br i1 %198, label %205, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %2, align 8, !tbaa !57
  %201 = call i32 @GetImagePixelCacheType(ptr noundef %200) #23
  %202 = icmp eq i32 %201, 3
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  br label %209

205:                                              ; preds = %199, %195, %179
  %206 = call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %207 = icmp ult i64 %206, 2
  %208 = select i1 %207, i64 1, i64 2
  br label %209

209:                                              ; preds = %205, %203
  %210 = phi i64 [ %204, %203 ], [ %208, %205 ]
  %211 = trunc i64 %210 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %8, i32 %211)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @SetGrayscaleImage.omp_outlined.11, ptr nonnull %2, ptr nonnull %5, ptr nonnull %3, ptr nonnull %4, ptr nonnull %6)
  %212 = load ptr, ptr %3, align 8, !tbaa !57
  %213 = call ptr @DestroyCacheView(ptr noundef %212) #23
  store ptr %213, ptr %3, align 8, !tbaa !57
  %214 = load ptr, ptr %6, align 8, !tbaa !57
  %215 = call ptr @RelinquishMagickMemory(ptr noundef %214) #23
  store ptr %215, ptr %6, align 8, !tbaa !57
  %216 = load ptr, ptr %2, align 8, !tbaa !57
  %217 = getelementptr inbounds %struct._Image, ptr %216, i64 0, i32 77
  store i32 2, ptr %217, align 8, !tbaa !67
  %218 = getelementptr inbounds %struct._Image, ptr %216, i64 0, i32 58
  %219 = call i32 @IsMonochromeImage(ptr noundef %216, ptr noundef nonnull %218) #23
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %209
  %222 = load ptr, ptr %2, align 8, !tbaa !57
  %223 = getelementptr inbounds %struct._Image, ptr %222, i64 0, i32 77
  store i32 1, ptr %223, align 8, !tbaa !67
  br label %224

224:                                              ; preds = %209, %221, %48, %132, %134, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @GetCubeInfo(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call dereferenceable_or_null(504) ptr @AcquireMagickMemory(i64 noundef 504) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 504) #23
  %8 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 22
  %9 = tail call i64 @llvm.umin.i64(i64 %1, i64 8)
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 2)
  store i64 %10, ptr %8, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 2
  store i64 %2, ptr %11, align 8, !tbaa !76
  %12 = tail call fastcc ptr @GetNodeInfo(ptr noundef nonnull %4, i64 noundef 0, i64 noundef 0, ptr noundef null) #26
  store ptr %12, ptr %4, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %64, label %14

14:                                               ; preds = %6
  store ptr %12, ptr %12, align 8, !tbaa !78
  %15 = tail call ptr @CloneQuantizeInfo(ptr noundef %0) #26
  %16 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 18
  store ptr %15, ptr %16, align 8, !tbaa !80
  %17 = getelementptr inbounds %struct._QuantizeInfo, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %14
  %21 = tail call dereferenceable_or_null(134217728) ptr @AcquireVirtualMemory(i64 noundef 16777216, i64 noundef 8) #28
  %22 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 14
  store ptr %21, ptr %22, align 8, !tbaa !81
  %23 = icmp eq ptr %21, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %21) #23
  %26 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 15
  store ptr %25, ptr %26, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(134217728) %25, i8 -1, i64 134217728, i1 false), !tbaa !25
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i64 [ %37, %27 ], [ 0, %24 ]
  %29 = phi float [ %36, %27 ], [ 1.000000e+00, %24 ]
  %30 = fpext float %29 to double
  %31 = tail call fastcc double @PerceptibleReciprocal(double noundef %30) #26
  %32 = fptrunc double %31 to float
  %33 = xor i64 %28, 15
  %34 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %33
  store float %32, ptr %34, align 4, !tbaa !83
  %35 = fmul double %30, 0x4000C1B77B6CEBED
  %36 = fptrunc double %35 to float
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, 16
  br i1 %38, label %39, label %27, !llvm.loop !84

39:                                               ; preds = %27, %39
  %40 = phi i64 [ %45, %39 ], [ 0, %27 ]
  %41 = phi float [ %44, %39 ], [ 0.000000e+00, %27 ]
  %42 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %40
  %43 = load float, ptr %42, align 4, !tbaa !83
  %44 = fadd float %41, %43
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, 16
  br i1 %46, label %47, label %39, !llvm.loop !85

47:                                               ; preds = %39, %47
  %48 = phi i64 [ %54, %47 ], [ 0, %39 ]
  %49 = phi float [ %53, %47 ], [ 0.000000e+00, %39 ]
  %50 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17, i64 %48
  %51 = load float, ptr %50, align 4, !tbaa !83
  %52 = fdiv float %51, %44
  store float %52, ptr %50, align 4, !tbaa !83
  %53 = fadd float %49, %52
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, 16
  br i1 %55, label %56, label %47, !llvm.loop !86

56:                                               ; preds = %47
  %57 = fpext float %53 to double
  %58 = fsub double 1.000000e+00, %57
  %59 = getelementptr inbounds %struct._CubeInfo, ptr %4, i64 0, i32 17
  %60 = load float, ptr %59, align 8, !tbaa !83
  %61 = fpext float %60 to double
  %62 = fadd double %58, %61
  %63 = fptrunc double %62 to float
  store float %63, ptr %59, align 8, !tbaa !83
  br label %64

64:                                               ; preds = %20, %14, %6, %3, %56
  %65 = phi ptr [ %4, %56 ], [ null, %3 ], [ null, %6 ], [ %4, %14 ], [ null, %20 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ClassifyImageColors(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._RealPixelPacket, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  tail call fastcc void @SetAssociatedAlpha(ptr noundef %1, ptr noundef %0) #26
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct._QuantizeInfo, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !23
  switch i32 %8, label %9 [
    i32 0, label %11
    i32 12, label %11
  ]

9:                                                ; preds = %3
  %10 = tail call i32 @TransformImageColorspace(ptr noundef %1, i32 noundef %8) #23
  br label %18

11:                                               ; preds = %3, %3
  %12 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %13) #26, !range !39
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %1, i32 noundef 13) #23
  br label %18

18:                                               ; preds = %11, %16, %9
  %19 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %2) #23
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !42
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
  %37 = load i64, ptr %24, align 8, !tbaa !41
  %38 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %19, i64 noundef 0, i64 noundef %35, i64 noundef %37, i64 noundef 1, ptr noundef %2) #27
  %39 = icmp eq ptr %38, null
  br i1 %39, label %218, label %40

40:                                               ; preds = %34
  %41 = load i64, ptr %25, align 8, !tbaa !87
  %42 = icmp ugt i64 %41, 266817
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr %0, align 8, !tbaa !77
  tail call fastcc void @PruneLevel(ptr noundef nonnull %0, ptr noundef %44) #26
  %45 = load i64, ptr %26, align 8, !tbaa !72
  %46 = add i64 %45, -1
  store i64 %46, ptr %26, align 8, !tbaa !72
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i64, ptr %24, align 8, !tbaa !41
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
  %60 = tail call fastcc i32 @IsSameColor(ptr noundef %1, ptr noundef %53, ptr noundef nonnull %59) #26, !range !39
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %66

62:                                               ; preds = %66
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %68
  %64 = tail call fastcc i32 @IsSameColor(ptr noundef %1, ptr noundef %53, ptr noundef %63) #26, !range !39
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !llvm.loop !88

66:                                               ; preds = %57, %62
  %67 = phi i64 [ %68, %62 ], [ 1, %57 ]
  %68 = add i64 %67, 1
  %69 = icmp eq i64 %68, %58
  br i1 %69, label %72, label %62, !llvm.loop !88

70:                                               ; preds = %62
  %71 = add nsw i64 %68, %52
  br label %72

72:                                               ; preds = %66, %57, %70, %50
  %73 = phi i64 [ 1, %50 ], [ %68, %70 ], [ 1, %57 ], [ %58, %66 ]
  %74 = phi i64 [ %55, %50 ], [ %71, %70 ], [ %55, %57 ], [ %51, %66 ]
  call fastcc void @AssociateAlphaPixel(ptr noundef %0, ptr noundef %53, ptr noundef nonnull %4) #26
  %75 = load ptr, ptr %0, align 8, !tbaa !77
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
  %92 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %83) #26, !range !89
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
  %110 = load ptr, ptr %109, align 8, !tbaa !57
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %81
  %113 = tail call fastcc ptr @GetNodeInfo(ptr noundef nonnull %0, i64 noundef %92, i64 noundef %82, ptr noundef nonnull %85) #26
  store ptr %113, ptr %109, align 8, !tbaa !57
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 848, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %32) #23
  br label %159

117:                                              ; preds = %112
  %118 = icmp eq i64 %82, 8
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i64, ptr %27, align 8, !tbaa !90
  %121 = add i64 %120, 1
  store i64 %121, ptr %27, align 8, !tbaa !90
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
  %136 = load i32, ptr %30, align 8, !tbaa !91
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
  %150 = load float, ptr %149, align 8, !tbaa !92
  %151 = fpext float %150 to double
  %152 = tail call double @llvm.fmuladd.f64(double %80, double %148, double %151)
  %153 = fptrunc double %152 to float
  store float %153, ptr %149, align 8, !tbaa !92
  %154 = load ptr, ptr %0, align 8, !tbaa !77
  %155 = getelementptr inbounds %struct._NodeInfo, ptr %154, i64 0, i32 4
  %156 = load float, ptr %155, align 8, !tbaa !92
  %157 = fadd float %156, %153
  store float %157, ptr %155, align 8, !tbaa !92
  %158 = add i64 %83, -1
  br label %159

159:                                              ; preds = %122, %115
  %160 = phi float [ %90, %115 ], [ %142, %122 ]
  %161 = phi ptr [ %85, %115 ], [ %123, %122 ]
  %162 = phi i64 [ %83, %115 ], [ %158, %122 ]
  %163 = add nuw nsw i64 %82, 1
  %164 = icmp eq i64 %163, 9
  br i1 %164, label %165, label %81, !llvm.loop !93

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct._NodeInfo, ptr %161, i64 0, i32 2
  %167 = load i64, ptr %166, align 8, !tbaa !94
  %168 = add i64 %167, %73
  store i64 %168, ptr %166, align 8, !tbaa !94
  %169 = fmul double %80, 0x3EF0001000100010
  %170 = tail call fastcc zeroext i16 @ClampPixel(float noundef %76) #26
  %171 = getelementptr inbounds %struct._NodeInfo, ptr %161, i64 0, i32 3
  %172 = tail call fastcc zeroext i16 @ClampPixel(float noundef %77) #26
  %173 = insertelement <2 x i16> poison, i16 %170, i64 0
  %174 = insertelement <2 x i16> %173, i16 %172, i64 1
  %175 = uitofp <2 x i16> %174 to <2 x double>
  %176 = load <2 x float>, ptr %171, align 8, !tbaa !83
  %177 = fpext <2 x float> %176 to <2 x double>
  %178 = insertelement <2 x double> poison, double %169, i64 0
  %179 = shufflevector <2 x double> %178, <2 x double> poison, <2 x i32> zeroinitializer
  %180 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %179, <2 x double> %175, <2 x double> %177)
  %181 = fptrunc <2 x double> %180 to <2 x float>
  store <2 x float> %181, ptr %171, align 8, !tbaa !83
  %182 = tail call fastcc zeroext i16 @ClampPixel(float noundef %78) #26
  %183 = uitofp i16 %182 to double
  %184 = getelementptr inbounds %struct._NodeInfo, ptr %161, i64 0, i32 3, i32 2
  %185 = load float, ptr %184, align 8, !tbaa !95
  %186 = fpext float %185 to double
  %187 = tail call double @llvm.fmuladd.f64(double %169, double %183, double %186)
  %188 = fptrunc double %187 to float
  store float %188, ptr %184, align 8, !tbaa !95
  %189 = load i32, ptr %30, align 8, !tbaa !91
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %165
  %192 = tail call fastcc zeroext i16 @ClampPixel(float noundef %79) #26
  %193 = uitofp i16 %192 to double
  %194 = getelementptr inbounds %struct._NodeInfo, ptr %161, i64 0, i32 3, i32 3
  %195 = load float, ptr %194, align 4, !tbaa !96
  %196 = fpext float %195 to double
  %197 = tail call double @llvm.fmuladd.f64(double %169, double %193, double %196)
  %198 = fptrunc double %197 to float
  store float %198, ptr %194, align 4, !tbaa !96
  br label %199

199:                                              ; preds = %191, %165
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %73
  %201 = load i64, ptr %24, align 8, !tbaa !41
  %202 = icmp slt i64 %74, %201
  br i1 %202, label %50, label %203, !llvm.loop !97

203:                                              ; preds = %199, %47
  %204 = phi float [ %36, %47 ], [ %160, %199 ]
  %205 = load i64, ptr %27, align 8, !tbaa !90
  %206 = load i64, ptr %33, align 8, !tbaa !76
  %207 = icmp ugt i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load ptr, ptr %0, align 8, !tbaa !77
  tail call fastcc void @PruneToCubeDepth(ptr noundef nonnull %0, ptr noundef %209) #26
  br label %218

210:                                              ; preds = %203
  %211 = load i64, ptr %20, align 8, !tbaa !42
  %212 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i64 noundef %35, i64 noundef %211) #26
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = add nuw nsw i64 %35, 1
  %216 = load i64, ptr %20, align 8, !tbaa !42
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %34, label %218, !llvm.loop !98

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
  %234 = load i64, ptr %20, align 8, !tbaa !42
  %235 = icmp slt i64 %233, %234
  br i1 %235, label %236, label %422

236:                                              ; preds = %230
  %237 = load i64, ptr %221, align 8, !tbaa !41
  %238 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %19, i64 noundef 0, i64 noundef %233, i64 noundef %237, i64 noundef 1, ptr noundef %2) #27
  %239 = icmp eq ptr %238, null
  br i1 %239, label %422, label %240

240:                                              ; preds = %236
  %241 = load i64, ptr %222, align 8, !tbaa !87
  %242 = icmp ugt i64 %241, 266817
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load ptr, ptr %0, align 8, !tbaa !77
  tail call fastcc void @PruneLevel(ptr noundef nonnull %0, ptr noundef %244) #26
  %245 = load i64, ptr %223, align 8, !tbaa !72
  %246 = add i64 %245, -1
  store i64 %246, ptr %223, align 8, !tbaa !72
  br label %247

247:                                              ; preds = %243, %240
  %248 = load i64, ptr %221, align 8, !tbaa !41
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
  %260 = tail call fastcc i32 @IsSameColor(ptr noundef %1, ptr noundef %253, ptr noundef nonnull %259) #26, !range !39
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %272, label %266

262:                                              ; preds = %266
  %263 = getelementptr inbounds %struct._PixelPacket, ptr %253, i64 %268
  %264 = tail call fastcc i32 @IsSameColor(ptr noundef %1, ptr noundef %253, ptr noundef %263) #26, !range !39
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %270, label %266, !llvm.loop !99

266:                                              ; preds = %257, %262
  %267 = phi i64 [ %268, %262 ], [ 1, %257 ]
  %268 = add i64 %267, 1
  %269 = icmp eq i64 %268, %258
  br i1 %269, label %272, label %262, !llvm.loop !99

270:                                              ; preds = %262
  %271 = add nsw i64 %268, %252
  br label %272

272:                                              ; preds = %266, %257, %270, %250
  %273 = phi i64 [ 1, %250 ], [ %268, %270 ], [ 1, %257 ], [ %258, %266 ]
  %274 = phi i64 [ %255, %250 ], [ %271, %270 ], [ %255, %257 ], [ %251, %266 ]
  call fastcc void @AssociateAlphaPixel(ptr noundef %0, ptr noundef %253, ptr noundef nonnull %4) #26
  %275 = load ptr, ptr %0, align 8, !tbaa !77
  %276 = load i64, ptr %223, align 8, !tbaa !72
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
  %298 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %289) #26, !range !89
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
  %316 = load ptr, ptr %315, align 8, !tbaa !57
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %330

318:                                              ; preds = %286
  %319 = tail call fastcc ptr @GetNodeInfo(ptr noundef nonnull %0, i64 noundef %298, i64 noundef %288, ptr noundef nonnull %291) #26
  store ptr %319, ptr %315, align 8, !tbaa !57
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull %229) #23
  %323 = load i64, ptr %223, align 8, !tbaa !72
  br label %368

324:                                              ; preds = %318
  %325 = load i64, ptr %223, align 8, !tbaa !72
  %326 = icmp eq i64 %288, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i64, ptr %224, align 8, !tbaa !90
  %329 = add i64 %328, 1
  store i64 %329, ptr %224, align 8, !tbaa !90
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
  %345 = load i32, ptr %227, align 8, !tbaa !91
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
  %359 = load float, ptr %358, align 8, !tbaa !92
  %360 = fpext float %359 to double
  %361 = tail call double @llvm.fmuladd.f64(double %285, double %357, double %360)
  %362 = fptrunc double %361 to float
  store float %362, ptr %358, align 8, !tbaa !92
  %363 = load ptr, ptr %0, align 8, !tbaa !77
  %364 = getelementptr inbounds %struct._NodeInfo, ptr %363, i64 0, i32 4
  %365 = load float, ptr %364, align 8, !tbaa !92
  %366 = fadd float %365, %362
  store float %366, ptr %364, align 8, !tbaa !92
  %367 = add i64 %289, -1
  br label %368

368:                                              ; preds = %330, %321
  %369 = phi i64 [ %323, %321 ], [ %331, %330 ]
  %370 = phi float [ %296, %321 ], [ %351, %330 ]
  %371 = phi ptr [ %291, %321 ], [ %332, %330 ]
  %372 = phi i64 [ %289, %321 ], [ %367, %330 ]
  %373 = add i64 %288, 1
  %374 = icmp ugt i64 %373, %369
  br i1 %374, label %375, label %286, !llvm.loop !100

375:                                              ; preds = %368, %281
  %376 = phi double [ %282, %281 ], [ %285, %368 ]
  %377 = phi float [ %254, %281 ], [ %370, %368 ]
  %378 = phi ptr [ %275, %281 ], [ %371, %368 ]
  %379 = getelementptr inbounds %struct._NodeInfo, ptr %378, i64 0, i32 2
  %380 = load i64, ptr %379, align 8, !tbaa !94
  %381 = add i64 %380, %273
  store i64 %381, ptr %379, align 8, !tbaa !94
  %382 = fmul double %376, 0x3EF0001000100010
  %383 = tail call fastcc zeroext i16 @ClampPixel(float noundef %278) #26
  %384 = getelementptr inbounds %struct._NodeInfo, ptr %378, i64 0, i32 3
  %385 = tail call fastcc zeroext i16 @ClampPixel(float noundef %279) #26
  %386 = insertelement <2 x i16> poison, i16 %383, i64 0
  %387 = insertelement <2 x i16> %386, i16 %385, i64 1
  %388 = uitofp <2 x i16> %387 to <2 x double>
  %389 = load <2 x float>, ptr %384, align 8, !tbaa !83
  %390 = fpext <2 x float> %389 to <2 x double>
  %391 = insertelement <2 x double> poison, double %382, i64 0
  %392 = shufflevector <2 x double> %391, <2 x double> poison, <2 x i32> zeroinitializer
  %393 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %392, <2 x double> %388, <2 x double> %390)
  %394 = fptrunc <2 x double> %393 to <2 x float>
  store <2 x float> %394, ptr %384, align 8, !tbaa !83
  %395 = tail call fastcc zeroext i16 @ClampPixel(float noundef %280) #26
  %396 = uitofp i16 %395 to double
  %397 = getelementptr inbounds %struct._NodeInfo, ptr %378, i64 0, i32 3, i32 2
  %398 = load float, ptr %397, align 8, !tbaa !95
  %399 = fpext float %398 to double
  %400 = tail call double @llvm.fmuladd.f64(double %382, double %396, double %399)
  %401 = fptrunc double %400 to float
  store float %401, ptr %397, align 8, !tbaa !95
  %402 = load i32, ptr %227, align 8, !tbaa !91
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %375
  %405 = load float, ptr %228, align 4, !tbaa !101
  %406 = tail call fastcc zeroext i16 @ClampPixel(float noundef %405) #26
  %407 = uitofp i16 %406 to double
  %408 = getelementptr inbounds %struct._NodeInfo, ptr %378, i64 0, i32 3, i32 3
  %409 = load float, ptr %408, align 4, !tbaa !96
  %410 = fpext float %409 to double
  %411 = tail call double @llvm.fmuladd.f64(double %382, double %407, double %410)
  %412 = fptrunc double %411 to float
  store float %412, ptr %408, align 4, !tbaa !96
  br label %413

413:                                              ; preds = %404, %375
  %414 = getelementptr inbounds %struct._PixelPacket, ptr %253, i64 %273
  %415 = load i64, ptr %221, align 8, !tbaa !41
  %416 = icmp slt i64 %274, %415
  br i1 %416, label %250, label %417, !llvm.loop !102

417:                                              ; preds = %413, %247
  %418 = phi float [ %231, %247 ], [ %377, %413 ]
  %419 = load i64, ptr %20, align 8, !tbaa !42
  %420 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i64 noundef %233, i64 noundef %419) #26
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %230, !llvm.loop !103

422:                                              ; preds = %417, %236, %230
  %423 = tail call ptr @DestroyCacheView(ptr noundef %19) #23
  %424 = load ptr, ptr %5, align 8, !tbaa !80
  %425 = getelementptr inbounds %struct._QuantizeInfo, ptr %424, i64 0, i32 3
  %426 = load i32, ptr %425, align 4, !tbaa !23
  switch i32 %426, label %427 [
    i32 0, label %429
    i32 12, label %429
  ]

427:                                              ; preds = %422
  %428 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %1, i32 noundef 13) #23
  br label %429

429:                                              ; preds = %422, %422, %427
  %430 = load i64, ptr %20, align 8, !tbaa !42
  %431 = icmp sge i64 %233, %430
  %432 = zext i1 %431 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %432
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ReduceImageColors(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 8
  store float 0.000000e+00, ptr %3, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !76
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !87
  %12 = icmp ugt i64 %11, 128
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %11, i64 noundef 4) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !77
  %18 = tail call fastcc i64 @QuantizeErrorFlatten(ptr noundef nonnull %1, ptr noundef %17, i64 noundef 0, ptr noundef nonnull %14) #26
  %19 = load i64, ptr %10, align 8, !tbaa !87
  tail call void @qsort(ptr noundef nonnull %14, i64 noundef %19, i64 noundef 4, ptr noundef nonnull @MagickRealTypeCompare) #23
  %20 = load i64, ptr %10, align 8, !tbaa !87
  %21 = load i64, ptr %6, align 8, !tbaa !76
  %22 = mul i64 %21, 110
  %23 = add i64 %22, 110
  %24 = udiv i64 %23, 100
  %25 = sub i64 %20, %24
  %26 = tail call fastcc i64 @MagickMax(i64 noundef %25, i64 noundef 0) #26
  %27 = getelementptr inbounds float, ptr %14, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !83
  store float %28, ptr %3, align 8, !tbaa !104
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #23
  br label %30

30:                                               ; preds = %13, %16, %9, %2
  %31 = load i64, ptr %4, align 8, !tbaa !90
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 7
  %33 = add i64 %31, 1
  br label %34

34:                                               ; preds = %38, %30
  %35 = load i64, ptr %4, align 8, !tbaa !90
  %36 = load i64, ptr %6, align 8, !tbaa !76
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load float, ptr %3, align 8, !tbaa !104
  store float %39, ptr %32, align 4, !tbaa !105
  %40 = load ptr, ptr %1, align 8, !tbaa !77
  %41 = getelementptr inbounds %struct._NodeInfo, ptr %40, i64 0, i32 4
  %42 = load float, ptr %41, align 8, !tbaa !92
  %43 = fadd float %42, -1.000000e+00
  store float %43, ptr %3, align 8, !tbaa !104
  store i64 0, ptr %4, align 8, !tbaa !90
  tail call fastcc void @Reduce(ptr noundef nonnull %1, ptr noundef %40) #26
  %44 = load i64, ptr %4, align 8, !tbaa !90
  %45 = sub i64 %31, %44
  %46 = load i64, ptr %6, align 8, !tbaa !76
  %47 = sub i64 %33, %46
  %48 = tail call fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %45, i64 noundef %47) #26
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %34, !llvm.loop !106

50:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @AssignImageColors(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !57
  store ptr %1, ptr %4, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct._QuantizeInfo, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !23
  switch i32 %12, label %13 [
    i32 0, label %15
    i32 12, label %15
  ]

13:                                               ; preds = %2
  %14 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %12) #23
  br label %22

15:                                               ; preds = %2, %2
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %17) #26, !range !39
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #23
  br label %22

22:                                               ; preds = %15, %20, %13
  %23 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !90
  %25 = tail call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %24) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = icmp eq ptr %0, null
  br i1 %28, label %126, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 517, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %31) #23
  br label %126

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  store i64 0, ptr %34, align 8, !tbaa !37
  %35 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 4
  store i64 0, ptr %35, align 8, !tbaa !107
  %36 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 3
  store i64 -1, ptr %36, align 8, !tbaa !108
  %37 = load ptr, ptr %1, align 8, !tbaa !77
  tail call fastcc void @DefineImageColormap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %37) #26
  %38 = load ptr, ptr %9, align 8, !tbaa !80
  %39 = getelementptr inbounds %struct._QuantizeInfo, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct._QuantizeInfo, ptr %38, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !19
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call fastcc void @DitherImage(ptr noundef nonnull %0, ptr noundef nonnull %1) #26
  br label %73

47:                                               ; preds = %42, %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 1, ptr %7, align 4, !tbaa !6
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %48, ptr %6, align 8, !tbaa !57
  %49 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %48) #23
  store ptr %49, ptr %5, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !42
  %52 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %53 = shl i64 %52, 5
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #23
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #23
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  br label %67

63:                                               ; preds = %58, %55, %47
  %64 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %65 = icmp ult i64 %64, 2
  %66 = select i1 %65, i64 1, i64 2
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i64 [ %62, %61 ], [ %66, %63 ]
  %69 = trunc i64 %68 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %8, i32 %69)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @AssignImageColors.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4)
  %70 = load ptr, ptr %5, align 8, !tbaa !57
  %71 = call ptr @DestroyCacheView(ptr noundef %70) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %72 = load ptr, ptr %4, align 8, !tbaa !57
  br label %73

73:                                               ; preds = %67, %46
  %74 = phi ptr [ %72, %67 ], [ %1, %46 ]
  %75 = getelementptr inbounds %struct._CubeInfo, ptr %74, i64 0, i32 18
  %76 = load ptr, ptr %75, align 8, !tbaa !80
  %77 = getelementptr inbounds %struct._QuantizeInfo, ptr %76, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !21
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %3, align 8, !tbaa !57
  %82 = call i32 @GetImageQuantizeError(ptr noundef %81) #26
  %83 = load ptr, ptr %4, align 8, !tbaa !57
  %84 = getelementptr inbounds %struct._CubeInfo, ptr %83, i64 0, i32 18
  %85 = load ptr, ptr %84, align 8, !tbaa !80
  br label %86

86:                                               ; preds = %80, %73
  %87 = phi ptr [ %85, %80 ], [ %76, %73 ]
  %88 = load i64, ptr %87, align 8, !tbaa !22
  %89 = icmp eq i64 %88, 2
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %3, align 8, !tbaa !57
  br label %115

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct._QuantizeInfo, ptr %87, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !23
  %95 = icmp eq i32 %94, 2
  %96 = load ptr, ptr %3, align 8, !tbaa !57
  br i1 %95, label %97, label %115

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 10
  %99 = load i64, ptr %98, align 8, !tbaa !37
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 11
  %103 = load ptr, ptr %102, align 8, !tbaa !47
  br label %104

104:                                              ; preds = %101, %104
  %105 = phi i64 [ %113, %104 ], [ 0, %101 ]
  %106 = phi ptr [ %112, %104 ], [ %103, %101 ]
  %107 = call fastcc float @GetPixelLuma(ptr noundef nonnull %96, ptr noundef %106) #26
  %108 = fcmp uge float %107, 3.276750e+04
  %109 = sext i1 %108 to i16
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %109, ptr %110, align 2, !tbaa !50
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 1
  store i16 %109, ptr %111, align 2, !tbaa !51
  store i16 %109, ptr %106, align 2, !tbaa !52
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 1
  %113 = add nuw nsw i64 %105, 1
  %114 = icmp eq i64 %113, %99
  br i1 %114, label %115, label %104, !llvm.loop !109

115:                                              ; preds = %104, %90, %97, %92
  %116 = phi ptr [ %91, %90 ], [ %96, %97 ], [ %96, %92 ], [ %96, %104 ]
  %117 = call i32 @SyncImage(ptr noundef %116) #23
  %118 = load ptr, ptr %4, align 8, !tbaa !57
  %119 = getelementptr inbounds %struct._CubeInfo, ptr %118, i64 0, i32 18
  %120 = load ptr, ptr %119, align 8, !tbaa !80
  %121 = getelementptr inbounds %struct._QuantizeInfo, ptr %120, i64 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !23
  switch i32 %122, label %123 [
    i32 0, label %126
    i32 12, label %126
  ]

123:                                              ; preds = %115
  %124 = load ptr, ptr %3, align 8, !tbaa !57
  %125 = call i32 @TransformImageColorspace(ptr noundef %124, i32 noundef 13) #23
  br label %126

126:                                              ; preds = %123, %115, %115, %27, %29
  %127 = phi i32 [ 0, %29 ], [ 0, %27 ], [ 1, %115 ], [ 1, %115 ], [ 1, %123 ]
  ret i32 %127
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyCubeInfo(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %3, %1 ]
  %6 = getelementptr inbounds %struct._Nodes, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = load ptr, ptr %5, align 8, !tbaa !113
  %9 = tail call ptr @RelinquishMagickMemory(ptr noundef %8) #23
  %10 = load ptr, ptr %2, align 8, !tbaa !110
  store ptr %9, ptr %10, align 8, !tbaa !113
  %11 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #23
  store ptr %7, ptr %2, align 8, !tbaa !110
  %12 = icmp eq ptr %7, null
  br i1 %12, label %13, label %4, !llvm.loop !114

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %15) #23
  store ptr %18, ptr %14, align 8, !tbaa !81
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = tail call ptr @DestroyQuantizeInfo(ptr noundef %21) #26
  store ptr %22, ptr %20, align 8, !tbaa !80
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: optsize
declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SetGrayscaleImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6) #8 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %111

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 0, ptr %8, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store i64 %15, ptr %9, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store i64 1, ptr %10, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !tbaa !6
  %18 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !25
  %21 = load i64, ptr %8, align 8, !tbaa !25
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %110, label %23

23:                                               ; preds = %17, %102
  %24 = phi i64 [ %108, %102 ], [ %20, %17 ]
  %25 = phi i64 [ %106, %102 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %102, label %27

27:                                               ; preds = %23, %96
  %28 = phi i64 [ %97, %96 ], [ %25, %23 ]
  %29 = load i32, ptr %3, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %96, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8, !tbaa !57
  %33 = load ptr, ptr %2, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !41
  %36 = load ptr, ptr %5, align 8, !tbaa !57
  %37 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %32, i64 noundef 0, i64 noundef %28, i64 noundef %35, i64 noundef 1, ptr noundef %36) #27
  %38 = icmp eq ptr %37, null
  br i1 %38, label %95, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !57
  %41 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #23
  %42 = load ptr, ptr %2, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !41
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %39
  %47 = icmp eq ptr %41, null
  br label %48

48:                                               ; preds = %46, %83
  %49 = phi i64 [ 0, %46 ], [ %85, %83 ]
  %50 = phi ptr [ %37, %46 ], [ %84, %83 ]
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 2
  %52 = load i16, ptr %51, align 2, !tbaa !50
  %53 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %52) #26, !range !115
  %54 = zext nneg i32 %53 to i64
  %55 = load ptr, ptr %6, align 8, !tbaa !57
  %56 = getelementptr inbounds i64, ptr %55, i64 %54
  %57 = load i64, ptr %56, align 8, !tbaa !25
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %48
  call void @__kmpc_critical(ptr nonnull @2, i32 %18, ptr nonnull @.gomp_critical_user_MagickCore_SetGrayscaleImage.var)
  %60 = load ptr, ptr %6, align 8, !tbaa !57
  %61 = getelementptr inbounds i64, ptr %60, i64 %54
  %62 = load i64, ptr %61, align 8, !tbaa !25
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load ptr, ptr %2, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 10
  %67 = load i64, ptr %66, align 8, !tbaa !37
  store i64 %67, ptr %61, align 8, !tbaa !25
  %68 = load i16, ptr %51, align 2, !tbaa !50
  %69 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 11
  %70 = load ptr, ptr %69, align 8, !tbaa !47
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 %67, i32 2
  store i16 %68, ptr %71, align 2, !tbaa !50
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 %67
  %73 = load <2 x i16>, ptr %50, align 2, !tbaa !48
  store <2 x i16> %73, ptr %72, align 2, !tbaa !48
  %74 = add i64 %67, 1
  store i64 %74, ptr %66, align 8, !tbaa !37
  br label %75

75:                                               ; preds = %64, %59
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %18, ptr nonnull @.gomp_critical_user_MagickCore_SetGrayscaleImage.var)
  br label %76

76:                                               ; preds = %75, %48
  br i1 %47, label %83, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds i16, ptr %41, i64 %49
  %79 = load ptr, ptr %6, align 8, !tbaa !57
  %80 = getelementptr inbounds i64, ptr %79, i64 %54
  %81 = load i64, ptr %80, align 8, !tbaa !25
  %82 = trunc i64 %81 to i16
  store i16 %82, ptr %78, align 2, !tbaa !48
  br label %83

83:                                               ; preds = %77, %76
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 1
  %85 = add nuw nsw i64 %49, 1
  %86 = load ptr, ptr %2, align 8, !tbaa !57
  %87 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 7
  %88 = load i64, ptr %87, align 8, !tbaa !41
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %48, label %90, !llvm.loop !116

90:                                               ; preds = %83, %39
  %91 = load ptr, ptr %4, align 8, !tbaa !57
  %92 = load ptr, ptr %5, align 8, !tbaa !57
  %93 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %91, ptr noundef %92) #27
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %31
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %96

96:                                               ; preds = %95, %90, %27
  %97 = add nsw i64 %28, 1
  %98 = load i64, ptr %9, align 8, !tbaa !25
  %99 = icmp slt i64 %28, %98
  br i1 %99, label %27, label %100

100:                                              ; preds = %96
  %101 = load i64, ptr %8, align 8, !tbaa !25
  br label %102

102:                                              ; preds = %100, %23
  %103 = phi i64 [ %25, %23 ], [ %101, %100 ]
  %104 = phi i64 [ %24, %23 ], [ %98, %100 ]
  %105 = load i64, ptr %10, align 8, !tbaa !25
  %106 = add nsw i64 %105, %103
  store i64 %106, ptr %8, align 8, !tbaa !25
  %107 = add nsw i64 %105, %104
  %108 = call i64 @llvm.smin.i64(i64 %107, i64 %15)
  store i64 %108, ptr %9, align 8, !tbaa !25
  %109 = icmp sgt i64 %106, %108
  br i1 %109, label %110, label %23

110:                                              ; preds = %102, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %111

111:                                              ; preds = %110, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ScaleQuantumToMap(i16 noundef zeroext %0) unnamed_addr #10 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = tail call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef %0) #26
  %4 = zext i16 %3 to i32
  %5 = tail call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef %1) #26
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsSameColor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #14 {
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !50
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !50
  %8 = icmp eq i16 %5, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !51
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !51
  %14 = icmp eq i16 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load i16, ptr %1, align 2, !tbaa !52
  %17 = load i16, ptr %2, align 2, !tbaa !52
  %18 = icmp eq i16 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !40
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !49
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !49
  %28 = icmp eq i16 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %19
  br label %30

30:                                               ; preds = %23, %3, %9, %15, %29
  %31 = phi i32 [ 1, %29 ], [ 0, %15 ], [ 0, %9 ], [ 0, %3 ], [ 0, %23 ]
  ret i32 %31
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SetGrayscaleImage.omp_outlined.11(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6) #8 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 0, ptr %8, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store i64 %15, ptr %9, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store i64 1, ptr %10, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !tbaa !6
  %18 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !25
  %21 = load i64, ptr %8, align 8, !tbaa !25
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %82, label %23

23:                                               ; preds = %17, %74
  %24 = phi i64 [ %80, %74 ], [ %20, %17 ]
  %25 = phi i64 [ %78, %74 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %74, label %27

27:                                               ; preds = %23, %68
  %28 = phi i64 [ %69, %68 ], [ %25, %23 ]
  %29 = load i32, ptr %3, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8, !tbaa !57
  %33 = load ptr, ptr %2, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !41
  %36 = load ptr, ptr %5, align 8, !tbaa !57
  %37 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %32, i64 noundef 0, i64 noundef %28, i64 noundef %35, i64 noundef 1, ptr noundef %36) #27
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !57
  %41 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #23
  %42 = load ptr, ptr %2, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !41
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = icmp eq ptr %41, null
  %48 = load ptr, ptr %6, align 8
  br label %49

49:                                               ; preds = %46, %59
  %50 = phi i64 [ 0, %46 ], [ %60, %59 ]
  br i1 %47, label %59, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds i16, ptr %41, i64 %50
  %53 = load i16, ptr %52, align 2, !tbaa !48
  %54 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %53) #26, !range !115
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i64, ptr %48, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !25
  %58 = trunc i64 %57 to i16
  store i16 %58, ptr %52, align 2, !tbaa !48
  br label %59

59:                                               ; preds = %49, %51
  %60 = add nuw nsw i64 %50, 1
  %61 = icmp eq i64 %60, %44
  br i1 %61, label %62, label %49, !llvm.loop !117

62:                                               ; preds = %59, %39
  %63 = load ptr, ptr %4, align 8, !tbaa !57
  %64 = load ptr, ptr %5, align 8, !tbaa !57
  %65 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %63, ptr noundef %64) #27
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %31
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %68

68:                                               ; preds = %67, %62, %27
  %69 = add nsw i64 %28, 1
  %70 = load i64, ptr %9, align 8, !tbaa !25
  %71 = icmp slt i64 %28, %70
  br i1 %71, label %27, label %72

72:                                               ; preds = %68
  %73 = load i64, ptr %8, align 8, !tbaa !25
  br label %74

74:                                               ; preds = %72, %23
  %75 = phi i64 [ %25, %23 ], [ %73, %72 ]
  %76 = phi i64 [ %24, %23 ], [ %70, %72 ]
  %77 = load i64, ptr %10, align 8, !tbaa !25
  %78 = add nsw i64 %77, %75
  store i64 %78, ptr %8, align 8, !tbaa !25
  %79 = add nsw i64 %77, %76
  %80 = call i64 @llvm.smin.i64(i64 %79, i64 %15)
  store i64 %80, ptr %9, align 8, !tbaa !25
  %81 = icmp sgt i64 %78, %80
  br i1 %81, label %82, label %23

82:                                               ; preds = %74, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %83

83:                                               ; preds = %82, %7
  ret void
}

; Function Attrs: optsize
declare i32 @IsMonochromeImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @PixelPacketIntensity(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !50
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !51
  %6 = icmp eq i16 %3, %5
  %7 = load i16, ptr %0, align 2, !tbaa !52
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
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #26
  br label %19

19:                                               ; preds = %1, %10
  %20 = phi i16 [ %18, %10 ], [ %3, %1 ]
  ret i16 %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #10 {
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
define internal fastcc noundef ptr @GetNodeInfo(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 10
  %6 = load i64, ptr %5, align 8, !tbaa !118
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = add i64 %6, -1
  br label %22

12:                                               ; preds = %4
  %13 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = tail call dereferenceable_or_null(368640) ptr @AcquireQuantumMemory(i64 noundef 1920, i64 noundef 192) #28
  store ptr %16, ptr %13, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !110
  %21 = getelementptr inbounds %struct._Nodes, ptr %13, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !111
  store ptr %13, ptr %19, align 8, !tbaa !110
  br label %22

22:                                               ; preds = %8, %18
  %23 = phi ptr [ %16, %18 ], [ %10, %8 ]
  %24 = phi i64 [ 1919, %18 ], [ %11, %8 ]
  %25 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %26 = load i64, ptr %25, align 8, !tbaa !87
  %27 = add i64 %26, 1
  store i64 %27, ptr %25, align 8, !tbaa !87
  store i64 %24, ptr %5, align 8, !tbaa !118
  %28 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 12
  %29 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 1
  store ptr %29, ptr %28, align 8, !tbaa !119
  %30 = tail call ptr @ResetMagickMemory(ptr noundef %23, i32 noundef 0, i64 noundef 192) #23
  store ptr %3, ptr %23, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 0, i32 6
  store i64 %1, ptr %31, align 8, !tbaa !120
  %32 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 0, i32 7
  store i64 %2, ptr %32, align 8, !tbaa !121
  br label %33

33:                                               ; preds = %12, %15, %22
  %34 = phi ptr [ %23, %22 ], [ null, %15 ], [ null, %12 ]
  ret ptr %34
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #10 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SetAssociatedAlpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = load i64, ptr %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._QuantizeInfo, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !23
  %12 = icmp eq i32 %11, 2
  %13 = select i1 %12, i32 0, i32 %4
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ %4, %2 ], [ %13, %9 ]
  %16 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 19
  store i32 %15, ptr %16, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IssRGBCompatibleColorspace(i32 noundef %0) unnamed_addr #10 {
  switch i32 %0, label %2 [
    i32 29, label %4
    i32 13, label %4
    i32 3, label %4
    i32 1, label %4
  ]

2:                                                ; preds = %1
  %3 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %0) #26, !range !39
  br label %4

4:                                                ; preds = %2, %1, %1, %1, %1
  %5 = phi i32 [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ %3, %2 ]
  ret i32 %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @PruneLevel(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneLevel(ptr noundef %0, ptr noundef nonnull %10) #26
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !122

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %20 = load i64, ptr %19, align 8, !tbaa !72
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef nonnull %0, ptr noundef nonnull %1) #26
  br label %23

23:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AssociateAlphaPixel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #18 {
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !49
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
  %16 = load <2 x i16>, ptr %15, align 2, !tbaa !48
  %17 = uitofp <2 x i16> %16 to <2 x float>
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %18, ptr %2, align 4, !tbaa !83
  %19 = load i16, ptr %1, align 2, !tbaa !52
  %20 = uitofp i16 %19 to float
  %21 = getelementptr inbounds %struct._RealPixelPacket, ptr %2, i64 0, i32 2
  store float %20, ptr %21, align 4, !tbaa !123
  br label %39

22:                                               ; preds = %11
  %23 = xor i16 %8, -1
  %24 = uitofp i16 %23 to double
  %25 = fmul double %24, 0x3EF0001000100010
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %28 = load <2 x i16>, ptr %27, align 2, !tbaa !48
  %29 = uitofp <2 x i16> %28 to <2 x float>
  %30 = insertelement <2 x float> poison, float %26, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x float> %31, %29
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %33, ptr %2, align 4, !tbaa !83
  %34 = load i16, ptr %1, align 2, !tbaa !52
  %35 = uitofp i16 %34 to float
  %36 = fmul float %26, %35
  %37 = getelementptr inbounds %struct._RealPixelPacket, ptr %2, i64 0, i32 2
  store float %36, ptr %37, align 4, !tbaa !123
  %38 = uitofp i16 %8 to float
  br label %39

39:                                               ; preds = %22, %13
  %40 = phi float [ %38, %22 ], [ %14, %13 ]
  %41 = getelementptr inbounds %struct._RealPixelPacket, ptr %2, i64 0, i32 3
  store float %40, ptr %41, align 4, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ColorToNodeId(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #14 {
  %4 = load float, ptr %1, align 4, !tbaa !124
  %5 = tail call fastcc zeroext i16 @ClampPixel(float noundef %4) #26
  %6 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %5) #26
  %7 = zext i8 %6 to i32
  %8 = trunc i64 %2 to i32
  %9 = lshr i32 %7, %8
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !125
  %13 = tail call fastcc zeroext i16 @ClampPixel(float noundef %12) #26
  %14 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %13) #26
  %15 = zext i8 %14 to i32
  %16 = lshr i32 %15, %8
  %17 = shl nuw nsw i32 %16, 1
  %18 = and i32 %17, 2
  %19 = or disjoint i32 %18, %10
  %20 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !123
  %22 = tail call fastcc zeroext i16 @ClampPixel(float noundef %21) #26
  %23 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %22) #26
  %24 = zext i8 %23 to i32
  %25 = lshr i32 %24, %8
  %26 = shl nuw nsw i32 %25, 2
  %27 = and i32 %26, 4
  %28 = or disjoint i32 %19, %27
  %29 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %30 = load i32, ptr %29, align 8, !tbaa !91
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !101
  %35 = tail call fastcc zeroext i16 @ClampPixel(float noundef %34) #26
  %36 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %35) #26
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampPixel(float noundef %0) unnamed_addr #10 {
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
define internal fastcc void @PruneToCubeDepth(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneToCubeDepth(ptr noundef %0, ptr noundef nonnull %10) #26
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !126

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 22
  %20 = load i64, ptr %19, align 8, !tbaa !72
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef nonnull %0, ptr noundef nonnull %1) #26
  br label %23

23:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #10 {
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
define internal fastcc void @PruneChild(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @PruneChild(ptr noundef %0, ptr noundef nonnull %10) #26
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !127

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !94
  %20 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !94
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8, !tbaa !94
  %23 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 3
  %25 = load <4 x float>, ptr %23, align 8, !tbaa !83
  %26 = load <4 x float>, ptr %24, align 8, !tbaa !83
  %27 = fadd <4 x float> %25, %26
  store <4 x float> %27, ptr %24, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 6
  %29 = load i64, ptr %28, align 8, !tbaa !120
  %30 = getelementptr inbounds %struct._NodeInfo, ptr %17, i64 0, i32 1, i64 %29
  store ptr null, ptr %30, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %32 = load i64, ptr %31, align 8, !tbaa !87
  %33 = add i64 %32, -1
  store i64 %33, ptr %31, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #10 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @QuantizeErrorFlatten(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #17 {
  %5 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 9
  %6 = load i64, ptr %5, align 8, !tbaa !87
  %7 = icmp sgt i64 %6, %2
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 4
  %10 = load float, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds float, ptr %3, i64 %2
  store float %10, ptr %11, align 4, !tbaa !83
  %12 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %13 = load i32, ptr %12, align 8, !tbaa !91
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i64 8, i64 16
  br label %16

16:                                               ; preds = %8, %26
  %17 = phi i64 [ 1, %8 ], [ %27, %26 ]
  %18 = phi i64 [ 0, %8 ], [ %28, %26 ]
  %19 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = add i64 %17, %2
  %24 = tail call fastcc i64 @QuantizeErrorFlatten(ptr noundef %0, ptr noundef nonnull %20, i64 noundef %23, ptr noundef %3) #26
  %25 = add i64 %24, %17
  br label %26

26:                                               ; preds = %16, %22
  %27 = phi i64 [ %25, %22 ], [ %17, %16 ]
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %15
  br i1 %29, label %30, label %16, !llvm.loop !128

30:                                               ; preds = %26, %4
  %31 = phi i64 [ 0, %4 ], [ %27, %26 ]
  ret i64 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @MagickRealTypeCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = load float, ptr %0, align 4, !tbaa !83
  %4 = load float, ptr %1, align 4, !tbaa !83
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
define internal fastcc void @Reduce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @Reduce(ptr noundef %0, ptr noundef nonnull %10) #26
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !129

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 4
  %18 = load float, ptr %17, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 7
  %20 = load float, ptr %19, align 4, !tbaa !105
  %21 = fcmp ugt float %18, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call fastcc void @PruneChild(ptr noundef nonnull %0, ptr noundef nonnull %1) #26
  br label %36

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !94
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !90
  %30 = add i64 %29, 1
  store i64 %30, ptr %28, align 8, !tbaa !90
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 8
  %33 = load float, ptr %32, align 8, !tbaa !104
  %34 = fcmp olt float %18, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store float %18, ptr %32, align 8, !tbaa !104
  br label %36

36:                                               ; preds = %31, %35, %22
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DefineImageColormap(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #17 {
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 8, i64 16
  br label %8

8:                                                ; preds = %3, %14
  %9 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %10 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @DefineImageColormap(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #26
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !130

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !94
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %108, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25
  %27 = sitofp i64 %19 to float
  %28 = fpext float %27 to double
  %29 = tail call fastcc double @PerceptibleReciprocal(double noundef %28) #26
  %30 = fptrunc double %29 to float
  %31 = load i32, ptr %4, align 8, !tbaa !91
  %32 = icmp eq i32 %31, 0
  %33 = fmul float %30, 6.553500e+04
  %34 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3
  br i1 %32, label %35, label %50

35:                                               ; preds = %21
  %36 = load float, ptr %34, align 8, !tbaa !131
  %37 = fmul float %33, %36
  %38 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %37) #26
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %38, ptr %39, align 2, !tbaa !50
  %40 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !132
  %42 = fmul float %33, %41
  %43 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %42) #26
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %43, ptr %44, align 2, !tbaa !51
  %45 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %46 = load float, ptr %45, align 8, !tbaa !95
  %47 = fmul float %33, %46
  %48 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %47) #26
  store i16 %48, ptr %26, align 2, !tbaa !52
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  store i16 0, ptr %49, align 2, !tbaa !49
  br label %105

50:                                               ; preds = %21
  %51 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 3
  %52 = load float, ptr %51, align 4, !tbaa !96
  %53 = fmul float %33, %52
  %54 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %53) #26
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  store i16 %54, ptr %55, align 2, !tbaa !49
  %56 = icmp eq i16 %54, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load float, ptr %34, align 8, !tbaa !131
  %59 = fmul float %33, %58
  %60 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %59) #26
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %60, ptr %61, align 2, !tbaa !50
  %62 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %63 = load float, ptr %62, align 4, !tbaa !132
  %64 = fmul float %33, %63
  %65 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %64) #26
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %65, ptr %66, align 2, !tbaa !51
  %67 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %68 = load float, ptr %67, align 8, !tbaa !95
  %69 = fmul float %33, %68
  %70 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %69) #26
  store i16 %70, ptr %26, align 2, !tbaa !52
  br label %105

71:                                               ; preds = %50
  %72 = uitofp i16 %54 to double
  %73 = fsub double 6.553500e+04, %72
  %74 = fmul double %73, 0x3EF0001000100010
  %75 = fcmp olt double %74, 0.000000e+00
  %76 = select i1 %75, double 0.000000e+00, double %74
  %77 = tail call fastcc double @PerceptibleReciprocal(double noundef %76) #26
  %78 = fpext float %30 to double
  %79 = fmul double %77, %78
  %80 = fmul double %79, 6.553500e+04
  %81 = load float, ptr %34, align 8, !tbaa !131
  %82 = fpext float %81 to double
  %83 = fmul double %80, %82
  %84 = fptrunc double %83 to float
  %85 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %84) #26
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 2
  store i16 %85, ptr %86, align 2, !tbaa !50
  %87 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1
  %88 = load float, ptr %87, align 4, !tbaa !132
  %89 = fpext float %88 to double
  %90 = fmul double %80, %89
  %91 = fptrunc double %90 to float
  %92 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %91) #26
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  store i16 %92, ptr %93, align 2, !tbaa !51
  %94 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2
  %95 = load float, ptr %94, align 8, !tbaa !95
  %96 = fpext float %95 to double
  %97 = fmul double %80, %96
  %98 = fptrunc double %97 to float
  %99 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #26
  store i16 %99, ptr %26, align 2, !tbaa !52
  %100 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !107
  %102 = icmp ugt i64 %19, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %71
  store i64 %19, ptr %100, align 8, !tbaa !107
  %104 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 3
  store i64 %25, ptr %104, align 8, !tbaa !108
  br label %105

105:                                              ; preds = %57, %103, %71, %35
  %106 = add i64 %25, 1
  store i64 %106, ptr %24, align 8, !tbaa !37
  %107 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 5
  store i64 %25, ptr %107, align 8, !tbaa !133
  br label %108

108:                                              ; preds = %17, %105
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DitherImage(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._QuantizeInfo, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @FloydSteinbergDither(ptr noundef %0, ptr noundef nonnull %1) #26, !range !39
  br label %43

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 16
  %12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 256) #23
  %13 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 20
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = tail call fastcc i64 @MagickMax(i64 noundef %15, i64 noundef %17) #26
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %10, %20
  %21 = phi i64 [ %24, %20 ], [ 1, %10 ]
  %22 = phi i64 [ %23, %20 ], [ %18, %10 ]
  %23 = ashr i64 %22, 1
  %24 = add i64 %21, 1
  %25 = icmp ult i64 %22, 2
  br i1 %25, label %26, label %20, !llvm.loop !134

26:                                               ; preds = %20, %10
  %27 = phi i64 [ 1, %10 ], [ %24, %20 ]
  %28 = shl nuw i64 1, %27
  %29 = icmp slt i64 %28, %18
  %30 = zext i1 %29 to i64
  %31 = add i64 %27, %30
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 23
  store i64 0, ptr %32, align 8, !tbaa !135
  %33 = mul i64 %17, %15
  %34 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 24
  store i64 %33, ptr %34, align 8, !tbaa !136
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %36 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %35) #23
  %37 = icmp ugt i64 %31, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = add i64 %31, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %1, i64 noundef %39, i32 noundef 2) #26
  br label %40

40:                                               ; preds = %38, %26
  %41 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %1, i32 noundef 0) #26, !range !39
  %42 = tail call ptr @DestroyCacheView(ptr noundef %36) #23
  br label %43

43:                                               ; preds = %40, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @AssignImageColors.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6) #8 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._CubeInfo, align 8
  %13 = alloca %struct._RealPixelPacket, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %169

19:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 0, ptr %8, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store i64 %17, ptr %9, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store i64 1, ptr %10, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !tbaa !6
  %20 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %21 = load i64, ptr %9, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %9, align 8, !tbaa !25
  %23 = load i64, ptr %8, align 8, !tbaa !25
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %168, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 5
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 6
  %28 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 11
  %29 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 18
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 19
  br label %31

31:                                               ; preds = %25, %160
  %32 = phi i64 [ %22, %25 ], [ %166, %160 ]
  %33 = phi i64 [ %23, %25 ], [ %164, %160 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %160, label %35

35:                                               ; preds = %31, %154
  %36 = phi i64 [ %155, %154 ], [ %33, %31 ]
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %12) #9
  %37 = load i32, ptr %3, align 4, !tbaa !6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %154, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8, !tbaa !57
  %41 = load ptr, ptr %2, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !41
  %44 = load ptr, ptr %5, align 8, !tbaa !57
  %45 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %36, i64 noundef %43, i64 noundef 1, ptr noundef %44) #27
  %46 = icmp eq ptr %45, null
  br i1 %46, label %153, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %4, align 8, !tbaa !57
  %49 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %48) #23
  %50 = load ptr, ptr %6, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %12, ptr noundef nonnull align 8 dereferenceable(504) %50, i64 504, i1 false), !tbaa.struct !137
  %51 = load ptr, ptr %2, align 8, !tbaa !57
  %52 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !41
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %136

55:                                               ; preds = %47
  %56 = icmp eq ptr %49, null
  br label %57

57:                                               ; preds = %55, %132
  %58 = phi i64 [ %53, %55 ], [ %134, %132 ]
  %59 = phi ptr [ %51, %55 ], [ %97, %132 ]
  %60 = phi ptr [ %45, %55 ], [ %129, %132 ]
  %61 = phi i64 [ 0, %55 ], [ %81, %132 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9
  %62 = add nuw nsw i64 %61, 1
  %63 = icmp slt i64 %62, %58
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = sub i64 %58, %61
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 1
  %67 = call fastcc i32 @IsSameColor(ptr noundef %59, ptr noundef nonnull %60, ptr noundef nonnull %66) #26, !range !39
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %73

69:                                               ; preds = %73
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 %75
  %71 = call fastcc i32 @IsSameColor(ptr noundef %59, ptr noundef nonnull %60, ptr noundef nonnull %70) #26, !range !39
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73, !llvm.loop !139

73:                                               ; preds = %64, %69
  %74 = phi i64 [ %75, %69 ], [ 1, %64 ]
  %75 = add nuw i64 %74, 1
  %76 = icmp eq i64 %75, %65
  br i1 %76, label %79, label %69, !llvm.loop !139

77:                                               ; preds = %69
  %78 = add nuw nsw i64 %75, %61
  br label %79

79:                                               ; preds = %73, %64, %77, %57
  %80 = phi i64 [ 1, %57 ], [ %75, %77 ], [ 1, %64 ], [ %65, %73 ]
  %81 = phi i64 [ %62, %57 ], [ %78, %77 ], [ %62, %64 ], [ %58, %73 ]
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %12, ptr noundef nonnull %60, ptr noundef nonnull %13) #26
  %82 = load ptr, ptr %12, align 8, !tbaa !77
  br label %86

83:                                               ; preds = %86
  %84 = add nsw i64 %87, -1
  %85 = icmp ugt i64 %87, 1
  br i1 %85, label %86, label %93, !llvm.loop !140

86:                                               ; preds = %79, %83
  %87 = phi i64 [ 7, %79 ], [ %84, %83 ]
  %88 = phi ptr [ %82, %79 ], [ %91, %83 ]
  %89 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef %87) #26, !range !89
  %90 = getelementptr inbounds %struct._NodeInfo, ptr %88, i64 0, i32 1, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !57
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %83

93:                                               ; preds = %86, %83
  %94 = phi ptr [ %88, %86 ], [ %91, %83 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !141
  store float 0x4210000000000000, ptr %27, align 8, !tbaa !142
  %95 = load ptr, ptr %94, align 8, !tbaa !78
  call fastcc void @ClosestColor(ptr noundef %59, ptr noundef nonnull %12, ptr noundef %95) #26
  %96 = load i64, ptr %28, align 8, !tbaa !143
  %97 = load ptr, ptr %2, align 8, !tbaa !57
  %98 = load i32, ptr %97, align 8, !tbaa !43
  %99 = icmp ne i32 %98, 2
  %100 = select i1 %99, i1 true, i1 %56
  %101 = load ptr, ptr %29, align 8, !tbaa !80
  %102 = getelementptr inbounds %struct._QuantizeInfo, ptr %101, i64 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !21
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds i16, ptr %49, i64 %61
  %106 = trunc i64 %96 to i16
  %107 = getelementptr inbounds %struct._Image, ptr %97, i64 0, i32 11
  %108 = load i32, ptr %30, align 8
  %109 = icmp eq i32 %108, 0
  %110 = call i64 @llvm.umax.i64(i64 %80, i64 1)
  br label %111

111:                                              ; preds = %93, %128
  %112 = phi ptr [ %60, %93 ], [ %129, %128 ]
  %113 = phi i64 [ 0, %93 ], [ %130, %128 ]
  br i1 %100, label %116, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds i16, ptr %105, i64 %113
  store i16 %106, ptr %115, align 2, !tbaa !48
  br label %116

116:                                              ; preds = %114, %111
  br i1 %104, label %117, label %128

117:                                              ; preds = %116
  %118 = load ptr, ptr %107, align 8, !tbaa !47
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 %96, i32 2
  %120 = load i16, ptr %119, align 2, !tbaa !50
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 0, i32 2
  store i16 %120, ptr %121, align 2, !tbaa !50
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 %96
  %123 = load <2 x i16>, ptr %122, align 2, !tbaa !48
  store <2 x i16> %123, ptr %112, align 2, !tbaa !48
  br i1 %109, label %128, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 %96, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !49
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 0, i32 3
  store i16 %126, ptr %127, align 2, !tbaa !49
  br label %128

128:                                              ; preds = %117, %124, %116
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 1
  %130 = add nuw nsw i64 %113, 1
  %131 = icmp eq i64 %130, %110
  br i1 %131, label %132, label %111, !llvm.loop !144

132:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  %133 = getelementptr inbounds %struct._Image, ptr %97, i64 0, i32 7
  %134 = load i64, ptr %133, align 8, !tbaa !41
  %135 = icmp slt i64 %81, %134
  br i1 %135, label %57, label %136, !llvm.loop !145

136:                                              ; preds = %132, %47
  %137 = load ptr, ptr %4, align 8, !tbaa !57
  %138 = load ptr, ptr %5, align 8, !tbaa !57
  %139 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %137, ptr noundef %138) #27
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %142

142:                                              ; preds = %141, %136
  %143 = load ptr, ptr %2, align 8, !tbaa !57
  %144 = getelementptr inbounds %struct._Image, ptr %143, i64 0, i32 47
  %145 = load ptr, ptr %144, align 8, !tbaa !63
  %146 = icmp eq ptr %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %142
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_AssignImageColors.var)
  %148 = load ptr, ptr %2, align 8, !tbaa !57
  %149 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 8
  %150 = load i64, ptr %149, align 8, !tbaa !42
  %151 = call fastcc i32 @SetImageProgress(ptr noundef %148, ptr noundef nonnull @.str.10, i64 noundef %36, i64 noundef %150) #26
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_AssignImageColors.var)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147, %39
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %154

154:                                              ; preds = %153, %142, %147, %35
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %12) #9
  %155 = add nsw i64 %36, 1
  %156 = load i64, ptr %9, align 8, !tbaa !25
  %157 = icmp slt i64 %36, %156
  br i1 %157, label %35, label %158

158:                                              ; preds = %154
  %159 = load i64, ptr %8, align 8, !tbaa !25
  br label %160

160:                                              ; preds = %158, %31
  %161 = phi i64 [ %33, %31 ], [ %159, %158 ]
  %162 = phi i64 [ %32, %31 ], [ %156, %158 ]
  %163 = load i64, ptr %10, align 8, !tbaa !25
  %164 = add nsw i64 %163, %161
  store i64 %164, ptr %8, align 8, !tbaa !25
  %165 = add nsw i64 %163, %162
  %166 = call i64 @llvm.smin.i64(i64 %165, i64 %17)
  store i64 %166, ptr %9, align 8, !tbaa !25
  %167 = icmp sgt i64 %164, %166
  br i1 %167, label %168, label %31

168:                                              ; preds = %160, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %169

169:                                              ; preds = %168, %7
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ClosestColor(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #17 {
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 8, i64 16
  br label %8

8:                                                ; preds = %3, %14
  %9 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %10 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @ClosestColor(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #26
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !146

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !94
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %83, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !133
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5
  %28 = load i32, ptr %4, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !49
  %33 = xor i16 %32, -1
  %34 = uitofp i16 %33 to double
  %35 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !101
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
  %46 = load i16, ptr %45, align 2, !tbaa !50
  %47 = uitofp i16 %46 to float
  %48 = load float, ptr %27, align 4, !tbaa !124
  %49 = extractelement <2 x float> %44, i64 1
  %50 = fneg float %49
  %51 = fmul float %48, %50
  %52 = extractelement <2 x float> %44, i64 0
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %47, float %51)
  %54 = fmul float %53, %53
  %55 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 6
  %56 = load float, ptr %55, align 8, !tbaa !142
  %57 = fcmp ugt float %54, %56
  br i1 %57, label %83, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 %25, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !51
  %61 = uitofp i16 %60 to float
  %62 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 1
  %63 = load float, ptr %62, align 4, !tbaa !125
  %64 = fmul float %63, %50
  %65 = tail call float @llvm.fmuladd.f32(float %52, float %61, float %64)
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %65, float %54)
  %67 = fcmp ugt float %66, %56
  br i1 %67, label %83, label %68

68:                                               ; preds = %58
  %69 = load i16, ptr %26, align 2, !tbaa !52
  %70 = uitofp i16 %69 to float
  %71 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 5, i32 2
  %72 = load float, ptr %71, align 4, !tbaa !123
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
  store float %79, ptr %55, align 8, !tbaa !142
  %82 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 11
  store i64 %25, ptr %82, align 8, !tbaa !143
  br label %83

83:                                               ; preds = %43, %68, %81, %77, %58, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @GetPixelLuma(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readonly %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !50
  %8 = uitofp i16 %7 to float
  br i1 %5, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !51
  %12 = uitofp i16 %11 to float
  %13 = fmul float %12, 0x3FE6E29300000000
  %14 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FCB384FE0000000, float %13)
  %15 = load i16, ptr %1, align 2, !tbaa !52
  %16 = uitofp i16 %15 to float
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 0x3FB27AC820000000, float %14)
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi float [ %17, %9 ], [ %8, %2 ]
  ret float %19
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @FloydSteinbergDither(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct._CubeInfo, align 8
  %4 = alloca %struct._RealPixelPacket, align 8
  %5 = alloca %struct._RealPixelPacket, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %7 = load i64, ptr %6, align 8, !tbaa !41
  %8 = tail call fastcc ptr @AcquirePixelThreadSet(i64 noundef %7) #26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %259, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %11) #23
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %256

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

29:                                               ; preds = %16, %251
  %30 = phi i32 [ 1, %16 ], [ %252, %251 ]
  %31 = phi i64 [ 0, %16 ], [ %253, %251 ]
  %32 = tail call fastcc i32 @GetOpenMPThreadId() #26
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %3) #9
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %251, label %34

34:                                               ; preds = %29
  %35 = load i64, ptr %6, align 8, !tbaa !41
  %36 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %12, i64 noundef 0, i64 noundef %31, i64 noundef %35, i64 noundef 1, ptr noundef nonnull %11) #27
  %37 = icmp eq ptr %36, null
  br i1 %37, label %251, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %12) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %3, ptr noundef nonnull align 8 dereferenceable(504) %1, i64 504, i1 false), !tbaa.struct !137
  %40 = sext i32 %32 to i64
  %41 = getelementptr inbounds ptr, ptr %8, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = and i64 %31, 1
  %44 = load i64, ptr %6, align 8, !tbaa !41
  %45 = mul nuw nsw i64 %44, %43
  %46 = getelementptr inbounds %struct._RealPixelPacket, ptr %42, i64 %45
  %47 = xor i64 %43, 1
  %48 = mul nuw nsw i64 %44, %47
  %49 = getelementptr inbounds %struct._RealPixelPacket, ptr %42, i64 %48
  %50 = icmp eq i64 %43, 0
  %51 = select i1 %50, i64 1, i64 -1
  %52 = icmp sgt i64 %44, 0
  br i1 %52, label %53, label %251

53:                                               ; preds = %38
  %54 = icmp eq i64 %31, 0
  %55 = icmp eq ptr %39, null
  %56 = load i32, ptr %18, align 8, !tbaa !91
  br label %57

57:                                               ; preds = %53, %246
  %58 = phi i32 [ %56, %53 ], [ %207, %246 ]
  %59 = phi i64 [ %44, %53 ], [ %249, %246 ]
  %60 = phi i32 [ 1, %53 ], [ %247, %246 ]
  %61 = phi i64 [ 0, %53 ], [ %248, %246 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %62 = xor i64 %61, -1
  %63 = add i64 %59, %62
  %64 = select i1 %50, i64 %61, i64 %63
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %64
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %3, ptr noundef nonnull %65, ptr noundef nonnull %5) #26
  %66 = icmp eq i64 %61, 0
  %67 = load <2 x float>, ptr %5, align 8, !tbaa !83
  %68 = load float, ptr %17, align 8, !tbaa !123
  br i1 %66, label %89, label %69

69:                                               ; preds = %57
  %70 = sub nsw i64 %64, %51
  %71 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %70
  %72 = load <2 x float>, ptr %71, align 4, !tbaa !83
  %73 = fmul <2 x float> %72, <float 7.000000e+00, float 7.000000e+00>
  %74 = fmul <2 x float> %73, <float 6.250000e-02, float 6.250000e-02>
  %75 = fadd <2 x float> %67, %74
  %76 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %70, i32 2
  %77 = load float, ptr %76, align 4, !tbaa !123
  %78 = fmul float %77, 7.000000e+00
  %79 = fmul float %78, 6.250000e-02
  %80 = fadd float %68, %79
  %81 = icmp eq i32 %58, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %70, i32 3
  %84 = load float, ptr %83, align 4, !tbaa !101
  %85 = fmul float %84, 7.000000e+00
  %86 = fmul float %85, 6.250000e-02
  %87 = load float, ptr %19, align 4, !tbaa !101
  %88 = fadd float %87, %86
  store float %88, ptr %19, align 4, !tbaa !101
  br label %89

89:                                               ; preds = %69, %82, %57
  %90 = phi float [ %80, %69 ], [ %80, %82 ], [ %68, %57 ]
  %91 = phi <2 x float> [ %75, %69 ], [ %75, %82 ], [ %67, %57 ]
  br i1 %54, label %153, label %92

92:                                               ; preds = %89
  %93 = add nsw i64 %59, -1
  %94 = icmp slt i64 %61, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = getelementptr %struct._RealPixelPacket, ptr %49, i64 %64
  %97 = getelementptr %struct._RealPixelPacket, ptr %96, i64 %51
  %98 = load <2 x float>, ptr %97, align 4, !tbaa !83
  %99 = fmul <2 x float> %98, <float 6.250000e-02, float 6.250000e-02>
  %100 = fadd <2 x float> %91, %99
  %101 = getelementptr %struct._RealPixelPacket, ptr %96, i64 %51, i32 2
  %102 = load float, ptr %101, align 4, !tbaa !123
  %103 = fmul float %102, 6.250000e-02
  %104 = fadd float %90, %103
  store float %104, ptr %17, align 8, !tbaa !123
  %105 = icmp eq i32 %58, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %95
  %107 = getelementptr %struct._RealPixelPacket, ptr %96, i64 %51, i32 3
  %108 = load float, ptr %107, align 4, !tbaa !101
  %109 = fmul float %108, 6.250000e-02
  %110 = load float, ptr %19, align 4, !tbaa !101
  %111 = fadd float %110, %109
  store float %111, ptr %19, align 4, !tbaa !101
  br label %112

112:                                              ; preds = %95, %106, %92
  %113 = phi float [ %104, %95 ], [ %104, %106 ], [ %90, %92 ]
  %114 = phi <2 x float> [ %100, %95 ], [ %100, %106 ], [ %91, %92 ]
  %115 = getelementptr inbounds %struct._RealPixelPacket, ptr %49, i64 %64
  %116 = load <2 x float>, ptr %115, align 4, !tbaa !83
  %117 = fmul <2 x float> %116, <float 5.000000e+00, float 5.000000e+00>
  %118 = fmul <2 x float> %117, <float 6.250000e-02, float 6.250000e-02>
  %119 = fadd <2 x float> %114, %118
  store <2 x float> %119, ptr %5, align 8, !tbaa !83
  %120 = getelementptr inbounds %struct._RealPixelPacket, ptr %49, i64 %64, i32 2
  %121 = load float, ptr %120, align 4, !tbaa !123
  %122 = fmul float %121, 5.000000e+00
  %123 = fmul float %122, 6.250000e-02
  %124 = fadd float %113, %123
  %125 = icmp eq i32 %58, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %112
  %127 = getelementptr inbounds %struct._RealPixelPacket, ptr %49, i64 %64, i32 3
  %128 = load float, ptr %127, align 4, !tbaa !101
  %129 = fmul float %128, 5.000000e+00
  %130 = fmul float %129, 6.250000e-02
  %131 = load float, ptr %19, align 4, !tbaa !101
  %132 = fadd float %131, %130
  store float %132, ptr %19, align 4, !tbaa !101
  br label %133

133:                                              ; preds = %126, %112
  br i1 %66, label %153, label %134

134:                                              ; preds = %133
  %135 = sub nsw i64 %64, %51
  %136 = getelementptr inbounds %struct._RealPixelPacket, ptr %49, i64 %135
  %137 = load <2 x float>, ptr %136, align 4, !tbaa !83
  %138 = fmul <2 x float> %137, <float 3.000000e+00, float 3.000000e+00>
  %139 = fmul <2 x float> %138, <float 6.250000e-02, float 6.250000e-02>
  %140 = fadd <2 x float> %119, %139
  %141 = getelementptr inbounds %struct._RealPixelPacket, ptr %49, i64 %135, i32 2
  %142 = load float, ptr %141, align 4, !tbaa !123
  %143 = fmul float %142, 3.000000e+00
  %144 = fmul float %143, 6.250000e-02
  %145 = fadd float %124, %144
  br i1 %125, label %153, label %146

146:                                              ; preds = %134
  %147 = getelementptr inbounds %struct._RealPixelPacket, ptr %49, i64 %135, i32 3
  %148 = load float, ptr %147, align 4, !tbaa !101
  %149 = fmul float %148, 3.000000e+00
  %150 = fmul float %149, 6.250000e-02
  %151 = load float, ptr %19, align 4, !tbaa !101
  %152 = fadd float %151, %150
  store float %152, ptr %19, align 4, !tbaa !101
  br label %153

153:                                              ; preds = %133, %146, %134, %89
  %154 = phi float [ %124, %133 ], [ %145, %146 ], [ %145, %134 ], [ %90, %89 ]
  %155 = phi <2 x float> [ %119, %133 ], [ %140, %146 ], [ %140, %134 ], [ %91, %89 ]
  %156 = extractelement <2 x float> %155, i64 0
  %157 = tail call fastcc zeroext i16 @ClampPixel(float noundef %156) #26
  %158 = extractelement <2 x float> %155, i64 1
  %159 = tail call fastcc zeroext i16 @ClampPixel(float noundef %158) #26
  %160 = insertelement <2 x i16> poison, i16 %157, i64 0
  %161 = insertelement <2 x i16> %160, i16 %159, i64 1
  %162 = uitofp <2 x i16> %161 to <2 x float>
  store <2 x float> %162, ptr %5, align 8, !tbaa !83
  %163 = tail call fastcc zeroext i16 @ClampPixel(float noundef %154) #26
  %164 = uitofp i16 %163 to float
  store float %164, ptr %17, align 8, !tbaa !123
  %165 = icmp eq i32 %58, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %153
  %167 = load float, ptr %19, align 4, !tbaa !101
  %168 = tail call fastcc zeroext i16 @ClampPixel(float noundef %167) #26
  %169 = uitofp i16 %168 to float
  store float %169, ptr %19, align 4, !tbaa !101
  br label %170

170:                                              ; preds = %166, %153
  %171 = call fastcc i64 @CacheOffset(ptr noundef nonnull %3, ptr noundef nonnull %5) #26, !range !147
  %172 = load ptr, ptr %20, align 8, !tbaa !82
  %173 = getelementptr inbounds i64, ptr %172, i64 %171
  %174 = load i64, ptr %173, align 8, !tbaa !25
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %170
  %177 = load ptr, ptr %3, align 8, !tbaa !77
  br label %181

178:                                              ; preds = %181
  %179 = add nsw i64 %183, -1
  %180 = icmp ugt i64 %183, 1
  br i1 %180, label %181, label %188, !llvm.loop !148

181:                                              ; preds = %176, %178
  %182 = phi ptr [ %177, %176 ], [ %186, %178 ]
  %183 = phi i64 [ 7, %176 ], [ %179, %178 ]
  %184 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef %183) #26, !range !89
  %185 = getelementptr inbounds %struct._NodeInfo, ptr %182, i64 0, i32 1, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !57
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %178

188:                                              ; preds = %181, %178
  %189 = phi ptr [ %182, %181 ], [ %186, %178 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !141
  store float 0x4210000000000000, ptr %22, align 8, !tbaa !142
  %190 = load ptr, ptr %189, align 8, !tbaa !78
  call fastcc void @ClosestColor(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %190) #26
  %191 = load i64, ptr %23, align 8, !tbaa !143
  %192 = load ptr, ptr %20, align 8, !tbaa !82
  %193 = getelementptr inbounds i64, ptr %192, i64 %171
  store i64 %191, ptr %193, align 8, !tbaa !25
  br label %194

194:                                              ; preds = %188, %170
  %195 = phi i64 [ %191, %188 ], [ %174, %170 ]
  %196 = load i32, ptr %0, align 8, !tbaa !43
  %197 = icmp ne i32 %196, 2
  %198 = select i1 %197, i1 true, i1 %55
  br i1 %198, label %202, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds i16, ptr %39, i64 %64
  %201 = trunc i64 %195 to i16
  store i16 %201, ptr %200, align 2, !tbaa !48
  br label %202

202:                                              ; preds = %199, %194
  %203 = load ptr, ptr %24, align 8, !tbaa !80
  %204 = getelementptr inbounds %struct._QuantizeInfo, ptr %203, i64 0, i32 4
  %205 = load i32, ptr %204, align 8, !tbaa !21
  %206 = icmp eq i32 %205, 0
  %207 = load i32, ptr %18, align 8, !tbaa !91
  br i1 %206, label %208, label %220

208:                                              ; preds = %202
  %209 = load ptr, ptr %25, align 8, !tbaa !47
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %209, i64 %195, i32 2
  %211 = load i16, ptr %210, align 2, !tbaa !50
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %64, i32 2
  store i16 %211, ptr %212, align 2, !tbaa !50
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %209, i64 %195
  %214 = load <2 x i16>, ptr %213, align 2, !tbaa !48
  store <2 x i16> %214, ptr %65, align 2, !tbaa !48
  %215 = icmp eq i32 %207, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct._PixelPacket, ptr %209, i64 %195, i32 3
  %218 = load i16, ptr %217, align 2, !tbaa !49
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %64, i32 3
  store i16 %218, ptr %219, align 2, !tbaa !49
  br label %220

220:                                              ; preds = %208, %216, %202
  %221 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %12, ptr noundef nonnull %11) #27
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i32 0, i32 %60
  %224 = load ptr, ptr %25, align 8, !tbaa !47
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 %195
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %3, ptr noundef %225, ptr noundef nonnull %4) #26
  %226 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %64
  %227 = load <2 x float>, ptr %4, align 8, !tbaa !83
  %228 = fsub <2 x float> %162, %227
  store <2 x float> %228, ptr %226, align 4, !tbaa !83
  %229 = load float, ptr %26, align 8, !tbaa !123
  %230 = fsub float %164, %229
  %231 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %64, i32 2
  store float %230, ptr %231, align 4, !tbaa !123
  %232 = icmp eq i32 %207, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %220
  %234 = load float, ptr %19, align 4, !tbaa !101
  %235 = load float, ptr %27, align 4, !tbaa !101
  %236 = fsub float %234, %235
  %237 = getelementptr inbounds %struct._RealPixelPacket, ptr %46, i64 %64, i32 3
  store float %236, ptr %237, align 4, !tbaa !101
  br label %238

238:                                              ; preds = %233, %220
  %239 = load ptr, ptr %28, align 8, !tbaa !63
  %240 = icmp eq ptr %239, null
  br i1 %240, label %246, label %241

241:                                              ; preds = %238
  %242 = load i64, ptr %13, align 8, !tbaa !42
  %243 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef %31, i64 noundef %242) #26
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %244, i32 0, i32 %223
  br label %246

246:                                              ; preds = %241, %238
  %247 = phi i32 [ %245, %241 ], [ %223, %238 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %248 = add nuw nsw i64 %61, 1
  %249 = load i64, ptr %6, align 8, !tbaa !41
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %57, label %251, !llvm.loop !149

251:                                              ; preds = %246, %38, %34, %29
  %252 = phi i32 [ 0, %29 ], [ 0, %34 ], [ 1, %38 ], [ %247, %246 ]
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %3) #9
  %253 = add nuw nsw i64 %31, 1
  %254 = load i64, ptr %13, align 8, !tbaa !42
  %255 = icmp slt i64 %253, %254
  br i1 %255, label %29, label %256, !llvm.loop !150

256:                                              ; preds = %251, %10
  %257 = tail call ptr @DestroyCacheView(ptr noundef %12) #23
  %258 = tail call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %8) #26
  br label %259

259:                                              ; preds = %2, %256
  %260 = phi i32 [ 1, %256 ], [ 0, %2 ]
  ret i32 %260
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
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
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %15, i32 noundef 2) #26
  %16 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6) #26, !range !39
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %15, i32 noundef 4) #26
  %17 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8) #26, !range !39
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %15, i32 noundef 4) #26
  br label %18

18:                                               ; preds = %14, %23, %27, %31
  %19 = phi i64 [ %15, %14 ], [ %24, %23 ], [ %28, %27 ], [ %32, %31 ]
  %20 = phi i32 [ 8, %14 ], [ 2, %23 ], [ 6, %27 ], [ 4, %31 ]
  %21 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %12) #26, !range !39
  %22 = icmp eq i64 %19, 1
  br i1 %22, label %7, label %11

23:                                               ; preds = %11
  %24 = add i64 %13, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %24, i32 noundef 8) #26
  %25 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4) #26, !range !39
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %24, i32 noundef 6) #26
  %26 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2) #26, !range !39
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %24, i32 noundef 6) #26
  br label %18

27:                                               ; preds = %11
  %28 = add i64 %13, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %28, i32 noundef 4) #26
  %29 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 8) #26, !range !39
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %28, i32 noundef 2) #26
  %30 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 6) #26, !range !39
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %28, i32 noundef 2) #26
  br label %18

31:                                               ; preds = %11
  %32 = add i64 %13, -1
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %32, i32 noundef 6) #26
  %33 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2) #26, !range !39
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %32, i32 noundef 8) #26
  %34 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4) #26, !range !39
  tail call fastcc void @Riemersma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %32, i32 noundef 8) #26
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
  %45 = getelementptr inbounds [7 x i32], ptr @switch.table.Riemersma.15, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %43) #26, !range !39
  %48 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %46) #26, !range !39
  %49 = tail call fastcc i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %8) #26, !range !39
  br label %50

50:                                               ; preds = %11, %35, %7, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @RiemersmaDither(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct._RealPixelPacket, align 8
  %6 = alloca %struct._RealPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 20
  %8 = load i64, ptr %7, align 8, !tbaa !151
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %10, label %162

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !41
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %162

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 21
  %16 = load i64, ptr %15, align 8, !tbaa !152
  %17 = icmp sgt i64 %16, -1
  br i1 %17, label %18, label %162

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !42
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %162

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %8, i64 noundef %16, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %23) #27
  %25 = icmp eq ptr %24, null
  br i1 %25, label %173, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1) #23
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %2, ptr noundef nonnull %24, ptr noundef nonnull %6) #26
  %28 = getelementptr inbounds %struct._RealPixelPacket, ptr %6, i64 0, i32 1
  %29 = getelementptr inbounds %struct._RealPixelPacket, ptr %6, i64 0, i32 2
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 19
  %31 = load i32, ptr %30, align 8, !tbaa !91
  %32 = icmp eq i32 %31, 0
  %33 = load float, ptr %6, align 8, !tbaa !124
  %34 = load <2 x float>, ptr %28, align 4, !tbaa !83
  %35 = getelementptr inbounds %struct._RealPixelPacket, ptr %6, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !101
  br label %37

37:                                               ; preds = %26, %56
  %38 = phi float [ %36, %26 ], [ %57, %56 ]
  %39 = phi i64 [ 0, %26 ], [ %58, %56 ]
  %40 = phi float [ %33, %26 ], [ %46, %56 ]
  %41 = phi <2 x float> [ %34, %26 ], [ %51, %56 ]
  %42 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 17, i64 %39
  %43 = load float, ptr %42, align 4, !tbaa !83
  %44 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %39
  %45 = load float, ptr %44, align 8, !tbaa !124
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %45, float %40)
  %47 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %39, i32 1
  %48 = load <2 x float>, ptr %47, align 4, !tbaa !83
  %49 = insertelement <2 x float> poison, float %43, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %48, <2 x float> %41)
  br i1 %32, label %56, label %52

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 %39, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !101
  %55 = tail call float @llvm.fmuladd.f32(float %43, float %54, float %38)
  br label %56

56:                                               ; preds = %37, %52
  %57 = phi float [ %38, %37 ], [ %55, %52 ]
  %58 = add nuw nsw i64 %39, 1
  %59 = icmp eq i64 %58, 16
  br i1 %59, label %60, label %37, !llvm.loop !153

60:                                               ; preds = %56
  store float %57, ptr %35, align 4, !tbaa !101
  %61 = tail call fastcc zeroext i16 @ClampPixel(float noundef %46) #26
  %62 = extractelement <2 x float> %51, i64 0
  %63 = tail call fastcc zeroext i16 @ClampPixel(float noundef %62) #26
  %64 = insertelement <2 x i16> poison, i16 %61, i64 0
  %65 = insertelement <2 x i16> %64, i16 %63, i64 1
  %66 = uitofp <2 x i16> %65 to <2 x float>
  store <2 x float> %66, ptr %6, align 8, !tbaa !83
  %67 = extractelement <2 x float> %51, i64 1
  %68 = tail call fastcc zeroext i16 @ClampPixel(float noundef %67) #26
  %69 = uitofp i16 %68 to float
  store float %69, ptr %29, align 8, !tbaa !123
  br i1 %32, label %73, label %70

70:                                               ; preds = %60
  %71 = tail call fastcc zeroext i16 @ClampPixel(float noundef %57) #26
  %72 = uitofp i16 %71 to float
  store float %72, ptr %35, align 4, !tbaa !101
  br label %73

73:                                               ; preds = %70, %60
  %74 = phi float [ %72, %70 ], [ %57, %60 ]
  %75 = call fastcc i64 @CacheOffset(ptr noundef nonnull %2, ptr noundef nonnull %6) #26, !range !147
  %76 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 15
  %77 = load ptr, ptr %76, align 8, !tbaa !82
  %78 = getelementptr inbounds i64, ptr %77, i64 %75
  %79 = load i64, ptr %78, align 8, !tbaa !25
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %73
  %82 = load ptr, ptr %2, align 8, !tbaa !77
  br label %86

83:                                               ; preds = %86
  %84 = add nsw i64 %88, -1
  %85 = icmp ugt i64 %88, 1
  br i1 %85, label %86, label %93, !llvm.loop !154

86:                                               ; preds = %81, %83
  %87 = phi ptr [ %82, %81 ], [ %91, %83 ]
  %88 = phi i64 [ 7, %81 ], [ %84, %83 ]
  %89 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef %88) #26, !range !89
  %90 = getelementptr inbounds %struct._NodeInfo, ptr %87, i64 0, i32 1, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !57
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %83

93:                                               ; preds = %86, %83
  %94 = phi ptr [ %87, %86 ], [ %91, %83 ]
  %95 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !141
  %96 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 6
  store float 0x4210000000000000, ptr %96, align 8, !tbaa !142
  %97 = load ptr, ptr %94, align 8, !tbaa !78
  tail call fastcc void @ClosestColor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %97) #26
  %98 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 11
  %99 = load i64, ptr %98, align 8, !tbaa !143
  %100 = load ptr, ptr %76, align 8, !tbaa !82
  %101 = getelementptr inbounds i64, ptr %100, i64 %75
  store i64 %99, ptr %101, align 8, !tbaa !25
  br label %102

102:                                              ; preds = %93, %73
  %103 = phi i64 [ %99, %93 ], [ %79, %73 ]
  %104 = load i32, ptr %0, align 8, !tbaa !43
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = trunc i64 %103 to i16
  store i16 %107, ptr %27, align 2, !tbaa !48
  br label %108

108:                                              ; preds = %106, %102
  %109 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 18
  %110 = load ptr, ptr %109, align 8, !tbaa !80
  %111 = getelementptr inbounds %struct._QuantizeInfo, ptr %110, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !21
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !47
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 %103, i32 2
  %118 = load i16, ptr %117, align 2, !tbaa !50
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 2
  store i16 %118, ptr %119, align 2, !tbaa !50
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 %103
  %121 = load <2 x i16>, ptr %120, align 2, !tbaa !48
  store <2 x i16> %121, ptr %24, align 2, !tbaa !48
  %122 = load i32, ptr %30, align 8, !tbaa !91
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 %103, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !49
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 3
  store i16 %126, ptr %127, align 2, !tbaa !49
  br label %128

128:                                              ; preds = %114, %124, %108
  %129 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %23) #27
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %173, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16
  %133 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 1
  %134 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %132, ptr noundef nonnull %133, i64 noundef 240) #23
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %136 = load ptr, ptr %135, align 8, !tbaa !47
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 %103
  call fastcc void @AssociateAlphaPixel(ptr noundef nonnull %2, ptr noundef %137, ptr noundef nonnull %5) #26
  %138 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15
  %139 = load <2 x float>, ptr %5, align 8, !tbaa !83
  %140 = fsub <2 x float> %66, %139
  store <2 x float> %140, ptr %138, align 8, !tbaa !83
  %141 = getelementptr inbounds %struct._RealPixelPacket, ptr %5, i64 0, i32 2
  %142 = load float, ptr %141, align 8, !tbaa !123
  %143 = fsub float %69, %142
  %144 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15, i32 2
  store float %143, ptr %144, align 8, !tbaa !123
  %145 = load i32, ptr %30, align 8, !tbaa !91
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %131
  %148 = getelementptr inbounds %struct._RealPixelPacket, ptr %5, i64 0, i32 3
  %149 = load float, ptr %148, align 4, !tbaa !101
  %150 = fsub float %74, %149
  %151 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 16, i64 15, i32 3
  store float %150, ptr %151, align 4, !tbaa !101
  br label %152

152:                                              ; preds = %147, %131
  %153 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 23
  %154 = load i64, ptr %153, align 8, !tbaa !135
  %155 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 24
  %156 = load i64, ptr %155, align 8, !tbaa !136
  %157 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef %154, i64 noundef %156) #26
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %152
  %160 = load i64, ptr %153, align 8, !tbaa !135
  %161 = add nsw i64 %160, 1
  store i64 %161, ptr %153, align 8, !tbaa !135
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
  %171 = load i64, ptr %169, align 8, !tbaa !25
  %172 = add nsw i64 %171, %170
  store i64 %172, ptr %169, align 8, !tbaa !25
  br label %173

173:                                              ; preds = %168, %162, %22, %128, %152
  %174 = phi i32 [ 0, %152 ], [ 0, %128 ], [ 0, %22 ], [ 1, %162 ], [ 1, %168 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret i32 %174
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePixelThreadSet(i64 noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = shl i64 %2, 3
  %7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef %6) #23
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %12, label %19

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %2
  br i1 %11, label %19, label %12, !llvm.loop !155

12:                                               ; preds = %5, %9
  %13 = phi i64 [ %10, %9 ], [ 0, %5 ]
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 32) #28
  %15 = getelementptr inbounds ptr, ptr %3, i64 %13
  store ptr %14, ptr %15, align 8, !tbaa !57
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %3) #26
  br label %19

19:                                               ; preds = %9, %5, %1, %17
  %20 = phi ptr [ %18, %17 ], [ null, %1 ], [ %3, %5 ], [ %3, %9 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #0 {
  %1 = tail call i32 @omp_get_thread_num() #26
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @CacheOffset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 {
  %3 = load float, ptr %1, align 4, !tbaa !124
  %4 = tail call fastcc zeroext i16 @ClampPixel(float noundef %3) #26
  %5 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %4) #26
  %6 = lshr i8 %5, 2
  %7 = zext nneg i8 %6 to i64
  %8 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !125
  %10 = tail call fastcc zeroext i16 @ClampPixel(float noundef %9) #26
  %11 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %10) #26
  %12 = lshr i8 %11, 2
  %13 = zext nneg i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 6
  %15 = or disjoint i64 %14, %7
  %16 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !123
  %18 = tail call fastcc zeroext i16 @ClampPixel(float noundef %17) #26
  %19 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %18) #26
  %20 = lshr i8 %19, 2
  %21 = zext nneg i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 12
  %23 = or disjoint i64 %22, %15
  %24 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 19
  %25 = load i32, ptr %24, align 8, !tbaa !91
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct._RealPixelPacket, ptr %1, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !101
  %30 = tail call fastcc zeroext i16 @ClampPixel(float noundef %29) #26
  %31 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %30) #26
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
define internal fastcc ptr @DestroyPixelThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #23
  store ptr %10, ptr %6, align 8, !tbaa !57
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !156

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #23
  ret ptr %16
}

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #19

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QuantizeImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2807, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #23
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @GetNextImageInList(ptr noundef nonnull %1) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @QuantizeImage(ptr noundef %0, ptr noundef nonnull %1) #26, !range !39
  br label %86

14:                                               ; preds = %9
  %15 = load i64, ptr %0, align 8, !tbaa !22
  %16 = icmp eq i64 %15, 0
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 65536)
  %18 = select i1 %16, i64 65536, i64 %17
  %19 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !38
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
  br i1 %29, label %30, label %24, !llvm.loop !157

30:                                               ; preds = %24, %22
  %31 = phi i64 [ 1, %22 ], [ %28, %24 ]
  %32 = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !17
  %34 = icmp ne i32 %33, 0
  %35 = sext i1 %34 to i64
  %36 = add i64 %31, %35
  br label %37

37:                                               ; preds = %30, %14
  %38 = phi i64 [ %36, %30 ], [ %20, %14 ]
  %39 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef %38, i64 noundef %18) #26
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %43 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %44 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %42, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2843, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %43) #23
  br label %86

45:                                               ; preds = %37
  %46 = tail call i64 @GetImageListLength(ptr noundef %1) #23
  %47 = icmp eq ptr %1, null
  br i1 %47, label %84, label %48

48:                                               ; preds = %45, %62
  %49 = phi i64 [ %64, %62 ], [ 0, %45 ]
  %50 = phi ptr [ %63, %62 ], [ %1, %45 ]
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 48
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %50, ptr noundef null, ptr noundef %52) #23
  %54 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 58
  %55 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %39, ptr noundef nonnull %50, ptr noundef nonnull %54) #26, !range !39
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %48
  %58 = load ptr, ptr %51, align 8, !tbaa !64
  %59 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %50, ptr noundef %53, ptr noundef %58) #23
  %60 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %50, ptr noundef nonnull @.str.10, i64 noundef %49, i64 noundef %46) #26
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = tail call ptr @GetNextImageInList(ptr noundef nonnull %50) #23
  %64 = add nuw nsw i64 %49, 1
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %48, !llvm.loop !158

66:                                               ; preds = %62, %57
  tail call fastcc void @ReduceImageColors(ptr noundef nonnull %1, ptr noundef nonnull %39) #26
  br label %67

67:                                               ; preds = %66, %80
  %68 = phi i64 [ %82, %80 ], [ 0, %66 ]
  %69 = phi ptr [ %81, %80 ], [ %1, %66 ]
  %70 = getelementptr inbounds %struct._Image, ptr %69, i64 0, i32 48
  %71 = load ptr, ptr %70, align 8, !tbaa !64
  %72 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %69, ptr noundef null, ptr noundef %71) #23
  %73 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %69, ptr noundef nonnull %39) #26, !range !39
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %67
  %76 = load ptr, ptr %70, align 8, !tbaa !64
  %77 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %69, ptr noundef %72, ptr noundef %76) #23
  %78 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %69, ptr noundef nonnull @.str.10, i64 noundef %68, i64 noundef %46) #26
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = tail call ptr @GetNextImageInList(ptr noundef nonnull %69) #23
  %82 = add nuw nsw i64 %68, 1
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %67, !llvm.loop !159

84:                                               ; preds = %48, %75, %67, %80, %45
  %85 = phi i32 [ 0, %45 ], [ 1, %75 ], [ 0, %67 ], [ 1, %80 ], [ 0, %48 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %39) #26
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
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3168, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #23
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i64, ptr %0, align 8, !tbaa !22
  %12 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef 8, i64 noundef %11) #26
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  br i1 %13, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3175, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %16) #23
  br label %29

18:                                               ; preds = %10
  %19 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %14) #26, !range !39
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !90
  %24 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  store i64 %23, ptr %25, align 8, !tbaa !22
  %26 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %1, ptr noundef nonnull %12) #26, !range !39
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i32 [ %26, %21 ], [ 0, %18 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %12) #26
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %15 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RemapImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3232, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #23
  br label %10

10:                                               ; preds = %7, %3
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 @QuantizeImages(ptr noundef %0, ptr noundef nonnull %1) #26, !range !39
  br label %39

14:                                               ; preds = %10
  %15 = load i64, ptr %0, align 8, !tbaa !22
  %16 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %0, i64 noundef 8, i64 noundef %15) #26
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  br i1 %17, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3249, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %20) #23
  br label %39

22:                                               ; preds = %14
  %23 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %16, ptr noundef nonnull %2, ptr noundef nonnull %18) #26, !range !39
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._CubeInfo, ptr %16, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !90
  %28 = getelementptr inbounds %struct._CubeInfo, ptr %16, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !80
  store i64 %27, ptr %29, align 8, !tbaa !22
  br label %30

30:                                               ; preds = %25, %34
  %31 = phi ptr [ %35, %34 ], [ %1, %25 ]
  %32 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %31, ptr noundef nonnull %16) #26, !range !39
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @GetNextImageInList(ptr noundef nonnull %31) #23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %30, !llvm.loop !160

37:                                               ; preds = %30, %34, %22
  %38 = phi i32 [ 0, %22 ], [ 0, %30 ], [ 1, %34 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %16) #26
  br label %39

39:                                               ; preds = %19, %37, %12
  %40 = phi i32 [ %13, %12 ], [ %38, %37 ], [ 0, %19 ]
  ret i32 %40
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { convergent nounwind }
attributes #12 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind optsize allocsize(0) }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind optsize willreturn memory(none) }
attributes #25 = { noreturn nounwind optsize }
attributes #26 = { optsize }
attributes #27 = { hot nounwind optsize }
attributes #28 = { nounwind optsize allocsize(0,1) }

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
!10 = !{!11, !7, i64 184}
!11 = !{!"_ImageInfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !14, i64 144, !14, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !7, i64 184, !7, i64 188, !13, i64 192, !7, i64 200, !7, i64 204, !7, i64 208, !13, i64 216, !7, i64 224, !7, i64 228, !12, i64 232, !12, i64 240, !7, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !13, i64 320, !8, i64 328, !8, i64 4424, !8, i64 8520, !8, i64 12616, !7, i64 16712, !12, i64 16720, !13, i64 16728, !13, i64 16736, !15, i64 16744, !13, i64 16752, !7, i64 16760, !15, i64 16764, !12, i64 16776, !7, i64 16784}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !8, i64 0}
!17 = !{!18, !7, i64 16}
!18 = !{!"_QuantizeInfo", !13, i64 0, !13, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !13, i64 32, !7, i64 40}
!19 = !{!18, !7, i64 40}
!20 = !{!11, !7, i64 228}
!21 = !{!18, !7, i64 24}
!22 = !{!18, !13, i64 0}
!23 = !{!18, !7, i64 20}
!24 = !{!18, !13, i64 32}
!25 = !{!13, !13, i64 0}
!26 = !{!27, !7, i64 12976}
!27 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !12, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !14, i64 104, !28, i64 112, !7, i64 208, !12, i64 216, !7, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !13, i64 256, !14, i64 264, !14, i64 272, !30, i64 280, !30, i64 312, !30, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !12, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !31, i64 480, !32, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !13, i64 12904, !13, i64 12912, !34, i64 12920, !7, i64 12976, !13, i64 12984, !12, i64 12992, !35, i64 13000, !35, i64 13032, !12, i64 13064, !13, i64 13072, !13, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !7, i64 13112, !7, i64 13116, !15, i64 13120, !12, i64 13128, !30, i64 13136, !12, i64 13168, !12, i64 13176, !7, i64 13184, !7, i64 13188, !36, i64 13192, !7, i64 13200, !13, i64 13208, !13, i64 13216, !7, i64 13224, !13, i64 13232}
!28 = !{!"_ChromaticityInfo", !29, i64 0, !29, i64 24, !29, i64 48, !29, i64 72}
!29 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!31 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_TimerInfo", !33, i64 0, !33, i64 24, !7, i64 48, !13, i64 56}
!33 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!34 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !12, i64 40, !13, i64 48}
!35 = !{!"_ProfileInfo", !12, i64 0, !13, i64 8, !12, i64 16, !13, i64 24}
!36 = !{!"long long", !8, i64 0}
!37 = !{!27, !13, i64 64}
!38 = !{!18, !13, i64 8}
!39 = !{i32 0, i32 2}
!40 = !{!27, !7, i64 32}
!41 = !{!27, !13, i64 40}
!42 = !{!27, !13, i64 48}
!43 = !{!27, !7, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!27, !13, i64 464}
!47 = !{!27, !12, i64 72}
!48 = !{!16, !16, i64 0}
!49 = !{!15, !16, i64 6}
!50 = !{!15, !16, i64 4}
!51 = !{!15, !16, i64 2}
!52 = !{!15, !16, i64 0}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !45}
!55 = !{!14, !14, i64 0}
!56 = !{!27, !14, i64 496}
!57 = !{!12, !12, i64 0}
!58 = !{!36, !36, i64 0}
!59 = !{!60}
!60 = !{i64 2, i64 -1, i64 -1, i1 true}
!61 = !{!27, !7, i64 4}
!62 = distinct !{!62, !45}
!63 = !{!27, !12, i64 568}
!64 = !{!27, !12, i64 576}
!65 = distinct !{!65, !45}
!66 = distinct !{!66, !45}
!67 = !{!27, !7, i64 13184}
!68 = distinct !{!68, !45, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = distinct !{!71, !45}
!72 = !{!73, !13, i64 480}
!73 = !{!"_CubeInfo", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !36, i64 32, !74, i64 40, !75, i64 56, !75, i64 60, !75, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !8, i64 128, !8, i64 384, !12, i64 448, !7, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !36, i64 488, !36, i64 496}
!74 = !{!"_RealPixelPacket", !75, i64 0, !75, i64 4, !75, i64 8, !75, i64 12}
!75 = !{!"float", !8, i64 0}
!76 = !{!73, !13, i64 16}
!77 = !{!73, !12, i64 0}
!78 = !{!79, !12, i64 0}
!79 = !{!"_NodeInfo", !12, i64 0, !8, i64 8, !36, i64 136, !74, i64 144, !75, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!80 = !{!73, !12, i64 448}
!81 = !{!73, !12, i64 112}
!82 = !{!73, !12, i64 120}
!83 = !{!75, !75, i64 0}
!84 = distinct !{!84, !45}
!85 = distinct !{!85, !45}
!86 = distinct !{!86, !45}
!87 = !{!73, !13, i64 72}
!88 = distinct !{!88, !45}
!89 = !{i64 0, i64 16}
!90 = !{!73, !13, i64 8}
!91 = !{!73, !7, i64 456}
!92 = !{!79, !75, i64 160}
!93 = distinct !{!93, !45}
!94 = !{!79, !36, i64 136}
!95 = !{!79, !75, i64 152}
!96 = !{!79, !75, i64 156}
!97 = distinct !{!97, !45}
!98 = distinct !{!98, !45}
!99 = distinct !{!99, !45}
!100 = distinct !{!100, !45}
!101 = !{!74, !75, i64 12}
!102 = distinct !{!102, !45}
!103 = distinct !{!103, !45}
!104 = !{!73, !75, i64 64}
!105 = !{!73, !75, i64 60}
!106 = distinct !{!106, !45}
!107 = !{!73, !36, i64 32}
!108 = !{!73, !13, i64 24}
!109 = distinct !{!109, !45}
!110 = !{!73, !12, i64 104}
!111 = !{!112, !12, i64 8}
!112 = !{!"_Nodes", !12, i64 0, !12, i64 8}
!113 = !{!112, !12, i64 0}
!114 = distinct !{!114, !45}
!115 = !{i32 0, i32 65536}
!116 = distinct !{!116, !45}
!117 = distinct !{!117, !45}
!118 = !{!73, !13, i64 80}
!119 = !{!73, !12, i64 96}
!120 = !{!79, !13, i64 176}
!121 = !{!79, !13, i64 184}
!122 = distinct !{!122, !45}
!123 = !{!74, !75, i64 8}
!124 = !{!74, !75, i64 0}
!125 = !{!74, !75, i64 4}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !45}
!130 = distinct !{!130, !45}
!131 = !{!79, !75, i64 144}
!132 = !{!79, !75, i64 148}
!133 = !{!79, !13, i64 168}
!134 = distinct !{!134, !45}
!135 = !{!73, !36, i64 488}
!136 = !{!73, !36, i64 496}
!137 = !{i64 0, i64 8, !57, i64 8, i64 8, !25, i64 16, i64 8, !25, i64 24, i64 8, !25, i64 32, i64 8, !58, i64 40, i64 4, !83, i64 44, i64 4, !83, i64 48, i64 4, !83, i64 52, i64 4, !83, i64 56, i64 4, !83, i64 60, i64 4, !83, i64 64, i64 4, !83, i64 72, i64 8, !25, i64 80, i64 8, !25, i64 88, i64 8, !25, i64 96, i64 8, !57, i64 104, i64 8, !57, i64 112, i64 8, !57, i64 120, i64 8, !57, i64 128, i64 256, !138, i64 384, i64 64, !138, i64 448, i64 8, !57, i64 456, i64 4, !6, i64 464, i64 8, !25, i64 472, i64 8, !25, i64 480, i64 8, !25, i64 488, i64 8, !58, i64 496, i64 8, !58}
!138 = !{!8, !8, i64 0}
!139 = distinct !{!139, !45}
!140 = distinct !{!140, !45}
!141 = !{i64 0, i64 4, !83, i64 4, i64 4, !83, i64 8, i64 4, !83, i64 12, i64 4, !83}
!142 = !{!73, !75, i64 56}
!143 = !{!73, !13, i64 88}
!144 = distinct !{!144, !45}
!145 = distinct !{!145, !45}
!146 = distinct !{!146, !45}
!147 = !{i64 0, i64 16777216}
!148 = distinct !{!148, !45}
!149 = distinct !{!149, !45}
!150 = distinct !{!150, !45}
!151 = !{!73, !13, i64 464}
!152 = !{!73, !13, i64 472}
!153 = distinct !{!153, !45}
!154 = distinct !{!154, !45}
!155 = distinct !{!155, !45}
!156 = distinct !{!156, !45}
!157 = distinct !{!157, !45}
!158 = distinct !{!158, !45}
!159 = distinct !{!159, !45}
!160 = distinct !{!160, !45}
