; ModuleID = 'magick/deprecate.c'
source_filename = "magick/deprecate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.omp_lock_t = type { ptr }
%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@active_mutex = internal unnamed_addr global i1 false, align 4
@semaphore_mutex = internal global %struct.omp_lock_t zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SegmentStackOverflow\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"last use: v5.5.2\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%.20g\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"last use: v5.4.3\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"last use: v5.5.6\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_ExtractSubimageFromImage.var = common global [8 x i32] zeroinitializer, align 8
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
@.str.28 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"last use: v6.4.7\00", align 1
@RandomChannelThresholdImage.o2 = internal unnamed_addr constant [4 x float] [float 0x3FC99999A0000000, float 0x3FE3333340000000, float 0x3FE99999A0000000, float 0x3FD99999A0000000], align 16
@RandomChannelThresholdImage.o3 = internal unnamed_addr constant [9 x float] [float 0x3FB99999A0000000, float 0x3FE3333340000000, float 0x3FD3333340000000, float 0x3FE6666660000000, float 5.000000e-01, float 0x3FE99999A0000000, float 0x3FD99999A0000000, float 0x3FECCCCCC0000000, float 0x3FC99999A0000000], align 16
@RandomChannelThresholdImage.o4 = internal unnamed_addr constant [16 x float] [float 0x3FB99999A0000000, float 0x3FE6666660000000, float 0x3FF19999A0000000, float 0x3FD3333340000000, float 1.000000e+00, float 5.000000e-01, float 1.500000e+00, float 0x3FE99999A0000000, float 0x3FF6666660000000, float 0x3FF99999A0000000, float 0x3FE3333340000000, float 0x3FF3333340000000, float 0x3FD99999A0000000, float 0x3FECCCCCC0000000, float 0x3FF4CCCCC0000000, float 0x3FC99999A0000000], align 16
@.str.30 = private unnamed_addr constant [4 x i8] c"2x2\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"3x3\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"4x4\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"%lf[/x%%]%lf\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"  RandomChannelThresholdImage: channel type=%s\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"    Thresholds: %s (%fx%f)\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"matte\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"UnrecognizedChannelType\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"last use: v6.2.0\00", align 1
@SetMagickRegistry.id = internal unnamed_addr global i64 0, align 8
@.str.43 = private unnamed_addr constant [23 x i8] c"UnableToThresholdImage\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"last use: v6.2.6\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Transparent/Image\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"last use: v5.4.4\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"./magick/colormap-private.h\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireCacheViewIndexes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireCacheViewPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #30
  ret ptr %7
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #29
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireIndexes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @AcquireMemory(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 302, ptr noundef nonnull @.str.2) #29
  %3 = tail call noalias ptr @malloc(i64 noundef %0) #31
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AcquireOneCacheViewPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @GetOneCacheViewVirtualPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #29
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AcquireOneCacheViewVirtualPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @GetOneCacheViewVirtualMethodPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #29
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @GetOneCacheViewVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AcquireOneMagickPixel(ptr dead_on_unwind noalias writable sret(%struct._MagickPixelPacket) align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @GetOneVirtualMagickPixel(ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %0, ptr noundef %4) #29
  ret void
}

; Function Attrs: optsize
declare i32 @GetOneVirtualMagickPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @AcquireOnePixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._PixelPacket, align 8
  %6 = call i32 @GetOneVirtualPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5, ptr noundef %3) #29
  %7 = load i64, ptr %5, align 8
  ret i64 %7
}

; Function Attrs: optsize
declare i32 @GetOneVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @AcquireOneVirtualPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._PixelPacket, align 8
  %7 = call i32 @GetOneVirtualMethodPixel(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %6, ptr noundef %4) #29
  %8 = load i64, ptr %6, align 8
  ret i64 %8
}

; Function Attrs: optsize
declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquirePixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetVirtualPixelQueue(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @GetVirtualPixelQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AcquireSemaphoreInfo(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  tail call fastcc void @InitializeMagickMutex() #32
  tail call fastcc void @LockMagickMutex() #32
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr @AllocateSemaphoreInfo() #29
  store ptr %8, ptr %0, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %7, %4
  tail call fastcc void @UnlockMagickMutex() #32
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @InitializeMagickMutex() unnamed_addr #0 {
  %1 = load i1, ptr @active_mutex, align 4
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  tail call void @omp_init_lock(ptr noundef nonnull @semaphore_mutex) #29
  br label %3

3:                                                ; preds = %2, %0
  store i1 true, ptr @active_mutex, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @LockMagickMutex() unnamed_addr #0 {
  tail call void @omp_set_lock(ptr noundef nonnull @semaphore_mutex) #29
  ret void
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @UnlockMagickMutex() unnamed_addr #0 {
  tail call void @omp_unset_lock(ptr noundef nonnull @semaphore_mutex) #29
  ret void
}

; Function Attrs: optsize
declare void @omp_init_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @omp_set_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @omp_unset_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AffinityImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @RemapImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #29
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @RemapImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AffinityImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @RemapImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) #29
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @RemapImages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AllocateImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @AcquireImage(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AllocateImageColormap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %1) #29
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AllocateNextImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @AcquireNextImage(ptr noundef %0, ptr noundef %1) #29
  ret void
}

; Function Attrs: optsize
declare void @AcquireNextImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AllocateString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 824, ptr noundef nonnull @.str.2) #29
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %5 = add i64 %4, 4097
  %6 = tail call ptr @AcquireQuantumMemory(i64 noundef %5, i64 noundef 1) #34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #29
  %9 = tail call ptr @__errno_location() #35
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #29
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 828, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %11) #29
  %13 = call ptr @DestroyString(ptr noundef %11) #29
  call void @CatchException(ptr noundef nonnull %2) #29
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #29
  call void @MagickCoreTerminus() #29
  call void @_exit(i32 noundef 1) #36
  unreachable

15:                                               ; preds = %1
  store i8 0, ptr %6, align 1, !tbaa !12
  %16 = icmp eq ptr %0, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %0, i64 noundef %5) #29
  br label %19

19:                                               ; preds = %17, %15
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AverageImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @EvaluateImages(ptr noundef %0, i32 noundef 27, ptr noundef %1) #29
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @EvaluateImages(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ChannelImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @SeparateImageChannel(ptr noundef %0, i32 noundef %1) #29
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @SeparateImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ChannelThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 948, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #29
  %10 = load i32, ptr %4, align 8, !tbaa !13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 950, ptr noundef nonnull @.str.2) #29
  br label %14

14:                                               ; preds = %2, %12, %7
  %15 = icmp eq ptr %1, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %14
  %17 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #29
  %18 = load double, ptr %3, align 8, !tbaa !28
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !30
  %22 = fptrunc double %21 to float
  %23 = and i32 %17, 8
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, float %19, float %22
  %26 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 2
  %27 = load double, ptr %26, align 8, !tbaa !31
  %28 = fptrunc double %27 to float
  %29 = and i32 %17, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, float %19, float %28
  %32 = fpext float %19 to double
  %33 = call i32 @BilevelImageChannel(ptr noundef nonnull %0, i32 noundef 1, double noundef %32) #29
  %34 = fpext float %25 to double
  %35 = call i32 @BilevelImageChannel(ptr noundef nonnull %0, i32 noundef 2, double noundef %34) #29
  %36 = and i32 %35, %33
  %37 = fpext float %31 to double
  %38 = call i32 @BilevelImageChannel(ptr noundef nonnull %0, i32 noundef 4, double noundef %37) #29
  %39 = and i32 %36, %38
  br label %40

40:                                               ; preds = %14, %16
  %41 = phi i32 [ %39, %16 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  ret i32 %41
}

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BilevelImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClipPathImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @ClipImagePath(ptr noundef %0, ptr noundef %1, i32 noundef %2) #29
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @ClipImagePath(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CloneImageAttributes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @CloneImageProperties(ptr noundef %0, ptr noundef %1) #29
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @CloneImageProperties(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CloneMemory(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1085, ptr noundef nonnull @.str.2) #29
  %5 = icmp ugt ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %1, i64 %2
  %8 = icmp ult ptr %7, %0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6, %3
  %10 = tail call ptr @CopyMagickMemory(ptr noundef %0, ptr noundef %1, i64 noundef %2) #29
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
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %22 = getelementptr inbounds i8, ptr %18, i64 -1
  store i8 %21, ptr %22, align 1, !tbaa !12
  %23 = add nsw i64 %17, -1
  %24 = icmp eq i64 %17, 0
  br i1 %24, label %25, label %16, !llvm.loop !32

25:                                               ; preds = %16, %11, %9
  %26 = phi ptr [ %10, %9 ], [ %0, %11 ], [ %0, %16 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CloseCacheView(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @DestroyCacheView(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorFloodfillImage(ptr noundef %0, ptr nocapture noundef readonly %1, i64 %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._PixelPacket, align 8
  %8 = alloca %struct._PixelPacket, align 2
  store i64 %2, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1226, ptr noundef nonnull @.str.5, ptr noundef nonnull %13) #29
  br label %15

15:                                               ; preds = %12, %6
  %16 = icmp slt i64 %3, 0
  br i1 %16, label %336, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !34
  %20 = icmp sle i64 %19, %3
  %21 = icmp slt i64 %4, 0
  %22 = or i1 %21, %20
  br i1 %22, label %336, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !35
  %26 = icmp sgt i64 %25, %4
  br i1 %26, label %27, label %336

27:                                               ; preds = %23
  %28 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #29
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %336, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !36
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #29
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64, ptr %18, align 8, !tbaa !34
  %38 = load i64, ptr %24, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %40 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %37, i64 noundef %38, i32 noundef 1, ptr noundef nonnull %39) #29
  %41 = icmp eq ptr %40, null
  br i1 %41, label %336, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %40, i32 noundef 6) #29
  %44 = tail call dereferenceable_or_null(1048576) ptr @AcquireQuantumMemory(i64 noundef 32768, i64 noundef 32) #34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = tail call ptr @DestroyImage(ptr noundef nonnull %40) #29
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1251, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %48) #29
  br label %336

50:                                               ; preds = %42
  %51 = add nuw nsw i64 %4, 1
  %52 = load i64, ptr %24, align 8, !tbaa !35
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = sitofp i64 %3 to double
  store double %55, ptr %44, align 8, !tbaa !37
  %56 = sitofp i64 %4 to double
  %57 = getelementptr inbounds %struct._SegmentInfo, ptr %44, i64 0, i32 1
  store double %56, ptr %57, align 8, !tbaa !39
  %58 = getelementptr inbounds %struct._SegmentInfo, ptr %44, i64 0, i32 2
  store double %55, ptr %58, align 8, !tbaa !40
  %59 = getelementptr inbounds %struct._SegmentInfo, ptr %44, i64 0, i32 3
  store double 1.000000e+00, ptr %59, align 8, !tbaa !41
  br label %60

60:                                               ; preds = %50, %54
  %61 = phi i64 [ 32, %54 ], [ 0, %50 ]
  %62 = icmp sgt i64 %52, %4
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %44, i64 %61
  %65 = sitofp i64 %3 to double
  store double %65, ptr %64, align 8, !tbaa !37
  %66 = sitofp i64 %51 to double
  %67 = getelementptr inbounds %struct._SegmentInfo, ptr %64, i64 0, i32 1
  store double %66, ptr %67, align 8, !tbaa !39
  %68 = getelementptr inbounds %struct._SegmentInfo, ptr %64, i64 0, i32 2
  store double %65, ptr %68, align 8, !tbaa !40
  %69 = getelementptr inbounds %struct._SegmentInfo, ptr %64, i64 0, i32 3
  store double -1.000000e+00, ptr %69, align 8, !tbaa !41
  %70 = add nuw nsw i64 %61, 32
  br label %72

71:                                               ; preds = %60
  br i1 %53, label %72, label %284

72:                                               ; preds = %63, %71
  %73 = phi i64 [ %70, %63 ], [ %61, %71 ]
  %74 = icmp eq i32 %5, 3
  br label %75

75:                                               ; preds = %72, %278
  %76 = phi i64 [ 0, %72 ], [ %280, %278 ]
  %77 = phi i64 [ %73, %72 ], [ %279, %278 ]
  %78 = getelementptr inbounds i8, ptr %44, i64 %77
  %79 = add nsw i64 %77, -32
  %80 = getelementptr inbounds i8, ptr %44, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !37
  %82 = fptosi double %81 to i64
  %83 = getelementptr %struct._SegmentInfo, ptr %78, i64 -1, i32 2
  %84 = load double, ptr %83, align 8, !tbaa !40
  %85 = fptosi double %84 to i64
  %86 = getelementptr %struct._SegmentInfo, ptr %78, i64 -1, i32 3
  %87 = load double, ptr %86, align 8, !tbaa !41
  %88 = fptosi double %87 to i64
  %89 = getelementptr %struct._SegmentInfo, ptr %78, i64 -1, i32 1
  %90 = load double, ptr %89, align 8, !tbaa !39
  %91 = fptosi double %90 to i64
  %92 = add nsw i64 %91, %88
  %93 = add nsw i64 %82, 1
  %94 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %92, i64 noundef %93, i64 noundef 1, ptr noundef nonnull %39) #29
  %95 = call ptr @GetAuthenticPixels(ptr noundef nonnull %40, i64 noundef 0, i64 noundef %92, i64 noundef %93, i64 noundef 1, ptr noundef nonnull %39) #29
  %96 = icmp eq ptr %94, null
  %97 = icmp eq ptr %95, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %282, label %99

99:                                               ; preds = %75
  %100 = icmp sgt i64 %82, -1
  br i1 %100, label %101, label %121

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 %82
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 %82
  br label %104

104:                                              ; preds = %101, %116
  %105 = phi ptr [ %118, %116 ], [ %102, %101 ]
  %106 = phi i64 [ %119, %116 ], [ %82, %101 ]
  %107 = phi ptr [ %117, %116 ], [ %103, %101 ]
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 3
  %109 = load i16, ptr %108, align 2, !tbaa !42
  %110 = icmp eq i16 %109, -1
  br i1 %110, label %121, label %111

111:                                              ; preds = %104
  %112 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %107, ptr noundef nonnull %7) #29
  %113 = icmp eq i32 %112, 0
  br i1 %74, label %114, label %115

114:                                              ; preds = %111
  br i1 %113, label %121, label %116

115:                                              ; preds = %111
  br i1 %113, label %116, label %121

116:                                              ; preds = %115, %114
  store i16 -1, ptr %108, align 2, !tbaa !42
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 -1
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 -1
  %119 = add nsw i64 %106, -1
  %120 = icmp sgt i64 %106, 0
  br i1 %120, label %104, label %121, !llvm.loop !43

121:                                              ; preds = %116, %104, %114, %115, %99
  %122 = phi i64 [ %82, %99 ], [ %106, %115 ], [ %106, %114 ], [ %106, %104 ], [ -1, %116 ]
  %123 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %40, ptr noundef nonnull %39) #29
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %282, label %125

125:                                              ; preds = %121
  %126 = icmp sge i64 %122, %82
  %127 = zext i1 %126 to i32
  br i1 %126, label %150, label %128

128:                                              ; preds = %125
  %129 = add nsw i64 %122, 1
  %130 = icmp slt i64 %129, %82
  br i1 %130, label %131, label %150

131:                                              ; preds = %128
  %132 = icmp slt i64 %77, 1048608
  br i1 %132, label %138, label %133

133:                                              ; preds = %131
  %134 = icmp eq ptr %0, null
  br i1 %134, label %336, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %137 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1314, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %136) #29
  br label %336

138:                                              ; preds = %131
  %139 = sub nsw i64 0, %88
  %140 = icmp sgt i64 %91, -1
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i64, ptr %24, align 8, !tbaa !35
  %143 = icmp sgt i64 %142, %91
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = sitofp i64 %129 to double
  store double %145, ptr %80, align 8, !tbaa !37
  %146 = sitofp i64 %92 to double
  store double %146, ptr %89, align 8, !tbaa !39
  %147 = add nsw i64 %82, -1
  %148 = sitofp i64 %147 to double
  store double %148, ptr %83, align 8, !tbaa !40
  %149 = sitofp i64 %139 to double
  store double %149, ptr %86, align 8, !tbaa !41
  br label %150

150:                                              ; preds = %128, %138, %141, %144, %125
  %151 = phi i64 [ %79, %125 ], [ %77, %144 ], [ %79, %141 ], [ %79, %138 ], [ %79, %128 ]
  %152 = phi i64 [ %76, %125 ], [ %129, %144 ], [ %129, %141 ], [ %129, %138 ], [ %129, %128 ]
  %153 = phi i64 [ %122, %125 ], [ %93, %144 ], [ %93, %141 ], [ %93, %138 ], [ %93, %128 ]
  %154 = add nsw i64 %92, %88
  %155 = icmp sgt i64 %154, -1
  %156 = sitofp i64 %92 to double
  %157 = sitofp i64 %88 to double
  %158 = add i64 %85, 1
  %159 = sub nsw i64 0, %88
  %160 = icmp sgt i64 %91, -1
  %161 = sitofp i64 %158 to double
  %162 = sitofp i64 %159 to double
  br label %163

163:                                              ; preds = %275, %150
  %164 = phi i64 [ %151, %150 ], [ %246, %275 ]
  %165 = phi i64 [ %152, %150 ], [ %276, %275 ]
  %166 = phi i32 [ %127, %150 ], [ 0, %275 ]
  %167 = phi i64 [ %153, %150 ], [ %276, %275 ]
  %168 = getelementptr inbounds i8, ptr %44, i64 %164
  %169 = icmp eq i32 %166, 0
  br i1 %169, label %170, label %245

170:                                              ; preds = %163
  %171 = load i64, ptr %18, align 8, !tbaa !34
  %172 = icmp slt i64 %167, %171
  br i1 %172, label %173, label %207

173:                                              ; preds = %170
  %174 = sub i64 %171, %167
  %175 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef %167, i64 noundef %92, i64 noundef %174, i64 noundef 1, ptr noundef nonnull %39) #29
  %176 = load i64, ptr %18, align 8, !tbaa !34
  %177 = sub i64 %176, %167
  %178 = call ptr @GetAuthenticPixels(ptr noundef nonnull %40, i64 noundef %167, i64 noundef %92, i64 noundef %177, i64 noundef 1, ptr noundef nonnull %39) #29
  %179 = icmp eq ptr %175, null
  %180 = icmp eq ptr %178, null
  %181 = select i1 %179, i1 true, i1 %180
  br i1 %181, label %278, label %182

182:                                              ; preds = %173
  %183 = load i64, ptr %18, align 8, !tbaa !34
  %184 = icmp slt i64 %167, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %182, %197
  %186 = phi ptr [ %199, %197 ], [ %178, %182 ]
  %187 = phi i64 [ %200, %197 ], [ %167, %182 ]
  %188 = phi ptr [ %198, %197 ], [ %175, %182 ]
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 3
  %190 = load i16, ptr %189, align 2, !tbaa !42
  %191 = icmp eq i16 %190, -1
  br i1 %191, label %203, label %192

192:                                              ; preds = %185
  %193 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %188, ptr noundef nonnull %7) #29
  %194 = icmp eq i32 %193, 0
  br i1 %74, label %195, label %196

195:                                              ; preds = %192
  br i1 %194, label %203, label %197

196:                                              ; preds = %192
  br i1 %194, label %197, label %203

197:                                              ; preds = %196, %195
  store i16 -1, ptr %189, align 2, !tbaa !42
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %188, i64 1
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 1
  %200 = add nsw i64 %187, 1
  %201 = load i64, ptr %18, align 8, !tbaa !34
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %185, label %203, !llvm.loop !44

203:                                              ; preds = %197, %185, %195, %196, %182
  %204 = phi i64 [ %167, %182 ], [ %187, %196 ], [ %187, %195 ], [ %187, %185 ], [ %200, %197 ]
  %205 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %40, ptr noundef nonnull %39) #29
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %278, label %207

207:                                              ; preds = %203, %170
  %208 = phi i64 [ %204, %203 ], [ %167, %170 ]
  %209 = icmp slt i64 %164, 1048576
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %212 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1349, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %211) #29
  br label %336

213:                                              ; preds = %207
  br i1 %155, label %214, label %225

214:                                              ; preds = %213
  %215 = load i64, ptr %24, align 8, !tbaa !35
  %216 = icmp slt i64 %154, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %214
  %218 = sitofp i64 %165 to double
  store double %218, ptr %168, align 8, !tbaa !37
  %219 = getelementptr inbounds %struct._SegmentInfo, ptr %168, i64 0, i32 1
  store double %156, ptr %219, align 8, !tbaa !39
  %220 = add nsw i64 %208, -1
  %221 = sitofp i64 %220 to double
  %222 = getelementptr inbounds %struct._SegmentInfo, ptr %168, i64 0, i32 2
  store double %221, ptr %222, align 8, !tbaa !40
  %223 = getelementptr inbounds %struct._SegmentInfo, ptr %168, i64 0, i32 3
  store double %157, ptr %223, align 8, !tbaa !41
  %224 = add nsw i64 %164, 32
  br label %225

225:                                              ; preds = %213, %214, %217
  %226 = phi i64 [ %224, %217 ], [ %164, %214 ], [ %164, %213 ]
  %227 = getelementptr inbounds i8, ptr %44, i64 %226
  %228 = icmp sgt i64 %208, %158
  br i1 %228, label %229, label %245

229:                                              ; preds = %225
  %230 = icmp slt i64 %226, 1048576
  br i1 %230, label %234, label %231

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %233 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1351, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %232) #29
  br label %336

234:                                              ; preds = %229
  br i1 %160, label %235, label %245

235:                                              ; preds = %234
  %236 = load i64, ptr %24, align 8, !tbaa !35
  %237 = icmp sgt i64 %236, %91
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  store double %161, ptr %227, align 8, !tbaa !37
  %239 = getelementptr inbounds %struct._SegmentInfo, ptr %227, i64 0, i32 1
  store double %156, ptr %239, align 8, !tbaa !39
  %240 = add nsw i64 %208, -1
  %241 = sitofp i64 %240 to double
  %242 = getelementptr inbounds %struct._SegmentInfo, ptr %227, i64 0, i32 2
  store double %241, ptr %242, align 8, !tbaa !40
  %243 = getelementptr inbounds %struct._SegmentInfo, ptr %227, i64 0, i32 3
  store double %162, ptr %243, align 8, !tbaa !41
  %244 = add nsw i64 %226, 32
  br label %245

245:                                              ; preds = %225, %234, %235, %238, %163
  %246 = phi i64 [ %244, %238 ], [ %226, %235 ], [ %226, %234 ], [ %226, %225 ], [ %164, %163 ]
  %247 = phi i64 [ %208, %238 ], [ %208, %235 ], [ %208, %234 ], [ %208, %225 ], [ %167, %163 ]
  %248 = add nsw i64 %247, 1
  %249 = icmp slt i64 %247, %85
  br i1 %249, label %250, label %275

250:                                              ; preds = %245
  %251 = sub nsw i64 %85, %248
  %252 = add nsw i64 %251, 1
  %253 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %248, i64 noundef %92, i64 noundef %252, i64 noundef 1, ptr noundef nonnull %39) #29
  %254 = call ptr @GetAuthenticPixels(ptr noundef nonnull %40, i64 noundef %248, i64 noundef %92, i64 noundef %252, i64 noundef 1, ptr noundef nonnull %39) #29
  %255 = icmp eq ptr %253, null
  %256 = icmp eq ptr %254, null
  %257 = select i1 %255, i1 true, i1 %256
  br i1 %257, label %278, label %258

258:                                              ; preds = %250, %270
  %259 = phi ptr [ %272, %270 ], [ %254, %250 ]
  %260 = phi i64 [ %273, %270 ], [ %248, %250 ]
  %261 = phi ptr [ %271, %270 ], [ %253, %250 ]
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 0, i32 3
  %263 = load i16, ptr %262, align 2, !tbaa !42
  %264 = icmp eq i16 %263, -1
  br i1 %264, label %275, label %265

265:                                              ; preds = %258
  %266 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef nonnull %261, ptr noundef nonnull %7) #29
  %267 = icmp eq i32 %266, 0
  br i1 %74, label %268, label %269

268:                                              ; preds = %265
  br i1 %267, label %270, label %275

269:                                              ; preds = %265
  br i1 %267, label %275, label %270

270:                                              ; preds = %269, %268
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 1
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 1
  %273 = add i64 %260, 1
  %274 = icmp eq i64 %260, %85
  br i1 %274, label %275, label %258, !llvm.loop !45

275:                                              ; preds = %269, %268, %258, %270, %245
  %276 = phi i64 [ %248, %245 ], [ %260, %269 ], [ %260, %268 ], [ %260, %258 ], [ %158, %270 ]
  %277 = icmp sgt i64 %276, %85
  br i1 %277, label %278, label %163, !llvm.loop !46

278:                                              ; preds = %275, %173, %203, %250
  %279 = phi i64 [ %164, %173 ], [ %164, %203 ], [ %246, %250 ], [ %246, %275 ]
  %280 = phi i64 [ %165, %173 ], [ %165, %203 ], [ %165, %250 ], [ %276, %275 ]
  %281 = icmp sgt i64 %279, 0
  br i1 %281, label %75, label %282

