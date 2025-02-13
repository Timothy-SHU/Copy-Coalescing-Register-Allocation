; ModuleID = 'magick/resample.c'
source_filename = "magick/resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"resample:verbose\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"# Resampling Filter LUT (%d values) for '%s' filter\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%8.*g %.*g\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 22, ptr @0 }, align 8
@str.18 = private unnamed_addr constant [59 x i8] c"# Note: values in table are using a squared radius lookup.\00", align 1
@str.19 = private unnamed_addr constant [43 x i8] c"# As such its distribution is not uniform.\00", align 1
@str.21 = private unnamed_addr constant [55 x i8] c"# The X value is the support distance for the Y weight\00", align 1
@str.22 = private unnamed_addr constant [57 x i8] c"# so you can use gnuplot to plot this cylindrical filter\00", align 1
@str.23 = private unnamed_addr constant [44 x i8] c"#    plot [0:2][-.2:1] \22lut.dat\22 with lines\00", align 1
@str.24 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireResampleFilter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 215, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #19
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call dereferenceable_or_null(8384) ptr @AcquireMagickMemory(i64 noundef 8384) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @GetExceptionInfo(ptr noundef nonnull %3) #19
  %14 = tail call ptr @__errno_location() #21
  %15 = load i32, ptr %14, align 4, !tbaa !25
  %16 = call ptr @GetExceptionMessage(i32 noundef %15) #19
  %17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 222, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %16) #19
  %18 = call ptr @DestroyString(ptr noundef %16) #19
  call void @CatchException(ptr noundef nonnull %3) #19
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #22
  unreachable

20:                                               ; preds = %10
  %21 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 8384) #19
  %22 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 2
  store ptr %1, ptr %22, align 8, !tbaa !26
  %23 = tail call ptr @ReferenceImage(ptr noundef nonnull %0) #19
  %24 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !30
  %25 = tail call ptr @AcquireVirtualCacheView(ptr noundef %23, ptr noundef %1) #19
  store ptr %25, ptr %11, align 8, !tbaa !31
  %26 = tail call i32 @IsEventLogging() #19
  %27 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 3
  store i32 %26, ptr %27, align 8, !tbaa !32
  %28 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 21
  store i64 2880220587, ptr %28, align 8, !tbaa !33
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %30 = load i64, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !35
  %33 = mul i64 %32, %30
  %34 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 4
  store i64 %33, ptr %34, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct._ResampleFilter, ptr %11, i64 0, i32 10
  store i32 0, ptr %35, align 4, !tbaa !37
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %37 = load i32, ptr %36, align 8, !tbaa !38
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %39 = load double, ptr %38, align 8, !tbaa !39
  tail call void @SetResampleFilter(ptr noundef nonnull %11, i32 noundef %37, double noundef %39) #23
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  %41 = load i32, ptr %40, align 8, !tbaa !40
  %42 = tail call i32 @SetResampleFilterInterpolateMethod(ptr noundef nonnull %11, i32 noundef %41) #23
  %43 = tail call i32 @GetImageVirtualPixelMethod(ptr noundef nonnull %0) #19
  %44 = tail call i32 @SetResampleFilterVirtualPixelMethod(ptr noundef nonnull %11, i32 noundef %43) #23
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReferenceImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetResampleFilter(ptr nocapture noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %5 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 9
  store i32 0, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 7
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 26, i32 %1
  store i32 %8, ptr %6, align 8, !tbaa !42
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, ptr %5, align 8, !tbaa !41
  br label %81

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = fptrunc double %2 to float
  %15 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = tail call ptr @AcquireResizeFilter(ptr noundef %13, i32 noundef %8, float noundef %14, i32 noundef 1, ptr noundef %16) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load ptr, ptr %15, align 8, !tbaa !26
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1277, i32 noundef 455, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #19
  store i32 1, ptr %6, align 8, !tbaa !42
  store i32 1, ptr %5, align 8, !tbaa !41
  br label %81

22:                                               ; preds = %11
  %23 = tail call float @GetResizeFilterSupport(ptr noundef nonnull %17) #19
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 20
  store double %24, ptr %25, align 8, !tbaa !43
  %26 = fmul double %24, 3.125000e-02
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i64 [ 0, %22 ], [ %37, %27 ]
  %29 = trunc i64 %28 to i32
  %30 = sitofp i32 %29 to double
  %31 = tail call double @sqrt(double noundef %30) #19
  %32 = fmul double %26, %31
  %33 = fptrunc double %32 to float
  %34 = tail call float @GetResizeFilterWeight(ptr noundef nonnull %17, float noundef %33) #19
  %35 = fpext float %34 to double
  %36 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 19, i64 %28
  store double %35, ptr %36, align 8, !tbaa !44
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, 1024
  br i1 %38, label %39, label %27, !llvm.loop !45

39:                                               ; preds = %27
  %40 = tail call ptr @DestroyResizeFilter(ptr noundef nonnull %17) #19
  tail call void @ScaleResampleFilter(ptr noundef nonnull %0, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #23
  %41 = tail call i32 @__kmpc_single(ptr nonnull @1, i32 %4)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %80, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %12, align 8, !tbaa !30
  %45 = tail call ptr @GetImageArtifact(ptr noundef %44, ptr noundef nonnull @.str.7) #19
  %46 = tail call i32 @IsMagickTrue(ptr noundef %45) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %43
  %49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %50 = load i32, ptr %6, align 8, !tbaa !42
  %51 = zext i32 %50 to i64
  %52 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %51) #19
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 1024, ptr noundef %52) #23
  %54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  %60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %62 = load double, ptr %25, align 8, !tbaa !43
  %63 = fmul double %62, 3.125000e-02
  br label %64

