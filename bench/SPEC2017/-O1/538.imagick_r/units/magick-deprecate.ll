; ModuleID = 'magick/deprecate.c'
source_filename = "magick/deprecate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._SegmentInfo = type { double, double, double, double }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._PointInfo = type { double, double }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._ImageAttribute = type { ptr, ptr, i32, ptr, ptr }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }
%struct.KernelInfo = type { i32, i64, i64, i64, i64, ptr, double, double, double, double, double, ptr, i64 }

@.str = private unnamed_addr constant [19 x i8] c"magick/deprecate.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"last use: v5.5.7\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SegmentStackOverflow\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"last use: v5.5.2\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%.20g\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"last use: v5.4.3\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"last use: v5.5.6\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"last use: v6.2.5\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"MAGICK_HOME\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%s/lib/%s/%s\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ImageMagick-6.8.9\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%s%s.magick%s%s\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"UnableToOpenConfigureFile\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"last use: v6.3.1\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"8BIM:1999,2998\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"last use: v5.5.4\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"last use: v5.5.3\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"last use: v5.5.1\00", align 1
@monitor_handler = internal unnamed_addr global ptr null, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"last use: v6.1.0\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Opaque/Image\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"last use: v6.4.7\00", align 1
@RandomChannelThresholdImage.o2 = internal unnamed_addr constant [4 x float] [float 0x3FC99999A0000000, float 0x3FE3333340000000, float 0x3FE99999A0000000, float 0x3FD99999A0000000], align 16
@RandomChannelThresholdImage.o3 = internal unnamed_addr constant [9 x float] [float 0x3FB99999A0000000, float 0x3FE3333340000000, float 0x3FD3333340000000, float 0x3FE6666660000000, float 5.000000e-01, float 0x3FE99999A0000000, float 0x3FD99999A0000000, float 0x3FECCCCCC0000000, float 0x3FC99999A0000000], align 16
@RandomChannelThresholdImage.o4 = internal unnamed_addr constant [16 x float] [float 0x3FB99999A0000000, float 0x3FE6666660000000, float 0x3FF19999A0000000, float 0x3FD3333340000000, float 1.000000e+00, float 5.000000e-01, float 1.500000e+00, float 0x3FE99999A0000000, float 0x3FF6666660000000, float 0x3FF99999A0000000, float 0x3FE3333340000000, float 0x3FF3333340000000, float 0x3FD99999A0000000, float 0x3FECCCCCC0000000, float 0x3FF4CCCCC0000000, float 0x3FC99999A0000000], align 16
@RandomChannelThresholdImage.threshold = internal unnamed_addr global float 1.280000e+02, align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"2x2\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"3x3\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"4x4\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"%lf[/x%%]%lf\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"  RandomChannelThresholdImage: channel type=%s\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"    Thresholds: %s (%fx%f)\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"matte\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"UnrecognizedChannelType\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"last use: v6.2.0\00", align 1
@SetMagickRegistry.id = internal unnamed_addr global i64 0, align 8
@.str.42 = private unnamed_addr constant [23 x i8] c"UnableToThresholdImage\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"last use: v6.2.6\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Transparent/Image\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"last use: v5.4.4\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"./magick/colormap-private.h\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireCacheViewIndexes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %0) #25
  ret ptr %2
}

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireCacheViewPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #26
  ret ptr %7
}

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #25
  ret ptr %7
}

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireIndexes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #25
  ret ptr %2
}

declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AcquireMemory(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 302, ptr noundef nonnull @.str.2) #25
  %3 = tail call noalias ptr @malloc(i64 noundef %0) #27
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireOneCacheViewPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @GetOneCacheViewVirtualPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #25
  ret i32 %6
}

declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireOneCacheViewVirtualPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @GetOneCacheViewVirtualMethodPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #25
  ret i32 %7
}

declare i32 @GetOneCacheViewVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @AcquireOneMagickPixel(ptr dead_on_unwind noalias writable sret(%struct._MagickPixelPacket) align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @GetOneVirtualMagickPixel(ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %0, ptr noundef %4) #25
  ret void
}

declare i32 @GetOneVirtualMagickPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @AcquireOnePixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._PixelPacket, align 8
  %6 = call i32 @GetOneVirtualPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5, ptr noundef %3) #25
  %7 = load i64, ptr %5, align 8
  ret i64 %7
}

declare i32 @GetOneVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @AcquireOneVirtualPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._PixelPacket, align 8
  %7 = call i32 @GetOneVirtualMethodPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %6, ptr noundef %4) #25
  %8 = load i64, ptr %6, align 8
  ret i64 %8
}

declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquirePixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetVirtualPixelQueue(ptr noundef %0) #25
  ret ptr %2
}

declare ptr @GetVirtualPixelQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @AcquireSemaphoreInfo(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @AllocateSemaphoreInfo() #25
  store ptr %5, ptr %0, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @AffinityImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @RemapImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

declare i32 @RemapImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @AffinityImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @RemapImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

declare i32 @RemapImages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AllocateImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @AcquireImage(ptr noundef %0) #25
  ret ptr %2
}

declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @AllocateImageColormap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %1) #25
  ret i32 %3
}

declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @AllocateNextImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @AcquireNextImage(ptr noundef %0, ptr noundef %1) #25
  ret void
}

declare void @AcquireNextImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AllocateString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 824, ptr noundef nonnull @.str.2) #25
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %5 = add i64 %4, 4097
  %6 = tail call ptr @AcquireQuantumMemory(i64 noundef %5, i64 noundef 1) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  call void @GetExceptionInfo(ptr noundef nonnull %2) #25
  %9 = tail call ptr @__errno_location() #30
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #25
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 828, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %11) #25
  %13 = call ptr @DestroyString(ptr noundef %11) #25
  call void @CatchException(ptr noundef nonnull %2) #25
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #31
  unreachable

15:                                               ; preds = %1
  store i8 0, ptr %6, align 1, !tbaa !40
  %16 = icmp eq ptr %0, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %0, i64 noundef %5) #25
  br label %19

19:                                               ; preds = %17, %15
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AverageImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @EvaluateImages(ptr noundef %0, i32 noundef 27, ptr noundef %1) #25
  ret ptr %3
}

declare ptr @EvaluateImages(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ChannelImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @SeparateImageChannel(ptr noundef %0, i32 noundef %1) #25
  ret i32 %3
}

declare i32 @SeparateImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ChannelThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 948, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #25
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, ptr %4, align 8, !tbaa !41
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 950, ptr noundef nonnull @.str.2) #25
  br label %15

15:                                               ; preds = %13, %10
  %16 = icmp eq ptr %1, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %15
  %18 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #25
  %19 = load double, ptr %3, align 8, !tbaa !56
  %20 = fptrunc double %19 to float
  %21 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !58
  %23 = fptrunc double %22 to float
  %24 = and i32 %18, 8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, float %20, float %23
  %27 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 2
  %28 = load double, ptr %27, align 8, !tbaa !59
  %29 = fptrunc double %28 to float
  %30 = and i32 %18, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, float %20, float %29
  %33 = fpext float %20 to double
  %34 = call i32 @BilevelImageChannel(ptr noundef %0, i32 noundef 1, double noundef %33) #25
  %35 = fpext float %26 to double
  %36 = call i32 @BilevelImageChannel(ptr noundef %0, i32 noundef 2, double noundef %35) #25
  %37 = and i32 %36, %34
  %38 = fpext float %32 to double
  %39 = call i32 @BilevelImageChannel(ptr noundef %0, i32 noundef 4, double noundef %38) #25
  %40 = and i32 %37, %39
  br label %41

41:                                               ; preds = %15, %17
  %42 = phi i32 [ %40, %17 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #25
  ret i32 %42
}

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BilevelImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ClipPathImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @ClipImagePath(ptr noundef %0, ptr noundef %1, i32 noundef %2) #25
  ret i32 %4
}

declare i32 @ClipImagePath(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @CloneImageAttributes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @CloneImageProperties(ptr noundef %0, ptr noundef %1) #25
  ret i32 %3
}

declare i32 @CloneImageProperties(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneMemory(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1085, ptr noundef nonnull @.str.2) #25
  %5 = icmp ugt ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %1, i64 %2
  %8 = icmp ult ptr %7, %0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6, %3
  %10 = tail call ptr @CopyMagickMemory(ptr noundef %0, ptr noundef %1, i64 noundef %2) #25
  br label %25

11:                                               ; preds = %6
  %12 = add i64 %2, -1
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %0, i64 %2
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ %23, %16 ], [ %12, %14 ]
  %18 = phi ptr [ %22, %16 ], [ %15, %14 ]
  %19 = phi ptr [ %20, %16 ], [ %7, %14 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !40
  %22 = getelementptr inbounds i8, ptr %18, i64 -1
  store i8 %21, ptr %22, align 1, !tbaa !40
  %23 = add nsw i64 %17, -1
  %24 = icmp sgt i64 %17, 0
  br i1 %24, label %16, label %25, !llvm.loop !60

25:                                               ; preds = %16, %11, %9
  %26 = phi ptr [ %10, %9 ], [ %0, %11 ], [ %0, %16 ]
  ret ptr %26
}

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CloseCacheView(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @DestroyCacheView(ptr noundef %0) #25
  ret ptr %2
}

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorFloodfillImage(ptr noundef %0, ptr nocapture noundef readonly %1, i64 %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._PixelPacket, align 8
  %8 = alloca %struct._PixelPacket, align 8
  store i64 %2, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1226, ptr noundef nonnull @.str.5, ptr noundef nonnull %13) #25
  br label %15

15:                                               ; preds = %12, %6
  %16 = icmp slt i64 %3, 0
  br i1 %16, label %424, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !63
  %20 = icmp sle i64 %19, %3
  %21 = icmp slt i64 %4, 0
  %22 = or i1 %21, %20
  br i1 %22, label %424, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !64
  %26 = icmp sgt i64 %25, %4
  br i1 %26, label %27, label %424

27:                                               ; preds = %23
  %28 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %424, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !65
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #25
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64, ptr %18, align 8, !tbaa !63
  %38 = load i64, ptr %24, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %40 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %37, i64 noundef %38, i32 noundef 1, ptr noundef nonnull %39) #25
  %41 = icmp eq ptr %40, null
  br i1 %41, label %424, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %40, i32 noundef 6) #25
  %44 = tail call dereferenceable_or_null(1048576) ptr @AcquireQuantumMemory(i64 noundef 32768, i64 noundef 32) #29
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = tail call ptr @DestroyImage(ptr noundef nonnull %40) #25
  %48 = icmp eq ptr %0, null
  br i1 %48, label %424, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1251, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %50) #25
  br label %424

52:                                               ; preds = %42
  %53 = add nuw nsw i64 %4, 1
  %54 = load i64, ptr %24, align 8, !tbaa !64
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = sitofp i64 %3 to double
  store double %57, ptr %44, align 8, !tbaa !66
  %58 = sitofp i64 %4 to double
  %59 = getelementptr inbounds %struct._SegmentInfo, ptr %44, i64 0, i32 1
  store double %58, ptr %59, align 8, !tbaa !68
  %60 = getelementptr inbounds %struct._SegmentInfo, ptr %44, i64 0, i32 2
  store double %57, ptr %60, align 8, !tbaa !69
  %61 = getelementptr inbounds %struct._SegmentInfo, ptr %44, i64 0, i32 3
  store double 1.000000e+00, ptr %61, align 8, !tbaa !70
  br label %62

62:                                               ; preds = %52, %56
  %63 = phi i64 [ 32, %56 ], [ 0, %52 ]
  %64 = icmp sgt i64 %54, %4
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %44, i64 %63
  %67 = sitofp i64 %3 to double
  store double %67, ptr %66, align 8, !tbaa !66
  %68 = sitofp i64 %53 to double
  %69 = getelementptr inbounds %struct._SegmentInfo, ptr %66, i64 0, i32 1
  store double %68, ptr %69, align 8, !tbaa !68
  %70 = getelementptr inbounds %struct._SegmentInfo, ptr %66, i64 0, i32 2
  store double %67, ptr %70, align 8, !tbaa !69
  %71 = getelementptr inbounds %struct._SegmentInfo, ptr %66, i64 0, i32 3
  store double -1.000000e+00, ptr %71, align 8, !tbaa !70
  %72 = add nuw nsw i64 %63, 32
  br label %73

73:                                               ; preds = %62, %65
  %74 = phi i64 [ %72, %65 ], [ %63, %62 ]
  %75 = icmp eq i32 %5, 3
  %76 = icmp eq ptr %0, null
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %78 = icmp eq i32 %5, 3
  %79 = icmp eq i32 %5, 3
  %80 = icmp eq ptr %0, null
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %82 = icmp eq ptr %0, null
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br label %84

84:                                               ; preds = %291, %73
  %85 = phi i64 [ %74, %73 ], [ %292, %291 ]
  %86 = phi i64 [ 0, %73 ], [ %293, %291 ]
  %87 = icmp sgt i64 %85, 0
  br i1 %87, label %88, label %295

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %44, i64 %85
  %90 = add nsw i64 %85, -32
  %91 = getelementptr inbounds i8, ptr %44, i64 %90
  %92 = load double, ptr %91, align 8, !tbaa !66
  %93 = fptosi double %92 to i64
  %94 = getelementptr %struct._SegmentInfo, ptr %89, i64 -1, i32 2
  %95 = load double, ptr %94, align 8, !tbaa !69
  %96 = fptosi double %95 to i64
  %97 = getelementptr %struct._SegmentInfo, ptr %89, i64 -1, i32 3
  %98 = load double, ptr %97, align 8, !tbaa !70
  %99 = fptosi double %98 to i64
  %100 = getelementptr %struct._SegmentInfo, ptr %89, i64 -1, i32 1
  %101 = load double, ptr %100, align 8, !tbaa !68
  %102 = fptosi double %101 to i64
  %103 = add nsw i64 %102, %99
  %104 = add nsw i64 %93, 1
  %105 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %103, i64 noundef %104, i64 noundef 1, ptr noundef nonnull %39) #25
  %106 = call ptr @GetAuthenticPixels(ptr noundef nonnull %40, i64 noundef 0, i64 noundef %103, i64 noundef %104, i64 noundef 1, ptr noundef nonnull %39) #25
  %107 = icmp eq ptr %105, null
  %108 = icmp eq ptr %106, null
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %291, label %110

110:                                              ; preds = %88
  %111 = icmp sgt i64 %93, -1
  br i1 %111, label %112, label %132

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 %93
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 %93
  br label %115

115:                                              ; preds = %112, %127
  %116 = phi ptr [ %129, %127 ], [ %113, %112 ]
  %117 = phi i64 [ %130, %127 ], [ %93, %112 ]
  %118 = phi ptr [ %128, %127 ], [ %114, %112 ]
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !71
  %121 = icmp eq i16 %120, -1
  br i1 %121, label %132, label %122

122:                                              ; preds = %115
  %123 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %118, ptr noundef nonnull %7) #25
  %124 = icmp eq i32 %123, 0
  br i1 %75, label %125, label %126

125:                                              ; preds = %122
  br i1 %124, label %132, label %127

126:                                              ; preds = %122
  br i1 %124, label %127, label %132

127:                                              ; preds = %126, %125
  store i16 -1, ptr %119, align 2, !tbaa !71
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 -1
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 -1
  %130 = add nsw i64 %117, -1
  %131 = icmp sgt i64 %117, 0
  br i1 %131, label %115, label %132, !llvm.loop !72

132:                                              ; preds = %127, %115, %125, %126, %110
  %133 = phi i64 [ %93, %110 ], [ -1, %127 ], [ %117, %115 ], [ %117, %125 ], [ %117, %126 ]
  %134 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %40, ptr noundef nonnull %39) #25
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %291, label %136

136:                                              ; preds = %132
  %137 = icmp sge i64 %133, %93
  %138 = zext i1 %137 to i32
  br i1 %137, label %159, label %139

139:                                              ; preds = %136
  %140 = add nsw i64 %133, 1
  %141 = icmp slt i64 %140, %93
  br i1 %141, label %142, label %159

142:                                              ; preds = %139
  %143 = icmp slt i64 %85, 1048608
  br i1 %143, label %147, label %144

144:                                              ; preds = %142
  br i1 %76, label %291, label %145

145:                                              ; preds = %144
  %146 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1314, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %77) #25
  br label %291

147:                                              ; preds = %142
  %148 = sub nsw i64 0, %99
  %149 = icmp sgt i64 %102, -1
  br i1 %149, label %150, label %159

150:                                              ; preds = %147
  %151 = load i64, ptr %24, align 8, !tbaa !64
  %152 = icmp sgt i64 %151, %102
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = sitofp i64 %140 to double
  store double %154, ptr %91, align 8, !tbaa !66
  %155 = sitofp i64 %103 to double
  store double %155, ptr %100, align 8, !tbaa !68
  %156 = add nsw i64 %93, -1
  %157 = sitofp i64 %156 to double
  store double %157, ptr %94, align 8, !tbaa !69
  %158 = sitofp i64 %148 to double
  store double %158, ptr %97, align 8, !tbaa !70
  br label %159

159:                                              ; preds = %139, %147, %150, %153, %136
  %160 = phi i64 [ %90, %136 ], [ %85, %153 ], [ %90, %150 ], [ %90, %147 ], [ %90, %139 ]
  %161 = phi i64 [ %86, %136 ], [ %140, %153 ], [ %140, %150 ], [ %140, %147 ], [ %140, %139 ]
  %162 = phi i64 [ %133, %136 ], [ %104, %153 ], [ %104, %150 ], [ %104, %147 ], [ %104, %139 ]
  %163 = add nsw i64 %103, %99
  %164 = icmp sgt i64 %163, -1
  %165 = sitofp i64 %103 to double
  %166 = sitofp i64 %99 to double
  %167 = add nsw i64 %96, 1
  %168 = sub nsw i64 0, %99
  %169 = icmp sgt i64 %102, -1
  %170 = sitofp i64 %167 to double
  %171 = sitofp i64 %103 to double
  %172 = sitofp i64 %168 to double
  %173 = add i64 %96, 1
  br label %174

174:                                              ; preds = %288, %159
  %175 = phi i64 [ %160, %159 ], [ %257, %288 ]
  %176 = phi i64 [ %161, %159 ], [ %289, %288 ]
  %177 = phi i32 [ %138, %159 ], [ 0, %288 ]
  %178 = phi i64 [ %162, %159 ], [ %289, %288 ]
  %179 = getelementptr inbounds i8, ptr %44, i64 %175
  %180 = icmp eq i32 %177, 0
  br i1 %180, label %181, label %256

181:                                              ; preds = %174
  %182 = load i64, ptr %18, align 8, !tbaa !63
  %183 = icmp slt i64 %178, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %181
  %185 = sub i64 %182, %178
  %186 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %178, i64 noundef %103, i64 noundef %185, i64 noundef 1, ptr noundef nonnull %39) #25
  %187 = load i64, ptr %18, align 8, !tbaa !63
  %188 = sub i64 %187, %178
  %189 = call ptr @GetAuthenticPixels(ptr noundef nonnull %40, i64 noundef %178, i64 noundef %103, i64 noundef %188, i64 noundef 1, ptr noundef nonnull %39) #25
  %190 = icmp eq ptr %186, null
  %191 = icmp eq ptr %189, null
  %192 = select i1 %190, i1 true, i1 %191
  br i1 %192, label %291, label %193

193:                                              ; preds = %184
  %194 = load i64, ptr %18, align 8, !tbaa !63
  %195 = icmp slt i64 %178, %194
  br i1 %195, label %196, label %214

196:                                              ; preds = %193, %208
  %197 = phi ptr [ %210, %208 ], [ %189, %193 ]
  %198 = phi i64 [ %211, %208 ], [ %178, %193 ]
  %199 = phi ptr [ %209, %208 ], [ %186, %193 ]
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 0, i32 3
  %201 = load i16, ptr %200, align 2, !tbaa !71
  %202 = icmp eq i16 %201, -1
  br i1 %202, label %214, label %203

203:                                              ; preds = %196
  %204 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %199, ptr noundef nonnull %7) #25
  %205 = icmp eq i32 %204, 0
  br i1 %78, label %206, label %207

206:                                              ; preds = %203
  br i1 %205, label %214, label %208

207:                                              ; preds = %203
  br i1 %205, label %208, label %214

208:                                              ; preds = %207, %206
  store i16 -1, ptr %200, align 2, !tbaa !71
  %209 = getelementptr inbounds %struct._PixelPacket, ptr %199, i64 1
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 1
  %211 = add nsw i64 %198, 1
  %212 = load i64, ptr %18, align 8, !tbaa !63
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %196, label %214, !llvm.loop !73

214:                                              ; preds = %208, %196, %206, %207, %193
  %215 = phi i64 [ %178, %193 ], [ %211, %208 ], [ %198, %196 ], [ %198, %206 ], [ %198, %207 ]
  %216 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %40, ptr noundef nonnull %39) #25
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %291, label %218

218:                                              ; preds = %214, %181
  %219 = phi i64 [ %215, %214 ], [ %178, %181 ]
  %220 = icmp slt i64 %175, 1048576
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  br i1 %80, label %291, label %222

222:                                              ; preds = %221
  %223 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1349, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %81) #25
  br label %291

224:                                              ; preds = %218
  br i1 %164, label %225, label %236

225:                                              ; preds = %224
  %226 = load i64, ptr %24, align 8, !tbaa !64
  %227 = icmp slt i64 %163, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = sitofp i64 %176 to double
  store double %229, ptr %179, align 8, !tbaa !66
  %230 = getelementptr inbounds %struct._SegmentInfo, ptr %179, i64 0, i32 1
  store double %165, ptr %230, align 8, !tbaa !68
  %231 = add nsw i64 %219, -1
  %232 = sitofp i64 %231 to double
  %233 = getelementptr inbounds %struct._SegmentInfo, ptr %179, i64 0, i32 2
  store double %232, ptr %233, align 8, !tbaa !69
  %234 = getelementptr inbounds %struct._SegmentInfo, ptr %179, i64 0, i32 3
  store double %166, ptr %234, align 8, !tbaa !70
  %235 = add nsw i64 %175, 32
  br label %236

236:                                              ; preds = %224, %225, %228
  %237 = phi i64 [ %235, %228 ], [ %175, %225 ], [ %175, %224 ]
  %238 = getelementptr inbounds i8, ptr %44, i64 %237
  %239 = icmp sgt i64 %219, %167
  br i1 %239, label %240, label %256

240:                                              ; preds = %236
  %241 = icmp slt i64 %237, 1048576
  br i1 %241, label %245, label %242

242:                                              ; preds = %240
  br i1 %82, label %291, label %243

243:                                              ; preds = %242
  %244 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1351, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %83) #25
  br label %291

245:                                              ; preds = %240
  br i1 %169, label %246, label %256

246:                                              ; preds = %245
  %247 = load i64, ptr %24, align 8, !tbaa !64
  %248 = icmp sgt i64 %247, %102
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  store double %170, ptr %238, align 8, !tbaa !66
  %250 = getelementptr inbounds %struct._SegmentInfo, ptr %238, i64 0, i32 1
  store double %171, ptr %250, align 8, !tbaa !68
  %251 = add nsw i64 %219, -1
  %252 = sitofp i64 %251 to double
  %253 = getelementptr inbounds %struct._SegmentInfo, ptr %238, i64 0, i32 2
  store double %252, ptr %253, align 8, !tbaa !69
  %254 = getelementptr inbounds %struct._SegmentInfo, ptr %238, i64 0, i32 3
  store double %172, ptr %254, align 8, !tbaa !70
  %255 = add nsw i64 %237, 32
  br label %256

256:                                              ; preds = %236, %245, %246, %249, %174
  %257 = phi i64 [ %255, %249 ], [ %237, %246 ], [ %237, %245 ], [ %237, %236 ], [ %175, %174 ]
  %258 = phi i64 [ %219, %249 ], [ %219, %246 ], [ %219, %245 ], [ %219, %236 ], [ %178, %174 ]
  %259 = add nsw i64 %258, 1
  %260 = icmp slt i64 %258, %96
  br i1 %260, label %261, label %288

261:                                              ; preds = %256
  %262 = sub nsw i64 %96, %259
  %263 = add nsw i64 %262, 1
  %264 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %259, i64 noundef %103, i64 noundef %263, i64 noundef 1, ptr noundef nonnull %39) #25
  %265 = call ptr @GetAuthenticPixels(ptr noundef nonnull %40, i64 noundef %259, i64 noundef %103, i64 noundef %263, i64 noundef 1, ptr noundef nonnull %39) #25
  %266 = icmp eq ptr %264, null
  %267 = icmp eq ptr %265, null
  %268 = select i1 %266, i1 true, i1 %267
  br i1 %268, label %291, label %269

269:                                              ; preds = %261
  %270 = icmp slt i64 %258, %96
  br i1 %270, label %271, label %288

271:                                              ; preds = %269, %283
  %272 = phi ptr [ %285, %283 ], [ %265, %269 ]
  %273 = phi i64 [ %286, %283 ], [ %259, %269 ]
  %274 = phi ptr [ %284, %283 ], [ %264, %269 ]
  %275 = getelementptr inbounds %struct._PixelPacket, ptr %272, i64 0, i32 3
  %276 = load i16, ptr %275, align 2, !tbaa !71
  %277 = icmp eq i16 %276, -1
  br i1 %277, label %288, label %278

278:                                              ; preds = %271
  %279 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %274, ptr noundef nonnull %7) #25
  %280 = icmp eq i32 %279, 0
  br i1 %79, label %281, label %282

281:                                              ; preds = %278
  br i1 %280, label %283, label %288

282:                                              ; preds = %278
  br i1 %280, label %288, label %283

283:                                              ; preds = %282, %281
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 1
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %272, i64 1
  %286 = add i64 %273, 1
  %287 = icmp eq i64 %273, %96
  br i1 %287, label %288, label %271, !llvm.loop !74

288:                                              ; preds = %282, %281, %271, %283, %269, %256
  %289 = phi i64 [ %259, %256 ], [ %259, %269 ], [ %173, %283 ], [ %273, %271 ], [ %273, %281 ], [ %273, %282 ]
  %290 = icmp sgt i64 %289, %96
  br i1 %290, label %291, label %174, !llvm.loop !75

291:                                              ; preds = %288, %184, %214, %261, %242, %243, %221, %222, %144, %145, %132, %88
  %292 = phi i64 [ %90, %88 ], [ %90, %132 ], [ %90, %145 ], [ %90, %144 ], [ %175, %222 ], [ %175, %221 ], [ %237, %243 ], [ %237, %242 ], [ %175, %184 ], [ %175, %214 ], [ %257, %261 ], [ %257, %288 ]
  %293 = phi i64 [ %86, %88 ], [ %86, %132 ], [ %140, %145 ], [ %140, %144 ], [ %176, %222 ], [ %176, %221 ], [ %176, %243 ], [ %176, %242 ], [ %176, %184 ], [ %176, %214 ], [ %176, %261 ], [ %289, %288 ]
  %294 = phi i32 [ 3, %88 ], [ 3, %132 ], [ 1, %145 ], [ 1, %144 ], [ 1, %222 ], [ 1, %221 ], [ 1, %243 ], [ 1, %242 ], [ 0, %261 ], [ 0, %214 ], [ 0, %184 ], [ 0, %288 ]
  switch i32 %294, label %424 [
    i32 0, label %84
    i32 3, label %295
  ], !llvm.loop !76

295:                                              ; preds = %291, %84
  %296 = load i64, ptr %24, align 8, !tbaa !64
  %297 = icmp sgt i64 %296, 0
  br i1 %297, label %298, label %417

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 3
  %301 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 3
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %304 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  br label %305

305:                                              ; preds = %298, %413
  %306 = phi i64 [ 0, %298 ], [ %414, %413 ]
  %307 = load i64, ptr %18, align 8, !tbaa !63
  %308 = call ptr @GetVirtualPixels(ptr noundef nonnull %40, i64 noundef 0, i64 noundef %306, i64 noundef %307, i64 noundef 1, ptr noundef nonnull %39) #25
  %309 = load i64, ptr %18, align 8, !tbaa !63
  %310 = call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef 0, i64 noundef %306, i64 noundef %309, i64 noundef 1, ptr noundef nonnull %39) #25
  %311 = icmp eq ptr %308, null
  %312 = icmp eq ptr %310, null
  %313 = select i1 %311, i1 true, i1 %312
  br i1 %313, label %410, label %314

314:                                              ; preds = %305
  %315 = load i64, ptr %18, align 8, !tbaa !63
  %316 = icmp sgt i64 %315, 0
  br i1 %316, label %317, label %406

317:                                              ; preds = %314, %400
  %318 = phi ptr [ %402, %400 ], [ %310, %314 ]
  %319 = phi i64 [ %403, %400 ], [ 0, %314 ]
  %320 = phi ptr [ %401, %400 ], [ %308, %314 ]
  %321 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 0, i32 3
  %322 = load i16, ptr %321, align 2, !tbaa !71
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %400, label %324

324:                                              ; preds = %317
  %325 = load ptr, ptr %299, align 8, !tbaa !77
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %329

327:                                              ; preds = %324
  %328 = load i64, ptr %301, align 4
  store i64 %328, ptr %8, align 8
  br label %342

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct._Image, ptr %325, i64 0, i32 74, i32 2
  %331 = load i64, ptr %330, align 8, !tbaa !84
  %332 = add nsw i64 %331, %319
  %333 = getelementptr inbounds %struct._Image, ptr %325, i64 0, i32 74, i32 3
  %334 = load i64, ptr %333, align 8, !tbaa !85
  %335 = add nsw i64 %334, %306
  %336 = getelementptr inbounds %struct._Image, ptr %325, i64 0, i32 58
  %337 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %325, i32 noundef 7, i64 noundef %332, i64 noundef %335, ptr noundef nonnull %8, ptr noundef nonnull %336) #25
  %338 = getelementptr inbounds %struct._Image, ptr %325, i64 0, i32 6
  %339 = load i32, ptr %338, align 8, !tbaa !65
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %329
  store i16 0, ptr %300, align 2, !tbaa !71
  br label %342