282:                                              ; preds = %121, %75, %278
  %283 = load i64, ptr %24, align 8, !tbaa !35
  br label %284

284:                                              ; preds = %282, %71
  %285 = phi i64 [ %283, %282 ], [ %52, %71 ]
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %287, label %329

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 3
  br label %289

289:                                              ; preds = %287, %325
  %290 = phi i64 [ 0, %287 ], [ %326, %325 ]
  %291 = load i64, ptr %18, align 8, !tbaa !34
  %292 = call ptr @GetVirtualPixels(ptr noundef nonnull %40, i64 noundef 0, i64 noundef %290, i64 noundef %291, i64 noundef 1, ptr noundef nonnull %39) #29
  %293 = load i64, ptr %18, align 8, !tbaa !34
  %294 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %290, i64 noundef %293, i64 noundef 1, ptr noundef nonnull %39) #29
  %295 = icmp eq ptr %292, null
  %296 = icmp eq ptr %294, null
  %297 = select i1 %295, i1 true, i1 %296
  br i1 %297, label %329, label %298

298:                                              ; preds = %289
  %299 = load i64, ptr %18, align 8, !tbaa !34
  %300 = icmp sgt i64 %299, 0
  br i1 %300, label %301, label %322

301:                                              ; preds = %298, %316
  %302 = phi i64 [ %317, %316 ], [ %299, %298 ]
  %303 = phi ptr [ %319, %316 ], [ %294, %298 ]
  %304 = phi i64 [ %320, %316 ], [ 0, %298 ]
  %305 = phi ptr [ %318, %316 ], [ %292, %298 ]
  %306 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 0, i32 3
  %307 = load i16, ptr %306, align 2, !tbaa !42
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %301
  call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %304, i64 noundef %290, ptr noundef nonnull %8) #32
  %310 = load i16, ptr %288, align 2, !tbaa !42
  %311 = uitofp i16 %310 to float
  %312 = getelementptr inbounds %struct._PixelPacket, ptr %303, i64 0, i32 3
  %313 = load i16, ptr %312, align 2, !tbaa !42
  %314 = uitofp i16 %313 to float
  call fastcc void @MagickCompositeOver(ptr noundef nonnull %8, float noundef %311, ptr noundef nonnull %303, float noundef %314, ptr noundef nonnull %303) #32
  %315 = load i64, ptr %18, align 8, !tbaa !34
  br label %316

316:                                              ; preds = %309, %301
  %317 = phi i64 [ %315, %309 ], [ %302, %301 ]
  %318 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 1
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %303, i64 1
  %320 = add nuw nsw i64 %304, 1
  %321 = icmp slt i64 %320, %317
  br i1 %321, label %301, label %322, !llvm.loop !47

322:                                              ; preds = %316, %298
  %323 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %39) #29
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %322
  %326 = add nuw nsw i64 %290, 1
  %327 = load i64, ptr %24, align 8, !tbaa !35
  %328 = icmp slt i64 %326, %327
  br i1 %328, label %289, label %329, !llvm.loop !48

329:                                              ; preds = %325, %289, %322, %284
  %330 = phi i64 [ 0, %284 ], [ %290, %322 ], [ %290, %289 ], [ %326, %325 ]
  %331 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %44) #29
  %332 = call ptr @DestroyImage(ptr noundef nonnull %40) #29
  %333 = load i64, ptr %24, align 8, !tbaa !35
  %334 = icmp eq i64 %330, %333
  %335 = zext i1 %334 to i32
  br label %336

336:                                              ; preds = %231, %210, %133, %135, %46, %36, %27, %23, %15, %17, %329
  %337 = phi i32 [ %335, %329 ], [ 0, %17 ], [ 0, %15 ], [ 0, %23 ], [ 0, %27 ], [ 0, %36 ], [ 0, %46 ], [ 0, %135 ], [ 0, %133 ], [ 0, %210 ], [ 0, %231 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  ret i32 %337
}

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsColorSimilar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetFillColor(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 5
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %3, align 2
  br label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !56
  %14 = add nsw i64 %13, %1
  %15 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !57
  %17 = add nsw i64 %16, %2
  %18 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 58
  %19 = tail call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %6, i32 noundef 7, i64 noundef %14, i64 noundef %17, ptr noundef %3, ptr noundef nonnull %18) #29
  %20 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !36
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  store i16 0, ptr %24, align 2, !tbaa !42
  br label %25

25:                                               ; preds = %11, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickCompositeOver(ptr nocapture noundef readonly %0, float noundef %1, ptr noundef readonly %2, float noundef %3, ptr noundef writeonly %4) unnamed_addr #9 {
  %6 = fcmp oeq float %1, 6.553500e+04
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = icmp eq ptr %4, %2
  br i1 %8, label %51, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %2, align 2
  store i64 %10, ptr %4, align 2
  br label %51

11:                                               ; preds = %5
  %12 = fpext float %1 to double
  %13 = fpext float %3 to double
  %14 = fmul double %12, 0xBDF0002000300040
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %13, double 1.000000e+00)
  %16 = fcmp olt double %15, 0.000000e+00
  %17 = select i1 %16, double 0.000000e+00, double %15
  %18 = fsub double 1.000000e+00, %17
  %19 = tail call fastcc double @PerceptibleReciprocal(double noundef %17) #32
  %20 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !58
  %22 = uitofp i16 %21 to float
  %23 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !58
  %25 = uitofp i16 %24 to float
  %26 = tail call fastcc float @MagickOver_(float noundef %22, float noundef %1, float noundef %25, float noundef %3) #32
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !59
  %30 = uitofp i16 %29 to float
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !59
  %33 = uitofp i16 %32 to float
  %34 = tail call fastcc float @MagickOver_(float noundef %30, float noundef %1, float noundef %33, float noundef %3) #32
  %35 = load i16, ptr %0, align 2, !tbaa !60
  %36 = uitofp i16 %35 to float
  %37 = load i16, ptr %2, align 2, !tbaa !60
  %38 = uitofp i16 %37 to float
  %39 = tail call fastcc float @MagickOver_(float noundef %36, float noundef %1, float noundef %38, float noundef %3) #32
  %40 = insertelement <2 x float> poison, float %39, i64 0
  %41 = insertelement <2 x float> %40, float %34, i64 1
  %42 = fpext <2 x float> %41 to <2 x double>
  %43 = insertelement <4 x double> poison, double %19, i64 0
  %44 = insertelement <4 x double> %43, double %18, i64 1
  %45 = shufflevector <4 x double> %44, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %46 = shufflevector <2 x double> %42, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %47 = insertelement <4 x double> %46, double 6.553500e+04, i64 3
  %48 = insertelement <4 x double> %47, double %27, i64 2
  %49 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %45, <4 x double> %48, <4 x double> <double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01>)
  %50 = fptoui <4 x double> %49 to <4 x i16>
  store <4 x i16> %50, ptr %4, align 2, !tbaa !61
  br label %51

51:                                               ; preds = %7, %9, %11
  ret void
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #11 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #11 {
  %5 = fpext float %1 to double
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0xBEF0001000100010, double 1.000000e+00)
  %7 = fpext float %0 to double
  %8 = fpext float %3 to double
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 0xBEF0001000100010, double 1.000000e+00)
  %10 = fpext float %2 to double
  %11 = fmul double %9, %10
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = fmul double %12, %5
  %14 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %13)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @ConstituteComponentGenesis() local_unnamed_addr #11 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ConstituteComponentTerminus() local_unnamed_addr #11 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DeleteImageAttribute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @DeleteImageProperty(ptr noundef %0, ptr noundef %1) #29
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DeleteImageList(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1529, ptr noundef nonnull @.str.7) #29
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %0) #29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %15, %9
  %13 = phi ptr [ %0, %9 ], [ %17, %15 ]
  %14 = icmp sgt i64 %1, 0
  br i1 %14, label %20, label %29

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %17, %15 ], [ %0, %9 ]
  %17 = tail call ptr @GetPreviousImageInList(ptr noundef %16) #29
  %18 = tail call ptr @GetPreviousImageInList(ptr noundef %17) #29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %12, label %15, !llvm.loop !62

20:                                               ; preds = %12, %25
  %21 = phi i64 [ %27, %25 ], [ 0, %12 ]
  %22 = phi ptr [ %26, %25 ], [ %13, %12 ]
  %23 = tail call ptr @GetNextImageInList(ptr noundef %22) #29
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @GetNextImageInList(ptr noundef %22) #29
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %29, label %20, !llvm.loop !63

29:                                               ; preds = %25, %12
  %30 = phi ptr [ %13, %12 ], [ %26, %25 ]
  store ptr %30, ptr %3, align 8, !tbaa !6
  call void @DeleteImageFromList(ptr noundef nonnull %3) #29
  br label %31

31:                                               ; preds = %20, %29
  %32 = phi i32 [ 1, %29 ], [ 0, %20 ]
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DeleteImageFromList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DeleteMagickRegistry(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #13
  %3 = sitofp i64 %0 to double
  %4 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %3) #29
  %5 = call i32 @DeleteImageRegistry(ptr noundef nonnull %2) #29
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #13
  ret i32 %5
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @DeleteImageRegistry(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @DestroyConstitute() local_unnamed_addr #11 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyMagickRegistry() local_unnamed_addr #0 {
  tail call void @RegistryComponentTerminus() #29
  ret void
}

; Function Attrs: optsize
declare void @RegistryComponentTerminus() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DescribeImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @IdentifyImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) #29
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @IdentifyImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyImageAttributes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1697, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #29
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 50
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroySplayTree(ptr noundef nonnull %10) #29
  store ptr %13, ptr %9, align 8, !tbaa !64
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyImages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1734, ptr noundef nonnull @.str.9) #29
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call ptr @DestroyImageList(ptr noundef nonnull %0) #29
  br label %11

11:                                               ; preds = %1, %9
  ret void
}

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyMagick() local_unnamed_addr #0 {
  tail call void @MagickCoreTerminus() #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DispatchImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1830, ptr noundef nonnull @.str.10) #29
  br label %15

15:                                               ; preds = %13, %9
  %16 = tail call i32 @ExportImagePixels(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #29
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @ExportImagePixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ExtractSubimageFromImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct._RectangleInfo, align 8
  store ptr %0, ptr %4, align 8, !tbaa !6
  store ptr %1, ptr %5, align 8, !tbaa !6
  store ptr %2, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %10 = load i64, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !34
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %35, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !35
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  %21 = uitofp i64 %12 to double
  %22 = uitofp i64 %18 to double
  %23 = fmul double %21, %22
  store double %23, ptr %7, align 8, !tbaa !65
  call void @SetGeometry(ptr noundef nonnull %1, ptr noundef nonnull %8) #29
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @ExtractSubimageFromImage.omp_outlined, ptr nonnull %4, ptr nonnull %5, ptr nonnull %7, ptr nonnull %6, ptr nonnull %8)
  %24 = load double, ptr %7, align 8, !tbaa !65
  %25 = load ptr, ptr %5, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 31
  %27 = load double, ptr %26, align 8, !tbaa !66
  %28 = fmul double %27, 0x3EF0001000100010
  %29 = fdiv double %28, 1.000000e+02
  %30 = fcmp ogt double %24, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr %4, align 8, !tbaa !6
  %33 = load ptr, ptr %6, align 8, !tbaa !6
  %34 = call ptr @CropImage(ptr noundef %32, ptr noundef nonnull %8, ptr noundef %33) #29
  br label %35

35:                                               ; preds = %20, %3, %14, %31
  %36 = phi ptr [ %34, %31 ], [ null, %14 ], [ null, %3 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret ptr %36
}

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ExtractSubimageFromImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %6) #12 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !35
  %15 = load ptr, ptr %3, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !35
  %18 = sub i64 %14, %17
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store i64 %19, ptr %9, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  store i64 1, ptr %10, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !tbaa !10
  %22 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %23 = load i64, ptr %9, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %9, align 8, !tbaa !67
  %25 = load i64, ptr %8, align 8, !tbaa !67
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %86, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %29 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  br label %30

30:                                               ; preds = %27, %78
  %31 = phi i64 [ %24, %27 ], [ %84, %78 ]
  %32 = phi i64 [ %25, %27 ], [ %82, %78 ]
  %33 = icmp sgt i64 %32, %31
  br i1 %33, label %78, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 8, !tbaa !6
  %36 = load ptr, ptr %3, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %34, %70
  %38 = phi i64 [ %71, %70 ], [ %31, %34 ]
  %39 = phi ptr [ %72, %70 ], [ %36, %34 ]
  %40 = phi ptr [ %73, %70 ], [ %35, %34 ]
  %41 = phi i64 [ %74, %70 ], [ %32, %34 ]
  %42 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !34
  %46 = sub i64 %43, %45
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %37, %58
  %49 = phi ptr [ %63, %58 ], [ %39, %37 ]
  %50 = phi ptr [ %60, %58 ], [ %40, %37 ]
  %51 = phi i64 [ %59, %58 ], [ 0, %37 ]
  %52 = load double, ptr %4, align 8, !tbaa !65
  %53 = load ptr, ptr %5, align 8, !tbaa !6
  %54 = call fastcc double @GetSimilarityMetric(ptr noundef nonnull %50, ptr noundef nonnull %49, i64 noundef %51, i64 noundef %41, double noundef %52, ptr noundef %53) #32
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ExtractSubimageFromImage.var)
  %55 = load double, ptr %4, align 8, !tbaa !65
  %56 = fcmp olt double %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store double %54, ptr %4, align 8, !tbaa !65
  store i64 %51, ptr %28, align 8, !tbaa !68
  store i64 %41, ptr %29, align 8, !tbaa !69
  br label %58

58:                                               ; preds = %57, %48
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ExtractSubimageFromImage.var)
  %59 = add nuw nsw i64 %51, 1
  %60 = load ptr, ptr %2, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !34
  %63 = load ptr, ptr %3, align 8, !tbaa !6
  %64 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 7
  %65 = load i64, ptr %64, align 8, !tbaa !34
  %66 = sub i64 %62, %65
  %67 = icmp slt i64 %59, %66
  br i1 %67, label %48, label %68, !llvm.loop !70

68:                                               ; preds = %58
  %69 = load i64, ptr %9, align 8, !tbaa !67
  br label %70

70:                                               ; preds = %68, %37
  %71 = phi i64 [ %69, %68 ], [ %38, %37 ]
  %72 = phi ptr [ %63, %68 ], [ %39, %37 ]
  %73 = phi ptr [ %60, %68 ], [ %40, %37 ]
  %74 = add nsw i64 %41, 1
  %75 = icmp slt i64 %41, %71
  br i1 %75, label %37, label %76

76:                                               ; preds = %70
  %77 = load i64, ptr %8, align 8, !tbaa !67
  br label %78

78:                                               ; preds = %76, %30
  %79 = phi i64 [ %32, %30 ], [ %77, %76 ]
  %80 = phi i64 [ %31, %30 ], [ %71, %76 ]
  %81 = load i64, ptr %10, align 8, !tbaa !67
  %82 = add nsw i64 %81, %79
  store i64 %82, ptr %8, align 8, !tbaa !67
  %83 = add nsw i64 %81, %80
  %84 = call i64 @llvm.smin.i64(i64 %83, i64 %19)
  store i64 %84, ptr %9, align 8, !tbaa !67
  %85 = icmp sgt i64 %82, %84
  br i1 %85, label %86, label %30

86:                                               ; preds = %78, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %87

87:                                               ; preds = %86, %7
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #13

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc double @GetSimilarityMetric(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, double noundef %4, ptr noundef %5) unnamed_addr #14 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !36
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !36
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %10, %6
  %16 = phi double [ 4.000000e+00, %14 ], [ 3.000000e+00, %10 ], [ 3.000000e+00, %6 ]
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !71
  %19 = icmp eq i32 %18, 12
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !71
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = fadd double %16, 1.000000e+00
  br label %26

26:                                               ; preds = %24, %20, %15
  %27 = phi double [ %25, %24 ], [ %16, %20 ], [ %16, %15 ]
  %28 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %5) #29
  %29 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %5) #29
  %30 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !35
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %167

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %36 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  br label %37

37:                                               ; preds = %33, %161
  %38 = phi i64 [ 0, %33 ], [ %165, %161 ]
  %39 = phi double [ 0.000000e+00, %33 ], [ %163, %161 ]
  %40 = phi double [ 1.000000e+00, %33 ], [ %164, %161 ]
  %41 = add nsw i64 %38, %3
  %42 = load i64, ptr %34, align 8, !tbaa !34
  %43 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %28, i64 noundef %2, i64 noundef %41, i64 noundef %42, i64 noundef 1, ptr noundef %5) #30
  %44 = load i64, ptr %34, align 8, !tbaa !34
  %45 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %29, i64 noundef 0, i64 noundef %38, i64 noundef %44, i64 noundef 1, ptr noundef %5) #30
  %46 = icmp eq ptr %43, null
  %47 = icmp eq ptr %45, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i64, ptr %30, align 8, !tbaa !35
  br label %161

51:                                               ; preds = %37
  %52 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %28) #29
  %53 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %29) #29
  %54 = load i64, ptr %34, align 8, !tbaa !34
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %150

56:                                               ; preds = %51
  %57 = load i32, ptr %7, align 8, !tbaa !36
  %58 = icmp eq i32 %57, 0
  %59 = load i32, ptr %17, align 4, !tbaa !71
  %60 = icmp eq i32 %59, 12
  %61 = icmp eq ptr %52, null
  %62 = icmp eq ptr %53, null
  br label %63

63:                                               ; preds = %56, %144
  %64 = phi i64 [ 0, %56 ], [ %148, %144 ]
  %65 = phi ptr [ %45, %56 ], [ %147, %144 ]
  %66 = phi ptr [ %43, %56 ], [ %146, %144 ]
  %67 = phi double [ %39, %56 ], [ %145, %144 ]
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  %69 = load i16, ptr %68, align 2, !tbaa !58
  %70 = uitofp i16 %69 to double
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 2
  %72 = load i16, ptr %71, align 2, !tbaa !58
  %73 = uitofp i16 %72 to double
  %74 = fsub double %70, %73
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fptrunc double %75 to float
  %77 = fmul float %76, %76
  %78 = fpext float %77 to double
  %79 = fadd double %67, %78
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  %81 = load i16, ptr %80, align 2, !tbaa !59
  %82 = uitofp i16 %81 to double
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !59
  %85 = uitofp i16 %84 to double
  %86 = fsub double %82, %85
  %87 = fmul double %86, 0x3EF0001000100010
  %88 = fptrunc double %87 to float
  %89 = fmul float %88, %88
  %90 = fpext float %89 to double
  %91 = fadd double %79, %90
  %92 = load i16, ptr %66, align 2, !tbaa !60
  %93 = uitofp i16 %92 to double
  %94 = load i16, ptr %65, align 2, !tbaa !60
  %95 = uitofp i16 %94 to double
  %96 = fsub double %93, %95
  %97 = fmul double %96, 0x3EF0001000100010
  %98 = fptrunc double %97 to float
  %99 = fmul float %98, %98
  %100 = fpext float %99 to double
  %101 = fadd double %91, %100
  br i1 %58, label %118, label %102

102:                                              ; preds = %63
  %103 = load i32, ptr %35, align 8, !tbaa !36
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 3
  %107 = load i16, ptr %106, align 2, !tbaa !42
  %108 = uitofp i16 %107 to double
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 3
  %110 = load i16, ptr %109, align 2, !tbaa !42
  %111 = uitofp i16 %110 to double
  %112 = fsub double %108, %111
  %113 = fmul double %112, 0x3EF0001000100010
  %114 = fptrunc double %113 to float
  %115 = fmul float %114, %114
  %116 = fpext float %115 to double
  %117 = fadd double %101, %116
  br label %118

118:                                              ; preds = %105, %102, %63
  %119 = phi double [ %117, %105 ], [ %101, %102 ], [ %101, %63 ]
  br i1 %60, label %120, label %144

120:                                              ; preds = %118
  %121 = load i32, ptr %36, align 4, !tbaa !71
  %122 = icmp eq i32 %121, 12
  br i1 %122, label %123, label %144

123:                                              ; preds = %120
  br i1 %61, label %128, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds i16, ptr %52, i64 %64
  %126 = load i16, ptr %125, align 2, !tbaa !61
  %127 = zext i16 %126 to i32
  br label %128

128:                                              ; preds = %123, %124
  %129 = phi i32 [ %127, %124 ], [ 0, %123 ]
  %130 = sitofp i32 %129 to double
  br i1 %62, label %135, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds i16, ptr %53, i64 %64
  %133 = load i16, ptr %132, align 2, !tbaa !61
  %134 = zext i16 %133 to i32
  br label %135

135:                                              ; preds = %128, %131
  %136 = phi i32 [ %134, %131 ], [ 0, %128 ]
  %137 = sitofp i32 %136 to double
  %138 = fsub double %130, %137
  %139 = fmul double %138, 0x3EF0001000100010
  %140 = fptrunc double %139 to float
  %141 = fmul float %140, %140
  %142 = fpext float %141 to double
  %143 = fadd double %119, %142
  br label %144

144:                                              ; preds = %135, %120, %118
  %145 = phi double [ %143, %135 ], [ %119, %120 ], [ %119, %118 ]
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 1
  %148 = add nuw nsw i64 %64, 1
  %149 = icmp eq i64 %148, %54
  br i1 %149, label %150, label %63, !llvm.loop !72

150:                                              ; preds = %144, %51
  %151 = phi double [ %39, %51 ], [ %145, %144 ]
  %152 = tail call double @sqrt(double noundef %151) #29
  %153 = load i64, ptr %34, align 8, !tbaa !34
  %154 = uitofp i64 %153 to double
  %155 = fdiv double %152, %154
  %156 = load i64, ptr %30, align 8, !tbaa !35
  %157 = uitofp i64 %156 to double
  %158 = fdiv double %155, %157
  %159 = fdiv double %158, %27
  %160 = fcmp ogt double %159, %4
  br i1 %160, label %167, label %161

161:                                              ; preds = %49, %150
  %162 = phi i64 [ %156, %150 ], [ %50, %49 ]
  %163 = phi double [ %151, %150 ], [ %39, %49 ]
  %164 = phi double [ %159, %150 ], [ %40, %49 ]
  %165 = add nuw nsw i64 %38, 1
  %166 = icmp slt i64 %165, %162
  br i1 %166, label %37, label %167, !llvm.loop !73

167:                                              ; preds = %161, %150, %26
  %168 = phi double [ 1.000000e+00, %26 ], [ %159, %150 ], [ %164, %161 ]
  %169 = tail call ptr @DestroyCacheView(ptr noundef %29) #29
  %170 = tail call ptr @DestroyCacheView(ptr noundef %28) #29
  ret double %168
}

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #15

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare !callback !74 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FlattenImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @MergeImageLayers(ptr noundef %0, i32 noundef 14, ptr noundef %1) #29
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @MergeImageLayers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FormatImageAttributeList(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %6 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef %2, ptr noundef %3) #29
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 4095
  store i8 0, ptr %9, align 1, !tbaa !12
  br label %10

10:                                               ; preds = %8, %4
  %11 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  ret i32 %11
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FormatImagePropertyList(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %6 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef %2, ptr noundef %3) #29
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 4095
  store i8 0, ptr %9, align 1, !tbaa !12
  br label %10

