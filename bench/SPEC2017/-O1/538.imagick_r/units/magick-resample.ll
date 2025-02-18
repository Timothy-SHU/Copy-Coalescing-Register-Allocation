; ModuleID = 'magick/resample.c'
source_filename = "magick/resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ResampleFilter = type { ptr, ptr, ptr, i32, i64, i32, i32, i32, i32, i32, i32, %struct._MagickPixelPacket, double, double, double, double, double, double, double, [1024 x double], double, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [18 x i8] c"magick/resample.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"UnableToSetFilteringValue\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Fall back to Interpolated 'Point' filter\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"resample:verbose\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"# Resampling Filter LUT (%d values) for '%s' filter\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%8.*g %.*g\0A\00", align 1
@str.18 = private unnamed_addr constant [59 x i8] c"# Note: values in table are using a squared radius lookup.\00", align 1
@str.19 = private unnamed_addr constant [43 x i8] c"# As such its distribution is not uniform.\00", align 1
@str.21 = private unnamed_addr constant [55 x i8] c"# The X value is the support distance for the Y weight\00", align 1
@str.22 = private unnamed_addr constant [57 x i8] c"# so you can use gnuplot to plot this cylindrical filter\00", align 1
@str.23 = private unnamed_addr constant [44 x i8] c"#    plot [0:2][-.2:1] \22lut.dat\22 with lines\00", align 1
@str.24 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireResampleFilter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 215, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call dereferenceable_or_null(8384) ptr @AcquireMagickMemory(i64 noundef 8384) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #13
  %14 = tail call ptr @__errno_location() #15
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = call ptr @GetExceptionMessage(i32 noundef %15) #13
  %17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 222, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %16) #13
  %18 = call ptr @DestroyString(ptr noundef %16) #13
  call void @CatchException(ptr noundef nonnull %3) #13
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #13
  call void @MagickCoreTerminus() #13
  call void @_exit(i32 noundef 1) #16
  unreachable

20:                                               ; preds = %10
  %21 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 8384) #13
  %22 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 2
  store ptr %1, ptr %22, align 8, !tbaa !54
  %23 = tail call ptr @ReferenceImage(ptr noundef %0) #13
  %24 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !58
  %25 = tail call ptr @AcquireVirtualCacheView(ptr noundef %23, ptr noundef %1) #13
  store ptr %25, ptr %11, align 8, !tbaa !59
  %26 = tail call i32 @IsEventLogging() #13
  %27 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 3
  store i32 %26, ptr %27, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 21
  store i64 2880220587, ptr %28, align 8, !tbaa !61
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %30 = load i64, ptr %29, align 8, !tbaa !62
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !63
  %33 = mul i64 %32, %30
  %34 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 4
  store i64 %33, ptr %34, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 10
  store i32 0, ptr %35, align 4, !tbaa !65
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %37 = load i32, ptr %36, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %39 = load double, ptr %38, align 8, !tbaa !67
  tail call void @SetResampleFilter(ptr noundef nonnull %11, i32 noundef %37, double noundef %39)
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  %41 = load i32, ptr %40, align 8, !tbaa !68
  %42 = load i32, ptr %27, align 8, !tbaa !60
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %20
  %45 = load ptr, ptr %24, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 53
  %47 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1423, ptr noundef nonnull @.str.2, ptr noundef nonnull %46) #13
  br label %48

48:                                               ; preds = %20, %44
  %49 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 5
  store i32 %41, ptr %49, align 8, !tbaa !69
  %50 = tail call i32 @GetImageVirtualPixelMethod(ptr noundef %0) #13
  %51 = load i32, ptr %27, align 8, !tbaa !60
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %24, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 53
  %56 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1462, ptr noundef nonnull @.str.2, ptr noundef nonnull %55) #13
  br label %57

57:                                               ; preds = %53, %48
  %58 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 6
  store i32 %50, ptr %58, align 4, !tbaa !70
  %59 = icmp eq i32 %50, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %11, align 8, !tbaa !59
  %62 = tail call i32 @SetCacheViewVirtualPixelMethod(ptr noundef %61, i32 noundef %50) #13
  br label %63

63:                                               ; preds = %57, %60
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ReferenceImage(ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SetResampleFilter(ptr nocapture noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 9
  store i32 0, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 7
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 26, i32 %1
  store i32 %7, ptr %5, align 8, !tbaa !72
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 1, ptr %4, align 8, !tbaa !71
  br label %75

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = fptrunc double %2 to float
  %14 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = tail call ptr @AcquireResizeFilter(ptr noundef %12, i32 noundef %7, float noundef %13, i32 noundef 1, ptr noundef %15) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %14, align 8, !tbaa !54
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1277, i32 noundef 455, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #13
  store i32 1, ptr %5, align 8, !tbaa !72
  store i32 1, ptr %4, align 8, !tbaa !71
  br label %75

21:                                               ; preds = %10
  %22 = tail call float @GetResizeFilterSupport(ptr noundef nonnull %16) #13
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 20
  store double %23, ptr %24, align 8, !tbaa !73
  %25 = fmul double %23, 3.125000e-02
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %36, %26 ]
  %28 = trunc i64 %27 to i32
  %29 = sitofp i32 %28 to double
  %30 = tail call double @sqrt(double noundef %29) #13
  %31 = fmul double %25, %30
  %32 = fptrunc double %31 to float
  %33 = tail call float @GetResizeFilterWeight(ptr noundef nonnull %16, float noundef %32) #13
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 19, i64 %27
  store double %34, ptr %35, align 8, !tbaa !74
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, 1024
  br i1 %37, label %38, label %26, !llvm.loop !75

38:                                               ; preds = %26
  %39 = tail call ptr @DestroyResizeFilter(ptr noundef nonnull %16) #13
  tail call void @ScaleResampleFilter(ptr noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00)
  %40 = load ptr, ptr %11, align 8, !tbaa !58
  %41 = tail call ptr @GetImageArtifact(ptr noundef %40, ptr noundef nonnull @.str.7) #13
  %42 = tail call i32 @IsMagickTrue(ptr noundef %41) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %46 = load i32, ptr %5, align 8, !tbaa !72
  %47 = zext i32 %46 to i64
  %48 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %47) #13
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 1024, ptr noundef %48)
  %50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %52 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %58 = load double, ptr %24, align 8, !tbaa !73
  %59 = fmul double %58, 3.125000e-02
  br label %60

