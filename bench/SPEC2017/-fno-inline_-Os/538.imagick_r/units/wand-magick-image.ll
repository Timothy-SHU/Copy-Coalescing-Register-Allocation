; ModuleID = 'wand/magick-image.c'
source_filename = "wand/magick-image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagickWand = type { i64, [4096 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i64 }
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
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._PointInfo = type { double, double }
%struct._SegmentInfo = type { double, double, double, double }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._FrameInfo = type { i64, i64, i64, i64, i64, i64 }
%struct._ColorPacket = type { %struct._PixelPacket, i16, i64 }
%struct._MontageInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, double, i64, i32, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, [4096 x i8], i32, i64 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"wand/magick-image.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ContainsNoImages\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%+g%+g\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%u,%u,%u,%u\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%g,%g,%g,%g\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"UnableToCreateTemporaryFile\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%g,%g,%g\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"15x15+3+3\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"+0+0\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%gx%g\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"MagickWand\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageFromMagickWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 144, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 147, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %17

17:                                               ; preds = %8, %12
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAdaptiveBlurImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickAdaptiveBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #12, !range !43
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAdaptiveBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 211, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 213, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @AdaptiveBlurImageChannel(ptr noundef nonnull %13, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @AdaptiveBlurImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ReplaceImageInList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAdaptiveResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 257, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 259, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @AdaptiveResizeImage(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @AdaptiveResizeImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAdaptiveSharpenImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickAdaptiveSharpenImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #12, !range !43
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAdaptiveSharpenImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 324, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 326, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @AdaptiveSharpenImageChannel(ptr noundef nonnull %13, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @AdaptiveSharpenImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAdaptiveThresholdImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 376, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 378, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @AdaptiveThresholdImage(ptr noundef nonnull %13, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @AdaptiveThresholdImage(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAddImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 480, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 484, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @CloneImageList(ptr noundef nonnull %11, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %19) #12
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @CloneImageList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @InsertImageInWand(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !44 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = icmp eq i32 %7, 0
  br i1 %5, label %9, label %14

9:                                                ; preds = %2
  br i1 %8, label %12, label %10

10:                                               ; preds = %9
  %11 = tail call ptr @GetFirstImageInList(ptr noundef %1) #11
  br label %27

12:                                               ; preds = %9
  %13 = tail call ptr @GetLastImageInList(ptr noundef %1) #11
  br label %27

14:                                               ; preds = %2
  br i1 %8, label %21, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 67
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call void @PrependImageToList(ptr noundef nonnull %3, ptr noundef %1) #11
  %20 = tail call ptr @GetFirstImageInList(ptr noundef %1) #11
  br label %27

21:                                               ; preds = %15, %14
  %22 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 69
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = icmp eq ptr %23, null
  tail call void @InsertImageInList(ptr noundef nonnull %3, ptr noundef %1) #11
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = tail call ptr @GetLastImageInList(ptr noundef %1) #11
  br label %27

27:                                               ; preds = %10, %12, %19, %25
  %28 = phi ptr [ %26, %25 ], [ %20, %19 ], [ %13, %12 ], [ %11, %10 ]
  store ptr %28, ptr %3, align 8, !tbaa !41
  br label %29

29:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAddNoiseImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickAddNoiseImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1) #12, !range !43
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAddNoiseImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 544, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 546, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @AddNoiseImageChannel(ptr noundef nonnull %12, i32 noundef %1, i32 noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @AddNoiseImageChannel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickAffineTransformImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 593, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 595, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %30

18:                                               ; preds = %9
  %19 = tail call ptr @PeekDrawingWand(ptr noundef %1) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 3
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = tail call ptr @AffineTransformImage(ptr noundef %22, ptr noundef nonnull %23, ptr noundef %25) #11
  %27 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %19) #11
  %28 = icmp eq ptr %26, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %21, %18, %29, %13
  %31 = phi i32 [ 0, %13 ], [ 1, %29 ], [ 0, %18 ], [ 0, %21 ]
  ret i32 %31
}

; Function Attrs: optsize
declare ptr @PeekDrawingWand(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AffineTransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickAnnotateImage(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 658, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 660, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %58

23:                                               ; preds = %14
  %24 = tail call ptr @PeekDrawingWand(ptr noundef %1) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %58, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %24, i64 0, i32 21
  %28 = tail call ptr @CloneString(ptr noundef nonnull %27, ptr noundef %5) #11
  %29 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.5, double noundef %2, double noundef %3) #11
  %30 = call double @fmod(double noundef %4, double noundef 3.600000e+02) #11
  %31 = call fastcc double @DegreesToRadians(double noundef %30) #12
  %32 = call double @cos(double noundef %31) #11
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %24, i64 0, i32 3
  store double %32, ptr %33, align 8, !tbaa !61
  %34 = call double @fmod(double noundef %4, double noundef 3.600000e+02) #11
  %35 = call fastcc double @DegreesToRadians(double noundef %34) #12
  %36 = call double @sin(double noundef %35) #11
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %24, i64 0, i32 3, i32 1
  store double %36, ptr %37, align 8, !tbaa !69
  %38 = call double @fmod(double noundef %4, double noundef 3.600000e+02) #11
  %39 = call fastcc double @DegreesToRadians(double noundef %38) #12
  %40 = call double @sin(double noundef %39) #11
  %41 = fneg double %40
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %24, i64 0, i32 3, i32 2
  store double %41, ptr %42, align 8, !tbaa !70
  %43 = call double @fmod(double noundef %4, double noundef 3.600000e+02) #11
  %44 = call fastcc double @DegreesToRadians(double noundef %43) #12
  %45 = call double @cos(double noundef %44) #11
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %24, i64 0, i32 3, i32 3
  store double %45, ptr %46, align 8, !tbaa !71
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %24, i64 0, i32 1
  %48 = call ptr @CloneString(ptr noundef nonnull %47, ptr noundef nonnull %7) #11
  %49 = load ptr, ptr %15, align 8, !tbaa !41
  %50 = call i32 @AnnotateImage(ptr noundef %49, ptr noundef nonnull %24) #11
  %51 = call ptr @DestroyDrawInfo(ptr noundef nonnull %24) #11
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %26
  %54 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = load ptr, ptr %15, align 8, !tbaa !41
  %57 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 58
  call void @InheritException(ptr noundef %55, ptr noundef nonnull %57) #11
  br label %58

58:                                               ; preds = %26, %53, %23, %18
  %59 = phi i32 [ 0, %18 ], [ 0, %23 ], [ 0, %53 ], [ %50, %26 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #13
  ret i32 %59
}

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #4 !PGOFuncName !72 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AnnotateImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickAnimateImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 712, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 18
  %13 = tail call ptr @CloneString(ptr noundef nonnull %12, ptr noundef %1) #11
  %14 = load ptr, ptr %10, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = tail call i32 @AnimateImages(ptr noundef %14, ptr noundef %16) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = load ptr, ptr %15, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 58
  tail call void @InheritException(ptr noundef %21, ptr noundef nonnull %23) #11
  br label %24

24:                                               ; preds = %19, %9
  ret i32 %17
}

; Function Attrs: optsize
declare i32 @AnimateImages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickAppendImages(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 761, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @AppendImages(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %13, %9, %18
  %21 = phi ptr [ %19, %18 ], [ null, %9 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @AppendImages(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @CloneMagickWandFromImages(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 96, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call dereferenceable_or_null(4160) ptr @AcquireMagickMemory(i64 noundef 4160) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %15 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 100, i32 noundef 700, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, ptr noundef nonnull %14) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %16 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickWandTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

17:                                               ; preds = %10
  %18 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 4160) #11
  %19 = tail call i64 @AcquireWandId() #11
  store i64 %19, ptr %11, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 1
  %21 = uitofp i64 %19 to double
  %22 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %20, i64 noundef 4096, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, double noundef %21) #11
  %23 = tail call ptr @AcquireExceptionInfo() #11
  %24 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  tail call void @InheritException(ptr noundef %23, ptr noundef %26) #11
  %27 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = tail call ptr @CloneImageInfo(ptr noundef %28) #11
  %30 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !73
  %31 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !76
  %33 = tail call ptr @CloneQuantizeInfo(ptr noundef %32) #11
  %34 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 4
  store ptr %33, ptr %34, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 5
  store ptr %1, ptr %35, align 8, !tbaa !41
  %36 = tail call i32 @IsEventLogging() #11
  %37 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 8
  store i32 %36, ptr %37, align 8, !tbaa !34
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %17
  %40 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 112, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #11
  br label %41

41:                                               ; preds = %39, %17
  %42 = getelementptr inbounds %struct._MagickWand, ptr %11, i64 0, i32 9
  store i64 2880220587, ptr %42, align 8, !tbaa !77
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickAutoGammaImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @MagickAutoGammaImageChannel(ptr noundef %0, i32 noundef 134217719) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickAutoGammaImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 815, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 817, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @AutoGammaImageChannel(ptr noundef nonnull %11, i32 noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @AutoGammaImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickAutoLevelImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @MagickAutoLevelImageChannel(ptr noundef %0, i32 noundef 134217719) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickAutoLevelImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 869, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 871, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @AutoLevelImageChannel(ptr noundef nonnull %11, i32 noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @AutoLevelImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickBlackThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 917, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 919, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %37

19:                                               ; preds = %10
  %20 = tail call zeroext i16 @PixelGetRedQuantum(ptr noundef %1) #11
  %21 = zext i16 %20 to i32
  %22 = tail call zeroext i16 @PixelGetGreenQuantum(ptr noundef %1) #11
  %23 = zext i16 %22 to i32
  %24 = tail call zeroext i16 @PixelGetBlueQuantum(ptr noundef %1) #11
  %25 = zext i16 %24 to i32
  %26 = tail call zeroext i16 @PixelGetOpacityQuantum(ptr noundef %1) #11
  %27 = zext i16 %26 to i32
  %28 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #11
  %29 = load ptr, ptr %11, align 8, !tbaa !41
  %30 = call i32 @BlackThresholdImage(ptr noundef %29, ptr noundef nonnull %3) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = load ptr, ptr %11, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 58
  call void @InheritException(ptr noundef %34, ptr noundef nonnull %36) #11
  br label %37

37:                                               ; preds = %19, %32, %14
  %38 = phi i32 [ 0, %14 ], [ 0, %32 ], [ %30, %19 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #13
  ret i32 %38
}

; Function Attrs: optsize
declare zeroext i16 @PixelGetRedQuantum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i16 @PixelGetGreenQuantum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i16 @PixelGetBlueQuantum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i16 @PixelGetOpacityQuantum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BlackThresholdImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickBlueShiftImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 965, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 967, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @BlueShiftImage(ptr noundef nonnull %11, double noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @BlueShiftImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickBlurImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #12, !range !43
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1030, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1032, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @BlurImageChannel(ptr noundef nonnull %13, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @BlurImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickBorderImage(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1084, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1086, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %31

21:                                               ; preds = %12
  store i64 %2, ptr %5, align 8, !tbaa !78
  %22 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  store i64 %3, ptr %22, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %24 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  tail call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %24) #11
  %25 = load ptr, ptr %13, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = call ptr @BorderImage(ptr noundef %25, ptr noundef nonnull %5, ptr noundef %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %28) #11
  br label %31

31:                                               ; preds = %21, %30, %16
  %32 = phi i32 [ 0, %16 ], [ 1, %30 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  ret i32 %32
}

; Function Attrs: optsize
declare void @PixelGetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickBrightnessContrastImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickBrightnessContrastImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #12
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickBrightnessContrastImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1155, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1157, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %28

20:                                               ; preds = %11
  %21 = tail call i32 @BrightnessContrastImageChannel(ptr noundef nonnull %13, i32 noundef %1, double noundef %2, double noundef %3) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = load ptr, ptr %12, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 58
  tail call void @InheritException(ptr noundef %25, ptr noundef nonnull %27) #11
  br label %28

28:                                               ; preds = %20, %23, %15
  %29 = phi i32 [ 0, %15 ], [ 0, %23 ], [ %21, %20 ]
  ret i32 %29
}

; Function Attrs: optsize
declare i32 @BrightnessContrastImageChannel(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickCharcoalImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1202, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1204, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @CharcoalImage(ptr noundef nonnull %12, double noundef %1, double noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @CharcoalImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickChopImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1256, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1258, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %31

22:                                               ; preds = %13
  store i64 %1, ptr %6, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  store i64 %2, ptr %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  store i64 %3, ptr %24, align 8, !tbaa !80
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  store i64 %4, ptr %25, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = call ptr @ChopImage(ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  call void @ReplaceImageInList(ptr noundef nonnull %14, ptr noundef nonnull %28) #11
  br label %31

31:                                               ; preds = %22, %30, %17
  %32 = phi i32 [ 0, %17 ], [ 1, %30 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @ChopImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickClampImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @MagickClampImageChannel(ptr noundef %0, i32 noundef 134217719) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickClampImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1315, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1317, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @ClampImageChannel(ptr noundef nonnull %11, i32 noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @ClampImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickClipImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1355, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1357, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %25

17:                                               ; preds = %8
  %18 = tail call i32 @ClipImage(ptr noundef nonnull %10) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = load ptr, ptr %9, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 58
  tail call void @InheritException(ptr noundef %22, ptr noundef nonnull %24) #11
  br label %25

25:                                               ; preds = %17, %20, %12
  %26 = phi i32 [ 0, %12 ], [ 0, %20 ], [ %18, %17 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @ClipImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickClipImagePath(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1405, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1407, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %27

19:                                               ; preds = %10
  %20 = tail call i32 @ClipImagePath(ptr noundef nonnull %12, ptr noundef %1, i32 noundef %2) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #11
  br label %27

27:                                               ; preds = %19, %22, %14
  %28 = phi i32 [ 0, %14 ], [ 0, %22 ], [ %20, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @ClipImagePath(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickClutImage(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickClutImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickClutImageChannel(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1461, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %2, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1463, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %31

23:                                               ; preds = %14
  %24 = tail call i32 @ClutImageChannel(ptr noundef nonnull %12, i32 noundef %1, ptr noundef nonnull %16) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = load ptr, ptr %11, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %28, ptr noundef nonnull %30) #11
  br label %31

31:                                               ; preds = %23, %26, %18
  %32 = phi i32 [ 0, %18 ], [ 0, %26 ], [ %24, %23 ]
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @ClutImageChannel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickCoalesceImages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1505, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = tail call ptr @CoalesceImages(ptr noundef nonnull %10, ptr noundef %14) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %15) #12
  br label %19

19:                                               ; preds = %12, %8, %17
  %20 = phi ptr [ %18, %17 ], [ null, %8 ], [ null, %12 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @CoalesceImages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickColorDecisionListImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1566, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1568, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @ColorDecisionListImage(ptr noundef nonnull %11, ptr noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @ColorDecisionListImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickColorizeImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1617, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1619, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %42

21:                                               ; preds = %12
  %22 = tail call zeroext i16 @PixelGetRedQuantum(ptr noundef %2) #11
  %23 = uitofp i16 %22 to double
  %24 = fmul double %23, 0x3F59001900190019
  %25 = tail call zeroext i16 @PixelGetGreenQuantum(ptr noundef %2) #11
  %26 = uitofp i16 %25 to double
  %27 = fmul double %26, 0x3F59001900190019
  %28 = tail call zeroext i16 @PixelGetBlueQuantum(ptr noundef %2) #11
  %29 = uitofp i16 %28 to double
  %30 = fmul double %29, 0x3F59001900190019
  %31 = tail call zeroext i16 @PixelGetOpacityQuantum(ptr noundef %2) #11
  %32 = uitofp i16 %31 to double
  %33 = fmul double %32, 0x3F59001900190019
  %34 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.7, double noundef %24, double noundef %27, double noundef %30, double noundef %33) #11
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %5) #11
  %35 = load ptr, ptr %13, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  %38 = load i64, ptr %5, align 8
  %39 = call ptr @ColorizeImage(ptr noundef %35, ptr noundef nonnull %4, i64 %38, ptr noundef %37) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %21
  call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %39) #11
  br label %42

42:                                               ; preds = %21, %41, %16
  %43 = phi i32 [ 0, %16 ], [ 1, %41 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  ret i32 %43
}

; Function Attrs: optsize
declare ptr @ColorizeImage(ptr noundef, ptr noundef, i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickColorMatrixImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1678, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @ColorMatrixImage(ptr noundef nonnull %13, ptr noundef nonnull %1, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %9, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %9 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @ColorMatrixImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickCombineImages(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1723, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @CombineImages(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %13, %9, %18
  %21 = phi ptr [ %19, %18 ], [ null, %9 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @CombineImages(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickCommentImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1766, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1768, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @SetImageProperty(ptr noundef nonnull %11, ptr noundef nonnull @.str.8, ptr noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickCompareImageChannels(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1818, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1821, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %23) #11
  br label %31

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  %27 = tail call ptr @CompareImageChannels(ptr noundef nonnull %14, ptr noundef nonnull %18, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %26) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %27) #12
  br label %31

31:                                               ; preds = %25, %29, %20
  %32 = phi ptr [ null, %20 ], [ %30, %29 ], [ null, %25 ]
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @CompareImageChannels(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickCompareImageLayers(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1868, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @CompareImageLayers(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %13, %9, %18
  %21 = phi ptr [ %19, %18 ], [ null, %9 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @CompareImageLayers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickCompareImages(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1917, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1920, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %22) #11
  br label %30

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  %26 = tail call ptr @CompareImages(ptr noundef nonnull %13, ptr noundef nonnull %17, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %25) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %26) #12
  br label %30

30:                                               ; preds = %24, %28, %19
  %31 = phi ptr [ null, %19 ], [ %29, %28 ], [ null, %24 ]
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @CompareImages(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickCompositeImage(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @MagickCompositeImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) #12
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickCompositeImageChannel(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1997, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %2, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2000, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #11
  br label %34

26:                                               ; preds = %17
  %27 = tail call i32 @CompositeImageChannel(ptr noundef nonnull %15, i32 noundef %1, i32 noundef %3, ptr noundef nonnull %19, i64 noundef %4, i64 noundef %5) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = load ptr, ptr %14, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 58
  tail call void @InheritException(ptr noundef %31, ptr noundef nonnull %33) #11
  br label %34

34:                                               ; preds = %26, %29, %21
  %35 = phi i32 [ 0, %21 ], [ 0, %29 ], [ %27, %26 ]
  ret i32 %35
}

; Function Attrs: optsize
declare i32 @CompositeImageChannel(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickCompositeLayers(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2071, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2074, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %23) #11
  br label %27

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  tail call void @CompositeLayers(ptr noundef nonnull %14, i32 noundef %2, ptr noundef nonnull %18, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %26) #11
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i32 [ 0, %20 ], [ 1, %25 ]
  ret i32 %28
}

; Function Attrs: optsize
declare void @CompositeLayers(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickContrastImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2118, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2120, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @ContrastImage(ptr noundef nonnull %11, i32 noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @ContrastImage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickContrastStretchImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickContrastStretchImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #12
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickContrastStretchImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2183, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2185, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %28

20:                                               ; preds = %11
  %21 = tail call i32 @ContrastStretchImageChannel(ptr noundef nonnull %13, i32 noundef %1, double noundef %2, double noundef %3) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = load ptr, ptr %12, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 58
  tail call void @InheritException(ptr noundef %25, ptr noundef nonnull %27) #11
  br label %28

28:                                               ; preds = %20, %23, %15
  %29 = phi i32 [ 0, %15 ], [ 0, %23 ], [ %21, %20 ]
  ret i32 %29
}

; Function Attrs: optsize
declare i32 @ContrastStretchImageChannel(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickConvolveImage(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, ptr noundef %2) #12, !range !43
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickConvolveImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2245, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %3, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  br i1 %16, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2249, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %26

22:                                               ; preds = %13
  %23 = tail call ptr @ConvolveImageChannel(ptr noundef nonnull %15, i32 noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef %18) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @ReplaceImageInList(ptr noundef nonnull %14, ptr noundef nonnull %23) #11
  br label %26

26:                                               ; preds = %22, %11, %25, %19
  %27 = phi i32 [ 0, %19 ], [ 1, %25 ], [ 0, %11 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @ConvolveImageChannel(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickCropImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2301, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2303, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %31

22:                                               ; preds = %13
  store i64 %1, ptr %6, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  store i64 %2, ptr %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  store i64 %3, ptr %24, align 8, !tbaa !80
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  store i64 %4, ptr %25, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = call ptr @CropImage(ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  call void @ReplaceImageInList(ptr noundef nonnull %14, ptr noundef nonnull %28) #11
  br label %31

31:                                               ; preds = %22, %30, %17
  %32 = phi i32 [ 0, %17 ], [ 1, %30 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickCycleColormapImage(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2351, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2353, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @CycleColormapImage(ptr noundef nonnull %11, i64 noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @CycleColormapImage(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickConstituteImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2421, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @ConstituteImage(i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @ConstituteImage(i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickDecipherImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2459, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2461, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %21

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 58
  %20 = tail call i32 @DecipherImage(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull %19) #11
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ 0, %13 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @DecipherImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickDeconstructImages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2497, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = tail call ptr @DeconstructImages(ptr noundef nonnull %10, ptr noundef %14) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %15) #12
  br label %19

19:                                               ; preds = %12, %8, %17
  %20 = phi ptr [ %18, %17 ], [ null, %8 ], [ null, %12 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @DeconstructImages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickDeskewImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2543, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2545, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @DeskewImage(ptr noundef nonnull %11, double noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @DeskewImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickDespeckleImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2584, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2586, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @DespeckleImage(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @DespeckleImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickDestroyImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @DestroyImage(ptr noundef %0) #11
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickDisplayImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2659, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2661, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %34

18:                                               ; preds = %9
  %19 = tail call ptr @CloneImage(ptr noundef nonnull %11, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %23, i64 0, i32 18
  %25 = tail call ptr @CloneString(ptr noundef nonnull %24, ptr noundef %1) #11
  %26 = load ptr, ptr %22, align 8, !tbaa !73
  %27 = tail call i32 @DisplayImages(ptr noundef %26, ptr noundef nonnull %19) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load ptr, ptr %13, align 8, !tbaa !42
  %31 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 58
  tail call void @InheritException(ptr noundef %30, ptr noundef nonnull %31) #11
  br label %32

32:                                               ; preds = %29, %21
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #11
  br label %34

34:                                               ; preds = %18, %32, %15
  %35 = phi i32 [ 0, %15 ], [ %27, %32 ], [ 0, %18 ]
  ret i32 %35
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @DisplayImages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickDisplayImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2707, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 18
  %13 = tail call ptr @CloneString(ptr noundef nonnull %12, ptr noundef %1) #11
  %14 = load ptr, ptr %10, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = tail call i32 @DisplayImages(ptr noundef %14, ptr noundef %16) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = load ptr, ptr %15, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 58
  tail call void @InheritException(ptr noundef %21, ptr noundef nonnull %23) #11
  br label %24

24:                                               ; preds = %19, %9
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickDistortImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2785, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2787, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @DistortImage(ptr noundef nonnull %14, i32 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @DistortImage(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickDrawImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2836, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2838, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %40

18:                                               ; preds = %9
  %19 = tail call ptr @PeekDrawingWand(ptr noundef %1) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !82
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @AcquireString(ptr noundef nonnull %22) #11
  %26 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %19) #11
  %27 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = tail call ptr @CloneDrawInfo(ptr noundef %28, ptr noundef null) #11
  store ptr %25, ptr %29, align 8, !tbaa !82
  %30 = load ptr, ptr %10, align 8, !tbaa !41
  %31 = tail call i32 @DrawImage(ptr noundef %30, ptr noundef nonnull %29) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  %36 = load ptr, ptr %10, align 8, !tbaa !41
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 58
  tail call void @InheritException(ptr noundef %35, ptr noundef nonnull %37) #11
  br label %38

38:                                               ; preds = %33, %24
  %39 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %29) #11
  br label %40

40:                                               ; preds = %18, %21, %38, %13
  %41 = phi i32 [ 0, %13 ], [ %31, %38 ], [ 0, %21 ], [ 0, %18 ]
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickEdgeImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2889, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2891, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @EdgeImage(ptr noundef nonnull %11, double noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @EdgeImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickEmbossImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2940, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2942, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @EmbossImage(ptr noundef nonnull %12, double noundef %1, double noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @EmbossImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickEncipherImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2981, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2983, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %21

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 58
  %20 = tail call i32 @EncipherImage(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull %19) #11
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ 0, %13 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @EncipherImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickEnhanceImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3018, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3020, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @EnhanceImage(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @EnhanceImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickEqualizeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @MagickEqualizeImageChannel(ptr noundef %0, i32 noundef 134217719) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickEqualizeImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3073, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3075, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @EqualizeImageChannel(ptr noundef nonnull %11, i32 noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @EqualizeImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickEvaluateImage(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3129, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3131, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %28

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 58
  %21 = tail call i32 @EvaluateImage(ptr noundef nonnull %12, i32 noundef %1, double noundef %2, ptr noundef nonnull %20) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = load ptr, ptr %11, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 58
  tail call void @InheritException(ptr noundef %25, ptr noundef nonnull %27) #11
  br label %28

28:                                               ; preds = %19, %23, %14
  %29 = phi i32 [ 0, %14 ], [ 0, %23 ], [ %21, %19 ]
  ret i32 %29
}

; Function Attrs: optsize
declare i32 @EvaluateImage(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickEvaluateImages(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3147, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @EvaluateImages(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %13, %9, %18
  %21 = phi ptr [ %19, %18 ], [ null, %9 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @EvaluateImages(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickEvaluateImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3165, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3167, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %23

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  %22 = tail call i32 @EvaluateImageChannel(ptr noundef nonnull %13, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef nonnull %21) #11
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ 0, %15 ], [ %22, %20 ]
  ret i32 %24
}

; Function Attrs: optsize
declare i32 @EvaluateImageChannel(ptr noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickExportImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3234, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #11
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  br i1 %18, label %21, label %24

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3236, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %22) #11
  br label %31

24:                                               ; preds = %15
  %25 = tail call i32 @ExportImagePixels(ptr noundef nonnull %17, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %20) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load ptr, ptr %19, align 8, !tbaa !42
  %29 = load ptr, ptr %16, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %28, ptr noundef nonnull %30) #11
  br label %31

31:                                               ; preds = %24, %27, %21
  %32 = phi i32 [ 0, %21 ], [ 0, %27 ], [ %25, %24 ]
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @ExportImagePixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickExtentImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3289, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3291, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %31

22:                                               ; preds = %13
  store i64 %1, ptr %6, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  store i64 %2, ptr %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  store i64 %3, ptr %24, align 8, !tbaa !80
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  store i64 %4, ptr %25, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = call ptr @ExtentImage(ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  call void @ReplaceImageInList(ptr noundef nonnull %14, ptr noundef nonnull %28) #11
  br label %31

31:                                               ; preds = %22, %30, %17
  %32 = phi i32 [ 0, %17 ], [ 1, %30 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @ExtentImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickFilterImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickFilterImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #12, !range !43
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickFilterImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3352, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = icmp eq ptr %2, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3356, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @FilterImageChannel(ptr noundef nonnull %14, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %10, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %10 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @FilterImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickFlipImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3395, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3397, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @FlipImage(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @FlipImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickFloodfillPaintImage(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #13
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3467, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #11
  br label %16

16:                                               ; preds = %13, %8
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3469, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %23) #11
  br label %53

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = tail call ptr @CloneDrawInfo(ptr noundef %27, ptr noundef null) #11
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 5
  tail call void @PixelGetQuantumColor(ptr noundef %2, ptr noundef nonnull %29) #11
  %30 = load ptr, ptr %17, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7
  %32 = load i64, ptr %31, align 8, !tbaa !83
  %33 = urem i64 %5, %32
  %34 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !84
  %36 = urem i64 %6, %35
  %37 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = call i32 @GetOneVirtualMagickPixel(ptr noundef %30, i64 noundef %33, i64 noundef %36, ptr noundef nonnull %9, ptr noundef %38) #11
  %40 = icmp eq ptr %4, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  call void @PixelGetMagickColor(ptr noundef nonnull %4, ptr noundef nonnull %9) #11
  br label %42

42:                                               ; preds = %41, %25
  %43 = load ptr, ptr %17, align 8, !tbaa !41
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 31
  store double %3, ptr %44, align 8, !tbaa !85
  %45 = call i32 @FloodfillPaintImage(ptr noundef %43, i32 noundef %1, ptr noundef %28, ptr noundef nonnull %9, i64 noundef %5, i64 noundef %6, i32 noundef %7) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load ptr, ptr %37, align 8, !tbaa !42
  %49 = load ptr, ptr %17, align 8, !tbaa !41
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 58
  call void @InheritException(ptr noundef %48, ptr noundef nonnull %50) #11
  br label %51

51:                                               ; preds = %47, %42
  %52 = call ptr @DestroyDrawInfo(ptr noundef %28) #11
  br label %53

53:                                               ; preds = %51, %20
  %54 = phi i32 [ 0, %20 ], [ %45, %51 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #13
  ret i32 %54
}

; Function Attrs: optsize
declare i32 @GetOneVirtualMagickPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PixelGetMagickColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @FloodfillPaintImage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickFlopImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3515, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3517, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @FlopImage(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @FlopImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickForwardFourierTransformImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3562, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3564, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @ForwardFourierTransformImage(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @ForwardFourierTransformImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickFrameImage(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._FrameInfo, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3624, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3626, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %43

23:                                               ; preds = %14
  %24 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 48) #11
  %25 = load ptr, ptr %15, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  %27 = insertelement <2 x i64> poison, i64 %2, i64 0
  %28 = insertelement <2 x i64> %27, i64 %3, i64 1
  %29 = shl <2 x i64> %28, <i64 1, i64 1>
  %30 = load <2 x i64>, ptr %26, align 8, !tbaa !86
  %31 = add <2 x i64> %30, %29
  store <2 x i64> %31, ptr %7, align 16, !tbaa !86
  %32 = getelementptr inbounds %struct._FrameInfo, ptr %7, i64 0, i32 2
  store i64 %2, ptr %32, align 16, !tbaa !87
  %33 = getelementptr inbounds %struct._FrameInfo, ptr %7, i64 0, i32 3
  store i64 %3, ptr %33, align 8, !tbaa !89
  %34 = getelementptr inbounds %struct._FrameInfo, ptr %7, i64 0, i32 4
  store i64 %4, ptr %34, align 16, !tbaa !90
  %35 = getelementptr inbounds %struct._FrameInfo, ptr %7, i64 0, i32 5
  store i64 %5, ptr %35, align 8, !tbaa !91
  %36 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 14
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %36) #11
  %37 = load ptr, ptr %15, align 8, !tbaa !41
  %38 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = call ptr @FrameImage(ptr noundef %37, ptr noundef nonnull %7, ptr noundef %39) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %23
  call void @ReplaceImageInList(ptr noundef nonnull %15, ptr noundef nonnull %40) #11
  br label %43

43:                                               ; preds = %23, %42, %18
  %44 = phi i32 [ 0, %18 ], [ 1, %42 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #13
  ret i32 %44
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @FrameImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickFunctionImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3691, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3693, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %29

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  %22 = tail call i32 @FunctionImage(ptr noundef nonnull %13, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = load ptr, ptr %12, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %26, ptr noundef nonnull %28) #11
  br label %29

29:                                               ; preds = %20, %24, %15
  %30 = phi i32 [ 0, %15 ], [ 0, %24 ], [ %22, %20 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @FunctionImage(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickFunctionImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3711, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3713, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  %23 = tail call i32 @FunctionImageChannel(ptr noundef nonnull %14, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %22) #11
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ 0, %16 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: optsize
declare i32 @FunctionImageChannel(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickFxImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @MagickFxImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickFxImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3766, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = tail call ptr @FxImageChannel(ptr noundef nonnull %12, i32 noundef %1, ptr noundef %2, ptr noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %17) #12
  br label %21

21:                                               ; preds = %14, %10, %19
  %22 = phi ptr [ %20, %19 ], [ null, %10 ], [ null, %14 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @FxImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGammaImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickGammaImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGammaImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3830, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3832, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %27

19:                                               ; preds = %10
  %20 = tail call i32 @GammaImageChannel(ptr noundef nonnull %12, i32 noundef %1, double noundef %2) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #11
  br label %27

27:                                               ; preds = %19, %22, %14
  %28 = phi i32 [ 0, %14 ], [ 0, %22 ], [ %20, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @GammaImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGaussianBlurImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickGaussianBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #12, !range !43
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGaussianBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3894, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3896, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @GaussianBlurImageChannel(ptr noundef nonnull %13, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @GaussianBlurImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickGetImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3935, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3938, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %22

17:                                               ; preds = %8
  %18 = tail call ptr @CloneImage(ptr noundef nonnull %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %18) #12
  br label %22

22:                                               ; preds = %17, %20, %14
  %23 = phi ptr [ null, %14 ], [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageAlphaChannel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3977, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3979, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %19

17:                                               ; preds = %8
  %18 = tail call i32 @GetImageAlphaChannel(ptr noundef nonnull %10) #11
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ 0, %12 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @GetImageAlphaChannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickGetImageClipMask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4013, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4016, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %22

17:                                               ; preds = %8
  %18 = tail call ptr @GetImageClipMask(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %18) #12
  br label %22

22:                                               ; preds = %17, %20, %14
  %23 = phi ptr [ null, %14 ], [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @GetImageClipMask(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageBackgroundColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4057, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4059, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 12
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %19) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: optsize
declare void @PixelSetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImageBlob(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4101, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4104, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %24

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = tail call ptr @ImageToBlob(ptr noundef %20, ptr noundef nonnull %11, ptr noundef %1, ptr noundef %22) #11
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi ptr [ null, %13 ], [ %23, %18 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @ImageToBlob(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImagesBlob(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4150, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4153, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %25

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %11) #11
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = tail call ptr @ImagesToBlob(ptr noundef %20, ptr noundef %21, ptr noundef %1, ptr noundef %23) #11
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi ptr [ null, %13 ], [ %24, %18 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @ImagesToBlob(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageBluePrimary(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4196, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4198, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %24

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 2
  %21 = load double, ptr %20, align 8, !tbaa !92
  store double %21, ptr %1, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 2, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !94
  store double %23, ptr %2, align 8, !tbaa !93
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageBorderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4235, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4237, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 13
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %19) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageChannelDepth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4273, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4275, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = tail call i64 @GetImageChannelDepth(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %14) #11
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i64 [ 0, %15 ], [ %19, %18 ]
  ret i64 %21
}

; Function Attrs: optsize
declare i64 @GetImageChannelDepth(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageChannelDistortion(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4322, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4326, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %23) #11
  br label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  %27 = tail call i32 @GetImageChannelDistortion(ptr noundef nonnull %14, ptr noundef nonnull %18, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %26) #11
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ 0, %20 ], [ %27, %25 ]
  ret i32 %29
}

; Function Attrs: optsize
declare i32 @GetImageChannelDistortion(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImageChannelDistortions(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4371, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4376, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %26

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 58
  %25 = tail call ptr @GetImageChannelDistortions(ptr noundef nonnull %12, ptr noundef nonnull %16, i32 noundef %2, ptr noundef nonnull %24) #11
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ null, %18 ], [ %25, %23 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @GetImageChannelDistortions(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImageChannelFeatures(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4429, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4432, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = tail call ptr @GetImageChannelFeatures(ptr noundef nonnull %11, i64 noundef %1, ptr noundef %14) #11
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ null, %15 ], [ %19, %18 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @GetImageChannelFeatures(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageChannelKurtosis(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4478, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4480, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %22

20:                                               ; preds = %11
  %21 = tail call i32 @GetImageChannelKurtosis(ptr noundef nonnull %13, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %16) #11
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ 0, %17 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: optsize
declare i32 @GetImageChannelKurtosis(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageChannelMean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4525, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4527, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %22

20:                                               ; preds = %11
  %21 = tail call i32 @GetImageChannelMean(ptr noundef nonnull %13, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %16) #11
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ 0, %17 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: optsize
declare i32 @GetImageChannelMean(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageChannelRange(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4571, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4573, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %22

20:                                               ; preds = %11
  %21 = tail call i32 @GetImageChannelRange(ptr noundef nonnull %13, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %16) #11
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ 0, %17 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: optsize
declare i32 @GetImageChannelRange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImageChannelStatistics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4614, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4617, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %19

17:                                               ; preds = %8
  %18 = tail call ptr @GetImageChannelStatistics(ptr noundef nonnull %10, ptr noundef %13) #11
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ null, %14 ], [ %18, %17 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @GetImageChannelStatistics(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageColormapColor(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4658, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4660, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %34

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !96
  %26 = icmp ugt i64 %25, %1
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4664, i32 noundef 470, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef nonnull %30) #11
  br label %34

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 %1
  tail call void @PixelSetQuantumColor(ptr noundef %2, ptr noundef nonnull %33) #11
  br label %34

34:                                               ; preds = %32, %27, %14
  %35 = phi i32 [ 0, %14 ], [ 0, %27 ], [ 1, %32 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageColors(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4699, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4702, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %19

17:                                               ; preds = %8
  %18 = tail call i64 @GetNumberColors(ptr noundef nonnull %10, ptr noundef null, ptr noundef %13) #11
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i64 [ 0, %14 ], [ %18, %17 ]
  ret i64 %20
}

; Function Attrs: optsize
declare i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageColorspace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4736, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4739, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !97
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageCompose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4774, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4777, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 36
  %19 = load i32, ptr %18, align 8, !tbaa !98
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageCompression(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4811, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4814, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !99
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageCompressionQuality(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4848, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4851, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !100
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageDelay(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4885, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4887, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 40
  %19 = load i64, ptr %18, align 8, !tbaa !101
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageDepth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4918, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4920, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 9
  %19 = load i64, ptr %18, align 8, !tbaa !102
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageDistortion(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4964, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4966, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %22) #11
  br label %27

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  %26 = tail call i32 @GetImageDistortion(ptr noundef nonnull %13, ptr noundef nonnull %17, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %25) #11
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32 [ 0, %19 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @GetImageDistortion(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageDispose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4999, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5002, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 37
  %19 = load i32, ptr %18, align 4, !tbaa !103
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageEndian(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5036, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5039, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 34
  %19 = load i32, ptr %18, align 8, !tbaa !104
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImageFilename(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5074, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5077, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 53
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %18) #11
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ null, %12 ], [ %19, %17 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImageFormat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5112, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5115, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 55
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %18) #11
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ null, %12 ], [ %19, %17 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @MagickGetImageFuzz(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5149, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5152, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 31
  %19 = load double, ptr %18, align 8, !tbaa !85
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi double [ 0.000000e+00, %12 ], [ %19, %17 ]
  ret double %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @MagickGetImageGamma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5186, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5189, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 15
  %19 = load double, ptr %18, align 8, !tbaa !105
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi double [ 0.000000e+00, %12 ], [ %19, %17 ]
  ret double %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageGravity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5223, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5226, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 35
  %19 = load i32, ptr %18, align 4, !tbaa !106
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageGreenPrimary(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5266, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5268, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %24

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !107
  store double %21, ptr %1, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 1, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !108
  store double %23, ptr %2, align 8, !tbaa !93
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageHeight(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5301, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5303, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !84
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImageHistogram(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5349, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5352, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %42

18:                                               ; preds = %9
  %19 = tail call ptr @GetImageHistogram(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %1, align 8, !tbaa !86
  %23 = tail call ptr @NewPixelWands(i64 noundef %22) #11
  %24 = load i64, ptr %1, align 8, !tbaa !86
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21, %26
  %27 = phi i64 [ %37, %26 ], [ 0, %21 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !109
  %30 = getelementptr inbounds %struct._ColorPacket, ptr %19, i64 %27
  tail call void @PixelSetQuantumColor(ptr noundef %29, ptr noundef nonnull %30) #11
  %31 = load ptr, ptr %28, align 8, !tbaa !109
  %32 = getelementptr inbounds %struct._ColorPacket, ptr %19, i64 %27, i32 1
  %33 = load i16, ptr %32, align 8, !tbaa !110
  tail call void @PixelSetIndex(ptr noundef %31, i16 noundef zeroext %33) #11
  %34 = load ptr, ptr %28, align 8, !tbaa !109
  %35 = getelementptr inbounds %struct._ColorPacket, ptr %19, i64 %27, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !112
  tail call void @PixelSetColorCount(ptr noundef %34, i64 noundef %36) #11
  %37 = add nuw nsw i64 %27, 1
  %38 = load i64, ptr %1, align 8, !tbaa !86
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %26, label %40, !llvm.loop !113

40:                                               ; preds = %26, %21
  %41 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %19) #11
  br label %42

42:                                               ; preds = %18, %40, %15
  %43 = phi ptr [ null, %15 ], [ %23, %40 ], [ null, %18 ]
  ret ptr %43
}

; Function Attrs: optsize
declare ptr @GetImageHistogram(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewPixelWands(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PixelSetIndex(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PixelSetColorCount(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageInterlaceScheme(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5397, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5400, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 33
  %19 = load i32, ptr %18, align 4, !tbaa !115
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageInterpolateMethod(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5436, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5439, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 70
  %19 = load i32, ptr %18, align 8, !tbaa !116
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageIterations(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5473, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5475, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 42
  %19 = load i64, ptr %18, align 8, !tbaa !117
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageLength(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5510, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5512, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = tail call i64 @GetBlobSize(ptr noundef nonnull %11) #11
  store i64 %19, ptr %1, align 8, !tbaa !118
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageMatteColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5548, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5550, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 14
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %19) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageOrientation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5582, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5585, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !119
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImagePage(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5629, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5631, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %30

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26
  %23 = load i64, ptr %22, align 8, !tbaa !120
  store i64 %23, ptr %1, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !121
  store i64 %25, ptr %2, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !122
  store i64 %27, ptr %3, align 8, !tbaa !86
  %28 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !123
  store i64 %29, ptr %4, align 8, !tbaa !86
  br label %30

30:                                               ; preds = %21, %16
  %31 = phi i32 [ 0, %16 ], [ 1, %21 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImagePixelColor(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5681, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5683, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %40

20:                                               ; preds = %11
  %21 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %13, ptr noundef %16) #11
  %22 = load ptr, ptr %15, align 8, !tbaa !42
  %23 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %22) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = tail call ptr @DestroyCacheView(ptr noundef %21) #11
  br label %40

27:                                               ; preds = %20
  %28 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %21) #11
  tail call void @PixelSetQuantumColor(ptr noundef %3, ptr noundef nonnull %23) #11
  %29 = tail call i32 @GetCacheViewColorspace(ptr noundef %21) #11
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i16, ptr %28, align 2, !tbaa !124
  tail call void @PixelSetBlackQuantum(ptr noundef %3, i16 noundef zeroext %32) #11
  br label %38

33:                                               ; preds = %27
  %34 = tail call i32 @GetCacheViewStorageClass(ptr noundef %21) #11
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i16, ptr %28, align 2, !tbaa !124
  tail call void @PixelSetIndex(ptr noundef %3, i16 noundef zeroext %37) #11
  br label %38

38:                                               ; preds = %33, %36, %31
  %39 = tail call ptr @DestroyCacheView(ptr noundef %21) #11
  br label %40

40:                                               ; preds = %38, %25, %17
  %41 = phi i32 [ 0, %17 ], [ 0, %25 ], [ 1, %38 ]
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetCacheViewColorspace(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PixelSetBlackQuantum(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetCacheViewStorageClass(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageRange(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5738, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5740, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %21

19:                                               ; preds = %10
  %20 = tail call i32 @GetImageRange(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2, ptr noundef %15) #11
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ 0, %16 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @GetImageRange(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageRedPrimary(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5778, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5780, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %24

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16
  %21 = load double, ptr %20, align 8, !tbaa !125
  store double %21, ptr %1, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !126
  store double %23, ptr %2, align 8, !tbaa !93
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickGetImageRegion(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5831, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  store i64 %1, ptr %6, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  store i64 %2, ptr %18, align 8, !tbaa !79
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  store i64 %3, ptr %19, align 8, !tbaa !80
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  store i64 %4, ptr %20, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = call ptr @CropImage(ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef %22) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %23) #12
  br label %27

27:                                               ; preds = %17, %13, %25
  %28 = phi ptr [ %26, %25 ], [ null, %13 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageRenderingIntent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5871, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5874, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !127
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageResolution(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5914, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5916, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %24

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 24
  %21 = load double, ptr %20, align 8, !tbaa !128
  store double %21, ptr %1, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 25
  %23 = load double, ptr %22, align 8, !tbaa !129
  store double %23, ptr %2, align 8, !tbaa !93
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageScene(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5949, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5951, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 39
  %19 = load i64, ptr %18, align 8, !tbaa !130
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickGetImageSignature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5989, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5992, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %36

17:                                               ; preds = %8
  %18 = tail call i32 @SignatureImage(ptr noundef nonnull %10) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = load ptr, ptr %9, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 58
  tail call void @InheritException(ptr noundef %22, ptr noundef nonnull %24) #11
  br label %25

25:                                               ; preds = %20, %17
  %26 = load ptr, ptr %9, align 8, !tbaa !41
  %27 = tail call ptr @GetImageProperty(ptr noundef %26, ptr noundef nonnull @.str.10) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @AcquireString(ptr noundef nonnull %27) #11
  br label %36

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = load ptr, ptr %9, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 58
  tail call void @InheritException(ptr noundef %33, ptr noundef nonnull %35) #11
  br label %36

36:                                               ; preds = %31, %29, %12
  %37 = phi ptr [ null, %12 ], [ %30, %29 ], [ null, %31 ]
  ret ptr %37
}

; Function Attrs: optsize
declare i32 @SignatureImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageTicksPerSecond(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6033, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6035, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 41
  %19 = load i64, ptr %18, align 8, !tbaa !131
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6074, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6077, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %19

17:                                               ; preds = %8
  %18 = tail call i32 @GetImageType(ptr noundef nonnull %10, ptr noundef %13) #11
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ 0, %14 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @GetImageType(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageUnits(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6111, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6114, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 19
  %19 = load i32, ptr %18, align 8, !tbaa !132
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickGetImageVirtualPixelMethod(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6149, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6152, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %19

17:                                               ; preds = %8
  %18 = tail call i32 @GetImageVirtualPixelMethod(ptr noundef nonnull %10) #11
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ 0, %12 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @GetImageVirtualPixelMethod(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickGetImageWhitePoint(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6192, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6194, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %24

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 3
  %21 = load double, ptr %20, align 8, !tbaa !133
  store double %21, ptr %1, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 3, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !134
  store double %23, ptr %2, align 8, !tbaa !93
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetImageWidth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6227, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6229, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !83
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MagickGetNumberImages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6261, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = tail call i64 @GetImageListLength(ptr noundef %10) #11
  ret i64 %11
}

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @MagickGetImageTotalInkDensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6292, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6295, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %19

17:                                               ; preds = %8
  %18 = tail call double @GetImageTotalInkDensity(ptr noundef nonnull %10) #11
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi double [ 0.000000e+00, %12 ], [ %18, %17 ]
  ret double %20
}

; Function Attrs: optsize
declare double @GetImageTotalInkDensity(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickHaldClutImage(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickHaldClutImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickHaldClutImageChannel(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6353, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %2, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6355, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %31

23:                                               ; preds = %14
  %24 = tail call i32 @HaldClutImageChannel(ptr noundef nonnull %12, i32 noundef %1, ptr noundef nonnull %16) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = load ptr, ptr %11, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %28, ptr noundef nonnull %30) #11
  br label %31

31:                                               ; preds = %23, %26, %18
  %32 = phi i32 [ 0, %18 ], [ 0, %26 ], [ %24, %23 ]
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @HaldClutImageChannel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickHasNextImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6390, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6392, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @GetNextImageInList(ptr noundef nonnull %10) #11
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 0, %12 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickHasPreviousImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6426, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6428, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %10) #11
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 0, %12 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickIdentifyImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6472, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6475, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %37

18:                                               ; preds = %9
  %19 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %2) #11
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call noalias ptr @fdopen(i32 noundef %19, ptr noundef nonnull @.str.11) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18, %21
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %28 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6486, i32 noundef 470, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef nonnull %27) #11
  br label %37

29:                                               ; preds = %21
  %30 = load ptr, ptr %10, align 8, !tbaa !41
  %31 = call i32 @IdentifyImage(ptr noundef %30, ptr noundef nonnull %22, i32 noundef 1) #11
  %32 = call i32 @fclose(ptr noundef nonnull %22) #12
  %33 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = call ptr @FileToString(ptr noundef nonnull %2, i64 noundef -1, ptr noundef %34) #11
  %36 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %2) #11
  br label %37

37:                                               ; preds = %29, %24, %13
  %38 = phi ptr [ null, %13 ], [ null, %24 ], [ %35, %29 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #13
  ret ptr %38
}

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @IdentifyImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickImplodeImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6534, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6536, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @ImplodeImage(ptr noundef nonnull %11, double noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @ImplodeImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickImportImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6605, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #11
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6607, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %22) #11
  br label %32

24:                                               ; preds = %15
  %25 = tail call i32 @ImportImagePixels(ptr noundef nonnull %17, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = load ptr, ptr %16, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  tail call void @InheritException(ptr noundef %29, ptr noundef nonnull %31) #11
  br label %32

32:                                               ; preds = %24, %27, %19
  %33 = phi i32 [ 0, %19 ], [ 0, %27 ], [ %25, %24 ]
  ret i32 %33
}

; Function Attrs: optsize
declare i32 @ImportImagePixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickInverseFourierTransformImage(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6658, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6663, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %27

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = tail call ptr @InverseFourierTransformImage(ptr noundef nonnull %12, ptr noundef %21, i32 noundef %2, ptr noundef %23) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %19, %26, %14
  %28 = phi i32 [ 0, %14 ], [ 1, %26 ], [ 0, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @InverseFourierTransformImage(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickLabelImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6707, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6709, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @SetImageProperty(ptr noundef nonnull %11, ptr noundef nonnull @.str.13, ptr noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickLevelImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @MagickLevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3) #12
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickLevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6779, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6781, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %29

21:                                               ; preds = %12
  %22 = tail call i32 @LevelImageChannel(ptr noundef nonnull %14, i32 noundef %1, double noundef %2, double noundef %4, double noundef %3) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = load ptr, ptr %13, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %26, ptr noundef nonnull %28) #11
  br label %29

29:                                               ; preds = %21, %24, %16
  %30 = phi i32 [ 0, %16 ], [ 0, %24 ], [ %22, %21 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @LevelImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickLinearStretchImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6827, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6829, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %27

19:                                               ; preds = %10
  %20 = tail call i32 @LinearStretchImage(ptr noundef nonnull %12, double noundef %1, double noundef %2) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #11
  br label %27

27:                                               ; preds = %19, %22, %14
  %28 = phi i32 [ 0, %14 ], [ 0, %22 ], [ %20, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @LinearStretchImage(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickLiquidRescaleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6876, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6878, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @LiquidRescaleImage(ptr noundef nonnull %14, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @LiquidRescaleImage(ptr noundef, i64 noundef, i64 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickMagnifyImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6918, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6920, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @MagnifyImage(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @MagnifyImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickMergeImageLayers(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6980, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @MergeImageLayers(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %13, %9, %18
  %21 = phi ptr [ %19, %18 ], [ null, %9 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @MergeImageLayers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickMinifyImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7020, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7022, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @MinifyImage(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @MinifyImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickModulateImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7078, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7080, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %31

21:                                               ; preds = %12
  %22 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.14, double noundef %1, double noundef %2, double noundef %3) #11
  %23 = load ptr, ptr %13, align 8, !tbaa !41
  %24 = call i32 @ModulateImage(ptr noundef %23, ptr noundef nonnull %5) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = load ptr, ptr %13, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  call void @InheritException(ptr noundef %28, ptr noundef nonnull %30) #11
  br label %31

31:                                               ; preds = %21, %26, %16
  %32 = phi i32 [ 0, %16 ], [ 0, %26 ], [ %24, %21 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @ModulateImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickMontageImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7148, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = tail call ptr @CloneMontageInfo(ptr noundef %19, ptr noundef null) #11
  switch i32 %4, label %34 [
    i32 1, label %21
    i32 2, label %25
    i32 3, label %29
  ]

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 3
  %23 = tail call ptr @CloneString(ptr noundef nonnull %22, ptr noundef nonnull @.str.15) #11
  %24 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 8
  store i32 1, ptr %24, align 8, !tbaa !135
  br label %34

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !137
  %27 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 8
  store i32 0, ptr %27, align 8, !tbaa !135
  %28 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 7
  store i64 0, ptr %28, align 8, !tbaa !138
  br label %34

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 3
  store ptr null, ptr %30, align 8, !tbaa !137
  %31 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 8
  store i32 0, ptr %31, align 8, !tbaa !135
  %32 = tail call ptr @CloneString(ptr noundef %20, ptr noundef nonnull @.str.16) #11
  %33 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 7
  store i64 0, ptr %33, align 8, !tbaa !138
  br label %34

34:                                               ; preds = %17, %29, %25, %21
  %35 = tail call ptr @DrawGetFont(ptr noundef %1) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 5
  %39 = tail call ptr @CloneString(ptr noundef nonnull %38, ptr noundef nonnull %35) #11
  br label %40

40:                                               ; preds = %37, %34
  %41 = icmp eq ptr %5, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 3
  %44 = tail call ptr @CloneString(ptr noundef nonnull %43, ptr noundef nonnull %5) #11
  br label %45

45:                                               ; preds = %42, %40
  %46 = tail call double @DrawGetFontSize(ptr noundef %1) #11
  %47 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 6
  store double %46, ptr %47, align 8, !tbaa !139
  %48 = tail call ptr @NewPixelWand() #11
  tail call void @DrawGetFillColor(ptr noundef %1, ptr noundef %48) #11
  %49 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 9
  tail call void @PixelGetQuantumColor(ptr noundef %48, ptr noundef nonnull %49) #11
  tail call void @DrawGetStrokeColor(ptr noundef %1, ptr noundef %48) #11
  %50 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 10
  tail call void @PixelGetQuantumColor(ptr noundef %48, ptr noundef nonnull %50) #11
  %51 = tail call ptr @DestroyPixelWand(ptr noundef %48) #11
  %52 = icmp eq ptr %3, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = tail call ptr @CloneString(ptr noundef nonnull %20, ptr noundef nonnull %3) #11
  br label %55

55:                                               ; preds = %53, %45
  %56 = icmp eq ptr %2, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct._MontageInfo, ptr %20, i64 0, i32 1
  %59 = tail call ptr @CloneString(ptr noundef nonnull %58, ptr noundef nonnull %2) #11
  br label %60

60:                                               ; preds = %57, %55
  %61 = load ptr, ptr %18, align 8, !tbaa !73
  %62 = load ptr, ptr %14, align 8, !tbaa !41
  %63 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = tail call ptr @MontageImageList(ptr noundef %61, ptr noundef nonnull %20, ptr noundef %62, ptr noundef %64) #11
  %66 = tail call ptr @DestroyMontageInfo(ptr noundef nonnull %20) #11
  %67 = icmp eq ptr %65, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %65) #12
  br label %70

70:                                               ; preds = %60, %13, %68
  %71 = phi ptr [ %69, %68 ], [ null, %13 ], [ null, %60 ]
  ret ptr %71
}

; Function Attrs: optsize
declare ptr @CloneMontageInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DrawGetFont(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @DrawGetFontSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewPixelWand() local_unnamed_addr #1

; Function Attrs: optsize
declare void @DrawGetFillColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DrawGetStrokeColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyPixelWand(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @MontageImageList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyMontageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickMorphImages(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7238, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @MorphImages(ptr noundef nonnull %11, i64 noundef %1, ptr noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %13, %9, %18
  %21 = phi ptr [ %19, %18 ], [ null, %9 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @MorphImages(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickMorphologyImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @MagickMorphologyImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, i64 noundef %2, ptr noundef %3) #12, !range !43
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickMorphologyImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7306, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = icmp eq ptr %4, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  br i1 %17, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7310, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %27

23:                                               ; preds = %14
  %24 = tail call ptr @MorphologyImageChannel(ptr noundef nonnull %16, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef %19) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @ReplaceImageInList(ptr noundef nonnull %15, ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %23, %12, %26, %20
  %28 = phi i32 [ 0, %20 ], [ 1, %26 ], [ 0, %12 ], [ 0, %23 ]
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @MorphologyImageChannel(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickMotionBlurImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @MagickMotionBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3) #12, !range !43
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickMotionBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7379, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7381, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @MotionBlurImageChannel(ptr noundef nonnull %14, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @MotionBlurImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickNegateImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickNegateImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickNegateImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7444, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7446, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %27

19:                                               ; preds = %10
  %20 = tail call i32 @NegateImageChannel(ptr noundef nonnull %12, i32 noundef %1, i32 noundef %2) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #11
  br label %27

27:                                               ; preds = %19, %22, %14
  %28 = phi i32 [ 0, %14 ], [ 0, %22 ], [ %20, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @NegateImageChannel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickNewImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7496, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %4
  call void @PixelGetMagickColor(ptr noundef %3, ptr noundef nonnull %5) #11
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = call ptr @NewMagickImage(ptr noundef %14, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  %19 = load i32, ptr %18, align 8, !tbaa !140
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  call void @InheritException(ptr noundef %23, ptr noundef nonnull %18) #11
  br label %24

24:                                               ; preds = %21, %17
  call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %15) #12
  br label %25

25:                                               ; preds = %12, %24
  %26 = phi i32 [ 1, %24 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #13
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @NewMagickImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickNextImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7546, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7548, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %30

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 6
  store i32 0, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !141
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, ptr %19, align 4, !tbaa !141
  br label %30

23:                                               ; preds = %17
  %24 = tail call ptr @GetNextImageInList(ptr noundef nonnull %10) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, ptr %19, align 4, !tbaa !141
  br label %30

27:                                               ; preds = %23
  %28 = load ptr, ptr %9, align 8, !tbaa !41
  %29 = tail call ptr @GetNextImageInList(ptr noundef %28) #11
  store ptr %29, ptr %9, align 8, !tbaa !41
  br label %30

30:                                               ; preds = %27, %26, %22, %12
  %31 = phi i32 [ 0, %12 ], [ 1, %22 ], [ 0, %26 ], [ 1, %27 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickNormalizeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @MagickNormalizeImageChannel(ptr noundef %0, i32 noundef 134217719) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickNormalizeImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7613, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7615, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @NormalizeImageChannel(ptr noundef nonnull %11, i32 noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @NormalizeImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickOilPaintImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7658, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7660, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @OilPaintImage(ptr noundef nonnull %11, double noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @OilPaintImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickOpaquePaintImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @MagickOpaquePaintImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2, double noundef %3, i32 noundef %4) #12
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickOpaquePaintImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7738, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #11
  br label %15

15:                                               ; preds = %12, %6
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7740, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %22) #11
  br label %34

24:                                               ; preds = %15
  call void @PixelGetMagickColor(ptr noundef %2, ptr noundef nonnull %8) #11
  call void @PixelGetMagickColor(ptr noundef %3, ptr noundef nonnull %7) #11
  %25 = load ptr, ptr %16, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 31
  store double %4, ptr %26, align 8, !tbaa !85
  %27 = call i32 @OpaquePaintImageChannel(ptr noundef %25, i32 noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %5) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = load ptr, ptr %16, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 58
  call void @InheritException(ptr noundef %31, ptr noundef nonnull %33) #11
  br label %34

34:                                               ; preds = %24, %29, %19
  %35 = phi i32 [ 0, %19 ], [ 0, %29 ], [ %27, %24 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  ret i32 %35
}

; Function Attrs: optsize
declare i32 @OpaquePaintImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickOptimizeImageLayers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7784, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = tail call ptr @OptimizeImageLayers(ptr noundef nonnull %10, ptr noundef %14) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %15) #12
  br label %19

19:                                               ; preds = %12, %8, %17
  %20 = phi ptr [ %18, %17 ], [ null, %8 ], [ null, %12 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @OptimizeImageLayers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickOptimizeImageTransparency(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7826, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  tail call void @OptimizeImageTransparency(ptr noundef nonnull %10, ptr noundef %14) #11
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi i32 [ 1, %12 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: optsize
declare void @OptimizeImageTransparency(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickOrderedPosterizeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickOrderedPosterizeImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickOrderedPosterizeImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7902, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7904, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %21

19:                                               ; preds = %10
  %20 = tail call i32 @OrderedPosterizeImageChannel(ptr noundef nonnull %12, i32 noundef %1, ptr noundef %2, ptr noundef %15) #11
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ 0, %16 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @OrderedPosterizeImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickPingImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7949, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = tail call ptr @CloneImageInfo(ptr noundef %11) #11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 51
  %16 = tail call i64 @CopyMagickString(ptr noundef nonnull %15, ptr noundef nonnull %1, i64 noundef 4096) #11
  br label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = tail call ptr @PingImage(ptr noundef %12, ptr noundef %19) #11
  %21 = tail call ptr @DestroyImageInfo(ptr noundef %12) #11
  %22 = icmp eq ptr %20, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %20) #12
  br label %24

24:                                               ; preds = %17, %23
  %25 = phi i32 [ 1, %23 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @PingImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickPingImageBlob(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7999, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = tail call ptr @CloneImageInfo(ptr noundef %12) #11
  tail call void @SetImageInfoBlob(ptr noundef %13, ptr noundef %1, i64 noundef %2) #11
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @PingImage(ptr noundef %13, ptr noundef %15) #11
  %17 = tail call ptr @DestroyImageInfo(ptr noundef %13) #11
  %18 = icmp eq ptr %16, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  tail call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %10, %19
  %21 = phi i32 [ 1, %19 ], [ 0, %10 ]
  ret i32 %21
}

; Function Attrs: optsize
declare void @SetImageInfoBlob(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickPingImageFile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8046, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = tail call ptr @CloneImageInfo(ptr noundef %11) #11
  tail call void @SetImageInfoFile(ptr noundef %12, ptr noundef %1) #11
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = tail call ptr @PingImage(ptr noundef %12, ptr noundef %14) #11
  %16 = tail call ptr @DestroyImageInfo(ptr noundef %12) #11
  %17 = icmp eq ptr %15, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %15) #12
  br label %19

19:                                               ; preds = %9, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %9 ]
  ret i32 %20
}

; Function Attrs: optsize
declare void @SetImageInfoFile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickPolaroidImage(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8095, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8097, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %29

19:                                               ; preds = %10
  %20 = tail call ptr @PeekDrawingWand(ptr noundef %1) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %11, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = tail call ptr @PolaroidImage(ptr noundef %23, ptr noundef nonnull %20, double noundef %2, ptr noundef %25) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %26) #11
  br label %29

29:                                               ; preds = %22, %19, %28, %14
  %30 = phi i32 [ 0, %14 ], [ 1, %28 ], [ 0, %19 ], [ 0, %22 ]
  ret i32 %30
}

; Function Attrs: optsize
declare ptr @PolaroidImage(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickPosterizeImage(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8146, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8148, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %27

19:                                               ; preds = %10
  %20 = tail call i32 @PosterizeImage(ptr noundef nonnull %12, i64 noundef %1, i32 noundef %2) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #11
  br label %27

27:                                               ; preds = %19, %22, %14
  %28 = phi i32 [ 0, %14 ], [ 0, %22 ], [ %20, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @PosterizeImage(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickPreviewImages(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8192, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = tail call ptr @PreviewImage(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %16) #12
  br label %20

20:                                               ; preds = %13, %9, %18
  %21 = phi ptr [ %19, %18 ], [ null, %9 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @PreviewImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickPreviousImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8242, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8244, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %30

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !141
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, ptr %18, align 4, !tbaa !141
  br label %30

22:                                               ; preds = %17
  %23 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %10) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  store i32 1, ptr %18, align 4, !tbaa !141
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 6
  store i32 1, ptr %26, align 8, !tbaa !45
  br label %30

27:                                               ; preds = %22
  %28 = load ptr, ptr %9, align 8, !tbaa !41
  %29 = tail call ptr @GetPreviousImageInList(ptr noundef %28) #11
  store ptr %29, ptr %9, align 8, !tbaa !41
  br label %30

30:                                               ; preds = %27, %25, %21, %12
  %31 = phi i32 [ 0, %12 ], [ 1, %21 ], [ 0, %25 ], [ 1, %27 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickQuantizeImage(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8325, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8327, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %38

22:                                               ; preds = %13
  %23 = tail call ptr @CloneQuantizeInfo(ptr noundef null) #11
  store i64 %1, ptr %23, align 8, !tbaa !142
  %24 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 2
  store i32 %4, ptr %24, align 8, !tbaa !144
  %25 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 1
  store i64 %3, ptr %25, align 8, !tbaa !145
  %26 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 3
  store i32 %2, ptr %26, align 4, !tbaa !146
  %27 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 4
  store i32 %5, ptr %27, align 8, !tbaa !147
  %28 = load ptr, ptr %14, align 8, !tbaa !41
  %29 = tail call i32 @QuantizeImage(ptr noundef nonnull %23, ptr noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = load ptr, ptr %14, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 58
  tail call void @InheritException(ptr noundef %33, ptr noundef nonnull %35) #11
  br label %36

36:                                               ; preds = %31, %22
  %37 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %23) #11
  br label %38

38:                                               ; preds = %36, %17
  %39 = phi i32 [ 0, %17 ], [ %29, %36 ]
  ret i32 %39
}

; Function Attrs: optsize
declare ptr @CloneQuantizeInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickQuantizeImages(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8406, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8408, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %38

22:                                               ; preds = %13
  %23 = tail call ptr @CloneQuantizeInfo(ptr noundef null) #11
  store i64 %1, ptr %23, align 8, !tbaa !142
  %24 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 2
  store i32 %4, ptr %24, align 8, !tbaa !144
  %25 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 1
  store i64 %3, ptr %25, align 8, !tbaa !145
  %26 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 3
  store i32 %2, ptr %26, align 4, !tbaa !146
  %27 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 4
  store i32 %5, ptr %27, align 8, !tbaa !147
  %28 = load ptr, ptr %14, align 8, !tbaa !41
  %29 = tail call i32 @QuantizeImages(ptr noundef nonnull %23, ptr noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = load ptr, ptr %14, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 58
  tail call void @InheritException(ptr noundef %33, ptr noundef nonnull %35) #11
  br label %36

36:                                               ; preds = %31, %22
  %37 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %23) #11
  br label %38

38:                                               ; preds = %36, %17
  %39 = phi i32 [ 0, %17 ], [ %29, %36 ]
  ret i32 %39
}

; Function Attrs: optsize
declare i32 @QuantizeImages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickRaiseImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8467, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8469, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %34

23:                                               ; preds = %14
  store i64 %1, ptr %7, align 8, !tbaa !78
  %24 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 1
  store i64 %2, ptr %24, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 2
  store i64 %3, ptr %25, align 8, !tbaa !80
  %26 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 3
  store i64 %4, ptr %26, align 8, !tbaa !81
  %27 = call i32 @RaiseImage(ptr noundef nonnull %16, ptr noundef nonnull %7, i32 noundef %5) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = load ptr, ptr %15, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 58
  call void @InheritException(ptr noundef %31, ptr noundef nonnull %33) #11
  br label %34

34:                                               ; preds = %23, %29, %18
  %35 = phi i32 [ 0, %18 ], [ 0, %29 ], [ %27, %23 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  ret i32 %35
}

; Function Attrs: optsize
declare i32 @RaiseImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickRandomThresholdImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickRandomThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #12
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickRandomThresholdImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8535, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8537, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %32

21:                                               ; preds = %12
  %22 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.17, double noundef %2, double noundef %3) #11
  %23 = load ptr, ptr %13, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = call i32 @RandomThresholdImageChannel(ptr noundef %23, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %25) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load ptr, ptr %24, align 8, !tbaa !42
  %30 = load ptr, ptr %13, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  call void @InheritException(ptr noundef %29, ptr noundef nonnull %31) #11
  br label %32

32:                                               ; preds = %21, %28, %16
  %33 = phi i32 [ 0, %16 ], [ 0, %28 ], [ %26, %21 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  ret i32 %33
}

; Function Attrs: optsize
declare i32 @RandomThresholdImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickReadImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8586, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = tail call ptr @CloneImageInfo(ptr noundef %11) #11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 51
  %16 = tail call i64 @CopyMagickString(ptr noundef nonnull %15, ptr noundef nonnull %1, i64 noundef 4096) #11
  br label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = tail call ptr @ReadImage(ptr noundef %12, ptr noundef %19) #11
  %21 = tail call ptr @DestroyImageInfo(ptr noundef %12) #11
  %22 = icmp eq ptr %20, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %20) #12
  br label %24

24:                                               ; preds = %17, %23
  %25 = phi i32 [ 1, %23 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickReadImageBlob(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8633, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = tail call ptr @BlobToImage(ptr noundef %12, ptr noundef %1, i64 noundef %2, ptr noundef %14) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %15) #12
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi i32 [ 1, %17 ], [ 0, %10 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @BlobToImage(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickReadImageFile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8677, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = tail call ptr @CloneImageInfo(ptr noundef %11) #11
  tail call void @SetImageInfoFile(ptr noundef %12, ptr noundef %1) #11
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = tail call ptr @ReadImage(ptr noundef %12, ptr noundef %14) #11
  %16 = tail call ptr @DestroyImageInfo(ptr noundef %12) #11
  %17 = icmp eq ptr %15, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call fastcc void @InsertImageInWand(ptr noundef nonnull %0, ptr noundef nonnull %15) #12
  br label %19

19:                                               ; preds = %9, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %9 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickRemapImage(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8728, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8731, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %42

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = tail call ptr @AcquireQuantizeInfo(ptr noundef %25) #11
  %27 = getelementptr inbounds %struct._QuantizeInfo, ptr %26, i64 0, i32 6
  store i32 %2, ptr %27, align 8, !tbaa !148
  %28 = icmp eq i32 %2, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._QuantizeInfo, ptr %26, i64 0, i32 2
  store i32 0, ptr %30, align 8, !tbaa !144
  br label %31

31:                                               ; preds = %29, %23
  %32 = load ptr, ptr %11, align 8, !tbaa !41
  %33 = load ptr, ptr %15, align 8, !tbaa !41
  %34 = tail call i32 @RemapImage(ptr noundef nonnull %26, ptr noundef %32, ptr noundef %33) #11
  %35 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %26) #11
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = load ptr, ptr %11, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 58
  tail call void @InheritException(ptr noundef %39, ptr noundef nonnull %41) #11
  br label %42

42:                                               ; preds = %31, %37, %18
  %43 = phi i32 [ 0, %18 ], [ 0, %37 ], [ %34, %31 ]
  ret i32 %43
}

; Function Attrs: optsize
declare ptr @AcquireQuantizeInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RemapImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickRemoveImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8772, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8774, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %18

17:                                               ; preds = %8
  tail call void @DeleteImageFromList(ptr noundef nonnull %9) #11
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i32 [ 0, %12 ], [ 1, %17 ]
  ret i32 %19
}

; Function Attrs: optsize
declare void @DeleteImageFromList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickResampleImage(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8831, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8833, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @ResampleImage(ptr noundef nonnull %14, double noundef %1, double noundef %2, i32 noundef %3, double noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @ResampleImage(ptr noundef, double noundef, double noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickResetImagePage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8873, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8875, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %28

18:                                               ; preds = %9
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i8, ptr %1, align 1, !tbaa !149
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %18
  %24 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 26
  %25 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.18, ptr noundef nonnull %24) #11
  br label %28

26:                                               ; preds = %20
  %27 = tail call i32 @ResetImagePage(ptr noundef nonnull %11, ptr noundef nonnull %1) #11
  br label %28

28:                                               ; preds = %26, %23, %13
  %29 = phi i32 [ 0, %13 ], [ 1, %23 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ResetImagePage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8937, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8939, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @ResizeImage(ptr noundef nonnull %14, i64 noundef %1, i64 noundef %2, i32 noundef %3, double noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickRollImage(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8984, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 8986, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @RollImage(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @RollImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickRotateImage(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9033, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9035, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %27

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 12
  tail call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %20) #11
  %21 = load ptr, ptr %11, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = tail call ptr @RotateImage(ptr noundef %21, double noundef %2, ptr noundef %23) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %19, %26, %14
  %28 = phi i32 [ 0, %14 ], [ 1, %26 ], [ 0, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickRotationalBlurImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickRotationalBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1) #12, !range !43
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickRotationalBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9092, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9094, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @RotationalBlurImageChannel(ptr noundef nonnull %12, i32 noundef %1, double noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @RotationalBlurImageChannel(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSampleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9141, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9143, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @SampleImage(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @SampleImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickScaleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9187, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9189, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @ScaleImage(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @ScaleImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSegmentImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9246, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9248, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %29

21:                                               ; preds = %12
  %22 = tail call i32 @SegmentImage(ptr noundef nonnull %14, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = load ptr, ptr %13, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %26, ptr noundef nonnull %28) #11
  br label %29

29:                                               ; preds = %21, %24, %16
  %30 = phi i32 [ 0, %16 ], [ 0, %24 ], [ %22, %21 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @SegmentImage(ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSelectiveBlurImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @MagickSelectiveBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3) #12, !range !43
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSelectiveBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9316, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9318, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @SelectiveBlurImageChannel(ptr noundef nonnull %14, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @SelectiveBlurImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSeparateImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9363, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9365, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %26

18:                                               ; preds = %9
  %19 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %11, i32 noundef %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %23, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %18, %21, %13
  %27 = phi i32 [ 0, %13 ], [ 0, %21 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @SeparateImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSepiaToneImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9409, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9411, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @SepiaToneImage(ptr noundef nonnull %11, double noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @SepiaToneImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9455, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  %9 = load i32, ptr %3, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9459, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %2, %11, %6
  %15 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  br i1 %17, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9461, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %28

23:                                               ; preds = %14
  %24 = tail call ptr @CloneImageList(ptr noundef nonnull %16, ptr noundef %19) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  tail call void @ReplaceImageInList(ptr noundef nonnull %27, ptr noundef nonnull %24) #11
  br label %28

28:                                               ; preds = %23, %26, %20
  %29 = phi i32 [ 0, %20 ], [ 1, %26 ], [ 0, %23 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageAlphaChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9502, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9504, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %11, i32 noundef %1) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageBackgroundColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9539, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9541, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 12
  tail call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %19) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageBias(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9578, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9580, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 29
  store double %1, ptr %19, align 8, !tbaa !150
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageBluePrimary(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9618, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9620, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 2
  store double %1, ptr %20, align 8, !tbaa !92
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 2, i32 1
  store double %2, ptr %21, align 8, !tbaa !94
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageBorderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9657, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9659, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 13
  tail call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %19) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageChannelDepth(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9697, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9699, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %21

19:                                               ; preds = %10
  %20 = tail call i32 @SetImageChannelDepth(ptr noundef nonnull %12, i32 noundef %1, i64 noundef %2) #11
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ 0, %14 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @SetImageChannelDepth(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageClipMask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9734, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 1
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9738, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #11
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 1
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9740, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %23) #11
  br label %29

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = tail call i32 @SetImageClipMask(ptr noundef %27, ptr noundef nonnull %18) #11
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ 0, %20 ], [ %28, %25 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @SetImageClipMask(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9781, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %2
  call void @PixelGetMagickColor(ptr noundef %1, ptr noundef nonnull %3) #11
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = call i32 @SetImageColor(ptr noundef %12, ptr noundef nonnull %3) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = load ptr, ptr %11, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  call void @InheritException(ptr noundef %17, ptr noundef nonnull %19) #11
  br label %20

20:                                               ; preds = %15, %10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @SetImageColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageColormapColor(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9823, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9825, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %36

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !96
  %26 = icmp ugt i64 %25, %1
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9828, i32 noundef 470, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef nonnull %30) #11
  br label %36

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 %1
  tail call void @PixelGetQuantumColor(ptr noundef %2, ptr noundef nonnull %33) #11
  %34 = load ptr, ptr %11, align 8, !tbaa !41
  %35 = tail call i32 @SyncImage(ptr noundef %34) #11
  br label %36

36:                                               ; preds = %32, %27, %14
  %37 = phi i32 [ 0, %14 ], [ 0, %27 ], [ %35, %32 ]
  ret i32 %37
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageColorspace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9868, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9870, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = tail call i32 @SetImageColorspace(ptr noundef nonnull %11, i32 noundef %1) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageCompose(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9907, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9909, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 36
  store i32 %1, ptr %19, align 8, !tbaa !98
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageCompression(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9945, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9947, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 2
  store i32 %1, ptr %19, align 8, !tbaa !99
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageCompressionQuality(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9983, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 9985, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 3
  store i64 %1, ptr %19, align 8, !tbaa !100
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageDelay(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10021, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10023, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 40
  store i64 %1, ptr %19, align 8, !tbaa !101
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageDepth(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10059, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10061, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 9
  store i64 %1, ptr %19, align 8, !tbaa !102
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageDispose(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10097, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10099, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 37
  store i32 %1, ptr %19, align 4, !tbaa !103
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageEndian(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10135, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10137, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 34
  store i32 %1, ptr %19, align 8, !tbaa !104
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageExtent(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10175, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10177, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %21

19:                                               ; preds = %10
  %20 = tail call i32 @SetImageExtent(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2) #11
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ 0, %14 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @SetImageExtent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageFilename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10213, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10215, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %23

18:                                               ; preds = %9
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 53
  %22 = tail call i64 @CopyMagickString(ptr noundef nonnull %21, ptr noundef nonnull %1, i64 noundef 4096) #11
  br label %23

23:                                               ; preds = %18, %20, %13
  %24 = phi i32 [ 0, %13 ], [ 1, %20 ], [ 1, %18 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageFormat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10256, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10258, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %35

18:                                               ; preds = %9
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i8, ptr %1, align 1, !tbaa !149
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %18
  %24 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 55
  store i8 0, ptr %24, align 8, !tbaa !149
  br label %35

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = tail call ptr @GetMagickInfo(ptr noundef nonnull %1, ptr noundef %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !42
  tail call void @ClearMagickException(ptr noundef %31) #11
  %32 = load ptr, ptr %10, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 55
  %34 = tail call i64 @CopyMagickString(ptr noundef nonnull %33, ptr noundef nonnull %1, i64 noundef 4096) #11
  br label %35

35:                                               ; preds = %25, %30, %23, %13
  %36 = phi i32 [ 0, %13 ], [ 1, %23 ], [ 1, %30 ], [ 0, %25 ]
  ret i32 %36
}

; Function Attrs: optsize
declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageFuzz(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10303, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10305, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 31
  store double %1, ptr %19, align 8, !tbaa !85
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageGamma(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10341, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10343, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 15
  store double %1, ptr %19, align 8, !tbaa !105
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageGravity(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10380, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10382, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 35
  store i32 %1, ptr %19, align 4, !tbaa !106
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageGreenPrimary(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10422, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10424, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 1
  store double %1, ptr %20, align 8, !tbaa !107
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 1, i32 1
  store double %2, ptr %21, align 8, !tbaa !108
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageInterlaceScheme(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10462, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10464, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 33
  store i32 %1, ptr %19, align 4, !tbaa !115
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageInterpolateMethod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10501, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10503, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 70
  store i32 %1, ptr %19, align 8, !tbaa !116
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageIterations(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10539, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10541, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 42
  store i64 %1, ptr %19, align 8, !tbaa !117
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageMatte(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10578, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10580, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %30

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !151
  %21 = icmp eq i32 %20, 0
  %22 = icmp ne i32 %1, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = tail call i32 @SetImageOpacity(ptr noundef nonnull %11, i16 noundef zeroext 0) #11
  %26 = load ptr, ptr %10, align 8, !tbaa !41
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi ptr [ %26, %24 ], [ %11, %18 ]
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 6
  store i32 %1, ptr %29, align 8, !tbaa !151
  br label %30

30:                                               ; preds = %27, %13
  %31 = phi i32 [ 0, %13 ], [ 1, %27 ]
  ret i32 %31
}

; Function Attrs: optsize
declare i32 @SetImageOpacity(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageMatteColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10618, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10620, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 14
  tail call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %19) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10660, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10662, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %29

18:                                               ; preds = %9
  %19 = tail call double @llvm.fmuladd.f64(double %1, double -6.553500e+04, double 6.553500e+04)
  %20 = fptrunc double %19 to float
  %21 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %20) #12
  %22 = tail call i32 @SetImageOpacity(ptr noundef nonnull %11, i16 noundef zeroext %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = load ptr, ptr %10, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %26, ptr noundef nonnull %28) #11
  br label %29

29:                                               ; preds = %18, %24, %13
  %30 = phi i32 [ 0, %13 ], [ 0, %24 ], [ %22, %18 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 !PGOFuncName !152 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageOrientation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10701, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10703, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 4
  store i32 %1, ptr %19, align 8, !tbaa !119
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImagePage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10746, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10748, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %26

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26
  store i64 %1, ptr %22, align 8, !tbaa !120
  %23 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 1
  store i64 %2, ptr %23, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 2
  store i64 %3, ptr %24, align 8, !tbaa !122
  %25 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 3
  store i64 %4, ptr %25, align 8, !tbaa !123
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i32 [ 0, %16 ], [ 1, %21 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickSetImageProgressMonitor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10802, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10805, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %21

19:                                               ; preds = %10
  %20 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2) #11
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ null, %14 ], [ %20, %19 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageRedPrimary(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10847, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10849, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16
  store double %1, ptr %20, align 8, !tbaa !125
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 0, i32 1
  store double %2, ptr %21, align 8, !tbaa !126
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageRenderingIntent(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10887, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10889, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 17
  store i32 %1, ptr %19, align 8, !tbaa !127
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageResolution(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10927, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10929, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 24
  store double %1, ptr %20, align 8, !tbaa !128
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 25
  store double %2, ptr %21, align 8, !tbaa !129
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageScene(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10966, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 10968, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 39
  store i64 %1, ptr %19, align 8, !tbaa !130
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageTicksPerSecond(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11004, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11006, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 41
  store i64 %1, ptr %19, align 8, !tbaa !131
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11045, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11047, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = tail call i32 @SetImageType(ptr noundef nonnull %11, i32 noundef %1) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @SetImageType(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageUnits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11083, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11085, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 19
  store i32 %1, ptr %19, align 8, !tbaa !132
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ 1, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSetImageVirtualPixelMethod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11123, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %11, i32 noundef %1) #11
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSetImageWhitePoint(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11162, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11164, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 3
  store double %1, ptr %20, align 8, !tbaa !133
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 16, i32 3, i32 1
  store double %2, ptr %21, align 8, !tbaa !134
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 0, %14 ], [ 1, %19 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickShadeImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11210, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11212, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @ShadeImage(ptr noundef nonnull %13, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @ShadeImage(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickShadowImage(ptr noundef %0, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11260, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11262, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @ShadowImage(ptr noundef nonnull %14, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @ShadowImage(ptr noundef, double noundef, double noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSharpenImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @MagickSharpenImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #12, !range !43
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSharpenImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11325, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11327, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @SharpenImageChannel(ptr noundef nonnull %13, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @SharpenImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickShaveImage(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11378, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11380, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %28

20:                                               ; preds = %11
  store i64 %1, ptr %4, align 8, !tbaa !78
  %21 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  store i64 %2, ptr %21, align 8, !tbaa !79
  %22 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = call ptr @ShaveImage(ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %25) #11
  br label %28

28:                                               ; preds = %20, %27, %15
  %29 = phi i32 [ 0, %15 ], [ 1, %27 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret i32 %29
}

; Function Attrs: optsize
declare ptr @ShaveImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickShearImage(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11436, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11438, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %28

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 12
  tail call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %21) #11
  %22 = load ptr, ptr %12, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = tail call ptr @ShearImage(ptr noundef %22, double noundef %2, double noundef %3, ptr noundef %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %25) #11
  br label %28

28:                                               ; preds = %20, %27, %15
  %29 = phi i32 [ 0, %15 ], [ 1, %27 ], [ 0, %20 ]
  ret i32 %29
}

; Function Attrs: optsize
declare ptr @ShearImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSigmoidalContrastImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @MagickSigmoidalContrastImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, double noundef %2, double noundef %3) #12
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSigmoidalContrastImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11511, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11513, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %29

21:                                               ; preds = %12
  %22 = tail call i32 @SigmoidalContrastImageChannel(ptr noundef nonnull %14, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = load ptr, ptr %13, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %26, ptr noundef nonnull %28) #11
  br label %29

29:                                               ; preds = %21, %24, %16
  %30 = phi i32 [ 0, %16 ], [ 0, %24 ], [ %22, %21 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @SigmoidalContrastImageChannel(ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickSimilarityImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11561, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11564, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %22) #11
  br label %30

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  %26 = tail call ptr @SimilarityImage(ptr noundef nonnull %13, ptr noundef nonnull %17, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %25) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %26) #12
  br label %30

30:                                               ; preds = %24, %28, %19
  %31 = phi ptr [ null, %19 ], [ %29, %28 ], [ null, %24 ]
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @SimilarityImage(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSketchImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11618, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11620, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #11
  br label %24

20:                                               ; preds = %11
  %21 = tail call ptr @SketchImage(ptr noundef nonnull %13, double noundef %1, double noundef %2, double noundef %3, ptr noundef %16) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ReplaceImageInList(ptr noundef nonnull %12, ptr noundef nonnull %21) #11
  br label %24

24:                                               ; preds = %20, %23, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @SketchImage(ptr noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickSmushImages(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11667, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = tail call ptr @SmushImages(ptr noundef nonnull %12, i32 noundef %1, i64 noundef %2, ptr noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %17) #12
  br label %21

21:                                               ; preds = %14, %10, %19
  %22 = phi ptr [ %20, %19 ], [ null, %10 ], [ null, %14 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @SmushImages(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSolarizeImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickSolarizeImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickSolarizeImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11727, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11729, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %21

19:                                               ; preds = %10
  %20 = tail call i32 @SolarizeImageChannel(ptr noundef nonnull %12, i32 noundef %1, double noundef %2, ptr noundef %15) #11
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ 0, %16 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @SolarizeImageChannel(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSparseColorImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11795, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11797, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @SparseColorImage(ptr noundef nonnull %14, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @SparseColorImage(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSpliceImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11851, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11853, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %31

22:                                               ; preds = %13
  store i64 %1, ptr %6, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  store i64 %2, ptr %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  store i64 %3, ptr %24, align 8, !tbaa !80
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  store i64 %4, ptr %25, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = call ptr @SpliceImage(ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  call void @ReplaceImageInList(ptr noundef nonnull %14, ptr noundef nonnull %28) #11
  br label %31

31:                                               ; preds = %22, %30, %17
  %32 = phi i32 [ 0, %17 ], [ 1, %30 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @SpliceImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSpreadImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11899, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11901, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @SpreadImage(ptr noundef nonnull %11, double noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @SpreadImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickStatisticImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @MagickStatisticImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, i64 noundef %2, i64 noundef %3) #12, !range !43
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickStatisticImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11965, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 11967, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @StatisticImageChannel(ptr noundef nonnull %14, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @StatisticImageChannel(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickSteganoImage(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12015, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12019, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #11
  br label %31

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 23
  store i64 %2, ptr %24, align 8, !tbaa !153
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = tail call ptr @SteganoImage(ptr noundef nonnull %12, ptr noundef nonnull %16, ptr noundef %26) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %27) #12
  br label %31

31:                                               ; preds = %23, %29, %18
  %32 = phi ptr [ null, %18 ], [ %30, %29 ], [ null, %23 ]
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @SteganoImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickStereoImage(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12066, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12070, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %29

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = tail call ptr @StereoImage(ptr noundef nonnull %11, ptr noundef nonnull %15, ptr noundef %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %25) #12
  br label %29

29:                                               ; preds = %22, %27, %17
  %30 = phi ptr [ null, %17 ], [ %28, %27 ], [ null, %22 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @StereoImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickStripImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12110, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12112, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %25

17:                                               ; preds = %8
  %18 = tail call i32 @StripImage(ptr noundef nonnull %10) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = load ptr, ptr %9, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 58
  tail call void @InheritException(ptr noundef %22, ptr noundef nonnull %24) #11
  br label %25

25:                                               ; preds = %17, %20, %12
  %26 = phi i32 [ 0, %12 ], [ 0, %20 ], [ %18, %17 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @StripImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickSwirlImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12154, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12156, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %22

18:                                               ; preds = %9
  %19 = tail call ptr @SwirlImage(ptr noundef nonnull %11, double noundef %1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %18, %21, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @SwirlImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickTextureImage(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12202, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12206, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %37

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = tail call ptr @CloneImage(ptr noundef nonnull %11, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %14, align 8, !tbaa !41
  %29 = tail call i32 @TextureImage(ptr noundef nonnull %25, ptr noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load ptr, ptr %23, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %32, ptr noundef nonnull %33) #11
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %25) #11
  br label %37

35:                                               ; preds = %27
  %36 = tail call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef nonnull %25) #12
  br label %37

37:                                               ; preds = %22, %35, %31, %17
  %38 = phi ptr [ null, %17 ], [ null, %31 ], [ %36, %35 ], [ null, %22 ]
  ret ptr %38
}

; Function Attrs: optsize
declare i32 @TextureImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickThresholdImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MagickThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1) #12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickThresholdImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12273, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12275, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %27

19:                                               ; preds = %10
  %20 = tail call i32 @BilevelImageChannel(ptr noundef nonnull %12, i32 noundef %1, double noundef %2) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = load ptr, ptr %11, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #11
  br label %27

27:                                               ; preds = %19, %22, %14
  %28 = phi i32 [ 0, %14 ], [ 0, %22 ], [ %20, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @BilevelImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickThumbnailImage(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12320, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12322, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @ThumbnailImage(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @ThumbnailImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickTintImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12375, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12377, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %42

21:                                               ; preds = %12
  %22 = tail call zeroext i16 @PixelGetRedQuantum(ptr noundef %2) #11
  %23 = uitofp i16 %22 to double
  %24 = fmul double %23, 0x3F59001900190019
  %25 = tail call zeroext i16 @PixelGetGreenQuantum(ptr noundef %2) #11
  %26 = uitofp i16 %25 to double
  %27 = fmul double %26, 0x3F59001900190019
  %28 = tail call zeroext i16 @PixelGetBlueQuantum(ptr noundef %2) #11
  %29 = uitofp i16 %28 to double
  %30 = fmul double %29, 0x3F59001900190019
  %31 = tail call zeroext i16 @PixelGetOpacityQuantum(ptr noundef %2) #11
  %32 = uitofp i16 %31 to double
  %33 = fmul double %32, 0x3F59001900190019
  %34 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.7, double noundef %24, double noundef %27, double noundef %30, double noundef %33) #11
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %5) #11
  %35 = load ptr, ptr %13, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  %38 = load i64, ptr %5, align 8
  %39 = call ptr @TintImage(ptr noundef %35, ptr noundef nonnull %4, i64 %38, ptr noundef %37) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %21
  call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %39) #11
  br label %42

42:                                               ; preds = %21, %41, %16
  %43 = phi i32 [ 0, %16 ], [ 1, %41 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  ret i32 %43
}

; Function Attrs: optsize
declare ptr @TintImage(ptr noundef, ptr noundef, i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @MagickTransformImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12436, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = tail call ptr @CloneImage(ptr noundef nonnull %13, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %17) #11
  store ptr %18, ptr %4, align 8, !tbaa !109
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = call i32 @TransformImage(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load ptr, ptr %16, align 8, !tbaa !42
  %25 = load ptr, ptr %4, align 8, !tbaa !109
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  call void @InheritException(ptr noundef %24, ptr noundef nonnull %26) #11
  %27 = load ptr, ptr %4, align 8, !tbaa !109
  %28 = call ptr @DestroyImage(ptr noundef %27) #11
  br label %32

29:                                               ; preds = %20
  %30 = load ptr, ptr %4, align 8, !tbaa !109
  %31 = call fastcc ptr @CloneMagickWandFromImages(ptr noundef nonnull %0, ptr noundef %30) #12
  br label %32

32:                                               ; preds = %15, %11, %29, %23
  %33 = phi ptr [ null, %23 ], [ %31, %29 ], [ null, %11 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickTransformImageColorspace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12490, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12492, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %20

18:                                               ; preds = %9
  %19 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %11, i32 noundef %1) #11
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickTransparentPaintImage(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12549, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12551, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %35

22:                                               ; preds = %13
  call void @PixelGetMagickColor(ptr noundef %1, ptr noundef nonnull %6) #11
  %23 = load ptr, ptr %14, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 31
  store double %3, ptr %24, align 8, !tbaa !85
  %25 = call double @llvm.fmuladd.f64(double %2, double -6.553500e+04, double 6.553500e+04)
  %26 = fptrunc double %25 to float
  %27 = call fastcc zeroext i16 @ClampToQuantum(float noundef %26) #12
  %28 = call i32 @TransparentPaintImage(ptr noundef %23, ptr noundef nonnull %6, i16 noundef zeroext %27, i32 noundef %4) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = load ptr, ptr %14, align 8, !tbaa !41
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 58
  call void @InheritException(ptr noundef %32, ptr noundef nonnull %34) #11
  br label %35

35:                                               ; preds = %22, %30, %17
  %36 = phi i32 [ 0, %17 ], [ 0, %30 ], [ %28, %22 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  ret i32 %36
}

; Function Attrs: optsize
declare i32 @TransparentPaintImage(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickTransposeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12592, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12594, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @TransposeImage(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @TransposeImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickTransverseImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12633, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12635, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @TransverseImage(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @TransverseImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickTrimImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12680, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12682, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %25

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 31
  store double %1, ptr %19, align 8, !tbaa !85
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = tail call ptr @TrimImage(ptr noundef nonnull %11, ptr noundef %21) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @ReplaceImageInList(ptr noundef nonnull %10, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %18, %24, %13
  %26 = phi i32 [ 0, %13 ], [ 1, %24 ], [ 0, %18 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @TrimImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickUniqueImageColors(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12721, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br i1 %11, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12723, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #11
  br label %21

17:                                               ; preds = %8
  %18 = tail call ptr @UniqueImageColors(ptr noundef nonnull %10, ptr noundef %13) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @ReplaceImageInList(ptr noundef nonnull %9, ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %17, %20, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @UniqueImageColors(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickUnsharpMaskImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @MagickUnsharpMaskImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #12, !range !43
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickUnsharpMaskImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12796, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  br i1 %16, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12798, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #11
  br label %26

22:                                               ; preds = %13
  %23 = tail call ptr @UnsharpMaskImageChannel(ptr noundef nonnull %15, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %18) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @ReplaceImageInList(ptr noundef nonnull %14, ptr noundef nonnull %23) #11
  br label %26

26:                                               ; preds = %22, %25, %19
  %27 = phi i32 [ 0, %19 ], [ 1, %25 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @UnsharpMaskImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickVignetteImage(ptr noundef %0, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12846, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12848, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #11
  br label %25

21:                                               ; preds = %12
  %22 = tail call ptr @VignetteImage(ptr noundef nonnull %14, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @ReplaceImageInList(ptr noundef nonnull %13, ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %21, %24, %18
  %26 = phi i32 [ 0, %18 ], [ 1, %24 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @VignetteImage(ptr noundef, double noundef, double noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagickWaveImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12894, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12896, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %23

19:                                               ; preds = %10
  %20 = tail call ptr @WaveImage(ptr noundef nonnull %12, double noundef %1, double noundef %2, ptr noundef %15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @ReplaceImageInList(ptr noundef nonnull %11, ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %19, %22, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @WaveImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickWhiteThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12943, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12945, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %37

19:                                               ; preds = %10
  %20 = tail call zeroext i16 @PixelGetRedQuantum(ptr noundef %1) #11
  %21 = zext i16 %20 to i32
  %22 = tail call zeroext i16 @PixelGetGreenQuantum(ptr noundef %1) #11
  %23 = zext i16 %22 to i32
  %24 = tail call zeroext i16 @PixelGetBlueQuantum(ptr noundef %1) #11
  %25 = zext i16 %24 to i32
  %26 = tail call zeroext i16 @PixelGetOpacityQuantum(ptr noundef %1) #11
  %27 = zext i16 %26 to i32
  %28 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #11
  %29 = load ptr, ptr %11, align 8, !tbaa !41
  %30 = call i32 @WhiteThresholdImage(ptr noundef %29, ptr noundef nonnull %3) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = load ptr, ptr %11, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 58
  call void @InheritException(ptr noundef %34, ptr noundef nonnull %36) #11
  br label %37

37:                                               ; preds = %19, %32, %14
  %38 = phi i32 [ 0, %14 ], [ 0, %32 ], [ %30, %19 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #13
  ret i32 %38
}

; Function Attrs: optsize
declare i32 @WhiteThresholdImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickWriteImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 12999, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 13001, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %43

18:                                               ; preds = %9
  %19 = icmp eq ptr %1, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 53
  %22 = tail call i64 @CopyMagickString(ptr noundef nonnull %21, ptr noundef nonnull %1, i64 noundef 4096) #11
  %23 = load ptr, ptr %10, align 8, !tbaa !41
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi ptr [ %23, %20 ], [ %11, %18 ]
  %26 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = tail call ptr @CloneImage(ptr noundef %25, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %27) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = tail call ptr @CloneImageInfo(ptr noundef %32) #11
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %33, i64 0, i32 3
  store i32 1, ptr %34, align 4, !tbaa !154
  %35 = tail call i32 @WriteImage(ptr noundef %33, ptr noundef nonnull %28) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load ptr, ptr %26, align 8, !tbaa !42
  %39 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 58
  tail call void @InheritException(ptr noundef %38, ptr noundef nonnull %39) #11
  br label %40

40:                                               ; preds = %37, %30
  %41 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #11
  %42 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %33) #11
  br label %43

43:                                               ; preds = %24, %40, %13
  %44 = phi i32 [ 0, %13 ], [ %35, %40 ], [ 0, %24 ]
  ret i32 %44
}

; Function Attrs: optsize
declare i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickWriteImageFile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 13056, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br i1 %12, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 13058, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %34

18:                                               ; preds = %9
  %19 = tail call ptr @CloneImage(ptr noundef nonnull %11, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %14) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = tail call ptr @CloneImageInfo(ptr noundef %23) #11
  tail call void @SetImageInfoFile(ptr noundef %24, ptr noundef %1) #11
  %25 = getelementptr inbounds %struct._ImageInfo, ptr %24, i64 0, i32 3
  store i32 1, ptr %25, align 4, !tbaa !154
  %26 = tail call i32 @WriteImage(ptr noundef %24, ptr noundef nonnull %19) #11
  %27 = tail call ptr @DestroyImageInfo(ptr noundef %24) #11
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load ptr, ptr %13, align 8, !tbaa !42
  %31 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 58
  tail call void @InheritException(ptr noundef %30, ptr noundef nonnull %31) #11
  br label %32

32:                                               ; preds = %29, %21
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #11
  br label %34

34:                                               ; preds = %18, %32, %15
  %35 = phi i32 [ 0, %15 ], [ %26, %32 ], [ 0, %18 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickWriteImages(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 13112, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 13114, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  br label %35

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = tail call ptr @CloneImageInfo(ptr noundef %21) #11
  %23 = getelementptr inbounds %struct._ImageInfo, ptr %22, i64 0, i32 3
  store i32 %2, ptr %23, align 4, !tbaa !154
  %24 = load ptr, ptr %11, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = tail call i32 @WriteImages(ptr noundef %22, ptr noundef %24, ptr noundef %1, ptr noundef %26) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load ptr, ptr %25, align 8, !tbaa !42
  %31 = load ptr, ptr %11, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  tail call void @InheritException(ptr noundef %30, ptr noundef nonnull %32) #11
  br label %33

33:                                               ; preds = %29, %19
  %34 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %22) #11
  br label %35

35:                                               ; preds = %33, %14
  %36 = phi i32 [ 0, %14 ], [ %27, %33 ]
  ret i32 %36
}

; Function Attrs: optsize
declare i32 @WriteImages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickWriteImagesFile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 13159, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 13161, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #11
  br label %33

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = tail call ptr @CloneImageInfo(ptr noundef %20) #11
  tail call void @SetImageInfoFile(ptr noundef %21, ptr noundef %1) #11
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %21, i64 0, i32 3
  store i32 1, ptr %22, align 4, !tbaa !154
  %23 = load ptr, ptr %10, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = tail call i32 @WriteImages(ptr noundef %21, ptr noundef %23, ptr noundef null, ptr noundef %25) #11
  %27 = tail call ptr @DestroyImageInfo(ptr noundef %21) #11
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load ptr, ptr %24, align 8, !tbaa !42
  %31 = load ptr, ptr %10, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  tail call void @InheritException(ptr noundef %30, ptr noundef nonnull %32) #11
  br label %33

33:                                               ; preds = %18, %29, %13
  %34 = phi i32 [ 0, %13 ], [ 0, %29 ], [ %26, %18 ]
  ret i32 %34
}

; Function Attrs: optsize
declare ptr @GetLastImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PrependImageToList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @InsertImageInList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickWandTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @AcquireWandId() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { noreturn nounwind optsize }
attributes #16 = { hot nounwind optsize }

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
!41 = !{!35, !39, i64 4128}
!42 = !{!35, !39, i64 4104}
!43 = !{i32 0, i32 2}
!44 = !{!"magick-image.c:InsertImageInWand"}
!45 = !{!35, !40, i64 4136}
!46 = !{!47, !39, i64 13088}
!47 = !{!"_Image", !40, i64 0, !40, i64 4, !40, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !50, i64 104, !51, i64 112, !40, i64 208, !39, i64 216, !40, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !36, i64 256, !50, i64 264, !50, i64 272, !53, i64 280, !53, i64 312, !53, i64 344, !50, i64 376, !50, i64 384, !50, i64 392, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !54, i64 480, !55, i64 504, !39, i64 568, !39, i64 576, !39, i64 584, !39, i64 592, !39, i64 600, !39, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !36, i64 12904, !36, i64 12912, !57, i64 12920, !40, i64 12976, !36, i64 12984, !39, i64 12992, !58, i64 13000, !58, i64 13032, !39, i64 13064, !36, i64 13072, !36, i64 13080, !39, i64 13088, !39, i64 13096, !39, i64 13104, !40, i64 13112, !40, i64 13116, !48, i64 13120, !39, i64 13128, !53, i64 13136, !39, i64 13168, !39, i64 13176, !40, i64 13184, !40, i64 13188, !59, i64 13192, !40, i64 13200, !36, i64 13208, !36, i64 13216, !40, i64 13224, !36, i64 13232}
!48 = !{!"_PixelPacket", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6}
!49 = !{!"short", !37, i64 0}
!50 = !{!"double", !37, i64 0}
!51 = !{!"_ChromaticityInfo", !52, i64 0, !52, i64 24, !52, i64 48, !52, i64 72}
!52 = !{!"_PrimaryInfo", !50, i64 0, !50, i64 8, !50, i64 16}
!53 = !{!"_RectangleInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!54 = !{!"_ErrorInfo", !50, i64 0, !50, i64 8, !50, i64 16}
!55 = !{!"_TimerInfo", !56, i64 0, !56, i64 24, !40, i64 48, !36, i64 56}
!56 = !{!"_Timer", !50, i64 0, !50, i64 8, !50, i64 16}
!57 = !{!"_ExceptionInfo", !40, i64 0, !40, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !39, i64 40, !36, i64 48}
!58 = !{!"_ProfileInfo", !39, i64 0, !36, i64 8, !39, i64 16, !36, i64 24}
!59 = !{!"long long", !37, i64 0}
!60 = !{!47, !39, i64 13104}
!61 = !{!62, !50, i64 48}
!62 = !{!"_DrawInfo", !39, i64 0, !39, i64 8, !53, i64 16, !63, i64 48, !40, i64 96, !48, i64 100, !48, i64 108, !50, i64 120, !64, i64 128, !39, i64 256, !39, i64 264, !39, i64 272, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !36, i64 304, !50, i64 312, !40, i64 320, !40, i64 324, !39, i64 328, !36, i64 336, !39, i64 344, !39, i64 352, !39, i64 360, !40, i64 368, !40, i64 372, !36, i64 376, !39, i64 384, !50, i64 392, !39, i64 400, !40, i64 408, !48, i64 412, !48, i64 420, !39, i64 432, !39, i64 440, !39, i64 448, !65, i64 456, !40, i64 488, !49, i64 492, !40, i64 496, !68, i64 504, !40, i64 672, !36, i64 680, !50, i64 688, !50, i64 696, !50, i64 704, !40, i64 712}
!63 = !{!"_AffineMatrix", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40}
!64 = !{!"_GradientInfo", !40, i64 0, !53, i64 8, !65, i64 40, !39, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !36, i64 96, !66, i64 104, !67, i64 120}
!65 = !{!"_SegmentInfo", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24}
!66 = !{!"_PointInfo", !50, i64 0, !50, i64 8}
!67 = !{!"float", !37, i64 0}
!68 = !{!"_ElementReference", !39, i64 0, !40, i64 8, !64, i64 16, !36, i64 144, !39, i64 152, !39, i64 160}
!69 = !{!62, !50, i64 56}
!70 = !{!62, !50, i64 64}
!71 = !{!62, !50, i64 72}
!72 = !{!"magick-image.c:DegreesToRadians"}
!73 = !{!35, !39, i64 4112}
!74 = !{!"magick-image.c:CloneMagickWandFromImages"}
!75 = !{!35, !36, i64 0}
!76 = !{!35, !39, i64 4120}
!77 = !{!35, !36, i64 4152}
!78 = !{!53, !36, i64 0}
!79 = !{!53, !36, i64 8}
!80 = !{!53, !36, i64 16}
!81 = !{!53, !36, i64 24}
!82 = !{!62, !39, i64 0}
!83 = !{!47, !36, i64 40}
!84 = !{!47, !36, i64 48}
!85 = !{!47, !50, i64 392}
!86 = !{!36, !36, i64 0}
!87 = !{!88, !36, i64 16}
!88 = !{!"_FrameInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!89 = !{!88, !36, i64 24}
!90 = !{!88, !36, i64 32}
!91 = !{!88, !36, i64 40}
!92 = !{!47, !50, i64 160}
!93 = !{!50, !50, i64 0}
!94 = !{!47, !50, i64 168}
!95 = !{!47, !39, i64 72}
!96 = !{!47, !36, i64 64}
!97 = !{!47, !40, i64 4}
!98 = !{!47, !40, i64 416}
!99 = !{!47, !40, i64 8}
!100 = !{!47, !36, i64 16}
!101 = !{!47, !36, i64 440}
!102 = !{!47, !36, i64 56}
!103 = !{!47, !40, i64 420}
!104 = !{!47, !40, i64 408}
!105 = !{!47, !50, i64 104}
!106 = !{!47, !40, i64 412}
!107 = !{!47, !50, i64 136}
!108 = !{!47, !50, i64 144}
!109 = !{!39, !39, i64 0}
!110 = !{!111, !49, i64 8}
!111 = !{!"_ColorPacket", !48, i64 0, !49, i64 8, !59, i64 16}
!112 = !{!111, !59, i64 16}
!113 = distinct !{!113, !114}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!47, !40, i64 404}
!116 = !{!47, !40, i64 13112}
!117 = !{!47, !36, i64 456}
!118 = !{!59, !59, i64 0}
!119 = !{!47, !40, i64 24}
!120 = !{!47, !36, i64 280}
!121 = !{!47, !36, i64 288}
!122 = !{!47, !36, i64 296}
!123 = !{!47, !36, i64 304}
!124 = !{!49, !49, i64 0}
!125 = !{!47, !50, i64 112}
!126 = !{!47, !50, i64 120}
!127 = !{!47, !40, i64 208}
!128 = !{!47, !50, i64 264}
!129 = !{!47, !50, i64 272}
!130 = !{!47, !36, i64 432}
!131 = !{!47, !36, i64 448}
!132 = !{!47, !40, i64 224}
!133 = !{!47, !50, i64 184}
!134 = !{!47, !50, i64 192}
!135 = !{!136, !40, i64 64}
!136 = !{!"_MontageInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !50, i64 48, !36, i64 56, !40, i64 64, !48, i64 68, !48, i64 76, !48, i64 84, !48, i64 92, !48, i64 100, !40, i64 108, !37, i64 112, !40, i64 4208, !36, i64 4216}
!137 = !{!136, !39, i64 24}
!138 = !{!136, !36, i64 56}
!139 = !{!136, !50, i64 48}
!140 = !{!47, !40, i64 12920}
!141 = !{!35, !40, i64 4140}
!142 = !{!143, !36, i64 0}
!143 = !{!"_QuantizeInfo", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 32, !40, i64 40}
!144 = !{!143, !40, i64 16}
!145 = !{!143, !36, i64 8}
!146 = !{!143, !40, i64 20}
!147 = !{!143, !40, i64 24}
!148 = !{!143, !40, i64 40}
!149 = !{!37, !37, i64 0}
!150 = !{!47, !50, i64 376}
!151 = !{!47, !40, i64 32}
!152 = !{!"magick-image.c:ClampToQuantum"}
!153 = !{!47, !36, i64 256}
!154 = !{!155, !40, i64 12}
!155 = !{!"_ImageInfo", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !50, i64 144, !50, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !40, i64 184, !40, i64 188, !36, i64 192, !40, i64 200, !40, i64 204, !40, i64 208, !36, i64 216, !40, i64 224, !40, i64 228, !39, i64 232, !39, i64 240, !40, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !39, i64 312, !36, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !40, i64 16712, !39, i64 16720, !36, i64 16728, !36, i64 16736, !48, i64 16744, !36, i64 16752, !40, i64 16760, !48, i64 16764, !39, i64 16776, !40, i64 16784}