10:                                               ; preds = %8, %4
  %11 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FormatImageAttribute(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i64 @FormatLocaleStringList(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef %2, ptr noundef nonnull %5) #29
  call void @llvm.va_end(ptr nonnull %5)
  %7 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: optsize
declare i64 @FormatLocaleStringList(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @FormatMagickStringList(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #19 {
  %5 = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #29
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i64 %1
  %9 = getelementptr i8, ptr %8, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !12
  br label %10

10:                                               ; preds = %7, %4
  %11 = sext i32 %5 to i64
  ret i64 %11
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @FormatMagickString(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #19 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i64 @FormatMagickStringList(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #32, !range !76
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FormatStringList(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2219, ptr noundef nonnull @.str.2) #29
  %5 = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef %1, ptr noundef %2) #29
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 4095
  store i8 0, ptr %8, align 1, !tbaa !12
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FormatString(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i64 @FormatLocaleStringList(ptr noundef %0, i64 noundef 4096, ptr noundef %1, ptr noundef nonnull %3) #29
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @FuzzyColorMatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #20 {
  %4 = fcmp oeq double %2, 0.000000e+00
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !58
  %7 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !58
  %9 = icmp eq i16 %6, %8
  %10 = select i1 %4, i1 %9, i1 false
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !59
  %14 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !59
  %16 = icmp eq i16 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i16, ptr %0, align 2, !tbaa !60
  %19 = load i16, ptr %1, align 2, !tbaa !60
  %20 = icmp eq i16 %18, %19
  br i1 %20, label %51, label %21

21:                                               ; preds = %3, %17, %11
  %22 = phi i16 [ %6, %17 ], [ %6, %11 ], [ %8, %3 ]
  %23 = uitofp i16 %6 to float
  %24 = uitofp i16 %22 to float
  %25 = fsub float %23, %24
  %26 = fmul float %25, %25
  %27 = fpext float %26 to double
  %28 = fmul double %2, %2
  %29 = fcmp olt double %28, %27
  br i1 %29, label %51, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !59
  %33 = uitofp i16 %32 to float
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !59
  %36 = uitofp i16 %35 to float
  %37 = fsub float %33, %36
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %26)
  %39 = fpext float %38 to double
  %40 = fcmp olt double %28, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %30
  %42 = load i16, ptr %0, align 2, !tbaa !60
  %43 = uitofp i16 %42 to float
  %44 = load i16, ptr %1, align 2, !tbaa !60
  %45 = uitofp i16 %44 to float
  %46 = fsub float %43, %45
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %38)
  %48 = fpext float %47 to double
  %49 = fcmp uge double %28, %48
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %41, %30, %21, %17
  %52 = phi i32 [ 1, %17 ], [ 0, %21 ], [ 0, %30 ], [ %50, %41 ]
  ret i32 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FuzzyColorCompare(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2330, ptr noundef nonnull @.str.11) #29
  %5 = tail call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %1, ptr noundef %2) #29
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FuzzyOpacityCompare(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2371, ptr noundef nonnull @.str.11) #29
  %5 = tail call i32 @IsOpacitySimilar(ptr noundef %0, ptr noundef %1, ptr noundef %2) #29
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @IsOpacitySimilar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetConfigureBlob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2411, ptr noundef nonnull @.str.5, ptr noundef %0) #29
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2412, ptr noundef nonnull @.str.2) #29
  %8 = tail call i64 @CopyMagickString(ptr noundef %1, ptr noundef %0, i64 noundef 4096) #29
  %9 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.12) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %9, ptr noundef nonnull @.str.14, ptr noundef %0) #29
  %13 = tail call i32 @IsPathAccessible(ptr noundef %1) #29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @FileToBlob(ptr noundef %1, i64 noundef -1, ptr noundef %2, ptr noundef %3) #29
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ null, %11 ]
  %19 = tail call ptr @DestroyString(ptr noundef nonnull %9) #29
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi ptr [ %18, %17 ], [ null, %4 ]
  %22 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #29
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %29 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull %28, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18, ptr noundef %0) #29
  %30 = tail call i32 @IsPathAccessible(ptr noundef %1) #29
  %31 = icmp ne i32 %30, 0
  %32 = icmp eq ptr %21, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = tail call ptr @FileToBlob(ptr noundef %1, i64 noundef -1, ptr noundef %2, ptr noundef %3) #29
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi ptr [ %35, %34 ], [ %21, %27 ]
  %38 = tail call ptr @DestroyString(ptr noundef nonnull %28) #29
  br label %39

39:                                               ; preds = %24, %36
  %40 = phi ptr [ %37, %36 ], [ %21, %24 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = tail call ptr @GetClientPath() #29
  %44 = load i8, ptr %43, align 1, !tbaa !12
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %47 = tail call ptr @GetClientPath() #29
  %48 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef %47, i64 noundef 4096) #29
  call void @ChopPathComponents(ptr noundef nonnull %5, i64 noundef 1) #29
  %49 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull %5, ptr noundef nonnull @.str.14, ptr noundef %0) #29
  %50 = call i32 @IsPathAccessible(ptr noundef %1) #29
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  br label %56

53:                                               ; preds = %46
  %54 = call ptr @FileToBlob(ptr noundef %1, i64 noundef -1, ptr noundef %2, ptr noundef %3) #29
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %42, %52, %53
  %57 = call i32 @IsPathAccessible(ptr noundef %1) #29
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call ptr @FileToBlob(ptr noundef %1, i64 noundef -1, ptr noundef %2, ptr noundef %3) #29
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %59
  %63 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2523, i32 noundef 395, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, ptr noundef %1) #29
  br label %64

64:                                               ; preds = %39, %53, %62, %59
  %65 = phi ptr [ null, %62 ], [ %60, %59 ], [ %54, %53 ], [ %40, %39 ]
  ret ptr %65
}

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @FileToBlob(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetClientPath() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ChopPathComponents(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCacheView(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @GetCacheViewException(ptr noundef %0) #29
  %7 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %6) #30
  ret ptr %7
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewException(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCacheViewIndexes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCacheViewPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @GetCacheViewException(ptr noundef %0) #29
  %7 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %6) #30
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageAttribute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2696, ptr noundef nonnull @.str.20) #29
  %5 = tail call ptr @GetImageProperty(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 50
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyAttribute) #29
  store ptr %12, ptr %8, align 8, !tbaa !64
  br label %16

13:                                               ; preds = %7
  %14 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %9, ptr noundef %1) #29
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %13, %11
  %17 = tail call dereferenceable_or_null(40) ptr @AcquireMagickMemory(i64 noundef 40) #31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #29
  %20 = tail call ptr @__errno_location() #35
  %21 = load i32, ptr %20, align 4, !tbaa !10
  %22 = call ptr @GetExceptionMessage(i32 noundef %21) #29
  %23 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2715, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %22) #29
  %24 = call ptr @DestroyString(ptr noundef %22) #29
  call void @CatchException(ptr noundef nonnull %3) #29
  %25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #29
  call void @MagickCoreTerminus() #29
  call void @_exit(i32 noundef 1) #36
  unreachable

26:                                               ; preds = %16
  %27 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %17, i32 noundef 0, i64 noundef 40) #29
  %28 = tail call ptr @ConstantString(ptr noundef %1) #29
  store ptr %28, ptr %17, align 8, !tbaa !77
  %29 = tail call ptr @ConstantString(ptr noundef nonnull %5) #29
  %30 = getelementptr inbounds %struct._ImageAttribute, ptr %17, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !79
  %31 = load ptr, ptr %8, align 8, !tbaa !64
  %32 = load ptr, ptr %17, align 8, !tbaa !77
  %33 = tail call i32 @AddValueToSplayTree(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %17) #29
  br label %34

34:                                               ; preds = %2, %13, %26
  %35 = phi ptr [ %17, %26 ], [ %14, %13 ], [ null, %2 ]
  ret ptr %35
}

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyAttribute(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._ImageAttribute, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyString(ptr noundef nonnull %3) #29
  store ptr %6, ptr %2, align 8, !tbaa !79
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #29
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #21

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageClippingPathAttribute(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetImageAttribute(ptr noundef %0, ptr noundef nonnull @.str.21) #32
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageFromMagickRegistry(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  store i64 0, ptr %1, align 8, !tbaa !67
  %4 = tail call ptr @GetImageRegistry(i32 noundef 1, ptr noundef %0, ptr noundef %2) #29
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagickRegistry(i64 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  store i32 0, ptr %1, align 4, !tbaa !10
  store i64 0, ptr %2, align 8, !tbaa !67
  %6 = sitofp i64 %0 to double
  %7 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %6) #29
  %8 = call ptr @GetImageRegistry(i32 noundef 1, ptr noundef nonnull %5, ptr noundef %3) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = call ptr @GetImageRegistry(i32 noundef 2, ptr noundef nonnull %5, ptr noundef %3) #29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call ptr @GetImageRegistry(i32 noundef 0, ptr noundef nonnull %5, ptr noundef %3) #29
  br label %15

15:                                               ; preds = %10, %4, %13
  %16 = phi ptr [ %14, %13 ], [ %8, %4 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageGeometry(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2892, ptr noundef nonnull @.str.22) #29
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq i32 %2, 0
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br i1 %11, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @ParseRegionGeometry(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %12) #29
  br label %17

15:                                               ; preds = %10
  %16 = tail call i32 @ParsePageGeometry(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %12) #29
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ParsePageGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageList(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2937, ptr noundef nonnull @.str.7) #29
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call ptr @GetImageFromList(ptr noundef nonnull %0, i64 noundef %1) #29
  %11 = tail call ptr @CloneImage(ptr noundef %10, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #29
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @GetImageFromList(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageListIndex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2973, ptr noundef nonnull @.str.7) #29
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i64 @GetImageIndexInList(ptr noundef nonnull %0) #29
  ret i64 %8
}

; Function Attrs: optsize
declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageListSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3006, ptr noundef nonnull @.str.7) #29
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #29
  ret i64 %8
}

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %7 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #29
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetIndexes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @GetAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMagickGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3138, ptr noundef nonnull @.str.23) #29
  %7 = tail call i32 @ParseMetaGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #29
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @ParseMetaGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3171, ptr noundef nonnull @.str.7) #29
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #29
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextImageAttribute(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetNextImageProperty(ptr noundef %0) #29
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @GetImageAttribute(ptr noundef %0, ptr noundef nonnull %2) #32
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @GetNextImageProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetNumberScenes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3244, ptr noundef nonnull @.str.7) #29
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #29
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetOnePixel(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PixelPacket, align 8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %6 = call i32 @GetOneAuthenticPixel(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #29
  %7 = load i64, ptr %4, align 8
  ret i64 %7
}

; Function Attrs: optsize
declare i32 @GetOneAuthenticPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetPixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @GetAuthenticPixelQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetPreviousImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3350, ptr noundef nonnull @.str.7) #29
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %0) #29
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @HSLTransform(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #22 {
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
  %24 = tail call fastcc float @HueToRGB(float noundef %21, float noundef %17, float noundef %23) #32
  %25 = fptrunc double %0 to float
  %26 = tail call fastcc float @HueToRGB(float noundef %21, float noundef %17, float noundef %25) #32
  %27 = fadd double %0, 0xBFD5555555555555
  %28 = fptrunc double %27 to float
  %29 = tail call fastcc float @HueToRGB(float noundef %21, float noundef %17, float noundef %28) #32
  %30 = fmul float %24, 6.553500e+04
  %31 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %30) #32
  store i16 %31, ptr %3, align 2, !tbaa !61
  %32 = fmul float %26, 6.553500e+04
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #32
  store i16 %33, ptr %4, align 2, !tbaa !61
  %34 = fmul float %29, 6.553500e+04
  %35 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %34) #32
  store i16 %35, ptr %5, align 2, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @HueToRGB(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #11 {
  %4 = fcmp olt float %2, 0.000000e+00
  %5 = fadd float %2, 1.000000e+00
  %6 = select i1 %4, float %5, float %2
  %7 = fcmp ogt float %6, 1.000000e+00
  %8 = fadd float %6, -1.000000e+00
  %9 = select i1 %7, float %8, float %6
  %10 = fpext float %9 to double
  %11 = fmul double %10, 6.000000e+00
  %12 = fcmp olt double %11, 1.000000e+00
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = fpext float %0 to double
  %15 = fsub float %1, %0
  %16 = fpext float %15 to double
  %17 = fmul double %16, 6.000000e+00
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %10, double %14)
  %19 = fptrunc double %18 to float
  br label %34

20:                                               ; preds = %3
  %21 = fmul double %10, 2.000000e+00
  %22 = fcmp olt double %21, 1.000000e+00
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = fmul double %10, 3.000000e+00
  %25 = fcmp olt double %24, 2.000000e+00
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = fpext float %0 to double
  %28 = fsub float %1, %0
  %29 = fpext float %28 to double
  %30 = fmul double %29, 6.000000e+00
  %31 = fsub double 0x3FE5555555555555, %10
  %32 = tail call double @llvm.fmuladd.f64(double %30, double %31, double %27)
  %33 = fptrunc double %32 to float
  br label %34

34:                                               ; preds = %23, %20, %26, %13
  %35 = phi float [ %19, %13 ], [ %33, %26 ], [ %1, %20 ], [ %0, %23 ]
  ret float %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #11 {
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
define dso_local void @IdentityAffine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3451, ptr noundef nonnull @.str.24) #29
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3452, ptr noundef nonnull @.str.2) #29
  %4 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 48) #29
  store double 1.000000e+00, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 3
  store double 1.000000e+00, ptr %5, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @InitializeMagick(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @MagickCoreGenesis(ptr noundef %0, i32 noundef 0) #29
  ret void
}

; Function Attrs: optsize
declare void @MagickCoreGenesis(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @InterpolatePixelColor(ptr dead_on_unwind noalias writable sret(%struct._MagickPixelPacket) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [16 x %struct._MagickPixelPacket], align 16
  %9 = alloca [16 x %struct._MagickPixelPacket], align 16
  %10 = alloca [4 x %struct._MagickPixelPacket], align 16
  %11 = alloca [16 x %struct._MagickPixelPacket], align 16
  %12 = alloca [16 x float], align 16
  %13 = alloca [1 x %struct._MagickPixelPacket], align 16
  %14 = alloca %struct._RectangleInfo, align 8
  %15 = alloca [1 x %struct._MagickPixelPacket], align 16
  %16 = alloca [4 x %struct._MagickPixelPacket], align 16
  %17 = alloca [4 x float], align 16
  %18 = alloca %struct._PointInfo, align 8
  %19 = alloca [1 x %struct._MagickPixelPacket], align 16
  %20 = alloca [16 x %struct._MagickPixelPacket], align 16
  tail call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef %0) #29
  switch i32 %3, label %172 [
    i32 1, label %21
    i32 2, label %109
    i32 8, label %767
    i32 4, label %337
    i32 5, label %365
    i32 6, label %375
    i32 7, label %757
  ]

21:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %8) #13
  %22 = tail call double @llvm.floor.f64(double %4)
  %23 = fptosi double %22 to i64
  %24 = add nsw i64 %23, -1
  %25 = tail call double @llvm.floor.f64(double %5)
  %26 = fptosi double %25 to i64
  %27 = add nsw i64 %26, -1
  %28 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %24, i64 noundef %27, i64 noundef 4, i64 noundef 4, ptr noundef %6) #30
  %29 = icmp eq ptr %28, null
  br i1 %29, label %108, label %30

30:                                               ; preds = %21
  %31 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #29
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  br label %36

36:                                               ; preds = %30, %104
  %37 = phi ptr [ %28, %30 ], [ %105, %104 ]
  %38 = phi i64 [ 0, %30 ], [ %106, %104 ]
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %38
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %39) #29
  %40 = getelementptr inbounds i16, ptr %31, i64 %38
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %37, ptr noundef %40, ptr noundef nonnull %39) #32
  %41 = load i32, ptr %32, align 8, !tbaa !36
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %38, i32 5
  %45 = load <2 x float>, ptr %44, align 8, !tbaa !82
  %46 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %38, i32 7
  %47 = load float, ptr %46, align 8, !tbaa !83
  %48 = load i32, ptr %33, align 4, !tbaa !71
  br label %70

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !42
  %52 = xor i16 %51, -1
  %53 = uitofp i16 %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %38, i32 5
  %57 = load <2 x float>, ptr %56, align 8, !tbaa !82
  %58 = insertelement <2 x float> poison, float %55, i64 0
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> zeroinitializer
  %60 = fmul <2 x float> %57, %59
  store <2 x float> %60, ptr %56, align 8, !tbaa !82
  %61 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %38, i32 7
  %62 = load float, ptr %61, align 8, !tbaa !83
  %63 = fmul float %62, %55
  store float %63, ptr %61, align 8, !tbaa !83
  %64 = load i32, ptr %33, align 4, !tbaa !71
  %65 = icmp eq i32 %64, 12
  br i1 %65, label %66, label %70

66:                                               ; preds = %49
  %67 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %38, i32 9
  %68 = load float, ptr %67, align 8, !tbaa !85
  %69 = fmul float %68, %55
  store float %69, ptr %67, align 8, !tbaa !85
  br label %70

70:                                               ; preds = %43, %49, %66
  %71 = phi i32 [ %64, %49 ], [ 12, %66 ], [ %48, %43 ]
  %72 = phi float [ %63, %49 ], [ %63, %66 ], [ %47, %43 ]
  %73 = phi float [ %55, %49 ], [ %55, %66 ], [ 1.000000e+00, %43 ]
  %74 = phi <2 x float> [ %60, %49 ], [ %60, %66 ], [ %45, %43 ]
  %75 = fpext float %73 to double
  %76 = call fastcc double @PerceptibleReciprocal(double noundef %75) #32
  %77 = fcmp olt double %76, 0.000000e+00
  %78 = select i1 %77, double 0.000000e+00, double %76
  %79 = fmul double %78, 6.250000e-02
  %80 = fpext <2 x float> %74 to <2 x double>
  %81 = fpext float %72 to double
  %82 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %38, i32 8
  %83 = load float, ptr %82, align 4, !tbaa !86
  %84 = fpext float %83 to double
  %85 = load <4 x float>, ptr %34, align 8, !tbaa !82
  %86 = fpext <4 x float> %85 to <4 x double>
  %87 = insertelement <4 x double> poison, double %79, i64 0
  %88 = insertelement <4 x double> %87, double %84, i64 1
  %89 = shufflevector <4 x double> %88, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %90 = shufflevector <2 x double> %80, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %91 = insertelement <4 x double> %90, double 6.250000e-02, i64 3
  %92 = insertelement <4 x double> %91, double %81, i64 2
  %93 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %89, <4 x double> %92, <4 x double> %86)
  %94 = fptrunc <4 x double> %93 to <4 x float>
  store <4 x float> %94, ptr %34, align 8, !tbaa !82
  %95 = icmp eq i32 %71, 12
  br i1 %95, label %96, label %104

96:                                               ; preds = %70
  %97 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %38, i32 9
  %98 = load float, ptr %97, align 8, !tbaa !85
  %99 = fpext float %98 to double
  %100 = load float, ptr %35, align 8, !tbaa !85
  %101 = fpext float %100 to double
  %102 = call double @llvm.fmuladd.f64(double %79, double %99, double %101)
  %103 = fptrunc double %102 to float
  store float %103, ptr %35, align 8, !tbaa !85
  br label %104

104:                                              ; preds = %96, %70
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 1
  %106 = add nuw nsw i64 %38, 1
  %107 = icmp eq i64 %106, 16
  br i1 %107, label %108, label %36, !llvm.loop !87

108:                                              ; preds = %104, %21
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %8) #13
  br label %885

109:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %10) #13
  %110 = tail call double @llvm.floor.f64(double %4)
  %111 = fptosi double %110 to i64
  %112 = add nsw i64 %111, -1
  %113 = tail call double @llvm.floor.f64(double %5)
  %114 = fptosi double %113 to i64
  %115 = add nsw i64 %114, -1
  %116 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %112, i64 noundef %115, i64 noundef 4, i64 noundef 4, ptr noundef %6) #30
  %117 = icmp eq ptr %116, null
  br i1 %117, label %171, label %118

118:                                              ; preds = %109
  %119 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #29
  br label %123

120:                                              ; preds = %123
  %121 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %122 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  br label %128

123:                                              ; preds = %118, %123
  %124 = phi i64 [ 0, %118 ], [ %126, %123 ]
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %124
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %125) #29
  %126 = add nuw nsw i64 %124, 1
  %127 = icmp eq i64 %126, 4
  br i1 %127, label %120, label %123, !llvm.loop !88

128:                                              ; preds = %120, %156
  %129 = phi ptr [ %116, %120 ], [ %157, %156 ]
  %130 = phi i64 [ 0, %120 ], [ %158, %156 ]
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 %130
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %131) #29
  %132 = getelementptr inbounds i16, ptr %119, i64 %130
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %129, ptr noundef %132, ptr noundef nonnull %131) #32
  %133 = load i32, ptr %121, align 8, !tbaa !36
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %156, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 3
  %137 = load i16, ptr %136, align 2, !tbaa !42
  %138 = xor i16 %137, -1
  %139 = uitofp i16 %138 to double
  %140 = fmul double %139, 0x3EF0001000100010
  %141 = fptrunc double %140 to float
  %142 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %9, i64 0, i64 %130, i32 5
  %143 = load <2 x float>, ptr %142, align 8, !tbaa !82
  %144 = insertelement <2 x float> poison, float %141, i64 0
  %145 = shufflevector <2 x float> %144, <2 x float> poison, <2 x i32> zeroinitializer
  %146 = fmul <2 x float> %143, %145
  store <2 x float> %146, ptr %142, align 8, !tbaa !82
  %147 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %9, i64 0, i64 %130, i32 7
  %148 = load float, ptr %147, align 8, !tbaa !83
  %149 = fmul float %148, %141
  store float %149, ptr %147, align 8, !tbaa !83
  %150 = load i32, ptr %122, align 4, !tbaa !71
  %151 = icmp eq i32 %150, 12
  br i1 %151, label %152, label %156

152:                                              ; preds = %135
  %153 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %9, i64 0, i64 %130, i32 9
  %154 = load float, ptr %153, align 8, !tbaa !85
  %155 = fmul float %154, %141
  store float %155, ptr %153, align 8, !tbaa !85
  br label %156

156:                                              ; preds = %135, %152, %128
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %158 = add nuw nsw i64 %130, 1
  %159 = icmp eq i64 %158, 16
  br i1 %159, label %160, label %128, !llvm.loop !89

160:                                              ; preds = %156
  %161 = fsub double %4, %110
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i64 [ 0, %160 ], [ %167, %162 ]
  %164 = shl nuw nsw i64 %163, 2
  %165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 %164
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %165) #29
  %166 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 %163
  call fastcc void @BicubicInterpolate(ptr noundef nonnull %165, double noundef %161, ptr noundef nonnull %166) #32
  %167 = add nuw nsw i64 %163, 1
  %168 = icmp eq i64 %167, 4
  br i1 %168, label %169, label %162, !llvm.loop !90

169:                                              ; preds = %162
  %170 = fsub double %5, %113
  call fastcc void @BicubicInterpolate(ptr noundef nonnull %10, double noundef %170, ptr noundef %0) #32
  br label %171

171:                                              ; preds = %109, %169
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %9) #13
  br label %885

172:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #13
  %173 = tail call double @llvm.floor.f64(double %4)
  %174 = fptosi double %173 to i64
  %175 = tail call double @llvm.floor.f64(double %5)
  %176 = fptosi double %175 to i64
  %177 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %174, i64 noundef %176, i64 noundef 2, i64 noundef 2, ptr noundef %6) #30
  %178 = icmp eq ptr %177, null
  br i1 %178, label %336, label %179

179:                                              ; preds = %172
  %180 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #29
  %181 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %182 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  br label %183

183:                                              ; preds = %179, %212
  %184 = phi ptr [ %177, %179 ], [ %213, %212 ]
  %185 = phi i64 [ 0, %179 ], [ %214, %212 ]
  %186 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 %185
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %186) #29
  %187 = getelementptr inbounds i16, ptr %180, i64 %185
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %184, ptr noundef %187, ptr noundef nonnull %186) #32
  %188 = getelementptr inbounds [16 x float], ptr %12, i64 0, i64 %185
  store float 1.000000e+00, ptr %188, align 4, !tbaa !82
  %189 = load i32, ptr %181, align 8, !tbaa !36
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %212, label %191

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 0, i32 3
  %193 = load i16, ptr %192, align 2, !tbaa !42
  %194 = xor i16 %193, -1
  %195 = uitofp i16 %194 to double
  %196 = fmul double %195, 0x3EF0001000100010
  %197 = fptrunc double %196 to float
  store float %197, ptr %188, align 4, !tbaa !82
  %198 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 %185, i32 5
  %199 = load <2 x float>, ptr %198, align 8, !tbaa !82
  %200 = insertelement <2 x float> poison, float %197, i64 0
  %201 = shufflevector <2 x float> %200, <2 x float> poison, <2 x i32> zeroinitializer
  %202 = fmul <2 x float> %199, %201
  store <2 x float> %202, ptr %198, align 8, !tbaa !82
  %203 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 %185, i32 7
  %204 = load float, ptr %203, align 8, !tbaa !83
  %205 = fmul float %204, %197
  store float %205, ptr %203, align 8, !tbaa !83
  %206 = load i32, ptr %182, align 4, !tbaa !71
  %207 = icmp eq i32 %206, 12
  br i1 %207, label %208, label %212

208:                                              ; preds = %191
  %209 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 %185, i32 9
  %210 = load float, ptr %209, align 8, !tbaa !85
  %211 = fmul float %210, %197
  store float %211, ptr %209, align 8, !tbaa !85
  br label %212

212:                                              ; preds = %191, %208, %183
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 1
  %214 = add nuw nsw i64 %185, 1
  %215 = icmp eq i64 %214, 4
  br i1 %215, label %216, label %183, !llvm.loop !91