60:                                               ; preds = %44, %60
  %61 = phi i64 [ 0, %44 ], [ %71, %60 ]
  %62 = tail call i32 @GetMagickPrecision() #13
  %63 = trunc i64 %61 to i32
  %64 = sitofp i32 %63 to double
  %65 = tail call double @sqrt(double noundef %64) #13
  %66 = fmul double %59, %65
  %67 = tail call i32 @GetMagickPrecision() #13
  %68 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 19, i64 %61
  %69 = load double, ptr %68, align 8, !tbaa !74
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %62, double noundef %66, i32 noundef %67, double noundef %69)
  %71 = add nuw nsw i64 %61, 1
  %72 = icmp eq i64 %71, 1024
  br i1 %72, label %73, label %60, !llvm.loop !78

73:                                               ; preds = %60
  %74 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %75

75:                                               ; preds = %38, %73, %18, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetResampleFilterInterpolateMethod(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1423, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 5
  store i32 %1, ptr %12, align 8, !tbaa !69
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetResampleFilterVirtualPixelMethod(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1462, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 6
  store i32 %1, ptr %12, align 4, !tbaa !70
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !59
  %16 = tail call i32 @SetCacheViewVirtualPixelMethod(ptr noundef %15, i32 noundef %1) #13
  br label %17

17:                                               ; preds = %14, %11
  ret i32 1
}

declare i32 @GetImageVirtualPixelMethod(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyResampleFilter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %5, %1
  %11 = load ptr, ptr %0, align 8, !tbaa !59
  %12 = tail call ptr @DestroyCacheView(ptr noundef %11) #13
  store ptr %12, ptr %0, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = tail call ptr @DestroyImage(ptr noundef %14) #13
  store ptr %15, ptr %13, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 21
  store i64 -2880220588, ptr %16, align 8, !tbaa !61
  %17 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #13
  ret ptr %17
}

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ResamplePixelColor(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !71
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = load ptr, ptr %0, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %10, ptr noundef %11, i32 noundef %13, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %15) #13
  br label %557

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !70
  switch i32 %19, label %177 [
    i32 1, label %20
    i32 2, label %20
    i32 8, label %20
    i32 10, label %20
    i32 11, label %20
    i32 12, label %20
    i32 9, label %20
    i32 0, label %50
    i32 4, label %50
    i32 13, label %96
    i32 14, label %110
    i32 3, label %124
  ]

20:                                               ; preds = %17, %17, %17, %17, %17, %17, %17
  %21 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !79
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %170

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  %26 = load double, ptr %25, align 8, !tbaa !80
  %27 = fadd double %26, %1
  %28 = fcmp olt double %27, 0.000000e+00
  br i1 %28, label %170, label %29

29:                                               ; preds = %24
  %30 = fsub double %1, %26
  %31 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !62
  %35 = uitofp i64 %34 to double
  %36 = fadd double %35, -1.000000e+00
  %37 = fcmp ogt double %30, %36
  br i1 %37, label %170, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %40 = load double, ptr %39, align 8, !tbaa !81
  %41 = fadd double %40, %2
  %42 = fcmp olt double %41, 0.000000e+00
  br i1 %42, label %170, label %43

43:                                               ; preds = %38
  %44 = fsub double %2, %40
  %45 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !63
  %47 = uitofp i64 %46 to double
  %48 = fadd double %47, -1.000000e+00
  %49 = fcmp ogt double %44, %48
  br i1 %49, label %170, label %177

50:                                               ; preds = %17, %17
  %51 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  %52 = load double, ptr %51, align 8, !tbaa !80
  %53 = fadd double %52, %1
  %54 = fcmp olt double %53, 0.000000e+00
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %57 = load double, ptr %56, align 8, !tbaa !81
  %58 = fadd double %57, %2
  %59 = fcmp olt double %58, 0.000000e+00
  br i1 %59, label %170, label %60

60:                                               ; preds = %55
  br i1 %54, label %61, label %72

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %63 = load double, ptr %62, align 8, !tbaa !81
  %64 = fsub double %2, %63
  %65 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  %67 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 8
  %68 = load i64, ptr %67, align 8, !tbaa !63
  %69 = uitofp i64 %68 to double
  %70 = fadd double %69, -1.000000e+00
  %71 = fcmp ogt double %64, %70
  br i1 %71, label %170, label %72

72:                                               ; preds = %50, %61, %60
  %73 = fsub double %1, %52
  %74 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !58
  %76 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 7
  %77 = load i64, ptr %76, align 8, !tbaa !62
  %78 = uitofp i64 %77 to double
  %79 = fadd double %78, -1.000000e+00
  %80 = fcmp ogt double %73, %79
  br i1 %80, label %81, label %177

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %83 = load double, ptr %82, align 8, !tbaa !81
  %84 = fadd double %83, %2
  %85 = fcmp olt double %84, 0.000000e+00
  br i1 %85, label %170, label %86

86:                                               ; preds = %81
  br i1 %80, label %87, label %177

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %89 = load double, ptr %88, align 8, !tbaa !81
  %90 = fsub double %2, %89
  %91 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 8
  %92 = load i64, ptr %91, align 8, !tbaa !63
  %93 = uitofp i64 %92 to double
  %94 = fadd double %93, -1.000000e+00
  %95 = fcmp ogt double %90, %94
  br i1 %95, label %170, label %177

96:                                               ; preds = %17
  %97 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %98 = load double, ptr %97, align 8, !tbaa !81
  %99 = fadd double %98, %2
  %100 = fcmp olt double %99, 0.000000e+00
  br i1 %100, label %170, label %101

101:                                              ; preds = %96
  %102 = fsub double %2, %98
  %103 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !58
  %105 = getelementptr inbounds %struct._Image, ptr %104, i64 0, i32 8
  %106 = load i64, ptr %105, align 8, !tbaa !63
  %107 = uitofp i64 %106 to double
  %108 = fadd double %107, -1.000000e+00
  %109 = fcmp ogt double %102, %108
  br i1 %109, label %170, label %177

110:                                              ; preds = %17
  %111 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  %112 = load double, ptr %111, align 8, !tbaa !80
  %113 = fadd double %112, %1
  %114 = fcmp olt double %113, 0.000000e+00
  br i1 %114, label %170, label %115

115:                                              ; preds = %110
  %116 = fsub double %1, %112
  %117 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !58
  %119 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 7
  %120 = load i64, ptr %119, align 8, !tbaa !62
  %121 = uitofp i64 %120 to double
  %122 = fadd double %121, -1.000000e+00
  %123 = fcmp ogt double %116, %122
  br i1 %123, label %170, label %177

124:                                              ; preds = %17
  %125 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  %126 = load double, ptr %125, align 8, !tbaa !80
  %127 = fadd double %126, %1
  %128 = fcmp olt double %127, -3.200000e+01
  br i1 %128, label %129, label %146

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %131 = load double, ptr %130, align 8, !tbaa !81
  %132 = fadd double %131, %2
  %133 = fcmp olt double %132, -3.200000e+01
  br i1 %133, label %170, label %134

134:                                              ; preds = %129
  br i1 %128, label %135, label %146

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %137 = load double, ptr %136, align 8, !tbaa !81
  %138 = fsub double %2, %137
  %139 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !58
  %141 = getelementptr inbounds %struct._Image, ptr %140, i64 0, i32 8
  %142 = load i64, ptr %141, align 8, !tbaa !63
  %143 = uitofp i64 %142 to double
  %144 = fadd double %143, 3.100000e+01
  %145 = fcmp ogt double %138, %144
  br i1 %145, label %170, label %146

146:                                              ; preds = %124, %135, %134
  %147 = fsub double %1, %126
  %148 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !58
  %150 = getelementptr inbounds %struct._Image, ptr %149, i64 0, i32 7
  %151 = load i64, ptr %150, align 8, !tbaa !62
  %152 = uitofp i64 %151 to double
  %153 = fadd double %152, 3.100000e+01
  %154 = fcmp ogt double %147, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %157 = load double, ptr %156, align 8, !tbaa !81
  %158 = fadd double %157, %2
  %159 = fcmp olt double %158, -3.200000e+01
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  br i1 %154, label %161, label %177

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %163 = load double, ptr %162, align 8, !tbaa !81
  %164 = fsub double %2, %163
  %165 = getelementptr inbounds %struct._Image, ptr %149, i64 0, i32 8
  %166 = load i64, ptr %165, align 8, !tbaa !63
  %167 = uitofp i64 %166 to double
  %168 = fadd double %167, 3.100000e+01
  %169 = fcmp ogt double %164, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %129, %135, %155, %161, %110, %115, %96, %101, %55, %61, %81, %87, %20, %24, %29, %38, %43
  %171 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !58
  %173 = load ptr, ptr %0, align 8, !tbaa !59
  %174 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !54
  %176 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %172, ptr noundef %173, i32 noundef 5, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %175) #13
  br label %557