342:                                              ; preds = %327, %329, %341
  %343 = load i16, ptr %302, align 2, !tbaa !71
  %344 = icmp eq i16 %343, -1
  br i1 %344, label %400, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %318, i64 0, i32 3
  %347 = load i16, ptr %346, align 2, !tbaa !71
  %348 = uitofp i16 %343 to double
  %349 = uitofp i16 %347 to double
  %350 = fmul double %348, 0xBDF0002000300040
  %351 = call double @llvm.fmuladd.f64(double %350, double %349, double 1.000000e+00)
  %352 = fcmp olt double %351, 0.000000e+00
  %353 = select i1 %352, double 0.000000e+00, double %351
  %354 = fsub double 1.000000e+00, %353
  %355 = call double @llvm.fmuladd.f64(double %354, double 6.553500e+04, double 5.000000e-01)
  %356 = fptoui double %355 to i16
  store i16 %356, ptr %346, align 2, !tbaa !71
  %357 = fcmp ult double %353, 1.000000e-15
  %358 = fdiv double 1.000000e+00, %353
  %359 = select i1 %357, double 0x430C6BF52633FFFF, double %358
  %360 = load i16, ptr %303, align 4, !tbaa !86
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %318, i64 0, i32 2
  %362 = load i16, ptr %361, align 2, !tbaa !86
  %363 = call double @llvm.fmuladd.f64(double %348, double 0xBEF0001000100010, double 1.000000e+00)
  %364 = uitofp i16 %360 to double
  %365 = call double @llvm.fmuladd.f64(double %349, double 0xBEF0001000100010, double 1.000000e+00)
  %366 = uitofp i16 %362 to double
  %367 = fmul double %365, %366
  %368 = fmul double %367, 0x3EF0001000100010
  %369 = fmul double %368, %348
  %370 = call double @llvm.fmuladd.f64(double %363, double %364, double %369)
  %371 = fptrunc double %370 to float
  %372 = fpext float %371 to double
  %373 = call double @llvm.fmuladd.f64(double %359, double %372, double 5.000000e-01)
  %374 = fptoui double %373 to i16
  store i16 %374, ptr %361, align 2, !tbaa !86
  %375 = load i16, ptr %304, align 2, !tbaa !87
  %376 = getelementptr inbounds %struct._PixelPacket, ptr %318, i64 0, i32 1
  %377 = load i16, ptr %376, align 2, !tbaa !87
  %378 = uitofp i16 %375 to double
  %379 = uitofp i16 %377 to double
  %380 = fmul double %365, %379
  %381 = fmul double %380, 0x3EF0001000100010
  %382 = fmul double %381, %348
  %383 = call double @llvm.fmuladd.f64(double %363, double %378, double %382)
  %384 = fptrunc double %383 to float
  %385 = fpext float %384 to double
  %386 = call double @llvm.fmuladd.f64(double %359, double %385, double 5.000000e-01)
  %387 = fptoui double %386 to i16
  store i16 %387, ptr %376, align 2, !tbaa !87
  %388 = load i16, ptr %8, align 8, !tbaa !88
  %389 = load i16, ptr %318, align 2, !tbaa !88
  %390 = uitofp i16 %388 to double
  %391 = uitofp i16 %389 to double
  %392 = fmul double %365, %391
  %393 = fmul double %392, 0x3EF0001000100010
  %394 = fmul double %393, %348
  %395 = call double @llvm.fmuladd.f64(double %363, double %390, double %394)
  %396 = fptrunc double %395 to float
  %397 = fpext float %396 to double
  %398 = call double @llvm.fmuladd.f64(double %359, double %397, double 5.000000e-01)
  %399 = fptoui double %398 to i16
  store i16 %399, ptr %318, align 2, !tbaa !88
  br label %400

400:                                              ; preds = %345, %342, %317
  %401 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 1
  %402 = getelementptr inbounds %struct._PixelPacket, ptr %318, i64 1
  %403 = add nuw nsw i64 %319, 1
  %404 = load i64, ptr %18, align 8, !tbaa !63
  %405 = icmp slt i64 %403, %404
  br i1 %405, label %317, label %406, !llvm.loop !89

406:                                              ; preds = %400, %314
  %407 = call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %39) #25
  %408 = icmp eq i32 %407, 0
  %409 = select i1 %408, i32 15, i32 0
  br label %410

410:                                              ; preds = %406, %305
  %411 = phi i32 [ 15, %305 ], [ %409, %406 ]
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %410
  %414 = add nuw nsw i64 %306, 1
  %415 = load i64, ptr %24, align 8, !tbaa !64
  %416 = icmp slt i64 %414, %415
  br i1 %416, label %305, label %417, !llvm.loop !90

417:                                              ; preds = %413, %410, %295
  %418 = phi i64 [ 0, %295 ], [ %414, %413 ], [ %306, %410 ]
  %419 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %44) #25
  %420 = call ptr @DestroyImage(ptr noundef nonnull %40) #25
  %421 = load i64, ptr %24, align 8, !tbaa !64
  %422 = icmp eq i64 %418, %421
  %423 = zext i1 %422 to i32
  br label %424

424:                                              ; preds = %291, %46, %49, %36, %27, %23, %15, %17, %417
  %425 = phi i32 [ %423, %417 ], [ 0, %17 ], [ 0, %15 ], [ 0, %23 ], [ 0, %27 ], [ 0, %36 ], [ 0, %49 ], [ 0, %46 ], [ 0, %291 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  ret i32 %425
}

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

declare ptr @GetAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @IsColorSimilar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ConstituteComponentGenesis() local_unnamed_addr #9 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ConstituteComponentTerminus() local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteImageAttribute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @DeleteImageProperty(ptr noundef %0, ptr noundef %1) #25
  ret i32 %3
}

declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DeleteImageList(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1529, ptr noundef nonnull @.str.7) #25
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr %3, align 8, !tbaa !34
  %11 = tail call ptr @GetPreviousImageInList(ptr noundef %10) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %15, %9
  %14 = icmp sgt i64 %1, 0
  br i1 %14, label %20, label %30

15:                                               ; preds = %9, %15
  %16 = load ptr, ptr %3, align 8, !tbaa !34
  %17 = tail call ptr @GetPreviousImageInList(ptr noundef %16) #25
  store ptr %17, ptr %3, align 8, !tbaa !34
  %18 = tail call ptr @GetPreviousImageInList(ptr noundef %17) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %13, label %15, !llvm.loop !91

20:                                               ; preds = %13, %25
  %21 = phi i64 [ %28, %25 ], [ 0, %13 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !34
  %23 = tail call ptr @GetNextImageInList(ptr noundef %22) #25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 8, !tbaa !34
  %27 = tail call ptr @GetNextImageInList(ptr noundef %26) #25
  store ptr %27, ptr %3, align 8, !tbaa !34
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, %1
  br i1 %29, label %30, label %20, !llvm.loop !92

30:                                               ; preds = %25, %13
  call void @DeleteImageFromList(ptr noundef nonnull %3) #25
  br label %31

31:                                               ; preds = %20, %30
  %32 = phi i32 [ 1, %30 ], [ 0, %20 ]
  ret i32 %32
}

declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #1

declare void @DeleteImageFromList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteMagickRegistry(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #25
  %3 = sitofp i64 %0 to double
  %4 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %3) #25
  %5 = call i32 @DeleteImageRegistry(ptr noundef nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #25
  ret i32 %5
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @DeleteImageRegistry(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @DestroyConstitute() local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DestroyMagickRegistry() local_unnamed_addr #0 {
  tail call void @RegistryComponentTerminus() #25
  ret void
}

declare void @RegistryComponentTerminus() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @DescribeImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @IdentifyImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) #25
  ret i32 %4
}

declare i32 @IdentifyImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DestroyImageAttributes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1697, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #25
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 50
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroySplayTree(ptr noundef nonnull %10) #25
  store ptr %13, ptr %9, align 8, !tbaa !93
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DestroyImages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1734, ptr noundef nonnull @.str.9) #25
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call ptr @DestroyImageList(ptr noundef nonnull %0) #25
  br label %11

11:                                               ; preds = %1, %9
  ret void
}

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DestroyMagick() local_unnamed_addr #0 {
  tail call void @MagickCoreTerminus() #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DispatchImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !41
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1830, ptr noundef nonnull @.str.10) #25
  br label %15

15:                                               ; preds = %13, %9
  %16 = tail call i32 @ExportImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #25
  ret i32 %16
}

declare i32 @ExportImagePixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ExtractSubimageFromImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %6 = load i64, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !63
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %223, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !64
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %223, label %16

16:                                               ; preds = %10
  %17 = uitofp i64 %8 to double
  %18 = uitofp i64 %14 to double
  %19 = fmul double %17, %18
  call void @SetGeometry(ptr noundef %1, ptr noundef nonnull %4) #25
  %20 = load i64, ptr %13, align 8, !tbaa !64
  %21 = load i64, ptr %11, align 8, !tbaa !64
  %22 = sub i64 %20, %21
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %214

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %30 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %31 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  %32 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %33

33:                                               ; preds = %24, %207
  %34 = phi i64 [ 0, %24 ], [ %209, %207 ]
  %35 = phi double [ %19, %24 ], [ %208, %207 ]
  %36 = load i64, ptr %7, align 8, !tbaa !63
  %37 = load i64, ptr %5, align 8, !tbaa !63
  %38 = sub i64 %36, %37
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %207

40:                                               ; preds = %33, %200
  %41 = phi i64 [ %202, %200 ], [ 0, %33 ]
  %42 = phi double [ %201, %200 ], [ %35, %33 ]
  %43 = load i32, ptr %25, align 8, !tbaa !65
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %26, align 8, !tbaa !65
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %45, %40
  %50 = phi double [ 4.000000e+00, %48 ], [ 3.000000e+00, %45 ], [ 3.000000e+00, %40 ]
  %51 = load i32, ptr %27, align 4, !tbaa !94
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, ptr %28, align 4, !tbaa !94
  %55 = icmp eq i32 %54, 12
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = fadd double %50, 1.000000e+00
  br label %58

58:                                               ; preds = %56, %53, %49
  %59 = phi double [ %57, %56 ], [ %50, %53 ], [ %50, %49 ]
  %60 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #25
  %61 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %2) #25
  %62 = load i64, ptr %11, align 8, !tbaa !64
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %68, label %194

64:                                               ; preds = %190
  %65 = add nuw nsw i64 %69, 1
  %66 = load i64, ptr %11, align 8, !tbaa !64
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %194, !llvm.loop !95

68:                                               ; preds = %58, %64
  %69 = phi i64 [ %65, %64 ], [ 0, %58 ]
  %70 = phi double [ %192, %64 ], [ 0.000000e+00, %58 ]
  %71 = phi double [ %191, %64 ], [ 1.000000e+00, %58 ]
  %72 = add nuw nsw i64 %69, %34
  %73 = load i64, ptr %5, align 8, !tbaa !63
  %74 = call ptr @GetCacheViewVirtualPixels(ptr noundef %60, i64 noundef %41, i64 noundef %72, i64 noundef %73, i64 noundef 1, ptr noundef %2) #26
  %75 = load i64, ptr %5, align 8, !tbaa !63
  %76 = call ptr @GetCacheViewVirtualPixels(ptr noundef %61, i64 noundef 0, i64 noundef %69, i64 noundef %75, i64 noundef 1, ptr noundef %2) #26
  %77 = icmp eq ptr %74, null
  %78 = icmp eq ptr %76, null
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %190, label %80

80:                                               ; preds = %68
  %81 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %60) #25
  %82 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %61) #25
  %83 = load i64, ptr %5, align 8, !tbaa !63
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %179

85:                                               ; preds = %80
  %86 = load i32, ptr %25, align 8, !tbaa !65
  %87 = icmp eq i32 %86, 0
  %88 = load i32, ptr %27, align 4, !tbaa !94
  %89 = icmp eq i32 %88, 12
  %90 = icmp eq ptr %81, null
  %91 = icmp eq ptr %82, null
  br label %92

92:                                               ; preds = %85, %173
  %93 = phi i64 [ 0, %85 ], [ %177, %173 ]
  %94 = phi ptr [ %76, %85 ], [ %176, %173 ]
  %95 = phi ptr [ %74, %85 ], [ %175, %173 ]
  %96 = phi double [ %70, %85 ], [ %174, %173 ]
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 2
  %98 = load i16, ptr %97, align 2, !tbaa !86
  %99 = uitofp i16 %98 to double
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  %101 = load i16, ptr %100, align 2, !tbaa !86
  %102 = uitofp i16 %101 to double
  %103 = fsub double %99, %102
  %104 = fmul double %103, 0x3EF0001000100010
  %105 = fptrunc double %104 to float
  %106 = fmul float %105, %105
  %107 = fpext float %106 to double
  %108 = fadd double %96, %107
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 1
  %110 = load i16, ptr %109, align 2, !tbaa !87
  %111 = uitofp i16 %110 to double
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 1
  %113 = load i16, ptr %112, align 2, !tbaa !87
  %114 = uitofp i16 %113 to double
  %115 = fsub double %111, %114
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = fptrunc double %116 to float
  %118 = fmul float %117, %117
  %119 = fpext float %118 to double
  %120 = fadd double %108, %119
  %121 = load i16, ptr %95, align 2, !tbaa !88
  %122 = uitofp i16 %121 to double
  %123 = load i16, ptr %94, align 2, !tbaa !88
  %124 = uitofp i16 %123 to double
  %125 = fsub double %122, %124
  %126 = fmul double %125, 0x3EF0001000100010
  %127 = fptrunc double %126 to float
  %128 = fmul float %127, %127
  %129 = fpext float %128 to double
  %130 = fadd double %120, %129
  br i1 %87, label %147, label %131

131:                                              ; preds = %92
  %132 = load i32, ptr %29, align 8, !tbaa !65
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 3
  %136 = load i16, ptr %135, align 2, !tbaa !71
  %137 = uitofp i16 %136 to double
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 3
  %139 = load i16, ptr %138, align 2, !tbaa !71
  %140 = uitofp i16 %139 to double
  %141 = fsub double %137, %140
  %142 = fmul double %141, 0x3EF0001000100010
  %143 = fptrunc double %142 to float
  %144 = fmul float %143, %143
  %145 = fpext float %144 to double
  %146 = fadd double %130, %145
  br label %147

147:                                              ; preds = %134, %131, %92
  %148 = phi double [ %146, %134 ], [ %130, %131 ], [ %130, %92 ]
  br i1 %89, label %149, label %173

149:                                              ; preds = %147
  %150 = load i32, ptr %30, align 4, !tbaa !94
  %151 = icmp eq i32 %150, 12
  br i1 %151, label %152, label %173

152:                                              ; preds = %149
  br i1 %90, label %157, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds i16, ptr %81, i64 %93
  %155 = load i16, ptr %154, align 2, !tbaa !96
  %156 = zext i16 %155 to i32
  br label %157

157:                                              ; preds = %153, %152
  %158 = phi i32 [ %156, %153 ], [ 0, %152 ]
  %159 = sitofp i32 %158 to double
  br i1 %91, label %164, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds i16, ptr %82, i64 %93
  %162 = load i16, ptr %161, align 2, !tbaa !96
  %163 = zext i16 %162 to i32
  br label %164

164:                                              ; preds = %160, %157
  %165 = phi i32 [ %163, %160 ], [ 0, %157 ]
  %166 = sitofp i32 %165 to double
  %167 = fsub double %159, %166
  %168 = fmul double %167, 0x3EF0001000100010
  %169 = fptrunc double %168 to float
  %170 = fmul float %169, %169
  %171 = fpext float %170 to double
  %172 = fadd double %148, %171
  br label %173

173:                                              ; preds = %164, %149, %147
  %174 = phi double [ %172, %164 ], [ %148, %149 ], [ %148, %147 ]
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 1
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %177 = add nuw nsw i64 %93, 1
  %178 = icmp eq i64 %177, %83
  br i1 %178, label %179, label %92, !llvm.loop !97

179:                                              ; preds = %173, %80
  %180 = phi double [ %70, %80 ], [ %174, %173 ]
  %181 = call double @sqrt(double noundef %180) #25
  %182 = load i64, ptr %5, align 8, !tbaa !63
  %183 = uitofp i64 %182 to double
  %184 = fdiv double %181, %183
  %185 = load i64, ptr %11, align 8, !tbaa !64
  %186 = uitofp i64 %185 to double
  %187 = fdiv double %184, %186
  %188 = fdiv double %187, %59
  %189 = fcmp ogt double %188, %42
  br label %190

190:                                              ; preds = %179, %68
  %191 = phi double [ %71, %68 ], [ %188, %179 ]
  %192 = phi double [ %70, %68 ], [ %180, %179 ]
  %193 = phi i1 [ false, %68 ], [ %189, %179 ]
  br i1 %193, label %194, label %64

194:                                              ; preds = %190, %64, %58
  %195 = phi double [ 1.000000e+00, %58 ], [ %191, %64 ], [ %191, %190 ]
  %196 = call ptr @DestroyCacheView(ptr noundef %61) #25
  %197 = call ptr @DestroyCacheView(ptr noundef %60) #25
  %198 = fcmp olt double %195, %42
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store i64 %41, ptr %31, align 8, !tbaa !98
  store i64 %34, ptr %32, align 8, !tbaa !99
  br label %200

200:                                              ; preds = %194, %199
  %201 = phi double [ %195, %199 ], [ %42, %194 ]
  %202 = add nuw nsw i64 %41, 1
  %203 = load i64, ptr %7, align 8, !tbaa !63
  %204 = load i64, ptr %5, align 8, !tbaa !63
  %205 = sub i64 %203, %204
  %206 = icmp slt i64 %202, %205
  br i1 %206, label %40, label %207, !llvm.loop !100

207:                                              ; preds = %200, %33
  %208 = phi double [ %35, %33 ], [ %201, %200 ]
  %209 = add nuw nsw i64 %34, 1
  %210 = load i64, ptr %13, align 8, !tbaa !64
  %211 = load i64, ptr %11, align 8, !tbaa !64
  %212 = sub i64 %210, %211
  %213 = icmp slt i64 %209, %212
  br i1 %213, label %33, label %214, !llvm.loop !101

214:                                              ; preds = %207, %16
  %215 = phi double [ %19, %16 ], [ %208, %207 ]
  %216 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 31
  %217 = load double, ptr %216, align 8, !tbaa !102
  %218 = fmul double %217, 0x3EF0001000100010
  %219 = fdiv double %218, 1.000000e+02
  %220 = fcmp ogt double %215, %219
  br i1 %220, label %223, label %221

221:                                              ; preds = %214
  %222 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #25
  br label %223

223:                                              ; preds = %214, %3, %10, %221
  %224 = phi ptr [ %222, %221 ], [ null, %10 ], [ null, %3 ], [ null, %214 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  ret ptr %224
}

declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @FlattenImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @MergeImageLayers(ptr noundef %0, i32 noundef 14, ptr noundef %1) #25
  ret ptr %3
}

declare ptr @MergeImageLayers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @FormatImageAttributeList(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #25
  %6 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef %2, ptr noundef %3) #25
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 4095
  store i8 0, ptr %9, align 1, !tbaa !40
  br label %10

10:                                               ; preds = %8, %4
  %11 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #25
  ret i32 %11
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @FormatImagePropertyList(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #25
  %6 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef %2, ptr noundef %3) #25
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 4095
  store i8 0, ptr %9, align 1, !tbaa !40
  br label %10

10:                                               ; preds = %8, %4
  %11 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #25
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FormatImageAttribute(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i64 @FormatLocaleStringList(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef %2, ptr noundef nonnull %5) #25
  call void @llvm.va_end(ptr %5)
  %7 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #25
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

declare i64 @FormatLocaleStringList(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @FormatMagickStringList(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #12 {
  %5 = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #25
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i64 %1
  %9 = getelementptr i8, ptr %8, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !40
  br label %10

10:                                               ; preds = %7, %4
  %11 = sext i32 %5 to i64
  ret i64 %11
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @FormatMagickString(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #12 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #25
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i64 %1
  %9 = getelementptr i8, ptr %8, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !40
  br label %10

10:                                               ; preds = %3, %7
  %11 = sext i32 %5 to i64
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @FormatStringList(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2219, ptr noundef nonnull @.str.2) #25
  %5 = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef %1, ptr noundef %2) #25
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 4095
  store i8 0, ptr %8, align 1, !tbaa !40
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FormatString(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i64 @FormatLocaleStringList(ptr noundef %0, i64 noundef 4096, ptr noundef %1, ptr noundef nonnull %3) #25
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @FuzzyColorMatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #13 {
  %4 = fcmp oeq double %2, 0.000000e+00
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !86
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !86
  %10 = icmp eq i16 %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !87
  %14 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !87
  %16 = icmp eq i16 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i16, ptr %0, align 2, !tbaa !88
  %19 = load i16, ptr %1, align 2, !tbaa !88
  %20 = icmp eq i16 %18, %19
  br i1 %20, label %54, label %21

21:                                               ; preds = %17, %11, %5, %3
  %22 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !86
  %24 = uitofp i16 %23 to float
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !86
  %27 = uitofp i16 %26 to float
  %28 = fsub float %24, %27
  %29 = fmul float %28, %28
  %30 = fpext float %29 to double
  %31 = fmul double %2, %2
  %32 = fcmp olt double %31, %30
  br i1 %32, label %54, label %33

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !87
  %36 = uitofp i16 %35 to float
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !87
  %39 = uitofp i16 %38 to float
  %40 = fsub float %36, %39
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %40, float %29)
  %42 = fpext float %41 to double
  %43 = fcmp olt double %31, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %33
  %45 = load i16, ptr %0, align 2, !tbaa !88
  %46 = uitofp i16 %45 to float
  %47 = load i16, ptr %1, align 2, !tbaa !88
  %48 = uitofp i16 %47 to float
  %49 = fsub float %46, %48
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %49, float %41)
  %51 = fpext float %50 to double
  %52 = fcmp uge double %31, %51
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %44, %33, %21, %17
  %55 = phi i32 [ 1, %17 ], [ 0, %21 ], [ 0, %33 ], [ %53, %44 ]
  ret i32 %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nounwind uwtable
define dso_local i32 @FuzzyColorCompare(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2330, ptr noundef nonnull @.str.11) #25
  %5 = tail call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FuzzyOpacityCompare(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2371, ptr noundef nonnull @.str.11) #25
  %5 = tail call i32 @IsOpacitySimilar(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %5
}

declare i32 @IsOpacitySimilar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetConfigureBlob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2411, ptr noundef nonnull @.str.5, ptr noundef %0) #25
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2412, ptr noundef nonnull @.str.2) #25
  %8 = tail call i64 @CopyMagickString(ptr noundef %1, ptr noundef %0, i64 noundef 4096) #25
  %9 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.12) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %9, ptr noundef nonnull @.str.14, ptr noundef %0) #25
  %13 = tail call i32 @IsPathAccessible(ptr noundef %1) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @FileToBlob(ptr noundef %1, i64 noundef -1, ptr noundef %2, ptr noundef %3) #25
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ null, %11 ]
  %19 = tail call ptr @DestroyString(ptr noundef nonnull %9) #25
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi ptr [ %18, %17 ], [ null, %4 ]
  %22 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #25
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull %27, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18, ptr noundef %0) #25
  %31 = tail call i32 @IsPathAccessible(ptr noundef %1) #25
  %32 = icmp ne i32 %31, 0
  %33 = icmp eq ptr %21, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call ptr @FileToBlob(ptr noundef %1, i64 noundef -1, ptr noundef %2, ptr noundef %3) #25
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %36, %35 ], [ %21, %29 ]
  %39 = tail call ptr @DestroyString(ptr noundef nonnull %27) #25
  br label %40

40:                                               ; preds = %26, %37
  %41 = phi ptr [ %38, %37 ], [ %21, %26 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = tail call ptr @GetClientPath() #25
  %45 = load i8, ptr %44, align 1, !tbaa !40
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #25
  %48 = tail call ptr @GetClientPath() #25
  %49 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef %48, i64 noundef 4096) #25
  call void @ChopPathComponents(ptr noundef nonnull %5, i64 noundef 1) #25
  %50 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %5, ptr noundef nonnull @.str.14, ptr noundef %0) #25
  %51 = call i32 @IsPathAccessible(ptr noundef %1) #25
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = call ptr @FileToBlob(ptr noundef %1, i64 noundef -1, ptr noundef %2, ptr noundef %3) #25
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi ptr [ %54, %53 ], [ null, %47 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #25
  br label %57

57:                                               ; preds = %55, %43, %40
  %58 = phi ptr [ %56, %55 ], [ null, %43 ], [ %41, %40 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = call i32 @IsPathAccessible(ptr noundef %1) #25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call ptr @FileToBlob(ptr noundef %1, i64 noundef -1, ptr noundef %2, ptr noundef %3) #25
  br label %65

65:                                               ; preds = %63, %60, %57
  %66 = phi ptr [ %64, %63 ], [ null, %60 ], [ %58, %57 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2523, i32 noundef 395, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, ptr noundef %1) #25
  br label %70

70:                                               ; preds = %68, %65
  ret ptr %66
}

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #1

declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #1

declare ptr @FileToBlob(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetClientPath() local_unnamed_addr #1

declare void @ChopPathComponents(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCacheView(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @GetCacheViewException(ptr noundef %0) #25
  %7 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %6) #26
  ret ptr %7
}

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewException(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCacheViewIndexes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %0) #25
  ret ptr %2
}

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCacheViewPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @GetCacheViewException(ptr noundef %0) #25
  %7 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %6) #26
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageAttribute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2696, ptr noundef nonnull @.str.20) #25
  %5 = tail call ptr @GetImageProperty(ptr noundef %0, ptr noundef %1) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 50
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyAttribute) #25
  store ptr %12, ptr %8, align 8, !tbaa !93
  br label %16

13:                                               ; preds = %7
  %14 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %9, ptr noundef %1) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %13, %11
  %17 = tail call dereferenceable_or_null(40) ptr @AcquireMagickMemory(i64 noundef 40) #27
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %20 = tail call ptr @__errno_location() #30
  %21 = load i32, ptr %20, align 4, !tbaa !38
  %22 = call ptr @GetExceptionMessage(i32 noundef %21) #25
  %23 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2715, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %22) #25
  %24 = call ptr @DestroyString(ptr noundef %22) #25
  call void @CatchException(ptr noundef nonnull %3) #25
  %25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #31
  unreachable

26:                                               ; preds = %16
  %27 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %17, i32 noundef 0, i64 noundef 40) #25
  %28 = tail call ptr @ConstantString(ptr noundef %1) #25
  store ptr %28, ptr %17, align 8, !tbaa !103
  %29 = tail call ptr @ConstantString(ptr noundef nonnull %5) #25
  %30 = getelementptr inbounds %struct._ImageAttribute, ptr %17, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !105
  %31 = load ptr, ptr %8, align 8, !tbaa !93
  %32 = load ptr, ptr %17, align 8, !tbaa !103
  %33 = tail call i32 @AddValueToSplayTree(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %17) #25
  br label %34

34:                                               ; preds = %2, %13, %26
  %35 = phi ptr [ %17, %26 ], [ %14, %13 ], [ null, %2 ]
  ret ptr %35
}

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @DestroyAttribute(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._ImageAttribute, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyString(ptr noundef nonnull %3) #25
  store ptr %6, ptr %2, align 8, !tbaa !105
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #25
  ret ptr %8
}

declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #15

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageClippingPathAttribute(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetImageAttribute(ptr noundef %0, ptr noundef nonnull @.str.21)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageFromMagickRegistry(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  store i64 0, ptr %1, align 8, !tbaa !106
  %4 = tail call ptr @GetImageRegistry(i32 noundef 1, ptr noundef %0, ptr noundef %2) #25
  ret ptr %4
}

declare ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagickRegistry(i64 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #25
  store i32 0, ptr %1, align 4, !tbaa !38
  store i64 0, ptr %2, align 8, !tbaa !106
  %6 = sitofp i64 %0 to double
  %7 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %6) #25
  %8 = call ptr @GetImageRegistry(i32 noundef 1, ptr noundef nonnull %5, ptr noundef %3) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = call ptr @GetImageRegistry(i32 noundef 2, ptr noundef nonnull %5, ptr noundef %3) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call ptr @GetImageRegistry(i32 noundef 0, ptr noundef nonnull %5, ptr noundef %3) #25
  br label %15

15:                                               ; preds = %10, %4, %13
  %16 = phi ptr [ %14, %13 ], [ %8, %4 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #25
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageGeometry(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2892, ptr noundef nonnull @.str.22) #25
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq i32 %2, 0
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br i1 %11, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @ParseRegionGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %12) #25
  br label %17

15:                                               ; preds = %10
  %16 = tail call i32 @ParsePageGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %12) #25
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

declare i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ParsePageGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageList(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2937, ptr noundef nonnull @.str.7) #25
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call ptr @GetImageFromList(ptr noundef %0, i64 noundef %1) #25
  %11 = tail call ptr @CloneImage(ptr noundef %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #25
  ret ptr %11
}

declare ptr @GetImageFromList(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageListIndex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2973, ptr noundef nonnull @.str.7) #25
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i64 @GetImageIndexInList(ptr noundef %0) #25
  ret i64 %8
}

declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageListSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3006, ptr noundef nonnull @.str.7) #25
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i64 @GetImageListLength(ptr noundef %0) #25
  ret i64 %8
}

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %7 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #25
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetIndexes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #25
  ret ptr %2
}

declare ptr @GetAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3138, ptr noundef nonnull @.str.23) #25
  %7 = tail call i32 @ParseMetaGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #25
  ret i32 %7
}