216:                                              ; preds = %212
  %217 = fsub double %4, %173
  %218 = fsub double %5, %175
  %219 = fsub double 1.000000e+00, %218
  %220 = fsub double 1.000000e+00, %217
  %221 = load float, ptr %12, align 16, !tbaa !82
  %222 = fpext float %221 to double
  %223 = getelementptr inbounds [16 x float], ptr %12, i64 0, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !82
  %225 = fpext float %224 to double
  %226 = fmul double %217, %225
  %227 = call double @llvm.fmuladd.f64(double %220, double %222, double %226)
  %228 = getelementptr inbounds [16 x float], ptr %12, i64 0, i64 2
  %229 = load float, ptr %228, align 8, !tbaa !82
  %230 = fpext float %229 to double
  %231 = getelementptr inbounds [16 x float], ptr %12, i64 0, i64 3
  %232 = load float, ptr %231, align 4, !tbaa !82
  %233 = fpext float %232 to double
  %234 = fmul double %217, %233
  %235 = call double @llvm.fmuladd.f64(double %220, double %230, double %234)
  %236 = fmul double %218, %235
  %237 = call double @llvm.fmuladd.f64(double %219, double %227, double %236)
  %238 = fcmp olt double %237, 0.000000e+00
  %239 = select i1 %238, double 0.000000e+00, double %237
  %240 = call fastcc double @PerceptibleReciprocal(double noundef %239) #32
  %241 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %242 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 1, i32 5
  %243 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 2, i32 5
  %244 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 3, i32 5
  %245 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %246 = load <2 x float>, ptr %241, align 16, !tbaa !82
  %247 = fpext <2 x float> %246 to <2 x double>
  %248 = load <2 x float>, ptr %242, align 8, !tbaa !82
  %249 = fpext <2 x float> %248 to <2 x double>
  %250 = insertelement <2 x double> poison, double %217, i64 0
  %251 = shufflevector <2 x double> %250, <2 x double> poison, <2 x i32> zeroinitializer
  %252 = fmul <2 x double> %251, %249
  %253 = insertelement <2 x double> poison, double %220, i64 0
  %254 = shufflevector <2 x double> %253, <2 x double> poison, <2 x i32> zeroinitializer
  %255 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %254, <2 x double> %247, <2 x double> %252)
  %256 = load <2 x float>, ptr %243, align 16, !tbaa !82
  %257 = fpext <2 x float> %256 to <2 x double>
  %258 = load <2 x float>, ptr %244, align 8, !tbaa !82
  %259 = fpext <2 x float> %258 to <2 x double>
  %260 = fmul <2 x double> %251, %259
  %261 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %254, <2 x double> %257, <2 x double> %260)
  %262 = insertelement <2 x double> poison, double %218, i64 0
  %263 = shufflevector <2 x double> %262, <2 x double> poison, <2 x i32> zeroinitializer
  %264 = fmul <2 x double> %263, %261
  %265 = insertelement <2 x double> poison, double %219, i64 0
  %266 = shufflevector <2 x double> %265, <2 x double> poison, <2 x i32> zeroinitializer
  %267 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %266, <2 x double> %255, <2 x double> %264)
  %268 = insertelement <2 x double> poison, double %240, i64 0
  %269 = shufflevector <2 x double> %268, <2 x double> poison, <2 x i32> zeroinitializer
  %270 = fmul <2 x double> %269, %267
  %271 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %272 = load float, ptr %271, align 8, !tbaa !83
  %273 = fpext float %272 to double
  %274 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 1, i32 7
  %275 = load float, ptr %274, align 16, !tbaa !83
  %276 = fpext float %275 to double
  %277 = fmul double %217, %276
  %278 = call double @llvm.fmuladd.f64(double %220, double %273, double %277)
  %279 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 2, i32 7
  %280 = load float, ptr %279, align 8, !tbaa !83
  %281 = fpext float %280 to double
  %282 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 3, i32 7
  %283 = load float, ptr %282, align 16, !tbaa !83
  %284 = fpext float %283 to double
  %285 = fmul double %217, %284
  %286 = call double @llvm.fmuladd.f64(double %220, double %281, double %285)
  %287 = fmul double %218, %286
  %288 = call double @llvm.fmuladd.f64(double %219, double %278, double %287)
  %289 = fmul double %240, %288
  %290 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %291 = load float, ptr %290, align 4, !tbaa !86
  %292 = fpext float %291 to double
  %293 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 1, i32 8
  %294 = load float, ptr %293, align 4, !tbaa !86
  %295 = fpext float %294 to double
  %296 = fmul double %217, %295
  %297 = call double @llvm.fmuladd.f64(double %220, double %292, double %296)
  %298 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 2, i32 8
  %299 = load float, ptr %298, align 4, !tbaa !86
  %300 = fpext float %299 to double
  %301 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 3, i32 8
  %302 = load float, ptr %301, align 4, !tbaa !86
  %303 = fpext float %302 to double
  %304 = fmul double %217, %303
  %305 = call double @llvm.fmuladd.f64(double %220, double %300, double %304)
  %306 = fmul double %218, %305
  %307 = call double @llvm.fmuladd.f64(double %219, double %297, double %306)
  %308 = shufflevector <2 x double> %270, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %309 = insertelement <4 x double> %308, double %289, i64 2
  %310 = insertelement <4 x double> %309, double %307, i64 3
  %311 = fptrunc <4 x double> %310 to <4 x float>
  store <4 x float> %311, ptr %245, align 8, !tbaa !82
  %312 = load i32, ptr %182, align 4, !tbaa !71
  %313 = icmp eq i32 %312, 12
  br i1 %313, label %314, label %336

314:                                              ; preds = %216
  %315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %316 = load float, ptr %315, align 16, !tbaa !85
  %317 = fpext float %316 to double
  %318 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 1, i32 9
  %319 = load float, ptr %318, align 8, !tbaa !85
  %320 = fpext float %319 to double
  %321 = fmul double %217, %320
  %322 = call double @llvm.fmuladd.f64(double %220, double %317, double %321)
  %323 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 2, i32 9
  %324 = load float, ptr %323, align 16, !tbaa !85
  %325 = fpext float %324 to double
  %326 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %11, i64 0, i64 3, i32 9
  %327 = load float, ptr %326, align 8, !tbaa !85
  %328 = fpext float %327 to double
  %329 = fmul double %217, %328
  %330 = call double @llvm.fmuladd.f64(double %220, double %325, double %329)
  %331 = fmul double %218, %330
  %332 = call double @llvm.fmuladd.f64(double %219, double %322, double %331)
  %333 = fmul double %240, %332
  %334 = fptrunc double %333 to float
  %335 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %334, ptr %335, align 8, !tbaa !85
  br label %336

336:                                              ; preds = %216, %314, %172
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %11) #13
  br label %885

337:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #13
  store i64 4, ptr %14, align 8, !tbaa !92
  %338 = getelementptr inbounds %struct._RectangleInfo, ptr %14, i64 0, i32 1
  store i64 4, ptr %338, align 8, !tbaa !93
  %339 = tail call double @llvm.floor.f64(double %4)
  %340 = fptosi double %339 to i64
  %341 = add nsw i64 %340, -1
  %342 = getelementptr inbounds %struct._RectangleInfo, ptr %14, i64 0, i32 2
  store i64 %341, ptr %342, align 8, !tbaa !68
  %343 = tail call double @llvm.floor.f64(double %5)
  %344 = fptosi double %343 to i64
  %345 = add nsw i64 %344, -1
  %346 = getelementptr inbounds %struct._RectangleInfo, ptr %14, i64 0, i32 3
  store i64 %345, ptr %346, align 8, !tbaa !69
  %347 = call ptr @ExcerptImage(ptr noundef %1, ptr noundef nonnull %14, ptr noundef %6) #29
  %348 = icmp eq ptr %347, null
  br i1 %348, label %364, label %349

349:                                              ; preds = %337
  %350 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 32
  %351 = load i32, ptr %350, align 8, !tbaa !94
  %352 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 30
  %353 = load double, ptr %352, align 8, !tbaa !95
  %354 = call ptr @ResizeImage(ptr noundef nonnull %347, i64 noundef 1, i64 noundef 1, i32 noundef %351, double noundef %353, ptr noundef %6) #29
  %355 = call ptr @DestroyImage(ptr noundef nonnull %347) #29
  %356 = icmp eq ptr %354, null
  br i1 %356, label %364, label %357

357:                                              ; preds = %349
  %358 = call ptr @GetVirtualPixels(ptr noundef nonnull %354, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %6) #29
  %359 = icmp eq ptr %358, null
  br i1 %359, label %362, label %360

360:                                              ; preds = %357
  %361 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %354) #29
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %13) #29
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %358, ptr noundef %361, ptr noundef %0) #32
  br label %362

362:                                              ; preds = %357, %360
  %363 = call ptr @DestroyImage(ptr noundef nonnull %354) #29
  br label %364

364:                                              ; preds = %362, %349, %337
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #13
  br label %885

365:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #13
  %366 = tail call double @llvm.floor.f64(double %4)
  %367 = fptosi double %366 to i64
  %368 = tail call double @llvm.floor.f64(double %5)
  %369 = fptosi double %368 to i64
  %370 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %367, i64 noundef %369, i64 noundef 1, i64 noundef 1, ptr noundef %6) #30
  %371 = icmp eq ptr %370, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %365
  %373 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #29
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %15) #29
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %370, ptr noundef %373, ptr noundef %0) #32
  br label %374

374:                                              ; preds = %365, %372
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #13
  br label %885

375:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #13
  %376 = tail call double @llvm.floor.f64(double %4)
  %377 = fptosi double %376 to i64
  %378 = tail call double @llvm.floor.f64(double %5)
  %379 = fptosi double %378 to i64
  %380 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %377, i64 noundef %379, i64 noundef 2, i64 noundef 2, ptr noundef %6) #30
  %381 = icmp eq ptr %380, null
  br i1 %381, label %756, label %382

382:                                              ; preds = %375
  %383 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #29
  %384 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %385 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  br label %386

386:                                              ; preds = %382, %415
  %387 = phi ptr [ %380, %382 ], [ %416, %415 ]
  %388 = phi i64 [ 0, %382 ], [ %417, %415 ]
  %389 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %388
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %389) #29
  %390 = getelementptr inbounds i16, ptr %383, i64 %388
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %387, ptr noundef %390, ptr noundef nonnull %389) #32
  %391 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 %388
  store float 1.000000e+00, ptr %391, align 4, !tbaa !82
  %392 = load i32, ptr %384, align 8, !tbaa !36
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %415, label %394

394:                                              ; preds = %386
  %395 = getelementptr inbounds %struct._PixelPacket, ptr %387, i64 0, i32 3
  %396 = load i16, ptr %395, align 2, !tbaa !42
  %397 = xor i16 %396, -1
  %398 = uitofp i16 %397 to double
  %399 = fmul double %398, 0x3EF0001000100010
  %400 = fptrunc double %399 to float
  store float %400, ptr %391, align 4, !tbaa !82
  %401 = getelementptr inbounds [4 x %struct._MagickPixelPacket], ptr %16, i64 0, i64 %388, i32 5
  %402 = load <2 x float>, ptr %401, align 8, !tbaa !82
  %403 = insertelement <2 x float> poison, float %400, i64 0
  %404 = shufflevector <2 x float> %403, <2 x float> poison, <2 x i32> zeroinitializer
  %405 = fmul <2 x float> %402, %404
  store <2 x float> %405, ptr %401, align 8, !tbaa !82
  %406 = getelementptr inbounds [4 x %struct._MagickPixelPacket], ptr %16, i64 0, i64 %388, i32 7
  %407 = load float, ptr %406, align 8, !tbaa !83
  %408 = fmul float %407, %400
  store float %408, ptr %406, align 8, !tbaa !83
  %409 = load i32, ptr %385, align 4, !tbaa !71
  %410 = icmp eq i32 %409, 12
  br i1 %410, label %411, label %415

411:                                              ; preds = %394
  %412 = getelementptr inbounds [4 x %struct._MagickPixelPacket], ptr %16, i64 0, i64 %388, i32 9
  %413 = load float, ptr %412, align 8, !tbaa !85
  %414 = fmul float %413, %400
  store float %414, ptr %412, align 8, !tbaa !85
  br label %415

415:                                              ; preds = %394, %411, %386
  %416 = getelementptr inbounds %struct._PixelPacket, ptr %387, i64 1
  %417 = add nuw nsw i64 %388, 1
  %418 = icmp eq i64 %417, 4
  br i1 %418, label %419, label %386, !llvm.loop !96

419:                                              ; preds = %415
  %420 = fsub double %4, %376
  store double %420, ptr %18, align 8, !tbaa !97
  %421 = fsub double %5, %378
  %422 = getelementptr inbounds %struct._PointInfo, ptr %18, i64 0, i32 1
  store double %421, ptr %422, align 8, !tbaa !98
  %423 = call fastcc float @MagickPixelLuma(ptr noundef nonnull %16) #32
  %424 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3
  %425 = call fastcc float @MagickPixelLuma(ptr noundef nonnull %424) #32
  %426 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1
  %427 = call fastcc float @MagickPixelLuma(ptr noundef nonnull %426) #32
  %428 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2
  %429 = call fastcc float @MagickPixelLuma(ptr noundef nonnull %428) #32
  %430 = insertelement <2 x float> poison, float %423, i64 0
  %431 = insertelement <2 x float> %430, float %427, i64 1
  %432 = insertelement <2 x float> poison, float %425, i64 0
  %433 = insertelement <2 x float> %432, float %429, i64 1
  %434 = fsub <2 x float> %431, %433
  %435 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %434)
  %436 = extractelement <2 x float> %435, i64 0
  %437 = extractelement <2 x float> %435, i64 1
  %438 = fcmp olt float %436, %437
  br i1 %438, label %439, label %595

439:                                              ; preds = %419
  %440 = fcmp ugt double %420, %421
  br i1 %440, label %518, label %441

441:                                              ; preds = %439
  %442 = fsub double 1.000000e+00, %421
  store double %442, ptr %422, align 8, !tbaa !98
  %443 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 2
  %444 = load float, ptr %443, align 8, !tbaa !82
  %445 = fpext float %444 to double
  %446 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %447 = load float, ptr %446, align 4, !tbaa !82
  %448 = fpext float %447 to double
  %449 = load float, ptr %17, align 16, !tbaa !82
  %450 = fpext float %449 to double
  %451 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %445, double noundef %448, double noundef %450) #32
  %452 = fcmp olt double %451, 0.000000e+00
  %453 = select i1 %452, double 0.000000e+00, double %451
  %454 = call fastcc double @PerceptibleReciprocal(double noundef %453) #32
  %455 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 5
  %456 = load float, ptr %455, align 16, !tbaa !99
  %457 = fpext float %456 to double
  %458 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 5
  %459 = load float, ptr %458, align 8, !tbaa !99
  %460 = fpext float %459 to double
  %461 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 5
  %462 = load float, ptr %461, align 16, !tbaa !99
  %463 = fpext float %462 to double
  %464 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %457, double noundef %460, double noundef %463) #32
  %465 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %466 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 6
  %467 = load float, ptr %466, align 4, !tbaa !100
  %468 = fpext float %467 to double
  %469 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 6
  %470 = load float, ptr %469, align 4, !tbaa !100
  %471 = fpext float %470 to double
  %472 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 6
  %473 = load float, ptr %472, align 4, !tbaa !100
  %474 = fpext float %473 to double
  %475 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %468, double noundef %471, double noundef %474) #32
  %476 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 7
  %477 = load float, ptr %476, align 8, !tbaa !83
  %478 = fpext float %477 to double
  %479 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 7
  %480 = load float, ptr %479, align 16, !tbaa !83
  %481 = fpext float %480 to double
  %482 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 7
  %483 = load float, ptr %482, align 8, !tbaa !83
  %484 = fpext float %483 to double
  %485 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %478, double noundef %481, double noundef %484) #32
  %486 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 8
  %487 = load float, ptr %486, align 4, !tbaa !86
  %488 = fpext float %487 to double
  %489 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 8
  %490 = load float, ptr %489, align 4, !tbaa !86
  %491 = fpext float %490 to double
  %492 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 8
  %493 = load float, ptr %492, align 4, !tbaa !86
  %494 = fpext float %493 to double
  %495 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %488, double noundef %491, double noundef %494) #32
  %496 = insertelement <4 x double> poison, double %454, i64 0
  %497 = shufflevector <4 x double> %496, <4 x double> poison, <4 x i32> zeroinitializer
  %498 = insertelement <4 x double> poison, double %464, i64 0
  %499 = insertelement <4 x double> %498, double %475, i64 1
  %500 = insertelement <4 x double> %499, double %485, i64 2
  %501 = insertelement <4 x double> %500, double %495, i64 3
  %502 = fmul <4 x double> %497, %501
  %503 = fptrunc <4 x double> %502 to <4 x float>
  store <4 x float> %503, ptr %465, align 8, !tbaa !82
  %504 = load i32, ptr %385, align 4, !tbaa !71
  %505 = icmp eq i32 %504, 12
  br i1 %505, label %506, label %756

506:                                              ; preds = %441
  %507 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 9
  %508 = load float, ptr %507, align 16, !tbaa !85
  %509 = fpext float %508 to double
  %510 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 9
  %511 = load float, ptr %510, align 8, !tbaa !85
  %512 = fpext float %511 to double
  %513 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 9
  %514 = load float, ptr %513, align 16, !tbaa !85
  %515 = fpext float %514 to double
  %516 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %509, double noundef %512, double noundef %515) #32
  %517 = fmul double %454, %516
  br label %752

518:                                              ; preds = %439
  %519 = fsub double 1.000000e+00, %420
  store double %519, ptr %18, align 8, !tbaa !97
  %520 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  %521 = load float, ptr %520, align 4, !tbaa !82
  %522 = fpext float %521 to double
  %523 = load float, ptr %17, align 16, !tbaa !82
  %524 = fpext float %523 to double
  %525 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %526 = load float, ptr %525, align 4, !tbaa !82
  %527 = fpext float %526 to double
  %528 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %522, double noundef %524, double noundef %527) #32
  %529 = fcmp olt double %528, 0.000000e+00
  %530 = select i1 %529, double 0.000000e+00, double %528
  %531 = call fastcc double @PerceptibleReciprocal(double noundef %530) #32
  %532 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 5
  %533 = load float, ptr %532, align 8, !tbaa !99
  %534 = fpext float %533 to double
  %535 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 5
  %536 = load float, ptr %535, align 16, !tbaa !99
  %537 = fpext float %536 to double
  %538 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 5
  %539 = load float, ptr %538, align 8, !tbaa !99
  %540 = fpext float %539 to double
  %541 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %534, double noundef %537, double noundef %540) #32
  %542 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %543 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 6
  %544 = load float, ptr %543, align 4, !tbaa !100
  %545 = fpext float %544 to double
  %546 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 6
  %547 = load float, ptr %546, align 4, !tbaa !100
  %548 = fpext float %547 to double
  %549 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 6
  %550 = load float, ptr %549, align 4, !tbaa !100
  %551 = fpext float %550 to double
  %552 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %545, double noundef %548, double noundef %551) #32
  %553 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 7
  %554 = load float, ptr %553, align 16, !tbaa !83
  %555 = fpext float %554 to double
  %556 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 7
  %557 = load float, ptr %556, align 8, !tbaa !83
  %558 = fpext float %557 to double
  %559 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 7
  %560 = load float, ptr %559, align 16, !tbaa !83
  %561 = fpext float %560 to double
  %562 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %555, double noundef %558, double noundef %561) #32
  %563 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 8
  %564 = load float, ptr %563, align 4, !tbaa !86
  %565 = fpext float %564 to double
  %566 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 8
  %567 = load float, ptr %566, align 4, !tbaa !86
  %568 = fpext float %567 to double
  %569 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 8
  %570 = load float, ptr %569, align 4, !tbaa !86
  %571 = fpext float %570 to double
  %572 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %565, double noundef %568, double noundef %571) #32
  %573 = insertelement <4 x double> poison, double %531, i64 0
  %574 = shufflevector <4 x double> %573, <4 x double> poison, <4 x i32> zeroinitializer
  %575 = insertelement <4 x double> poison, double %541, i64 0
  %576 = insertelement <4 x double> %575, double %552, i64 1
  %577 = insertelement <4 x double> %576, double %562, i64 2
  %578 = insertelement <4 x double> %577, double %572, i64 3
  %579 = fmul <4 x double> %574, %578
  %580 = fptrunc <4 x double> %579 to <4 x float>
  store <4 x float> %580, ptr %542, align 8, !tbaa !82
  %581 = load i32, ptr %385, align 4, !tbaa !71
  %582 = icmp eq i32 %581, 12
  br i1 %582, label %583, label %756

583:                                              ; preds = %518
  %584 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 9
  %585 = load float, ptr %584, align 8, !tbaa !85
  %586 = fpext float %585 to double
  %587 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 9
  %588 = load float, ptr %587, align 16, !tbaa !85
  %589 = fpext float %588 to double
  %590 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 9
  %591 = load float, ptr %590, align 8, !tbaa !85
  %592 = fpext float %591 to double
  %593 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %586, double noundef %589, double noundef %592) #32
  %594 = fmul double %531, %593
  br label %752

595:                                              ; preds = %419
  %596 = fsub double 1.000000e+00, %421
  %597 = fcmp ugt double %420, %596
  br i1 %597, label %674, label %598

598:                                              ; preds = %595
  %599 = load float, ptr %17, align 16, !tbaa !82
  %600 = fpext float %599 to double
  %601 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  %602 = load float, ptr %601, align 4, !tbaa !82
  %603 = fpext float %602 to double
  %604 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 2
  %605 = load float, ptr %604, align 8, !tbaa !82
  %606 = fpext float %605 to double
  %607 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %600, double noundef %603, double noundef %606) #32
  %608 = fcmp olt double %607, 0.000000e+00
  %609 = select i1 %608, double 0.000000e+00, double %607
  %610 = call fastcc double @PerceptibleReciprocal(double noundef %609) #32
  %611 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 5
  %612 = load float, ptr %611, align 16, !tbaa !99
  %613 = fpext float %612 to double
  %614 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 5
  %615 = load float, ptr %614, align 8, !tbaa !99
  %616 = fpext float %615 to double
  %617 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 5
  %618 = load float, ptr %617, align 16, !tbaa !99
  %619 = fpext float %618 to double
  %620 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %613, double noundef %616, double noundef %619) #32
  %621 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %622 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 6
  %623 = load float, ptr %622, align 4, !tbaa !100
  %624 = fpext float %623 to double
  %625 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 6
  %626 = load float, ptr %625, align 4, !tbaa !100
  %627 = fpext float %626 to double
  %628 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 6
  %629 = load float, ptr %628, align 4, !tbaa !100
  %630 = fpext float %629 to double
  %631 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %624, double noundef %627, double noundef %630) #32
  %632 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 7
  %633 = load float, ptr %632, align 8, !tbaa !83
  %634 = fpext float %633 to double
  %635 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 7
  %636 = load float, ptr %635, align 16, !tbaa !83
  %637 = fpext float %636 to double
  %638 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 7
  %639 = load float, ptr %638, align 8, !tbaa !83
  %640 = fpext float %639 to double
  %641 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %634, double noundef %637, double noundef %640) #32
  %642 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 8
  %643 = load float, ptr %642, align 4, !tbaa !86
  %644 = fpext float %643 to double
  %645 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 8
  %646 = load float, ptr %645, align 4, !tbaa !86
  %647 = fpext float %646 to double
  %648 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 8
  %649 = load float, ptr %648, align 4, !tbaa !86
  %650 = fpext float %649 to double
  %651 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %644, double noundef %647, double noundef %650) #32
  %652 = insertelement <4 x double> poison, double %610, i64 0
  %653 = shufflevector <4 x double> %652, <4 x double> poison, <4 x i32> zeroinitializer
  %654 = insertelement <4 x double> poison, double %620, i64 0
  %655 = insertelement <4 x double> %654, double %631, i64 1
  %656 = insertelement <4 x double> %655, double %641, i64 2
  %657 = insertelement <4 x double> %656, double %651, i64 3
  %658 = fmul <4 x double> %653, %657
  %659 = fptrunc <4 x double> %658 to <4 x float>
  store <4 x float> %659, ptr %621, align 8, !tbaa !82
  %660 = load i32, ptr %385, align 4, !tbaa !71
  %661 = icmp eq i32 %660, 12
  br i1 %661, label %662, label %756

662:                                              ; preds = %598
  %663 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 9
  %664 = load float, ptr %663, align 16, !tbaa !85
  %665 = fpext float %664 to double
  %666 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 9
  %667 = load float, ptr %666, align 8, !tbaa !85
  %668 = fpext float %667 to double
  %669 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 9
  %670 = load float, ptr %669, align 16, !tbaa !85
  %671 = fpext float %670 to double
  %672 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %665, double noundef %668, double noundef %671) #32
  %673 = fmul double %610, %672
  br label %752

674:                                              ; preds = %595
  %675 = fsub double 1.000000e+00, %420
  store double %675, ptr %18, align 8, !tbaa !97
  store double %596, ptr %422, align 8, !tbaa !98
  %676 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %677 = load float, ptr %676, align 4, !tbaa !82
  %678 = fpext float %677 to double
  %679 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 2
  %680 = load float, ptr %679, align 8, !tbaa !82
  %681 = fpext float %680 to double
  %682 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  %683 = load float, ptr %682, align 4, !tbaa !82
  %684 = fpext float %683 to double
  %685 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %678, double noundef %681, double noundef %684) #32
  %686 = fcmp olt double %685, 0.000000e+00
  %687 = select i1 %686, double 0.000000e+00, double %685
  %688 = call fastcc double @PerceptibleReciprocal(double noundef %687) #32
  %689 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 5
  %690 = load float, ptr %689, align 8, !tbaa !99
  %691 = fpext float %690 to double
  %692 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 5
  %693 = load float, ptr %692, align 16, !tbaa !99
  %694 = fpext float %693 to double
  %695 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 5
  %696 = load float, ptr %695, align 8, !tbaa !99
  %697 = fpext float %696 to double
  %698 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %691, double noundef %694, double noundef %697) #32
  %699 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %700 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 6
  %701 = load float, ptr %700, align 4, !tbaa !100
  %702 = fpext float %701 to double
  %703 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 6
  %704 = load float, ptr %703, align 4, !tbaa !100
  %705 = fpext float %704 to double
  %706 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 6
  %707 = load float, ptr %706, align 4, !tbaa !100
  %708 = fpext float %707 to double
  %709 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %702, double noundef %705, double noundef %708) #32
  %710 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 7
  %711 = load float, ptr %710, align 16, !tbaa !83
  %712 = fpext float %711 to double
  %713 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 7
  %714 = load float, ptr %713, align 8, !tbaa !83
  %715 = fpext float %714 to double
  %716 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 7
  %717 = load float, ptr %716, align 16, !tbaa !83
  %718 = fpext float %717 to double
  %719 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %712, double noundef %715, double noundef %718) #32
  %720 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 8
  %721 = load float, ptr %720, align 4, !tbaa !86
  %722 = fpext float %721 to double
  %723 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 8
  %724 = load float, ptr %723, align 4, !tbaa !86
  %725 = fpext float %724 to double
  %726 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 8
  %727 = load float, ptr %726, align 4, !tbaa !86
  %728 = fpext float %727 to double
  %729 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %722, double noundef %725, double noundef %728) #32
  %730 = insertelement <4 x double> poison, double %688, i64 0
  %731 = shufflevector <4 x double> %730, <4 x double> poison, <4 x i32> zeroinitializer
  %732 = insertelement <4 x double> poison, double %698, i64 0
  %733 = insertelement <4 x double> %732, double %709, i64 1
  %734 = insertelement <4 x double> %733, double %719, i64 2
  %735 = insertelement <4 x double> %734, double %729, i64 3
  %736 = fmul <4 x double> %731, %735
  %737 = fptrunc <4 x double> %736 to <4 x float>
  store <4 x float> %737, ptr %699, align 8, !tbaa !82
  %738 = load i32, ptr %385, align 4, !tbaa !71
  %739 = icmp eq i32 %738, 12
  br i1 %739, label %740, label %756