177:                                              ; preds = %146, %72, %17, %161, %160, %115, %101, %87, %86, %43
  %178 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 8
  %179 = load i32, ptr %178, align 4, !tbaa !79
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %307, label %181

181:                                              ; preds = %177
  switch i32 %19, label %196 [
    i32 0, label %182
    i32 4, label %182
    i32 3, label %182
    i32 15, label %182
    i32 16, label %182
    i32 13, label %189
    i32 14, label %189
  ]

182:                                              ; preds = %181, %181, %181, %181, %181
  %183 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !58
  %185 = load ptr, ptr %0, align 8, !tbaa !59
  %186 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !54
  %188 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %184, ptr noundef %185, i32 noundef 1, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %187) #13
  br label %557

189:                                              ; preds = %181, %181
  %190 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !58
  %192 = load ptr, ptr %0, align 8, !tbaa !59
  %193 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !54
  %195 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %191, ptr noundef %192, i32 noundef 5, double noundef -1.000000e+00, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %194) #13
  br label %557

196:                                              ; preds = %181
  %197 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 10
  %198 = load i32, ptr %197, align 4, !tbaa !65
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %305

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !58
  %203 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11
  tail call void @GetMagickPixelPacket(ptr noundef %202, ptr noundef nonnull %203) #13
  store i32 1, ptr %197, align 4, !tbaa !65
  %204 = load ptr, ptr %201, align 8, !tbaa !58
  %205 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !54
  %207 = tail call ptr @ResizeImage(ptr noundef %204, i64 noundef 1, i64 noundef 1, i32 noundef 2, double noundef 1.000000e+00, ptr noundef %206) #13
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %203, i64 56, i1 false), !tbaa.struct !82
  br label %557

210:                                              ; preds = %200
  %211 = getelementptr inbounds %struct._Image, ptr %207, i64 0, i32 58
  %212 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %207, ptr noundef nonnull %211) #13
  %213 = load ptr, ptr %205, align 8, !tbaa !54
  %214 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %212, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %213) #17
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = tail call ptr @DestroyCacheView(ptr noundef %212) #13
  %218 = tail call ptr @DestroyImage(ptr noundef nonnull %207) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %203, i64 56, i1 false), !tbaa.struct !82
  br label %557