declare i32 @ParseMetaGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3171, ptr noundef nonnull @.str.7) #25
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call ptr @GetNextImageInList(ptr noundef %0) #25
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageAttribute(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetNextImageProperty(ptr noundef %0) #25
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @GetImageAttribute(ptr noundef %0, ptr noundef nonnull %2)
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

declare ptr @GetNextImageProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @GetNumberScenes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3244, ptr noundef nonnull @.str.7) #25
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i64 @GetImageListLength(ptr noundef %0) #25
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetOnePixel(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PixelPacket, align 8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %6 = call i32 @GetOneAuthenticPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %7 = load i64, ptr %4, align 8
  ret i64 %7
}

declare i32 @GetOneAuthenticPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %0) #25
  ret ptr %2
}

declare ptr @GetAuthenticPixelQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPreviousImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3350, ptr noundef nonnull @.str.7) #25
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call ptr @GetPreviousImageInList(ptr noundef %0) #25
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @HSLTransform(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #16 {
  %7 = fcmp ugt double %2, 5.000000e-01
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = fadd double %1, 1.000000e+00
  %10 = fmul double %9, %2
  br label %15

11:                                               ; preds = %6
  %12 = fadd double %1, %2
  %13 = fneg double %2
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %1, double %12)
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi double [ %10, %8 ], [ %14, %11 ]
  %17 = fptrunc double %16 to float
  %18 = fpext float %17 to double
  %19 = fneg double %18
  %20 = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %19)
  %21 = fptrunc double %20 to float
  %22 = fadd double %0, 0x3FD5555555555555
  %23 = fptrunc double %22 to float
  %24 = fcmp olt float %23, 0.000000e+00
  %25 = fadd float %23, 1.000000e+00
  %26 = select i1 %24, float %25, float %23
  %27 = fcmp ogt float %26, 1.000000e+00
  %28 = fadd float %26, -1.000000e+00
  %29 = select i1 %27, float %28, float %26
  %30 = fpext float %29 to double
  %31 = fmul double %30, 6.000000e+00
  %32 = fcmp olt double %31, 1.000000e+00
  br i1 %32, label %33, label %40

33:                                               ; preds = %15
  %34 = fpext float %21 to double
  %35 = fsub float %17, %21
  %36 = fpext float %35 to double
  %37 = fmul double %36, 6.000000e+00
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %30, double %34)
  %39 = fptrunc double %38 to float
  br label %54

40:                                               ; preds = %15
  %41 = fmul double %30, 2.000000e+00
  %42 = fcmp olt double %41, 1.000000e+00
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = fmul double %30, 3.000000e+00
  %45 = fcmp olt double %44, 2.000000e+00
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = fpext float %21 to double
  %48 = fsub float %17, %21
  %49 = fpext float %48 to double
  %50 = fmul double %49, 6.000000e+00
  %51 = fsub double 0x3FE5555555555555, %30
  %52 = tail call double @llvm.fmuladd.f64(double %50, double %51, double %47)
  %53 = fptrunc double %52 to float
  br label %54

54:                                               ; preds = %33, %40, %43, %46
  %55 = phi float [ %39, %33 ], [ %53, %46 ], [ %17, %40 ], [ %21, %43 ]
  %56 = fptrunc double %0 to float
  %57 = fcmp olt float %56, 0.000000e+00
  %58 = fadd float %56, 1.000000e+00
  %59 = select i1 %57, float %58, float %56
  %60 = fcmp ogt float %59, 1.000000e+00
  %61 = fadd float %59, -1.000000e+00
  %62 = select i1 %60, float %61, float %59
  %63 = fpext float %62 to double
  %64 = fmul double %63, 6.000000e+00
  %65 = fcmp olt double %64, 1.000000e+00
  br i1 %65, label %66, label %73

66:                                               ; preds = %54
  %67 = fpext float %21 to double
  %68 = fsub float %17, %21
  %69 = fpext float %68 to double
  %70 = fmul double %69, 6.000000e+00
  %71 = tail call double @llvm.fmuladd.f64(double %70, double %63, double %67)
  %72 = fptrunc double %71 to float
  br label %87

73:                                               ; preds = %54
  %74 = fmul double %63, 2.000000e+00
  %75 = fcmp olt double %74, 1.000000e+00
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = fmul double %63, 3.000000e+00
  %78 = fcmp olt double %77, 2.000000e+00
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = fpext float %21 to double
  %81 = fsub float %17, %21
  %82 = fpext float %81 to double
  %83 = fmul double %82, 6.000000e+00
  %84 = fsub double 0x3FE5555555555555, %63
  %85 = tail call double @llvm.fmuladd.f64(double %83, double %84, double %80)
  %86 = fptrunc double %85 to float
  br label %87

87:                                               ; preds = %66, %73, %76, %79
  %88 = phi float [ %72, %66 ], [ %86, %79 ], [ %17, %73 ], [ %21, %76 ]
  %89 = fadd double %0, 0xBFD5555555555555
  %90 = fptrunc double %89 to float
  %91 = fcmp olt float %90, 0.000000e+00
  %92 = fadd float %90, 1.000000e+00
  %93 = select i1 %91, float %92, float %90
  %94 = fcmp ogt float %93, 1.000000e+00
  %95 = fadd float %93, -1.000000e+00
  %96 = select i1 %94, float %95, float %93
  %97 = fpext float %96 to double
  %98 = fmul double %97, 6.000000e+00
  %99 = fcmp olt double %98, 1.000000e+00
  br i1 %99, label %100, label %107

100:                                              ; preds = %87
  %101 = fpext float %21 to double
  %102 = fsub float %17, %21
  %103 = fpext float %102 to double
  %104 = fmul double %103, 6.000000e+00
  %105 = tail call double @llvm.fmuladd.f64(double %104, double %97, double %101)
  %106 = fptrunc double %105 to float
  br label %121

107:                                              ; preds = %87
  %108 = fmul double %97, 2.000000e+00
  %109 = fcmp olt double %108, 1.000000e+00
  br i1 %109, label %121, label %110

110:                                              ; preds = %107
  %111 = fmul double %97, 3.000000e+00
  %112 = fcmp olt double %111, 2.000000e+00
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = fpext float %21 to double
  %115 = fsub float %17, %21
  %116 = fpext float %115 to double
  %117 = fmul double %116, 6.000000e+00
  %118 = fsub double 0x3FE5555555555555, %97
  %119 = tail call double @llvm.fmuladd.f64(double %117, double %118, double %114)
  %120 = fptrunc double %119 to float
  br label %121

121:                                              ; preds = %100, %107, %110, %113
  %122 = phi float [ %106, %100 ], [ %120, %113 ], [ %17, %107 ], [ %21, %110 ]
  %123 = fmul float %55, 6.553500e+04
  %124 = fcmp ugt float %123, 0.000000e+00
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = fcmp ult float %123, 6.553500e+04
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = fadd float %123, 5.000000e-01
  %129 = fptoui float %128 to i16
  br label %130

130:                                              ; preds = %121, %125, %127
  %131 = phi i16 [ %129, %127 ], [ 0, %121 ], [ -1, %125 ]
  store i16 %131, ptr %3, align 2, !tbaa !96
  %132 = fmul float %88, 6.553500e+04
  %133 = fcmp ugt float %132, 0.000000e+00
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = fcmp ult float %132, 6.553500e+04
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = fadd float %132, 5.000000e-01
  %138 = fptoui float %137 to i16
  br label %139

139:                                              ; preds = %130, %134, %136
  %140 = phi i16 [ %138, %136 ], [ 0, %130 ], [ -1, %134 ]
  store i16 %140, ptr %4, align 2, !tbaa !96
  %141 = fmul float %122, 6.553500e+04
  %142 = fcmp ugt float %141, 0.000000e+00
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = fcmp ult float %141, 6.553500e+04
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = fadd float %141, 5.000000e-01
  %147 = fptoui float %146 to i16
  br label %148

148:                                              ; preds = %139, %143, %145
  %149 = phi i16 [ %147, %145 ], [ 0, %139 ], [ -1, %143 ]
  store i16 %149, ptr %5, align 2, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nounwind uwtable
define dso_local void @IdentityAffine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3451, ptr noundef nonnull @.str.24) #25
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3452, ptr noundef nonnull @.str.2) #25
  %4 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 48) #25
  store double 1.000000e+00, ptr %0, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 3
  store double 1.000000e+00, ptr %5, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @InitializeMagick(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @MagickCoreGenesis(ptr noundef %0, i32 noundef 0) #25
  ret void
}

declare void @MagickCoreGenesis(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @InterpolatePixelColor(ptr dead_on_unwind noalias writable sret(%struct._MagickPixelPacket) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [16 x %struct._MagickPixelPacket], align 16
  %9 = alloca [16 x float], align 16
  %10 = alloca [16 x %struct._MagickPixelPacket], align 16
  %11 = alloca [4 x %struct._MagickPixelPacket], align 16
  %12 = alloca [16 x %struct._MagickPixelPacket], align 16
  %13 = alloca [16 x float], align 16
  %14 = alloca [1 x %struct._MagickPixelPacket], align 16
  %15 = alloca %struct._RectangleInfo, align 8
  %16 = alloca [1 x %struct._MagickPixelPacket], align 16
  %17 = alloca [4 x %struct._MagickPixelPacket], align 16
  %18 = alloca [4 x float], align 16
  %19 = alloca [1 x %struct._MagickPixelPacket], align 16
  %20 = alloca [16 x %struct._MagickPixelPacket], align 16
  %21 = alloca [16 x float], align 16
  tail call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef %0) #25
  switch i32 %3, label %228 [
    i32 1, label %22
    i32 2, label %144
    i32 8, label %1160
    i32 4, label %429
    i32 5, label %481
    i32 6, label %515
    i32 7, label %1118
  ]

22:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #25
  %23 = tail call double @llvm.floor.f64(double %4)
  %24 = fptosi double %23 to i64
  %25 = add nsw i64 %24, -1
  %26 = tail call double @llvm.floor.f64(double %5)
  %27 = fptosi double %26 to i64
  %28 = add nsw i64 %27, -1
  %29 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %25, i64 noundef %28, i64 noundef 4, i64 noundef 4, ptr noundef %6) #26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %143, label %31

31:                                               ; preds = %22
  %32 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #25
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %34 = icmp ne ptr %32, null
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  br label %41

41:                                               ; preds = %31, %139
  %42 = phi ptr [ %29, %31 ], [ %140, %139 ]
  %43 = phi i64 [ 0, %31 ], [ %141, %139 ]
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %43
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %44) #25
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 0, i32 2
  %46 = load i16, ptr %45, align 2, !tbaa !86
  %47 = uitofp i16 %46 to float
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %43, i32 5
  store float %47, ptr %48, align 8, !tbaa !109
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 0, i32 1
  %50 = load i16, ptr %49, align 2, !tbaa !87
  %51 = uitofp i16 %50 to float
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %43, i32 6
  store float %51, ptr %52, align 4, !tbaa !111
  %53 = load i16, ptr %42, align 2, !tbaa !88
  %54 = uitofp i16 %53 to float
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %43, i32 7
  store float %54, ptr %55, align 8, !tbaa !112
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 0, i32 3
  %57 = load i16, ptr %56, align 2, !tbaa !71
  %58 = uitofp i16 %57 to float
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %43, i32 8
  store float %58, ptr %59, align 4, !tbaa !113
  %60 = load i32, ptr %33, align 4, !tbaa !94
  %61 = icmp eq i32 %60, 12
  %62 = and i1 %34, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %41
  %64 = getelementptr inbounds i16, ptr %32, i64 %43
  %65 = load i16, ptr %64, align 2, !tbaa !96
  %66 = uitofp i16 %65 to float
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %43, i32 9
  store float %66, ptr %67, align 8, !tbaa !114
  br label %68

68:                                               ; preds = %41, %63
  %69 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %43
  store float 1.000000e+00, ptr %69, align 4, !tbaa !115
  %70 = load i32, ptr %35, align 8, !tbaa !65
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %68
  %73 = xor i16 %57, -1
  %74 = uitofp i16 %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fptrunc double %75 to float
  store float %76, ptr %69, align 4, !tbaa !115
  %77 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 5
  %78 = load float, ptr %77, align 8, !tbaa !109
  %79 = fmul float %78, %76
  store float %79, ptr %77, align 8, !tbaa !109
  %80 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 6
  %81 = load float, ptr %80, align 4, !tbaa !111
  %82 = fmul float %81, %76
  store float %82, ptr %80, align 4, !tbaa !111
  %83 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 7
  %84 = load float, ptr %83, align 8, !tbaa !112
  %85 = fmul float %84, %76
  store float %85, ptr %83, align 8, !tbaa !112
  br i1 %61, label %86, label %90

86:                                               ; preds = %72
  %87 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 9
  %88 = load float, ptr %87, align 8, !tbaa !114
  %89 = fmul float %88, %76
  store float %89, ptr %87, align 8, !tbaa !114
  br label %90

90:                                               ; preds = %72, %86, %68
  %91 = load float, ptr %69, align 4, !tbaa !115
  %92 = fpext float %91 to double
  %93 = fcmp olt float %91, 0.000000e+00
  %94 = select i1 %93, double -1.000000e+00, double 1.000000e+00
  %95 = fmul double %94, %92
  %96 = fcmp ult double %95, 1.000000e-15
  %97 = fdiv double 1.000000e+00, %92
  %98 = fdiv double %94, 1.000000e-15
  %99 = select i1 %96, double %98, double %97
  %100 = fcmp olt double %99, 0.000000e+00
  %101 = select i1 %100, double 0.000000e+00, double %99
  %102 = fmul double %101, 6.250000e-02
  %103 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 5
  %104 = load float, ptr %103, align 8, !tbaa !109
  %105 = fpext float %104 to double
  %106 = load float, ptr %36, align 8, !tbaa !109
  %107 = fpext float %106 to double
  %108 = call double @llvm.fmuladd.f64(double %102, double %105, double %107)
  %109 = fptrunc double %108 to float
  store float %109, ptr %36, align 8, !tbaa !109
  %110 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 6
  %111 = load float, ptr %110, align 4, !tbaa !111
  %112 = fpext float %111 to double
  %113 = load float, ptr %37, align 4, !tbaa !111
  %114 = fpext float %113 to double
  %115 = call double @llvm.fmuladd.f64(double %102, double %112, double %114)
  %116 = fptrunc double %115 to float
  store float %116, ptr %37, align 4, !tbaa !111
  %117 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 7
  %118 = load float, ptr %117, align 8, !tbaa !112
  %119 = fpext float %118 to double
  %120 = load float, ptr %38, align 8, !tbaa !112
  %121 = fpext float %120 to double
  %122 = call double @llvm.fmuladd.f64(double %102, double %119, double %121)
  %123 = fptrunc double %122 to float
  store float %123, ptr %38, align 8, !tbaa !112
  %124 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 8
  %125 = load float, ptr %124, align 4, !tbaa !113
  %126 = fpext float %125 to double
  %127 = load float, ptr %39, align 4, !tbaa !113
  %128 = fpext float %127 to double
  %129 = call double @llvm.fmuladd.f64(double %126, double 6.250000e-02, double %128)
  %130 = fptrunc double %129 to float
  store float %130, ptr %39, align 4, !tbaa !113
  br i1 %61, label %131, label %139

131:                                              ; preds = %90
  %132 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %43, i32 9
  %133 = load float, ptr %132, align 8, !tbaa !114
  %134 = fpext float %133 to double
  %135 = load float, ptr %40, align 8, !tbaa !114
  %136 = fpext float %135 to double
  %137 = call double @llvm.fmuladd.f64(double %102, double %134, double %136)
  %138 = fptrunc double %137 to float
  store float %138, ptr %40, align 8, !tbaa !114
  br label %139

139:                                              ; preds = %131, %90
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 1
  %141 = add nuw nsw i64 %43, 1
  %142 = icmp eq i64 %141, 16
  br i1 %142, label %143, label %41, !llvm.loop !116

143:                                              ; preds = %139, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %8) #25
  br label %1381

144:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %11) #25
  %145 = tail call double @llvm.floor.f64(double %4)
  %146 = fptosi double %145 to i64
  %147 = add nsw i64 %146, -1
  %148 = tail call double @llvm.floor.f64(double %5)
  %149 = fptosi double %148 to i64
  %150 = add nsw i64 %149, -1
  %151 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %147, i64 noundef %150, i64 noundef 4, i64 noundef 4, ptr noundef %6) #26
  %152 = icmp eq ptr %151, null
  br i1 %152, label %227, label %153

153:                                              ; preds = %144
  %154 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #25
  br label %159

155:                                              ; preds = %159
  %156 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %157 = icmp ne ptr %154, null
  %158 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  br label %164

159:                                              ; preds = %153, %159
  %160 = phi i64 [ 0, %153 ], [ %162, %159 ]
  %161 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 %160
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %161) #25
  %162 = add nuw nsw i64 %160, 1
  %163 = icmp eq i64 %162, 4
  br i1 %163, label %155, label %159, !llvm.loop !117

164:                                              ; preds = %155, %212
  %165 = phi ptr [ %151, %155 ], [ %213, %212 ]
  %166 = phi i64 [ 0, %155 ], [ %214, %212 ]
  %167 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %166
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %167) #25
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 0, i32 2
  %169 = load i16, ptr %168, align 2, !tbaa !86
  %170 = uitofp i16 %169 to float
  %171 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %166, i32 5
  store float %170, ptr %171, align 8, !tbaa !109
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 0, i32 1
  %173 = load i16, ptr %172, align 2, !tbaa !87
  %174 = uitofp i16 %173 to float
  %175 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %166, i32 6
  store float %174, ptr %175, align 4, !tbaa !111
  %176 = load i16, ptr %165, align 2, !tbaa !88
  %177 = uitofp i16 %176 to float
  %178 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %166, i32 7
  store float %177, ptr %178, align 8, !tbaa !112
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 0, i32 3
  %180 = load i16, ptr %179, align 2, !tbaa !71
  %181 = uitofp i16 %180 to float
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %166, i32 8
  store float %181, ptr %182, align 4, !tbaa !113
  %183 = load i32, ptr %156, align 4, !tbaa !94
  %184 = icmp eq i32 %183, 12
  %185 = and i1 %157, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %164
  %187 = getelementptr inbounds i16, ptr %154, i64 %166
  %188 = load i16, ptr %187, align 2, !tbaa !96
  %189 = uitofp i16 %188 to float
  %190 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %166, i32 9
  store float %189, ptr %190, align 8, !tbaa !114
  br label %191

191:                                              ; preds = %164, %186
  %192 = load i32, ptr %158, align 8, !tbaa !65
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %212, label %194

194:                                              ; preds = %191
  %195 = xor i16 %180, -1
  %196 = uitofp i16 %195 to double
  %197 = fmul double %196, 0x3EF0001000100010
  %198 = fptrunc double %197 to float
  %199 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %10, i64 0, i64 %166, i32 5
  %200 = load float, ptr %199, align 8, !tbaa !109
  %201 = fmul float %200, %198
  store float %201, ptr %199, align 8, !tbaa !109
  %202 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %10, i64 0, i64 %166, i32 6
  %203 = load float, ptr %202, align 4, !tbaa !111
  %204 = fmul float %203, %198
  store float %204, ptr %202, align 4, !tbaa !111
  %205 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %10, i64 0, i64 %166, i32 7
  %206 = load float, ptr %205, align 8, !tbaa !112
  %207 = fmul float %206, %198
  store float %207, ptr %205, align 8, !tbaa !112
  br i1 %184, label %208, label %212

208:                                              ; preds = %194
  %209 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %10, i64 0, i64 %166, i32 9
  %210 = load float, ptr %209, align 8, !tbaa !114
  %211 = fmul float %210, %198
  store float %211, ptr %209, align 8, !tbaa !114
  br label %212

212:                                              ; preds = %194, %208, %191
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 1
  %214 = add nuw nsw i64 %166, 1
  %215 = icmp eq i64 %214, 16
  br i1 %215, label %216, label %164, !llvm.loop !118

216:                                              ; preds = %212
  %217 = fsub double %4, %145
  br label %218

218:                                              ; preds = %216, %218
  %219 = phi i64 [ 0, %216 ], [ %223, %218 ]
  %220 = shl nuw nsw i64 %219, 2
  %221 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %220
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %221) #25
  %222 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 %219
  call fastcc void @BicubicInterpolate(ptr noundef nonnull %221, double noundef %217, ptr noundef nonnull %222)
  %223 = add nuw nsw i64 %219, 1
  %224 = icmp eq i64 %223, 4
  br i1 %224, label %225, label %218, !llvm.loop !119

225:                                              ; preds = %218
  %226 = fsub double %5, %148
  call fastcc void @BicubicInterpolate(ptr noundef nonnull %11, double noundef %226, ptr noundef %0)
  br label %227

227:                                              ; preds = %144, %225
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %10) #25
  br label %1381

228:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #25
  %229 = tail call double @llvm.floor.f64(double %4)
  %230 = fptosi double %229 to i64
  %231 = tail call double @llvm.floor.f64(double %5)
  %232 = fptosi double %231 to i64
  %233 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %230, i64 noundef %232, i64 noundef 2, i64 noundef 2, ptr noundef %6) #26
  %234 = icmp eq ptr %233, null
  br i1 %234, label %428, label %235

235:                                              ; preds = %228
  %236 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #25
  %237 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %238 = icmp ne ptr %236, null
  %239 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  br label %240

240:                                              ; preds = %235, %289
  %241 = phi ptr [ %233, %235 ], [ %290, %289 ]
  %242 = phi i64 [ 0, %235 ], [ %291, %289 ]
  %243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 %242
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %243) #25
  %244 = getelementptr inbounds %struct._PixelPacket, ptr %241, i64 0, i32 2
  %245 = load i16, ptr %244, align 2, !tbaa !86
  %246 = uitofp i16 %245 to float
  %247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 %242, i32 5
  store float %246, ptr %247, align 8, !tbaa !109
  %248 = getelementptr inbounds %struct._PixelPacket, ptr %241, i64 0, i32 1
  %249 = load i16, ptr %248, align 2, !tbaa !87
  %250 = uitofp i16 %249 to float
  %251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 %242, i32 6
  store float %250, ptr %251, align 4, !tbaa !111
  %252 = load i16, ptr %241, align 2, !tbaa !88
  %253 = uitofp i16 %252 to float
  %254 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 %242, i32 7
  store float %253, ptr %254, align 8, !tbaa !112
  %255 = getelementptr inbounds %struct._PixelPacket, ptr %241, i64 0, i32 3
  %256 = load i16, ptr %255, align 2, !tbaa !71
  %257 = uitofp i16 %256 to float
  %258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 %242, i32 8
  store float %257, ptr %258, align 4, !tbaa !113
  %259 = load i32, ptr %237, align 4, !tbaa !94
  %260 = icmp eq i32 %259, 12
  %261 = and i1 %238, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %240
  %263 = getelementptr inbounds i16, ptr %236, i64 %242
  %264 = load i16, ptr %263, align 2, !tbaa !96
  %265 = uitofp i16 %264 to float
  %266 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 %242, i32 9
  store float %265, ptr %266, align 8, !tbaa !114
  br label %267

267:                                              ; preds = %240, %262
  %268 = getelementptr inbounds [16 x float], ptr %13, i64 0, i64 %242
  store float 1.000000e+00, ptr %268, align 4, !tbaa !115
  %269 = load i32, ptr %239, align 8, !tbaa !65
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %289, label %271

271:                                              ; preds = %267
  %272 = xor i16 %256, -1
  %273 = uitofp i16 %272 to double
  %274 = fmul double %273, 0x3EF0001000100010
  %275 = fptrunc double %274 to float
  store float %275, ptr %268, align 4, !tbaa !115
  %276 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 %242, i32 5
  %277 = load float, ptr %276, align 8, !tbaa !109
  %278 = fmul float %277, %275
  store float %278, ptr %276, align 8, !tbaa !109
  %279 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 %242, i32 6
  %280 = load float, ptr %279, align 4, !tbaa !111
  %281 = fmul float %280, %275
  store float %281, ptr %279, align 4, !tbaa !111
  %282 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 %242, i32 7
  %283 = load float, ptr %282, align 8, !tbaa !112
  %284 = fmul float %283, %275
  store float %284, ptr %282, align 8, !tbaa !112
  br i1 %260, label %285, label %289

285:                                              ; preds = %271
  %286 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 %242, i32 9
  %287 = load float, ptr %286, align 8, !tbaa !114
  %288 = fmul float %287, %275
  store float %288, ptr %286, align 8, !tbaa !114
  br label %289

289:                                              ; preds = %271, %285, %267
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %241, i64 1
  %291 = add nuw nsw i64 %242, 1
  %292 = icmp eq i64 %291, 4
  br i1 %292, label %293, label %240, !llvm.loop !120

293:                                              ; preds = %289
  %294 = fsub double %4, %229
  %295 = fsub double %5, %231
  %296 = fsub double 1.000000e+00, %295
  %297 = fsub double 1.000000e+00, %294
  %298 = load float, ptr %13, align 16, !tbaa !115
  %299 = fpext float %298 to double
  %300 = getelementptr inbounds [16 x float], ptr %13, i64 0, i64 1
  %301 = load float, ptr %300, align 4, !tbaa !115
  %302 = fpext float %301 to double
  %303 = fmul double %294, %302
  %304 = call double @llvm.fmuladd.f64(double %297, double %299, double %303)
  %305 = getelementptr inbounds [16 x float], ptr %13, i64 0, i64 2
  %306 = load float, ptr %305, align 8, !tbaa !115
  %307 = fpext float %306 to double
  %308 = getelementptr inbounds [16 x float], ptr %13, i64 0, i64 3
  %309 = load float, ptr %308, align 4, !tbaa !115
  %310 = fpext float %309 to double
  %311 = fmul double %294, %310
  %312 = call double @llvm.fmuladd.f64(double %297, double %307, double %311)
  %313 = fmul double %295, %312
  %314 = call double @llvm.fmuladd.f64(double %296, double %304, double %313)
  %315 = fcmp olt double %314, 0.000000e+00
  %316 = select i1 %315, double 0.000000e+00, double %314
  %317 = fcmp ult double %316, 1.000000e-15
  %318 = fdiv double 1.000000e+00, %316
  %319 = select i1 %317, double 0x430C6BF52633FFFF, double %318
  %320 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 5
  %321 = load float, ptr %320, align 16, !tbaa !109
  %322 = fpext float %321 to double
  %323 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 1, i32 5
  %324 = load float, ptr %323, align 8, !tbaa !109
  %325 = fpext float %324 to double
  %326 = fmul double %294, %325
  %327 = call double @llvm.fmuladd.f64(double %297, double %322, double %326)
  %328 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 2, i32 5
  %329 = load float, ptr %328, align 16, !tbaa !109
  %330 = fpext float %329 to double
  %331 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 3, i32 5
  %332 = load float, ptr %331, align 8, !tbaa !109
  %333 = fpext float %332 to double
  %334 = fmul double %294, %333
  %335 = call double @llvm.fmuladd.f64(double %297, double %330, double %334)
  %336 = fmul double %295, %335
  %337 = call double @llvm.fmuladd.f64(double %296, double %327, double %336)
  %338 = fmul double %319, %337
  %339 = fptrunc double %338 to float
  %340 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  store float %339, ptr %340, align 8, !tbaa !109
  %341 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 6
  %342 = load float, ptr %341, align 4, !tbaa !111
  %343 = fpext float %342 to double
  %344 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 1, i32 6
  %345 = load float, ptr %344, align 4, !tbaa !111
  %346 = fpext float %345 to double
  %347 = fmul double %294, %346
  %348 = call double @llvm.fmuladd.f64(double %297, double %343, double %347)
  %349 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 2, i32 6
  %350 = load float, ptr %349, align 4, !tbaa !111
  %351 = fpext float %350 to double
  %352 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 3, i32 6
  %353 = load float, ptr %352, align 4, !tbaa !111
  %354 = fpext float %353 to double
  %355 = fmul double %294, %354
  %356 = call double @llvm.fmuladd.f64(double %297, double %351, double %355)
  %357 = fmul double %295, %356
  %358 = call double @llvm.fmuladd.f64(double %296, double %348, double %357)
  %359 = fmul double %319, %358
  %360 = fptrunc double %359 to float
  %361 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  store float %360, ptr %361, align 4, !tbaa !111
  %362 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 7
  %363 = load float, ptr %362, align 8, !tbaa !112
  %364 = fpext float %363 to double
  %365 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 1, i32 7
  %366 = load float, ptr %365, align 16, !tbaa !112
  %367 = fpext float %366 to double
  %368 = fmul double %294, %367
  %369 = call double @llvm.fmuladd.f64(double %297, double %364, double %368)
  %370 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 2, i32 7
  %371 = load float, ptr %370, align 8, !tbaa !112
  %372 = fpext float %371 to double
  %373 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 3, i32 7
  %374 = load float, ptr %373, align 16, !tbaa !112
  %375 = fpext float %374 to double
  %376 = fmul double %294, %375
  %377 = call double @llvm.fmuladd.f64(double %297, double %372, double %376)
  %378 = fmul double %295, %377
  %379 = call double @llvm.fmuladd.f64(double %296, double %369, double %378)
  %380 = fmul double %319, %379
  %381 = fptrunc double %380 to float
  %382 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %381, ptr %382, align 8, !tbaa !112
  %383 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 8
  %384 = load float, ptr %383, align 4, !tbaa !113
  %385 = fpext float %384 to double
  %386 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 1, i32 8
  %387 = load float, ptr %386, align 4, !tbaa !113
  %388 = fpext float %387 to double
  %389 = fmul double %294, %388
  %390 = call double @llvm.fmuladd.f64(double %297, double %385, double %389)
  %391 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 2, i32 8
  %392 = load float, ptr %391, align 4, !tbaa !113
  %393 = fpext float %392 to double
  %394 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 3, i32 8
  %395 = load float, ptr %394, align 4, !tbaa !113
  %396 = fpext float %395 to double
  %397 = fmul double %294, %396
  %398 = call double @llvm.fmuladd.f64(double %297, double %393, double %397)
  %399 = fmul double %295, %398
  %400 = call double @llvm.fmuladd.f64(double %296, double %390, double %399)
  %401 = fptrunc double %400 to float
  %402 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  store float %401, ptr %402, align 4, !tbaa !113
  %403 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %404 = load i32, ptr %403, align 4, !tbaa !94
  %405 = icmp eq i32 %404, 12
  br i1 %405, label %406, label %428