740:                                              ; preds = %674
  %741 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 3, i32 9
  %742 = load float, ptr %741, align 8, !tbaa !85
  %743 = fpext float %742 to double
  %744 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 2, i32 9
  %745 = load float, ptr %744, align 16, !tbaa !85
  %746 = fpext float %745 to double
  %747 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 1, i32 9
  %748 = load float, ptr %747, align 8, !tbaa !85
  %749 = fpext float %748 to double
  %750 = call fastcc double @MeshInterpolate(ptr noundef nonnull %18, double noundef %743, double noundef %746, double noundef %749) #32
  %751 = fmul double %688, %750
  br label %752

752:                                              ; preds = %662, %740, %506, %583
  %753 = phi double [ %594, %583 ], [ %517, %506 ], [ %751, %740 ], [ %673, %662 ]
  %754 = fptrunc double %753 to float
  %755 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %754, ptr %755, align 8, !tbaa !85
  br label %756

756:                                              ; preds = %752, %518, %441, %674, %598, %375
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %16) #13
  br label %885

757:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #13
  %758 = fptrunc double %4 to float
  %759 = tail call fastcc i64 @NearestNeighbor(float noundef %758) #32
  %760 = fptrunc double %5 to float
  %761 = tail call fastcc i64 @NearestNeighbor(float noundef %760) #32
  %762 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %759, i64 noundef %761, i64 noundef 1, i64 noundef 1, ptr noundef %6) #30
  %763 = icmp eq ptr %762, null
  br i1 %763, label %766, label %764

764:                                              ; preds = %757
  %765 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #29
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %19) #29
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %762, ptr noundef %765, ptr noundef %0) #32
  br label %766

766:                                              ; preds = %757, %764
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #13
  br label %885

767:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %20) #13
  %768 = tail call double @llvm.floor.f64(double %4)
  %769 = fptosi double %768 to i64
  %770 = add nsw i64 %769, -1
  %771 = tail call double @llvm.floor.f64(double %5)
  %772 = fptosi double %771 to i64
  %773 = add nsw i64 %772, -1
  %774 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %2, i64 noundef %770, i64 noundef %773, i64 noundef 4, i64 noundef 4, ptr noundef %6) #30
  %775 = icmp eq ptr %774, null
  br i1 %775, label %884, label %776

776:                                              ; preds = %767
  %777 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %2) #29
  %778 = fsub double %4, %768
  %779 = fsub double %771, %5
  %780 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %781 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %782 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %783 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %784 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %785 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  br label %786

786:                                              ; preds = %776, %881
  %787 = phi i64 [ 0, %776 ], [ %796, %881 ]
  %788 = phi ptr [ %774, %776 ], [ %878, %881 ]
  %789 = phi i64 [ -1, %776 ], [ %882, %881 ]
  %790 = sitofp i64 %789 to float
  %791 = fpext float %790 to double
  %792 = fadd double %779, %791
  %793 = fptrunc double %792 to float
  %794 = call fastcc float @CubicWeightingFunction(float noundef %793) #32
  %795 = fpext float %794 to double
  %796 = add i64 %787, 4
  br label %797

797:                                              ; preds = %786, %876
  %798 = phi i64 [ %787, %786 ], [ %877, %876 ]
  %799 = phi i64 [ -1, %786 ], [ %879, %876 ]
  %800 = phi ptr [ %788, %786 ], [ %878, %876 ]
  %801 = getelementptr inbounds %struct._MagickPixelPacket, ptr %20, i64 %798
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %801) #29
  %802 = getelementptr inbounds i16, ptr %777, i64 %798
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %800, ptr noundef %802, ptr noundef nonnull %801) #32
  %803 = load i32, ptr %780, align 8, !tbaa !36
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %810

805:                                              ; preds = %797
  %806 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %798, i32 5
  %807 = load <2 x float>, ptr %806, align 8, !tbaa !82
  %808 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %798, i32 7
  %809 = load float, ptr %808, align 8, !tbaa !83
  br label %831

810:                                              ; preds = %797
  %811 = getelementptr inbounds %struct._PixelPacket, ptr %800, i64 0, i32 3
  %812 = load i16, ptr %811, align 2, !tbaa !42
  %813 = xor i16 %812, -1
  %814 = uitofp i16 %813 to double
  %815 = fmul double %814, 0x3EF0001000100010
  %816 = fptrunc double %815 to float
  %817 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %798, i32 5
  %818 = load <2 x float>, ptr %817, align 8, !tbaa !82
  %819 = insertelement <2 x float> poison, float %816, i64 0
  %820 = shufflevector <2 x float> %819, <2 x float> poison, <2 x i32> zeroinitializer
  %821 = fmul <2 x float> %818, %820
  store <2 x float> %821, ptr %817, align 8, !tbaa !82
  %822 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %798, i32 7
  %823 = load float, ptr %822, align 8, !tbaa !83
  %824 = fmul float %823, %816
  store float %824, ptr %822, align 8, !tbaa !83
  %825 = load i32, ptr %781, align 4, !tbaa !71
  %826 = icmp eq i32 %825, 12
  br i1 %826, label %827, label %831

827:                                              ; preds = %810
  %828 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %798, i32 9
  %829 = load float, ptr %828, align 8, !tbaa !85
  %830 = fmul float %829, %816
  store float %830, ptr %828, align 8, !tbaa !85
  br label %831

831:                                              ; preds = %805, %810, %827
  %832 = phi float [ %824, %810 ], [ %824, %827 ], [ %809, %805 ]
  %833 = phi float [ %816, %810 ], [ %816, %827 ], [ 1.000000e+00, %805 ]
  %834 = phi <2 x float> [ %821, %810 ], [ %821, %827 ], [ %807, %805 ]
  %835 = sitofp i64 %799 to float
  %836 = fpext float %835 to double
  %837 = fsub double %778, %836
  %838 = fptrunc double %837 to float
  %839 = call fastcc float @CubicWeightingFunction(float noundef %838) #32
  %840 = fcmp ole float %833, 0.000000e+00
  %841 = select i1 %840, float 0.000000e+00, float %833
  %842 = fpext float %841 to double
  %843 = call fastcc double @PerceptibleReciprocal(double noundef %842) #32
  %844 = fpext float %839 to double
  %845 = fmul double %843, %844
  %846 = fmul double %845, %795
  %847 = fpext <2 x float> %834 to <2 x double>
  %848 = load <2 x float>, ptr %782, align 8, !tbaa !82
  %849 = fpext <2 x float> %848 to <2 x double>
  %850 = insertelement <2 x double> poison, double %846, i64 0
  %851 = shufflevector <2 x double> %850, <2 x double> poison, <2 x i32> zeroinitializer
  %852 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %851, <2 x double> %847, <2 x double> %849)
  %853 = fptrunc <2 x double> %852 to <2 x float>
  store <2 x float> %853, ptr %782, align 8, !tbaa !82
  %854 = fpext float %832 to double
  %855 = load float, ptr %783, align 8, !tbaa !83
  %856 = fpext float %855 to double
  %857 = call double @llvm.fmuladd.f64(double %846, double %854, double %856)
  %858 = fptrunc double %857 to float
  store float %858, ptr %783, align 8, !tbaa !83
  br i1 %804, label %865, label %859

859:                                              ; preds = %831
  %860 = fmul float %794, %839
  %861 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %798, i32 8
  %862 = load float, ptr %861, align 4, !tbaa !86
  %863 = load float, ptr %784, align 4, !tbaa !86
  %864 = call float @llvm.fmuladd.f32(float %860, float %862, float %863)
  store float %864, ptr %784, align 4, !tbaa !86
  br label %865

865:                                              ; preds = %859, %831
  %866 = load i32, ptr %781, align 4, !tbaa !71
  %867 = icmp eq i32 %866, 12
  br i1 %867, label %868, label %876

868:                                              ; preds = %865
  %869 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %20, i64 0, i64 %798, i32 9
  %870 = load float, ptr %869, align 8, !tbaa !85
  %871 = fpext float %870 to double
  %872 = load float, ptr %785, align 8, !tbaa !85
  %873 = fpext float %872 to double
  %874 = call double @llvm.fmuladd.f64(double %846, double %871, double %873)
  %875 = fptrunc double %874 to float
  store float %875, ptr %785, align 8, !tbaa !85
  br label %876

876:                                              ; preds = %868, %865
  %877 = add i64 %798, 1
  %878 = getelementptr inbounds %struct._PixelPacket, ptr %800, i64 1
  %879 = add nsw i64 %799, 1
  %880 = icmp eq i64 %877, %796
  br i1 %880, label %881, label %797, !llvm.loop !101

881:                                              ; preds = %876
  %882 = add nsw i64 %789, 1
  %883 = icmp eq i64 %882, 3
  br i1 %883, label %884, label %786, !llvm.loop !102

884:                                              ; preds = %881, %767
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %20) #13
  br label %885

885:                                              ; preds = %884, %766, %756, %374, %364, %336, %171, %108
  ret void
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !61
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !82
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !71
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !61
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !85
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BicubicInterpolate(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef %2) unnamed_addr #9 {
  %4 = fmul double %1, %1
  %5 = fptrunc double %4 to float
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 3, i32 5
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 2, i32 5
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 1, i32 5
  %10 = fpext float %5 to double
  %11 = fmul double %10, %1
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %13 = load <4 x float>, ptr %6, align 8, !tbaa !82
  %14 = load <4 x float>, ptr %7, align 8, !tbaa !82
  %15 = fsub <4 x float> %13, %14
  %16 = load <4 x float>, ptr %8, align 8, !tbaa !82
  %17 = load <4 x float>, ptr %9, align 8, !tbaa !82
  %18 = fsub <4 x float> %16, %17
  %19 = fsub <4 x float> %15, %18
  %20 = fsub <4 x float> %18, %19
  %21 = fsub <4 x float> %14, %16
  %22 = fpext <4 x float> %19 to <4 x double>
  %23 = insertelement <4 x float> poison, float %5, i64 0
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %25 = fmul <4 x float> %20, %24
  %26 = fpext <4 x float> %25 to <4 x double>
  %27 = insertelement <4 x double> poison, double %11, i64 0
  %28 = shufflevector <4 x double> %27, <4 x double> poison, <4 x i32> zeroinitializer
  %29 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %28, <4 x double> %22, <4 x double> %26)
  %30 = fpext <4 x float> %21 to <4 x double>
  %31 = insertelement <4 x double> poison, double %1, i64 0
  %32 = shufflevector <4 x double> %31, <4 x double> poison, <4 x i32> zeroinitializer
  %33 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %32, <4 x double> %30, <4 x double> %29)
  %34 = fpext <4 x float> %17 to <4 x double>
  %35 = fadd <4 x double> %33, %34
  %36 = fptrunc <4 x double> %35 to <4 x float>
  store <4 x float> %36, ptr %12, align 8, !tbaa !82
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !103
  %39 = icmp eq i32 %38, 12
  br i1 %39, label %40, label %64

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 3, i32 9
  %42 = load float, ptr %41, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 2, i32 9
  %44 = load float, ptr %43, align 8, !tbaa !85
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %47 = load float, ptr %46, align 8, !tbaa !85
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 1, i32 9
  %49 = load float, ptr %48, align 8, !tbaa !85
  %50 = fsub float %47, %49
  %51 = fsub float %45, %50
  %52 = fsub float %50, %51
  %53 = fsub float %44, %47
  %54 = fpext float %51 to double
  %55 = fmul float %52, %5
  %56 = fpext float %55 to double
  %57 = tail call double @llvm.fmuladd.f64(double %11, double %54, double %56)
  %58 = fpext float %53 to double
  %59 = tail call double @llvm.fmuladd.f64(double %1, double %58, double %57)
  %60 = fpext float %49 to double
  %61 = fadd double %59, %60
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %62, ptr %63, align 8, !tbaa !85
  br label %64

64:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: optsize
declare ptr @ExcerptImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @MagickPixelLuma(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !103
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !99
  switch i32 %3, label %18 [
    i32 2, label %33
    i32 13, label %6
  ]

6:                                                ; preds = %1
  %7 = fpext float %5 to double
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !100
  %10 = fpext float %9 to double
  %11 = fmul double %10, 0x3FE6E29307AF20EA
  %12 = tail call double @llvm.fmuladd.f64(double %7, double 2.126560e-01, double %11)
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !83
  %15 = fpext float %14 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 7.218600e-02, double %12)
  %17 = fptrunc double %16 to float
  br label %33

18:                                               ; preds = %1
  %19 = tail call float @EncodePixelGamma(float noundef %5) #30
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %21 = load float, ptr %20, align 4, !tbaa !100
  %22 = tail call float @EncodePixelGamma(float noundef %21) #30
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %24 = load float, ptr %23, align 8, !tbaa !83
  %25 = tail call float @EncodePixelGamma(float noundef %24) #30
  %26 = fpext float %19 to double
  %27 = fpext float %22 to double
  %28 = fmul double %27, 0x3FE6E29307AF20EA
  %29 = tail call double @llvm.fmuladd.f64(double %26, double 2.126560e-01, double %28)
  %30 = fpext float %25 to double
  %31 = tail call double @llvm.fmuladd.f64(double %30, double 7.218600e-02, double %29)
  %32 = fptrunc double %31 to float
  br label %33

33:                                               ; preds = %1, %18, %6
  %34 = phi float [ %17, %6 ], [ %32, %18 ], [ %5, %1 ]
  ret float %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc double @MeshInterpolate(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #20 {
  %5 = load double, ptr %0, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct._PointInfo, ptr %0, i64 0, i32 1
  %7 = load double, ptr %6, align 8, !tbaa !98
  %8 = fmul double %7, %3
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %2, double %8)
  %10 = fsub double 1.000000e+00, %5
  %11 = fsub double %10, %7
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %1, double %9)
  ret double %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @NearestNeighbor(float noundef %0) unnamed_addr #11 {
  %2 = fpext float %0 to double
  %3 = fcmp ult float %0, 0.000000e+00
  %4 = select i1 %3, double -5.000000e-01, double 5.000000e-01
  %5 = fadd double %4, %2
  %6 = fptosi double %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @CubicWeightingFunction(float noundef %0) unnamed_addr #11 {
  %2 = fpext float %0 to double
  %3 = fadd double %2, 2.000000e+00
  %4 = tail call fastcc double @MagickMax(double noundef %3, double noundef 0.000000e+00) #32
  %5 = fptrunc double %4 to float
  %6 = fpext float %5 to double
  %7 = fmul double %6, %6
  %8 = fmul double %7, %6
  %9 = fptrunc double %8 to float
  %10 = fadd double %2, 1.000000e+00
  %11 = tail call fastcc double @MagickMax(double noundef %10, double noundef 0.000000e+00) #32
  %12 = fptrunc double %11 to float
  %13 = fpext float %12 to double
  %14 = fpext float %9 to double
  %15 = fmul double %13, -4.000000e+00
  %16 = fmul double %15, %13
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %13, double %14)
  %18 = fptrunc double %17 to float
  %19 = fadd double %2, 0.000000e+00
  %20 = tail call fastcc double @MagickMax(double noundef %19, double noundef 0.000000e+00) #32
  %21 = fptrunc double %20 to float
  %22 = fpext float %21 to double
  %23 = fmul double %22, 6.000000e+00
  %24 = fmul double %23, %22
  %25 = fpext float %18 to double
  %26 = tail call double @llvm.fmuladd.f64(double %24, double %22, double %25)
  %27 = fptrunc double %26 to float
  %28 = fadd double %2, -1.000000e+00
  %29 = tail call fastcc double @MagickMax(double noundef %28, double noundef 0.000000e+00) #32
  %30 = fptrunc double %29 to float
  %31 = fpext float %30 to double
  %32 = fpext float %27 to double
  %33 = fmul double %31, -4.000000e+00
  %34 = fmul double %33, %31
  %35 = tail call double @llvm.fmuladd.f64(double %34, double %31, double %32)
  %36 = fptrunc double %35 to float
  %37 = fdiv float %36, 6.000000e+00
  ret float %37
}

; Function Attrs: hot optsize
declare float @EncodePixelGamma(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #11 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @InterpretImageAttributes(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4091, ptr noundef nonnull @.str.20) #29
  %5 = tail call ptr @InterpretImageProperties(ptr noundef %0, ptr noundef %1, ptr noundef %2) #29
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @InversesRGBCompandor(float noundef %0) local_unnamed_addr #23 {
  %2 = fpext float %0 to double
  %3 = fcmp ugt double %2, 0x40A4B58CE259D3F7
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = fdiv double %2, 1.292000e+01
  br label %11

6:                                                ; preds = %1
  %7 = tail call double @llvm.fmuladd.f64(double %2, double 0x3EF0001000100010, double 5.500000e-02)
  %8 = fdiv double %7, 1.055000e+00
  %9 = tail call double @pow(double noundef %8, double noundef 2.400000e+00) #29
  %10 = fmul double %9, 6.553500e+04
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi double [ %5, %4 ], [ %10, %6 ]
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsMagickInstantiated() local_unnamed_addr #0 {
  %1 = tail call i32 @IsMagickCoreInstantiated() #29
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @IsMagickCoreInstantiated() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsSubimage(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4178, ptr noundef nonnull @.str.2) #29
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 120) #33
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 88) #33
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 44) #33
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %11
  br label %17

17:                                               ; preds = %13, %5, %8, %2, %16
  %18 = phi i32 [ 1, %16 ], [ 0, %2 ], [ 0, %8 ], [ 0, %5 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelImageColors(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @LevelColorsImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #29
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @LevelColorsImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LiberateMemory(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4267, ptr noundef nonnull @.str.2) #29
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #29
  store ptr null, ptr %0, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LiberateSemaphoreInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4302, ptr noundef nonnull @.str.2) #29
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #29
  ret void
}

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagickIncarnate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4335, ptr noundef nonnull @.str.25) #29
  tail call void @MagickCoreGenesis(ptr noundef %0, i32 noundef 0) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MagickMonitor(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4384, ptr noundef nonnull @.str.5, ptr noundef %0) #29
  %6 = tail call ptr @AcquireExceptionInfo() #29
  %7 = load ptr, ptr @monitor_handler, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 %7(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %6) #29
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ 1, %4 ]
  %13 = tail call ptr @DestroyExceptionInfo(ptr noundef %6) #29
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MapImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._QuantizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4443, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #29
  br label %11

11:                                               ; preds = %8, %3
  call void @GetQuantizeInfo(ptr noundef nonnull %4) #29
  %12 = getelementptr inbounds %struct._QuantizeInfo, ptr %4, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !104
  %13 = call i32 @RemapImage(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %1) #29
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret i32 %13
}

; Function Attrs: optsize
declare void @GetQuantizeInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MapImages(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._QuantizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4497, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #29
  br label %11

11:                                               ; preds = %8, %3
  call void @GetQuantizeInfo(ptr noundef nonnull %4) #29
  %12 = getelementptr inbounds %struct._QuantizeInfo, ptr %4, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !104
  %13 = call i32 @RemapImages(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %1) #29
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MatteFloodfillImage(ptr noundef %0, i64 %1, i16 noundef zeroext %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._PixelPacket, align 8
  store i64 %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4576, ptr noundef nonnull @.str.5, ptr noundef nonnull %12) #29
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp slt i64 %3, 0
  br i1 %15, label %326, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !34
  %19 = icmp sle i64 %18, %3
  %20 = icmp slt i64 %4, 0
  %21 = or i1 %20, %19
  br i1 %21, label %326, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !35
  %25 = icmp sgt i64 %24, %4
  br i1 %25, label %26, label %326

26:                                               ; preds = %22
  %27 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #29
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %326, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !36
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #29
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i64, ptr %17, align 8, !tbaa !34
  %37 = load i64, ptr %23, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %36, i64 noundef %37, i32 noundef 1, ptr noundef nonnull %38) #29
  %40 = icmp eq ptr %39, null
  br i1 %40, label %326, label %41

41:                                               ; preds = %35
  %42 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %39, i32 noundef 6) #29
  %43 = tail call dereferenceable_or_null(1048576) ptr @AcquireQuantumMemory(i64 noundef 32768, i64 noundef 32) #34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = tail call ptr @DestroyImage(ptr noundef nonnull %39) #29
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4599, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %47) #29
  br label %326

49:                                               ; preds = %41
  %50 = add nuw nsw i64 %4, 1
  %51 = load i64, ptr %23, align 8, !tbaa !35
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = sitofp i64 %3 to double
  store double %54, ptr %43, align 8, !tbaa !37
  %55 = sitofp i64 %4 to double
  %56 = getelementptr inbounds %struct._SegmentInfo, ptr %43, i64 0, i32 1
  store double %55, ptr %56, align 8, !tbaa !39
  %57 = getelementptr inbounds %struct._SegmentInfo, ptr %43, i64 0, i32 2
  store double %54, ptr %57, align 8, !tbaa !40
  %58 = getelementptr inbounds %struct._SegmentInfo, ptr %43, i64 0, i32 3
  store double 1.000000e+00, ptr %58, align 8, !tbaa !41
  br label %59

59:                                               ; preds = %49, %53
  %60 = phi i64 [ 32, %53 ], [ 0, %49 ]
  %61 = icmp sgt i64 %51, %4
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %43, i64 %60
  %64 = sitofp i64 %3 to double
  store double %64, ptr %63, align 8, !tbaa !37
  %65 = sitofp i64 %50 to double
  %66 = getelementptr inbounds %struct._SegmentInfo, ptr %63, i64 0, i32 1
  store double %65, ptr %66, align 8, !tbaa !39
  %67 = getelementptr inbounds %struct._SegmentInfo, ptr %63, i64 0, i32 2
  store double %64, ptr %67, align 8, !tbaa !40
  %68 = getelementptr inbounds %struct._SegmentInfo, ptr %63, i64 0, i32 3
  store double -1.000000e+00, ptr %68, align 8, !tbaa !41
  %69 = add nuw nsw i64 %60, 32
  br label %71

70:                                               ; preds = %59
  br i1 %52, label %71, label %283

71:                                               ; preds = %62, %70
  %72 = phi i64 [ %69, %62 ], [ %60, %70 ]
  %73 = icmp eq i32 %5, 3
  br label %74

74:                                               ; preds = %71, %277
  %75 = phi i64 [ 0, %71 ], [ %279, %277 ]
  %76 = phi i64 [ %72, %71 ], [ %278, %277 ]
  %77 = getelementptr inbounds i8, ptr %43, i64 %76
  %78 = add nsw i64 %76, -32
  %79 = getelementptr inbounds i8, ptr %43, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !37
  %81 = fptosi double %80 to i64
  %82 = getelementptr %struct._SegmentInfo, ptr %77, i64 -1, i32 2
  %83 = load double, ptr %82, align 8, !tbaa !40
  %84 = fptosi double %83 to i64
  %85 = getelementptr %struct._SegmentInfo, ptr %77, i64 -1, i32 3
  %86 = load double, ptr %85, align 8, !tbaa !41
  %87 = fptosi double %86 to i64
  %88 = getelementptr %struct._SegmentInfo, ptr %77, i64 -1, i32 1
  %89 = load double, ptr %88, align 8, !tbaa !39
  %90 = fptosi double %89 to i64
  %91 = add nsw i64 %90, %87
  %92 = add nsw i64 %81, 1
  %93 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %91, i64 noundef %92, i64 noundef 1, ptr noundef nonnull %38) #29
  %94 = call ptr @GetAuthenticPixels(ptr noundef nonnull %39, i64 noundef 0, i64 noundef %91, i64 noundef %92, i64 noundef 1, ptr noundef nonnull %38) #29
  %95 = icmp eq ptr %93, null
  %96 = icmp eq ptr %94, null
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %281, label %98