219:                                              ; preds = %210
  %220 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %212) #13
  %221 = load ptr, ptr %201, align 8, !tbaa !58
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 0, i32 2
  %223 = load i16, ptr %222, align 2, !tbaa !85
  %224 = uitofp i16 %223 to float
  %225 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11, i32 5
  store float %224, ptr %225, align 8, !tbaa !86
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 0, i32 1
  %227 = load i16, ptr %226, align 2, !tbaa !87
  %228 = uitofp i16 %227 to float
  %229 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11, i32 6
  store float %228, ptr %229, align 4, !tbaa !88
  %230 = load i16, ptr %214, align 2, !tbaa !89
  %231 = uitofp i16 %230 to float
  %232 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11, i32 7
  store float %231, ptr %232, align 8, !tbaa !90
  %233 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 0, i32 3
  %234 = load i16, ptr %233, align 2, !tbaa !91
  %235 = uitofp i16 %234 to float
  %236 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11, i32 8
  store float %235, ptr %236, align 4, !tbaa !92
  %237 = getelementptr inbounds %struct._Image, ptr %221, i64 0, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !93
  %239 = icmp eq i32 %238, 12
  %240 = icmp ne ptr %220, null
  %241 = and i1 %240, %239
  br i1 %241, label %242, label %246

242:                                              ; preds = %219
  %243 = load i16, ptr %220, align 2, !tbaa !94
  %244 = uitofp i16 %243 to float
  %245 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11, i32 9
  store float %244, ptr %245, align 8, !tbaa !95
  br label %246

246:                                              ; preds = %219, %242
  %247 = tail call ptr @DestroyCacheView(ptr noundef %212) #13
  %248 = tail call ptr @DestroyImage(ptr noundef nonnull %207) #13
  %249 = load i32, ptr %18, align 4, !tbaa !70
  %250 = icmp eq i32 %249, 17
  br i1 %250, label %251, label %305

251:                                              ; preds = %246
  %252 = load float, ptr %236, align 4, !tbaa !96
  %253 = fsub float 6.553500e+04, %252
  %254 = fpext float %253 to double
  %255 = fmul double %254, 0x3EF0001000100010
  %256 = load float, ptr %225, align 8, !tbaa !97
  %257 = fpext float %256 to double
  %258 = fmul double %255, %257
  %259 = fptrunc double %258 to float
  store float %259, ptr %225, align 8, !tbaa !97
  %260 = load float, ptr %229, align 4, !tbaa !98
  %261 = fpext float %260 to double
  %262 = fmul double %255, %261
  %263 = fptrunc double %262 to float
  store float %263, ptr %229, align 4, !tbaa !98
  %264 = load float, ptr %232, align 8, !tbaa !99
  %265 = fpext float %264 to double
  %266 = fmul double %255, %265
  %267 = fptrunc double %266 to float
  store float %267, ptr %232, align 8, !tbaa !99
  %268 = load ptr, ptr %201, align 8, !tbaa !58
  %269 = getelementptr inbounds %struct._Image, ptr %268, i64 0, i32 12, i32 3
  %270 = load i16, ptr %269, align 2, !tbaa !100
  %271 = xor i16 %270, -1
  %272 = uitofp i16 %271 to double
  %273 = fmul double %272, 0x3EF0001000100010
  %274 = getelementptr inbounds %struct._Image, ptr %268, i64 0, i32 12, i32 2
  %275 = load i16, ptr %274, align 4, !tbaa !101
  %276 = uitofp i16 %275 to double
  %277 = fpext float %259 to double
  %278 = tail call double @llvm.fmuladd.f64(double %273, double %276, double %277)
  %279 = fptrunc double %278 to float
  store float %279, ptr %225, align 8, !tbaa !97
  %280 = getelementptr inbounds %struct._Image, ptr %268, i64 0, i32 12, i32 1
  %281 = load i16, ptr %280, align 2, !tbaa !102
  %282 = uitofp i16 %281 to double
  %283 = fpext float %263 to double
  %284 = tail call double @llvm.fmuladd.f64(double %273, double %282, double %283)
  %285 = fptrunc double %284 to float
  store float %285, ptr %229, align 4, !tbaa !98
  %286 = getelementptr inbounds %struct._Image, ptr %268, i64 0, i32 12
  %287 = load i16, ptr %286, align 8, !tbaa !103
  %288 = uitofp i16 %287 to double
  %289 = fpext float %267 to double
  %290 = tail call double @llvm.fmuladd.f64(double %273, double %288, double %289)
  %291 = fptrunc double %290 to float
  store float %291, ptr %232, align 8, !tbaa !99
  %292 = uitofp i16 %270 to float
  %293 = fadd float %252, %292
  store float %293, ptr %236, align 4, !tbaa !96
  %294 = fadd double %255, %273
  %295 = fpext float %279 to double
  %296 = fdiv double %295, %294
  %297 = fptrunc double %296 to float
  store float %297, ptr %225, align 8, !tbaa !97
  %298 = fpext float %285 to double
  %299 = fdiv double %298, %294
  %300 = fptrunc double %299 to float
  store float %300, ptr %229, align 4, !tbaa !98
  %301 = fpext float %291 to double
  %302 = fdiv double %301, %294
  %303 = fptrunc double %302 to float
  store float %303, ptr %232, align 8, !tbaa !99
  %304 = fmul float %293, 5.000000e-01
  store float %304, ptr %236, align 4, !tbaa !96
  br label %305

305:                                              ; preds = %251, %246, %196
  %306 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %306, i64 56, i1 false), !tbaa.struct !82
  br label %557

307:                                              ; preds = %177
  %308 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float 0.000000e+00, ptr %308, align 8, !tbaa !90
  %309 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float 0.000000e+00, ptr %309, align 4, !tbaa !88
  %310 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float 0.000000e+00, ptr %310, align 8, !tbaa !86
  %311 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  %312 = load i32, ptr %311, align 8, !tbaa !104
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %307
  %315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float 0.000000e+00, ptr %315, align 4, !tbaa !92
  br label %316