64:                                               ; preds = %48, %64
  %65 = phi i64 [ 0, %48 ], [ %75, %64 ]
  %66 = tail call i32 @GetMagickPrecision() #19
  %67 = trunc i64 %65 to i32
  %68 = sitofp i32 %67 to double
  %69 = tail call double @sqrt(double noundef %68) #19
  %70 = fmul double %63, %69
  %71 = tail call i32 @GetMagickPrecision() #19
  %72 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 19, i64 %65
  %73 = load double, ptr %72, align 8, !tbaa !44
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %66, double noundef %70, i32 noundef %71, double noundef %73) #23
  %75 = add nuw nsw i64 %65, 1
  %76 = icmp eq i64 %75, 1024
  br i1 %76, label %77, label %64, !llvm.loop !47

77:                                               ; preds = %64
  %78 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %79

79:                                               ; preds = %77, %43
  tail call void @__kmpc_end_single(ptr nonnull @1, i32 %4)
  br label %80

80:                                               ; preds = %79, %39
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %4)
  br label %81

81:                                               ; preds = %80, %19, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetResampleFilterInterpolateMethod(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1423, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #19
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 5
  store i32 %1, ptr %12, align 8, !tbaa !48
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetResampleFilterVirtualPixelMethod(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1462, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #19
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 6
  store i32 %1, ptr %12, align 4, !tbaa !49
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !31
  %16 = tail call i32 @SetCacheViewVirtualPixelMethod(ptr noundef %15, i32 noundef %1) #19
  br label %17

17:                                               ; preds = %14, %11
  ret i32 1
}

; Function Attrs: optsize
declare i32 @GetImageVirtualPixelMethod(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyResampleFilter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #19
  br label %10

10:                                               ; preds = %5, %1
  %11 = load ptr, ptr %0, align 8, !tbaa !31
  %12 = tail call ptr @DestroyCacheView(ptr noundef %11) #19
  store ptr %12, ptr %0, align 8, !tbaa !31
  %13 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = tail call ptr @DestroyImage(ptr noundef %14) #19
  store ptr %15, ptr %13, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 21
  store i64 -2880220588, ptr %16, align 8, !tbaa !33
  %17 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #19
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ResamplePixelColor(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = load ptr, ptr %0, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %10, ptr noundef %11, i32 noundef %13, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %15) #19
  br label %488

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !49
  switch i32 %19, label %169 [
    i32 1, label %20
    i32 2, label %20
    i32 8, label %20
    i32 10, label %20
    i32 11, label %20
    i32 12, label %20
    i32 9, label %20
    i32 0, label %50
    i32 4, label %50
    i32 13, label %92
    i32 14, label %106
    i32 3, label %120
  ]

20:                                               ; preds = %17, %17, %17, %17, %17, %17, %17
  %21 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %162

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  %26 = load double, ptr %25, align 8, !tbaa !51
  %27 = fadd double %26, %1
  %28 = fcmp olt double %27, 0.000000e+00
  br i1 %28, label %162, label %29

29:                                               ; preds = %24
  %30 = fsub double %1, %26
  %31 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !34
  %35 = uitofp i64 %34 to double
  %36 = fadd double %35, -1.000000e+00
  %37 = fcmp ogt double %30, %36
  br i1 %37, label %162, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %40 = load double, ptr %39, align 8, !tbaa !52
  %41 = fadd double %40, %2
  %42 = fcmp olt double %41, 0.000000e+00
  br i1 %42, label %162, label %43

43:                                               ; preds = %38
  %44 = fsub double %2, %40
  %45 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !35
  %47 = uitofp i64 %46 to double
  %48 = fadd double %47, -1.000000e+00
  %49 = fcmp ogt double %44, %48
  br i1 %49, label %162, label %169

50:                                               ; preds = %17, %17
  %51 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  %52 = load double, ptr %51, align 8, !tbaa !51
  %53 = fadd double %52, %1
  %54 = fcmp olt double %53, 0.000000e+00
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !30
  br label %72

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %60 = load double, ptr %59, align 8, !tbaa !52
  %61 = fadd double %60, %2
  %62 = fcmp olt double %61, 0.000000e+00
  br i1 %62, label %162, label %63

63:                                               ; preds = %58
  %64 = fsub double %2, %60
  %65 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !30
  %67 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 8
  %68 = load i64, ptr %67, align 8, !tbaa !35
  %69 = uitofp i64 %68 to double
  %70 = fadd double %69, -1.000000e+00
  %71 = fcmp ogt double %64, %70
  br i1 %71, label %162, label %72

72:                                               ; preds = %55, %63
  %73 = phi ptr [ %57, %55 ], [ %66, %63 ]
  %74 = fsub double %1, %52
  %75 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !34
  %77 = uitofp i64 %76 to double
  %78 = fadd double %77, -1.000000e+00
  %79 = fcmp ogt double %74, %78
  br i1 %79, label %80, label %169

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %82 = load double, ptr %81, align 8, !tbaa !52
  %83 = fadd double %82, %2
  %84 = fcmp olt double %83, 0.000000e+00
  br i1 %84, label %162, label %85

85:                                               ; preds = %80
  %86 = fsub double %2, %82
  %87 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 8
  %88 = load i64, ptr %87, align 8, !tbaa !35
  %89 = uitofp i64 %88 to double
  %90 = fadd double %89, -1.000000e+00
  %91 = fcmp ogt double %86, %90
  br i1 %91, label %162, label %169

92:                                               ; preds = %17
  %93 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %94 = load double, ptr %93, align 8, !tbaa !52
  %95 = fadd double %94, %2
  %96 = fcmp olt double %95, 0.000000e+00
  br i1 %96, label %162, label %97

97:                                               ; preds = %92
  %98 = fsub double %2, %94
  %99 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !30
  %101 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 8
  %102 = load i64, ptr %101, align 8, !tbaa !35
  %103 = uitofp i64 %102 to double
  %104 = fadd double %103, -1.000000e+00
  %105 = fcmp ogt double %98, %104
  br i1 %105, label %162, label %169

106:                                              ; preds = %17
  %107 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  %108 = load double, ptr %107, align 8, !tbaa !51
  %109 = fadd double %108, %1
  %110 = fcmp olt double %109, 0.000000e+00
  br i1 %110, label %162, label %111

111:                                              ; preds = %106
  %112 = fsub double %1, %108
  %113 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !30
  %115 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 7
  %116 = load i64, ptr %115, align 8, !tbaa !34
  %117 = uitofp i64 %116 to double
  %118 = fadd double %117, -1.000000e+00
  %119 = fcmp ogt double %112, %118
  br i1 %119, label %162, label %169

120:                                              ; preds = %17
  %121 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  %122 = load double, ptr %121, align 8, !tbaa !51
  %123 = fadd double %122, %1
  %124 = fcmp olt double %123, -3.200000e+01
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !30
  br label %142

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %130 = load double, ptr %129, align 8, !tbaa !52
  %131 = fadd double %130, %2
  %132 = fcmp olt double %131, -3.200000e+01
  br i1 %132, label %162, label %133

133:                                              ; preds = %128
  %134 = fsub double %2, %130
  %135 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !30
  %137 = getelementptr inbounds %struct._Image, ptr %136, i64 0, i32 8
  %138 = load i64, ptr %137, align 8, !tbaa !35
  %139 = uitofp i64 %138 to double
  %140 = fadd double %139, 3.100000e+01
  %141 = fcmp ogt double %134, %140
  br i1 %141, label %162, label %142

142:                                              ; preds = %125, %133
  %143 = phi ptr [ %127, %125 ], [ %136, %133 ]
  %144 = fsub double %1, %122
  %145 = getelementptr inbounds %struct._Image, ptr %143, i64 0, i32 7
  %146 = load i64, ptr %145, align 8, !tbaa !34
  %147 = uitofp i64 %146 to double
  %148 = fadd double %147, 3.100000e+01
  %149 = fcmp ogt double %144, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %152 = load double, ptr %151, align 8, !tbaa !52
  %153 = fadd double %152, %2
  %154 = fcmp olt double %153, -3.200000e+01
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = fsub double %2, %152
  %157 = getelementptr inbounds %struct._Image, ptr %143, i64 0, i32 8
  %158 = load i64, ptr %157, align 8, !tbaa !35
  %159 = uitofp i64 %158 to double
  %160 = fadd double %159, 3.100000e+01
  %161 = fcmp ogt double %156, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %128, %133, %150, %155, %106, %111, %92, %97, %58, %63, %80, %85, %20, %24, %29, %38, %43
  %163 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !30
  %165 = load ptr, ptr %0, align 8, !tbaa !31
  %166 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !26
  %168 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %164, ptr noundef %165, i32 noundef 5, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %167) #19
  br label %488

169:                                              ; preds = %142, %72, %17, %155, %111, %97, %85, %43
  %170 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 8
  %171 = load i32, ptr %170, align 4, !tbaa !50
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %272, label %173

173:                                              ; preds = %169
  switch i32 %19, label %188 [
    i32 0, label %174
    i32 4, label %174
    i32 3, label %174
    i32 15, label %174
    i32 16, label %174
    i32 13, label %181
    i32 14, label %181
  ]

174:                                              ; preds = %173, %173, %173, %173, %173
  %175 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !30
  %177 = load ptr, ptr %0, align 8, !tbaa !31
  %178 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !26
  %180 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %176, ptr noundef %177, i32 noundef 1, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %179) #19
  br label %488