98:                                               ; preds = %74
  %99 = icmp sgt i64 %81, -1
  br i1 %99, label %100, label %120

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 %81
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 %81
  br label %103

103:                                              ; preds = %100, %115
  %104 = phi ptr [ %116, %115 ], [ %101, %100 ]
  %105 = phi i64 [ %118, %115 ], [ %81, %100 ]
  %106 = phi ptr [ %117, %115 ], [ %102, %100 ]
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !42
  %109 = icmp eq i16 %108, -1
  br i1 %109, label %120, label %110

110:                                              ; preds = %103
  %111 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef %106, ptr noundef nonnull %7) #29
  %112 = icmp eq i32 %111, 0
  br i1 %73, label %113, label %114

113:                                              ; preds = %110
  br i1 %112, label %120, label %115

114:                                              ; preds = %110
  br i1 %112, label %115, label %120

115:                                              ; preds = %114, %113
  store i16 -1, ptr %107, align 2, !tbaa !42
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 -1
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 -1
  %118 = add nsw i64 %105, -1
  %119 = icmp sgt i64 %105, 0
  br i1 %119, label %103, label %120, !llvm.loop !106

120:                                              ; preds = %115, %103, %113, %114, %98
  %121 = phi i64 [ %81, %98 ], [ %105, %114 ], [ %105, %113 ], [ %105, %103 ], [ -1, %115 ]
  %122 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %39, ptr noundef nonnull %38) #29
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %281, label %124

124:                                              ; preds = %120
  %125 = icmp sge i64 %121, %81
  %126 = zext i1 %125 to i32
  br i1 %125, label %149, label %127

127:                                              ; preds = %124
  %128 = add nsw i64 %121, 1
  %129 = icmp slt i64 %128, %81
  br i1 %129, label %130, label %149

130:                                              ; preds = %127
  %131 = icmp slt i64 %76, 1048608
  br i1 %131, label %137, label %132

132:                                              ; preds = %130
  %133 = icmp eq ptr %0, null
  br i1 %133, label %326, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %136 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4662, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %135) #29
  br label %326

137:                                              ; preds = %130
  %138 = sub nsw i64 0, %87
  %139 = icmp sgt i64 %90, -1
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load i64, ptr %23, align 8, !tbaa !35
  %142 = icmp sgt i64 %141, %90
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = sitofp i64 %128 to double
  store double %144, ptr %79, align 8, !tbaa !37
  %145 = sitofp i64 %91 to double
  store double %145, ptr %88, align 8, !tbaa !39
  %146 = add nsw i64 %81, -1
  %147 = sitofp i64 %146 to double
  store double %147, ptr %82, align 8, !tbaa !40
  %148 = sitofp i64 %138 to double
  store double %148, ptr %85, align 8, !tbaa !41
  br label %149

149:                                              ; preds = %127, %137, %140, %143, %124
  %150 = phi i64 [ %78, %124 ], [ %76, %143 ], [ %78, %140 ], [ %78, %137 ], [ %78, %127 ]
  %151 = phi i64 [ %75, %124 ], [ %128, %143 ], [ %128, %140 ], [ %128, %137 ], [ %128, %127 ]
  %152 = phi i64 [ %121, %124 ], [ %92, %143 ], [ %92, %140 ], [ %92, %137 ], [ %92, %127 ]
  %153 = add nsw i64 %91, %87
  %154 = icmp sgt i64 %153, -1
  %155 = sitofp i64 %91 to double
  %156 = sitofp i64 %87 to double
  %157 = add i64 %84, 1
  %158 = sub nsw i64 0, %87
  %159 = icmp sgt i64 %90, -1
  %160 = sitofp i64 %157 to double
  %161 = sitofp i64 %158 to double
  br label %162

162:                                              ; preds = %274, %149
  %163 = phi i64 [ %150, %149 ], [ %245, %274 ]
  %164 = phi i64 [ %151, %149 ], [ %275, %274 ]
  %165 = phi i32 [ %126, %149 ], [ 0, %274 ]
  %166 = phi i64 [ %152, %149 ], [ %275, %274 ]
  %167 = getelementptr inbounds i8, ptr %43, i64 %163
  %168 = icmp eq i32 %165, 0
  br i1 %168, label %169, label %244

169:                                              ; preds = %162
  %170 = load i64, ptr %17, align 8, !tbaa !34
  %171 = icmp slt i64 %166, %170
  br i1 %171, label %172, label %206

172:                                              ; preds = %169
  %173 = sub i64 %170, %166
  %174 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef %166, i64 noundef %91, i64 noundef %173, i64 noundef 1, ptr noundef nonnull %38) #29
  %175 = load i64, ptr %17, align 8, !tbaa !34
  %176 = sub i64 %175, %166
  %177 = call ptr @GetAuthenticPixels(ptr noundef nonnull %39, i64 noundef %166, i64 noundef %91, i64 noundef %176, i64 noundef 1, ptr noundef nonnull %38) #29
  %178 = icmp eq ptr %174, null
  %179 = icmp eq ptr %177, null
  %180 = select i1 %178, i1 true, i1 %179
  br i1 %180, label %277, label %181

181:                                              ; preds = %172
  %182 = load i64, ptr %17, align 8, !tbaa !34
  %183 = icmp slt i64 %166, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %181, %196
  %185 = phi ptr [ %197, %196 ], [ %177, %181 ]
  %186 = phi i64 [ %199, %196 ], [ %166, %181 ]
  %187 = phi ptr [ %198, %196 ], [ %174, %181 ]
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 0, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !42
  %190 = icmp eq i16 %189, -1
  br i1 %190, label %202, label %191

191:                                              ; preds = %184
  %192 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %187, ptr noundef nonnull %7) #29
  %193 = icmp eq i32 %192, 0
  br i1 %73, label %194, label %195

194:                                              ; preds = %191
  br i1 %193, label %202, label %196

195:                                              ; preds = %191
  br i1 %193, label %196, label %202

196:                                              ; preds = %195, %194
  store i16 -1, ptr %188, align 2, !tbaa !42
  %197 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 1
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 1
  %199 = add nsw i64 %186, 1
  %200 = load i64, ptr %17, align 8, !tbaa !34
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %184, label %202, !llvm.loop !107

202:                                              ; preds = %196, %184, %194, %195, %181
  %203 = phi i64 [ %166, %181 ], [ %186, %195 ], [ %186, %194 ], [ %186, %184 ], [ %199, %196 ]
  %204 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %39, ptr noundef nonnull %38) #29
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %277, label %206

206:                                              ; preds = %202, %169
  %207 = phi i64 [ %203, %202 ], [ %166, %169 ]
  %208 = icmp slt i64 %163, 1048576
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %211 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4697, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %210) #29
  br label %326

212:                                              ; preds = %206
  br i1 %154, label %213, label %224

213:                                              ; preds = %212
  %214 = load i64, ptr %23, align 8, !tbaa !35
  %215 = icmp slt i64 %153, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = sitofp i64 %164 to double
  store double %217, ptr %167, align 8, !tbaa !37
  %218 = getelementptr inbounds %struct._SegmentInfo, ptr %167, i64 0, i32 1
  store double %155, ptr %218, align 8, !tbaa !39
  %219 = add nsw i64 %207, -1
  %220 = sitofp i64 %219 to double
  %221 = getelementptr inbounds %struct._SegmentInfo, ptr %167, i64 0, i32 2
  store double %220, ptr %221, align 8, !tbaa !40
  %222 = getelementptr inbounds %struct._SegmentInfo, ptr %167, i64 0, i32 3
  store double %156, ptr %222, align 8, !tbaa !41
  %223 = add nsw i64 %163, 32
  br label %224

224:                                              ; preds = %212, %213, %216
  %225 = phi i64 [ %223, %216 ], [ %163, %213 ], [ %163, %212 ]
  %226 = getelementptr inbounds i8, ptr %43, i64 %225
  %227 = icmp sgt i64 %207, %157
  br i1 %227, label %228, label %244

228:                                              ; preds = %224
  %229 = icmp slt i64 %225, 1048576
  br i1 %229, label %233, label %230

230:                                              ; preds = %228
  %231 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %232 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4699, i32 noundef 460, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %231) #29
  br label %326

233:                                              ; preds = %228
  br i1 %159, label %234, label %244

234:                                              ; preds = %233
  %235 = load i64, ptr %23, align 8, !tbaa !35
  %236 = icmp sgt i64 %235, %90
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  store double %160, ptr %226, align 8, !tbaa !37
  %238 = getelementptr inbounds %struct._SegmentInfo, ptr %226, i64 0, i32 1
  store double %155, ptr %238, align 8, !tbaa !39
  %239 = add nsw i64 %207, -1
  %240 = sitofp i64 %239 to double
  %241 = getelementptr inbounds %struct._SegmentInfo, ptr %226, i64 0, i32 2
  store double %240, ptr %241, align 8, !tbaa !40
  %242 = getelementptr inbounds %struct._SegmentInfo, ptr %226, i64 0, i32 3
  store double %161, ptr %242, align 8, !tbaa !41
  %243 = add nsw i64 %225, 32
  br label %244

244:                                              ; preds = %224, %233, %234, %237, %162
  %245 = phi i64 [ %243, %237 ], [ %225, %234 ], [ %225, %233 ], [ %225, %224 ], [ %163, %162 ]
  %246 = phi i64 [ %207, %237 ], [ %207, %234 ], [ %207, %233 ], [ %207, %224 ], [ %166, %162 ]
  %247 = add nsw i64 %246, 1
  %248 = icmp slt i64 %246, %84
  br i1 %248, label %249, label %274

249:                                              ; preds = %244
  %250 = sub nsw i64 %84, %247
  %251 = add nsw i64 %250, 1
  %252 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %247, i64 noundef %91, i64 noundef %251, i64 noundef 1, ptr noundef nonnull %38) #29
  %253 = call ptr @GetAuthenticPixels(ptr noundef nonnull %39, i64 noundef %247, i64 noundef %91, i64 noundef %251, i64 noundef 1, ptr noundef nonnull %38) #29
  %254 = icmp eq ptr %252, null
  %255 = icmp eq ptr %253, null
  %256 = select i1 %254, i1 true, i1 %255
  br i1 %256, label %277, label %257

257:                                              ; preds = %249, %269
  %258 = phi ptr [ %271, %269 ], [ %253, %249 ]
  %259 = phi i64 [ %272, %269 ], [ %247, %249 ]
  %260 = phi ptr [ %270, %269 ], [ %252, %249 ]
  %261 = getelementptr inbounds %struct._PixelPacket, ptr %258, i64 0, i32 3
  %262 = load i16, ptr %261, align 2, !tbaa !42
  %263 = icmp eq i16 %262, -1
  br i1 %263, label %274, label %264

264:                                              ; preds = %257
  %265 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef nonnull %260, ptr noundef nonnull %7) #29
  %266 = icmp eq i32 %265, 0
  br i1 %73, label %267, label %268

267:                                              ; preds = %264
  br i1 %266, label %269, label %274

268:                                              ; preds = %264
  br i1 %266, label %274, label %269

269:                                              ; preds = %268, %267
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 1
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %258, i64 1
  %272 = add i64 %259, 1
  %273 = icmp eq i64 %259, %84
  br i1 %273, label %274, label %257, !llvm.loop !108

274:                                              ; preds = %268, %267, %257, %269, %244
  %275 = phi i64 [ %247, %244 ], [ %259, %268 ], [ %259, %267 ], [ %259, %257 ], [ %157, %269 ]
  %276 = icmp sgt i64 %275, %84
  br i1 %276, label %277, label %162, !llvm.loop !109

277:                                              ; preds = %274, %172, %202, %249
  %278 = phi i64 [ %163, %172 ], [ %163, %202 ], [ %245, %249 ], [ %245, %274 ]
  %279 = phi i64 [ %164, %172 ], [ %164, %202 ], [ %164, %249 ], [ %275, %274 ]
  %280 = icmp sgt i64 %278, 0
  br i1 %280, label %74, label %281

281:                                              ; preds = %120, %74, %277
  %282 = load i64, ptr %23, align 8, !tbaa !35
  br label %283

283:                                              ; preds = %281, %70
  %284 = phi i64 [ %282, %281 ], [ %51, %70 ]
  %285 = icmp sgt i64 %284, 0
  br i1 %285, label %286, label %319

286:                                              ; preds = %283, %315
  %287 = phi i64 [ %316, %315 ], [ 0, %283 ]
  %288 = load i64, ptr %17, align 8, !tbaa !34
  %289 = call ptr @GetVirtualPixels(ptr noundef nonnull %39, i64 noundef 0, i64 noundef %287, i64 noundef %288, i64 noundef 1, ptr noundef nonnull %38) #29
  %290 = load i64, ptr %17, align 8, !tbaa !34
  %291 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %287, i64 noundef %290, i64 noundef 1, ptr noundef nonnull %38) #29
  %292 = icmp eq ptr %289, null
  %293 = icmp eq ptr %291, null
  %294 = select i1 %292, i1 true, i1 %293
  br i1 %294, label %319, label %295

295:                                              ; preds = %286
  %296 = load i64, ptr %17, align 8, !tbaa !34
  %297 = icmp sgt i64 %296, 0
  br i1 %297, label %298, label %312

298:                                              ; preds = %295, %307
  %299 = phi ptr [ %309, %307 ], [ %291, %295 ]
  %300 = phi i64 [ %310, %307 ], [ 0, %295 ]
  %301 = phi ptr [ %308, %307 ], [ %289, %295 ]
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %301, i64 0, i32 3
  %303 = load i16, ptr %302, align 2, !tbaa !42
  %304 = icmp eq i16 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %298
  %306 = getelementptr inbounds %struct._PixelPacket, ptr %299, i64 0, i32 3
  store i16 %2, ptr %306, align 2, !tbaa !42
  br label %307

307:                                              ; preds = %305, %298
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %301, i64 1
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %299, i64 1
  %310 = add nuw nsw i64 %300, 1
  %311 = icmp eq i64 %310, %296
  br i1 %311, label %312, label %298, !llvm.loop !110

312:                                              ; preds = %307, %295
  %313 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %38) #29
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %312
  %316 = add nuw nsw i64 %287, 1
  %317 = load i64, ptr %23, align 8, !tbaa !35
  %318 = icmp slt i64 %316, %317
  br i1 %318, label %286, label %319, !llvm.loop !111

319:                                              ; preds = %315, %286, %312, %283
  %320 = phi i64 [ 0, %283 ], [ %287, %312 ], [ %287, %286 ], [ %316, %315 ]
  %321 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %43) #29
  %322 = call ptr @DestroyImage(ptr noundef nonnull %39) #29
  %323 = load i64, ptr %23, align 8, !tbaa !35
  %324 = icmp eq i64 %320, %323
  %325 = zext i1 %324 to i32
  br label %326

326:                                              ; preds = %230, %209, %132, %134, %45, %35, %26, %22, %14, %16, %319
  %327 = phi i32 [ %325, %319 ], [ 0, %16 ], [ 0, %14 ], [ 0, %22 ], [ 0, %26 ], [ 0, %35 ], [ 0, %45 ], [ 0, %134 ], [ 0, %132 ], [ 0, %209 ], [ 0, %230 ]
  ret i32 %327
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MaximumImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @EvaluateImages(ptr noundef %0, i32 noundef 6, ptr noundef %1) #29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MinimumImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @EvaluateImages(ptr noundef %0, i32 noundef 6, ptr noundef %1) #29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MedianFilterImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = fptoui double %1 to i64
  %5 = tail call ptr @StatisticImage(ptr noundef %0, i32 noundef 4, i64 noundef %4, i64 noundef %4, ptr noundef %2) #29
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @StatisticImage(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ModeImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = fptoui double %1 to i64
  %5 = tail call ptr @StatisticImage(ptr noundef %0, i32 noundef 6, i64 noundef %4, i64 noundef %4, ptr noundef %2) #29
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MosaicImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @MergeImageLayers(ptr noundef %0, i32 noundef 15, ptr noundef %1) #29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OpaqueImage(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PixelPacket, align 8
  store i64 %1, ptr %4, align 8
  %5 = trunc i64 %2 to i48
  %6 = lshr i64 %2, 48
  %7 = trunc i64 %6 to i16
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5000, ptr noundef nonnull @.str.26) #29
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5002, ptr noundef nonnull @.str.5, ptr noundef nonnull %13) #29
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32, ptr %0, align 8, !tbaa !112
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !35
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %114

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br label %35

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %27 = load i64, ptr %26, align 8, !tbaa !113
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %62

31:                                               ; preds = %58
  %32 = add nuw nsw i64 %36, 1
  %33 = load i64, ptr %20, align 8, !tbaa !35
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %114, !llvm.loop !114

35:                                               ; preds = %23, %31
  %36 = phi i64 [ 0, %23 ], [ %32, %31 ]
  %37 = load i64, ptr %19, align 8, !tbaa !34
  %38 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %36, i64 noundef %37, i64 noundef 1, ptr noundef nonnull %24) #29
  %39 = icmp eq ptr %38, null
  br i1 %39, label %114, label %40

40:                                               ; preds = %35
  %41 = load i64, ptr %19, align 8, !tbaa !34
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40, %50
  %44 = phi ptr [ %51, %50 ], [ %38, %40 ]
  %45 = phi i64 [ %52, %50 ], [ 0, %40 ]
  %46 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %44, ptr noundef nonnull %4) #29
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  store i48 %5, ptr %44, align 2, !tbaa.struct !115
  %49 = getelementptr inbounds i8, ptr %44, i64 6
  store i16 %7, ptr %49, align 2, !tbaa.struct !116
  br label %50

50:                                               ; preds = %48, %43
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %44, i64 1
  %52 = add nuw nsw i64 %45, 1
  %53 = load i64, ptr %19, align 8, !tbaa !34
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %43, label %55, !llvm.loop !117

55:                                               ; preds = %50, %40
  %56 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %24) #29
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %114, label %58

58:                                               ; preds = %55
  %59 = load i64, ptr %20, align 8, !tbaa !35
  %60 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef %36, i64 noundef %59) #32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %114, label %31

62:                                               ; preds = %29, %72
  %63 = phi i64 [ 0, %29 ], [ %73, %72 ]
  %64 = load ptr, ptr %30, align 8, !tbaa !118
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %63
  %66 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef %65, ptr noundef nonnull %4) #29
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %30, align 8, !tbaa !118
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 %63
  store i48 %5, ptr %70, align 2, !tbaa.struct !115
  %71 = getelementptr inbounds i8, ptr %70, i64 6
  store i16 %7, ptr %71, align 2, !tbaa.struct !116
  br label %72

72:                                               ; preds = %62, %68
  %73 = add nuw nsw i64 %63, 1
  %74 = load i64, ptr %26, align 8, !tbaa !113
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %62, label %76, !llvm.loop !119

76:                                               ; preds = %72, %25
  %77 = icmp ult i64 %2, 281474976710656
  br i1 %77, label %112, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %81 = load i64, ptr %80, align 8, !tbaa !35
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br label %89

85:                                               ; preds = %109
  %86 = add nuw nsw i64 %90, 1
  %87 = load i64, ptr %80, align 8, !tbaa !35
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %112, !llvm.loop !120

89:                                               ; preds = %83, %85
  %90 = phi i64 [ 0, %83 ], [ %86, %85 ]
  %91 = load i64, ptr %79, align 8, !tbaa !34
  %92 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %90, i64 noundef %91, i64 noundef 1, ptr noundef nonnull %84) #29
  %93 = icmp eq ptr %92, null
  br i1 %93, label %112, label %94

94:                                               ; preds = %89
  %95 = load i64, ptr %79, align 8, !tbaa !34
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94, %104
  %98 = phi ptr [ %105, %104 ], [ %92, %94 ]
  %99 = phi i64 [ %106, %104 ], [ 0, %94 ]
  %100 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %98, ptr noundef nonnull %4) #29
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  store i16 %7, ptr %103, align 2, !tbaa !42
  br label %104

104:                                              ; preds = %102, %97
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 1
  %106 = add nuw nsw i64 %99, 1
  %107 = load i64, ptr %79, align 8, !tbaa !34
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %97, label %109, !llvm.loop !121

109:                                              ; preds = %104, %94
  %110 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %84) #29
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %85

112:                                              ; preds = %85, %89, %109, %78, %76
  %113 = call i32 @SyncImage(ptr noundef nonnull %0) #29
  br label %114

114:                                              ; preds = %31, %35, %55, %58, %18, %112
  %115 = icmp ult i64 %2, 281474976710656
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %117, align 8, !tbaa !36
  br label %118

118:                                              ; preds = %116, %114
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef %1, ptr noundef nonnull %10) #29
  %12 = load ptr, ptr %6, align 8, !tbaa !122
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #29
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  ret i32 %17
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @OpenCacheView(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %3 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %2) #29
  ret ptr %3
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @OpenMagickStream(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #19 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #35
  store i32 22, ptr %7, align 4, !tbaa !10
  br label %10

8:                                                ; preds = %2
  %9 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1) #32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ null, %6 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PaintFloodfillImage(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp ne i32 %6, 3
  %9 = zext i1 %8 to i32
  %10 = tail call i32 @FloodfillPaintImage(ptr noundef %0, i32 noundef %1, ptr noundef %5, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %9) #29
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @FloodfillPaintImage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PaintOpaqueImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2, i32 noundef 0) #29
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @OpaquePaintImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PaintOpaqueImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #29
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PaintTransparentImage(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call i32 @TransparentPaintImage(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef 0) #29
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @TransparentPaintImage(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParseImageGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5498, ptr noundef nonnull @.str.25) #29
  %7 = tail call i32 @ParseMetaGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #29
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParseSizeGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5539, ptr noundef nonnull @.str.29) #29
  tail call void @SetGeometry(ptr noundef %0, ptr noundef %2) #29
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %8 = tail call i32 @ParseMetaGeometry(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %7) #29
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PopImageList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5574, ptr noundef nonnull @.str.7) #29
  %3 = tail call ptr @RemoveLastImageFromList(ptr noundef %0) #29
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @RemoveLastImageFromList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PopImagePixels(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @AcquireQuantumInfo(ptr noundef null, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %8 = tail call i64 @ExportQuantumPixels(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #29
  %9 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %4) #29
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i64 [ %8, %6 ], [ 0, %3 ]
  ret i64 %11
}

; Function Attrs: optsize
declare ptr @AcquireQuantumInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ExportQuantumPixels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyQuantumInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PostscriptGeometry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5657, ptr noundef nonnull @.str.25) #29
  %3 = tail call ptr @GetPageGeometry(ptr noundef %0) #29
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @GetPageGeometry(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PushImageList(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5695, ptr noundef nonnull @.str.7) #29
  %5 = tail call ptr @CloneImageList(ptr noundef %1, ptr noundef %2) #29
  tail call void @AppendImageToList(ptr noundef %0, ptr noundef %5) #29
  ret i32 1
}

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneImageList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PushImagePixels(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @AcquireQuantumInfo(ptr noundef null, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %8 = tail call i64 @ImportQuantumPixels(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #29
  %9 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %4) #29
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i64 [ %8, %6 ], [ 0, %3 ]
  ret i64 %11
}

; Function Attrs: optsize
declare i64 @ImportQuantumPixels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @QuantizationError(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5796, ptr noundef nonnull @.str.23) #29
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i32 @GetImageQuantizeError(ptr noundef nonnull %0) #29
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @GetImageQuantizeError(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RadialBlurImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RotationalBlurImage(ptr noundef %0, double noundef %1, ptr noundef %2) #29
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @RotationalBlurImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RadialBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @RotationalBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) #29
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @RotationalBlurImageChannel(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RandomChannelThresholdImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5911, ptr noundef nonnull @.str.5, ptr noundef nonnull %11) #29
  %13 = load i32, ptr %7, align 8, !tbaa !13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5915, ptr noundef nonnull @.str.2) #29
  br label %17

17:                                               ; preds = %4, %15, %10
  %18 = icmp eq ptr %2, null
  br i1 %18, label %249, label %19

19:                                               ; preds = %17
  store double 0.000000e+00, ptr %5, align 8, !tbaa !65
  store double 0.000000e+00, ptr %6, align 8, !tbaa !65
  %20 = tail call i32 @LocaleCompare(ptr noundef nonnull %2, ptr noundef nonnull @.str.30) #29
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @LocaleCompare(ptr noundef nonnull %2, ptr noundef nonnull @.str.31) #29
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @LocaleCompare(ptr noundef nonnull %2, ptr noundef nonnull @.str.32) #29
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %25
  %29 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.33, ptr noundef nonnull %5, ptr noundef nonnull %6) #29
  %30 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #33
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load double, ptr %6, align 8, !tbaa !65
  %34 = fmul double %33, 6.553500e+02
  store double %34, ptr %6, align 8, !tbaa !65
  %35 = load double, ptr %5, align 8, !tbaa !65
  %36 = fmul double %35, 6.553500e+02
  store double %36, ptr %5, align 8, !tbaa !65
  br label %37

37:                                               ; preds = %32, %28
  %38 = icmp eq i32 %29, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load double, ptr %5, align 8, !tbaa !65
  %41 = fsub double 6.553500e+04, %40
  store double %41, ptr %6, align 8, !tbaa !65
  br label %42