316:                                              ; preds = %314, %307
  %317 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %318 = load i32, ptr %317, align 4, !tbaa !105
  %319 = icmp eq i32 %318, 12
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float 0.000000e+00, ptr %321, align 8, !tbaa !95
  br label %322

322:                                              ; preds = %320, %316
  %323 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %324 = load double, ptr %323, align 8, !tbaa !81
  %325 = fsub double %2, %324
  %326 = tail call double @llvm.ceil.f64(double %325)
  %327 = fptosi double %326 to i64
  %328 = fadd double %324, %2
  %329 = tail call double @llvm.floor.f64(double %328)
  %330 = fptosi double %329 to i64
  %331 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 18
  %332 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 17
  %333 = load double, ptr %332, align 8, !tbaa !106
  %334 = fmul double %333, 2.000000e+00
  %335 = fptosi double %334 to i64
  %336 = add nsw i64 %335, 1
  %337 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 12
  %338 = load double, ptr %337, align 8, !tbaa !107
  %339 = fmul double %338, 2.000000e+00
  %340 = icmp sgt i64 %327, %330
  br i1 %340, label %467, label %341

341:                                              ; preds = %322
  %342 = sitofp i64 %327 to double
  %343 = fsub double %342, %2
  %344 = load double, ptr %331, align 8, !tbaa !108
  %345 = tail call double @llvm.fmuladd.f64(double %343, double %344, double %1)
  %346 = fsub double %345, %333
  %347 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 13
  %348 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 14
  %349 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %350 = icmp slt i64 %335, 0
  %351 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %352 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  br label %353

353:                                              ; preds = %341, %459
  %354 = phi double [ 0.000000e+00, %341 ], [ %462, %459 ]
  %355 = phi double [ 0.000000e+00, %341 ], [ %461, %459 ]
  %356 = phi double [ %346, %341 ], [ %362, %459 ]
  %357 = phi i64 [ 0, %341 ], [ %460, %459 ]
  %358 = phi i64 [ %327, %341 ], [ %463, %459 ]
  %359 = tail call double @llvm.ceil.f64(double %356)
  %360 = fptosi double %359 to i64
  %361 = load double, ptr %331, align 8, !tbaa !108
  %362 = fadd double %356, %361
  %363 = load double, ptr %337, align 8, !tbaa !107
  %364 = load double, ptr %347, align 8, !tbaa !109
  %365 = load double, ptr %348, align 8, !tbaa !110
  %366 = load ptr, ptr %0, align 8, !tbaa !59
  %367 = load ptr, ptr %349, align 8, !tbaa !54
  %368 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %366, i64 noundef %360, i64 noundef %358, i64 noundef %336, i64 noundef 1, ptr noundef %367) #17
  %369 = icmp eq ptr %368, null
  br i1 %369, label %557, label %370

370:                                              ; preds = %353
  %371 = load ptr, ptr %0, align 8, !tbaa !59
  %372 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %371) #13
  br i1 %350, label %459, label %373

373:                                              ; preds = %370
  %374 = sitofp i64 %360 to double
  %375 = fsub double %374, %1
  %376 = sitofp i64 %358 to double
  %377 = fsub double %376, %2
  %378 = fmul double %377, %364
  %379 = tail call double @llvm.fmuladd.f64(double %363, double %375, double %378)
  %380 = fmul double %377, %365
  %381 = fmul double %377, %380
  %382 = tail call double @llvm.fmuladd.f64(double %379, double %375, double %381)
  %383 = tail call double @llvm.fmuladd.f64(double %375, double 2.000000e+00, double 1.000000e+00)
  %384 = tail call double @llvm.fmuladd.f64(double %363, double %383, double %378)
  br label %385

385:                                              ; preds = %373, %449
  %386 = phi ptr [ %454, %449 ], [ %372, %373 ]
  %387 = phi ptr [ %453, %449 ], [ %368, %373 ]
  %388 = phi double [ %452, %449 ], [ %354, %373 ]
  %389 = phi double [ %451, %449 ], [ %355, %373 ]
  %390 = phi double [ %456, %449 ], [ %384, %373 ]
  %391 = phi double [ %455, %449 ], [ %382, %373 ]
  %392 = phi i64 [ %457, %449 ], [ 0, %373 ]
  %393 = phi i64 [ %450, %449 ], [ %357, %373 ]
  %394 = fcmp olt double %391, 1.024000e+03
  br i1 %394, label %395, label %449

395:                                              ; preds = %385
  %396 = fptosi double %391 to i32
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 19, i64 %397
  %399 = load double, ptr %398, align 8, !tbaa !74
  %400 = getelementptr inbounds %struct._PixelPacket, ptr %387, i64 0, i32 3
  %401 = load i16, ptr %400, align 2, !tbaa !91
  %402 = uitofp i16 %401 to double
  %403 = load float, ptr %351, align 4, !tbaa !92
  %404 = fpext float %403 to double
  %405 = tail call double @llvm.fmuladd.f64(double %399, double %402, double %404)
  %406 = fptrunc double %405 to float
  store float %406, ptr %351, align 4, !tbaa !92
  %407 = fadd double %388, %399
  %408 = load i32, ptr %311, align 8, !tbaa !104
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %415, label %410

410:                                              ; preds = %395
  %411 = xor i16 %401, -1
  %412 = uitofp i16 %411 to double
  %413 = fmul double %412, 0x3EF0001000100010
  %414 = fmul double %399, %413
  br label %415