181:                                              ; preds = %173, %173
  %182 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !30
  %184 = load ptr, ptr %0, align 8, !tbaa !31
  %185 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !26
  %187 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %183, ptr noundef %184, i32 noundef 5, double noundef -1.000000e+00, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %186) #19
  br label %488

188:                                              ; preds = %173
  %189 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 10
  %190 = load i32, ptr %189, align 4, !tbaa !37
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %270

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !30
  %195 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11
  tail call void @GetMagickPixelPacket(ptr noundef %194, ptr noundef nonnull %195) #19
  store i32 1, ptr %189, align 4, !tbaa !37
  %196 = load ptr, ptr %193, align 8, !tbaa !30
  %197 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !26
  %199 = tail call ptr @ResizeImage(ptr noundef %196, i64 noundef 1, i64 noundef 1, i32 noundef 2, double noundef 1.000000e+00, ptr noundef %198) #19
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %195, i64 56, i1 false), !tbaa.struct !53
  br label %488

202:                                              ; preds = %192
  %203 = getelementptr inbounds %struct._Image, ptr %199, i64 0, i32 58
  %204 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %199, ptr noundef nonnull %203) #19
  %205 = load ptr, ptr %197, align 8, !tbaa !26
  %206 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %204, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %205) #24
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = tail call ptr @DestroyCacheView(ptr noundef %204) #19
  %210 = tail call ptr @DestroyImage(ptr noundef nonnull %199) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %195, i64 56, i1 false), !tbaa.struct !53
  br label %488