42:                                               ; preds = %25, %22, %19, %37, %39
  %43 = phi i1 [ true, %39 ], [ true, %37 ], [ false, %19 ], [ false, %22 ], [ false, %25 ]
  %44 = phi i1 [ false, %39 ], [ false, %37 ], [ false, %19 ], [ true, %22 ], [ false, %25 ]
  %45 = load i32, ptr %7, align 8, !tbaa !13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5942, ptr noundef nonnull @.str.34, ptr noundef %1) #29
  %49 = load i32, ptr %7, align 8, !tbaa !13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load double, ptr %5, align 8, !tbaa !65
  %53 = load double, ptr %6, align 8, !tbaa !65
  %54 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5945, ptr noundef nonnull @.str.35, ptr noundef nonnull %2, double noundef %52, double noundef %53) #29
  br label %55

55:                                               ; preds = %42, %51, %47
  %56 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.36) #29
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.37) #29
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58, %55
  %62 = call i32 @AcquireImageColormap(ptr noundef nonnull %0, i64 noundef 2) #29
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %67 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %65, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5951, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %66) #29
  br label %249

68:                                               ; preds = %61, %58
  %69 = call ptr @AcquireRandomInfo() #29
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %71 = load i64, ptr %70, align 8, !tbaa !35
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %247

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %81

77:                                               ; preds = %244
  %78 = add nuw nsw i64 %82, 1
  %79 = load i64, ptr %70, align 8, !tbaa !35
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %247, !llvm.loop !124

81:                                               ; preds = %73, %77
  %82 = phi i64 [ 0, %73 ], [ %78, %77 ]
  %83 = load i64, ptr %74, align 8, !tbaa !34
  %84 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %82, i64 noundef %83, i64 noundef 1, ptr noundef %3) #29
  %85 = icmp eq ptr %84, null
  br i1 %85, label %247, label %86

86:                                               ; preds = %81
  %87 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.36) #29
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.37) #29
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %158

92:                                               ; preds = %89, %86
  %93 = call ptr @GetAuthenticIndexQueue(ptr noundef nonnull %0) #29
  %94 = load i64, ptr %74, align 8, !tbaa !34
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %158

96:                                               ; preds = %92
  %97 = shl i64 %82, 2
  %98 = and i64 %97, 12
  %99 = urem i64 %82, 3
  %100 = mul nuw nsw i64 %99, 3
  %101 = shl nuw i64 %82, 1
  %102 = and i64 %101, 2
  %103 = icmp eq ptr %93, null
  br label %104

104:                                              ; preds = %96, %149
  %105 = phi ptr [ %84, %96 ], [ %154, %149 ]
  %106 = phi i64 [ 0, %96 ], [ %155, %149 ]
  %107 = call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %105) #30
  br i1 %43, label %108, label %123

108:                                              ; preds = %104
  %109 = fpext float %107 to double
  %110 = load double, ptr %5, align 8, !tbaa !65
  %111 = fcmp ogt double %110, %109
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = fptrunc double %110 to float
  br label %143

114:                                              ; preds = %108
  %115 = load double, ptr %6, align 8, !tbaa !65
  %116 = fcmp olt double %115, %109
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = fptrunc double %115 to float
  br label %143

119:                                              ; preds = %114
  %120 = call double @GetPseudoRandomValue(ptr noundef %69) #29
  %121 = fmul double %120, 6.553500e+04
  %122 = fptrunc double %121 to float
  br label %143

123:                                              ; preds = %104
  br i1 %21, label %124, label %130

124:                                              ; preds = %123
  %125 = and i64 %106, 1
  %126 = or disjoint i64 %125, %102
  %127 = getelementptr inbounds [4 x float], ptr @RandomChannelThresholdImage.o2, i64 0, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !82
  %129 = fmul float %128, 6.553500e+04
  br label %143

130:                                              ; preds = %123
  br i1 %44, label %131, label %137

131:                                              ; preds = %130
  %132 = urem i64 %106, 3
  %133 = add nuw nsw i64 %132, %100
  %134 = getelementptr inbounds [9 x float], ptr @RandomChannelThresholdImage.o3, i64 0, i64 %133
  %135 = load float, ptr %134, align 4, !tbaa !82
  %136 = fmul float %135, 6.553500e+04
  br label %143

137:                                              ; preds = %130
  %138 = and i64 %106, 3
  %139 = or disjoint i64 %138, %98
  %140 = getelementptr inbounds [16 x float], ptr @RandomChannelThresholdImage.o4, i64 0, i64 %139
  %141 = load float, ptr %140, align 4, !tbaa !82
  %142 = fmul float %141, 6.553500e+04
  br label %143

143:                                              ; preds = %124, %137, %131, %112, %119, %117
  %144 = phi float [ %129, %124 ], [ %142, %137 ], [ %136, %131 ], [ %113, %112 ], [ %122, %119 ], [ %118, %117 ]
  %145 = fcmp ugt float %107, %144
  br i1 %103, label %149, label %146

146:                                              ; preds = %143
  %147 = zext i1 %145 to i16
  %148 = getelementptr inbounds i16, ptr %93, i64 %106
  store i16 %147, ptr %148, align 2, !tbaa !61
  br label %149

149:                                              ; preds = %146, %143
  %150 = load ptr, ptr %75, align 8, !tbaa !118
  %151 = zext i1 %145 to i64
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %150, i64 %151
  %153 = load <4 x i16>, ptr %152, align 2, !tbaa !61
  store <4 x i16> %153, ptr %105, align 2, !tbaa !61
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 1
  %155 = add nuw nsw i64 %106, 1
  %156 = load i64, ptr %74, align 8, !tbaa !34
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %104, label %158, !llvm.loop !125

158:                                              ; preds = %149, %92, %89
  %159 = phi ptr [ %84, %89 ], [ %84, %92 ], [ %154, %149 ]
  %160 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.38) #29
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %158
  %163 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.36) #29
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.39) #29
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %237

168:                                              ; preds = %165, %162, %158
  %169 = load i32, ptr %76, align 8, !tbaa !36
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %244, label %171

171:                                              ; preds = %168
  %172 = load i64, ptr %74, align 8, !tbaa !34
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %244

174:                                              ; preds = %171
  %175 = shl i64 %82, 2
  %176 = and i64 %175, 12
  %177 = urem i64 %82, 3
  %178 = mul nuw nsw i64 %177, 3
  %179 = shl nuw i64 %82, 1
  %180 = and i64 %179, 2
  br label %181

181:                                              ; preds = %174, %226
  %182 = phi i64 [ %172, %174 ], [ %227, %226 ]
  %183 = phi ptr [ %159, %174 ], [ %234, %226 ]
  %184 = phi i64 [ 0, %174 ], [ %235, %226 ]
  br i1 %43, label %185, label %203

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 0, i32 3
  %187 = load i16, ptr %186, align 2, !tbaa !42
  %188 = uitofp i16 %187 to double
  %189 = load double, ptr %5, align 8, !tbaa !65
  %190 = fcmp ogt double %189, %188
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = fptrunc double %189 to float
  br label %226

193:                                              ; preds = %185
  %194 = load double, ptr %6, align 8, !tbaa !65
  %195 = fcmp olt double %194, %188
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = fptrunc double %194 to float
  br label %226

198:                                              ; preds = %193
  %199 = call double @GetPseudoRandomValue(ptr noundef %69) #29
  %200 = fmul double %199, 6.553500e+04
  %201 = fptrunc double %200 to float
  %202 = load i64, ptr %74, align 8, !tbaa !34
  br label %226

203:                                              ; preds = %181
  br i1 %21, label %204, label %210

204:                                              ; preds = %203
  %205 = and i64 %184, 1
  %206 = or disjoint i64 %205, %180
  %207 = getelementptr inbounds [4 x float], ptr @RandomChannelThresholdImage.o2, i64 0, i64 %206
  %208 = load float, ptr %207, align 4, !tbaa !82
  %209 = fmul float %208, 6.553500e+04
  br label %226

210:                                              ; preds = %203
  br i1 %44, label %211, label %217

211:                                              ; preds = %210
  %212 = urem i64 %184, 3
  %213 = add nuw nsw i64 %212, %178
  %214 = getelementptr inbounds [9 x float], ptr @RandomChannelThresholdImage.o3, i64 0, i64 %213
  %215 = load float, ptr %214, align 4, !tbaa !82
  %216 = fmul float %215, 6.553500e+04
  br label %226

217:                                              ; preds = %210
  %218 = and i64 %184, 3
  %219 = or disjoint i64 %218, %176
  %220 = getelementptr inbounds [16 x float], ptr @RandomChannelThresholdImage.o4, i64 0, i64 %219
  %221 = load float, ptr %220, align 4, !tbaa !82
  %222 = fmul float %221, 6.553500e+04
  %223 = fpext float %222 to double
  %224 = fdiv double %223, 1.700000e+00
  %225 = fptrunc double %224 to float
  br label %226

226:                                              ; preds = %204, %217, %211, %191, %198, %196
  %227 = phi i64 [ %182, %204 ], [ %182, %217 ], [ %182, %211 ], [ %182, %191 ], [ %202, %198 ], [ %182, %196 ]
  %228 = phi float [ %209, %204 ], [ %225, %217 ], [ %216, %211 ], [ %192, %191 ], [ %201, %198 ], [ %197, %196 ]
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 0, i32 3
  %230 = load i16, ptr %229, align 2, !tbaa !42
  %231 = uitofp i16 %230 to float
  %232 = fcmp ult float %228, %231
  %233 = sext i1 %232 to i16
  store i16 %233, ptr %229, align 2, !tbaa !42
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 1
  %235 = add nuw nsw i64 %184, 1
  %236 = icmp slt i64 %235, %227
  br i1 %236, label %181, label %244, !llvm.loop !126

237:                                              ; preds = %165
  %238 = call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.37) #29
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %242 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %243 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %241, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6033, i32 noundef 410, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.4, ptr noundef nonnull %242) #29
  br label %249

244:                                              ; preds = %226, %171, %237, %168
  %245 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef %3) #29
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %77

247:                                              ; preds = %77, %81, %244, %68
  %248 = call ptr @DestroyRandomInfo(ptr noundef %69) #29
  br label %249

249:                                              ; preds = %240, %64, %17, %247
  %250 = phi i32 [ 1, %247 ], [ 1, %17 ], [ 0, %64 ], [ 0, %240 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %250
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #1

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ReacquireMemory(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6075, ptr noundef nonnull @.str.2) #29
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @AcquireMagickMemory(i64 noundef %1) #31
  br label %14

8:                                                ; preds = %2
  %9 = tail call ptr @realloc(ptr noundef nonnull %4, i64 noundef %1) #37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  %13 = tail call ptr @RelinquishMagickMemory(ptr noundef %12) #29
  br label %14

14:                                               ; preds = %8, %11, %6
  %15 = phi ptr [ %7, %6 ], [ null, %11 ], [ %9, %8 ]
  store ptr %15, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RecolorImage(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.41) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %5, i64 0, i32 1
  store i64 %1, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %5, i64 0, i32 2
  store i64 %1, ptr %9, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %5, i64 0, i32 5
  store ptr %2, ptr %10, align 8, !tbaa !130
  %11 = tail call ptr @ColorMatrixImage(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3) #29
  store ptr null, ptr %10, align 8, !tbaa !130
  %12 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %5) #29
  br label %13

13:                                               ; preds = %4, %7
  %14 = phi ptr [ %11, %7 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @AcquireKernelInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ColorMatrixImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyKernelInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ReduceNoiseImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = fptoui double %1 to i64
  %5 = tail call ptr @StatisticImage(ptr noundef %0, i32 noundef 7, i64 noundef %4, i64 noundef %4, ptr noundef %2) #29
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RelinquishSemaphoreInfo(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @UnlockSemaphoreInfo(ptr noundef %0) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetImageAttributeIterator(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ResetImagePropertyIterator(ptr noundef %0) #29
  ret void
}

; Function Attrs: optsize
declare void @ResetImagePropertyIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SetCacheViewPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @GetCacheViewException(ptr noundef %0) #29
  %7 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %6) #30
  ret ptr %7
}

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetCacheThreshold(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6316, ptr noundef nonnull @.str.25) #29
  %3 = shl i64 %0, 20
  %4 = tail call i32 @SetMagickResourceLimit(i32 noundef 5, i64 noundef %3) #29
  %5 = shl i64 %0, 21
  %6 = tail call i32 @SetMagickResourceLimit(i32 noundef 4, i64 noundef %5) #29
  ret void
}

; Function Attrs: optsize
declare i32 @SetMagickResourceLimit(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetExceptionInfo(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @ClearMagickException(ptr noundef %0) #29
  store i32 %1, ptr %0, align 8, !tbaa !131
  ret i32 1
}

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetImage(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6390, ptr noundef nonnull @.str.42) #29
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6393, ptr noundef nonnull @.str.24) #29
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %11 = load i16, ptr %10, align 8, !tbaa.struct !115
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa.struct !132
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa.struct !133
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa.struct !116
  %18 = icmp eq i16 %1, 0
  %19 = select i1 %18, i16 %17, i16 %1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #29
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %23, align 8, !tbaa !36
  br label %24

24:                                               ; preds = %21, %9
  %25 = load i32, ptr %0, align 8, !tbaa !112
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !71
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !35
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %153

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br label %133

38:                                               ; preds = %27, %24
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !35
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %153

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br label %49

45:                                               ; preds = %126
  %46 = add nuw nsw i64 %50, 1
  %47 = load i64, ptr %40, align 8, !tbaa !35
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %153, !llvm.loop !134

49:                                               ; preds = %43, %45
  %50 = phi i64 [ 0, %43 ], [ %46, %45 ]
  %51 = load i64, ptr %39, align 8, !tbaa !34
  %52 = tail call ptr @QueueAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %50, i64 noundef %51, i64 noundef 1, ptr noundef nonnull %44) #29
  %53 = icmp eq ptr %52, null
  br i1 %53, label %153, label %54

54:                                               ; preds = %49
  %55 = load i64, ptr %39, align 8, !tbaa !34
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54, %57
  %58 = phi ptr [ %63, %57 ], [ %52, %54 ]
  %59 = phi i64 [ %64, %57 ], [ 0, %54 ]
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  store i16 %15, ptr %60, align 2, !tbaa !58
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  store i16 %13, ptr %61, align 2, !tbaa !59
  store i16 %11, ptr %58, align 2, !tbaa !60
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  store i16 %19, ptr %62, align 2, !tbaa !42
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %64 = add nuw nsw i64 %59, 1
  %65 = icmp eq i64 %64, %55
  br i1 %65, label %66, label %57, !llvm.loop !135

66:                                               ; preds = %57, %54
  %67 = tail call ptr @GetAuthenticIndexQueue(ptr noundef nonnull %0) #29
  %68 = load i64, ptr %39, align 8, !tbaa !34
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %126

70:                                               ; preds = %66
  %71 = icmp ne ptr %67, null
  %72 = add nuw i64 %68, 7
  %73 = and i64 %72, -8
  %74 = add nsw i64 %68, -1
  %75 = insertelement <8 x i64> poison, i64 %74, i64 0
  %76 = shufflevector <8 x i64> %75, <8 x i64> poison, <8 x i32> zeroinitializer
  %77 = insertelement <8 x i1> poison, i1 %71, i64 0
  %78 = shufflevector <8 x i1> %77, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %79

79:                                               ; preds = %122, %70
  %80 = phi i64 [ 0, %70 ], [ %123, %122 ]
  %81 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %70 ], [ %124, %122 ]
  %82 = icmp ule <8 x i64> %81, %76
  %83 = select <8 x i1> %82, <8 x i1> %78, <8 x i1> zeroinitializer
  %84 = extractelement <8 x i1> %83, i64 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = getelementptr inbounds i16, ptr %67, i64 %80
  store i16 0, ptr %86, align 2, !tbaa !61
  br label %87

87:                                               ; preds = %85, %79
  %88 = extractelement <8 x i1> %83, i64 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = or disjoint i64 %80, 1
  %91 = getelementptr inbounds i16, ptr %67, i64 %90
  store i16 0, ptr %91, align 2, !tbaa !61
  br label %92

92:                                               ; preds = %89, %87
  %93 = extractelement <8 x i1> %83, i64 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = or disjoint i64 %80, 2
  %96 = getelementptr inbounds i16, ptr %67, i64 %95
  store i16 0, ptr %96, align 2, !tbaa !61
  br label %97

97:                                               ; preds = %94, %92
  %98 = extractelement <8 x i1> %83, i64 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = or disjoint i64 %80, 3
  %101 = getelementptr inbounds i16, ptr %67, i64 %100
  store i16 0, ptr %101, align 2, !tbaa !61
  br label %102

102:                                              ; preds = %99, %97
  %103 = extractelement <8 x i1> %83, i64 4
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = or disjoint i64 %80, 4
  %106 = getelementptr inbounds i16, ptr %67, i64 %105
  store i16 0, ptr %106, align 2, !tbaa !61
  br label %107

107:                                              ; preds = %104, %102
  %108 = extractelement <8 x i1> %83, i64 5
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = or disjoint i64 %80, 5
  %111 = getelementptr inbounds i16, ptr %67, i64 %110
  store i16 0, ptr %111, align 2, !tbaa !61
  br label %112

112:                                              ; preds = %109, %107
  %113 = extractelement <8 x i1> %83, i64 6
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = or disjoint i64 %80, 6
  %116 = getelementptr inbounds i16, ptr %67, i64 %115
  store i16 0, ptr %116, align 2, !tbaa !61
  br label %117

117:                                              ; preds = %114, %112
  %118 = extractelement <8 x i1> %83, i64 7
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = or disjoint i64 %80, 7
  %121 = getelementptr inbounds i16, ptr %67, i64 %120
  store i16 0, ptr %121, align 2, !tbaa !61
  br label %122

122:                                              ; preds = %119, %117
  %123 = add i64 %80, 8
  %124 = add <8 x i64> %81, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %125 = icmp eq i64 %123, %73
  br i1 %125, label %126, label %79, !llvm.loop !136

126:                                              ; preds = %122, %66
  %127 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %44) #29
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %153, label %45

129:                                              ; preds = %150
  %130 = add nuw nsw i64 %134, 1
  %131 = load i64, ptr %33, align 8, !tbaa !35
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %153, !llvm.loop !139

133:                                              ; preds = %36, %129
  %134 = phi i64 [ 0, %36 ], [ %130, %129 ]
  %135 = load i64, ptr %32, align 8, !tbaa !34
  %136 = tail call ptr @QueueAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %134, i64 noundef %135, i64 noundef 1, ptr noundef nonnull %37) #29
  %137 = icmp eq ptr %136, null
  br i1 %137, label %153, label %138

138:                                              ; preds = %133
  %139 = load i64, ptr %32, align 8, !tbaa !34
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138, %141
  %142 = phi ptr [ %147, %141 ], [ %136, %138 ]
  %143 = phi i64 [ %148, %141 ], [ 0, %138 ]
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 0, i32 2
  store i16 %15, ptr %144, align 2, !tbaa !58
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 0, i32 1
  store i16 %13, ptr %145, align 2, !tbaa !59
  store i16 %11, ptr %142, align 2, !tbaa !60
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 0, i32 3
  store i16 %19, ptr %146, align 2, !tbaa !42
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 1
  %148 = add nuw nsw i64 %143, 1
  %149 = icmp eq i64 %148, %139
  br i1 %149, label %150, label %141, !llvm.loop !140

150:                                              ; preds = %141, %138
  %151 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %37) #29
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %129

153:                                              ; preds = %129, %133, %150, %45, %49, %126, %31, %38
  ret void
}

; Function Attrs: optsize
declare ptr @QueueAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageAttribute(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6496, ptr noundef nonnull @.str.20) #29
  %5 = tail call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef %2) #29
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageList(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6538, ptr noundef nonnull @.str.7) #29
  %6 = tail call ptr @CloneImageList(ptr noundef %1, ptr noundef %3) #29
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  %8 = tail call ptr @GetPreviousImageInList(ptr noundef %7) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %14, %4
  %11 = icmp sgt i64 %2, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  br label %19

14:                                               ; preds = %4, %14
  %15 = load ptr, ptr %0, align 8, !tbaa !6
  %16 = tail call ptr @GetPreviousImageInList(ptr noundef %15) #29
  store ptr %16, ptr %0, align 8, !tbaa !6
  %17 = tail call ptr @GetPreviousImageInList(ptr noundef %16) #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %10, label %14, !llvm.loop !141

19:                                               ; preds = %12, %24
  %20 = phi ptr [ %26, %24 ], [ %13, %12 ]
  %21 = phi i64 [ %27, %24 ], [ 0, %12 ]
  %22 = tail call ptr @GetNextImageInList(ptr noundef %20) #29
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = tail call ptr @GetNextImageInList(ptr noundef %25) #29
  store ptr %26, ptr %0, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %2
  br i1 %28, label %29, label %19, !llvm.loop !142

29:                                               ; preds = %24, %10
  tail call void @InsertImageInList(ptr noundef nonnull %0, ptr noundef %6) #29
  br label %30

30:                                               ; preds = %19, %29
  %31 = phi i32 [ 1, %29 ], [ 0, %19 ]
  ret i32 %31
}

; Function Attrs: optsize
declare void @InsertImageInList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SetImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %7 = tail call ptr @QueueAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %6) #29
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @SetMagickRegistry(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %6 = load i64, ptr @SetMagickRegistry.id, align 8, !tbaa !67
  %7 = sitofp i64 %6 to double
  %8 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %7) #29
  %9 = call i32 @SetImageRegistry(i32 noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %3) #29
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr @SetMagickRegistry.id, align 8, !tbaa !67
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr @SetMagickRegistry.id, align 8, !tbaa !67
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi i64 [ %12, %11 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  ret i64 %15
}

; Function Attrs: optsize
declare i32 @SetImageRegistry(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @GetMonitorHandler() local_unnamed_addr #26 {
  %1 = load ptr, ptr @monitor_handler, align 8, !tbaa !6
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @SetMonitorHandler(ptr noundef %0) local_unnamed_addr #27 {
  %2 = load ptr, ptr @monitor_handler, align 8, !tbaa !6
  store ptr %0, ptr @monitor_handler, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShiftImageList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6737, ptr noundef nonnull @.str.7) #29
  %3 = tail call ptr @RemoveFirstImageFromList(ptr noundef %0) #29
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @RemoveFirstImageFromList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @SizeBlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6773, ptr noundef nonnull @.str.9) #29
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i64 @GetBlobSize(ptr noundef nonnull %0) #29
  ret i64 %8
}

; Function Attrs: optsize
declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SpliceImageList(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6820, ptr noundef nonnull @.str.7) #29
  br label %12

12:                                               ; preds = %10, %5
  %13 = tail call ptr @CloneImageList(ptr noundef %3, ptr noundef %4) #29
  %14 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %0) #29
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %19, %12
  %17 = phi ptr [ %0, %12 ], [ %21, %19 ]
  %18 = icmp sgt i64 %1, 0
  br i1 %18, label %24, label %33

19:                                               ; preds = %12, %19
  %20 = phi ptr [ %21, %19 ], [ %0, %12 ]
  %21 = tail call ptr @GetPreviousImageInList(ptr noundef %20) #29
  %22 = tail call ptr @GetPreviousImageInList(ptr noundef %21) #29
  %23 = icmp eq ptr %22, null
  br i1 %23, label %16, label %19, !llvm.loop !143

24:                                               ; preds = %16, %29
  %25 = phi i64 [ %31, %29 ], [ 0, %16 ]
  %26 = phi ptr [ %30, %29 ], [ %17, %16 ]
  %27 = tail call ptr @GetNextImageInList(ptr noundef %26) #29
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = tail call ptr @GetNextImageInList(ptr noundef %26) #29
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %1
  br i1 %32, label %33, label %24, !llvm.loop !144

33:                                               ; preds = %29, %16
  %34 = phi ptr [ %17, %16 ], [ %30, %29 ]
  store ptr %34, ptr %6, align 8, !tbaa !6
  %35 = call ptr @SpliceImageIntoList(ptr noundef nonnull %6, i64 noundef %2, ptr noundef %13) #29
  %36 = load ptr, ptr %6, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %24, %33
  %38 = phi ptr [ %36, %33 ], [ null, %24 ]
  ret ptr %38
}

; Function Attrs: optsize
declare ptr @SpliceImageIntoList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @sRGBCompandor(float noundef %0) local_unnamed_addr #23 {
  %2 = fpext float %0 to double
  %3 = fcmp ugt double %2, 0x4069A5632CEAE209
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = fmul double %2, 1.292000e+01
  br label %11