415:                                              ; preds = %410, %395
  %416 = phi double [ %414, %410 ], [ %399, %395 ]
  %417 = getelementptr inbounds %struct._PixelPacket, ptr %387, i64 0, i32 2
  %418 = load i16, ptr %417, align 2, !tbaa !85
  %419 = uitofp i16 %418 to double
  %420 = load float, ptr %310, align 8, !tbaa !86
  %421 = fpext float %420 to double
  %422 = tail call double @llvm.fmuladd.f64(double %416, double %419, double %421)
  %423 = fptrunc double %422 to float
  store float %423, ptr %310, align 8, !tbaa !86
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %387, i64 0, i32 1
  %425 = load i16, ptr %424, align 2, !tbaa !87
  %426 = uitofp i16 %425 to double
  %427 = load float, ptr %309, align 4, !tbaa !88
  %428 = fpext float %427 to double
  %429 = tail call double @llvm.fmuladd.f64(double %416, double %426, double %428)
  %430 = fptrunc double %429 to float
  store float %430, ptr %309, align 4, !tbaa !88
  %431 = load i16, ptr %387, align 2, !tbaa !89
  %432 = uitofp i16 %431 to double
  %433 = load float, ptr %308, align 8, !tbaa !90
  %434 = fpext float %433 to double
  %435 = tail call double @llvm.fmuladd.f64(double %416, double %432, double %434)
  %436 = fptrunc double %435 to float
  store float %436, ptr %308, align 8, !tbaa !90
  %437 = load i32, ptr %317, align 4, !tbaa !105
  %438 = icmp eq i32 %437, 12
  br i1 %438, label %439, label %446

439:                                              ; preds = %415
  %440 = load i16, ptr %386, align 2, !tbaa !94
  %441 = uitofp i16 %440 to double
  %442 = load float, ptr %352, align 8, !tbaa !95
  %443 = fpext float %442 to double
  %444 = tail call double @llvm.fmuladd.f64(double %416, double %441, double %443)
  %445 = fptrunc double %444 to float
  store float %445, ptr %352, align 8, !tbaa !95
  br label %446

446:                                              ; preds = %439, %415
  %447 = fadd double %389, %416
  %448 = add nsw i64 %393, 1
  br label %449

449:                                              ; preds = %446, %385
  %450 = phi i64 [ %448, %446 ], [ %393, %385 ]
  %451 = phi double [ %447, %446 ], [ %389, %385 ]
  %452 = phi double [ %407, %446 ], [ %388, %385 ]
  %453 = getelementptr inbounds %struct._PixelPacket, ptr %387, i64 1
  %454 = getelementptr inbounds i16, ptr %386, i64 1
  %455 = fadd double %391, %390
  %456 = fadd double %339, %390
  %457 = add nuw i64 %392, 1
  %458 = icmp eq i64 %392, %335
  br i1 %458, label %459, label %385, !llvm.loop !111

459:                                              ; preds = %449, %370
  %460 = phi i64 [ %357, %370 ], [ %450, %449 ]
  %461 = phi double [ %355, %370 ], [ %451, %449 ]
  %462 = phi double [ %354, %370 ], [ %452, %449 ]
  %463 = add i64 %358, 1
  %464 = icmp eq i64 %358, %330
  br i1 %464, label %465, label %353, !llvm.loop !112

465:                                              ; preds = %459
  %466 = icmp eq i64 %460, 0
  br label %467

467:                                              ; preds = %465, %322
  %468 = phi i1 [ true, %322 ], [ %466, %465 ]
  %469 = phi double [ 0.000000e+00, %322 ], [ %461, %465 ]
  %470 = phi double [ 0.000000e+00, %322 ], [ %462, %465 ]
  %471 = fcmp ole double %470, 1.000000e-15
  %472 = select i1 %468, i1 true, i1 %471
  %473 = fcmp ole double %469, 1.000000e-15
  %474 = select i1 %472, i1 true, i1 %473
  br i1 %474, label %475, label %484

475:                                              ; preds = %467
  %476 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !58
  %478 = load ptr, ptr %0, align 8, !tbaa !59
  %479 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 5
  %480 = load i32, ptr %479, align 8, !tbaa !69
  %481 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %482 = load ptr, ptr %481, align 8, !tbaa !54
  %483 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %477, ptr noundef %478, i32 noundef %480, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %482) #13
  br label %557

484:                                              ; preds = %467
  %485 = fdiv double 1.000000e+00, %470
  %486 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %487 = load float, ptr %486, align 4, !tbaa !92
  %488 = fpext float %487 to double
  %489 = fmul double %485, %488
  %490 = fptrunc double %489 to float
  %491 = fcmp ugt float %490, 0.000000e+00
  br i1 %491, label %492, label %498

492:                                              ; preds = %484
  %493 = fcmp ult float %490, 6.553500e+04
  br i1 %493, label %494, label %498

494:                                              ; preds = %492
  %495 = fadd float %490, 5.000000e-01
  %496 = fptoui float %495 to i16
  %497 = uitofp i16 %496 to float
  br label %498

498:                                              ; preds = %484, %492, %494
  %499 = phi float [ %497, %494 ], [ 0.000000e+00, %484 ], [ 6.553500e+04, %492 ]
  store float %499, ptr %486, align 4, !tbaa !92
  %500 = fdiv double 1.000000e+00, %469
  %501 = load float, ptr %310, align 8, !tbaa !86
  %502 = fpext float %501 to double
  %503 = fmul double %500, %502
  %504 = fptrunc double %503 to float
  %505 = fcmp ugt float %504, 0.000000e+00
  br i1 %505, label %506, label %512

506:                                              ; preds = %498
  %507 = fcmp ult float %504, 6.553500e+04
  br i1 %507, label %508, label %512

508:                                              ; preds = %506
  %509 = fadd float %504, 5.000000e-01
  %510 = fptoui float %509 to i16
  %511 = uitofp i16 %510 to float
  br label %512

512:                                              ; preds = %498, %506, %508
  %513 = phi float [ %511, %508 ], [ 0.000000e+00, %498 ], [ 6.553500e+04, %506 ]
  store float %513, ptr %310, align 8, !tbaa !86
  %514 = load float, ptr %309, align 4, !tbaa !88
  %515 = fpext float %514 to double
  %516 = fmul double %500, %515
  %517 = fptrunc double %516 to float
  %518 = fcmp ugt float %517, 0.000000e+00
  br i1 %518, label %519, label %525