406:                                              ; preds = %293
  %407 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 9
  %408 = load float, ptr %407, align 16, !tbaa !114
  %409 = fpext float %408 to double
  %410 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 1, i32 9
  %411 = load float, ptr %410, align 8, !tbaa !114
  %412 = fpext float %411 to double
  %413 = fmul double %294, %412
  %414 = call double @llvm.fmuladd.f64(double %297, double %409, double %413)
  %415 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 2, i32 9
  %416 = load float, ptr %415, align 16, !tbaa !114
  %417 = fpext float %416 to double
  %418 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %12, i64 0, i64 3, i32 9
  %419 = load float, ptr %418, align 8, !tbaa !114
  %420 = fpext float %419 to double
  %421 = fmul double %294, %420
  %422 = call double @llvm.fmuladd.f64(double %297, double %417, double %421)
  %423 = fmul double %295, %422
  %424 = call double @llvm.fmuladd.f64(double %296, double %414, double %423)
  %425 = fmul double %319, %424
  %426 = fptrunc double %425 to float
  %427 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %426, ptr %427, align 8, !tbaa !114
  br label %428

428:                                              ; preds = %293, %406, %228
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %12) #25
  br label %1381

429:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #25
  store i64 4, ptr %15, align 8, !tbaa !121
  %430 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 0, i32 1
  store i64 4, ptr %430, align 8, !tbaa !122
  %431 = tail call double @llvm.floor.f64(double %4)
  %432 = fptosi double %431 to i64
  %433 = add nsw i64 %432, -1
  %434 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 0, i32 2
  store i64 %433, ptr %434, align 8, !tbaa !98
  %435 = tail call double @llvm.floor.f64(double %5)
  %436 = fptosi double %435 to i64
  %437 = add nsw i64 %436, -1
  %438 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 0, i32 3
  store i64 %437, ptr %438, align 8, !tbaa !99
  %439 = call ptr @ExcerptImage(ptr noundef %1, ptr noundef nonnull %15, ptr noundef %6) #25
  %440 = icmp eq ptr %439, null
  br i1 %440, label %480, label %441

441:                                              ; preds = %429
  %442 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 32
  %443 = load i32, ptr %442, align 8, !tbaa !123
  %444 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 30
  %445 = load double, ptr %444, align 8, !tbaa !124
  %446 = call ptr @ResizeImage(ptr noundef nonnull %439, i64 noundef 1, i64 noundef 1, i32 noundef %443, double noundef %445, ptr noundef %6) #25
  %447 = call ptr @DestroyImage(ptr noundef nonnull %439) #25
  %448 = icmp eq ptr %446, null
  br i1 %448, label %480, label %449

449:                                              ; preds = %441
  %450 = call ptr @GetVirtualPixels(ptr noundef nonnull %446, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %6) #25
  %451 = icmp eq ptr %450, null
  br i1 %451, label %478, label %452

452:                                              ; preds = %449
  %453 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %446) #25
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %14) #25
  %454 = getelementptr inbounds %struct._PixelPacket, ptr %450, i64 0, i32 2
  %455 = load i16, ptr %454, align 2, !tbaa !86
  %456 = uitofp i16 %455 to float
  %457 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  store float %456, ptr %457, align 8, !tbaa !109
  %458 = getelementptr inbounds %struct._PixelPacket, ptr %450, i64 0, i32 1
  %459 = load i16, ptr %458, align 2, !tbaa !87
  %460 = uitofp i16 %459 to float
  %461 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  store float %460, ptr %461, align 4, !tbaa !111
  %462 = load i16, ptr %450, align 2, !tbaa !88
  %463 = uitofp i16 %462 to float
  %464 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %463, ptr %464, align 8, !tbaa !112
  %465 = getelementptr inbounds %struct._PixelPacket, ptr %450, i64 0, i32 3
  %466 = load i16, ptr %465, align 2, !tbaa !71
  %467 = uitofp i16 %466 to float
  %468 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  store float %467, ptr %468, align 4, !tbaa !113
  %469 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %470 = load i32, ptr %469, align 4, !tbaa !94
  %471 = icmp eq i32 %470, 12
  %472 = icmp ne ptr %453, null
  %473 = and i1 %472, %471
  br i1 %473, label %474, label %478

474:                                              ; preds = %452
  %475 = load i16, ptr %453, align 2, !tbaa !96
  %476 = uitofp i16 %475 to float
  %477 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %476, ptr %477, align 8, !tbaa !114
  br label %478

478:                                              ; preds = %474, %452, %449
  %479 = call ptr @DestroyImage(ptr noundef nonnull %446) #25
  br label %480

480:                                              ; preds = %478, %441, %429
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #25
  br label %1381

481:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #25
  %482 = tail call double @llvm.floor.f64(double %4)
  %483 = fptosi double %482 to i64
  %484 = tail call double @llvm.floor.f64(double %5)
  %485 = fptosi double %484 to i64
  %486 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %483, i64 noundef %485, i64 noundef 1, i64 noundef 1, ptr noundef %6) #26
  %487 = icmp eq ptr %486, null
  br i1 %487, label %514, label %488

488:                                              ; preds = %481
  %489 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #25
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %16) #25
  %490 = getelementptr inbounds %struct._PixelPacket, ptr %486, i64 0, i32 2
  %491 = load i16, ptr %490, align 2, !tbaa !86
  %492 = uitofp i16 %491 to float
  %493 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  store float %492, ptr %493, align 8, !tbaa !109
  %494 = getelementptr inbounds %struct._PixelPacket, ptr %486, i64 0, i32 1
  %495 = load i16, ptr %494, align 2, !tbaa !87
  %496 = uitofp i16 %495 to float
  %497 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  store float %496, ptr %497, align 4, !tbaa !111
  %498 = load i16, ptr %486, align 2, !tbaa !88
  %499 = uitofp i16 %498 to float
  %500 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %499, ptr %500, align 8, !tbaa !112
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %486, i64 0, i32 3
  %502 = load i16, ptr %501, align 2, !tbaa !71
  %503 = uitofp i16 %502 to float
  %504 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  store float %503, ptr %504, align 4, !tbaa !113
  %505 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %506 = load i32, ptr %505, align 4, !tbaa !94
  %507 = icmp eq i32 %506, 12
  %508 = icmp ne ptr %489, null
  %509 = and i1 %508, %507
  br i1 %509, label %510, label %514

510:                                              ; preds = %488
  %511 = load i16, ptr %489, align 2, !tbaa !96
  %512 = uitofp i16 %511 to float
  %513 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %512, ptr %513, align 8, !tbaa !114
  br label %514

514:                                              ; preds = %510, %488, %481
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #25
  br label %1381

515:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #25
  %516 = tail call double @llvm.floor.f64(double %4)
  %517 = fptosi double %516 to i64
  %518 = tail call double @llvm.floor.f64(double %5)
  %519 = fptosi double %518 to i64
  %520 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %517, i64 noundef %519, i64 noundef 2, i64 noundef 2, ptr noundef %6) #26
  %521 = icmp eq ptr %520, null
  br i1 %521, label %1117, label %522

522:                                              ; preds = %515
  %523 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #25
  %524 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %525 = icmp ne ptr %523, null
  %526 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  br label %527

527:                                              ; preds = %522, %576
  %528 = phi ptr [ %520, %522 ], [ %577, %576 ]
  %529 = phi i64 [ 0, %522 ], [ %578, %576 ]
  %530 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %529
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %530) #25
  %531 = getelementptr inbounds %struct._PixelPacket, ptr %528, i64 0, i32 2
  %532 = load i16, ptr %531, align 2, !tbaa !86
  %533 = uitofp i16 %532 to float
  %534 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %529, i32 5
  store float %533, ptr %534, align 8, !tbaa !109
  %535 = getelementptr inbounds %struct._PixelPacket, ptr %528, i64 0, i32 1
  %536 = load i16, ptr %535, align 2, !tbaa !87
  %537 = uitofp i16 %536 to float
  %538 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %529, i32 6
  store float %537, ptr %538, align 4, !tbaa !111
  %539 = load i16, ptr %528, align 2, !tbaa !88
  %540 = uitofp i16 %539 to float
  %541 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %529, i32 7
  store float %540, ptr %541, align 8, !tbaa !112
  %542 = getelementptr inbounds %struct._PixelPacket, ptr %528, i64 0, i32 3
  %543 = load i16, ptr %542, align 2, !tbaa !71
  %544 = uitofp i16 %543 to float
  %545 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %529, i32 8
  store float %544, ptr %545, align 4, !tbaa !113
  %546 = load i32, ptr %524, align 4, !tbaa !94
  %547 = icmp eq i32 %546, 12
  %548 = and i1 %525, %547
  br i1 %548, label %549, label %554

549:                                              ; preds = %527
  %550 = getelementptr inbounds i16, ptr %523, i64 %529
  %551 = load i16, ptr %550, align 2, !tbaa !96
  %552 = uitofp i16 %551 to float
  %553 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %529, i32 9
  store float %552, ptr %553, align 8, !tbaa !114
  br label %554

554:                                              ; preds = %527, %549
  %555 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 %529
  store float 1.000000e+00, ptr %555, align 4, !tbaa !115
  %556 = load i32, ptr %526, align 8, !tbaa !65
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %576, label %558

558:                                              ; preds = %554
  %559 = xor i16 %543, -1
  %560 = uitofp i16 %559 to double
  %561 = fmul double %560, 0x3EF0001000100010
  %562 = fptrunc double %561 to float
  store float %562, ptr %555, align 4, !tbaa !115
  %563 = getelementptr inbounds [4 x %struct._MagickPixelPacket], ptr %17, i64 0, i64 %529, i32 5
  %564 = load float, ptr %563, align 8, !tbaa !109
  %565 = fmul float %564, %562
  store float %565, ptr %563, align 8, !tbaa !109
  %566 = getelementptr inbounds [4 x %struct._MagickPixelPacket], ptr %17, i64 0, i64 %529, i32 6
  %567 = load float, ptr %566, align 4, !tbaa !111
  %568 = fmul float %567, %562
  store float %568, ptr %566, align 4, !tbaa !111
  %569 = getelementptr inbounds [4 x %struct._MagickPixelPacket], ptr %17, i64 0, i64 %529, i32 7
  %570 = load float, ptr %569, align 8, !tbaa !112
  %571 = fmul float %570, %562
  store float %571, ptr %569, align 8, !tbaa !112
  br i1 %547, label %572, label %576

572:                                              ; preds = %558
  %573 = getelementptr inbounds [4 x %struct._MagickPixelPacket], ptr %17, i64 0, i64 %529, i32 9
  %574 = load float, ptr %573, align 8, !tbaa !114
  %575 = fmul float %574, %562
  store float %575, ptr %573, align 8, !tbaa !114
  br label %576

576:                                              ; preds = %558, %572, %554
  %577 = getelementptr inbounds %struct._PixelPacket, ptr %528, i64 1
  %578 = add nuw nsw i64 %529, 1
  %579 = icmp eq i64 %578, 4
  br i1 %579, label %580, label %527, !llvm.loop !125

580:                                              ; preds = %576
  %581 = fsub double %4, %516
  %582 = fsub double %5, %518
  %583 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 1
  %584 = load i32, ptr %583, align 4, !tbaa !126
  %585 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 5
  %586 = load float, ptr %585, align 16, !tbaa !109
  switch i32 %584, label %599 [
    i32 2, label %614
    i32 13, label %587
  ]

587:                                              ; preds = %580
  %588 = fpext float %586 to double
  %589 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 6
  %590 = load float, ptr %589, align 4, !tbaa !111
  %591 = fpext float %590 to double
  %592 = fmul double %591, 0x3FE6E29307AF20EA
  %593 = call double @llvm.fmuladd.f64(double %588, double 2.126560e-01, double %592)
  %594 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 7
  %595 = load float, ptr %594, align 8, !tbaa !112
  %596 = fpext float %595 to double
  %597 = call double @llvm.fmuladd.f64(double %596, double 7.218600e-02, double %593)
  %598 = fptrunc double %597 to float
  br label %614

599:                                              ; preds = %580
  %600 = call float @EncodePixelGamma(float noundef %586) #26
  %601 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 6
  %602 = load float, ptr %601, align 4, !tbaa !111
  %603 = call float @EncodePixelGamma(float noundef %602) #26
  %604 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 7
  %605 = load float, ptr %604, align 8, !tbaa !112
  %606 = call float @EncodePixelGamma(float noundef %605) #26
  %607 = fpext float %600 to double
  %608 = fpext float %603 to double
  %609 = fmul double %608, 0x3FE6E29307AF20EA
  %610 = call double @llvm.fmuladd.f64(double %607, double 2.126560e-01, double %609)
  %611 = fpext float %606 to double
  %612 = call double @llvm.fmuladd.f64(double %611, double 7.218600e-02, double %610)
  %613 = fptrunc double %612 to float
  br label %614

614:                                              ; preds = %580, %587, %599
  %615 = phi float [ %598, %587 ], [ %613, %599 ], [ %586, %580 ]
  %616 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 1
  %617 = load i32, ptr %616, align 4, !tbaa !126
  %618 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 5
  %619 = load float, ptr %618, align 8, !tbaa !109
  switch i32 %617, label %632 [
    i32 2, label %647
    i32 13, label %620
  ]

620:                                              ; preds = %614
  %621 = fpext float %619 to double
  %622 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 6
  %623 = load float, ptr %622, align 4, !tbaa !111
  %624 = fpext float %623 to double
  %625 = fmul double %624, 0x3FE6E29307AF20EA
  %626 = call double @llvm.fmuladd.f64(double %621, double 2.126560e-01, double %625)
  %627 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 7
  %628 = load float, ptr %627, align 16, !tbaa !112
  %629 = fpext float %628 to double
  %630 = call double @llvm.fmuladd.f64(double %629, double 7.218600e-02, double %626)
  %631 = fptrunc double %630 to float
  br label %647

632:                                              ; preds = %614
  %633 = call float @EncodePixelGamma(float noundef %619) #26
  %634 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 6
  %635 = load float, ptr %634, align 4, !tbaa !111
  %636 = call float @EncodePixelGamma(float noundef %635) #26
  %637 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 7
  %638 = load float, ptr %637, align 16, !tbaa !112
  %639 = call float @EncodePixelGamma(float noundef %638) #26
  %640 = fpext float %633 to double
  %641 = fpext float %636 to double
  %642 = fmul double %641, 0x3FE6E29307AF20EA
  %643 = call double @llvm.fmuladd.f64(double %640, double 2.126560e-01, double %642)
  %644 = fpext float %639 to double
  %645 = call double @llvm.fmuladd.f64(double %644, double 7.218600e-02, double %643)
  %646 = fptrunc double %645 to float
  br label %647

647:                                              ; preds = %614, %620, %632
  %648 = phi float [ %631, %620 ], [ %646, %632 ], [ %619, %614 ]
  %649 = fsub float %615, %648
  %650 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 1
  %651 = load i32, ptr %650, align 4, !tbaa !126
  %652 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 5
  %653 = load float, ptr %652, align 8, !tbaa !109
  switch i32 %651, label %666 [
    i32 2, label %681
    i32 13, label %654
  ]

654:                                              ; preds = %647
  %655 = fpext float %653 to double
  %656 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 6
  %657 = load float, ptr %656, align 4, !tbaa !111
  %658 = fpext float %657 to double
  %659 = fmul double %658, 0x3FE6E29307AF20EA
  %660 = call double @llvm.fmuladd.f64(double %655, double 2.126560e-01, double %659)
  %661 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 7
  %662 = load float, ptr %661, align 16, !tbaa !112
  %663 = fpext float %662 to double
  %664 = call double @llvm.fmuladd.f64(double %663, double 7.218600e-02, double %660)
  %665 = fptrunc double %664 to float
  br label %681

666:                                              ; preds = %647
  %667 = call float @EncodePixelGamma(float noundef %653) #26
  %668 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 6
  %669 = load float, ptr %668, align 4, !tbaa !111
  %670 = call float @EncodePixelGamma(float noundef %669) #26
  %671 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 7
  %672 = load float, ptr %671, align 16, !tbaa !112
  %673 = call float @EncodePixelGamma(float noundef %672) #26
  %674 = fpext float %667 to double
  %675 = fpext float %670 to double
  %676 = fmul double %675, 0x3FE6E29307AF20EA
  %677 = call double @llvm.fmuladd.f64(double %674, double 2.126560e-01, double %676)
  %678 = fpext float %673 to double
  %679 = call double @llvm.fmuladd.f64(double %678, double 7.218600e-02, double %677)
  %680 = fptrunc double %679 to float
  br label %681

681:                                              ; preds = %647, %654, %666
  %682 = phi float [ %665, %654 ], [ %680, %666 ], [ %653, %647 ]
  %683 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 1
  %684 = load i32, ptr %683, align 4, !tbaa !126
  %685 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 5
  %686 = load float, ptr %685, align 16, !tbaa !109
  switch i32 %684, label %699 [
    i32 2, label %714
    i32 13, label %687
  ]

687:                                              ; preds = %681
  %688 = fpext float %686 to double
  %689 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 6
  %690 = load float, ptr %689, align 4, !tbaa !111
  %691 = fpext float %690 to double
  %692 = fmul double %691, 0x3FE6E29307AF20EA
  %693 = call double @llvm.fmuladd.f64(double %688, double 2.126560e-01, double %692)
  %694 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 7
  %695 = load float, ptr %694, align 8, !tbaa !112
  %696 = fpext float %695 to double
  %697 = call double @llvm.fmuladd.f64(double %696, double 7.218600e-02, double %693)
  %698 = fptrunc double %697 to float
  br label %714

699:                                              ; preds = %681
  %700 = call float @EncodePixelGamma(float noundef %686) #26
  %701 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 6
  %702 = load float, ptr %701, align 4, !tbaa !111
  %703 = call float @EncodePixelGamma(float noundef %702) #26
  %704 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 7
  %705 = load float, ptr %704, align 8, !tbaa !112
  %706 = call float @EncodePixelGamma(float noundef %705) #26
  %707 = fpext float %700 to double
  %708 = fpext float %703 to double
  %709 = fmul double %708, 0x3FE6E29307AF20EA
  %710 = call double @llvm.fmuladd.f64(double %707, double 2.126560e-01, double %709)
  %711 = fpext float %706 to double
  %712 = call double @llvm.fmuladd.f64(double %711, double 7.218600e-02, double %710)
  %713 = fptrunc double %712 to float
  br label %714

714:                                              ; preds = %681, %687, %699
  %715 = phi float [ %698, %687 ], [ %713, %699 ], [ %686, %681 ]
  %716 = fsub float %682, %715
  %717 = call float @llvm.fabs.f32(float %649)
  %718 = call float @llvm.fabs.f32(float %716)
  %719 = fcmp olt float %717, %718
  br i1 %719, label %720, label %916

720:                                              ; preds = %714
  %721 = fcmp ugt double %581, %582
  br i1 %721, label %819, label %722

722:                                              ; preds = %720
  %723 = fsub double 1.000000e+00, %582
  %724 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 2
  %725 = load float, ptr %724, align 8, !tbaa !115
  %726 = fpext float %725 to double
  %727 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 3
  %728 = load float, ptr %727, align 4, !tbaa !115
  %729 = fpext float %728 to double
  %730 = load float, ptr %18, align 16, !tbaa !115
  %731 = fpext float %730 to double
  %732 = fmul double %723, %731
  %733 = call double @llvm.fmuladd.f64(double %581, double %729, double %732)
  %734 = fsub double 1.000000e+00, %581
  %735 = fsub double %734, %723
  %736 = call double @llvm.fmuladd.f64(double %735, double %726, double %733)
  %737 = fcmp olt double %736, 0.000000e+00
  %738 = select i1 %737, double 0.000000e+00, double %736
  %739 = fcmp ult double %738, 1.000000e-15
  %740 = fdiv double 1.000000e+00, %738
  %741 = select i1 %739, double 0x430C6BF52633FFFF, double %740
  %742 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 5
  %743 = load float, ptr %742, align 16, !tbaa !109
  %744 = fpext float %743 to double
  %745 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 5
  %746 = load float, ptr %745, align 8, !tbaa !109
  %747 = fpext float %746 to double
  %748 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 5
  %749 = load float, ptr %748, align 16, !tbaa !109
  %750 = fpext float %749 to double
  %751 = fmul double %723, %750
  %752 = call double @llvm.fmuladd.f64(double %581, double %747, double %751)
  %753 = call double @llvm.fmuladd.f64(double %735, double %744, double %752)
  %754 = fmul double %753, %741
  %755 = fptrunc double %754 to float
  %756 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  store float %755, ptr %756, align 8, !tbaa !109
  %757 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 6
  %758 = load float, ptr %757, align 4, !tbaa !111
  %759 = fpext float %758 to double
  %760 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 6
  %761 = load float, ptr %760, align 4, !tbaa !111
  %762 = fpext float %761 to double
  %763 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 6
  %764 = load float, ptr %763, align 4, !tbaa !111
  %765 = fpext float %764 to double
  %766 = fmul double %723, %765
  %767 = call double @llvm.fmuladd.f64(double %581, double %762, double %766)
  %768 = call double @llvm.fmuladd.f64(double %735, double %759, double %767)
  %769 = fmul double %741, %768
  %770 = fptrunc double %769 to float
  %771 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  store float %770, ptr %771, align 4, !tbaa !111
  %772 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 7
  %773 = load float, ptr %772, align 8, !tbaa !112
  %774 = fpext float %773 to double
  %775 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 7
  %776 = load float, ptr %775, align 16, !tbaa !112
  %777 = fpext float %776 to double
  %778 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 7
  %779 = load float, ptr %778, align 8, !tbaa !112
  %780 = fpext float %779 to double
  %781 = fmul double %723, %780
  %782 = call double @llvm.fmuladd.f64(double %581, double %777, double %781)
  %783 = call double @llvm.fmuladd.f64(double %735, double %774, double %782)
  %784 = fmul double %741, %783
  %785 = fptrunc double %784 to float
  %786 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %785, ptr %786, align 8, !tbaa !112
  %787 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 8
  %788 = load float, ptr %787, align 4, !tbaa !113
  %789 = fpext float %788 to double
  %790 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 8
  %791 = load float, ptr %790, align 4, !tbaa !113
  %792 = fpext float %791 to double
  %793 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 8
  %794 = load float, ptr %793, align 4, !tbaa !113
  %795 = fpext float %794 to double
  %796 = fmul double %723, %795
  %797 = call double @llvm.fmuladd.f64(double %581, double %792, double %796)
  %798 = call double @llvm.fmuladd.f64(double %735, double %789, double %797)
  %799 = fmul double %741, %798
  %800 = fptrunc double %799 to float
  %801 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  store float %800, ptr %801, align 4, !tbaa !113
  %802 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %803 = load i32, ptr %802, align 4, !tbaa !94
  %804 = icmp eq i32 %803, 12
  br i1 %804, label %805, label %1117

805:                                              ; preds = %722
  %806 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 9
  %807 = load float, ptr %806, align 16, !tbaa !114
  %808 = fpext float %807 to double
  %809 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 9
  %810 = load float, ptr %809, align 8, !tbaa !114
  %811 = fpext float %810 to double
  %812 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 9
  %813 = load float, ptr %812, align 16, !tbaa !114
  %814 = fpext float %813 to double
  %815 = fmul double %723, %814
  %816 = call double @llvm.fmuladd.f64(double %581, double %811, double %815)
  %817 = call double @llvm.fmuladd.f64(double %735, double %808, double %816)
  %818 = fmul double %741, %817
  br label %1113

819:                                              ; preds = %720
  %820 = fsub double 1.000000e+00, %581
  %821 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 1
  %822 = load float, ptr %821, align 4, !tbaa !115
  %823 = fpext float %822 to double
  %824 = load float, ptr %18, align 16, !tbaa !115
  %825 = fpext float %824 to double
  %826 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 3
  %827 = load float, ptr %826, align 4, !tbaa !115
  %828 = fpext float %827 to double
  %829 = fmul double %582, %828
  %830 = call double @llvm.fmuladd.f64(double %820, double %825, double %829)
  %831 = fsub double 1.000000e+00, %820
  %832 = fsub double %831, %582
  %833 = call double @llvm.fmuladd.f64(double %832, double %823, double %830)
  %834 = fcmp olt double %833, 0.000000e+00
  %835 = select i1 %834, double 0.000000e+00, double %833
  %836 = fcmp ult double %835, 1.000000e-15
  %837 = fdiv double 1.000000e+00, %835
  %838 = select i1 %836, double 0x430C6BF52633FFFF, double %837
  %839 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 5
  %840 = load float, ptr %839, align 8, !tbaa !109
  %841 = fpext float %840 to double
  %842 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 5
  %843 = load float, ptr %842, align 16, !tbaa !109
  %844 = fpext float %843 to double
  %845 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 5
  %846 = load float, ptr %845, align 8, !tbaa !109
  %847 = fpext float %846 to double
  %848 = fmul double %582, %847
  %849 = call double @llvm.fmuladd.f64(double %820, double %844, double %848)
  %850 = call double @llvm.fmuladd.f64(double %832, double %841, double %849)
  %851 = fmul double %850, %838
  %852 = fptrunc double %851 to float
  %853 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  store float %852, ptr %853, align 8, !tbaa !109
  %854 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 6
  %855 = load float, ptr %854, align 4, !tbaa !111
  %856 = fpext float %855 to double
  %857 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 6
  %858 = load float, ptr %857, align 4, !tbaa !111
  %859 = fpext float %858 to double
  %860 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 6
  %861 = load float, ptr %860, align 4, !tbaa !111
  %862 = fpext float %861 to double
  %863 = fmul double %582, %862
  %864 = call double @llvm.fmuladd.f64(double %820, double %859, double %863)
  %865 = call double @llvm.fmuladd.f64(double %832, double %856, double %864)
  %866 = fmul double %838, %865
  %867 = fptrunc double %866 to float
  %868 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  store float %867, ptr %868, align 4, !tbaa !111
  %869 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 7
  %870 = load float, ptr %869, align 16, !tbaa !112
  %871 = fpext float %870 to double
  %872 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 7
  %873 = load float, ptr %872, align 8, !tbaa !112
  %874 = fpext float %873 to double
  %875 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 7
  %876 = load float, ptr %875, align 16, !tbaa !112
  %877 = fpext float %876 to double
  %878 = fmul double %582, %877
  %879 = call double @llvm.fmuladd.f64(double %820, double %874, double %878)
  %880 = call double @llvm.fmuladd.f64(double %832, double %871, double %879)
  %881 = fmul double %838, %880
  %882 = fptrunc double %881 to float
  %883 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %882, ptr %883, align 8, !tbaa !112
  %884 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 8
  %885 = load float, ptr %884, align 4, !tbaa !113
  %886 = fpext float %885 to double
  %887 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 8
  %888 = load float, ptr %887, align 4, !tbaa !113
  %889 = fpext float %888 to double
  %890 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 8
  %891 = load float, ptr %890, align 4, !tbaa !113
  %892 = fpext float %891 to double
  %893 = fmul double %582, %892
  %894 = call double @llvm.fmuladd.f64(double %820, double %889, double %893)
  %895 = call double @llvm.fmuladd.f64(double %832, double %886, double %894)
  %896 = fmul double %838, %895
  %897 = fptrunc double %896 to float
  %898 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  store float %897, ptr %898, align 4, !tbaa !113
  %899 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %900 = load i32, ptr %899, align 4, !tbaa !94
  %901 = icmp eq i32 %900, 12
  br i1 %901, label %902, label %1117

902:                                              ; preds = %819
  %903 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 9
  %904 = load float, ptr %903, align 8, !tbaa !114
  %905 = fpext float %904 to double
  %906 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 9
  %907 = load float, ptr %906, align 16, !tbaa !114
  %908 = fpext float %907 to double
  %909 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 9
  %910 = load float, ptr %909, align 8, !tbaa !114
  %911 = fpext float %910 to double
  %912 = fmul double %582, %911
  %913 = call double @llvm.fmuladd.f64(double %820, double %908, double %912)
  %914 = call double @llvm.fmuladd.f64(double %832, double %905, double %913)
  %915 = fmul double %838, %914
  br label %1113

916:                                              ; preds = %714
  %917 = fsub double 1.000000e+00, %582
  %918 = fcmp ugt double %581, %917
  br i1 %918, label %1015, label %919