211:                                              ; preds = %202
  %212 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %204) #19
  %213 = load ptr, ptr %193, align 8, !tbaa !30
  tail call fastcc void @SetMagickPixelPacket(ptr noundef %213, ptr noundef nonnull %206, ptr noundef %212, ptr noundef nonnull %195) #23
  %214 = tail call ptr @DestroyCacheView(ptr noundef %204) #19
  %215 = tail call ptr @DestroyImage(ptr noundef nonnull %199) #19
  %216 = load i32, ptr %18, align 4, !tbaa !49
  %217 = icmp eq i32 %216, 17
  br i1 %217, label %218, label %270

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11, i32 8
  %220 = load float, ptr %219, align 4, !tbaa !56
  %221 = fsub float 6.553500e+04, %220
  %222 = fpext float %221 to double
  %223 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11, i32 5
  %224 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11, i32 7
  %225 = load float, ptr %224, align 8, !tbaa !57
  %226 = fpext float %225 to double
  %227 = load ptr, ptr %193, align 8, !tbaa !30
  %228 = getelementptr inbounds %struct._Image, ptr %227, i64 0, i32 12, i32 3
  %229 = load i16, ptr %228, align 2, !tbaa !58
  %230 = xor i16 %229, -1
  %231 = uitofp i16 %230 to double
  %232 = insertelement <2 x double> poison, double %222, i64 0
  %233 = insertelement <2 x double> %232, double %231, i64 1
  %234 = fmul <2 x double> %233, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %235 = extractelement <2 x double> %234, i64 0
  %236 = fmul double %235, %226
  %237 = fptrunc double %236 to float
  %238 = getelementptr inbounds %struct._Image, ptr %227, i64 0, i32 12, i32 1
  %239 = getelementptr inbounds %struct._Image, ptr %227, i64 0, i32 12
  %240 = load i16, ptr %239, align 8, !tbaa !59
  %241 = uitofp i16 %240 to double
  %242 = fpext float %237 to double
  %243 = extractelement <2 x double> %234, i64 1
  %244 = tail call double @llvm.fmuladd.f64(double %243, double %241, double %242)
  %245 = fptrunc double %244 to float
  %246 = uitofp i16 %229 to float
  %247 = fadd float %220, %246
  %248 = fadd double %235, %243
  %249 = load <2 x float>, ptr %223, align 8, !tbaa !55
  %250 = fpext <2 x float> %249 to <2 x double>
  %251 = shufflevector <2 x double> %234, <2 x double> poison, <2 x i32> zeroinitializer
  %252 = fmul <2 x double> %251, %250
  %253 = fptrunc <2 x double> %252 to <2 x float>
  %254 = load <2 x i16>, ptr %238, align 2, !tbaa !60
  %255 = uitofp <2 x i16> %254 to <2 x double>
  %256 = shufflevector <2 x double> %255, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %257 = fpext <2 x float> %253 to <2 x double>
  %258 = shufflevector <2 x double> %234, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %259 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %258, <2 x double> %256, <2 x double> %257)
  %260 = fptrunc <2 x double> %259 to <2 x float>
  %261 = fpext <2 x float> %260 to <2 x double>
  %262 = insertelement <2 x double> poison, double %248, i64 0
  %263 = shufflevector <2 x double> %262, <2 x double> poison, <2 x i32> zeroinitializer
  %264 = fdiv <2 x double> %261, %263
  %265 = fptrunc <2 x double> %264 to <2 x float>
  store <2 x float> %265, ptr %223, align 8, !tbaa !55
  %266 = fpext float %245 to double
  %267 = fdiv double %266, %248
  %268 = fptrunc double %267 to float
  store float %268, ptr %224, align 8, !tbaa !57
  %269 = fmul float %247, 5.000000e-01
  store float %269, ptr %219, align 4, !tbaa !56
  br label %270

270:                                              ; preds = %211, %218, %188
  %271 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %271, i64 56, i1 false), !tbaa.struct !53
  br label %488

272:                                              ; preds = %169
  %273 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float 0.000000e+00, ptr %273, align 8, !tbaa !61
  %274 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %275 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store <2 x float> zeroinitializer, ptr %275, align 8, !tbaa !55
  %276 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  %277 = load i32, ptr %276, align 8, !tbaa !62
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float 0.000000e+00, ptr %280, align 4, !tbaa !63
  br label %281

281:                                              ; preds = %279, %272
  %282 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %283 = load i32, ptr %282, align 4, !tbaa !64
  %284 = icmp eq i32 %283, 12
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float 0.000000e+00, ptr %286, align 8, !tbaa !65
  br label %287

287:                                              ; preds = %285, %281
  %288 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  %289 = load double, ptr %288, align 8, !tbaa !52
  %290 = fsub double %2, %289
  %291 = tail call double @llvm.ceil.f64(double %290)
  %292 = fptosi double %291 to i64
  %293 = fadd double %289, %2
  %294 = tail call double @llvm.floor.f64(double %293)
  %295 = fptosi double %294 to i64
  %296 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 18
  %297 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 17
  %298 = load double, ptr %297, align 8, !tbaa !66
  %299 = fmul double %298, 2.000000e+00
  %300 = fptosi double %299 to i64
  %301 = add i64 %300, 1
  %302 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 12
  %303 = load double, ptr %302, align 8, !tbaa !67
  %304 = fmul double %303, 2.000000e+00
  %305 = icmp sgt i64 %292, %295
  br i1 %305, label %440, label %306

306:                                              ; preds = %287
  %307 = sitofp i64 %292 to double
  %308 = fsub double %307, %2
  %309 = load double, ptr %296, align 8, !tbaa !68
  %310 = tail call double @llvm.fmuladd.f64(double %308, double %309, double %1)
  %311 = fsub double %310, %298
  %312 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 13
  %313 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 14
  %314 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %315 = icmp slt i64 %300, 0
  %316 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %317 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  br label %318