519:                                              ; preds = %512
  %520 = fcmp ult float %517, 6.553500e+04
  br i1 %520, label %521, label %525

521:                                              ; preds = %519
  %522 = fadd float %517, 5.000000e-01
  %523 = fptoui float %522 to i16
  %524 = uitofp i16 %523 to float
  br label %525

525:                                              ; preds = %512, %519, %521
  %526 = phi float [ %524, %521 ], [ 0.000000e+00, %512 ], [ 6.553500e+04, %519 ]
  store float %526, ptr %309, align 4, !tbaa !88
  %527 = load float, ptr %308, align 8, !tbaa !90
  %528 = fpext float %527 to double
  %529 = fmul double %500, %528
  %530 = fptrunc double %529 to float
  %531 = fcmp ugt float %530, 0.000000e+00
  br i1 %531, label %532, label %538

532:                                              ; preds = %525
  %533 = fcmp ult float %530, 6.553500e+04
  br i1 %533, label %534, label %538

534:                                              ; preds = %532
  %535 = fadd float %530, 5.000000e-01
  %536 = fptoui float %535 to i16
  %537 = uitofp i16 %536 to float
  br label %538

538:                                              ; preds = %525, %532, %534
  %539 = phi float [ %537, %534 ], [ 0.000000e+00, %525 ], [ 6.553500e+04, %532 ]
  store float %539, ptr %308, align 8, !tbaa !90
  %540 = load i32, ptr %317, align 4, !tbaa !105
  %541 = icmp eq i32 %540, 12
  br i1 %541, label %542, label %557

542:                                              ; preds = %538
  %543 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %544 = load float, ptr %543, align 8, !tbaa !95
  %545 = fpext float %544 to double
  %546 = fmul double %500, %545
  %547 = fptrunc double %546 to float
  %548 = fcmp ugt float %547, 0.000000e+00
  br i1 %548, label %549, label %555

549:                                              ; preds = %542
  %550 = fcmp ult float %547, 6.553500e+04
  br i1 %550, label %551, label %555

551:                                              ; preds = %549
  %552 = fadd float %547, 5.000000e-01
  %553 = fptoui float %552 to i16
  %554 = uitofp i16 %553 to float
  br label %555

555:                                              ; preds = %542, %549, %551
  %556 = phi float [ %554, %551 ], [ 0.000000e+00, %542 ], [ 6.553500e+04, %549 ]
  store float %556, ptr %543, align 8, !tbaa !95
  br label %557

557:                                              ; preds = %353, %209, %216, %538, %555, %182, %189, %305, %475, %170, %8
  %558 = phi i32 [ %16, %8 ], [ %176, %170 ], [ %483, %475 ], [ 1, %305 ], [ %195, %189 ], [ %188, %182 ], [ 1, %555 ], [ 1, %538 ], [ 1, %216 ], [ 1, %209 ], [ 0, %353 ]
  ret i32 %558
}

declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @ScaleResampleFilter(ptr nocapture noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #9 {
  %6 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 8
  store i32 0, ptr %6, align 4, !tbaa !79
  %7 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !72
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %117, label %10

10:                                               ; preds = %5
  %11 = fmul double %1, %1
  %12 = fmul double %2, %2
  %13 = fmul double %3, %3
  %14 = fmul double %4, %4
  %15 = fadd double %11, %12
  %16 = fmul double %2, %4
  %17 = tail call double @llvm.fmuladd.f64(double %1, double %3, double %16)
  %18 = fadd double %13, %14
  %19 = fneg double %2
  %20 = fmul double %19, %3
  %21 = tail call double @llvm.fmuladd.f64(double %1, double %4, double %20)
  %22 = fadd double %21, %21
  %23 = fadd double %15, %18
  %24 = fadd double %22, %23
  %25 = fsub double %23, %22
  %26 = fmul double %24, %25
  %27 = fcmp ogt double %26, 0.000000e+00
  %28 = select i1 %27, double %26, double 0.000000e+00
  %29 = tail call double @sqrt(double noundef %28) #13
  %30 = fadd double %23, %29
  %31 = fmul double %30, 5.000000e-01
  %32 = fsub double %23, %29
  %33 = fmul double %32, 5.000000e-01
  %34 = fsub double %31, %15
  %35 = fsub double %31, %18
  %36 = fmul double %34, %34
  %37 = fmul double %35, %35
  %38 = fcmp oge double %36, %37
  %39 = select i1 %38, double %17, double %35
  %40 = select i1 %38, double %34, double %17
  %41 = fmul double %40, %40
  %42 = tail call double @llvm.fmuladd.f64(double %39, double %39, double %41)
  %43 = tail call double @sqrt(double noundef %42) #13
  %44 = fcmp ugt double %31, 1.000000e+00
  br i1 %44, label %45, label %47

45:                                               ; preds = %10
  %46 = tail call double @sqrt(double noundef %31) #13
  br label %47

47:                                               ; preds = %45, %10
  %48 = phi double [ %46, %45 ], [ 1.000000e+00, %10 ]
  %49 = fcmp ugt double %33, 1.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call double @sqrt(double noundef %33) #13
  br label %52

52:                                               ; preds = %47, %50
  %53 = phi double [ %51, %50 ], [ 1.000000e+00, %47 ]
  %54 = fcmp ogt double %43, 0.000000e+00
  %55 = fdiv double %40, %43
  %56 = select i1 %54, double %55, double 0.000000e+00
  %57 = fdiv double %39, %43
  %58 = select i1 %54, double %57, double 1.000000e+00
  %59 = fneg double %56
  %60 = fmul double %58, %48
  %61 = fmul double %56, %48
  %62 = fmul double %53, %59
  %63 = fmul double %58, %53
  %64 = fmul double %63, %63
  %65 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %64)
  %66 = fmul double %62, %63
  %67 = tail call double @llvm.fmuladd.f64(double %60, double %61, double %66)
  %68 = fmul double %67, -2.000000e+00
  %69 = fmul double %62, %62
  %70 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %69)
  %71 = fmul double %65, 4.000000e+00
  %72 = fneg double %68
  %73 = fmul double %68, %72
  %74 = tail call double @llvm.fmuladd.f64(double %71, double %70, double %73)
  %75 = fcmp ogt double %74, 0x7FEFFFFFFFFFFFFF
  br i1 %75, label %76, label %77