919:                                              ; preds = %916
  %920 = load float, ptr %18, align 16, !tbaa !115
  %921 = fpext float %920 to double
  %922 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 1
  %923 = load float, ptr %922, align 4, !tbaa !115
  %924 = fpext float %923 to double
  %925 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 2
  %926 = load float, ptr %925, align 8, !tbaa !115
  %927 = fpext float %926 to double
  %928 = fmul double %582, %927
  %929 = call double @llvm.fmuladd.f64(double %581, double %924, double %928)
  %930 = fsub double 1.000000e+00, %581
  %931 = fsub double %930, %582
  %932 = call double @llvm.fmuladd.f64(double %931, double %921, double %929)
  %933 = fcmp olt double %932, 0.000000e+00
  %934 = select i1 %933, double 0.000000e+00, double %932
  %935 = fcmp ult double %934, 1.000000e-15
  %936 = fdiv double 1.000000e+00, %934
  %937 = select i1 %935, double 0x430C6BF52633FFFF, double %936
  %938 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 5
  %939 = load float, ptr %938, align 16, !tbaa !109
  %940 = fpext float %939 to double
  %941 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 5
  %942 = load float, ptr %941, align 8, !tbaa !109
  %943 = fpext float %942 to double
  %944 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 5
  %945 = load float, ptr %944, align 16, !tbaa !109
  %946 = fpext float %945 to double
  %947 = fmul double %582, %946
  %948 = call double @llvm.fmuladd.f64(double %581, double %943, double %947)
  %949 = call double @llvm.fmuladd.f64(double %931, double %940, double %948)
  %950 = fmul double %949, %937
  %951 = fptrunc double %950 to float
  %952 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  store float %951, ptr %952, align 8, !tbaa !109
  %953 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 6
  %954 = load float, ptr %953, align 4, !tbaa !111
  %955 = fpext float %954 to double
  %956 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 6
  %957 = load float, ptr %956, align 4, !tbaa !111
  %958 = fpext float %957 to double
  %959 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 6
  %960 = load float, ptr %959, align 4, !tbaa !111
  %961 = fpext float %960 to double
  %962 = fmul double %582, %961
  %963 = call double @llvm.fmuladd.f64(double %581, double %958, double %962)
  %964 = call double @llvm.fmuladd.f64(double %931, double %955, double %963)
  %965 = fmul double %937, %964
  %966 = fptrunc double %965 to float
  %967 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  store float %966, ptr %967, align 4, !tbaa !111
  %968 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 7
  %969 = load float, ptr %968, align 8, !tbaa !112
  %970 = fpext float %969 to double
  %971 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 7
  %972 = load float, ptr %971, align 16, !tbaa !112
  %973 = fpext float %972 to double
  %974 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 7
  %975 = load float, ptr %974, align 8, !tbaa !112
  %976 = fpext float %975 to double
  %977 = fmul double %582, %976
  %978 = call double @llvm.fmuladd.f64(double %581, double %973, double %977)
  %979 = call double @llvm.fmuladd.f64(double %931, double %970, double %978)
  %980 = fmul double %937, %979
  %981 = fptrunc double %980 to float
  %982 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %981, ptr %982, align 8, !tbaa !112
  %983 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 8
  %984 = load float, ptr %983, align 4, !tbaa !113
  %985 = fpext float %984 to double
  %986 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 8
  %987 = load float, ptr %986, align 4, !tbaa !113
  %988 = fpext float %987 to double
  %989 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 8
  %990 = load float, ptr %989, align 4, !tbaa !113
  %991 = fpext float %990 to double
  %992 = fmul double %582, %991
  %993 = call double @llvm.fmuladd.f64(double %581, double %988, double %992)
  %994 = call double @llvm.fmuladd.f64(double %931, double %985, double %993)
  %995 = fmul double %937, %994
  %996 = fptrunc double %995 to float
  %997 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  store float %996, ptr %997, align 4, !tbaa !113
  %998 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %999 = load i32, ptr %998, align 4, !tbaa !94
  %1000 = icmp eq i32 %999, 12
  br i1 %1000, label %1001, label %1117

1001:                                             ; preds = %919
  %1002 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 9
  %1003 = load float, ptr %1002, align 16, !tbaa !114
  %1004 = fpext float %1003 to double
  %1005 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 9
  %1006 = load float, ptr %1005, align 8, !tbaa !114
  %1007 = fpext float %1006 to double
  %1008 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 9
  %1009 = load float, ptr %1008, align 16, !tbaa !114
  %1010 = fpext float %1009 to double
  %1011 = fmul double %582, %1010
  %1012 = call double @llvm.fmuladd.f64(double %581, double %1007, double %1011)
  %1013 = call double @llvm.fmuladd.f64(double %931, double %1004, double %1012)
  %1014 = fmul double %937, %1013
  br label %1113

1015:                                             ; preds = %916
  %1016 = fsub double 1.000000e+00, %581
  %1017 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 3
  %1018 = load float, ptr %1017, align 4, !tbaa !115
  %1019 = fpext float %1018 to double
  %1020 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 2
  %1021 = load float, ptr %1020, align 8, !tbaa !115
  %1022 = fpext float %1021 to double
  %1023 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 1
  %1024 = load float, ptr %1023, align 4, !tbaa !115
  %1025 = fpext float %1024 to double
  %1026 = fmul double %917, %1025
  %1027 = call double @llvm.fmuladd.f64(double %1016, double %1022, double %1026)
  %1028 = fsub double 1.000000e+00, %1016
  %1029 = fsub double %1028, %917
  %1030 = call double @llvm.fmuladd.f64(double %1029, double %1019, double %1027)
  %1031 = fcmp olt double %1030, 0.000000e+00
  %1032 = select i1 %1031, double 0.000000e+00, double %1030
  %1033 = fcmp ult double %1032, 1.000000e-15
  %1034 = fdiv double 1.000000e+00, %1032
  %1035 = select i1 %1033, double 0x430C6BF52633FFFF, double %1034
  %1036 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 5
  %1037 = load float, ptr %1036, align 8, !tbaa !109
  %1038 = fpext float %1037 to double
  %1039 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 5
  %1040 = load float, ptr %1039, align 16, !tbaa !109
  %1041 = fpext float %1040 to double
  %1042 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 5
  %1043 = load float, ptr %1042, align 8, !tbaa !109
  %1044 = fpext float %1043 to double
  %1045 = fmul double %917, %1044
  %1046 = call double @llvm.fmuladd.f64(double %1016, double %1041, double %1045)
  %1047 = call double @llvm.fmuladd.f64(double %1029, double %1038, double %1046)
  %1048 = fmul double %1047, %1035
  %1049 = fptrunc double %1048 to float
  %1050 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  store float %1049, ptr %1050, align 8, !tbaa !109
  %1051 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 6
  %1052 = load float, ptr %1051, align 4, !tbaa !111
  %1053 = fpext float %1052 to double
  %1054 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 6
  %1055 = load float, ptr %1054, align 4, !tbaa !111
  %1056 = fpext float %1055 to double
  %1057 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 6
  %1058 = load float, ptr %1057, align 4, !tbaa !111
  %1059 = fpext float %1058 to double
  %1060 = fmul double %917, %1059
  %1061 = call double @llvm.fmuladd.f64(double %1016, double %1056, double %1060)
  %1062 = call double @llvm.fmuladd.f64(double %1029, double %1053, double %1061)
  %1063 = fmul double %1035, %1062
  %1064 = fptrunc double %1063 to float
  %1065 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  store float %1064, ptr %1065, align 4, !tbaa !111
  %1066 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 7
  %1067 = load float, ptr %1066, align 16, !tbaa !112
  %1068 = fpext float %1067 to double
  %1069 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 7
  %1070 = load float, ptr %1069, align 8, !tbaa !112
  %1071 = fpext float %1070 to double
  %1072 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 7
  %1073 = load float, ptr %1072, align 16, !tbaa !112
  %1074 = fpext float %1073 to double
  %1075 = fmul double %917, %1074
  %1076 = call double @llvm.fmuladd.f64(double %1016, double %1071, double %1075)
  %1077 = call double @llvm.fmuladd.f64(double %1029, double %1068, double %1076)
  %1078 = fmul double %1035, %1077
  %1079 = fptrunc double %1078 to float
  %1080 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %1079, ptr %1080, align 8, !tbaa !112
  %1081 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 8
  %1082 = load float, ptr %1081, align 4, !tbaa !113
  %1083 = fpext float %1082 to double
  %1084 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 8
  %1085 = load float, ptr %1084, align 4, !tbaa !113
  %1086 = fpext float %1085 to double
  %1087 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 8
  %1088 = load float, ptr %1087, align 4, !tbaa !113
  %1089 = fpext float %1088 to double
  %1090 = fmul double %917, %1089
  %1091 = call double @llvm.fmuladd.f64(double %1016, double %1086, double %1090)
  %1092 = call double @llvm.fmuladd.f64(double %1029, double %1083, double %1091)
  %1093 = fmul double %1035, %1092
  %1094 = fptrunc double %1093 to float
  %1095 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  store float %1094, ptr %1095, align 4, !tbaa !113
  %1096 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1097 = load i32, ptr %1096, align 4, !tbaa !94
  %1098 = icmp eq i32 %1097, 12
  br i1 %1098, label %1099, label %1117

1099:                                             ; preds = %1015
  %1100 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 3, i32 9
  %1101 = load float, ptr %1100, align 8, !tbaa !114
  %1102 = fpext float %1101 to double
  %1103 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 2, i32 9
  %1104 = load float, ptr %1103, align 16, !tbaa !114
  %1105 = fpext float %1104 to double
  %1106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 1, i32 9
  %1107 = load float, ptr %1106, align 8, !tbaa !114
  %1108 = fpext float %1107 to double
  %1109 = fmul double %917, %1108
  %1110 = call double @llvm.fmuladd.f64(double %1016, double %1105, double %1109)
  %1111 = call double @llvm.fmuladd.f64(double %1029, double %1102, double %1110)
  %1112 = fmul double %1035, %1111
  br label %1113

1113:                                             ; preds = %1001, %1099, %805, %902
  %1114 = phi double [ %915, %902 ], [ %818, %805 ], [ %1112, %1099 ], [ %1014, %1001 ]
  %1115 = fptrunc double %1114 to float
  %1116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %1115, ptr %1116, align 8, !tbaa !114
  br label %1117

1117:                                             ; preds = %1113, %819, %722, %1015, %919, %515
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %17) #25
  br label %1381

1118:                                             ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #25
  %1119 = fptrunc double %4 to float
  %1120 = fpext float %1119 to double
  %1121 = fcmp ult float %1119, 0.000000e+00
  %1122 = select i1 %1121, double -5.000000e-01, double 5.000000e-01
  %1123 = fadd double %1122, %1120
  %1124 = fptosi double %1123 to i64
  %1125 = fptrunc double %5 to float
  %1126 = fpext float %1125 to double
  %1127 = fcmp ult float %1125, 0.000000e+00
  %1128 = select i1 %1127, double -5.000000e-01, double 5.000000e-01
  %1129 = fadd double %1128, %1126
  %1130 = fptosi double %1129 to i64
  %1131 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %1124, i64 noundef %1130, i64 noundef 1, i64 noundef 1, ptr noundef %6) #26
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1159, label %1133

1133:                                             ; preds = %1118
  %1134 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #25
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %19) #25
  %1135 = getelementptr inbounds %struct._PixelPacket, ptr %1131, i64 0, i32 2
  %1136 = load i16, ptr %1135, align 2, !tbaa !86
  %1137 = uitofp i16 %1136 to float
  %1138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  store float %1137, ptr %1138, align 8, !tbaa !109
  %1139 = getelementptr inbounds %struct._PixelPacket, ptr %1131, i64 0, i32 1
  %1140 = load i16, ptr %1139, align 2, !tbaa !87
  %1141 = uitofp i16 %1140 to float
  %1142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  store float %1141, ptr %1142, align 4, !tbaa !111
  %1143 = load i16, ptr %1131, align 2, !tbaa !88
  %1144 = uitofp i16 %1143 to float
  %1145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %1144, ptr %1145, align 8, !tbaa !112
  %1146 = getelementptr inbounds %struct._PixelPacket, ptr %1131, i64 0, i32 3
  %1147 = load i16, ptr %1146, align 2, !tbaa !71
  %1148 = uitofp i16 %1147 to float
  %1149 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  store float %1148, ptr %1149, align 4, !tbaa !113
  %1150 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1151 = load i32, ptr %1150, align 4, !tbaa !94
  %1152 = icmp eq i32 %1151, 12
  %1153 = icmp ne ptr %1134, null
  %1154 = and i1 %1153, %1152
  br i1 %1154, label %1155, label %1159

1155:                                             ; preds = %1133
  %1156 = load i16, ptr %1134, align 2, !tbaa !96
  %1157 = uitofp i16 %1156 to float
  %1158 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %1157, ptr %1158, align 8, !tbaa !114
  br label %1159

1159:                                             ; preds = %1155, %1133, %1118
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #25
  br label %1381

1160:                                             ; preds = %7
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #25
  %1161 = tail call double @llvm.floor.f64(double %4)
  %1162 = fptosi double %1161 to i64
  %1163 = add nsw i64 %1162, -1
  %1164 = tail call double @llvm.floor.f64(double %5)
  %1165 = fptosi double %1164 to i64
  %1166 = add nsw i64 %1165, -1
  %1167 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %1163, i64 noundef %1166, i64 noundef 4, i64 noundef 4, ptr noundef %6) #26
  %1168 = icmp eq ptr %1167, null
  br i1 %1168, label %1380, label %1169

1169:                                             ; preds = %1160
  %1170 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #25
  %1171 = fsub double %4, %1161
  %1172 = fsub double %1164, %5
  %1173 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1174 = icmp ne ptr %1170, null
  %1175 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %1176 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %1177 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %1178 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %1179 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %1180 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  br label %1181

1181:                                             ; preds = %1169, %1377
  %1182 = phi i64 [ 0, %1169 ], [ %1373, %1377 ]
  %1183 = phi ptr [ %1167, %1169 ], [ %1374, %1377 ]
  %1184 = phi i64 [ -1, %1169 ], [ %1378, %1377 ]
  %1185 = sitofp i64 %1184 to float
  %1186 = fpext float %1185 to double
  %1187 = fadd double %1172, %1186
  %1188 = fptrunc double %1187 to float
  %1189 = fpext float %1188 to double
  %1190 = fadd double %1189, 2.000000e+00
  %1191 = fcmp ogt double %1190, 0.000000e+00
  %1192 = select i1 %1191, double %1190, double 0.000000e+00
  %1193 = fptrunc double %1192 to float
  %1194 = fpext float %1193 to double
  %1195 = fmul double %1194, %1194
  %1196 = fmul double %1195, %1194
  %1197 = fptrunc double %1196 to float
  %1198 = fadd double %1189, 1.000000e+00
  %1199 = fcmp ogt double %1198, 0.000000e+00
  %1200 = select i1 %1199, double %1198, double 0.000000e+00
  %1201 = fptrunc double %1200 to float
  %1202 = fpext float %1201 to double
  %1203 = fpext float %1197 to double
  %1204 = fmul double %1202, -4.000000e+00
  %1205 = fmul double %1204, %1202
  %1206 = call double @llvm.fmuladd.f64(double %1205, double %1202, double %1203)
  %1207 = fptrunc double %1206 to float
  %1208 = fadd double %1189, 0.000000e+00
  %1209 = fcmp ogt double %1208, 0.000000e+00
  %1210 = select i1 %1209, double %1208, double 0.000000e+00
  %1211 = fptrunc double %1210 to float
  %1212 = fpext float %1211 to double
  %1213 = fmul double %1212, 6.000000e+00
  %1214 = fmul double %1213, %1212
  %1215 = fpext float %1207 to double
  %1216 = call double @llvm.fmuladd.f64(double %1214, double %1212, double %1215)
  %1217 = fptrunc double %1216 to float
  %1218 = fadd double %1189, -1.000000e+00
  %1219 = fcmp ogt double %1218, 0.000000e+00
  %1220 = select i1 %1219, double %1218, double 0.000000e+00
  %1221 = fptrunc double %1220 to float
  %1222 = fpext float %1221 to double
  %1223 = fpext float %1217 to double
  %1224 = fmul double %1222, -4.000000e+00
  %1225 = fmul double %1224, %1222
  %1226 = call double @llvm.fmuladd.f64(double %1225, double %1222, double %1223)
  %1227 = fptrunc double %1226 to float
  %1228 = fdiv float %1227, 6.000000e+00
  %1229 = fpext float %1228 to double
  %1230 = add i64 %1182, 3
  br label %1231

1231:                                             ; preds = %1181, %1372
  %1232 = phi i64 [ %1182, %1181 ], [ %1373, %1372 ]
  %1233 = phi i64 [ -1, %1181 ], [ %1375, %1372 ]
  %1234 = phi ptr [ %1183, %1181 ], [ %1374, %1372 ]
  %1235 = getelementptr inbounds %struct._MagickPixelPacket, ptr %20, i64 %1232
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %1235) #25
  %1236 = getelementptr inbounds %struct._PixelPacket, ptr %1234, i64 0, i32 2
  %1237 = load i16, ptr %1236, align 2, !tbaa !86
  %1238 = uitofp i16 %1237 to float
  %1239 = getelementptr inbounds %struct._MagickPixelPacket, ptr %20, i64 %1232, i32 5
  store float %1238, ptr %1239, align 8, !tbaa !109
  %1240 = getelementptr inbounds %struct._PixelPacket, ptr %1234, i64 0, i32 1
  %1241 = load i16, ptr %1240, align 2, !tbaa !87
  %1242 = uitofp i16 %1241 to float
  %1243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %20, i64 %1232, i32 6
  store float %1242, ptr %1243, align 4, !tbaa !111
  %1244 = load i16, ptr %1234, align 2, !tbaa !88
  %1245 = uitofp i16 %1244 to float
  %1246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %20, i64 %1232, i32 7
  store float %1245, ptr %1246, align 8, !tbaa !112
  %1247 = getelementptr inbounds %struct._PixelPacket, ptr %1234, i64 0, i32 3
  %1248 = load i16, ptr %1247, align 2, !tbaa !71
  %1249 = uitofp i16 %1248 to float
  %1250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %20, i64 %1232, i32 8
  store float %1249, ptr %1250, align 4, !tbaa !113
  %1251 = load i32, ptr %1173, align 4, !tbaa !94
  %1252 = icmp eq i32 %1251, 12
  %1253 = and i1 %1174, %1252
  br i1 %1253, label %1254, label %1259

1254:                                             ; preds = %1231
  %1255 = getelementptr inbounds i16, ptr %1170, i64 %1232
  %1256 = load i16, ptr %1255, align 2, !tbaa !96
  %1257 = uitofp i16 %1256 to float
  %1258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %20, i64 %1232, i32 9
  store float %1257, ptr %1258, align 8, !tbaa !114
  br label %1259

1259:                                             ; preds = %1231, %1254
  %1260 = getelementptr inbounds [16 x float], ptr %21, i64 0, i64 %1232
  store float 1.000000e+00, ptr %1260, align 4, !tbaa !115
  %1261 = load i32, ptr %1175, align 8, !tbaa !65
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1281, label %1263

1263:                                             ; preds = %1259
  %1264 = xor i16 %1248, -1
  %1265 = uitofp i16 %1264 to double
  %1266 = fmul double %1265, 0x3EF0001000100010
  %1267 = fptrunc double %1266 to float
  store float %1267, ptr %1260, align 4, !tbaa !115
  %1268 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 5
  %1269 = load float, ptr %1268, align 8, !tbaa !109
  %1270 = fmul float %1269, %1267
  store float %1270, ptr %1268, align 8, !tbaa !109
  %1271 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 6
  %1272 = load float, ptr %1271, align 4, !tbaa !111
  %1273 = fmul float %1272, %1267
  store float %1273, ptr %1271, align 4, !tbaa !111
  %1274 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 7
  %1275 = load float, ptr %1274, align 8, !tbaa !112
  %1276 = fmul float %1275, %1267
  store float %1276, ptr %1274, align 8, !tbaa !112
  br i1 %1252, label %1277, label %1281

1277:                                             ; preds = %1263
  %1278 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 9
  %1279 = load float, ptr %1278, align 8, !tbaa !114
  %1280 = fmul float %1279, %1267
  store float %1280, ptr %1278, align 8, !tbaa !114
  br label %1281

1281:                                             ; preds = %1263, %1277, %1259
  %1282 = sitofp i64 %1233 to float
  %1283 = fpext float %1282 to double
  %1284 = fsub double %1171, %1283
  %1285 = fptrunc double %1284 to float
  %1286 = fpext float %1285 to double
  %1287 = fadd double %1286, 2.000000e+00
  %1288 = fcmp ogt double %1287, 0.000000e+00
  %1289 = select i1 %1288, double %1287, double 0.000000e+00
  %1290 = fptrunc double %1289 to float
  %1291 = fpext float %1290 to double
  %1292 = fmul double %1291, %1291
  %1293 = fmul double %1292, %1291
  %1294 = fptrunc double %1293 to float
  %1295 = fadd double %1286, 1.000000e+00
  %1296 = fcmp ogt double %1295, 0.000000e+00
  %1297 = select i1 %1296, double %1295, double 0.000000e+00
  %1298 = fptrunc double %1297 to float
  %1299 = fpext float %1298 to double
  %1300 = fpext float %1294 to double
  %1301 = fmul double %1299, -4.000000e+00
  %1302 = fmul double %1301, %1299
  %1303 = call double @llvm.fmuladd.f64(double %1302, double %1299, double %1300)
  %1304 = fptrunc double %1303 to float
  %1305 = fadd double %1286, 0.000000e+00
  %1306 = fcmp ogt double %1305, 0.000000e+00
  %1307 = select i1 %1306, double %1305, double 0.000000e+00
  %1308 = fptrunc double %1307 to float
  %1309 = fpext float %1308 to double
  %1310 = fmul double %1309, 6.000000e+00
  %1311 = fmul double %1310, %1309
  %1312 = fpext float %1304 to double
  %1313 = call double @llvm.fmuladd.f64(double %1311, double %1309, double %1312)
  %1314 = fptrunc double %1313 to float
  %1315 = fadd double %1286, -1.000000e+00
  %1316 = fcmp ogt double %1315, 0.000000e+00
  %1317 = select i1 %1316, double %1315, double 0.000000e+00
  %1318 = fptrunc double %1317 to float
  %1319 = fpext float %1318 to double
  %1320 = fpext float %1314 to double
  %1321 = fmul double %1319, -4.000000e+00
  %1322 = fmul double %1321, %1319
  %1323 = call double @llvm.fmuladd.f64(double %1322, double %1319, double %1320)
  %1324 = fptrunc double %1323 to float
  %1325 = fdiv float %1324, 6.000000e+00
  %1326 = load float, ptr %1260, align 4, !tbaa !115
  %1327 = fcmp ole float %1326, 0.000000e+00
  %1328 = select i1 %1327, float 0.000000e+00, float %1326
  %1329 = fpext float %1328 to double
  %1330 = fcmp ult double %1329, 1.000000e-15
  %1331 = fdiv double 1.000000e+00, %1329
  %1332 = select i1 %1330, double 0x430C6BF52633FFFF, double %1331
  %1333 = fpext float %1325 to double
  %1334 = fmul double %1332, %1333
  %1335 = fmul double %1334, %1229
  %1336 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 5
  %1337 = load float, ptr %1336, align 8, !tbaa !109
  %1338 = fpext float %1337 to double
  %1339 = load float, ptr %1176, align 8, !tbaa !109
  %1340 = fpext float %1339 to double
  %1341 = call double @llvm.fmuladd.f64(double %1335, double %1338, double %1340)
  %1342 = fptrunc double %1341 to float
  store float %1342, ptr %1176, align 8, !tbaa !109
  %1343 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 6
  %1344 = load float, ptr %1343, align 4, !tbaa !111
  %1345 = fpext float %1344 to double
  %1346 = load float, ptr %1177, align 4, !tbaa !111
  %1347 = fpext float %1346 to double
  %1348 = call double @llvm.fmuladd.f64(double %1335, double %1345, double %1347)
  %1349 = fptrunc double %1348 to float
  store float %1349, ptr %1177, align 4, !tbaa !111
  %1350 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 7
  %1351 = load float, ptr %1350, align 8, !tbaa !112
  %1352 = fpext float %1351 to double
  %1353 = load float, ptr %1178, align 8, !tbaa !112
  %1354 = fpext float %1353 to double
  %1355 = call double @llvm.fmuladd.f64(double %1335, double %1352, double %1354)
  %1356 = fptrunc double %1355 to float
  store float %1356, ptr %1178, align 8, !tbaa !112
  br i1 %1262, label %1363, label %1357

1357:                                             ; preds = %1281
  %1358 = fmul float %1228, %1325
  %1359 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 8
  %1360 = load float, ptr %1359, align 4, !tbaa !113
  %1361 = load float, ptr %1179, align 4, !tbaa !113
  %1362 = call float @llvm.fmuladd.f32(float %1358, float %1360, float %1361)
  store float %1362, ptr %1179, align 4, !tbaa !113
  br label %1363

1363:                                             ; preds = %1357, %1281
  br i1 %1252, label %1364, label %1372

1364:                                             ; preds = %1363
  %1365 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %1232, i32 9
  %1366 = load float, ptr %1365, align 8, !tbaa !114
  %1367 = fpext float %1366 to double
  %1368 = load float, ptr %1180, align 8, !tbaa !114
  %1369 = fpext float %1368 to double
  %1370 = call double @llvm.fmuladd.f64(double %1335, double %1367, double %1369)
  %1371 = fptrunc double %1370 to float
  store float %1371, ptr %1180, align 8, !tbaa !114
  br label %1372

1372:                                             ; preds = %1364, %1363
  %1373 = add i64 %1232, 1
  %1374 = getelementptr inbounds %struct._PixelPacket, ptr %1234, i64 1
  %1375 = add nsw i64 %1233, 1
  %1376 = icmp eq i64 %1232, %1230
  br i1 %1376, label %1377, label %1231, !llvm.loop !127

1377:                                             ; preds = %1372
  %1378 = add nsw i64 %1184, 1
  %1379 = icmp eq i64 %1378, 3
  br i1 %1379, label %1380, label %1181, !llvm.loop !128

1380:                                             ; preds = %1377, %1160
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %20) #25
  br label %1381

1381:                                             ; preds = %1380, %1159, %1117, %514, %480, %428, %227, %143
  ret void
}

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BicubicInterpolate(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef %2) unnamed_addr #17 {
  %4 = fmul double %1, %1
  %5 = fptrunc double %4 to float
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 3, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 2, i32 5
  %9 = load float, ptr %8, align 8, !tbaa !109
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %12 = load float, ptr %11, align 8, !tbaa !109
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 1, i32 5
  %14 = load float, ptr %13, align 8, !tbaa !109
  %15 = fsub float %12, %14
  %16 = fsub float %10, %15
  %17 = fsub float %15, %16
  %18 = fsub float %9, %12
  %19 = fpext float %5 to double
  %20 = fmul double %19, %1
  %21 = fpext float %16 to double
  %22 = fmul float %17, %5
  %23 = fpext float %22 to double
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %21, double %23)
  %25 = fpext float %18 to double
  %26 = tail call double @llvm.fmuladd.f64(double %1, double %25, double %24)
  %27 = fpext float %14 to double
  %28 = fadd double %26, %27
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %29, ptr %30, align 8, !tbaa !109
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 3, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !111
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 2, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !111
  %35 = fsub float %32, %34
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %37 = load float, ptr %36, align 4, !tbaa !111
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 1, i32 6
  %39 = load float, ptr %38, align 4, !tbaa !111
  %40 = fsub float %37, %39
  %41 = fsub float %35, %40
  %42 = fsub float %40, %41
  %43 = fsub float %34, %37
  %44 = fpext float %41 to double
  %45 = fmul float %42, %5
  %46 = fpext float %45 to double
  %47 = tail call double @llvm.fmuladd.f64(double %20, double %44, double %46)
  %48 = fpext float %43 to double
  %49 = tail call double @llvm.fmuladd.f64(double %1, double %48, double %47)
  %50 = fpext float %39 to double
  %51 = fadd double %49, %50
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %52, ptr %53, align 4, !tbaa !111
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 3, i32 7
  %55 = load float, ptr %54, align 8, !tbaa !112
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 2, i32 7
  %57 = load float, ptr %56, align 8, !tbaa !112
  %58 = fsub float %55, %57
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %60 = load float, ptr %59, align 8, !tbaa !112
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 1, i32 7
  %62 = load float, ptr %61, align 8, !tbaa !112
  %63 = fsub float %60, %62
  %64 = fsub float %58, %63
  %65 = fsub float %63, %64
  %66 = fsub float %57, %60
  %67 = fpext float %64 to double
  %68 = fmul float %65, %5
  %69 = fpext float %68 to double
  %70 = tail call double @llvm.fmuladd.f64(double %20, double %67, double %69)
  %71 = fpext float %66 to double
  %72 = tail call double @llvm.fmuladd.f64(double %1, double %71, double %70)
  %73 = fpext float %62 to double
  %74 = fadd double %72, %73
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %75, ptr %76, align 8, !tbaa !112
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 3, i32 8
  %78 = load float, ptr %77, align 4, !tbaa !113
  %79 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 2, i32 8
  %80 = load float, ptr %79, align 4, !tbaa !113
  %81 = fsub float %78, %80
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %83 = load float, ptr %82, align 4, !tbaa !113
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 1, i32 8
  %85 = load float, ptr %84, align 4, !tbaa !113
  %86 = fsub float %83, %85
  %87 = fsub float %81, %86
  %88 = fsub float %86, %87
  %89 = fsub float %80, %83
  %90 = fpext float %87 to double
  %91 = fmul float %88, %5
  %92 = fpext float %91 to double
  %93 = tail call double @llvm.fmuladd.f64(double %20, double %90, double %92)
  %94 = fpext float %89 to double
  %95 = tail call double @llvm.fmuladd.f64(double %1, double %94, double %93)
  %96 = fpext float %85 to double
  %97 = fadd double %95, %96
  %98 = fptrunc double %97 to float
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %98, ptr %99, align 4, !tbaa !113
  %100 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !126
  %102 = icmp eq i32 %101, 12
  br i1 %102, label %103, label %127