318:                                              ; preds = %306, %428
  %319 = phi double [ 0.000000e+00, %306 ], [ %431, %428 ]
  %320 = phi double [ 0.000000e+00, %306 ], [ %430, %428 ]
  %321 = phi double [ %311, %306 ], [ %327, %428 ]
  %322 = phi i64 [ 0, %306 ], [ %429, %428 ]
  %323 = phi i64 [ %292, %306 ], [ %432, %428 ]
  %324 = tail call double @llvm.ceil.f64(double %321)
  %325 = fptosi double %324 to i64
  %326 = load double, ptr %296, align 8, !tbaa !68
  %327 = fadd double %321, %326
  %328 = load double, ptr %302, align 8, !tbaa !67
  %329 = load double, ptr %312, align 8, !tbaa !69
  %330 = load double, ptr %313, align 8, !tbaa !70
  %331 = load ptr, ptr %0, align 8, !tbaa !31
  %332 = load ptr, ptr %314, align 8, !tbaa !26
  %333 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %331, i64 noundef %325, i64 noundef %323, i64 noundef %301, i64 noundef 1, ptr noundef %332) #24
  %334 = icmp eq ptr %333, null
  br i1 %334, label %488, label %335

335:                                              ; preds = %318
  %336 = load ptr, ptr %0, align 8, !tbaa !31
  %337 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %336) #19
  br i1 %315, label %428, label %338

338:                                              ; preds = %335
  %339 = sitofp i64 %325 to double
  %340 = fsub double %339, %1
  %341 = sitofp i64 %323 to double
  %342 = fsub double %341, %2
  %343 = fmul double %342, %330
  %344 = insertelement <2 x double> poison, double %342, i64 0
  %345 = shufflevector <2 x double> %344, <2 x double> poison, <2 x i32> zeroinitializer
  %346 = insertelement <2 x double> poison, double %329, i64 0
  %347 = insertelement <2 x double> %346, double %343, i64 1
  %348 = fmul <2 x double> %345, %347
  %349 = extractelement <2 x double> %348, i64 0
  %350 = tail call double @llvm.fmuladd.f64(double %328, double %340, double %349)
  %351 = tail call double @llvm.fmuladd.f64(double %340, double 2.000000e+00, double 1.000000e+00)
  %352 = insertelement <2 x double> poison, double %328, i64 0
  %353 = insertelement <2 x double> %352, double %350, i64 1
  %354 = insertelement <2 x double> poison, double %351, i64 0
  %355 = insertelement <2 x double> %354, double %340, i64 1
  %356 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %353, <2 x double> %355, <2 x double> %348)
  br label %357

357:                                              ; preds = %338, %417
  %358 = phi ptr [ %422, %417 ], [ %337, %338 ]
  %359 = phi ptr [ %421, %417 ], [ %333, %338 ]
  %360 = phi double [ %420, %417 ], [ %319, %338 ]
  %361 = phi double [ %419, %417 ], [ %320, %338 ]
  %362 = phi i64 [ %426, %417 ], [ 0, %338 ]
  %363 = phi i64 [ %418, %417 ], [ %322, %338 ]
  %364 = phi <2 x double> [ %425, %417 ], [ %356, %338 ]
  %365 = extractelement <2 x double> %364, i64 1
  %366 = fcmp olt double %365, 1.024000e+03
  br i1 %366, label %367, label %417

367:                                              ; preds = %357
  %368 = fptosi double %365 to i32
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 19, i64 %369
  %371 = load double, ptr %370, align 8, !tbaa !44
  %372 = getelementptr inbounds %struct._PixelPacket, ptr %359, i64 0, i32 3
  %373 = load i16, ptr %372, align 2, !tbaa !71
  %374 = uitofp i16 %373 to double
  %375 = load float, ptr %316, align 4, !tbaa !63
  %376 = fpext float %375 to double
  %377 = tail call double @llvm.fmuladd.f64(double %371, double %374, double %376)
  %378 = fptrunc double %377 to float
  store float %378, ptr %316, align 4, !tbaa !63
  %379 = fadd double %360, %371
  %380 = load i32, ptr %276, align 8, !tbaa !62
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %367
  %383 = xor i16 %373, -1
  %384 = uitofp i16 %383 to double
  %385 = fmul double %384, 0x3EF0001000100010
  %386 = fmul double %371, %385
  br label %387

387:                                              ; preds = %382, %367
  %388 = phi double [ %386, %382 ], [ %371, %367 ]
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %359, i64 0, i32 1
  %390 = load <2 x i16>, ptr %389, align 2, !tbaa !60
  %391 = uitofp <2 x i16> %390 to <2 x double>
  %392 = shufflevector <2 x double> %391, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %393 = load <2 x float>, ptr %275, align 8, !tbaa !55
  %394 = fpext <2 x float> %393 to <2 x double>
  %395 = insertelement <2 x double> poison, double %388, i64 0
  %396 = shufflevector <2 x double> %395, <2 x double> poison, <2 x i32> zeroinitializer
  %397 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %396, <2 x double> %392, <2 x double> %394)
  %398 = fptrunc <2 x double> %397 to <2 x float>
  store <2 x float> %398, ptr %275, align 8, !tbaa !55
  %399 = load i16, ptr %359, align 2, !tbaa !72
  %400 = uitofp i16 %399 to double
  %401 = load float, ptr %273, align 8, !tbaa !61
  %402 = fpext float %401 to double
  %403 = tail call double @llvm.fmuladd.f64(double %388, double %400, double %402)
  %404 = fptrunc double %403 to float
  store float %404, ptr %273, align 8, !tbaa !61
  %405 = load i32, ptr %282, align 4, !tbaa !64
  %406 = icmp eq i32 %405, 12
  br i1 %406, label %407, label %414