6:                                                ; preds = %1
  %7 = fmul double %2, 0x3EF0001000100010
  %8 = tail call double @pow(double noundef %7, double noundef 0x3FDAAAAAAAAAAAAB) #29
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 1.055000e+00, double -5.500000e-02)
  %10 = fmul double %9, 6.553500e+04
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi double [ %5, %4 ], [ %10, %6 ]
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Strip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6893, ptr noundef nonnull @.str.2) #29
  %3 = load i8, ptr %0, align 1, !tbaa !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %56, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @__ctype_b_loc() #35
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = zext i8 %3 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !61
  %14 = and i16 %13, 8192
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %8, %16
  %17 = phi ptr [ %18, %16 ], [ %0, %8 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i16, ptr %10, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !61
  %23 = and i16 %22, 8192
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %16, !llvm.loop !145

25:                                               ; preds = %16, %8
  %26 = phi i8 [ %3, %8 ], [ %19, %16 ]
  %27 = phi ptr [ %0, %8 ], [ %18, %16 ]
  switch i8 %26, label %30 [
    i8 39, label %28
    i8 34, label %28
  ]

28:                                               ; preds = %25, %25
  %29 = getelementptr inbounds i8, ptr %27, i64 1
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %29, %28 ], [ %27, %25 ]
  %32 = getelementptr inbounds i8, ptr %0, i64 %6
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %32, %30 ], [ %35, %33 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 -1
  %36 = load i8, ptr %35, align 1, !tbaa !12
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i16, ptr %10, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !61
  %40 = and i16 %39, 8192
  %41 = icmp ne i16 %40, 0
  %42 = icmp ugt ptr %35, %31
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %33, label %44, !llvm.loop !146

44:                                               ; preds = %33
  br i1 %42, label %45, label %48

45:                                               ; preds = %44
  switch i8 %36, label %48 [
    i8 39, label %46
    i8 34, label %46
  ]

46:                                               ; preds = %45, %45
  %47 = getelementptr inbounds i8, ptr %34, i64 -2
  br label %48

48:                                               ; preds = %45, %46, %44
  %49 = phi ptr [ %47, %46 ], [ %35, %44 ], [ %35, %45 ]
  %50 = ptrtoint ptr %49 to i64
  %51 = ptrtoint ptr %31 to i64
  %52 = sub i64 %50, %51
  %53 = add nsw i64 %52, 1
  %54 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %0, ptr noundef nonnull %31, i64 noundef %53) #29
  %55 = getelementptr inbounds i8, ptr %0, i64 %53
  store i8 0, ptr %55, align 1, !tbaa !12
  br label %56

56:                                               ; preds = %5, %1, %48
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SyncCacheView(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetCacheViewException(ptr noundef %0) #29
  %3 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %0, ptr noundef %2) #30
  ret i32 %3
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SyncCacheViewPixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @GetCacheViewException(ptr noundef %0) #29
  %3 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %0, ptr noundef %2) #30
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SyncImagePixels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %3 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %2) #29
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TemporaryFilename(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7049, ptr noundef nonnull @.str.10) #29
  %3 = tail call i32 @AcquireUniqueFilename(ptr noundef %0) #29
  %4 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %0) #29
  ret void
}

; Function Attrs: optsize
declare i32 @AcquireUniqueFilename(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ThresholdImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7096, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #29
  %9 = load i32, ptr %3, align 8, !tbaa !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7098, ptr noundef nonnull @.str.2) #29
  br label %13

13:                                               ; preds = %2, %11, %6
  %14 = tail call i32 @AcquireImageColormap(ptr noundef nonnull %0, i64 noundef 2) #29
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !35
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %31

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7101, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43) #29
  br label %63

27:                                               ; preds = %60
  %28 = add nuw nsw i64 %32, 1
  %29 = load i64, ptr %18, align 8, !tbaa !35
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %63, !llvm.loop !147

31:                                               ; preds = %21, %27
  %32 = phi i64 [ 0, %21 ], [ %28, %27 ]
  %33 = load i64, ptr %17, align 8, !tbaa !34
  %34 = tail call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %32, i64 noundef %33, i64 noundef 1, ptr noundef nonnull %22) #29
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %31
  %37 = tail call ptr @GetAuthenticIndexQueue(ptr noundef nonnull %0) #29
  %38 = load i64, ptr %17, align 8, !tbaa !34
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = icmp eq ptr %37, null
  br label %42

42:                                               ; preds = %40, %51
  %43 = phi ptr [ %34, %40 ], [ %56, %51 ]
  %44 = phi i64 [ 0, %40 ], [ %57, %51 ]
  %45 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %43) #30
  %46 = fpext float %45 to double
  %47 = fcmp ugt double %46, %1
  br i1 %41, label %51, label %48

48:                                               ; preds = %42
  %49 = zext i1 %47 to i16
  %50 = getelementptr inbounds i16, ptr %37, i64 %44
  store i16 %49, ptr %50, align 2, !tbaa !61
  br label %51

51:                                               ; preds = %48, %42
  %52 = load ptr, ptr %23, align 8, !tbaa !118
  %53 = zext i1 %47 to i64
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %52, i64 %53
  %55 = load <4 x i16>, ptr %54, align 2, !tbaa !61
  store <4 x i16> %55, ptr %43, align 2, !tbaa !61
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %43, i64 1
  %57 = add nuw nsw i64 %44, 1
  %58 = load i64, ptr %17, align 8, !tbaa !34
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %42, label %60, !llvm.loop !148

60:                                               ; preds = %51, %36
  %61 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %22) #29
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %27

63:                                               ; preds = %27, %31, %60, %16, %24
  %64 = phi i32 [ 0, %24 ], [ 1, %16 ], [ 1, %60 ], [ 1, %31 ], [ 1, %27 ]
  ret i32 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ThresholdImageChannel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7182, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #29
  br label %11

11:                                               ; preds = %8, %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %126, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #29
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %126, label %16

16:                                               ; preds = %13
  %17 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %4) #29
  %18 = load double, ptr %4, align 8, !tbaa !28
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %19, ptr %20, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %23 = insertelement <2 x i32> poison, i32 %17, i64 0
  %24 = shufflevector <2 x i32> %23, <2 x i32> poison, <2 x i32> zeroinitializer
  %25 = and <2 x i32> %24, <i32 8, i32 1>
  %26 = icmp eq <2 x i32> %25, zeroinitializer
  %27 = load <2 x double>, ptr %21, align 8
  %28 = fptrunc <2 x double> %27 to <2 x float>
  %29 = insertelement <2 x float> poison, float %19, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = select <2 x i1> %26, <2 x float> %30, <2 x float> %28
  store <2 x float> %31, ptr %22, align 4
  %32 = and i32 %17, 2
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %35 = load double, ptr %34, align 8
  %36 = fptrunc double %35 to float
  %37 = select i1 %33, float 0.000000e+00, float %36
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %37, ptr %38, align 4
  %39 = and i32 %17, 4096
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %16
  %42 = insertelement <4 x float> poison, float %19, i64 0
  %43 = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %44 = shufflevector <4 x float> %42, <4 x float> %43, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %45 = insertelement <4 x float> %44, float %37, i64 3
  %46 = fmul <4 x float> %45, <float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000>
  store <4 x float> %46, ptr %20, align 8, !tbaa !82
  %47 = extractelement <4 x float> %46, i64 0
  br label %48

48:                                               ; preds = %41, %16
  %49 = phi float [ %47, %41 ], [ %19, %16 ]
  %50 = extractelement <2 x i1> %26, i64 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = call i32 @AcquireImageColormap(ptr noundef nonnull %0, i64 noundef 2) #29
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %56 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %55, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7212, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43) #29
  br label %126

57:                                               ; preds = %51
  %58 = fcmp oeq float %49, 0.000000e+00
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %61 = call i32 @GetImageDynamicThreshold(ptr noundef nonnull %0, double noundef 2.000000e+00, double noundef 2.000000e+00, ptr noundef nonnull %3, ptr noundef nonnull %60) #29
  br label %62

62:                                               ; preds = %57, %59, %48
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !35
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %126

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %74

70:                                               ; preds = %123
  %71 = add nuw nsw i64 %75, 1
  %72 = load i64, ptr %64, align 8, !tbaa !35
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %126, !llvm.loop !149

74:                                               ; preds = %67, %70
  %75 = phi i64 [ 0, %67 ], [ %71, %70 ]
  %76 = load i64, ptr %63, align 8, !tbaa !34
  %77 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %75, i64 noundef %76, i64 noundef 1, ptr noundef nonnull %68) #29
  %78 = icmp eq ptr %77, null
  br i1 %78, label %126, label %79

79:                                               ; preds = %74
  %80 = call ptr @GetAuthenticIndexQueue(ptr noundef nonnull %0) #29
  %81 = call fastcc i32 @IsMagickGray(ptr noundef nonnull %3) #32, !range !150
  %82 = icmp eq i32 %81, 0
  %83 = load i64, ptr %63, align 8, !tbaa !34
  %84 = icmp sgt i64 %83, 0
  br i1 %82, label %88, label %85

85:                                               ; preds = %79
  br i1 %84, label %86, label %123

86:                                               ; preds = %85
  %87 = icmp eq ptr %80, null
  br label %92

88:                                               ; preds = %79
  br i1 %84, label %89, label %123

89:                                               ; preds = %88
  %90 = load <4 x float>, ptr %20, align 8, !tbaa !82
  %91 = shufflevector <4 x float> %90, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  br label %113

92:                                               ; preds = %86, %101
  %93 = phi ptr [ %77, %86 ], [ %109, %101 ]
  %94 = phi i64 [ 0, %86 ], [ %110, %101 ]
  %95 = call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %93) #30
  %96 = load float, ptr %20, align 8, !tbaa !99
  %97 = fcmp ugt float %95, %96
  br i1 %87, label %101, label %98

98:                                               ; preds = %92
  %99 = zext i1 %97 to i16
  %100 = getelementptr inbounds i16, ptr %80, i64 %94
  store i16 %99, ptr %100, align 2, !tbaa !61
  br label %101

101:                                              ; preds = %98, %92
  %102 = load ptr, ptr %69, align 8, !tbaa !118
  %103 = zext i1 %97 to i64
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 %103, i32 2
  %105 = load i16, ptr %104, align 2, !tbaa !58
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 2
  store i16 %105, ptr %106, align 2, !tbaa !58
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 %103
  %108 = load <2 x i16>, ptr %107, align 2, !tbaa !61
  store <2 x i16> %108, ptr %93, align 2, !tbaa !61
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 1
  %110 = add nuw nsw i64 %94, 1
  %111 = load i64, ptr %63, align 8, !tbaa !34
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %92, label %123, !llvm.loop !151

113:                                              ; preds = %89, %113
  %114 = phi ptr [ %77, %89 ], [ %120, %113 ]
  %115 = phi i64 [ 0, %89 ], [ %121, %113 ]
  %116 = load <4 x i16>, ptr %114, align 2, !tbaa !61
  %117 = uitofp <4 x i16> %116 to <4 x float>
  %118 = fcmp ult <4 x float> %91, %117
  %119 = sext <4 x i1> %118 to <4 x i16>
  store <4 x i16> %119, ptr %114, align 2, !tbaa !61
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 1
  %121 = add nuw nsw i64 %115, 1
  %122 = icmp eq i64 %121, %83
  br i1 %122, label %123, label %113, !llvm.loop !152

123:                                              ; preds = %101, %113, %85, %88
  %124 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %68) #29
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %70

126:                                              ; preds = %70, %74, %123, %62, %54, %13, %11
  %127 = phi i32 [ 1, %11 ], [ 0, %13 ], [ 0, %54 ], [ 1, %62 ], [ 1, %123 ], [ 1, %74 ], [ 1, %70 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %127
}

; Function Attrs: optsize
declare i32 @GetImageDynamicThreshold(ptr noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMagickGray(ptr nocapture noundef readonly %0) unnamed_addr #20 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !103
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !99
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !100
  %11 = fsub float %8, %10
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fpext float %12 to double
  %14 = fcmp olt double %13, 1.000000e-15
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %17 = load float, ptr %16, align 8, !tbaa !83
  %18 = fsub float %10, %17
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fpext float %19 to double
  %21 = fcmp olt double %20, 1.000000e-15
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %6
  br label %23

23:                                               ; preds = %1, %15, %22
  %24 = phi i32 [ 0, %22 ], [ 0, %1 ], [ 1, %15 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TransformColorspace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7300, ptr noundef nonnull @.str.10) #29
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef %1) #29
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TransformHSL(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #22 {
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
  %19 = tail call fastcc double @MagickMax(double noundef %17, double noundef %18) #32
  %20 = tail call fastcc double @MagickMax(double noundef %16, double noundef %19) #32
  %21 = fptrunc double %20 to float
  %22 = tail call fastcc double @MagickMin(double noundef %17, double noundef %18) #32
  %23 = tail call fastcc double @MagickMin(double noundef %16, double noundef %22) #32
  %24 = fptrunc double %23 to float
  store double 0.000000e+00, ptr %3, align 8, !tbaa !65
  store double 0.000000e+00, ptr %4, align 8, !tbaa !65
  %25 = fadd float %21, %24
  %26 = fpext float %25 to double
  %27 = fmul double %26, 5.000000e-01
  store double %27, ptr %5, align 8, !tbaa !65
  %28 = fsub float %21, %24
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %81, label %30

30:                                               ; preds = %6
  %31 = fpext float %28 to double
  %32 = fcmp olt double %27, 5.000000e-01
  %33 = fpext float %21 to double
  %34 = fsub double 2.000000e+00, %33
  %35 = fpext float %24 to double
  %36 = fsub double %34, %35
  %37 = select i1 %32, double %26, double %36
  %38 = fdiv double %31, %37
  store double %38, ptr %4, align 8, !tbaa !65
  %39 = fcmp oeq float %9, %21
  br i1 %39, label %40, label %52

40:                                               ; preds = %30
  %41 = fcmp oeq float %12, %24
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = fsub float %21, %15
  %44 = fdiv float %43, %28
  %45 = fpext float %44 to double
  %46 = fadd double %45, 5.000000e+00
  br label %78

47:                                               ; preds = %40
  %48 = fsub float %21, %12
  %49 = fdiv float %48, %28
  %50 = fpext float %49 to double
  %51 = fsub double 1.000000e+00, %50
  br label %78

52:                                               ; preds = %30
  %53 = fcmp oeq float %12, %21
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = fcmp oeq float %15, %24
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = fsub float %21, %9
  %58 = fdiv float %57, %28
  %59 = fpext float %58 to double
  %60 = fadd double %59, 1.000000e+00
  br label %78

61:                                               ; preds = %54
  %62 = fsub float %21, %15
  %63 = fdiv float %62, %28
  %64 = fpext float %63 to double
  %65 = fsub double 3.000000e+00, %64
  br label %78

66:                                               ; preds = %52
  %67 = fcmp oeq float %9, %24
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = fsub float %21, %12
  %70 = fdiv float %69, %28
  %71 = fpext float %70 to double
  %72 = fadd double %71, 3.000000e+00
  br label %78

73:                                               ; preds = %66
  %74 = fsub float %21, %9
  %75 = fdiv float %74, %28
  %76 = fpext float %75 to double
  %77 = fsub double 5.000000e+00, %76
  br label %78

78:                                               ; preds = %68, %73, %56, %61, %42, %47
  %79 = phi double [ %46, %42 ], [ %51, %47 ], [ %60, %56 ], [ %65, %61 ], [ %72, %68 ], [ %77, %73 ]
  %80 = fdiv double %79, 6.000000e+00
  store double %80, ptr %3, align 8, !tbaa !65
  br label %81

81:                                               ; preds = %6, %78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #11 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TranslateText(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7419, ptr noundef nonnull @.str.44) #29
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call ptr @InterpretImageProperties(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #29
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @TransparentImage(ptr noundef %0, i64 %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PixelPacket, align 8
  store i64 %1, ptr %4, align 8
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7473, ptr noundef nonnull @.str.26) #29
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7475, ptr noundef nonnull @.str.5, ptr noundef nonnull %10) #29
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !36
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #29
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !35
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br label %29

25:                                               ; preds = %52
  %26 = add nuw nsw i64 %30, 1
  %27 = load i64, ptr %20, align 8, !tbaa !35
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %56, !llvm.loop !153

29:                                               ; preds = %23, %25
  %30 = phi i64 [ 0, %23 ], [ %26, %25 ]
  %31 = load i64, ptr %19, align 8, !tbaa !34
  %32 = call ptr @GetAuthenticPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %30, i64 noundef %31, i64 noundef 1, ptr noundef nonnull %24) #29
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = load i64, ptr %19, align 8, !tbaa !34
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34, %44
  %38 = phi ptr [ %45, %44 ], [ %32, %34 ]
  %39 = phi i64 [ %46, %44 ], [ 0, %34 ]
  %40 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %38, ptr noundef nonnull %4) #29
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 0, i32 3
  store i16 %2, ptr %43, align 2, !tbaa !42
  br label %44

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 1
  %46 = add nuw nsw i64 %39, 1
  %47 = load i64, ptr %19, align 8, !tbaa !34
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %37, label %49, !llvm.loop !154

49:                                               ; preds = %44, %34
  %50 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %0, ptr noundef nonnull %24) #29
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %20, align 8, !tbaa !35
  %54 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.45, i64 noundef %30, i64 noundef %53) #32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %25

56:                                               ; preds = %25, %29, %49, %52, %18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @UnshiftImageList(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7539, ptr noundef nonnull @.str.7) #29
  %5 = tail call ptr @CloneImageList(ptr noundef %1, ptr noundef %2) #29
  tail call void @PrependImageToList(ptr noundef %0, ptr noundef %5) #29
  ret i32 1
}

; Function Attrs: optsize
declare void @PrependImageToList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i16 @ValidateColormapIndex(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7581, ptr noundef nonnull @.str.46) #29
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call fastcc zeroext i16 @ConstrainColormapIndex(ptr noundef nonnull %0, i64 noundef %1) #32
  ret i16 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i16 @ConstrainColormapIndex(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %4 = load i64, ptr %3, align 8, !tbaa !113
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = trunc i64 %1 to i16
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i64 noundef 34, i32 noundef 425, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.4, ptr noundef nonnull %10) #29
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi i16 [ %7, %6 ], [ 0, %8 ]
  ret i16 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ZoomImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 7633, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #29
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %13 = load i32, ptr %12, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %15 = load double, ptr %14, align 8, !tbaa !95
  %16 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %13, double noundef %15, ptr noundef %3) #29
  ret ptr %16
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #28

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { convergent nounwind }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #19 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind optsize }
attributes #30 = { hot nounwind optsize }
attributes #31 = { nounwind optsize allocsize(0) }
attributes #32 = { optsize }
attributes #33 = { nounwind optsize willreturn memory(read) }
attributes #34 = { nounwind optsize allocsize(0,1) }
attributes #35 = { nounwind optsize willreturn memory(none) }
attributes #36 = { noreturn nounwind optsize }
attributes #37 = { nounwind optsize allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !11, i64 12976}
!14 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !15, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !7, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !18, i64 104, !19, i64 112, !11, i64 208, !7, i64 216, !11, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !15, i64 256, !18, i64 264, !18, i64 272, !21, i64 280, !21, i64 312, !21, i64 344, !18, i64 376, !18, i64 384, !18, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !7, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !22, i64 480, !23, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !15, i64 12904, !15, i64 12912, !25, i64 12920, !11, i64 12976, !15, i64 12984, !7, i64 12992, !26, i64 13000, !26, i64 13032, !7, i64 13064, !15, i64 13072, !15, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !11, i64 13112, !11, i64 13116, !16, i64 13120, !7, i64 13128, !21, i64 13136, !7, i64 13168, !7, i64 13176, !11, i64 13184, !11, i64 13188, !27, i64 13192, !11, i64 13200, !15, i64 13208, !15, i64 13216, !11, i64 13224, !15, i64 13232}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_PixelPacket", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!17 = !{!"short", !8, i64 0}
!18 = !{!"double", !8, i64 0}
!19 = !{!"_ChromaticityInfo", !20, i64 0, !20, i64 24, !20, i64 48, !20, i64 72}
!20 = !{!"_PrimaryInfo", !18, i64 0, !18, i64 8, !18, i64 16}
!21 = !{!"_RectangleInfo", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!22 = !{!"_ErrorInfo", !18, i64 0, !18, i64 8, !18, i64 16}
!23 = !{!"_TimerInfo", !24, i64 0, !24, i64 24, !11, i64 48, !15, i64 56}
!24 = !{!"_Timer", !18, i64 0, !18, i64 8, !18, i64 16}
!25 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !7, i64 40, !15, i64 48}
!26 = !{!"_ProfileInfo", !7, i64 0, !15, i64 8, !7, i64 16, !15, i64 24}
!27 = !{!"long long", !8, i64 0}
!28 = !{!29, !18, i64 0}
!29 = !{!"_GeometryInfo", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!30 = !{!29, !18, i64 8}
!31 = !{!29, !18, i64 16}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!14, !15, i64 40}
!35 = !{!14, !15, i64 48}
!36 = !{!14, !11, i64 32}
!37 = !{!38, !18, i64 0}
!38 = !{!"_SegmentInfo", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!39 = !{!38, !18, i64 8}
!40 = !{!38, !18, i64 16}
!41 = !{!38, !18, i64 24}
!42 = !{!16, !17, i64 6}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = !{!50, !7, i64 256}
!50 = !{!"_DrawInfo", !7, i64 0, !7, i64 8, !21, i64 16, !51, i64 48, !11, i64 96, !16, i64 100, !16, i64 108, !18, i64 120, !52, i64 128, !7, i64 256, !7, i64 264, !7, i64 272, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !15, i64 304, !18, i64 312, !11, i64 320, !11, i64 324, !7, i64 328, !15, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !11, i64 368, !11, i64 372, !15, i64 376, !7, i64 384, !18, i64 392, !7, i64 400, !11, i64 408, !16, i64 412, !16, i64 420, !7, i64 432, !7, i64 440, !7, i64 448, !38, i64 456, !11, i64 488, !17, i64 492, !11, i64 496, !55, i64 504, !11, i64 672, !15, i64 680, !18, i64 688, !18, i64 696, !18, i64 704, !11, i64 712}
!51 = !{!"_AffineMatrix", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!52 = !{!"_GradientInfo", !11, i64 0, !21, i64 8, !38, i64 40, !7, i64 72, !15, i64 80, !11, i64 88, !11, i64 92, !15, i64 96, !53, i64 104, !54, i64 120}
!53 = !{!"_PointInfo", !18, i64 0, !18, i64 8}
!54 = !{!"float", !8, i64 0}
!55 = !{!"_ElementReference", !7, i64 0, !11, i64 8, !52, i64 16, !15, i64 144, !7, i64 152, !7, i64 160}
!56 = !{!14, !15, i64 13152}
!57 = !{!14, !15, i64 13160}
!58 = !{!16, !17, i64 4}
!59 = !{!16, !17, i64 2}
!60 = !{!16, !17, i64 0}
!61 = !{!17, !17, i64 0}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = !{!14, !7, i64 592}
!65 = !{!18, !18, i64 0}
!66 = !{!14, !18, i64 392}
!67 = !{!15, !15, i64 0}
!68 = !{!21, !15, i64 16}
!69 = !{!21, !15, i64 24}
!70 = distinct !{!70, !33}
!71 = !{!14, !11, i64 4}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = !{!75}
!75 = !{i64 2, i64 -1, i64 -1, i1 true}
!76 = !{i64 -2147483648, i64 2147483648}
!77 = !{!78, !7, i64 0}
!78 = !{!"_ImageAttribute", !7, i64 0, !7, i64 8, !11, i64 16, !7, i64 24, !7, i64 32}
!79 = !{!78, !7, i64 8}
!80 = !{!51, !18, i64 0}
!81 = !{!51, !18, i64 24}
!82 = !{!54, !54, i64 0}
!83 = !{!84, !54, i64 40}
!84 = !{!"_MagickPixelPacket", !11, i64 0, !11, i64 4, !11, i64 8, !18, i64 16, !15, i64 24, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48}
!85 = !{!84, !54, i64 48}
!86 = !{!84, !54, i64 44}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = !{!21, !15, i64 0}
!93 = !{!21, !15, i64 8}
!94 = !{!14, !11, i64 400}
!95 = !{!14, !18, i64 384}
!96 = distinct !{!96, !33}
!97 = !{!53, !18, i64 0}
!98 = !{!53, !18, i64 8}
!99 = !{!84, !54, i64 32}
!100 = !{!84, !54, i64 36}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33}
!103 = !{!84, !11, i64 4}
!104 = !{!105, !11, i64 16}
!105 = !{!"_QuantizeInfo", !15, i64 0, !15, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !15, i64 32, !11, i64 40}
!106 = distinct !{!106, !33}
!107 = distinct !{!107, !33}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !33}
!110 = distinct !{!110, !33}
!111 = distinct !{!111, !33}
!112 = !{!14, !11, i64 0}
!113 = !{!14, !15, i64 64}
!114 = distinct !{!114, !33}
!115 = !{i64 0, i64 2, !61, i64 2, i64 2, !61, i64 4, i64 2, !61, i64 6, i64 2, !61}
!116 = !{i64 0, i64 2, !61}
!117 = distinct !{!117, !33}
!118 = !{!14, !7, i64 72}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = !{!14, !7, i64 568}
!123 = !{!14, !7, i64 576}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33}
!127 = !{!128, !15, i64 8}
!128 = !{!"KernelInfo", !11, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !7, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !7, i64 88, !15, i64 96}
!129 = !{!128, !15, i64 16}
!130 = !{!128, !7, i64 40}
!131 = !{!25, !11, i64 0}
!132 = !{i64 0, i64 2, !61, i64 2, i64 2, !61, i64 4, i64 2, !61}
!133 = !{i64 0, i64 2, !61, i64 2, i64 2, !61}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33, !137, !138}
!137 = !{!"llvm.loop.isvectorized", i32 1}
!138 = !{!"llvm.loop.unroll.runtime.disable"}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = !{i32 0, i32 2}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