103:                                              ; preds = %3
  %104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 3, i32 9
  %105 = load float, ptr %104, align 8, !tbaa !114
  %106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 2, i32 9
  %107 = load float, ptr %106, align 8, !tbaa !114
  %108 = fsub float %105, %107
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %110 = load float, ptr %109, align 8, !tbaa !114
  %111 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 1, i32 9
  %112 = load float, ptr %111, align 8, !tbaa !114
  %113 = fsub float %110, %112
  %114 = fsub float %108, %113
  %115 = fsub float %113, %114
  %116 = fsub float %107, %110
  %117 = fpext float %114 to double
  %118 = fmul float %115, %5
  %119 = fpext float %118 to double
  %120 = tail call double @llvm.fmuladd.f64(double %20, double %117, double %119)
  %121 = fpext float %116 to double
  %122 = tail call double @llvm.fmuladd.f64(double %1, double %121, double %120)
  %123 = fpext float %112 to double
  %124 = fadd double %122, %123
  %125 = fptrunc double %124 to float
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %125, ptr %126, align 8, !tbaa !114
  br label %127

127:                                              ; preds = %103, %3
  ret void
}

declare ptr @ExcerptImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @InterpretImageAttributes(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4091, ptr noundef nonnull @.str.20) #25
  %5 = tail call ptr @InterpretImageProperties(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret ptr %5
}

declare ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @InversesRGBCompandor(float noundef %0) local_unnamed_addr #18 {
  %2 = fpext float %0 to double
  %3 = fcmp ugt double %2, 0x40A4B58CE259D3F7
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = fdiv double %2, 1.292000e+01
  br label %11

6:                                                ; preds = %1
  %7 = tail call double @llvm.fmuladd.f64(double %2, double 0x3EF0001000100010, double 5.500000e-02)
  %8 = fdiv double %7, 1.055000e+00
  %9 = tail call double @pow(double noundef %8, double noundef 2.400000e+00) #25
  %10 = fmul double %9, 6.553500e+04
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi double [ %5, %4 ], [ %10, %6 ]
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i32 @IsMagickInstantiated() local_unnamed_addr #0 {
  %1 = tail call i32 @IsMagickCoreInstantiated() #25
  ret i32 %1
}

declare i32 @IsMagickCoreInstantiated() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @IsSubimage(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4178, ptr noundef nonnull @.str.2) #25
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 120) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 88) #28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 44) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %11
  br label %17

17:                                               ; preds = %13, %5, %8, %2, %16
  %18 = phi i32 [ 1, %16 ], [ 0, %2 ], [ 0, %8 ], [ 0, %5 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @LevelImageColors(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @LevelColorsImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #25
  ret i32 %6
}

declare i32 @LevelColorsImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @LiberateMemory(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4267, ptr noundef nonnull @.str.2) #25
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #25
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local void @LiberateSemaphoreInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4302, ptr noundef nonnull @.str.2) #25
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #25
  ret void
}

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @MagickIncarnate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4335, ptr noundef nonnull @.str.25) #25
  tail call void @MagickCoreGenesis(ptr noundef %0, i32 noundef 0) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickMonitor(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4384, ptr noundef nonnull @.str.5, ptr noundef %0) #25
  %6 = tail call ptr @AcquireExceptionInfo() #25
  %7 = load ptr, ptr @monitor_handler, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 %7(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %6) #25
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ 1, %4 ]
  %13 = tail call ptr @DestroyExceptionInfo(ptr noundef %6) #25
  ret i32 %12
}

declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MapImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._QuantizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4443, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #25
  br label %11

11:                                               ; preds = %8, %3
  call void @GetQuantizeInfo(ptr noundef nonnull %4) #25
  %12 = getelementptr inbounds %struct._QuantizeInfo, ptr %4, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !129
  %13 = call i32 @RemapImage(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #25
  ret i32 %13
}

declare void @GetQuantizeInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MapImages(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._QuantizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4497, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #25
  br label %11

11:                                               ; preds = %8, %3
  call void @GetQuantizeInfo(ptr noundef nonnull %4) #25
  %12 = getelementptr inbounds %struct._QuantizeInfo, ptr %4, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !129
  %13 = call i32 @RemapImages(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #25
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MatteFloodfillImage(ptr noundef %0, i64 %1, i16 noundef zeroext %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._PixelPacket, align 8
  store i64 %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4576, ptr noundef nonnull @.str.5, ptr noundef nonnull %12) #25
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp slt i64 %3, 0
  br i1 %15, label %341, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !63
  %19 = icmp sle i64 %18, %3
  %20 = icmp slt i64 %4, 0
  %21 = or i1 %20, %19
  br i1 %21, label %341, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !64
  %25 = icmp sgt i64 %24, %4
  br i1 %25, label %26, label %341

26:                                               ; preds = %22
  %27 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %341, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !65
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #25
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i64, ptr %17, align 8, !tbaa !63
  %37 = load i64, ptr %23, align 8, !tbaa !64
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %36, i64 noundef %37, i32 noundef 1, ptr noundef nonnull %38) #25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %341, label %41

41:                                               ; preds = %35
  %42 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %39, i32 noundef 6) #25
  %43 = tail call dereferenceable_or_null(1048576) ptr @AcquireQuantumMemory(i64 noundef 32768, i64 noundef 32) #29
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = tail call ptr @DestroyImage(ptr noundef nonnull %39) #25
  %47 = icmp eq ptr %0, null
  br i1 %47, label %341, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %50 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4599, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %49) #25
  br label %341

51:                                               ; preds = %41
  %52 = add nuw nsw i64 %4, 1
  %53 = load i64, ptr %23, align 8, !tbaa !64
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = sitofp i64 %3 to double
  store double %56, ptr %43, align 8, !tbaa !66
  %57 = sitofp i64 %4 to double
  %58 = getelementptr inbounds %struct._SegmentInfo, ptr %43, i64 0, i32 1
  store double %57, ptr %58, align 8, !tbaa !68
  %59 = getelementptr inbounds %struct._SegmentInfo, ptr %43, i64 0, i32 2
  store double %56, ptr %59, align 8, !tbaa !69
  %60 = getelementptr inbounds %struct._SegmentInfo, ptr %43, i64 0, i32 3
  store double 1.000000e+00, ptr %60, align 8, !tbaa !70
  br label %61

61:                                               ; preds = %51, %55
  %62 = phi i64 [ 32, %55 ], [ 0, %51 ]
  %63 = icmp sgt i64 %53, %4
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, ptr %43, i64 %62
  %66 = sitofp i64 %3 to double
  store double %66, ptr %65, align 8, !tbaa !66
  %67 = sitofp i64 %52 to double
  %68 = getelementptr inbounds %struct._SegmentInfo, ptr %65, i64 0, i32 1
  store double %67, ptr %68, align 8, !tbaa !68
  %69 = getelementptr inbounds %struct._SegmentInfo, ptr %65, i64 0, i32 2
  store double %66, ptr %69, align 8, !tbaa !69
  %70 = getelementptr inbounds %struct._SegmentInfo, ptr %65, i64 0, i32 3
  store double -1.000000e+00, ptr %70, align 8, !tbaa !70
  %71 = add nuw nsw i64 %62, 32
  br label %72

72:                                               ; preds = %61, %64
  %73 = phi i64 [ %71, %64 ], [ %62, %61 ]
  %74 = icmp eq i32 %5, 3
  %75 = icmp eq ptr %0, null
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %77 = icmp eq i32 %5, 3
  %78 = icmp eq i32 %5, 3
  %79 = icmp eq ptr %0, null
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %81 = icmp eq ptr %0, null
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br label %83

83:                                               ; preds = %290, %72
  %84 = phi i64 [ %73, %72 ], [ %291, %290 ]
  %85 = phi i64 [ 0, %72 ], [ %292, %290 ]
  %86 = icmp sgt i64 %84, 0
  br i1 %86, label %87, label %294

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %43, i64 %84
  %89 = add nsw i64 %84, -32
  %90 = getelementptr inbounds i8, ptr %43, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !66
  %92 = fptosi double %91 to i64
  %93 = getelementptr %struct._SegmentInfo, ptr %88, i64 -1, i32 2
  %94 = load double, ptr %93, align 8, !tbaa !69
  %95 = fptosi double %94 to i64
  %96 = getelementptr %struct._SegmentInfo, ptr %88, i64 -1, i32 3
  %97 = load double, ptr %96, align 8, !tbaa !70
  %98 = fptosi double %97 to i64
  %99 = getelementptr %struct._SegmentInfo, ptr %88, i64 -1, i32 1
  %100 = load double, ptr %99, align 8, !tbaa !68
  %101 = fptosi double %100 to i64
  %102 = add nsw i64 %101, %98
  %103 = add nsw i64 %92, 1
  %104 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %102, i64 noundef %103, i64 noundef 1, ptr noundef nonnull %38) #25
  %105 = call ptr @GetAuthenticPixels(ptr noundef nonnull %39, i64 noundef 0, i64 noundef %102, i64 noundef %103, i64 noundef 1, ptr noundef nonnull %38) #25
  %106 = icmp eq ptr %104, null
  %107 = icmp eq ptr %105, null
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %290, label %109

109:                                              ; preds = %87
  %110 = icmp sgt i64 %92, -1
  br i1 %110, label %111, label %131

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 %92
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %92
  br label %114

114:                                              ; preds = %111, %126
  %115 = phi ptr [ %127, %126 ], [ %112, %111 ]
  %116 = phi i64 [ %129, %126 ], [ %92, %111 ]
  %117 = phi ptr [ %128, %126 ], [ %113, %111 ]
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 3
  %119 = load i16, ptr %118, align 2, !tbaa !71
  %120 = icmp eq i16 %119, -1
  br i1 %120, label %131, label %121

121:                                              ; preds = %114
  %122 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %117, ptr noundef nonnull %7) #25
  %123 = icmp eq i32 %122, 0
  br i1 %74, label %124, label %125

124:                                              ; preds = %121
  br i1 %123, label %131, label %126

125:                                              ; preds = %121
  br i1 %123, label %126, label %131

126:                                              ; preds = %125, %124
  store i16 -1, ptr %118, align 2, !tbaa !71
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 -1
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 -1
  %129 = add nsw i64 %116, -1
  %130 = icmp sgt i64 %116, 0
  br i1 %130, label %114, label %131, !llvm.loop !131

131:                                              ; preds = %126, %114, %124, %125, %109
  %132 = phi i64 [ %92, %109 ], [ -1, %126 ], [ %116, %114 ], [ %116, %124 ], [ %116, %125 ]
  %133 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %39, ptr noundef nonnull %38) #25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %290, label %135

135:                                              ; preds = %131
  %136 = icmp sge i64 %132, %92
  %137 = zext i1 %136 to i32
  br i1 %136, label %158, label %138

138:                                              ; preds = %135
  %139 = add nsw i64 %132, 1
  %140 = icmp slt i64 %139, %92
  br i1 %140, label %141, label %158

141:                                              ; preds = %138
  %142 = icmp slt i64 %84, 1048608
  br i1 %142, label %146, label %143

143:                                              ; preds = %141
  br i1 %75, label %290, label %144

144:                                              ; preds = %143
  %145 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4662, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %76) #25
  br label %290

146:                                              ; preds = %141
  %147 = sub nsw i64 0, %98
  %148 = icmp sgt i64 %101, -1
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i64, ptr %23, align 8, !tbaa !64
  %151 = icmp sgt i64 %150, %101
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = sitofp i64 %139 to double
  store double %153, ptr %90, align 8, !tbaa !66
  %154 = sitofp i64 %102 to double
  store double %154, ptr %99, align 8, !tbaa !68
  %155 = add nsw i64 %92, -1
  %156 = sitofp i64 %155 to double
  store double %156, ptr %93, align 8, !tbaa !69
  %157 = sitofp i64 %147 to double
  store double %157, ptr %96, align 8, !tbaa !70
  br label %158

158:                                              ; preds = %138, %146, %149, %152, %135
  %159 = phi i64 [ %89, %135 ], [ %84, %152 ], [ %89, %149 ], [ %89, %146 ], [ %89, %138 ]
  %160 = phi i64 [ %85, %135 ], [ %139, %152 ], [ %139, %149 ], [ %139, %146 ], [ %139, %138 ]
  %161 = phi i64 [ %132, %135 ], [ %103, %152 ], [ %103, %149 ], [ %103, %146 ], [ %103, %138 ]
  %162 = add nsw i64 %102, %98
  %163 = icmp sgt i64 %162, -1
  %164 = sitofp i64 %102 to double
  %165 = sitofp i64 %98 to double
  %166 = add nsw i64 %95, 1
  %167 = sub nsw i64 0, %98
  %168 = icmp sgt i64 %101, -1
  %169 = sitofp i64 %166 to double
  %170 = sitofp i64 %102 to double
  %171 = sitofp i64 %167 to double
  %172 = add i64 %95, 1
  br label %173

173:                                              ; preds = %287, %158
  %174 = phi i64 [ %159, %158 ], [ %256, %287 ]
  %175 = phi i64 [ %160, %158 ], [ %288, %287 ]
  %176 = phi i32 [ %137, %158 ], [ 0, %287 ]
  %177 = phi i64 [ %161, %158 ], [ %288, %287 ]
  %178 = getelementptr inbounds i8, ptr %43, i64 %174
  %179 = icmp eq i32 %176, 0
  br i1 %179, label %180, label %255

180:                                              ; preds = %173
  %181 = load i64, ptr %17, align 8, !tbaa !63
  %182 = icmp slt i64 %177, %181
  br i1 %182, label %183, label %217

183:                                              ; preds = %180
  %184 = sub i64 %181, %177
  %185 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %177, i64 noundef %102, i64 noundef %184, i64 noundef 1, ptr noundef nonnull %38) #25
  %186 = load i64, ptr %17, align 8, !tbaa !63
  %187 = sub i64 %186, %177
  %188 = call ptr @GetAuthenticPixels(ptr noundef nonnull %39, i64 noundef %177, i64 noundef %102, i64 noundef %187, i64 noundef 1, ptr noundef nonnull %38) #25
  %189 = icmp eq ptr %185, null
  %190 = icmp eq ptr %188, null
  %191 = select i1 %189, i1 true, i1 %190
  br i1 %191, label %290, label %192

192:                                              ; preds = %183
  %193 = load i64, ptr %17, align 8, !tbaa !63
  %194 = icmp slt i64 %177, %193
  br i1 %194, label %195, label %213

195:                                              ; preds = %192, %207
  %196 = phi ptr [ %208, %207 ], [ %188, %192 ]
  %197 = phi i64 [ %210, %207 ], [ %177, %192 ]
  %198 = phi ptr [ %209, %207 ], [ %185, %192 ]
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 0, i32 3
  %200 = load i16, ptr %199, align 2, !tbaa !71
  %201 = icmp eq i16 %200, -1
  br i1 %201, label %213, label %202

202:                                              ; preds = %195
  %203 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %198, ptr noundef nonnull %7) #25
  %204 = icmp eq i32 %203, 0
  br i1 %77, label %205, label %206

205:                                              ; preds = %202
  br i1 %204, label %213, label %207

206:                                              ; preds = %202
  br i1 %204, label %207, label %213

207:                                              ; preds = %206, %205
  store i16 -1, ptr %199, align 2, !tbaa !71
  %208 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 1
  %209 = getelementptr inbounds %struct._PixelPacket, ptr %198, i64 1
  %210 = add nsw i64 %197, 1
  %211 = load i64, ptr %17, align 8, !tbaa !63
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %195, label %213, !llvm.loop !132

213:                                              ; preds = %207, %195, %205, %206, %192
  %214 = phi i64 [ %177, %192 ], [ %210, %207 ], [ %197, %195 ], [ %197, %205 ], [ %197, %206 ]
  %215 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %39, ptr noundef nonnull %38) #25
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %290, label %217

217:                                              ; preds = %213, %180
  %218 = phi i64 [ %214, %213 ], [ %177, %180 ]
  %219 = icmp slt i64 %174, 1048576
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  br i1 %79, label %290, label %221

221:                                              ; preds = %220
  %222 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4697, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %80) #25
  br label %290

223:                                              ; preds = %217
  br i1 %163, label %224, label %235

224:                                              ; preds = %223
  %225 = load i64, ptr %23, align 8, !tbaa !64
  %226 = icmp slt i64 %162, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %224
  %228 = sitofp i64 %175 to double
  store double %228, ptr %178, align 8, !tbaa !66
  %229 = getelementptr inbounds %struct._SegmentInfo, ptr %178, i64 0, i32 1
  store double %164, ptr %229, align 8, !tbaa !68
  %230 = add nsw i64 %218, -1
  %231 = sitofp i64 %230 to double
  %232 = getelementptr inbounds %struct._SegmentInfo, ptr %178, i64 0, i32 2
  store double %231, ptr %232, align 8, !tbaa !69
  %233 = getelementptr inbounds %struct._SegmentInfo, ptr %178, i64 0, i32 3
  store double %165, ptr %233, align 8, !tbaa !70
  %234 = add nsw i64 %174, 32
  br label %235

235:                                              ; preds = %223, %224, %227
  %236 = phi i64 [ %234, %227 ], [ %174, %224 ], [ %174, %223 ]
  %237 = getelementptr inbounds i8, ptr %43, i64 %236
  %238 = icmp sgt i64 %218, %166
  br i1 %238, label %239, label %255

239:                                              ; preds = %235
  %240 = icmp slt i64 %236, 1048576
  br i1 %240, label %244, label %241

241:                                              ; preds = %239
  br i1 %81, label %290, label %242

242:                                              ; preds = %241
  %243 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4699, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %82) #25
  br label %290

244:                                              ; preds = %239
  br i1 %168, label %245, label %255

245:                                              ; preds = %244
  %246 = load i64, ptr %23, align 8, !tbaa !64
  %247 = icmp sgt i64 %246, %101
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  store double %169, ptr %237, align 8, !tbaa !66
  %249 = getelementptr inbounds %struct._SegmentInfo, ptr %237, i64 0, i32 1
  store double %170, ptr %249, align 8, !tbaa !68
  %250 = add nsw i64 %218, -1
  %251 = sitofp i64 %250 to double
  %252 = getelementptr inbounds %struct._SegmentInfo, ptr %237, i64 0, i32 2
  store double %251, ptr %252, align 8, !tbaa !69
  %253 = getelementptr inbounds %struct._SegmentInfo, ptr %237, i64 0, i32 3
  store double %171, ptr %253, align 8, !tbaa !70
  %254 = add nsw i64 %236, 32
  br label %255

255:                                              ; preds = %235, %244, %245, %248, %173
  %256 = phi i64 [ %254, %248 ], [ %236, %245 ], [ %236, %244 ], [ %236, %235 ], [ %174, %173 ]
  %257 = phi i64 [ %218, %248 ], [ %218, %245 ], [ %218, %244 ], [ %218, %235 ], [ %177, %173 ]
  %258 = add nsw i64 %257, 1
  %259 = icmp slt i64 %257, %95
  br i1 %259, label %260, label %287

260:                                              ; preds = %255
  %261 = sub nsw i64 %95, %258
  %262 = add nsw i64 %261, 1
  %263 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %258, i64 noundef %102, i64 noundef %262, i64 noundef 1, ptr noundef nonnull %38) #25
  %264 = call ptr @GetAuthenticPixels(ptr noundef nonnull %39, i64 noundef %258, i64 noundef %102, i64 noundef %262, i64 noundef 1, ptr noundef nonnull %38) #25
  %265 = icmp eq ptr %263, null
  %266 = icmp eq ptr %264, null
  %267 = select i1 %265, i1 true, i1 %266
  br i1 %267, label %290, label %268

268:                                              ; preds = %260
  %269 = icmp slt i64 %257, %95
  br i1 %269, label %270, label %287

270:                                              ; preds = %268, %282
  %271 = phi ptr [ %284, %282 ], [ %264, %268 ]
  %272 = phi i64 [ %285, %282 ], [ %258, %268 ]
  %273 = phi ptr [ %283, %282 ], [ %263, %268 ]
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 3
  %275 = load i16, ptr %274, align 2, !tbaa !71
  %276 = icmp eq i16 %275, -1
  br i1 %276, label %287, label %277

277:                                              ; preds = %270
  %278 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %273, ptr noundef nonnull %7) #25
  %279 = icmp eq i32 %278, 0
  br i1 %78, label %280, label %281

280:                                              ; preds = %277
  br i1 %279, label %282, label %287

281:                                              ; preds = %277
  br i1 %279, label %287, label %282

282:                                              ; preds = %281, %280
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %273, i64 1
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 1
  %285 = add i64 %272, 1
  %286 = icmp eq i64 %272, %95
  br i1 %286, label %287, label %270, !llvm.loop !133

287:                                              ; preds = %281, %280, %270, %282, %268, %255
  %288 = phi i64 [ %258, %255 ], [ %258, %268 ], [ %172, %282 ], [ %272, %270 ], [ %272, %280 ], [ %272, %281 ]
  %289 = icmp sgt i64 %288, %95
  br i1 %289, label %290, label %173, !llvm.loop !134

290:                                              ; preds = %287, %183, %213, %260, %241, %242, %220, %221, %143, %144, %131, %87
  %291 = phi i64 [ %89, %87 ], [ %89, %131 ], [ %89, %144 ], [ %89, %143 ], [ %174, %221 ], [ %174, %220 ], [ %236, %242 ], [ %236, %241 ], [ %174, %183 ], [ %174, %213 ], [ %256, %260 ], [ %256, %287 ]
  %292 = phi i64 [ %85, %87 ], [ %85, %131 ], [ %139, %144 ], [ %139, %143 ], [ %175, %221 ], [ %175, %220 ], [ %175, %242 ], [ %175, %241 ], [ %175, %183 ], [ %175, %213 ], [ %175, %260 ], [ %288, %287 ]
  %293 = phi i32 [ 3, %87 ], [ 3, %131 ], [ 1, %144 ], [ 1, %143 ], [ 1, %221 ], [ 1, %220 ], [ 1, %242 ], [ 1, %241 ], [ 0, %260 ], [ 0, %213 ], [ 0, %183 ], [ 0, %287 ]
  switch i32 %293, label %341 [
    i32 0, label %83
    i32 3, label %294
  ], !llvm.loop !135

294:                                              ; preds = %290, %83
  %295 = load i64, ptr %23, align 8, !tbaa !64
  %296 = icmp sgt i64 %295, 0
  br i1 %296, label %297, label %334

297:                                              ; preds = %294, %330
  %298 = phi i64 [ %331, %330 ], [ 0, %294 ]
  %299 = load i64, ptr %17, align 8, !tbaa !63
  %300 = call ptr @GetVirtualPixels(ptr noundef nonnull %39, i64 noundef 0, i64 noundef %298, i64 noundef %299, i64 noundef 1, ptr noundef nonnull %38) #25
  %301 = load i64, ptr %17, align 8, !tbaa !63
  %302 = call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef 0, i64 noundef %298, i64 noundef %301, i64 noundef 1, ptr noundef nonnull %38) #25
  %303 = icmp eq ptr %300, null
  %304 = icmp eq ptr %302, null
  %305 = select i1 %303, i1 true, i1 %304
  br i1 %305, label %327, label %306

306:                                              ; preds = %297
  %307 = load i64, ptr %17, align 8, !tbaa !63
  %308 = icmp sgt i64 %307, 0
  br i1 %308, label %309, label %323

309:                                              ; preds = %306, %318
  %310 = phi ptr [ %320, %318 ], [ %302, %306 ]
  %311 = phi i64 [ %321, %318 ], [ 0, %306 ]
  %312 = phi ptr [ %319, %318 ], [ %300, %306 ]
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 0, i32 3
  %314 = load i16, ptr %313, align 2, !tbaa !71
  %315 = icmp eq i16 %314, 0
  br i1 %315, label %318, label %316

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct._PixelPacket, ptr %310, i64 0, i32 3
  store i16 %2, ptr %317, align 2, !tbaa !71
  br label %318

318:                                              ; preds = %316, %309
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 1
  %320 = getelementptr inbounds %struct._PixelPacket, ptr %310, i64 1
  %321 = add nuw nsw i64 %311, 1
  %322 = icmp eq i64 %321, %307
  br i1 %322, label %323, label %309, !llvm.loop !136

323:                                              ; preds = %318, %306
  %324 = call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %38) #25
  %325 = icmp eq i32 %324, 0
  %326 = select i1 %325, i32 15, i32 0
  br label %327

327:                                              ; preds = %323, %297
  %328 = phi i32 [ 15, %297 ], [ %326, %323 ]
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = add nuw nsw i64 %298, 1
  %332 = load i64, ptr %23, align 8, !tbaa !64
  %333 = icmp slt i64 %331, %332
  br i1 %333, label %297, label %334, !llvm.loop !137

334:                                              ; preds = %330, %327, %294
  %335 = phi i64 [ 0, %294 ], [ %331, %330 ], [ %298, %327 ]
  %336 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %43) #25
  %337 = call ptr @DestroyImage(ptr noundef nonnull %39) #25
  %338 = load i64, ptr %23, align 8, !tbaa !64
  %339 = icmp eq i64 %335, %338
  %340 = zext i1 %339 to i32
  br label %341

341:                                              ; preds = %290, %45, %48, %35, %26, %22, %14, %16, %334
  %342 = phi i32 [ %340, %334 ], [ 0, %16 ], [ 0, %14 ], [ 0, %22 ], [ 0, %26 ], [ 0, %35 ], [ 0, %48 ], [ 0, %45 ], [ 0, %290 ]
  ret i32 %342
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MaximumImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @EvaluateImages(ptr noundef %0, i32 noundef 6, ptr noundef %1) #25
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MinimumImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @EvaluateImages(ptr noundef %0, i32 noundef 6, ptr noundef %1) #25
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MedianFilterImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = fptoui double %1 to i64
  %5 = tail call ptr @StatisticImage(ptr noundef %0, i32 noundef 4, i64 noundef %4, i64 noundef %4, ptr noundef %2) #25
  ret ptr %5
}

declare ptr @StatisticImage(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ModeImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = fptoui double %1 to i64
  %5 = tail call ptr @StatisticImage(ptr noundef %0, i32 noundef 6, i64 noundef %4, i64 noundef %4, ptr noundef %2) #25
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MosaicImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @MergeImageLayers(ptr noundef %0, i32 noundef 15, ptr noundef %1) #25
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @OpaqueImage(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._PixelPacket, align 8
  store i64 %1, ptr %5, align 8
  %6 = trunc i64 %2 to i48
  %7 = lshr i64 %2, 48
  %8 = trunc i64 %7 to i16
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5000, ptr noundef nonnull @.str.26) #25
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !41
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5002, ptr noundef nonnull @.str.5, ptr noundef nonnull %14) #25
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, ptr %0, align 8, !tbaa !138
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !64
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %134

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %39

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !139
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %92

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %78

35:                                               ; preds = %75
  %36 = add nuw nsw i64 %40, 1
  %37 = load i64, ptr %20, align 8, !tbaa !64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %134, !llvm.loop !140

39:                                               ; preds = %23, %35
  %40 = phi i64 [ 0, %23 ], [ %36, %35 ]
  %41 = load i64, ptr %24, align 8, !tbaa !63
  %42 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %40, i64 noundef %41, i64 noundef 1, ptr noundef nonnull %25) #25
  %43 = icmp eq ptr %42, null
  br i1 %43, label %75, label %44

44:                                               ; preds = %39
  %45 = load i64, ptr %24, align 8, !tbaa !63
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44, %54
  %48 = phi ptr [ %55, %54 ], [ %42, %44 ]
  %49 = phi i64 [ %56, %54 ], [ 0, %44 ]
  %50 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %48, ptr noundef nonnull %5) #25
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  store i48 %6, ptr %48, align 2, !tbaa.struct !141
  %53 = getelementptr inbounds i8, ptr %48, i64 6
  store i16 %8, ptr %53, align 2, !tbaa.struct !142
  br label %54

54:                                               ; preds = %52, %47
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 1
  %56 = add nuw nsw i64 %49, 1
  %57 = load i64, ptr %24, align 8, !tbaa !63
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %47, label %59, !llvm.loop !143

59:                                               ; preds = %54, %44
  %60 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %25) #25
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  %63 = load i64, ptr %20, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #25
  %64 = load ptr, ptr %26, align 8, !tbaa !144
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.27, ptr noundef nonnull %27) #25
  %68 = load ptr, ptr %26, align 8, !tbaa !144
  %69 = load ptr, ptr %28, align 8, !tbaa !145
  %70 = call i32 %68(ptr noundef nonnull %4, i64 noundef %40, i64 noundef %63, ptr noundef %69) #25
  br label %71

71:                                               ; preds = %62, %66
  %72 = phi i32 [ %70, %66 ], [ 1, %62 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #25
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 3, i32 0
  br label %75

75:                                               ; preds = %71, %59, %39
  %76 = phi i32 [ 3, %39 ], [ 3, %59 ], [ %74, %71 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %35, label %134

78:                                               ; preds = %33, %88
  %79 = phi i64 [ 0, %33 ], [ %89, %88 ]
  %80 = load ptr, ptr %34, align 8, !tbaa !146
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 %79
  %82 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef %81, ptr noundef nonnull %5) #25
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %34, align 8, !tbaa !146
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 %79
  store i48 %6, ptr %86, align 2, !tbaa.struct !141
  %87 = getelementptr inbounds i8, ptr %86, i64 6
  store i16 %8, ptr %87, align 2, !tbaa.struct !142
  br label %88

88:                                               ; preds = %78, %84
  %89 = add nuw nsw i64 %79, 1
  %90 = load i64, ptr %30, align 8, !tbaa !139
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %78, label %92, !llvm.loop !147

92:                                               ; preds = %88, %29
  %93 = icmp ult i64 %2, 281474976710656
  br i1 %93, label %132, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %96 = load i64, ptr %95, align 8, !tbaa !64
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br label %105

101:                                              ; preds = %129
  %102 = add nuw nsw i64 %106, 1
  %103 = load i64, ptr %95, align 8, !tbaa !64
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %132, !llvm.loop !148

105:                                              ; preds = %98, %101
  %106 = phi i64 [ 0, %98 ], [ %102, %101 ]
  %107 = load i64, ptr %99, align 8, !tbaa !63
  %108 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %106, i64 noundef %107, i64 noundef 1, ptr noundef nonnull %100) #25
  %109 = icmp eq ptr %108, null
  br i1 %109, label %129, label %110