407:                                              ; preds = %387
  %408 = load i16, ptr %358, align 2, !tbaa !60
  %409 = uitofp i16 %408 to double
  %410 = load float, ptr %317, align 8, !tbaa !65
  %411 = fpext float %410 to double
  %412 = tail call double @llvm.fmuladd.f64(double %388, double %409, double %411)
  %413 = fptrunc double %412 to float
  store float %413, ptr %317, align 8, !tbaa !65
  br label %414

414:                                              ; preds = %407, %387
  %415 = fadd double %361, %388
  %416 = add nsw i64 %363, 1
  br label %417

417:                                              ; preds = %414, %357
  %418 = phi i64 [ %416, %414 ], [ %363, %357 ]
  %419 = phi double [ %415, %414 ], [ %361, %357 ]
  %420 = phi double [ %379, %414 ], [ %360, %357 ]
  %421 = getelementptr inbounds %struct._PixelPacket, ptr %359, i64 1
  %422 = getelementptr inbounds i16, ptr %358, i64 1
  %423 = insertelement <2 x double> %364, double %304, i64 0
  %424 = shufflevector <2 x double> %364, <2 x double> poison, <2 x i32> zeroinitializer
  %425 = fadd <2 x double> %423, %424
  %426 = add nuw i64 %362, 1
  %427 = icmp eq i64 %362, %300
  br i1 %427, label %428, label %357, !llvm.loop !73

428:                                              ; preds = %417, %335
  %429 = phi i64 [ %322, %335 ], [ %418, %417 ]
  %430 = phi double [ %320, %335 ], [ %419, %417 ]
  %431 = phi double [ %319, %335 ], [ %420, %417 ]
  %432 = add i64 %323, 1
  %433 = icmp eq i64 %323, %295
  br i1 %433, label %434, label %318, !llvm.loop !74

434:                                              ; preds = %428
  %435 = icmp eq i64 %429, 0
  %436 = fcmp ole double %431, 1.000000e-15
  %437 = select i1 %435, i1 true, i1 %436
  %438 = fcmp ole double %430, 1.000000e-15
  %439 = select i1 %437, i1 true, i1 %438
  br i1 %439, label %440, label %449

440:                                              ; preds = %287, %434
  %441 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !30
  %443 = load ptr, ptr %0, align 8, !tbaa !31
  %444 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 5
  %445 = load i32, ptr %444, align 8, !tbaa !48
  %446 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !26
  %448 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %442, ptr noundef %443, i32 noundef %445, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %447) #19
  br label %488

449:                                              ; preds = %434
  %450 = fdiv double 1.000000e+00, %431
  %451 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %452 = load float, ptr %451, align 4, !tbaa !63
  %453 = fpext float %452 to double
  %454 = fmul double %450, %453
  %455 = fptrunc double %454 to float
  %456 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %455) #23
  %457 = fdiv double 1.000000e+00, %430
  %458 = load float, ptr %275, align 8, !tbaa !75
  %459 = fpext float %458 to double
  %460 = fmul double %457, %459
  %461 = fptrunc double %460 to float
  %462 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %461) #23
  %463 = load float, ptr %274, align 4, !tbaa !76
  %464 = fpext float %463 to double
  %465 = fmul double %457, %464
  %466 = fptrunc double %465 to float
  %467 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %466) #23
  %468 = load float, ptr %273, align 8, !tbaa !61
  %469 = fpext float %468 to double
  %470 = fmul double %457, %469
  %471 = fptrunc double %470 to float
  %472 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %471) #23
  %473 = insertelement <4 x i16> poison, i16 %462, i64 0
  %474 = insertelement <4 x i16> %473, i16 %467, i64 1
  %475 = insertelement <4 x i16> %474, i16 %472, i64 2
  %476 = insertelement <4 x i16> %475, i16 %456, i64 3
  %477 = uitofp <4 x i16> %476 to <4 x float>
  store <4 x float> %477, ptr %275, align 8, !tbaa !55
  %478 = load i32, ptr %282, align 4, !tbaa !64
  %479 = icmp eq i32 %478, 12
  br i1 %479, label %480, label %488

480:                                              ; preds = %449
  %481 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %482 = load float, ptr %481, align 8, !tbaa !65
  %483 = fpext float %482 to double
  %484 = fmul double %457, %483
  %485 = fptrunc double %484 to float
  %486 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %485) #23
  %487 = uitofp i16 %486 to float
  store float %487, ptr %481, align 8, !tbaa !65
  br label %488