76:                                               ; preds = %52
  store i32 1, ptr %6, align 4, !tbaa !79
  br label %117

77:                                               ; preds = %52
  %78 = fmul double %48, %53
  %79 = fmul double %78, %78
  %80 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 20
  %81 = load double, ptr %80, align 8, !tbaa !73
  %82 = fmul double %79, %81
  %83 = fmul double %81, %82
  %84 = fmul double %70, %83
  %85 = fmul double %68, -2.500000e-01
  %86 = fmul double %68, %85
  %87 = tail call double @llvm.fmuladd.f64(double %65, double %70, double %86)
  %88 = fdiv double %84, %87
  %89 = tail call double @sqrt(double noundef %88) #13
  %90 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  store double %89, ptr %90, align 8, !tbaa !80
  %91 = fmul double %65, %83
  %92 = fdiv double %91, %87
  %93 = tail call double @sqrt(double noundef %92) #13
  %94 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  store double %93, ptr %94, align 8, !tbaa !81
  %95 = fdiv double %83, %65
  %96 = tail call double @sqrt(double noundef %95) #13
  %97 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 17
  store double %96, ptr %97, align 8, !tbaa !106
  %98 = fmul double %65, 2.000000e+00
  %99 = fdiv double %72, %98
  %100 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 18
  store double %99, ptr %100, align 8, !tbaa !108
  %101 = load double, ptr %94, align 8, !tbaa !81
  %102 = fmul double %96, %101
  %103 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 4
  %104 = load i64, ptr %103, align 8, !tbaa !64
  %105 = sitofp i64 %104 to double
  %106 = fmul double %105, 4.000000e+00
  %107 = fcmp ogt double %102, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %77
  store i32 1, ptr %6, align 4, !tbaa !79
  br label %117

109:                                              ; preds = %77
  %110 = fdiv double 1.024000e+03, %83
  %111 = fmul double %65, %110
  %112 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 12
  store double %111, ptr %112, align 8, !tbaa !107
  %113 = fmul double %68, %110
  %114 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 13
  store double %113, ptr %114, align 8, !tbaa !109
  %115 = fmul double %70, %110
  %116 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 14
  store double %115, ptr %116, align 8, !tbaa !110
  br label %117

117:                                              ; preds = %5, %109, %108, %76
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #10

declare ptr @AcquireResizeFilter(ptr noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @GetResizeFilterSupport(ptr noundef) local_unnamed_addr #2

declare float @GetResizeFilterWeight(ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @DestroyResizeFilter(ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GetMagickPrecision() local_unnamed_addr #2

declare i32 @SetCacheViewVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { hot nounwind }

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
!34 = !{!35, !36, i64 12976}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!36, !36, i64 0}
!54 = !{!55, !40, i64 16}
!55 = !{!"_ResampleFilter", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !56, i64 64, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !37, i64 176, !43, i64 8368, !39, i64 8376}
!56 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48}
!57 = !{!"float", !37, i64 0}
!58 = !{!55, !40, i64 8}
!59 = !{!55, !40, i64 0}
!60 = !{!55, !36, i64 24}
!61 = !{!55, !39, i64 8376}
!62 = !{!35, !39, i64 40}
!63 = !{!35, !39, i64 48}
!64 = !{!55, !39, i64 32}
!65 = !{!55, !36, i64 60}
!66 = !{!35, !36, i64 400}
!67 = !{!35, !43, i64 384}
!68 = !{!35, !36, i64 13112}
!69 = !{!55, !36, i64 40}
!70 = !{!55, !36, i64 44}
!71 = !{!55, !36, i64 56}
!72 = !{!55, !36, i64 48}
!73 = !{!55, !43, i64 8368}
!74 = !{!43, !43, i64 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !76, !77}
!79 = !{!55, !36, i64 52}
!80 = !{!55, !43, i64 152}
!81 = !{!55, !43, i64 144}
!82 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 16, i64 8, !74, i64 24, i64 8, !83, i64 32, i64 4, !84, i64 36, i64 4, !84, i64 40, i64 4, !84, i64 44, i64 4, !84, i64 48, i64 4, !84}
!83 = !{!39, !39, i64 0}
!84 = !{!57, !57, i64 0}
!85 = !{!41, !42, i64 4}
!86 = !{!56, !57, i64 32}
!87 = !{!41, !42, i64 2}
!88 = !{!56, !57, i64 36}
!89 = !{!41, !42, i64 0}
!90 = !{!56, !57, i64 40}
!91 = !{!41, !42, i64 6}
!92 = !{!56, !57, i64 44}
!93 = !{!35, !36, i64 4}
!94 = !{!42, !42, i64 0}
!95 = !{!56, !57, i64 48}
!96 = !{!55, !57, i64 108}
!97 = !{!55, !57, i64 96}
!98 = !{!55, !57, i64 100}
!99 = !{!55, !57, i64 104}
!100 = !{!35, !42, i64 86}
!101 = !{!35, !42, i64 84}
!102 = !{!35, !42, i64 82}
!103 = !{!35, !42, i64 80}
!104 = !{!56, !36, i64 8}
!105 = !{!56, !36, i64 4}
!106 = !{!55, !43, i64 160}
!107 = !{!55, !43, i64 120}
!108 = !{!55, !43, i64 168}
!109 = !{!55, !43, i64 128}
!110 = !{!55, !43, i64 136}
!111 = distinct !{!111, !76, !77}
!112 = distinct !{!112, !76, !77}