110:                                              ; preds = %105
  %111 = load i64, ptr %99, align 8, !tbaa !63
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110, %120
  %114 = phi ptr [ %121, %120 ], [ %108, %110 ]
  %115 = phi i64 [ %122, %120 ], [ 0, %110 ]
  %116 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %114, ptr noundef nonnull %5) #25
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 3
  store i16 %8, ptr %119, align 2, !tbaa !71
  br label %120

120:                                              ; preds = %118, %113
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 1
  %122 = add nuw nsw i64 %115, 1
  %123 = load i64, ptr %99, align 8, !tbaa !63
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %113, label %125, !llvm.loop !149

125:                                              ; preds = %120, %110
  %126 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %100) #25
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 12, i32 0
  br label %129

129:                                              ; preds = %125, %105
  %130 = phi i32 [ 12, %105 ], [ %128, %125 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %101, label %132

132:                                              ; preds = %101, %129, %94, %92
  %133 = call i32 @SyncImage(ptr noundef nonnull %0) #25
  br label %134

134:                                              ; preds = %35, %75, %19, %132
  %135 = icmp ult i64 %2, 281474976710656
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %137, align 8, !tbaa !65
  br label %138

138:                                              ; preds = %136, %134
  ret i32 1
}

declare i32 @SyncImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @OpenCacheView(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %3 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %2) #25
  ret ptr %3
}

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @OpenMagickStream(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #12 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #30
  store i32 22, ptr %7, align 4, !tbaa !38
  br label %10

8:                                                ; preds = %2
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ null, %6 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @PaintFloodfillImage(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp ne i32 %6, 3
  %9 = zext i1 %8 to i32
  %10 = tail call i32 @FloodfillPaintImage(ptr noundef %0, i32 noundef %1, ptr noundef %5, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %9) #25
  ret i32 %10
}

declare i32 @FloodfillPaintImage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @PaintOpaqueImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2, i32 noundef 0) #25
  ret i32 %4
}

declare i32 @OpaquePaintImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @PaintOpaqueImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #25
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PaintTransparentImage(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call i32 @TransparentPaintImage(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef 0) #25
  ret i32 %4
}

declare i32 @TransparentPaintImage(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseImageGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5498, ptr noundef nonnull @.str.25) #25
  %7 = tail call i32 @ParseMetaGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #25
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseSizeGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5539, ptr noundef nonnull @.str.28) #25
  tail call void @SetGeometry(ptr noundef %0, ptr noundef %2) #25
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %8 = tail call i32 @ParseMetaGeometry(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %7) #25
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PopImageList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5574, ptr noundef nonnull @.str.7) #25
  %3 = tail call ptr @RemoveLastImageFromList(ptr noundef %0) #25
  ret ptr %3
}

declare ptr @RemoveLastImageFromList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @PopImagePixels(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @AcquireQuantumInfo(ptr noundef null, ptr noundef %0) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %8 = tail call i64 @ExportQuantumPixels(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #25
  %9 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %4) #25
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i64 [ %8, %6 ], [ 0, %3 ]
  ret i64 %11
}

declare ptr @AcquireQuantumInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ExportQuantumPixels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyQuantumInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PostscriptGeometry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5657, ptr noundef nonnull @.str.25) #25
  %3 = tail call ptr @GetPageGeometry(ptr noundef %0) #25
  ret ptr %3
}

declare ptr @GetPageGeometry(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PushImageList(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5695, ptr noundef nonnull @.str.7) #25
  %5 = tail call ptr @CloneImageList(ptr noundef %1, ptr noundef %2) #25
  tail call void @AppendImageToList(ptr noundef %0, ptr noundef %5) #25
  ret i32 1
}

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CloneImageList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @PushImagePixels(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @AcquireQuantumInfo(ptr noundef null, ptr noundef %0) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %8 = tail call i64 @ImportQuantumPixels(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #25
  %9 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %4) #25
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i64 [ %8, %6 ], [ 0, %3 ]
  ret i64 %11
}

declare i64 @ImportQuantumPixels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @QuantizationError(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5796, ptr noundef nonnull @.str.23) #25
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i32 @GetImageQuantizeError(ptr noundef %0) #25
  ret i32 %8
}

declare i32 @GetImageQuantizeError(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RadialBlurImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RotationalBlurImage(ptr noundef %0, double noundef %1, ptr noundef %2) #25
  ret ptr %4
}

declare ptr @RotationalBlurImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RadialBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @RotationalBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) #25
  ret ptr %5
}

declare ptr @RotationalBlurImageChannel(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RandomChannelThresholdImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5911, ptr noundef nonnull @.str.5, ptr noundef nonnull %11) #25
  br label %13

13:                                               ; preds = %10, %4
  %14 = load i32, ptr %7, align 8, !tbaa !41
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5915, ptr noundef nonnull @.str.2) #25
  br label %18

18:                                               ; preds = %16, %13
  %19 = icmp eq ptr %2, null
  br i1 %19, label %265, label %20

20:                                               ; preds = %18
  store double 0.000000e+00, ptr %5, align 8, !tbaa !150
  store double 0.000000e+00, ptr %6, align 8, !tbaa !150
  %21 = tail call i32 @LocaleCompare(ptr noundef nonnull %2, ptr noundef nonnull @.str.29) #25
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %2, ptr noundef nonnull @.str.30) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @LocaleCompare(ptr noundef nonnull %2, ptr noundef nonnull @.str.31) #25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.32, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %31 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #28
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load double, ptr %6, align 8, !tbaa !150
  %35 = fmul double %34, 6.553500e+02
  store double %35, ptr %6, align 8, !tbaa !150
  %36 = load double, ptr %5, align 8, !tbaa !150
  %37 = fmul double %36, 6.553500e+02
  store double %37, ptr %5, align 8, !tbaa !150
  br label %38

38:                                               ; preds = %33, %29
  %39 = icmp eq i32 %30, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load double, ptr %5, align 8, !tbaa !150
  %42 = fsub double 6.553500e+04, %41
  store double %42, ptr %6, align 8, !tbaa !150
  br label %43

43:                                               ; preds = %26, %23, %20, %38, %40
  %44 = phi i1 [ true, %40 ], [ true, %38 ], [ false, %20 ], [ false, %23 ], [ false, %26 ]
  %45 = phi i1 [ false, %40 ], [ false, %38 ], [ false, %20 ], [ true, %23 ], [ false, %26 ]
  %46 = load i32, ptr %7, align 8, !tbaa !41
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5942, ptr noundef nonnull @.str.33, ptr noundef %1) #25
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, ptr %7, align 8, !tbaa !41
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load double, ptr %5, align 8, !tbaa !150
  %55 = load double, ptr %6, align 8, !tbaa !150
  %56 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5945, ptr noundef nonnull @.str.34, ptr noundef nonnull %2, double noundef %54, double noundef %55) #25
  br label %57

57:                                               ; preds = %53, %50
  %58 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.35) #25
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.36) #25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60, %57
  %64 = call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef 2) #25
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = icmp eq ptr %0, null
  br i1 %67, label %265, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %71 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %69, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5951, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %70) #25
  br label %265

72:                                               ; preds = %63, %60
  %73 = call ptr @AcquireRandomInfo() #25
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %75 = load i64, ptr %74, align 8, !tbaa !64
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %263

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %80 = icmp eq ptr %0, null
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %84

84:                                               ; preds = %77, %259
  %85 = phi i64 [ 0, %77 ], [ %260, %259 ]
  %86 = load i64, ptr %78, align 8, !tbaa !63
  %87 = call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef 0, i64 noundef %85, i64 noundef %86, i64 noundef 1, ptr noundef %3) #25
  %88 = icmp eq ptr %87, null
  br i1 %88, label %257, label %89

89:                                               ; preds = %84
  %90 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.35) #25
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.36) #25
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %170

95:                                               ; preds = %92, %89
  %96 = call ptr @GetAuthenticIndexQueue(ptr noundef %0) #25
  %97 = load i64, ptr %78, align 8, !tbaa !63
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %170

99:                                               ; preds = %95
  %100 = shl i64 %85, 2
  %101 = and i64 %100, 12
  %102 = urem i64 %85, 3
  %103 = mul nuw nsw i64 %102, 3
  %104 = shl nuw i64 %85, 1
  %105 = and i64 %104, 2
  %106 = icmp eq ptr %96, null
  br label %107

107:                                              ; preds = %99, %152
  %108 = phi ptr [ %87, %99 ], [ %166, %152 ]
  %109 = phi i64 [ 0, %99 ], [ %167, %152 ]
  %110 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %108) #26
  br i1 %44, label %111, label %126

111:                                              ; preds = %107
  %112 = fpext float %110 to double
  %113 = load double, ptr %5, align 8, !tbaa !150
  %114 = fcmp ogt double %113, %112
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = fptrunc double %113 to float
  br label %146

117:                                              ; preds = %111
  %118 = load double, ptr %6, align 8, !tbaa !150
  %119 = fcmp olt double %118, %112
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = fptrunc double %118 to float
  br label %146

122:                                              ; preds = %117
  %123 = call double @GetPseudoRandomValue(ptr noundef %73) #25
  %124 = fmul double %123, 6.553500e+04
  %125 = fptrunc double %124 to float
  br label %146

126:                                              ; preds = %107
  br i1 %22, label %127, label %133

127:                                              ; preds = %126
  %128 = and i64 %109, 1
  %129 = or disjoint i64 %128, %105
  %130 = getelementptr inbounds [4 x float], ptr @RandomChannelThresholdImage.o2, i64 0, i64 %129
  %131 = load float, ptr %130, align 4, !tbaa !115
  %132 = fmul float %131, 6.553500e+04
  br label %146

133:                                              ; preds = %126
  br i1 %45, label %134, label %140

134:                                              ; preds = %133
  %135 = urem i64 %109, 3
  %136 = add nuw nsw i64 %135, %103
  %137 = getelementptr inbounds [9 x float], ptr @RandomChannelThresholdImage.o3, i64 0, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !115
  %139 = fmul float %138, 6.553500e+04
  br label %146

140:                                              ; preds = %133
  %141 = and i64 %109, 3
  %142 = or disjoint i64 %141, %101
  %143 = getelementptr inbounds [16 x float], ptr @RandomChannelThresholdImage.o4, i64 0, i64 %142
  %144 = load float, ptr %143, align 4, !tbaa !115
  %145 = fmul float %144, 6.553500e+04
  br label %146

146:                                              ; preds = %127, %140, %134, %115, %122, %120
  %147 = phi float [ %132, %127 ], [ %145, %140 ], [ %139, %134 ], [ %116, %115 ], [ %125, %122 ], [ %121, %120 ]
  store float %147, ptr @RandomChannelThresholdImage.threshold, align 4, !tbaa !115
  %148 = fcmp ugt float %110, %147
  br i1 %106, label %152, label %149

149:                                              ; preds = %146
  %150 = zext i1 %148 to i16
  %151 = getelementptr inbounds i16, ptr %96, i64 %109
  store i16 %150, ptr %151, align 2, !tbaa !96
  br label %152

152:                                              ; preds = %149, %146
  %153 = load ptr, ptr %79, align 8, !tbaa !146
  %154 = zext i1 %148 to i64
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %154, i32 2
  %156 = load i16, ptr %155, align 2, !tbaa !86
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  store i16 %156, ptr %157, align 2, !tbaa !86
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %154, i32 1
  %159 = load i16, ptr %158, align 2, !tbaa !87
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  store i16 %159, ptr %160, align 2, !tbaa !87
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %154
  %162 = load i16, ptr %161, align 2, !tbaa !88
  store i16 %162, ptr %108, align 2, !tbaa !88
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %154, i32 3
  %164 = load i16, ptr %163, align 2, !tbaa !71
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  store i16 %164, ptr %165, align 2, !tbaa !71
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %167 = add nuw nsw i64 %109, 1
  %168 = load i64, ptr %78, align 8, !tbaa !63
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %107, label %170, !llvm.loop !151

170:                                              ; preds = %152, %95, %92
  %171 = phi ptr [ %87, %92 ], [ %87, %95 ], [ %166, %152 ]
  %172 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.37) #25
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %170
  %175 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.35) #25
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.38) #25
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %247

180:                                              ; preds = %177, %174, %170
  %181 = load i32, ptr %83, align 8, !tbaa !65
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %253, label %183

183:                                              ; preds = %180
  %184 = load i64, ptr %78, align 8, !tbaa !63
  %185 = icmp sgt i64 %184, 0
  br i1 %185, label %186, label %253

186:                                              ; preds = %183
  %187 = shl i64 %85, 2
  %188 = and i64 %187, 12
  %189 = urem i64 %85, 3
  %190 = mul nuw nsw i64 %189, 3
  %191 = shl nuw i64 %85, 1
  %192 = and i64 %191, 2
  br label %193

193:                                              ; preds = %186, %236
  %194 = phi ptr [ %171, %186 ], [ %243, %236 ]
  %195 = phi i64 [ 0, %186 ], [ %244, %236 ]
  br i1 %44, label %196, label %213

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct._PixelPacket, ptr %194, i64 0, i32 3
  %198 = load i16, ptr %197, align 2, !tbaa !71
  %199 = uitofp i16 %198 to double
  %200 = load double, ptr %5, align 8, !tbaa !150
  %201 = fcmp ogt double %200, %199
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = fptrunc double %200 to float
  br label %236

204:                                              ; preds = %196
  %205 = load double, ptr %6, align 8, !tbaa !150
  %206 = fcmp olt double %205, %199
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = fptrunc double %205 to float
  br label %236

209:                                              ; preds = %204
  %210 = call double @GetPseudoRandomValue(ptr noundef %73) #25
  %211 = fmul double %210, 6.553500e+04
  %212 = fptrunc double %211 to float
  br label %236

213:                                              ; preds = %193
  br i1 %22, label %214, label %220

214:                                              ; preds = %213
  %215 = and i64 %195, 1
  %216 = or disjoint i64 %215, %192
  %217 = getelementptr inbounds [4 x float], ptr @RandomChannelThresholdImage.o2, i64 0, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !115
  %219 = fmul float %218, 6.553500e+04
  br label %236

220:                                              ; preds = %213
  br i1 %45, label %221, label %227

221:                                              ; preds = %220
  %222 = urem i64 %195, 3
  %223 = add nuw nsw i64 %222, %190
  %224 = getelementptr inbounds [9 x float], ptr @RandomChannelThresholdImage.o3, i64 0, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !115
  %226 = fmul float %225, 6.553500e+04
  br label %236

227:                                              ; preds = %220
  %228 = and i64 %195, 3
  %229 = or disjoint i64 %228, %188
  %230 = getelementptr inbounds [16 x float], ptr @RandomChannelThresholdImage.o4, i64 0, i64 %229
  %231 = load float, ptr %230, align 4, !tbaa !115
  %232 = fmul float %231, 6.553500e+04
  %233 = fpext float %232 to double
  %234 = fdiv double %233, 1.700000e+00
  %235 = fptrunc double %234 to float
  br label %236

236:                                              ; preds = %214, %227, %221, %202, %209, %207
  %237 = phi float [ %219, %214 ], [ %235, %227 ], [ %226, %221 ], [ %203, %202 ], [ %212, %209 ], [ %208, %207 ]
  store float %237, ptr @RandomChannelThresholdImage.threshold, align 4, !tbaa !115
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %194, i64 0, i32 3
  %239 = load i16, ptr %238, align 2, !tbaa !71
  %240 = uitofp i16 %239 to float
  %241 = fcmp ult float %237, %240
  %242 = sext i1 %241 to i16
  store i16 %242, ptr %238, align 2, !tbaa !71
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %194, i64 1
  %244 = add nuw nsw i64 %195, 1
  %245 = load i64, ptr %78, align 8, !tbaa !63
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %193, label %253, !llvm.loop !152

247:                                              ; preds = %177
  %248 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.36) #25
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  br i1 %80, label %257, label %251

251:                                              ; preds = %250
  %252 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %81, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6033, i32 noundef 410, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef nonnull %82) #25
  br label %257

253:                                              ; preds = %236, %183, %247, %180
  %254 = call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %3) #25
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %255, i32 2, i32 0
  br label %257

257:                                              ; preds = %253, %250, %251, %84
  %258 = phi i32 [ 2, %84 ], [ 1, %251 ], [ 1, %250 ], [ %256, %253 ]
  switch i32 %258, label %265 [
    i32 0, label %259
    i32 2, label %263
  ]

259:                                              ; preds = %257
  %260 = add nuw nsw i64 %85, 1
  %261 = load i64, ptr %74, align 8, !tbaa !64
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %84, label %263, !llvm.loop !153

263:                                              ; preds = %259, %257, %72
  %264 = call ptr @DestroyRandomInfo(ptr noundef %73) #25
  br label %265

265:                                              ; preds = %257, %66, %68, %18, %263
  %266 = phi i32 [ 1, %263 ], [ 1, %18 ], [ 0, %68 ], [ 0, %66 ], [ 0, %257 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %266
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

declare ptr @AcquireRandomInfo() local_unnamed_addr #1

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ReacquireMemory(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6075, ptr noundef nonnull @.str.2) #25
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @AcquireMagickMemory(i64 noundef %1) #27
  br label %14

8:                                                ; preds = %2
  %9 = tail call ptr @realloc(ptr noundef nonnull %4, i64 noundef %1) #32
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = tail call ptr @RelinquishMagickMemory(ptr noundef %12) #25
  store ptr %13, ptr %0, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %8, %11, %6
  %15 = phi ptr [ %7, %6 ], [ %9, %11 ], [ %9, %8 ]
  store ptr %15, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @RecolorImage(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.40) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %5, i64 0, i32 1
  store i64 %1, ptr %8, align 8, !tbaa !154
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %5, i64 0, i32 2
  store i64 %1, ptr %9, align 8, !tbaa !156
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %5, i64 0, i32 5
  store ptr %2, ptr %10, align 8, !tbaa !157
  %11 = tail call ptr @ColorMatrixImage(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3) #25
  store ptr null, ptr %10, align 8, !tbaa !157
  %12 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %5) #25
  br label %13

13:                                               ; preds = %4, %7
  %14 = phi ptr [ %11, %7 ], [ null, %4 ]
  ret ptr %14
}

declare ptr @AcquireKernelInfo(ptr noundef) local_unnamed_addr #1

declare ptr @ColorMatrixImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyKernelInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ReduceNoiseImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = fptoui double %1 to i64
  %5 = tail call ptr @StatisticImage(ptr noundef %0, i32 noundef 7, i64 noundef %4, i64 noundef %4, ptr noundef %2) #25
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @RelinquishSemaphoreInfo(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @UnlockSemaphoreInfo(ptr noundef %0) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetImageAttributeIterator(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ResetImagePropertyIterator(ptr noundef %0) #25
  ret void
}

declare void @ResetImagePropertyIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @SetCacheViewPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @GetCacheViewException(ptr noundef %0) #25
  %7 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %6) #26
  ret ptr %7
}

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SetCacheThreshold(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6316, ptr noundef nonnull @.str.25) #25
  %3 = shl i64 %0, 20
  %4 = tail call i32 @SetMagickResourceLimit(i32 noundef 5, i64 noundef %3) #25
  %5 = shl i64 %0, 21
  %6 = tail call i32 @SetMagickResourceLimit(i32 noundef 4, i64 noundef %5) #25
  ret void
}

declare i32 @SetMagickResourceLimit(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetExceptionInfo(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @ClearMagickException(ptr noundef %0) #25
  store i32 %1, ptr %0, align 8, !tbaa !158
  ret i32 1
}

declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @SetImage(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6390, ptr noundef nonnull @.str.41) #25
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6393, ptr noundef nonnull @.str.24) #25
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %11 = load i16, ptr %10, align 8, !tbaa.struct !141
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa.struct !159
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa.struct !160
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa.struct !142
  %18 = icmp eq i16 %1, 0
  %19 = select i1 %18, i16 %17, i16 %1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #25
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %23, align 8, !tbaa !65
  br label %24

24:                                               ; preds = %21, %9
  %25 = load i32, ptr %0, align 8, !tbaa !138
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !94
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !64
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %114

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br label %90

38:                                               ; preds = %27, %24
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !64
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %114

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br label %49

45:                                               ; preds = %83
  %46 = add nuw nsw i64 %50, 1
  %47 = load i64, ptr %39, align 8, !tbaa !64
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %114, !llvm.loop !161

49:                                               ; preds = %42, %45
  %50 = phi i64 [ 0, %42 ], [ %46, %45 ]
  %51 = load i64, ptr %43, align 8, !tbaa !63
  %52 = tail call ptr @QueueAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %50, i64 noundef %51, i64 noundef 1, ptr noundef nonnull %44) #25
  %53 = icmp eq ptr %52, null
  br i1 %53, label %83, label %54

54:                                               ; preds = %49
  %55 = load i64, ptr %43, align 8, !tbaa !63
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54, %57
  %58 = phi ptr [ %63, %57 ], [ %52, %54 ]
  %59 = phi i64 [ %64, %57 ], [ 0, %54 ]
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  store i16 %15, ptr %60, align 2, !tbaa !86
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  store i16 %13, ptr %61, align 2, !tbaa !87
  store i16 %11, ptr %58, align 2, !tbaa !88
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  store i16 %19, ptr %62, align 2, !tbaa !71
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %64 = add nuw nsw i64 %59, 1
  %65 = icmp eq i64 %64, %55
  br i1 %65, label %66, label %57, !llvm.loop !162

66:                                               ; preds = %57, %54
  %67 = tail call ptr @GetAuthenticIndexQueue(ptr noundef nonnull %0) #25
  %68 = load i64, ptr %43, align 8, !tbaa !63
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = icmp eq ptr %67, null
  br label %72

72:                                               ; preds = %70, %76
  %73 = phi i64 [ 0, %70 ], [ %77, %76 ]
  br i1 %71, label %76, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds i16, ptr %67, i64 %73
  store i16 0, ptr %75, align 2, !tbaa !96
  br label %76

76:                                               ; preds = %72, %74
  %77 = add nuw nsw i64 %73, 1
  %78 = icmp eq i64 %77, %68
  br i1 %78, label %79, label %72, !llvm.loop !163

79:                                               ; preds = %76, %66
  %80 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %44) #25
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 2, i32 0
  br label %83

83:                                               ; preds = %79, %49
  %84 = phi i32 [ 2, %49 ], [ %82, %79 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %45, label %114

86:                                               ; preds = %111
  %87 = add nuw nsw i64 %91, 1
  %88 = load i64, ptr %32, align 8, !tbaa !64
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %114, !llvm.loop !164

90:                                               ; preds = %35, %86
  %91 = phi i64 [ 0, %35 ], [ %87, %86 ]
  %92 = load i64, ptr %36, align 8, !tbaa !63
  %93 = tail call ptr @QueueAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %91, i64 noundef %92, i64 noundef 1, ptr noundef nonnull %37) #25
  %94 = icmp eq ptr %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %36, align 8, !tbaa !63
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95, %98
  %99 = phi ptr [ %104, %98 ], [ %93, %95 ]
  %100 = phi i64 [ %105, %98 ], [ 0, %95 ]
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  store i16 %15, ptr %101, align 2, !tbaa !86
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  store i16 %13, ptr %102, align 2, !tbaa !87
  store i16 %11, ptr %99, align 2, !tbaa !88
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  store i16 %19, ptr %103, align 2, !tbaa !71
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %105 = add nuw nsw i64 %100, 1
  %106 = icmp eq i64 %105, %96
  br i1 %106, label %107, label %98, !llvm.loop !165

107:                                              ; preds = %98, %95
  %108 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %37) #25
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 11, i32 0
  br label %111

111:                                              ; preds = %107, %90
  %112 = phi i32 [ 11, %90 ], [ %110, %107 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %86, label %114

114:                                              ; preds = %111, %86, %83, %45, %31, %38
  ret void
}

declare ptr @QueueAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageAttribute(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6496, ptr noundef nonnull @.str.20) #25
  %5 = tail call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetImageList(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6538, ptr noundef nonnull @.str.7) #25
  %6 = tail call ptr @CloneImageList(ptr noundef %1, ptr noundef %3) #25
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = tail call ptr @GetPreviousImageInList(ptr noundef %7) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %12, %4
  %11 = icmp sgt i64 %2, 0
  br i1 %11, label %17, label %27

12:                                               ; preds = %4, %12
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = tail call ptr @GetPreviousImageInList(ptr noundef %13) #25
  store ptr %14, ptr %0, align 8, !tbaa !34
  %15 = tail call ptr @GetPreviousImageInList(ptr noundef %14) #25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %10, label %12, !llvm.loop !166

17:                                               ; preds = %10, %22
  %18 = phi i64 [ %25, %22 ], [ 0, %10 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = tail call ptr @GetNextImageInList(ptr noundef %19) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = tail call ptr @GetNextImageInList(ptr noundef %23) #25
  store ptr %24, ptr %0, align 8, !tbaa !34
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %27, label %17, !llvm.loop !167

27:                                               ; preds = %22, %10
  tail call void @InsertImageInList(ptr noundef nonnull %0, ptr noundef %6) #25
  br label %28

28:                                               ; preds = %17, %27
  %29 = phi i32 [ 1, %27 ], [ 0, %17 ]
  ret i32 %29
}

declare void @InsertImageInList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @SetImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %7 = tail call ptr @QueueAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #25
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SetMagickRegistry(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #25
  %6 = load i64, ptr @SetMagickRegistry.id, align 8, !tbaa !106
  %7 = sitofp i64 %6 to double
  %8 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %7) #25
  %9 = call i32 @SetImageRegistry(i32 noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %3) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr @SetMagickRegistry.id, align 8, !tbaa !106
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr @SetMagickRegistry.id, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi i64 [ %12, %11 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #25
  ret i64 %15
}

declare i32 @SetImageRegistry(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @GetMonitorHandler() local_unnamed_addr #22 {
  %1 = load ptr, ptr @monitor_handler, align 8, !tbaa !34
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @SetMonitorHandler(ptr noundef %0) local_unnamed_addr #23 {
  %2 = load ptr, ptr @monitor_handler, align 8, !tbaa !34
  store ptr %0, ptr @monitor_handler, align 8, !tbaa !34
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ShiftImageList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6737, ptr noundef nonnull @.str.7) #25
  %3 = tail call ptr @RemoveFirstImageFromList(ptr noundef %0) #25
  ret ptr %3
}

declare ptr @RemoveFirstImageFromList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @SizeBlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6773, ptr noundef nonnull @.str.9) #25
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i64 @GetBlobSize(ptr noundef %0) #25
  ret i64 %8
}

declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @SpliceImageList(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6820, ptr noundef nonnull @.str.7) #25
  br label %12

12:                                               ; preds = %10, %5
  %13 = tail call ptr @CloneImageList(ptr noundef %3, ptr noundef %4) #25
  %14 = load ptr, ptr %6, align 8, !tbaa !34
  %15 = tail call ptr @GetPreviousImageInList(ptr noundef %14) #25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %19, %12
  %18 = icmp sgt i64 %1, 0
  br i1 %18, label %24, label %34

19:                                               ; preds = %12, %19
  %20 = load ptr, ptr %6, align 8, !tbaa !34
  %21 = tail call ptr @GetPreviousImageInList(ptr noundef %20) #25
  store ptr %21, ptr %6, align 8, !tbaa !34
  %22 = tail call ptr @GetPreviousImageInList(ptr noundef %21) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %17, label %19, !llvm.loop !168

24:                                               ; preds = %17, %29
  %25 = phi i64 [ %32, %29 ], [ 0, %17 ]
  %26 = load ptr, ptr %6, align 8, !tbaa !34
  %27 = tail call ptr @GetNextImageInList(ptr noundef %26) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !34
  %31 = tail call ptr @GetNextImageInList(ptr noundef %30) #25
  store ptr %31, ptr %6, align 8, !tbaa !34
  %32 = add nuw nsw i64 %25, 1
  %33 = icmp eq i64 %32, %1
  br i1 %33, label %34, label %24, !llvm.loop !169

34:                                               ; preds = %29, %17
  %35 = call ptr @SpliceImageIntoList(ptr noundef nonnull %6, i64 noundef %2, ptr noundef %13) #25
  %36 = load ptr, ptr %6, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %24, %34
  %38 = phi ptr [ %36, %34 ], [ null, %24 ]
  ret ptr %38
}

declare ptr @SpliceImageIntoList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @sRGBCompandor(float noundef %0) local_unnamed_addr #18 {
  %2 = fpext float %0 to double
  %3 = fcmp ugt double %2, 0x4069A5632CEAE209
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = fmul double %2, 1.292000e+01
  br label %11

6:                                                ; preds = %1
  %7 = fmul double %2, 0x3EF0001000100010
  %8 = tail call double @pow(double noundef %7, double noundef 0x3FDAAAAAAAAAAAAB) #25
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 1.055000e+00, double -5.500000e-02)
  %10 = fmul double %9, 6.553500e+04
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi double [ %5, %4 ], [ %10, %6 ]
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: nounwind uwtable
define dso_local void @Strip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6893, ptr noundef nonnull @.str.2) #25
  %3 = load i8, ptr %0, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %49, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @__ctype_b_loc() #30
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %19, %11 ], [ %0, %8 ]
  %13 = load i8, ptr %12, align 1, !tbaa !40
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, ptr %10, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !96
  %17 = and i16 %16, 8192
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds i8, ptr %12, i64 1
  br i1 %18, label %20, label %11, !llvm.loop !170

20:                                               ; preds = %11
  switch i8 %13, label %23 [
    i8 39, label %21
    i8 34, label %21
  ]

21:                                               ; preds = %20, %20
  %22 = getelementptr inbounds i8, ptr %12, i64 1
  br label %23