488:                                              ; preds = %318, %201, %208, %449, %480, %174, %181, %270, %440, %162, %8
  %489 = phi i32 [ %16, %8 ], [ %168, %162 ], [ %448, %440 ], [ 1, %270 ], [ %187, %181 ], [ %180, %174 ], [ 1, %480 ], [ 1, %449 ], [ 1, %208 ], [ 1, %201 ], [ 0, %318 ]
  ret i32 %489
}

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !60
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !77
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !60
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !65
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @ScaleResampleFilter(ptr nocapture noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #11 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 8
  store i32 0, ptr %12, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %82, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call fastcc void @ClampUpAxes(double noundef %1, double noundef %3, double noundef %2, double noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #23
  %17 = load double, ptr %6, align 8, !tbaa !44
  %18 = load double, ptr %8, align 8, !tbaa !44
  %19 = fmul double %17, %18
  %20 = load double, ptr %9, align 8, !tbaa !44
  %21 = fmul double %17, %20
  %22 = load double, ptr %7, align 8, !tbaa !44
  %23 = load double, ptr %10, align 8, !tbaa !44
  %24 = fmul double %22, %23
  %25 = load double, ptr %11, align 8, !tbaa !44
  %26 = fmul double %22, %25
  %27 = fmul double %26, %26
  %28 = tail call double @llvm.fmuladd.f64(double %21, double %21, double %27)
  %29 = fmul double %24, %26
  %30 = tail call double @llvm.fmuladd.f64(double %19, double %21, double %29)
  %31 = fmul double %30, -2.000000e+00
  %32 = fmul double %24, %24
  %33 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %32)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  %34 = fmul double %28, 4.000000e+00
  %35 = fneg double %31
  %36 = fmul double %31, %35
  %37 = tail call double @llvm.fmuladd.f64(double %34, double %33, double %36)
  %38 = fcmp ogt double %37, 0x7FEFFFFFFFFFFFFF
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  store i32 1, ptr %12, align 4, !tbaa !50
  br label %82

40:                                               ; preds = %16
  %41 = fmul double %17, %22
  %42 = fmul double %41, %41
  %43 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 20
  %44 = load double, ptr %43, align 8, !tbaa !43
  %45 = fmul double %42, %44
  %46 = fmul double %44, %45
  %47 = fmul double %33, %46
  %48 = fmul double %31, -2.500000e-01
  %49 = fmul double %31, %48
  %50 = tail call double @llvm.fmuladd.f64(double %28, double %33, double %49)
  %51 = fdiv double %47, %50
  %52 = tail call double @sqrt(double noundef %51) #19
  %53 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 16
  store double %52, ptr %53, align 8, !tbaa !51
  %54 = fmul double %28, %46
  %55 = fdiv double %54, %50
  %56 = tail call double @sqrt(double noundef %55) #19
  %57 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 15
  store double %56, ptr %57, align 8, !tbaa !52
  %58 = fdiv double %46, %28
  %59 = tail call double @sqrt(double noundef %58) #19
  %60 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 17
  store double %59, ptr %60, align 8, !tbaa !66
  %61 = fmul double %28, 2.000000e+00
  %62 = fdiv double %35, %61
  %63 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 18
  store double %62, ptr %63, align 8, !tbaa !68
  %64 = load double, ptr %57, align 8, !tbaa !52
  %65 = fmul double %59, %64
  %66 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 4
  %67 = load i64, ptr %66, align 8, !tbaa !36
  %68 = sitofp i64 %67 to double
  %69 = fmul double %68, 4.000000e+00
  %70 = fcmp ogt double %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %40
  store i32 1, ptr %12, align 4, !tbaa !50
  br label %82

72:                                               ; preds = %40
  %73 = fdiv double 1.024000e+03, %46
  %74 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 12
  %75 = insertelement <2 x double> poison, double %28, i64 0
  %76 = insertelement <2 x double> %75, double %31, i64 1
  %77 = insertelement <2 x double> poison, double %73, i64 0
  %78 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> zeroinitializer
  %79 = fmul <2 x double> %76, %78
  store <2 x double> %79, ptr %74, align 8, !tbaa !44
  %80 = fmul double %33, %73
  %81 = getelementptr inbounds %struct._ResampleFilter, ptr %0, i64 0, i32 14
  store double %80, ptr %81, align 8, !tbaa !70
  br label %82

82:                                               ; preds = %5, %72, %71, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @ClampUpAxes(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) unnamed_addr #12 {
  %11 = insertelement <2 x double> poison, double %0, i64 0
  %12 = insertelement <2 x double> %11, double %1, i64 1
  %13 = fmul <2 x double> %12, %12
  %14 = insertelement <2 x double> poison, double %2, i64 0
  %15 = insertelement <2 x double> %14, double %3, i64 1
  %16 = fmul <2 x double> %15, %15
  %17 = fadd <2 x double> %13, %16
  %18 = fneg double %2
  %19 = fmul double %18, %1
  %20 = tail call double @llvm.fmuladd.f64(double %0, double %3, double %19)
  %21 = fadd double %20, %20
  %22 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %23 = fadd <2 x double> %17, %22
  %24 = extractelement <2 x double> %23, i64 0
  %25 = fadd double %21, %24
  %26 = fsub double %24, %21
  %27 = fmul double %25, %26
  %28 = fcmp ogt double %27, 0.000000e+00
  %29 = select i1 %28, double %27, double 0.000000e+00
  %30 = tail call double @llvm.sqrt.f64(double %29)
  %31 = fadd double %24, %30
  %32 = fmul double %31, 5.000000e-01
  %33 = fsub double %24, %30
  %34 = fmul double %33, 5.000000e-01
  %35 = fcmp ugt double %32, 1.000000e+00
  br i1 %35, label %36, label %38

36:                                               ; preds = %10
  %37 = tail call double @sqrt(double noundef %32) #19
  br label %38

38:                                               ; preds = %10, %36
  %39 = phi double [ %37, %36 ], [ 1.000000e+00, %10 ]
  store double %39, ptr %4, align 8, !tbaa !44
  %40 = fcmp ugt double %34, 1.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = tail call double @sqrt(double noundef %34) #19
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi double [ %42, %41 ], [ 1.000000e+00, %38 ]
  %45 = insertelement <2 x double> poison, double %32, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = fsub <2 x double> %46, %17
  %48 = fmul <2 x double> %47, %47
  %49 = extractelement <2 x double> %48, i64 0
  %50 = extractelement <2 x double> %48, i64 1
  %51 = fcmp oge double %49, %50
  %52 = fmul double %2, %3
  %53 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %52)
  %54 = extractelement <2 x double> %47, i64 1
  %55 = select i1 %51, double %53, double %54
  %56 = extractelement <2 x double> %47, i64 0
  %57 = select i1 %51, double %56, double %53
  %58 = fmul double %57, %57
  %59 = tail call double @llvm.fmuladd.f64(double %55, double %55, double %58)
  %60 = tail call double @llvm.sqrt.f64(double %59)
  %61 = fcmp ogt double %60, 0.000000e+00
  %62 = fdiv double %57, %60
  %63 = select i1 %61, double %62, double 0.000000e+00
  %64 = fdiv double %55, %60
  %65 = select i1 %61, double %64, double 1.000000e+00
  store double %44, ptr %5, align 8, !tbaa !44
  store double %65, ptr %6, align 8, !tbaa !44
  store double %63, ptr %7, align 8, !tbaa !44
  %66 = fneg double %63
  store double %66, ptr %8, align 8, !tbaa !44
  store double %65, ptr %9, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @AcquireResizeFilter(ptr noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @GetResizeFilterSupport(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @GetResizeFilterWeight(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyResizeFilter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #14

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(ptr, i32) local_unnamed_addr #15

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(ptr, i32) local_unnamed_addr #15

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #15

; Function Attrs: optsize
declare i32 @SetCacheViewVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { convergent nounwind }
attributes #16 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { nounwind optsize willreturn memory(none) }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 12976}
!7 = !{!"_Image", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !16, i64 112, !8, i64 208, !12, i64 216, !8, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !11, i64 256, !15, i64 264, !15, i64 272, !18, i64 280, !18, i64 312, !18, i64 344, !15, i64 376, !15, i64 384, !15, i64 392, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !12, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !19, i64 480, !20, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !11, i64 12904, !11, i64 12912, !22, i64 12920, !8, i64 12976, !11, i64 12984, !12, i64 12992, !23, i64 13000, !23, i64 13032, !12, i64 13064, !11, i64 13072, !11, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !8, i64 13112, !8, i64 13116, !13, i64 13120, !12, i64 13128, !18, i64 13136, !12, i64 13168, !12, i64 13176, !8, i64 13184, !8, i64 13188, !24, i64 13192, !8, i64 13200, !11, i64 13208, !11, i64 13216, !8, i64 13224, !11, i64 13232}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"_PixelPacket", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!14 = !{!"short", !9, i64 0}
!15 = !{!"double", !9, i64 0}
!16 = !{!"_ChromaticityInfo", !17, i64 0, !17, i64 24, !17, i64 48, !17, i64 72}
!17 = !{!"_PrimaryInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!19 = !{!"_ErrorInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_TimerInfo", !21, i64 0, !21, i64 24, !8, i64 48, !11, i64 56}
!21 = !{!"_Timer", !15, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"_ExceptionInfo", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !11, i64 48}
!23 = !{!"_ProfileInfo", !12, i64 0, !11, i64 8, !12, i64 16, !11, i64 24}
!24 = !{!"long long", !9, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!27, !12, i64 16}
!27 = !{!"_ResampleFilter", !12, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !28, i64 64, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !9, i64 176, !15, i64 8368, !11, i64 8376}
!28 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48}
!29 = !{!"float", !9, i64 0}
!30 = !{!27, !12, i64 8}
!31 = !{!27, !12, i64 0}
!32 = !{!27, !8, i64 24}
!33 = !{!27, !11, i64 8376}
!34 = !{!7, !11, i64 40}
!35 = !{!7, !11, i64 48}
!36 = !{!27, !11, i64 32}
!37 = !{!27, !8, i64 60}
!38 = !{!7, !8, i64 400}
!39 = !{!7, !15, i64 384}
!40 = !{!7, !8, i64 13112}
!41 = !{!27, !8, i64 56}
!42 = !{!27, !8, i64 48}
!43 = !{!27, !15, i64 8368}
!44 = !{!15, !15, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = !{!27, !8, i64 40}
!49 = !{!27, !8, i64 44}
!50 = !{!27, !8, i64 52}
!51 = !{!27, !15, i64 152}
!52 = !{!27, !15, i64 144}
!53 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25, i64 16, i64 8, !44, i64 24, i64 8, !54, i64 32, i64 4, !55, i64 36, i64 4, !55, i64 40, i64 4, !55, i64 44, i64 4, !55, i64 48, i64 4, !55}
!54 = !{!11, !11, i64 0}
!55 = !{!29, !29, i64 0}
!56 = !{!27, !29, i64 108}
!57 = !{!27, !29, i64 104}
!58 = !{!7, !14, i64 86}
!59 = !{!7, !14, i64 80}
!60 = !{!14, !14, i64 0}
!61 = !{!28, !29, i64 40}
!62 = !{!28, !8, i64 8}
!63 = !{!28, !29, i64 44}
!64 = !{!28, !8, i64 4}
!65 = !{!28, !29, i64 48}
!66 = !{!27, !15, i64 160}
!67 = !{!27, !15, i64 120}
!68 = !{!27, !15, i64 168}
!69 = !{!27, !15, i64 128}
!70 = !{!27, !15, i64 136}
!71 = !{!13, !14, i64 6}
!72 = !{!13, !14, i64 0}
!73 = distinct !{!73, !46}
!74 = distinct !{!74, !46}
!75 = !{!28, !29, i64 32}
!76 = !{!28, !29, i64 36}
!77 = !{!7, !8, i64 4}