23:                                               ; preds = %20, %21
  %24 = phi ptr [ %22, %21 ], [ %12, %20 ]
  %25 = getelementptr inbounds i8, ptr %0, i64 %6
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %25, %23 ], [ %28, %26 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 -1
  %29 = load i8, ptr %28, align 1, !tbaa !40
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %10, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !96
  %33 = and i16 %32, 8192
  %34 = icmp ne i16 %33, 0
  %35 = icmp ugt ptr %28, %24
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %26, label %37, !llvm.loop !171

37:                                               ; preds = %26
  br i1 %35, label %38, label %41

38:                                               ; preds = %37
  switch i8 %29, label %41 [
    i8 39, label %39
    i8 34, label %39
  ]

39:                                               ; preds = %38, %38
  %40 = getelementptr inbounds i8, ptr %27, i64 -2
  br label %41

41:                                               ; preds = %38, %39, %37
  %42 = phi ptr [ %40, %39 ], [ %28, %37 ], [ %28, %38 ]
  %43 = ptrtoint ptr %42 to i64
  %44 = ptrtoint ptr %24 to i64
  %45 = sub i64 %43, %44
  %46 = add nsw i64 %45, 1
  %47 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %0, ptr noundef nonnull %24, i64 noundef %46) #25
  %48 = getelementptr inbounds i8, ptr %0, i64 %46
  store i8 0, ptr %48, align 1, !tbaa !40
  br label %49

49:                                               ; preds = %5, %1, %41
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncCacheView(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetCacheViewException(ptr noundef %0) #25
  %3 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %0, ptr noundef %2) #26
  ret i32 %3
}

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncCacheViewPixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetCacheViewException(ptr noundef %0) #25
  %3 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %0, ptr noundef %2) #26
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncImagePixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %3 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %2) #25
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @TemporaryFilename(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7049, ptr noundef nonnull @.str.10) #25
  %3 = tail call i32 @AcquireUniqueFilename(ptr noundef %0) #25
  %4 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %0) #25
  ret void
}

declare i32 @AcquireUniqueFilename(ptr noundef) local_unnamed_addr #1

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ThresholdImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7096, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #25
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %3, align 8, !tbaa !41
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7098, ptr noundef nonnull @.str.2) #25
  br label %14

14:                                               ; preds = %12, %9
  %15 = tail call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef 2) #25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !64
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %34

25:                                               ; preds = %14
  %26 = icmp eq ptr %0, null
  br i1 %26, label %79, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7101, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.42) #25
  br label %79

30:                                               ; preds = %76
  %31 = add nuw nsw i64 %35, 1
  %32 = load i64, ptr %18, align 8, !tbaa !64
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %79, !llvm.loop !172

34:                                               ; preds = %21, %30
  %35 = phi i64 [ 0, %21 ], [ %31, %30 ]
  %36 = load i64, ptr %22, align 8, !tbaa !63
  %37 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef 0, i64 noundef %35, i64 noundef %36, i64 noundef 1, ptr noundef nonnull %23) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %76, label %39

39:                                               ; preds = %34
  %40 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #25
  %41 = load i64, ptr %22, align 8, !tbaa !63
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = icmp eq ptr %40, null
  br label %45

45:                                               ; preds = %43, %54
  %46 = phi ptr [ %37, %43 ], [ %68, %54 ]
  %47 = phi i64 [ 0, %43 ], [ %69, %54 ]
  %48 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %46) #26
  %49 = fpext float %48 to double
  %50 = fcmp ugt double %49, %1
  br i1 %44, label %54, label %51

51:                                               ; preds = %45
  %52 = zext i1 %50 to i16
  %53 = getelementptr inbounds i16, ptr %40, i64 %47
  store i16 %52, ptr %53, align 2, !tbaa !96
  br label %54

54:                                               ; preds = %51, %45
  %55 = load ptr, ptr %24, align 8, !tbaa !146
  %56 = zext i1 %50 to i64
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %56, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !86
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 2
  store i16 %58, ptr %59, align 2, !tbaa !86
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %56, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !87
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 1
  store i16 %61, ptr %62, align 2, !tbaa !87
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %56
  %64 = load i16, ptr %63, align 2, !tbaa !88
  store i16 %64, ptr %46, align 2, !tbaa !88
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %56, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !71
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 3
  store i16 %66, ptr %67, align 2, !tbaa !71
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 1
  %69 = add nuw nsw i64 %47, 1
  %70 = load i64, ptr %22, align 8, !tbaa !63
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %45, label %72, !llvm.loop !173

72:                                               ; preds = %54, %39
  %73 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %23) #25
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 2, i32 0
  br label %76

76:                                               ; preds = %72, %34
  %77 = phi i32 [ 2, %34 ], [ %75, %72 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %30, label %79

79:                                               ; preds = %76, %30, %17, %25, %27
  %80 = phi i32 [ 0, %27 ], [ 0, %25 ], [ 1, %17 ], [ 1, %30 ], [ 1, %76 ]
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ThresholdImageChannel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7182, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #25
  br label %11

11:                                               ; preds = %8, %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %180, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %180, label %16

16:                                               ; preds = %13
  %17 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %4) #25
  %18 = load double, ptr %4, align 8, !tbaa !56
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %19, ptr %20, align 8, !tbaa !109
  %21 = and i32 %17, 8
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %24 = load double, ptr %23, align 8
  %25 = fptrunc double %24 to float
  %26 = select i1 %22, float %19, float %25
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %26, ptr %27, align 4, !tbaa !111
  %28 = and i32 %17, 1
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %31 = load double, ptr %30, align 8
  %32 = fptrunc double %31 to float
  %33 = select i1 %29, float %19, float %32
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %33, ptr %34, align 8, !tbaa !112
  %35 = and i32 %17, 2
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %38 = load double, ptr %37, align 8
  %39 = fptrunc double %38 to float
  %40 = select i1 %36, float 0.000000e+00, float %39
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %40, ptr %41, align 4, !tbaa !113
  %42 = and i32 %17, 4096
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %16
  %45 = fmul float %19, 0x40847ACCC0000000
  store float %45, ptr %20, align 8, !tbaa !109
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %47 = load float, ptr %46, align 4, !tbaa !111
  %48 = fmul float %47, 0x40847ACCC0000000
  store float %48, ptr %46, align 4, !tbaa !111
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %50 = load float, ptr %49, align 8, !tbaa !112
  %51 = fmul float %50, 0x40847ACCC0000000
  store float %51, ptr %49, align 8, !tbaa !112
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %53 = load float, ptr %52, align 4, !tbaa !113
  %54 = fmul float %53, 0x40847ACCC0000000
  store float %54, ptr %52, align 4, !tbaa !113
  br label %55

55:                                               ; preds = %44, %16
  br i1 %22, label %56, label %70

56:                                               ; preds = %55
  %57 = call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef 2) #25
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = icmp eq ptr %0, null
  br i1 %60, label %180, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %63 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %62, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7212, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.42) #25
  br label %180

64:                                               ; preds = %56
  %65 = load float, ptr %20, align 8, !tbaa !109
  %66 = fcmp oeq float %65, 0.000000e+00
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %69 = call i32 @GetImageDynamicThreshold(ptr noundef %0, double noundef 2.000000e+00, double noundef 2.000000e+00, ptr noundef nonnull %3, ptr noundef nonnull %68) #25
  br label %70

70:                                               ; preds = %64, %67, %55
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %72 = load i64, ptr %71, align 8, !tbaa !64
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %180

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %79 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %88

84:                                               ; preds = %177
  %85 = add nuw nsw i64 %89, 1
  %86 = load i64, ptr %71, align 8, !tbaa !64
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %180, !llvm.loop !174

88:                                               ; preds = %74, %84
  %89 = phi i64 [ 0, %74 ], [ %85, %84 ]
  %90 = load i64, ptr %75, align 8, !tbaa !63
  %91 = call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef 0, i64 noundef %89, i64 noundef %90, i64 noundef 1, ptr noundef nonnull %76) #25
  %92 = icmp eq ptr %91, null
  br i1 %92, label %177, label %93

93:                                               ; preds = %88
  %94 = call ptr @GetAuthenticIndexQueue(ptr noundef %0) #25
  %95 = load i32, ptr %77, align 4, !tbaa !126
  %96 = add i32 %95, -1
  %97 = icmp ult i32 %96, 2
  br i1 %97, label %98, label %140

98:                                               ; preds = %93
  %99 = load float, ptr %20, align 8, !tbaa !109
  %100 = load float, ptr %78, align 4, !tbaa !111
  %101 = fsub float %99, %100
  %102 = call float @llvm.fabs.f32(float %101)
  %103 = fpext float %102 to double
  %104 = fcmp olt double %103, 1.000000e-15
  br i1 %104, label %105, label %140

105:                                              ; preds = %98
  %106 = load float, ptr %79, align 8, !tbaa !112
  %107 = fsub float %100, %106
  %108 = call float @llvm.fabs.f32(float %107)
  %109 = fpext float %108 to double
  %110 = fcmp olt double %109, 1.000000e-15
  br i1 %110, label %111, label %140

111:                                              ; preds = %105
  %112 = load i64, ptr %75, align 8, !tbaa !63
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %173

114:                                              ; preds = %111
  %115 = icmp eq ptr %94, null
  br label %116

116:                                              ; preds = %114, %125
  %117 = phi ptr [ %91, %114 ], [ %136, %125 ]
  %118 = phi i64 [ 0, %114 ], [ %137, %125 ]
  %119 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %117) #26
  %120 = load float, ptr %20, align 8, !tbaa !109
  %121 = fcmp ugt float %119, %120
  br i1 %115, label %125, label %122

122:                                              ; preds = %116
  %123 = zext i1 %121 to i16
  %124 = getelementptr inbounds i16, ptr %94, i64 %118
  store i16 %123, ptr %124, align 2, !tbaa !96
  br label %125

125:                                              ; preds = %122, %116
  %126 = load ptr, ptr %83, align 8, !tbaa !146
  %127 = zext i1 %121 to i64
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 %127, i32 2
  %129 = load i16, ptr %128, align 2, !tbaa !86
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  store i16 %129, ptr %130, align 2, !tbaa !86
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 %127, i32 1
  %132 = load i16, ptr %131, align 2, !tbaa !87
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  store i16 %132, ptr %133, align 2, !tbaa !87
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 %127
  %135 = load i16, ptr %134, align 2, !tbaa !88
  store i16 %135, ptr %117, align 2, !tbaa !88
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %137 = add nuw nsw i64 %118, 1
  %138 = load i64, ptr %75, align 8, !tbaa !63
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %116, label %173, !llvm.loop !175

140:                                              ; preds = %98, %105, %93
  %141 = load i64, ptr %75, align 8, !tbaa !63
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %140
  %144 = load float, ptr %20, align 8, !tbaa !109
  %145 = load float, ptr %80, align 4, !tbaa !111
  %146 = load float, ptr %81, align 8, !tbaa !112
  %147 = load float, ptr %82, align 4, !tbaa !113
  br label %148

148:                                              ; preds = %143, %148
  %149 = phi ptr [ %91, %143 ], [ %170, %148 ]
  %150 = phi i64 [ 0, %143 ], [ %171, %148 ]
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 2
  %152 = load i16, ptr %151, align 2, !tbaa !86
  %153 = uitofp i16 %152 to float
  %154 = fcmp ult float %144, %153
  %155 = sext i1 %154 to i16
  store i16 %155, ptr %151, align 2, !tbaa !86
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 1
  %157 = load i16, ptr %156, align 2, !tbaa !87
  %158 = uitofp i16 %157 to float
  %159 = fcmp ult float %145, %158
  %160 = sext i1 %159 to i16
  store i16 %160, ptr %156, align 2, !tbaa !87
  %161 = load i16, ptr %149, align 2, !tbaa !88
  %162 = uitofp i16 %161 to float
  %163 = fcmp ult float %146, %162
  %164 = sext i1 %163 to i16
  store i16 %164, ptr %149, align 2, !tbaa !88
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 3
  %166 = load i16, ptr %165, align 2, !tbaa !71
  %167 = uitofp i16 %166 to float
  %168 = fcmp ult float %147, %167
  %169 = sext i1 %168 to i16
  store i16 %169, ptr %165, align 2, !tbaa !71
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 1
  %171 = add nuw nsw i64 %150, 1
  %172 = icmp eq i64 %171, %141
  br i1 %172, label %173, label %148, !llvm.loop !176

173:                                              ; preds = %148, %125, %140, %111
  %174 = call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %76) #25
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 2, i32 0
  br label %177

177:                                              ; preds = %173, %88
  %178 = phi i32 [ 2, %88 ], [ %176, %173 ]
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %84, label %180

180:                                              ; preds = %177, %84, %70, %59, %61, %13, %11
  %181 = phi i32 [ 1, %11 ], [ 0, %13 ], [ 0, %61 ], [ 0, %59 ], [ 1, %70 ], [ 1, %84 ], [ 1, %177 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  ret i32 %181
}

declare i32 @GetImageDynamicThreshold(ptr noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @TransformColorspace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7300, ptr noundef nonnull @.str.10) #25
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %1) #25
  ret i32 %9
}

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @TransformHSL(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #17 {
  %7 = uitofp i16 %0 to double
  %8 = fmul double %7, 0x3EF0001000100010
  %9 = fptrunc double %8 to float
  %10 = uitofp i16 %1 to double
  %11 = fmul double %10, 0x3EF0001000100010
  %12 = fptrunc double %11 to float
  %13 = uitofp i16 %2 to double
  %14 = fmul double %13, 0x3EF0001000100010
  %15 = fptrunc double %14 to float
  %16 = fpext float %9 to double
  %17 = fpext float %12 to double
  %18 = fpext float %15 to double
  %19 = fcmp ogt float %12, %15
  %20 = select i1 %19, double %17, double %18
  %21 = fcmp olt double %20, %16
  %22 = fptrunc double %20 to float
  %23 = select i1 %21, float %9, float %22
  %24 = fcmp olt float %12, %15
  %25 = select i1 %24, double %17, double %18
  %26 = fcmp ogt double %25, %16
  %27 = fptrunc double %25 to float
  %28 = select i1 %26, float %9, float %27
  store double 0.000000e+00, ptr %3, align 8, !tbaa !150
  store double 0.000000e+00, ptr %4, align 8, !tbaa !150
  %29 = fadd float %28, %23
  %30 = fpext float %29 to double
  %31 = fmul double %30, 5.000000e-01
  store double %31, ptr %5, align 8, !tbaa !150
  %32 = fsub float %23, %28
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %85, label %34

34:                                               ; preds = %6
  %35 = fpext float %32 to double
  %36 = fcmp olt double %31, 5.000000e-01
  %37 = fpext float %23 to double
  %38 = fsub double 2.000000e+00, %37
  %39 = fpext float %28 to double
  %40 = fsub double %38, %39
  %41 = select i1 %36, double %30, double %40
  %42 = fdiv double %35, %41
  store double %42, ptr %4, align 8, !tbaa !150
  %43 = fcmp oeq float %23, %9
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = fcmp oeq float %28, %12
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = fsub float %23, %15
  %48 = fdiv float %47, %32
  %49 = fpext float %48 to double
  %50 = fadd double %49, 5.000000e+00
  br label %82

51:                                               ; preds = %44
  %52 = fsub float %23, %12
  %53 = fdiv float %52, %32
  %54 = fpext float %53 to double
  %55 = fsub double 1.000000e+00, %54
  br label %82

56:                                               ; preds = %34
  %57 = fcmp oeq float %23, %12
  br i1 %57, label %58, label %70

58:                                               ; preds = %56
  %59 = fcmp oeq float %28, %15
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = fsub float %23, %9
  %62 = fdiv float %61, %32
  %63 = fpext float %62 to double
  %64 = fadd double %63, 1.000000e+00
  br label %82

65:                                               ; preds = %58
  %66 = fsub float %23, %15
  %67 = fdiv float %66, %32
  %68 = fpext float %67 to double
  %69 = fsub double 3.000000e+00, %68
  br label %82

70:                                               ; preds = %56
  %71 = fcmp oeq float %28, %9
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = fsub float %23, %12
  %74 = fdiv float %73, %32
  %75 = fpext float %74 to double
  %76 = fadd double %75, 3.000000e+00
  br label %82

77:                                               ; preds = %70
  %78 = fsub float %23, %9
  %79 = fdiv float %78, %32
  %80 = fpext float %79 to double
  %81 = fsub double 5.000000e+00, %80
  br label %82

82:                                               ; preds = %72, %77, %60, %65, %46, %51
  %83 = phi double [ %50, %46 ], [ %55, %51 ], [ %64, %60 ], [ %69, %65 ], [ %76, %72 ], [ %81, %77 ]
  %84 = fdiv double %83, 6.000000e+00
  store double %84, ptr %3, align 8, !tbaa !150
  br label %85

85:                                               ; preds = %6, %82
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @TranslateText(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7419, ptr noundef nonnull @.str.43) #25
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call ptr @InterpretImageProperties(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TransparentImage(ptr noundef %0, i64 %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._PixelPacket, align 8
  store i64 %1, ptr %5, align 8
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7473, ptr noundef nonnull @.str.26) #25
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7475, ptr noundef nonnull @.str.5, ptr noundef nonnull %11) #25
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !65
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #25
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !64
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %33

29:                                               ; preds = %69
  %30 = add nuw nsw i64 %34, 1
  %31 = load i64, ptr %20, align 8, !tbaa !64
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %72, !llvm.loop !177

33:                                               ; preds = %23, %29
  %34 = phi i64 [ 0, %23 ], [ %30, %29 ]
  %35 = load i64, ptr %24, align 8, !tbaa !63
  %36 = call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef 0, i64 noundef %34, i64 noundef %35, i64 noundef 1, ptr noundef nonnull %25) #25
  %37 = icmp eq ptr %36, null
  br i1 %37, label %69, label %38

38:                                               ; preds = %33
  %39 = load i64, ptr %24, align 8, !tbaa !63
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38, %48
  %42 = phi ptr [ %49, %48 ], [ %36, %38 ]
  %43 = phi i64 [ %50, %48 ], [ 0, %38 ]
  %44 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef nonnull %42, ptr noundef nonnull %5) #25
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 0, i32 3
  store i16 %2, ptr %47, align 2, !tbaa !71
  br label %48

48:                                               ; preds = %46, %41
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 1
  %50 = add nuw nsw i64 %43, 1
  %51 = load i64, ptr %24, align 8, !tbaa !63
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %41, label %53, !llvm.loop !178

53:                                               ; preds = %48, %38
  %54 = call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %25) #25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %20, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #25
  %58 = load ptr, ptr %26, align 8, !tbaa !144
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef nonnull %27) #25
  %62 = load ptr, ptr %26, align 8, !tbaa !144
  %63 = load ptr, ptr %28, align 8, !tbaa !145
  %64 = call i32 %62(ptr noundef nonnull %4, i64 noundef %34, i64 noundef %57, ptr noundef %63) #25
  br label %65

65:                                               ; preds = %56, %60
  %66 = phi i32 [ %64, %60 ], [ 1, %56 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #25
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 2, i32 0
  br label %69

69:                                               ; preds = %65, %53, %33
  %70 = phi i32 [ 2, %33 ], [ 2, %53 ], [ %68, %65 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %29, label %72

72:                                               ; preds = %29, %69, %19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @UnshiftImageList(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7539, ptr noundef nonnull @.str.7) #25
  %5 = tail call ptr @CloneImageList(ptr noundef %1, ptr noundef %2) #25
  tail call void @PrependImageToList(ptr noundef %0, ptr noundef %5) #25
  ret i32 1
}

declare void @PrependImageToList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i16 @ValidateColormapIndex(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7581, ptr noundef nonnull @.str.45) #25
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %10 = load i64, ptr %9, align 8, !tbaa !139
  %11 = icmp ugt i64 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = trunc i64 %1 to i16
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i64 noundef 34, i32 noundef 425, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #25
  br label %18

18:                                               ; preds = %12, %14
  %19 = phi i16 [ %13, %12 ], [ 0, %14 ]
  ret i16 %19
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZoomImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7633, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #25
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %13 = load i32, ptr %12, align 8, !tbaa !123
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %15 = load double, ptr %14, align 8, !tbaa !124
  %16 = tail call ptr @ResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %13, double noundef %15, ptr noundef %3) #25
  ret ptr %16
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #19

; Function Attrs: hot
declare float @EncodePixelGamma(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { hot nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind allocsize(0,1) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind allocsize(1) }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!42, !39, i64 12976}
!42 = !{!"_Image", !39, i64 0, !39, i64 4, !39, i64 8, !43, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !35, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !46, i64 104, !47, i64 112, !39, i64 208, !35, i64 216, !39, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !43, i64 256, !46, i64 264, !46, i64 272, !49, i64 280, !49, i64 312, !49, i64 344, !46, i64 376, !46, i64 384, !46, i64 392, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !35, i64 424, !43, i64 432, !43, i64 440, !43, i64 448, !43, i64 456, !43, i64 464, !43, i64 472, !50, i64 480, !51, i64 504, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !43, i64 12904, !43, i64 12912, !53, i64 12920, !39, i64 12976, !43, i64 12984, !35, i64 12992, !54, i64 13000, !54, i64 13032, !35, i64 13064, !43, i64 13072, !43, i64 13080, !35, i64 13088, !35, i64 13096, !35, i64 13104, !39, i64 13112, !39, i64 13116, !44, i64 13120, !35, i64 13128, !49, i64 13136, !35, i64 13168, !35, i64 13176, !39, i64 13184, !39, i64 13188, !55, i64 13192, !39, i64 13200, !43, i64 13208, !43, i64 13216, !39, i64 13224, !43, i64 13232}
!43 = !{!"long", !36, i64 0}
!44 = !{!"_PixelPacket", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6}
!45 = !{!"short", !36, i64 0}
!46 = !{!"double", !36, i64 0}
!47 = !{!"_ChromaticityInfo", !48, i64 0, !48, i64 24, !48, i64 48, !48, i64 72}
!48 = !{!"_PrimaryInfo", !46, i64 0, !46, i64 8, !46, i64 16}
!49 = !{!"_RectangleInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!50 = !{!"_ErrorInfo", !46, i64 0, !46, i64 8, !46, i64 16}
!51 = !{!"_TimerInfo", !52, i64 0, !52, i64 24, !39, i64 48, !43, i64 56}
!52 = !{!"_Timer", !46, i64 0, !46, i64 8, !46, i64 16}
!53 = !{!"_ExceptionInfo", !39, i64 0, !39, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !39, i64 32, !35, i64 40, !43, i64 48}
!54 = !{!"_ProfileInfo", !35, i64 0, !43, i64 8, !35, i64 16, !43, i64 24}
!55 = !{!"long long", !36, i64 0}
!56 = !{!57, !46, i64 0}
!57 = !{!"_GeometryInfo", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32}
!58 = !{!57, !46, i64 8}
!59 = !{!57, !46, i64 16}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!42, !43, i64 40}
!64 = !{!42, !43, i64 48}
!65 = !{!42, !39, i64 32}
!66 = !{!67, !46, i64 0}
!67 = !{!"_SegmentInfo", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!68 = !{!67, !46, i64 8}
!69 = !{!67, !46, i64 16}
!70 = !{!67, !46, i64 24}
!71 = !{!44, !45, i64 6}
!72 = distinct !{!72, !61, !62}
!73 = distinct !{!73, !61, !62}
!74 = distinct !{!74, !61, !62}
!75 = distinct !{!75, !61, !62}
!76 = distinct !{!76, !61, !62}
!77 = !{!78, !35, i64 256}
!78 = !{!"_DrawInfo", !35, i64 0, !35, i64 8, !49, i64 16, !79, i64 48, !39, i64 96, !44, i64 100, !44, i64 108, !46, i64 120, !80, i64 128, !35, i64 256, !35, i64 264, !35, i64 272, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !43, i64 304, !46, i64 312, !39, i64 320, !39, i64 324, !35, i64 328, !43, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !39, i64 368, !39, i64 372, !43, i64 376, !35, i64 384, !46, i64 392, !35, i64 400, !39, i64 408, !44, i64 412, !44, i64 420, !35, i64 432, !35, i64 440, !35, i64 448, !67, i64 456, !39, i64 488, !45, i64 492, !39, i64 496, !83, i64 504, !39, i64 672, !43, i64 680, !46, i64 688, !46, i64 696, !46, i64 704, !39, i64 712}
!79 = !{!"_AffineMatrix", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40}
!80 = !{!"_GradientInfo", !39, i64 0, !49, i64 8, !67, i64 40, !35, i64 72, !43, i64 80, !39, i64 88, !39, i64 92, !43, i64 96, !81, i64 104, !82, i64 120}
!81 = !{!"_PointInfo", !46, i64 0, !46, i64 8}
!82 = !{!"float", !36, i64 0}
!83 = !{!"_ElementReference", !35, i64 0, !39, i64 8, !80, i64 16, !43, i64 144, !35, i64 152, !35, i64 160}
!84 = !{!42, !43, i64 13152}
!85 = !{!42, !43, i64 13160}
!86 = !{!44, !45, i64 4}
!87 = !{!44, !45, i64 2}
!88 = !{!44, !45, i64 0}
!89 = distinct !{!89, !61, !62}
!90 = distinct !{!90, !61, !62}
!91 = distinct !{!91, !61, !62}
!92 = distinct !{!92, !61, !62}
!93 = !{!42, !35, i64 592}
!94 = !{!42, !39, i64 4}
!95 = distinct !{!95, !61, !62}
!96 = !{!45, !45, i64 0}
!97 = distinct !{!97, !61, !62}
!98 = !{!49, !43, i64 16}
!99 = !{!49, !43, i64 24}
!100 = distinct !{!100, !61, !62}
!101 = distinct !{!101, !61, !62}
!102 = !{!42, !46, i64 392}
!103 = !{!104, !35, i64 0}
!104 = !{!"_ImageAttribute", !35, i64 0, !35, i64 8, !39, i64 16, !35, i64 24, !35, i64 32}
!105 = !{!104, !35, i64 8}
!106 = !{!43, !43, i64 0}
!107 = !{!79, !46, i64 0}
!108 = !{!79, !46, i64 24}
!109 = !{!110, !82, i64 32}
!110 = !{!"_MagickPixelPacket", !39, i64 0, !39, i64 4, !39, i64 8, !46, i64 16, !43, i64 24, !82, i64 32, !82, i64 36, !82, i64 40, !82, i64 44, !82, i64 48}
!111 = !{!110, !82, i64 36}
!112 = !{!110, !82, i64 40}
!113 = !{!110, !82, i64 44}
!114 = !{!110, !82, i64 48}
!115 = !{!82, !82, i64 0}
!116 = distinct !{!116, !61, !62}
!117 = distinct !{!117, !61, !62}
!118 = distinct !{!118, !61, !62}
!119 = distinct !{!119, !61, !62}
!120 = distinct !{!120, !61, !62}
!121 = !{!49, !43, i64 0}
!122 = !{!49, !43, i64 8}
!123 = !{!42, !39, i64 400}
!124 = !{!42, !46, i64 384}
!125 = distinct !{!125, !61, !62}
!126 = !{!110, !39, i64 4}
!127 = distinct !{!127, !61, !62}
!128 = distinct !{!128, !61, !62}
!129 = !{!130, !39, i64 16}
!130 = !{!"_QuantizeInfo", !43, i64 0, !43, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !43, i64 32, !39, i64 40}
!131 = distinct !{!131, !61, !62}
!132 = distinct !{!132, !61, !62}
!133 = distinct !{!133, !61, !62}
!134 = distinct !{!134, !61, !62}
!135 = distinct !{!135, !61, !62}
!136 = distinct !{!136, !61, !62}
!137 = distinct !{!137, !61, !62}
!138 = !{!42, !39, i64 0}
!139 = !{!42, !43, i64 64}
!140 = distinct !{!140, !61, !62}
!141 = !{i64 0, i64 2, !96, i64 2, i64 2, !96, i64 4, i64 2, !96, i64 6, i64 2, !96}
!142 = !{i64 0, i64 2, !96}
!143 = distinct !{!143, !61, !62}
!144 = !{!42, !35, i64 568}
!145 = !{!42, !35, i64 576}
!146 = !{!42, !35, i64 72}
!147 = distinct !{!147, !61, !62}
!148 = distinct !{!148, !61, !62}
!149 = distinct !{!149, !61, !62}
!150 = !{!46, !46, i64 0}
!151 = distinct !{!151, !61, !62}
!152 = distinct !{!152, !61, !62}
!153 = distinct !{!153, !61, !62}
!154 = !{!155, !43, i64 8}
!155 = !{!"KernelInfo", !39, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !35, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !35, i64 88, !43, i64 96}
!156 = !{!155, !43, i64 16}
!157 = !{!155, !35, i64 40}
!158 = !{!53, !39, i64 0}
!159 = !{i64 0, i64 2, !96, i64 2, i64 2, !96, i64 4, i64 2, !96}
!160 = !{i64 0, i64 2, !96, i64 2, i64 2, !96}
!161 = distinct !{!161, !61, !62}
!162 = distinct !{!162, !61, !62}
!163 = distinct !{!163, !61, !62}
!164 = distinct !{!164, !61, !62}
!165 = distinct !{!165, !61, !62}
!166 = distinct !{!166, !61, !62}
!167 = distinct !{!167, !61, !62}
!168 = distinct !{!168, !61, !62}
!169 = distinct !{!169, !61, !62}
!170 = distinct !{!170, !61, !62}
!171 = distinct !{!171, !61, !62}
!172 = distinct !{!172, !61, !62}
!173 = distinct !{!173, !61, !62}
!174 = distinct !{!174, !61, !62}
!175 = distinct !{!175, !61, !62}
!176 = distinct !{!176, !61, !62}
!177 = distinct !{!177, !61, !62}
!178 = distinct !{!178, !61, !62}
