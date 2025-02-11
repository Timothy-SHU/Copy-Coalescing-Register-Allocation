; ModuleID = 'magick/shear.c'
source_filename = "magick/shear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._PointInfo = type { double, double }

@.str = private unnamed_addr constant [15 x i8] c"magick/shear.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"  Deskew angle: %g\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"deskew:angle\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"deskew:auto-crop\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"  Deskew geometry: %.20gx%.20g%+.20g%+.20g\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_IntegralRotateImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"Rotate/Image\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"AngleIsDiscontinuous\00", align 1
@.gomp_critical_user_MagickCore_XShearImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"XShear/Image\00", align 1
@.gomp_critical_user_MagickCore_YShearImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"YShear/Image\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DeskewImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._AffineMatrix, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !6
  %9 = add i64 %8, 7
  %10 = lshr i64 %9, 3
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi i64 [ 1, %3 ], [ %14, %11 ]
  %13 = icmp ult i64 %12, %10
  %14 = shl nuw i64 %12, 1
  br i1 %13, label %11, label %15, !llvm.loop !25

15:                                               ; preds = %11
  %16 = add i64 %14, -1
  %17 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 8) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 607, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %20) #18
  br label %121

22:                                               ; preds = %15
  %23 = tail call fastcc i32 @RadonTransform(ptr noundef nonnull %0, double noundef %1, ptr noundef nonnull %17, ptr noundef %2) #19, !range !27
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = icmp sgt i64 %16, 0
  br i1 %26, label %31, label %46

27:                                               ; preds = %22
  %28 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #18
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %29) #18
  br label %121

31:                                               ; preds = %25, %31
  %32 = phi i64 [ %41, %31 ], [ 0, %25 ]
  %33 = phi i64 [ %40, %31 ], [ 0, %25 ]
  %34 = phi i64 [ %42, %31 ], [ 0, %25 ]
  %35 = getelementptr inbounds i64, ptr %17, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !28
  %37 = icmp ugt i64 %36, %33
  %38 = sub nsw i64 %34, %12
  %39 = add nsw i64 %38, 1
  %40 = tail call i64 @llvm.umax.i64(i64 %36, i64 %33)
  %41 = select i1 %37, i64 %39, i64 %32
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, %16
  br i1 %43, label %44, label %31, !llvm.loop !29

44:                                               ; preds = %31
  %45 = sitofp i64 %41 to double
  br label %46

46:                                               ; preds = %44, %25
  %47 = phi double [ 0.000000e+00, %25 ], [ %45, %44 ]
  %48 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #18
  %49 = uitofp i64 %12 to double
  %50 = fdiv double %47, %49
  %51 = fmul double %50, 1.250000e-01
  %52 = tail call double @atan(double noundef %51) #18
  %53 = fptrunc double %52 to float
  %54 = fneg float %53
  %55 = tail call fastcc float @RadiansToDegrees(float noundef %54) #19
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %58 = load i32, ptr %57, align 8, !tbaa !30
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %46
  %61 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 627, ptr noundef nonnull @.str.4, double noundef %56) #18
  br label %62

62:                                               ; preds = %60, %46
  %63 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  %64 = icmp eq ptr %63, null
  br i1 %64, label %121, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #9
  %66 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.5, double noundef %56) #18
  %67 = call i32 @SetImageArtifact(ptr noundef nonnull %63, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #9
  %68 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %63, i32 noundef 1) #18
  %69 = call double @fmod(double noundef %56, double noundef 3.600000e+02) #18
  %70 = call fastcc double @DegreesToRadians(double noundef %69) #19
  %71 = call double @cos(double noundef %70) #18
  store double %71, ptr %4, align 8, !tbaa !31
  %72 = call double @fmod(double noundef %56, double noundef 3.600000e+02) #18
  %73 = call fastcc double @DegreesToRadians(double noundef %72) #19
  %74 = call double @sin(double noundef %73) #18
  %75 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 1
  store double %74, ptr %75, align 8, !tbaa !33
  %76 = call double @fmod(double noundef %56, double noundef 3.600000e+02) #18
  %77 = call fastcc double @DegreesToRadians(double noundef %76) #19
  %78 = call double @sin(double noundef %77) #18
  %79 = fneg double %78
  %80 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 2
  store double %79, ptr %80, align 8, !tbaa !34
  %81 = call double @fmod(double noundef %56, double noundef 3.600000e+02) #18
  %82 = call fastcc double @DegreesToRadians(double noundef %81) #19
  %83 = call double @cos(double noundef %82) #18
  %84 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 3
  store double %83, ptr %84, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %85, i8 0, i64 16, i1 false)
  %86 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #18
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %65
  %89 = call ptr @AffineTransformImage(ptr noundef nonnull %63, ptr noundef nonnull %4, ptr noundef %2) #18
  %90 = call ptr @DestroyImage(ptr noundef nonnull %63) #18
  br label %121

91:                                               ; preds = %65
  %92 = call fastcc i64 @StringToLong(ptr noundef nonnull %86) #19
  call fastcc void @GetImageBackgroundColor(ptr noundef nonnull %63, i64 noundef %92, ptr noundef %2) #19
  %93 = call ptr @AffineTransformImage(ptr noundef nonnull %63, ptr noundef nonnull %4, ptr noundef %2) #18
  %94 = call ptr @DestroyImage(ptr noundef nonnull %63) #18
  %95 = icmp eq ptr %93, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %91
  %97 = call ptr @StatisticImage(ptr noundef nonnull %93, i32 noundef 4, i64 noundef 3, i64 noundef 3, ptr noundef %2) #18
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call ptr @DestroyImage(ptr noundef nonnull %93) #18
  br label %121

101:                                              ; preds = %96
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %97, ptr noundef %2) #18
  %102 = call ptr @DestroyImage(ptr noundef nonnull %97) #18
  %103 = load i32, ptr %57, align 8, !tbaa !30
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %101
  %106 = load i64, ptr %5, align 8, !tbaa !36
  %107 = uitofp i64 %106 to double
  %108 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !37
  %110 = uitofp i64 %109 to double
  %111 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !38
  %113 = sitofp i64 %112 to double
  %114 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %115 = load i64, ptr %114, align 8, !tbaa !39
  %116 = sitofp i64 %115 to double
  %117 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 674, ptr noundef nonnull @.str.8, double noundef %107, double noundef %110, double noundef %113, double noundef %116) #18
  br label %118

118:                                              ; preds = %105, %101
  %119 = call ptr @CropImage(ptr noundef nonnull %93, ptr noundef nonnull %5, ptr noundef %2) #18
  %120 = call ptr @DestroyImage(ptr noundef nonnull %93) #18
  br label %121

121:                                              ; preds = %91, %62, %118, %99, %88, %27, %19
  %122 = phi ptr [ null, %19 ], [ null, %27 ], [ %89, %88 ], [ null, %99 ], [ %119, %118 ], [ null, %62 ], [ null, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  ret ptr %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @RadonTransform(ptr noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i16], align 16
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !40
  store double %1, ptr %6, align 8, !tbaa !41
  store ptr %3, ptr %7, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %11) #9
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !6
  %15 = add i64 %14, 7
  %16 = lshr i64 %15, 3
  br label %17

17:                                               ; preds = %17, %4
  %18 = phi i64 [ 1, %4 ], [ %20, %17 ]
  %19 = icmp ult i64 %18, %16
  %20 = shl nuw nsw i64 %18, 1
  br i1 %19, label %17, label %21, !llvm.loop !42

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !43
  %24 = tail call ptr @AcquireMatrixInfo(i64 noundef %18, i64 noundef %23, i64 noundef 2, ptr noundef %3) #18
  store ptr %24, ptr %9, align 8, !tbaa !40
  %25 = load i64, ptr %22, align 8, !tbaa !43
  %26 = tail call ptr @AcquireMatrixInfo(i64 noundef %18, i64 noundef %25, i64 noundef 2, ptr noundef %3) #18
  %27 = icmp eq ptr %24, null
  %28 = icmp eq ptr %26, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  br i1 %28, label %33, label %31

31:                                               ; preds = %30
  %32 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %26) #18
  br label %33

33:                                               ; preds = %31, %30
  br i1 %27, label %113, label %34

34:                                               ; preds = %33
  %35 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %24) #18
  br label %113

36:                                               ; preds = %21
  %37 = tail call i32 @NullMatrix(ptr noundef nonnull %24) #18
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %26) #18
  %41 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %24) #18
  br label %113

42:                                               ; preds = %36, %54
  %43 = phi i64 [ %57, %54 ], [ 0, %36 ]
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %46
  %47 = phi i32 [ %52, %46 ], [ %44, %42 ]
  %48 = phi i16 [ %51, %46 ], [ 0, %42 ]
  %49 = trunc i32 %47 to i16
  %50 = and i16 %49, 1
  %51 = add i16 %50, %48
  %52 = lshr i32 %47, 1
  %53 = icmp ult i32 %47, 2
  br i1 %53, label %54, label %46, !llvm.loop !44

54:                                               ; preds = %46, %42
  %55 = phi i16 [ 0, %42 ], [ %51, %46 ]
  %56 = getelementptr inbounds [256 x i16], ptr %11, i64 0, i64 %43
  store i16 %55, ptr %56, align 2, !tbaa !45
  %57 = add nuw nsw i64 %43, 1
  %58 = icmp eq i64 %57, 256
  br i1 %58, label %59, label %42, !llvm.loop !46

59:                                               ; preds = %54
  store i32 1, ptr %10, align 4, !tbaa !47
  %60 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #18
  store ptr %60, ptr %8, align 8, !tbaa !40
  %61 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %62 = and i64 %61, 576460752303423487
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = tail call i32 @GetImagePixelCacheType(ptr noundef %0) #18
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @GetImagePixelCacheType(ptr noundef %0) #18
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %76

72:                                               ; preds = %67, %64, %59
  %73 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %74 = icmp ult i64 %73, 2
  %75 = select i1 %74, i64 1, i64 2
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i64 [ %71, %70 ], [ %75, %72 ]
  %78 = trunc i64 %77 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %78)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @RadonTransform.omp_outlined, ptr nonnull %5, ptr nonnull %10, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %11, ptr nonnull %9)
  %79 = load ptr, ptr %5, align 8, !tbaa !40
  %80 = load ptr, ptr %9, align 8, !tbaa !40
  call fastcc void @RadonProjection(ptr noundef %79, ptr noundef %80, ptr noundef %26, i64 noundef -1, ptr noundef %2) #19
  %81 = load ptr, ptr %9, align 8, !tbaa !40
  %82 = call i32 @NullMatrix(ptr noundef %81) #18
  %83 = load ptr, ptr %5, align 8, !tbaa !40
  %84 = getelementptr inbounds %struct._Image, ptr %83, i64 0, i32 8
  %85 = load i64, ptr %84, align 8, !tbaa !43
  %86 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %87 = shl i64 %86, 5
  %88 = icmp ugt i64 %85, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load ptr, ptr %5, align 8, !tbaa !40
  %91 = call i32 @GetImagePixelCacheType(ptr noundef %90) #18
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %5, align 8, !tbaa !40
  %95 = call i32 @GetImagePixelCacheType(ptr noundef %94) #18
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %103

99:                                               ; preds = %93, %89, %76
  %100 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %101 = icmp ult i64 %100, 2
  %102 = select i1 %101, i64 1, i64 2
  br label %103

103:                                              ; preds = %99, %97
  %104 = phi i64 [ %98, %97 ], [ %102, %99 ]
  %105 = trunc i64 %104 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %105)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @RadonTransform.omp_outlined.9, ptr nonnull %5, ptr nonnull %10, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %11, ptr nonnull %9)
  %106 = load ptr, ptr %5, align 8, !tbaa !40
  %107 = load ptr, ptr %9, align 8, !tbaa !40
  call fastcc void @RadonProjection(ptr noundef %106, ptr noundef %107, ptr noundef %26, i64 noundef 1, ptr noundef %2) #19
  %108 = load ptr, ptr %8, align 8, !tbaa !40
  %109 = call ptr @DestroyCacheView(ptr noundef %108) #18
  store ptr %109, ptr %8, align 8, !tbaa !40
  %110 = call ptr @DestroyMatrixInfo(ptr noundef %26) #18
  %111 = load ptr, ptr %9, align 8, !tbaa !40
  %112 = call ptr @DestroyMatrixInfo(ptr noundef %111) #18
  br label %113

113:                                              ; preds = %33, %34, %103, %39
  %114 = phi i32 [ 0, %39 ], [ 1, %103 ], [ 0, %34 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  ret i32 %114
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RadiansToDegrees(float noundef %0) unnamed_addr #4 {
  %2 = fpext float %0 to double
  %3 = fmul double %2, 1.800000e+02
  %4 = fdiv double %3, 0x400921FB54442D18
  %5 = fptrunc double %4 to float
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #4 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AffineTransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetImageBackgroundColor(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #9
  %5 = icmp slt i64 %1, 1
  br i1 %5, label %87, label %6

6:                                                ; preds = %3
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %4) #18
  %7 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #18
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !43
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  br label %14

14:                                               ; preds = %11, %55
  %15 = phi i64 [ %9, %11 ], [ %58, %55 ]
  %16 = phi i64 [ 0, %11 ], [ %57, %55 ]
  %17 = phi float [ 0.000000e+00, %11 ], [ %56, %55 ]
  %18 = icmp sge i64 %16, %1
  %19 = sub nsw i64 %15, %1
  %20 = icmp slt i64 %16, %19
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %55, label %22

22:                                               ; preds = %14
  %23 = load i64, ptr %12, align 8, !tbaa !6
  %24 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %16, i64 noundef %23, i64 noundef 1, ptr noundef %2) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %22
  %27 = load i64, ptr %12, align 8, !tbaa !6
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = sub nsw i64 %27, %1
  %31 = load <4 x float>, ptr %13, align 8, !tbaa !48
  br label %32

32:                                               ; preds = %29, %49
  %33 = phi i64 [ 0, %29 ], [ %53, %49 ]
  %34 = phi ptr [ %24, %29 ], [ %51, %49 ]
  %35 = phi float [ %17, %29 ], [ %50, %49 ]
  %36 = phi <4 x float> [ %31, %29 ], [ %52, %49 ]
  %37 = icmp sge i64 %33, %1
  %38 = icmp slt i64 %33, %30
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %49, label %40

40:                                               ; preds = %32
  %41 = fpext <4 x float> %36 to <4 x double>
  %42 = load <4 x i16>, ptr %34, align 2, !tbaa !45
  %43 = uitofp <4 x i16> %42 to <4 x double>
  %44 = shufflevector <4 x double> %43, <4 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %45 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %44, <4 x double> <double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010>, <4 x double> %41)
  %46 = fptrunc <4 x double> %45 to <4 x float>
  store <4 x float> %46, ptr %13, align 8, !tbaa !48
  %47 = fadd float %35, 1.000000e+00
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 1
  br label %49

49:                                               ; preds = %32, %40
  %50 = phi float [ %47, %40 ], [ %35, %32 ]
  %51 = phi ptr [ %48, %40 ], [ %34, %32 ]
  %52 = phi <4 x float> [ %46, %40 ], [ %36, %32 ]
  %53 = add nuw nsw i64 %33, 1
  %54 = icmp eq i64 %53, %27
  br i1 %54, label %55, label %32, !llvm.loop !50

55:                                               ; preds = %49, %26, %22, %14
  %56 = phi float [ %17, %14 ], [ %17, %22 ], [ %17, %26 ], [ %50, %49 ]
  %57 = add nuw nsw i64 %16, 1
  %58 = load i64, ptr %8, align 8, !tbaa !43
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %14, label %60, !llvm.loop !51

60:                                               ; preds = %55, %6
  %61 = phi float [ 0.000000e+00, %6 ], [ %56, %55 ]
  %62 = call ptr @DestroyCacheView(ptr noundef %7) #18
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %64 = load float, ptr %63, align 8, !tbaa !52
  %65 = fmul float %64, 6.553500e+04
  %66 = fdiv float %65, %61
  %67 = call fastcc zeroext i16 @ClampToQuantum(float noundef %66) #19
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  store i16 %67, ptr %69, align 4, !tbaa !54
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %71 = load float, ptr %70, align 4, !tbaa !55
  %72 = fmul float %71, 6.553500e+04
  %73 = fdiv float %72, %61
  %74 = call fastcc zeroext i16 @ClampToQuantum(float noundef %73) #19
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  store i16 %74, ptr %75, align 2, !tbaa !56
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %77 = load float, ptr %76, align 8, !tbaa !57
  %78 = fmul float %77, 6.553500e+04
  %79 = fdiv float %78, %61
  %80 = call fastcc zeroext i16 @ClampToQuantum(float noundef %79) #19
  store i16 %80, ptr %68, align 8, !tbaa !58
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %82 = load float, ptr %81, align 4, !tbaa !59
  %83 = fmul float %82, 6.553500e+04
  %84 = fdiv float %83, %61
  %85 = call fastcc zeroext i16 @ClampToQuantum(float noundef %84) #19
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  store i16 %85, ptr %86, align 2, !tbaa !60
  br label %87

87:                                               ; preds = %3, %60
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #18
  ret i64 %2
}

; Function Attrs: optsize
declare ptr @StatisticImage(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireMatrixInfo(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyMatrixInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @NullMatrix(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RadonTransform.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 2 dereferenceable(512) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8) #8 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = load ptr, ptr %2, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !43
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %121

20:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store i64 0, ptr %10, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  store i64 %18, ptr %11, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  store i64 1, ptr %12, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 0, ptr %13, align 4, !tbaa !47
  %21 = load i32, ptr %0, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %22 = load i64, ptr %11, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %11, align 8, !tbaa !28
  %24 = load i64, ptr %10, align 8, !tbaa !28
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %120, label %26

26:                                               ; preds = %20, %112
  %27 = phi i64 [ %118, %112 ], [ %23, %20 ]
  %28 = phi i64 [ %116, %112 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %112, label %30

30:                                               ; preds = %26, %106
  %31 = phi i64 [ %107, %106 ], [ %28, %26 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  %32 = load i32, ptr %3, align 4, !tbaa !47
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %106, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !40
  %36 = load ptr, ptr %2, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !6
  %39 = load ptr, ptr %5, align 8, !tbaa !40
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, ptr %3, align 4, !tbaa !47
  br label %106

43:                                               ; preds = %34
  %44 = load ptr, ptr %2, align 8, !tbaa !40
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !6
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %43
  %49 = add nuw i64 %46, 7
  %50 = sdiv i64 %49, 8
  br label %51

51:                                               ; preds = %48, %86
  %52 = phi ptr [ %87, %86 ], [ %44, %48 ]
  %53 = phi i64 [ %90, %86 ], [ 0, %48 ]
  %54 = phi i64 [ %89, %86 ], [ 0, %48 ]
  %55 = phi i64 [ %92, %86 ], [ 0, %48 ]
  %56 = phi i64 [ %88, %86 ], [ %50, %48 ]
  %57 = phi ptr [ %91, %86 ], [ %40, %48 ]
  %58 = shl i64 %53, 1
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !61
  %61 = uitofp i16 %60 to double
  %62 = load double, ptr %6, align 8, !tbaa !41
  %63 = fcmp ogt double %62, %61
  br i1 %63, label %73, label %64

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !62
  %67 = uitofp i16 %66 to double
  %68 = fcmp ogt double %62, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i16, ptr %57, align 2, !tbaa !63
  %71 = uitofp i16 %70 to double
  %72 = fcmp ogt double %62, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %64, %51
  %74 = or disjoint i64 %58, 1
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i64 [ %74, %73 ], [ %58, %69 ]
  %77 = add i64 %54, 1
  %78 = icmp eq i64 %77, 8
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = getelementptr inbounds [256 x i16], ptr %7, i64 0, i64 %76
  %81 = load i16, ptr %80, align 2, !tbaa !45
  store i16 %81, ptr %14, align 2, !tbaa !45
  %82 = load ptr, ptr %8, align 8, !tbaa !40
  %83 = add nsw i64 %56, -1
  %84 = call i32 @SetMatrixElement(ptr noundef %82, i64 noundef %83, i64 noundef %31, ptr noundef nonnull %14) #18
  %85 = load ptr, ptr %2, align 8, !tbaa !40
  br label %86

86:                                               ; preds = %79, %75
  %87 = phi ptr [ %85, %79 ], [ %52, %75 ]
  %88 = phi i64 [ %83, %79 ], [ %56, %75 ]
  %89 = phi i64 [ 0, %79 ], [ %77, %75 ]
  %90 = phi i64 [ 0, %79 ], [ %76, %75 ]
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %92 = add nuw nsw i64 %55, 1
  %93 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 7
  %94 = load i64, ptr %93, align 8, !tbaa !6
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %51, label %96, !llvm.loop !64

96:                                               ; preds = %86
  %97 = icmp eq i64 %89, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %96
  %99 = sub i64 8, %89
  %100 = shl i64 %90, %99
  %101 = getelementptr inbounds [256 x i16], ptr %7, i64 0, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !45
  store i16 %102, ptr %14, align 2, !tbaa !45
  %103 = load ptr, ptr %8, align 8, !tbaa !40
  %104 = add nsw i64 %88, -1
  %105 = call i32 @SetMatrixElement(ptr noundef %103, i64 noundef %104, i64 noundef %31, ptr noundef nonnull %14) #18
  br label %106

106:                                              ; preds = %43, %96, %98, %30, %42
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %107 = add nsw i64 %31, 1
  %108 = load i64, ptr %11, align 8, !tbaa !28
  %109 = icmp slt i64 %31, %108
  br i1 %109, label %30, label %110

110:                                              ; preds = %106
  %111 = load i64, ptr %10, align 8, !tbaa !28
  br label %112

112:                                              ; preds = %110, %26
  %113 = phi i64 [ %28, %26 ], [ %111, %110 ]
  %114 = phi i64 [ %27, %26 ], [ %108, %110 ]
  %115 = load i64, ptr %12, align 8, !tbaa !28
  %116 = add nsw i64 %115, %113
  store i64 %116, ptr %10, align 8, !tbaa !28
  %117 = add nsw i64 %115, %114
  %118 = call i64 @llvm.smin.i64(i64 %117, i64 %18)
  store i64 %118, ptr %11, align 8, !tbaa !28
  %119 = icmp sgt i64 %116, %118
  br i1 %119, label %120, label %26

120:                                              ; preds = %112, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %121

121:                                              ; preds = %120, %9
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #9

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @SetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

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
declare !callback !65 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RadonProjection(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i64 %3, ptr %6, align 8, !tbaa !28
  store ptr %4, ptr %7, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store ptr %1, ptr %8, align 8, !tbaa !40
  %12 = tail call i64 @GetMatrixColumns(ptr noundef %1) #18
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %136

14:                                               ; preds = %5, %132
  %15 = phi ptr [ %17, %132 ], [ %1, %5 ]
  %16 = phi i64 [ %20, %132 ], [ 1, %5 ]
  %17 = phi ptr [ %133, %132 ], [ %2, %5 ]
  %18 = call i64 @GetMatrixColumns(ptr noundef %15) #18
  %19 = icmp sgt i64 %18, 0
  %20 = shl i64 %16, 1
  br i1 %19, label %23, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8, !tbaa !40
  br label %132

23:                                               ; preds = %14
  %24 = icmp sgt i64 %16, 0
  br label %25

25:                                               ; preds = %23, %127
  %26 = phi i64 [ 0, %23 ], [ %129, %127 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  %27 = load ptr, ptr %8, align 8, !tbaa !40
  br i1 %24, label %28, label %127

28:                                               ; preds = %25, %124
  %29 = phi ptr [ %35, %124 ], [ %27, %25 ]
  %30 = phi i64 [ %125, %124 ], [ 0, %25 ]
  %31 = call i64 @GetMatrixRows(ptr noundef %29) #18
  %32 = xor i64 %30, -1
  %33 = sub i64 %30, %31
  %34 = icmp slt i64 %33, -1
  %35 = load ptr, ptr %8, align 8, !tbaa !40
  br i1 %34, label %36, label %42

36:                                               ; preds = %28
  %37 = add nsw i64 %30, %26
  %38 = add i64 %37, %16
  %39 = shl nuw nsw i64 %30, 1
  %40 = add nsw i64 %39, %26
  %41 = or disjoint i64 %40, 1
  br label %53

42:                                               ; preds = %76, %28
  %43 = phi i64 [ 0, %28 ], [ %77, %76 ]
  %44 = call i64 @GetMatrixRows(ptr noundef %35) #18
  %45 = sub i64 %44, %30
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = add nsw i64 %30, %26
  %49 = add i64 %48, %16
  %50 = shl nuw nsw i64 %30, 1
  %51 = add nsw i64 %50, %26
  %52 = or disjoint i64 %51, 1
  br label %90

53:                                               ; preds = %36, %76
  %54 = phi i64 [ 0, %36 ], [ %77, %76 ]
  %55 = call i32 @GetMatrixElement(ptr noundef %35, i64 noundef %37, i64 noundef %54, ptr noundef nonnull %9) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = add nuw nsw i64 %54, %30
  %59 = call i32 @GetMatrixElement(ptr noundef %35, i64 noundef %38, i64 noundef %58, ptr noundef nonnull %10) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %57
  %62 = load i16, ptr %9, align 2, !tbaa !45
  %63 = load i16, ptr %10, align 2, !tbaa !45
  %64 = add i16 %63, %62
  store i16 %64, ptr %10, align 2, !tbaa !45
  %65 = call i32 @SetMatrixElement(ptr noundef %17, i64 noundef %40, i64 noundef %54, ptr noundef nonnull %10) #18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = add nuw nsw i64 %58, 1
  %69 = call i32 @GetMatrixElement(ptr noundef %35, i64 noundef %38, i64 noundef %68, ptr noundef nonnull %10) #18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i16, ptr %9, align 2, !tbaa !45
  %73 = load i16, ptr %10, align 2, !tbaa !45
  %74 = add i16 %73, %72
  store i16 %74, ptr %10, align 2, !tbaa !45
  %75 = call i32 @SetMatrixElement(ptr noundef %17, i64 noundef %41, i64 noundef %54, ptr noundef nonnull %10) #18
  br label %76

76:                                               ; preds = %71, %67, %61, %57, %53
  %77 = add nuw nsw i64 %54, 1
  %78 = call i64 @GetMatrixRows(ptr noundef %35) #18
  %79 = add i64 %78, %32
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %53, label %42, !llvm.loop !67

81:                                               ; preds = %106, %42
  %82 = phi i64 [ %43, %42 ], [ %107, %106 ]
  %83 = call i64 @GetMatrixRows(ptr noundef %35) #18
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %81
  %86 = add nsw i64 %30, %26
  %87 = shl nuw nsw i64 %30, 1
  %88 = add nsw i64 %87, %26
  %89 = or disjoint i64 %88, 1
  br label %111

90:                                               ; preds = %47, %106
  %91 = phi i64 [ %43, %47 ], [ %107, %106 ]
  %92 = call i32 @GetMatrixElement(ptr noundef %35, i64 noundef %48, i64 noundef %91, ptr noundef nonnull %9) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %90
  %95 = add nuw nsw i64 %91, %30
  %96 = call i32 @GetMatrixElement(ptr noundef %35, i64 noundef %49, i64 noundef %95, ptr noundef nonnull %10) #18
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i16, ptr %9, align 2, !tbaa !45
  %100 = load i16, ptr %10, align 2, !tbaa !45
  %101 = add i16 %100, %99
  store i16 %101, ptr %10, align 2, !tbaa !45
  %102 = call i32 @SetMatrixElement(ptr noundef %17, i64 noundef %51, i64 noundef %91, ptr noundef nonnull %10) #18
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %98
  %105 = call i32 @SetMatrixElement(ptr noundef %17, i64 noundef %52, i64 noundef %91, ptr noundef nonnull %9) #18
  br label %106

106:                                              ; preds = %104, %98, %94, %90
  %107 = add nuw nsw i64 %91, 1
  %108 = call i64 @GetMatrixRows(ptr noundef %35) #18
  %109 = sub i64 %108, %30
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %90, label %81, !llvm.loop !68

111:                                              ; preds = %85, %120
  %112 = phi i64 [ %82, %85 ], [ %121, %120 ]
  %113 = call i32 @GetMatrixElement(ptr noundef %35, i64 noundef %86, i64 noundef %112, ptr noundef nonnull %9) #18
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = call i32 @SetMatrixElement(ptr noundef %17, i64 noundef %88, i64 noundef %112, ptr noundef nonnull %9) #18
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call i32 @SetMatrixElement(ptr noundef %17, i64 noundef %89, i64 noundef %112, ptr noundef nonnull %9) #18
  br label %120

120:                                              ; preds = %118, %115, %111
  %121 = add nuw nsw i64 %112, 1
  %122 = call i64 @GetMatrixRows(ptr noundef %35) #18
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %111, label %124, !llvm.loop !69

124:                                              ; preds = %120, %81
  %125 = add nuw nsw i64 %30, 1
  %126 = icmp eq i64 %125, %16
  br i1 %126, label %127, label %28, !llvm.loop !70

127:                                              ; preds = %124, %25
  %128 = phi ptr [ %27, %25 ], [ %35, %124 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  %129 = add nsw i64 %26, %20
  %130 = call i64 @GetMatrixColumns(ptr noundef %128) #18
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %25, label %132, !llvm.loop !71

132:                                              ; preds = %127, %21
  %133 = phi ptr [ %22, %21 ], [ %128, %127 ]
  store ptr %17, ptr %8, align 8, !tbaa !40
  %134 = call i64 @GetMatrixColumns(ptr noundef %17) #18
  %135 = icmp ult i64 %20, %134
  br i1 %135, label %14, label %136, !llvm.loop !72

136:                                              ; preds = %132, %5
  %137 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %138 = and i64 %137, 576460752303423487
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = call i32 @GetImagePixelCacheType(ptr noundef %0) #18
  %142 = icmp eq i32 %141, 3
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = call i32 @GetImagePixelCacheType(ptr noundef %0) #18
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %152

148:                                              ; preds = %143, %140, %136
  %149 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %150 = icmp ult i64 %149, 2
  %151 = select i1 %150, i64 1, i64 2
  br label %152

152:                                              ; preds = %148, %146
  %153 = phi i64 [ %147, %146 ], [ %151, %148 ]
  %154 = trunc i64 %153 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %11, i32 %154)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @RadonProjection.omp_outlined, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RadonTransform.omp_outlined.9(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 2 dereferenceable(512) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8) #8 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = load ptr, ptr %2, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !43
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %117

20:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store i64 0, ptr %10, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  store i64 %18, ptr %11, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  store i64 1, ptr %12, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 0, ptr %13, align 4, !tbaa !47
  %21 = load i32, ptr %0, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %22 = load i64, ptr %11, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %11, align 8, !tbaa !28
  %24 = load i64, ptr %10, align 8, !tbaa !28
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %116, label %26

26:                                               ; preds = %20, %108
  %27 = phi i64 [ %114, %108 ], [ %23, %20 ]
  %28 = phi i64 [ %112, %108 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %108, label %30

30:                                               ; preds = %26, %102
  %31 = phi i64 [ %103, %102 ], [ %28, %26 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  %32 = load i32, ptr %3, align 4, !tbaa !47
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %102, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !40
  %36 = load ptr, ptr %2, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !6
  %39 = load ptr, ptr %5, align 8, !tbaa !40
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %2, align 8, !tbaa !40
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !6
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %48, label %102

47:                                               ; preds = %34
  store i32 0, ptr %3, align 4, !tbaa !47
  br label %102

48:                                               ; preds = %42, %83
  %49 = phi ptr [ %84, %83 ], [ %43, %42 ]
  %50 = phi i64 [ %87, %83 ], [ 0, %42 ]
  %51 = phi i64 [ %86, %83 ], [ 0, %42 ]
  %52 = phi i64 [ %89, %83 ], [ 0, %42 ]
  %53 = phi i64 [ %85, %83 ], [ 0, %42 ]
  %54 = phi ptr [ %88, %83 ], [ %40, %42 ]
  %55 = shl i64 %50, 1
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 0, i32 2
  %57 = load i16, ptr %56, align 2, !tbaa !61
  %58 = uitofp i16 %57 to double
  %59 = load double, ptr %6, align 8, !tbaa !41
  %60 = fcmp ogt double %59, %58
  br i1 %60, label %70, label %61

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 0, i32 1
  %63 = load i16, ptr %62, align 2, !tbaa !62
  %64 = uitofp i16 %63 to double
  %65 = fcmp ogt double %59, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i16, ptr %54, align 2, !tbaa !63
  %68 = uitofp i16 %67 to double
  %69 = fcmp ogt double %59, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %61, %48
  %71 = or disjoint i64 %55, 1
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i64 [ %71, %70 ], [ %55, %66 ]
  %74 = add i64 %51, 1
  %75 = icmp eq i64 %74, 8
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = getelementptr inbounds [256 x i16], ptr %7, i64 0, i64 %73
  %78 = load i16, ptr %77, align 2, !tbaa !45
  store i16 %78, ptr %14, align 2, !tbaa !45
  %79 = load ptr, ptr %8, align 8, !tbaa !40
  %80 = add nsw i64 %53, 1
  %81 = call i32 @SetMatrixElement(ptr noundef %79, i64 noundef %53, i64 noundef %31, ptr noundef nonnull %14) #18
  %82 = load ptr, ptr %2, align 8, !tbaa !40
  br label %83

83:                                               ; preds = %76, %72
  %84 = phi ptr [ %82, %76 ], [ %49, %72 ]
  %85 = phi i64 [ %80, %76 ], [ %53, %72 ]
  %86 = phi i64 [ 0, %76 ], [ %74, %72 ]
  %87 = phi i64 [ 0, %76 ], [ %73, %72 ]
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %89 = add nuw nsw i64 %52, 1
  %90 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 7
  %91 = load i64, ptr %90, align 8, !tbaa !6
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %48, label %93, !llvm.loop !73

93:                                               ; preds = %83
  %94 = icmp eq i64 %86, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %93
  %96 = sub i64 8, %86
  %97 = shl i64 %87, %96
  %98 = getelementptr inbounds [256 x i16], ptr %7, i64 0, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !45
  store i16 %99, ptr %14, align 2, !tbaa !45
  %100 = load ptr, ptr %8, align 8, !tbaa !40
  %101 = call i32 @SetMatrixElement(ptr noundef %100, i64 noundef %85, i64 noundef %31, ptr noundef nonnull %14) #18
  br label %102

102:                                              ; preds = %42, %93, %95, %30, %47
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %103 = add nsw i64 %31, 1
  %104 = load i64, ptr %11, align 8, !tbaa !28
  %105 = icmp slt i64 %31, %104
  br i1 %105, label %30, label %106

106:                                              ; preds = %102
  %107 = load i64, ptr %10, align 8, !tbaa !28
  br label %108

108:                                              ; preds = %106, %26
  %109 = phi i64 [ %28, %26 ], [ %107, %106 ]
  %110 = phi i64 [ %27, %26 ], [ %104, %106 ]
  %111 = load i64, ptr %12, align 8, !tbaa !28
  %112 = add nsw i64 %111, %109
  store i64 %112, ptr %10, align 8, !tbaa !28
  %113 = add nsw i64 %111, %110
  %114 = call i64 @llvm.smin.i64(i64 %113, i64 %18)
  store i64 %114, ptr %11, align 8, !tbaa !28
  %115 = icmp sgt i64 %112, %114
  br i1 %115, label %116, label %26

116:                                              ; preds = %108, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %117

117:                                              ; preds = %116, %9
  ret void
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetMatrixColumns(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetMatrixRows(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RadonProjection.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4) #8 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = load ptr, ptr %2, align 8, !tbaa !40
  %13 = tail call i64 @GetMatrixColumns(ptr noundef %12) #18
  %14 = add nsw i64 %13, -1
  %15 = icmp sgt i64 %13, 0
  br i1 %15, label %16, label %84

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  store i64 %14, ptr %7, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 1, ptr %8, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !tbaa !47
  %17 = load i32, ptr %0, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %17, i32 33, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i64 1, i64 4)
  %18 = load i64, ptr %7, align 8
  %19 = call i64 @llvm.smin.i64(i64 %18, i64 %14)
  store i64 %19, ptr %7, align 8, !tbaa !28
  %20 = load i64, ptr %6, align 8, !tbaa !28
  %21 = icmp sgt i64 %20, %19
  br i1 %21, label %83, label %22

22:                                               ; preds = %16, %75
  %23 = phi i64 [ %81, %75 ], [ %19, %16 ]
  %24 = phi i64 [ %79, %75 ], [ %20, %16 ]
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %75, label %26

26:                                               ; preds = %22, %60
  %27 = phi i64 [ %70, %60 ], [ %24, %22 ]
  %28 = load ptr, ptr %2, align 8, !tbaa !40
  %29 = call i64 @GetMatrixRows(ptr noundef %28) #18
  %30 = add i64 %29, -1
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %26, %53
  %33 = phi i64 [ %55, %53 ], [ 0, %26 ]
  %34 = phi i64 [ %54, %53 ], [ 0, %26 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  %35 = load ptr, ptr %2, align 8, !tbaa !40
  %36 = call i32 @GetMatrixElement(ptr noundef %35, i64 noundef %27, i64 noundef %34, ptr noundef nonnull %10) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %34, 1
  br label %53

40:                                               ; preds = %32
  %41 = load ptr, ptr %2, align 8, !tbaa !40
  %42 = add nuw nsw i64 %34, 1
  %43 = call i32 @GetMatrixElement(ptr noundef %41, i64 noundef %27, i64 noundef %42, ptr noundef nonnull %11) #18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load i16, ptr %10, align 2, !tbaa !45
  %47 = zext i16 %46 to i64
  %48 = load i16, ptr %11, align 2, !tbaa !45
  %49 = zext i16 %48 to i64
  %50 = sub nsw i64 %47, %49
  %51 = mul nsw i64 %50, %50
  %52 = add i64 %51, %33
  br label %53

53:                                               ; preds = %38, %40, %45
  %54 = phi i64 [ %39, %38 ], [ %42, %40 ], [ %42, %45 ]
  %55 = phi i64 [ %33, %38 ], [ %33, %40 ], [ %52, %45 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  %56 = load ptr, ptr %2, align 8, !tbaa !40
  %57 = call i64 @GetMatrixRows(ptr noundef %56) #18
  %58 = add i64 %57, -1
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %32, label %60, !llvm.loop !74

60:                                               ; preds = %53, %26
  %61 = phi i64 [ 0, %26 ], [ %55, %53 ]
  %62 = load ptr, ptr %3, align 8, !tbaa !40
  %63 = load ptr, ptr %2, align 8, !tbaa !40
  %64 = call i64 @GetMatrixColumns(ptr noundef %63) #18
  %65 = load i64, ptr %4, align 8, !tbaa !28
  %66 = mul nsw i64 %65, %27
  %67 = getelementptr i64, ptr %62, i64 %64
  %68 = getelementptr i64, ptr %67, i64 %66
  %69 = getelementptr i64, ptr %68, i64 -1
  store i64 %61, ptr %69, align 8, !tbaa !28
  %70 = add nsw i64 %27, 1
  %71 = load i64, ptr %7, align 8, !tbaa !28
  %72 = icmp slt i64 %27, %71
  br i1 %72, label %26, label %73

73:                                               ; preds = %60
  %74 = load i64, ptr %6, align 8, !tbaa !28
  br label %75

75:                                               ; preds = %73, %22
  %76 = phi i64 [ %24, %22 ], [ %74, %73 ]
  %77 = phi i64 [ %23, %22 ], [ %71, %73 ]
  %78 = load i64, ptr %8, align 8, !tbaa !28
  %79 = add nsw i64 %78, %76
  store i64 %79, ptr %6, align 8, !tbaa !28
  %80 = add nsw i64 %78, %77
  %81 = call i64 @llvm.smin.i64(i64 %80, i64 %14)
  store i64 %81, ptr %7, align 8, !tbaa !28
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %22

83:                                               ; preds = %75, %16
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %84

84:                                               ; preds = %83, %5
  ret void
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 {
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !40
  store ptr %2, ptr %5, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %17 = load i64, ptr %16, align 8, !tbaa.struct !75
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa.struct !76
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa.struct !77
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa.struct !78
  %24 = and i64 %1, 3
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  br label %178

28:                                               ; preds = %3
  %29 = and i64 %1, 1
  %30 = icmp eq i64 %29, 0
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %35 = select i1 %30, ptr %32, ptr %34
  %36 = select i1 %30, ptr %31, ptr %33
  %37 = load i64, ptr %36, align 8, !tbaa !28
  %38 = load i64, ptr %35, align 8, !tbaa !28
  %39 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %37, i64 noundef %38, i32 noundef 1, ptr noundef %2) #18
  store ptr %39, ptr %8, align 8, !tbaa !40
  %40 = icmp eq ptr %39, null
  br i1 %40, label %178, label %41

41:                                               ; preds = %28
  store i32 1, ptr %9, align 4, !tbaa !47
  store i64 0, ptr %10, align 8, !tbaa !79
  %42 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #18
  store ptr %42, ptr %6, align 8, !tbaa !40
  %43 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %39, ptr noundef %2) #18
  store ptr %43, ptr %7, align 8, !tbaa !40
  switch i64 %24, label %155 [
    i64 1, label %44
    i64 2, label %82
    i64 3, label %117
  ]

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  call void @GetPixelCacheTileSize(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull %11) #18
  %45 = load ptr, ptr %4, align 8, !tbaa !40
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !6
  store i64 %47, ptr %12, align 8, !tbaa !28
  %48 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %49 = and i64 %48, 576460752303423487
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load ptr, ptr %4, align 8, !tbaa !40
  %53 = call i32 @GetImagePixelCacheType(ptr noundef %52) #18
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %4, align 8, !tbaa !40
  %57 = call i32 @GetImagePixelCacheType(ptr noundef %56) #18
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %65

61:                                               ; preds = %55, %51, %44
  %62 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %63 = icmp ult i64 %62, 2
  %64 = select i1 %63, i64 1, i64 2
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i64 [ %60, %59 ], [ %64, %61 ]
  %67 = trunc i64 %66 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %67)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @IntegralRotateImage.omp_outlined, ptr nonnull %4, ptr nonnull %11, ptr nonnull %9, ptr nonnull %12, ptr nonnull %6, ptr nonnull %5, ptr nonnull %7, ptr nonnull %8, ptr nonnull %10)
  %68 = load ptr, ptr %4, align 8, !tbaa !40
  %69 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 8
  %70 = load i64, ptr %69, align 8, !tbaa !43
  %71 = add nsw i64 %70, -1
  %72 = call fastcc i32 @SetImageProgress(ptr noundef %68, ptr noundef nonnull @.str.10, i64 noundef %71, i64 noundef %70) #19
  %73 = icmp eq i64 %19, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load ptr, ptr %8, align 8, !tbaa !40
  %76 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 7
  %77 = load i64, ptr %76, align 8, !tbaa !6
  %78 = add i64 %23, %77
  %79 = sub i64 %19, %78
  br label %80

80:                                               ; preds = %74, %65
  %81 = phi i64 [ %79, %74 ], [ %23, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %156

82:                                               ; preds = %41
  %83 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %84 = and i64 %83, 576460752303423487
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %98

94:                                               ; preds = %89, %86, %82
  %95 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %96 = icmp ult i64 %95, 2
  %97 = select i1 %96, i64 1, i64 2
  br label %98

98:                                               ; preds = %94, %92
  %99 = phi i64 [ %93, %92 ], [ %97, %94 ]
  %100 = trunc i64 %99 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %100)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @IntegralRotateImage.omp_outlined.11, ptr nonnull %4, ptr nonnull %9, ptr nonnull %6, ptr nonnull %5, ptr nonnull %7, ptr nonnull %10)
  %101 = icmp eq i64 %17, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %8, align 8, !tbaa !40
  %104 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 7
  %105 = load i64, ptr %104, align 8, !tbaa !6
  %106 = add i64 %21, %105
  %107 = sub i64 %17, %106
  br label %108

108:                                              ; preds = %102, %98
  %109 = phi i64 [ %107, %102 ], [ %21, %98 ]
  %110 = icmp eq i64 %19, 0
  br i1 %110, label %156, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %8, align 8, !tbaa !40
  %113 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 8
  %114 = load i64, ptr %113, align 8, !tbaa !43
  %115 = add i64 %23, %114
  %116 = sub i64 %19, %115
  br label %156

117:                                              ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  call void @GetPixelCacheTileSize(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef nonnull %13) #18
  %118 = load ptr, ptr %4, align 8, !tbaa !40
  %119 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 7
  %120 = load i64, ptr %119, align 8, !tbaa !6
  store i64 %120, ptr %14, align 8, !tbaa !28
  %121 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %122 = and i64 %121, 576460752303423487
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load ptr, ptr %4, align 8, !tbaa !40
  %126 = call i32 @GetImagePixelCacheType(ptr noundef %125) #18
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %4, align 8, !tbaa !40
  %130 = call i32 @GetImagePixelCacheType(ptr noundef %129) #18
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %138

134:                                              ; preds = %128, %124, %117
  %135 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %136 = icmp ult i64 %135, 2
  %137 = select i1 %136, i64 1, i64 2
  br label %138

138:                                              ; preds = %134, %132
  %139 = phi i64 [ %133, %132 ], [ %137, %134 ]
  %140 = trunc i64 %139 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %140)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @IntegralRotateImage.omp_outlined.12, ptr nonnull %4, ptr nonnull %13, ptr nonnull %9, ptr nonnull %14, ptr nonnull %6, ptr nonnull %5, ptr nonnull %7, ptr nonnull %8, ptr nonnull %10)
  %141 = load ptr, ptr %4, align 8, !tbaa !40
  %142 = getelementptr inbounds %struct._Image, ptr %141, i64 0, i32 8
  %143 = load i64, ptr %142, align 8, !tbaa !43
  %144 = add nsw i64 %143, -1
  %145 = call fastcc i32 @SetImageProgress(ptr noundef %141, ptr noundef nonnull @.str.10, i64 noundef %144, i64 noundef %143) #19
  %146 = icmp eq i64 %17, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %138
  %148 = load ptr, ptr %8, align 8, !tbaa !40
  %149 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 8
  %150 = load i64, ptr %149, align 8, !tbaa !43
  %151 = add i64 %21, %150
  %152 = sub i64 %17, %151
  br label %153

153:                                              ; preds = %147, %138
  %154 = phi i64 [ %152, %147 ], [ %21, %138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %156

155:                                              ; preds = %41
  unreachable

156:                                              ; preds = %108, %111, %153, %80
  %157 = phi i64 [ %23, %153 ], [ %109, %111 ], [ %109, %108 ], [ %81, %80 ]
  %158 = phi i64 [ %17, %153 ], [ %19, %111 ], [ 0, %108 ], [ %17, %80 ]
  %159 = phi i64 [ %19, %153 ], [ %17, %111 ], [ %17, %108 ], [ %19, %80 ]
  %160 = phi i64 [ %154, %153 ], [ %116, %111 ], [ %23, %108 ], [ %21, %80 ]
  %161 = load ptr, ptr %7, align 8, !tbaa !40
  %162 = call ptr @DestroyCacheView(ptr noundef %161) #18
  store ptr %162, ptr %7, align 8, !tbaa !40
  %163 = load ptr, ptr %6, align 8, !tbaa !40
  %164 = call ptr @DestroyCacheView(ptr noundef %163) #18
  store ptr %164, ptr %6, align 8, !tbaa !40
  %165 = load ptr, ptr %4, align 8, !tbaa !40
  %166 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 77
  %167 = load i32, ptr %166, align 8, !tbaa !80
  %168 = load ptr, ptr %8, align 8, !tbaa !40
  %169 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 77
  store i32 %167, ptr %169, align 8, !tbaa !80
  %170 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 26
  store i64 %159, ptr %170, align 8, !tbaa.struct !75
  %171 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 26, i32 1
  store i64 %158, ptr %171, align 8, !tbaa.struct !76
  %172 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 26, i32 2
  store i64 %157, ptr %172, align 8, !tbaa.struct !77
  %173 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 26, i32 3
  store i64 %160, ptr %173, align 8, !tbaa.struct !78
  %174 = load i32, ptr %9, align 4, !tbaa !47
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %156
  %177 = call ptr @DestroyImage(ptr noundef nonnull %168) #18
  br label %178

178:                                              ; preds = %156, %176, %28, %26
  %179 = phi ptr [ %27, %26 ], [ null, %28 ], [ %177, %176 ], [ %168, %156 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret ptr %179
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetPixelCacheTileSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @IntegralRotateImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #8 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !43
  %19 = load i64, ptr %3, align 8, !tbaa !28
  %20 = add i64 %18, -1
  %21 = add i64 %20, %19
  %22 = sdiv i64 %21, %19
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %18, 0
  br i1 %24, label %25, label %173

25:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  store i64 0, ptr %12, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  store i64 %23, ptr %13, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  store i64 1, ptr %14, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  store i32 0, ptr %15, align 4, !tbaa !47
  %26 = load i32, ptr %0, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %27 = load i64, ptr %13, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %13, align 8, !tbaa !28
  %29 = load i64, ptr %12, align 8, !tbaa !28
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %172, label %31

31:                                               ; preds = %25, %164
  %32 = phi i64 [ %170, %164 ], [ %28, %25 ]
  %33 = phi i64 [ %168, %164 ], [ %29, %25 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %164, label %35

35:                                               ; preds = %31, %158
  %36 = phi i64 [ %159, %158 ], [ %33, %31 ]
  %37 = mul nsw i64 %36, %19
  %38 = load i32, ptr %4, align 4, !tbaa !47
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %158, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !6
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %143

45:                                               ; preds = %40
  %46 = load i64, ptr %5, align 8, !tbaa !28
  br label %47

47:                                               ; preds = %45, %136
  %48 = phi i64 [ %46, %45 ], [ %137, %136 ]
  %49 = phi i64 [ %43, %45 ], [ %141, %136 ]
  %50 = phi ptr [ %41, %45 ], [ %139, %136 ]
  %51 = phi i64 [ 0, %45 ], [ %138, %136 ]
  %52 = add nsw i64 %48, %51
  %53 = icmp sgt i64 %52, %49
  %54 = sub i64 %49, %52
  %55 = select i1 %53, i64 %54, i64 0
  %56 = add i64 %55, %48
  %57 = load i64, ptr %3, align 8, !tbaa !28
  %58 = add nsw i64 %57, %37
  %59 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 8
  %60 = load i64, ptr %59, align 8, !tbaa !43
  %61 = icmp sgt i64 %58, %60
  %62 = sub i64 %60, %58
  %63 = select i1 %61, i64 %62, i64 0
  %64 = add i64 %63, %57
  %65 = load ptr, ptr %6, align 8, !tbaa !40
  %66 = load ptr, ptr %7, align 8, !tbaa !40
  %67 = call ptr @GetCacheViewVirtualPixels(ptr noundef %65, i64 noundef %51, i64 noundef %37, i64 noundef %56, i64 noundef %64, ptr noundef %66) #20
  %68 = icmp eq ptr %67, null
  br i1 %68, label %134, label %69

69:                                               ; preds = %47
  %70 = load ptr, ptr %6, align 8, !tbaa !40
  %71 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %70) #18
  %72 = icmp sgt i64 %56, 0
  br i1 %72, label %73, label %136

73:                                               ; preds = %69
  %74 = add i64 %64, %37
  %75 = add i64 %64, -1
  %76 = mul i64 %75, %56
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 %76
  %78 = icmp slt i64 %64, 1
  %79 = sub nsw i64 0, %56
  %80 = icmp eq ptr %71, null
  %81 = getelementptr inbounds i16, ptr %71, i64 %76
  br label %82

82:                                               ; preds = %73, %131
  %83 = phi i64 [ 0, %73 ], [ %132, %131 ]
  %84 = load i32, ptr %4, align 4, !tbaa !47
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %131, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %8, align 8, !tbaa !40
  %88 = load ptr, ptr %9, align 8, !tbaa !40
  %89 = getelementptr inbounds %struct._Image, ptr %88, i64 0, i32 7
  %90 = load i64, ptr %89, align 8, !tbaa !6
  %91 = sub i64 %90, %74
  %92 = add nsw i64 %83, %51
  %93 = load ptr, ptr %7, align 8, !tbaa !40
  %94 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %87, i64 noundef %91, i64 noundef %92, i64 noundef %64, i64 noundef 1, ptr noundef %93) #20
  %95 = icmp eq ptr %94, null
  br i1 %95, label %130, label %96

96:                                               ; preds = %86
  br i1 %78, label %108, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 %83
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ %106, %99 ], [ 0, %97 ]
  %101 = phi ptr [ %105, %99 ], [ %98, %97 ]
  %102 = phi ptr [ %103, %99 ], [ %94, %97 ]
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 1
  %104 = load i64, ptr %101, align 2
  store i64 %104, ptr %102, align 2
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 %79
  %106 = add nuw nsw i64 %100, 1
  %107 = icmp slt i64 %106, %64
  br i1 %107, label %99, label %108, !llvm.loop !81

108:                                              ; preds = %99, %96
  %109 = load ptr, ptr %8, align 8, !tbaa !40
  %110 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %109) #18
  %111 = icmp eq ptr %110, null
  %112 = select i1 %80, i1 true, i1 %111
  %113 = or i1 %112, %78
  br i1 %113, label %125, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds i16, ptr %81, i64 %83
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi ptr [ %122, %116 ], [ %115, %114 ]
  %118 = phi i64 [ %123, %116 ], [ 0, %114 ]
  %119 = phi ptr [ %121, %116 ], [ %110, %114 ]
  %120 = load i16, ptr %117, align 2, !tbaa !45
  %121 = getelementptr inbounds i16, ptr %119, i64 1
  store i16 %120, ptr %119, align 2, !tbaa !45
  %122 = getelementptr inbounds i16, ptr %117, i64 %79
  %123 = add nuw nsw i64 %118, 1
  %124 = icmp slt i64 %123, %64
  br i1 %124, label %116, label %125, !llvm.loop !82

125:                                              ; preds = %116, %108
  %126 = load ptr, ptr %8, align 8, !tbaa !40
  %127 = load ptr, ptr %7, align 8, !tbaa !40
  %128 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %126, ptr noundef %127) #20
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %86
  store i32 0, ptr %4, align 4, !tbaa !47
  br label %131

131:                                              ; preds = %130, %125, %82
  %132 = add nuw nsw i64 %83, 1
  %133 = icmp slt i64 %132, %56
  br i1 %133, label %82, label %136, !llvm.loop !83

134:                                              ; preds = %47
  store i32 0, ptr %4, align 4, !tbaa !47
  %135 = load ptr, ptr %2, align 8, !tbaa !40
  br label %143

136:                                              ; preds = %131, %69
  %137 = load i64, ptr %5, align 8, !tbaa !28
  %138 = add nsw i64 %137, %51
  %139 = load ptr, ptr %2, align 8, !tbaa !40
  %140 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 7
  %141 = load i64, ptr %140, align 8, !tbaa !6
  %142 = icmp slt i64 %138, %141
  br i1 %142, label %47, label %143, !llvm.loop !84

143:                                              ; preds = %136, %40, %134
  %144 = phi ptr [ %41, %40 ], [ %135, %134 ], [ %139, %136 ]
  %145 = getelementptr inbounds %struct._Image, ptr %144, i64 0, i32 47
  %146 = load ptr, ptr %145, align 8, !tbaa !85
  %147 = icmp eq ptr %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %143
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_IntegralRotateImage.var)
  %149 = load ptr, ptr %2, align 8, !tbaa !40
  %150 = load i64, ptr %3, align 8, !tbaa !28
  %151 = load i64, ptr %10, align 8, !tbaa !79
  %152 = add i64 %151, %150
  store i64 %152, ptr %10, align 8, !tbaa !79
  %153 = getelementptr inbounds %struct._Image, ptr %149, i64 0, i32 8
  %154 = load i64, ptr %153, align 8, !tbaa !43
  %155 = call fastcc i32 @SetImageProgress(ptr noundef %149, ptr noundef nonnull @.str.10, i64 noundef %152, i64 noundef %154) #19
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_IntegralRotateImage.var)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 0, ptr %4, align 4, !tbaa !47
  br label %158

158:                                              ; preds = %143, %157, %148, %35
  %159 = add nsw i64 %36, 1
  %160 = load i64, ptr %13, align 8, !tbaa !28
  %161 = icmp slt i64 %36, %160
  br i1 %161, label %35, label %162

162:                                              ; preds = %158
  %163 = load i64, ptr %12, align 8, !tbaa !28
  br label %164

164:                                              ; preds = %162, %31
  %165 = phi i64 [ %33, %31 ], [ %163, %162 ]
  %166 = phi i64 [ %32, %31 ], [ %160, %162 ]
  %167 = load i64, ptr %14, align 8, !tbaa !28
  %168 = add nsw i64 %167, %165
  store i64 %168, ptr %12, align 8, !tbaa !28
  %169 = add nsw i64 %167, %166
  %170 = call i64 @llvm.smin.i64(i64 %169, i64 %23)
  store i64 %170, ptr %13, align 8, !tbaa !28
  %171 = icmp sgt i64 %168, %170
  br i1 %171, label %172, label %31

172:                                              ; preds = %164, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %173

173:                                              ; preds = %172, %11
  ret void
}

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #13

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef %1, ptr noundef nonnull %10) #18
  %12 = load ptr, ptr %6, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #18
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  ret i32 %17
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @IntegralRotateImage.omp_outlined.11(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7) #8 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !43
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %127

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store i64 0, ptr %9, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store i64 %16, ptr %10, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  store i64 1, ptr %11, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !tbaa !47
  %19 = load i32, ptr %0, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !28
  %22 = load i64, ptr %9, align 8, !tbaa !28
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %126, label %24

24:                                               ; preds = %18, %118
  %25 = phi i64 [ %124, %118 ], [ %21, %18 ]
  %26 = phi i64 [ %122, %118 ], [ %22, %18 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %118, label %28

28:                                               ; preds = %24, %112
  %29 = phi i64 [ %113, %112 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4, !tbaa !47
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %112, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !40
  %34 = load ptr, ptr %2, align 8, !tbaa !40
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !6
  %37 = load ptr, ptr %5, align 8, !tbaa !40
  %38 = call ptr @GetCacheViewVirtualPixels(ptr noundef %33, i64 noundef 0, i64 noundef %29, i64 noundef %36, i64 noundef 1, ptr noundef %37) #20
  %39 = load ptr, ptr %6, align 8, !tbaa !40
  %40 = load ptr, ptr %2, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 8
  %42 = load i64, ptr %41, align 8, !tbaa !43
  %43 = xor i64 %29, -1
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !6
  %47 = load ptr, ptr %5, align 8, !tbaa !40
  %48 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %44, i64 noundef %46, i64 noundef 1, ptr noundef %47) #20
  %49 = icmp eq ptr %38, null
  %50 = icmp eq ptr %48, null
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %111, label %52

52:                                               ; preds = %32
  %53 = load ptr, ptr %4, align 8, !tbaa !40
  %54 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %53) #18
  %55 = load ptr, ptr %6, align 8, !tbaa !40
  %56 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %55) #18
  %57 = load ptr, ptr %2, align 8, !tbaa !40
  %58 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !6
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 %59
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ %70, %63 ], [ 0, %61 ]
  %65 = phi ptr [ %67, %63 ], [ %62, %61 ]
  %66 = phi ptr [ %68, %63 ], [ %38, %61 ]
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 -1
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %69 = load i64, ptr %66, align 2
  store i64 %69, ptr %67, align 2
  %70 = add nuw nsw i64 %64, 1
  %71 = load ptr, ptr %2, align 8, !tbaa !40
  %72 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %73 = load i64, ptr %72, align 8, !tbaa !6
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %63, label %75, !llvm.loop !87

75:                                               ; preds = %63
  %76 = icmp ne ptr %54, null
  %77 = icmp ne ptr %56, null
  %78 = select i1 %76, i1 %77, i1 false
  %79 = icmp sgt i64 %73, 0
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = getelementptr inbounds i16, ptr %56, i64 %73
  %83 = getelementptr i16, ptr %82, i64 -1
  br label %84

84:                                               ; preds = %81, %84
  %85 = phi i64 [ 0, %81 ], [ %90, %84 ]
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i16, ptr %54, i64 %85
  %88 = load i16, ptr %87, align 2, !tbaa !45
  %89 = getelementptr i16, ptr %83, i64 %86
  store i16 %88, ptr %89, align 2, !tbaa !45
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %73
  br i1 %91, label %92, label %84, !llvm.loop !88

92:                                               ; preds = %84, %52, %75
  %93 = load ptr, ptr %6, align 8, !tbaa !40
  %94 = load ptr, ptr %5, align 8, !tbaa !40
  %95 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %93, ptr noundef %94) #20
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, ptr %3, align 4, !tbaa !47
  br label %98

98:                                               ; preds = %97, %92
  %99 = load ptr, ptr %2, align 8, !tbaa !40
  %100 = getelementptr inbounds %struct._Image, ptr %99, i64 0, i32 47
  %101 = load ptr, ptr %100, align 8, !tbaa !85
  %102 = icmp eq ptr %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %98
  call void @__kmpc_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_IntegralRotateImage.var)
  %104 = load ptr, ptr %2, align 8, !tbaa !40
  %105 = load i64, ptr %7, align 8, !tbaa !79
  %106 = add nsw i64 %105, 1
  store i64 %106, ptr %7, align 8, !tbaa !79
  %107 = getelementptr inbounds %struct._Image, ptr %104, i64 0, i32 8
  %108 = load i64, ptr %107, align 8, !tbaa !43
  %109 = call fastcc i32 @SetImageProgress(ptr noundef %104, ptr noundef nonnull @.str.10, i64 noundef %105, i64 noundef %108) #19
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_IntegralRotateImage.var)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103, %32
  store i32 0, ptr %3, align 4, !tbaa !47
  br label %112

112:                                              ; preds = %111, %98, %103, %28
  %113 = add nsw i64 %29, 1
  %114 = load i64, ptr %10, align 8, !tbaa !28
  %115 = icmp slt i64 %29, %114
  br i1 %115, label %28, label %116

116:                                              ; preds = %112
  %117 = load i64, ptr %9, align 8, !tbaa !28
  br label %118

118:                                              ; preds = %116, %24
  %119 = phi i64 [ %26, %24 ], [ %117, %116 ]
  %120 = phi i64 [ %25, %24 ], [ %114, %116 ]
  %121 = load i64, ptr %11, align 8, !tbaa !28
  %122 = add nsw i64 %121, %119
  store i64 %122, ptr %9, align 8, !tbaa !28
  %123 = add nsw i64 %121, %120
  %124 = call i64 @llvm.smin.i64(i64 %123, i64 %16)
  store i64 %124, ptr %10, align 8, !tbaa !28
  %125 = icmp sgt i64 %122, %124
  br i1 %125, label %126, label %24

126:                                              ; preds = %118, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %127

127:                                              ; preds = %126, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @IntegralRotateImage.omp_outlined.12(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #8 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !43
  %19 = load i64, ptr %3, align 8, !tbaa !28
  %20 = add i64 %18, -1
  %21 = add i64 %20, %19
  %22 = sdiv i64 %21, %19
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %18, 0
  br i1 %24, label %25, label %172

25:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  store i64 0, ptr %12, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  store i64 %23, ptr %13, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  store i64 1, ptr %14, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  store i32 0, ptr %15, align 4, !tbaa !47
  %26 = load i32, ptr %0, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %27 = load i64, ptr %13, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %13, align 8, !tbaa !28
  %29 = load i64, ptr %12, align 8, !tbaa !28
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %171, label %31

31:                                               ; preds = %25, %163
  %32 = phi i64 [ %169, %163 ], [ %28, %25 ]
  %33 = phi i64 [ %167, %163 ], [ %29, %25 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %163, label %35

35:                                               ; preds = %31, %157
  %36 = phi i64 [ %158, %157 ], [ %33, %31 ]
  %37 = mul nsw i64 %36, %19
  %38 = load i32, ptr %4, align 4, !tbaa !47
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %157, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !6
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %142

45:                                               ; preds = %40
  %46 = load i64, ptr %5, align 8, !tbaa !28
  br label %47

47:                                               ; preds = %45, %135
  %48 = phi i64 [ %136, %135 ], [ %46, %45 ]
  %49 = phi i64 [ %140, %135 ], [ %43, %45 ]
  %50 = phi ptr [ %138, %135 ], [ %41, %45 ]
  %51 = phi i64 [ %137, %135 ], [ 0, %45 ]
  %52 = add nsw i64 %48, %51
  %53 = icmp sgt i64 %52, %49
  %54 = sub i64 %49, %52
  %55 = select i1 %53, i64 %54, i64 0
  %56 = add i64 %55, %48
  %57 = load i64, ptr %3, align 8, !tbaa !28
  %58 = add nsw i64 %57, %37
  %59 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 8
  %60 = load i64, ptr %59, align 8, !tbaa !43
  %61 = icmp sgt i64 %58, %60
  %62 = sub i64 %60, %58
  %63 = select i1 %61, i64 %62, i64 0
  %64 = add i64 %63, %57
  %65 = load ptr, ptr %6, align 8, !tbaa !40
  %66 = load ptr, ptr %7, align 8, !tbaa !40
  %67 = call ptr @GetCacheViewVirtualPixels(ptr noundef %65, i64 noundef %51, i64 noundef %37, i64 noundef %56, i64 noundef %64, ptr noundef %66) #20
  %68 = icmp eq ptr %67, null
  br i1 %68, label %133, label %69

69:                                               ; preds = %47
  %70 = load ptr, ptr %6, align 8, !tbaa !40
  %71 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %70) #18
  %72 = icmp sgt i64 %56, 0
  br i1 %72, label %73, label %135

73:                                               ; preds = %69
  %74 = add i64 %56, %51
  %75 = add nsw i64 %56, -1
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 %75
  %77 = icmp slt i64 %64, 1
  %78 = icmp eq ptr %71, null
  %79 = getelementptr inbounds i16, ptr %71, i64 %75
  br label %80

80:                                               ; preds = %73, %130
  %81 = phi i64 [ 0, %73 ], [ %131, %130 ]
  %82 = load i32, ptr %4, align 4, !tbaa !47
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %130, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %8, align 8, !tbaa !40
  %86 = load ptr, ptr %9, align 8, !tbaa !40
  %87 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 8
  %88 = load i64, ptr %87, align 8, !tbaa !43
  %89 = sub i64 %81, %74
  %90 = add i64 %89, %88
  %91 = load ptr, ptr %7, align 8, !tbaa !40
  %92 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %85, i64 noundef %37, i64 noundef %90, i64 noundef %64, i64 noundef 1, ptr noundef %91) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %129, label %94

94:                                               ; preds = %84
  %95 = sub nsw i64 0, %81
  br i1 %77, label %107, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 %95
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ %105, %98 ], [ 0, %96 ]
  %100 = phi ptr [ %104, %98 ], [ %97, %96 ]
  %101 = phi ptr [ %102, %98 ], [ %92, %96 ]
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 1
  %103 = load i64, ptr %100, align 2
  store i64 %103, ptr %101, align 2
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 %56
  %105 = add nuw nsw i64 %99, 1
  %106 = icmp slt i64 %105, %64
  br i1 %106, label %98, label %107, !llvm.loop !89

107:                                              ; preds = %98, %94
  %108 = load ptr, ptr %8, align 8, !tbaa !40
  %109 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %108) #18
  %110 = icmp eq ptr %109, null
  %111 = select i1 %78, i1 true, i1 %110
  %112 = or i1 %111, %77
  br i1 %112, label %124, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds i16, ptr %79, i64 %95
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi ptr [ %121, %115 ], [ %114, %113 ]
  %117 = phi i64 [ %122, %115 ], [ 0, %113 ]
  %118 = phi ptr [ %120, %115 ], [ %109, %113 ]
  %119 = load i16, ptr %116, align 2, !tbaa !45
  %120 = getelementptr inbounds i16, ptr %118, i64 1
  store i16 %119, ptr %118, align 2, !tbaa !45
  %121 = getelementptr inbounds i16, ptr %116, i64 %56
  %122 = add nuw nsw i64 %117, 1
  %123 = icmp slt i64 %122, %64
  br i1 %123, label %115, label %124, !llvm.loop !90

124:                                              ; preds = %115, %107
  %125 = load ptr, ptr %8, align 8, !tbaa !40
  %126 = load ptr, ptr %7, align 8, !tbaa !40
  %127 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %125, ptr noundef %126) #20
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %84
  store i32 0, ptr %4, align 4, !tbaa !47
  br label %130

130:                                              ; preds = %129, %124, %80
  %131 = add nuw nsw i64 %81, 1
  %132 = icmp eq i64 %131, %56
  br i1 %132, label %135, label %80, !llvm.loop !91

133:                                              ; preds = %47
  store i32 0, ptr %4, align 4, !tbaa !47
  %134 = load ptr, ptr %2, align 8, !tbaa !40
  br label %142

135:                                              ; preds = %130, %69
  %136 = load i64, ptr %5, align 8, !tbaa !28
  %137 = add nsw i64 %136, %51
  %138 = load ptr, ptr %2, align 8, !tbaa !40
  %139 = getelementptr inbounds %struct._Image, ptr %138, i64 0, i32 7
  %140 = load i64, ptr %139, align 8, !tbaa !6
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %47, label %142, !llvm.loop !92

142:                                              ; preds = %135, %40, %133
  %143 = phi ptr [ %41, %40 ], [ %134, %133 ], [ %138, %135 ]
  %144 = getelementptr inbounds %struct._Image, ptr %143, i64 0, i32 47
  %145 = load ptr, ptr %144, align 8, !tbaa !85
  %146 = icmp eq ptr %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_IntegralRotateImage.var)
  %148 = load ptr, ptr %2, align 8, !tbaa !40
  %149 = load i64, ptr %3, align 8, !tbaa !28
  %150 = load i64, ptr %10, align 8, !tbaa !79
  %151 = add i64 %150, %149
  store i64 %151, ptr %10, align 8, !tbaa !79
  %152 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 8
  %153 = load i64, ptr %152, align 8, !tbaa !43
  %154 = call fastcc i32 @SetImageProgress(ptr noundef %148, ptr noundef nonnull @.str.10, i64 noundef %151, i64 noundef %153) #19
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_IntegralRotateImage.var)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 0, ptr %4, align 4, !tbaa !47
  br label %157

157:                                              ; preds = %142, %156, %147, %35
  %158 = add nsw i64 %36, 1
  %159 = load i64, ptr %13, align 8, !tbaa !28
  %160 = icmp slt i64 %36, %159
  br i1 %160, label %35, label %161

161:                                              ; preds = %157
  %162 = load i64, ptr %12, align 8, !tbaa !28
  br label %163

163:                                              ; preds = %161, %31
  %164 = phi i64 [ %33, %31 ], [ %162, %161 ]
  %165 = phi i64 [ %32, %31 ], [ %159, %161 ]
  %166 = load i64, ptr %14, align 8, !tbaa !28
  %167 = add nsw i64 %166, %164
  store i64 %167, ptr %12, align 8, !tbaa !28
  %168 = add nsw i64 %166, %165
  %169 = call i64 @llvm.smin.i64(i64 %168, i64 %23)
  store i64 %169, ptr %13, align 8, !tbaa !28
  %170 = icmp sgt i64 %167, %169
  br i1 %170, label %171, label %31

171:                                              ; preds = %163, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %172

172:                                              ; preds = %171, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShearImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._RectangleInfo, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !30
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1599, ptr noundef nonnull @.str.14, ptr noundef nonnull %11) #18
  br label %13

13:                                               ; preds = %10, %4
  %14 = fcmp une double %1, 0.000000e+00
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = tail call double @fmod(double noundef %1, double noundef 9.000000e+01) #18
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1603, i32 noundef 465, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #18
  br label %138

21:                                               ; preds = %15, %13
  %22 = fcmp une double %2, 0.000000e+00
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = tail call double @fmod(double noundef %2, double noundef 9.000000e+01) #18
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1605, i32 noundef 465, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef nonnull %27) #18
  br label %138

29:                                               ; preds = %23, %21
  %30 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1611, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %33) #18
  br label %138

35:                                               ; preds = %29
  %36 = tail call double @fmod(double noundef %1, double noundef 3.600000e+02) #18
  %37 = tail call fastcc double @DegreesToRadians(double noundef %36) #19
  %38 = tail call double @tan(double noundef %37) #18
  %39 = fneg double %38
  %40 = tail call double @fmod(double noundef %2, double noundef 3.600000e+02) #18
  %41 = tail call fastcc double @DegreesToRadians(double noundef %40) #19
  %42 = tail call double @tan(double noundef %41) #18
  %43 = fcmp oeq double %38, 0.000000e+00
  %44 = fcmp oeq double %42, 0.000000e+00
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %138, label %46

46:                                               ; preds = %35
  %47 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %30, i32 noundef 1) #18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %50) #18
  %51 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #18
  br label %138

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !93
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %30, i32 noundef 6) #18
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %60 = insertelement <2 x double> poison, double %39, i64 0
  %61 = insertelement <2 x double> %60, double %42, i64 1
  %62 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %61)
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %64 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 13
  %65 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 12
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 36
  store i32 13, ptr %67, align 8, !tbaa !94
  %68 = load <2 x i64>, ptr %59, align 8, !tbaa !28
  %69 = uitofp <2 x i64> %68 to <2 x double>
  %70 = extractelement <2 x double> %62, i64 0
  %71 = extractelement <2 x double> %69, i64 1
  %72 = tail call double @llvm.fmuladd.f64(double %70, double %71, double 5.000000e-01)
  %73 = tail call double @llvm.floor.f64(double %72)
  %74 = fptosi double %73 to i64
  %75 = extractelement <2 x i64> %68, i64 0
  %76 = add i64 %75, %74
  %77 = uitofp i64 %76 to double
  %78 = fneg <2 x double> %69
  %79 = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %80 = insertelement <2 x double> %79, double %77, i64 1
  %81 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> %80, <2 x double> %78)
  %82 = fmul <2 x double> %81, <double 5.000000e-01, double 5.000000e-01>
  %83 = fadd <2 x double> %82, %69
  %84 = fadd <2 x double> %83, <double -5.000000e-01, double -5.000000e-01>
  %85 = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %84)
  %86 = fptosi <2 x double> %85 to <2 x i64>
  store i64 %66, ptr %64, align 8
  store <2 x i64> %86, ptr %6, align 16, !tbaa !28
  %87 = call ptr @BorderImage(ptr noundef nonnull %30, ptr noundef nonnull %6, ptr noundef %3) #18
  store ptr %87, ptr %5, align 8, !tbaa !40
  %88 = call ptr @DestroyImage(ptr noundef nonnull %30) #18
  %89 = icmp eq ptr %87, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %58
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %92 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1642, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %91) #18
  br label %138

93:                                               ; preds = %58
  %94 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !93
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %87, i32 noundef 6) #18
  br label %99

99:                                               ; preds = %97, %93
  %100 = fptrunc double %39 to float
  %101 = load i64, ptr %59, align 8, !tbaa !6
  %102 = load i64, ptr %63, align 8, !tbaa !43
  %103 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 8
  %104 = load i64, ptr %103, align 8, !tbaa !43
  %105 = sub i64 %104, %102
  %106 = sdiv i64 %105, 2
  %107 = extractelement <2 x i64> %86, i64 0
  %108 = call fastcc i32 @XShearImage(ptr noundef nonnull %87, float noundef %100, i64 noundef %101, i64 noundef %102, i64 noundef %107, i64 noundef %106, ptr noundef %3) #19
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = call ptr @DestroyImage(ptr noundef nonnull %87) #18
  br label %138

112:                                              ; preds = %99
  %113 = fptrunc double %42 to float
  %114 = load i64, ptr %63, align 8, !tbaa !43
  %115 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 7
  %116 = load i64, ptr %115, align 8, !tbaa !6
  %117 = sub i64 %116, %76
  %118 = sdiv i64 %117, 2
  %119 = extractelement <2 x i64> %86, i64 1
  %120 = call fastcc i32 @YShearImage(ptr noundef nonnull %87, float noundef %113, i64 noundef %76, i64 noundef %114, i64 noundef %118, i64 noundef %119, ptr noundef %3) #19
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = call ptr @DestroyImage(ptr noundef nonnull %87) #18
  br label %138

124:                                              ; preds = %112
  %125 = load i64, ptr %59, align 8, !tbaa !6
  %126 = uitofp i64 %125 to float
  %127 = load i64, ptr %63, align 8, !tbaa !43
  %128 = uitofp i64 %127 to float
  %129 = call fastcc i32 @CropToFitImage(ptr noundef nonnull %5, float noundef %100, float noundef %113, float noundef %126, float noundef %128, i32 noundef 0, ptr noundef %3) #19, !range !27
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %131 = load i32, ptr %130, align 8, !tbaa !94
  %132 = load ptr, ptr %5, align 8, !tbaa !40
  %133 = getelementptr inbounds %struct._Image, ptr %132, i64 0, i32 36
  store i32 %131, ptr %133, align 8, !tbaa !94
  %134 = getelementptr inbounds %struct._Image, ptr %132, i64 0, i32 26
  %135 = icmp eq i32 %129, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, i8 0, i64 16, i1 false)
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = call ptr @DestroyImage(ptr noundef nonnull %132) #18
  br label %138

138:                                              ; preds = %124, %136, %35, %122, %110, %90, %49, %32, %26, %18
  %139 = phi ptr [ null, %18 ], [ null, %26 ], [ null, %32 ], [ %51, %49 ], [ null, %90 ], [ null, %110 ], [ null, %122 ], [ %30, %35 ], [ %137, %136 ], [ %132, %124 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret ptr %139
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #11

; Function Attrs: optsize
declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @XShearImage(ptr noundef %0, float noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %8, align 8, !tbaa !40
  store float %1, ptr %9, align 4, !tbaa !48
  store i64 %2, ptr %10, align 8, !tbaa !28
  store i64 %3, ptr %11, align 8, !tbaa !28
  store i64 %4, ptr %12, align 8, !tbaa !28
  store i64 %5, ptr %13, align 8, !tbaa !28
  store ptr %6, ptr %14, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #9
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !30
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, ptr noundef nonnull @.str.14, ptr noundef nonnull %24) #18
  br label %26

26:                                               ; preds = %23, %7
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %18) #18
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %27, ptr noundef null, ptr noundef nonnull %18) #19
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !95
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %18) #19
  br label %32

32:                                               ; preds = %31, %26
  store i32 1, ptr %16, align 4, !tbaa !47
  store i64 0, ptr %17, align 8, !tbaa !79
  %33 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %6) #18
  store ptr %33, ptr %15, align 8, !tbaa !40
  %34 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %35 = shl i64 %34, 5
  %36 = icmp ult i64 %35, %3
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %49

45:                                               ; preds = %40, %37, %32
  %46 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %47 = icmp ult i64 %46, 2
  %48 = select i1 %47, i64 1, i64 2
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i64 [ %44, %43 ], [ %48, %45 ]
  %51 = trunc i64 %50 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %51)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @XShearImage.omp_outlined, ptr nonnull %11, ptr nonnull %16, ptr nonnull %15, ptr nonnull %13, ptr nonnull %8, ptr nonnull %14, ptr nonnull %12, ptr nonnull %9, ptr nonnull %18, ptr nonnull %10, ptr nonnull %17)
  %52 = load ptr, ptr %15, align 8, !tbaa !40
  %53 = call ptr @DestroyCacheView(ptr noundef %52) #18
  %54 = load i32, ptr %16, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @YShearImage(ptr noundef %0, float noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %8, align 8, !tbaa !40
  store float %1, ptr %9, align 4, !tbaa !48
  store i64 %2, ptr %10, align 8, !tbaa !28
  store i64 %3, ptr %11, align 8, !tbaa !28
  store i64 %4, ptr %12, align 8, !tbaa !28
  store i64 %5, ptr %13, align 8, !tbaa !28
  store ptr %6, ptr %14, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #9
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !30
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1385, ptr noundef nonnull @.str.14, ptr noundef nonnull %24) #18
  br label %26

26:                                               ; preds = %23, %7
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %18) #18
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %27, ptr noundef null, ptr noundef nonnull %18) #19
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !95
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %18) #19
  br label %32

32:                                               ; preds = %31, %26
  store i32 1, ptr %16, align 4, !tbaa !47
  store i64 0, ptr %17, align 8, !tbaa !79
  %33 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %6) #18
  store ptr %33, ptr %15, align 8, !tbaa !40
  %34 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %35 = shl i64 %34, 5
  %36 = icmp ult i64 %35, %2
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %49

45:                                               ; preds = %40, %37, %32
  %46 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %47 = icmp ult i64 %46, 2
  %48 = select i1 %47, i64 1, i64 2
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i64 [ %44, %43 ], [ %48, %45 ]
  %51 = trunc i64 %50 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %51)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @YShearImage.omp_outlined, ptr nonnull %10, ptr nonnull %16, ptr nonnull %15, ptr nonnull %12, ptr nonnull %8, ptr nonnull %14, ptr nonnull %13, ptr nonnull %9, ptr nonnull %18, ptr nonnull %11, ptr nonnull %17)
  %52 = load ptr, ptr %15, align 8, !tbaa !40
  %53 = call ptr @DestroyCacheView(ptr noundef %52) #18
  %54 = load i32, ptr %16, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @CropToFitImage(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x %struct._PointInfo], align 16
  %9 = alloca %struct._RectangleInfo, align 16
  %10 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10)
  %11 = insertelement <2 x float> poison, float %3, i64 0
  %12 = insertelement <2 x float> %11, float %4, i64 1
  %13 = fneg <2 x float> %12
  %14 = fpext <2 x float> %13 to <2 x double>
  %15 = fmul <2 x double> %14, <double 5.000000e-01, double 5.000000e-01>
  store <2 x double> %15, ptr %8, align 16, !tbaa !41
  %16 = insertelement <2 x float> poison, float %4, i64 0
  %17 = insertelement <2 x float> %16, float %3, i64 1
  %18 = fpext <2 x float> %17 to <2 x double>
  %19 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 1
  %20 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 1, i32 1
  %21 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %21, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 2, i32 1
  %23 = fmul <2 x double> %18, <double 5.000000e-01, double 5.000000e-01>
  %24 = extractelement <2 x double> %23, i64 1
  store double %24, ptr %19, align 16, !tbaa !96
  store <2 x double> %23, ptr %22, align 8, !tbaa !41
  %25 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 3, i32 1
  %26 = extractelement <2 x double> %23, i64 0
  store double %26, ptr %25, align 8, !tbaa !98
  %27 = icmp eq i32 %5, 0
  %28 = load ptr, ptr %0, align 8, !tbaa !40
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !43
  %31 = uitofp i64 %30 to double
  %32 = fmul double %31, 5.000000e-01
  %33 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !6
  %35 = uitofp i64 %34 to double
  %36 = fmul double %35, 5.000000e-01
  %37 = fpext float %2 to double
  %38 = fpext float %1 to double
  %39 = insertelement <2 x double> poison, double %38, i64 0
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = insertelement <2 x double> poison, double %37, i64 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = insertelement <2 x double> poison, double %36, i64 0
  %44 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = insertelement <2 x double> poison, double %32, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  br label %47

47:                                               ; preds = %47, %7
  %48 = phi i64 [ 0, %7 ], [ %60, %47 ]
  %49 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 %48
  %50 = load <4 x double>, ptr %49, align 16, !tbaa !41
  %51 = shufflevector <4 x double> %50, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %52 = shufflevector <4 x double> %50, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %53 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %52, <2 x double> %51)
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %53, <2 x double> %52)
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %54, <2 x double> %53)
  %56 = select i1 %27, <2 x double> %53, <2 x double> %55
  %57 = fadd <2 x double> %56, %44
  %58 = fadd <2 x double> %54, %46
  %59 = shufflevector <2 x double> %57, <2 x double> %58, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %59, ptr %49, align 16, !tbaa !41
  %60 = add nuw i64 %48, 2
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %62, label %47, !llvm.loop !99

62:                                               ; preds = %47
  %63 = load <2 x double>, ptr %8, align 16
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i64 [ 1, %62 ], [ %74, %64 ]
  %66 = phi <2 x double> [ %63, %62 ], [ %73, %64 ]
  %67 = phi <2 x double> [ %63, %62 ], [ %71, %64 ]
  %68 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 %65
  %69 = load <2 x double>, ptr %68, align 16, !tbaa !41
  %70 = fcmp ogt <2 x double> %67, %69
  %71 = select <2 x i1> %70, <2 x double> %69, <2 x double> %67
  %72 = fcmp olt <2 x double> %66, %69
  %73 = select <2 x i1> %72, <2 x double> %69, <2 x double> %66
  %74 = add nuw nsw i64 %65, 1
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %76, label %64, !llvm.loop !102

76:                                               ; preds = %64
  %77 = extractelement <2 x double> %71, i64 0
  %78 = fadd double %77, -5.000000e-01
  %79 = tail call double @llvm.ceil.f64(double %78)
  %80 = fptosi double %79 to i64
  %81 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  store i64 %80, ptr %81, align 16, !tbaa !38
  %82 = extractelement <2 x double> %71, i64 1
  %83 = fadd double %82, -5.000000e-01
  %84 = tail call double @llvm.ceil.f64(double %83)
  %85 = fptosi double %84 to i64
  %86 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  store i64 %85, ptr %86, align 8, !tbaa !39
  %87 = fsub <2 x double> %73, %71
  %88 = fadd <2 x double> %87, <double 5.000000e-01, double 5.000000e-01>
  %89 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %88)
  %90 = fptoui <2 x double> %89 to <2 x i64>
  store <2 x i64> %90, ptr %9, align 16, !tbaa !28
  %91 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %91, i64 32, i1 false), !tbaa.struct !75
  %92 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.18, ptr noundef nonnull %91) #18
  %93 = load ptr, ptr %0, align 8, !tbaa !40
  %94 = call ptr @CropImage(ptr noundef %93, ptr noundef nonnull %9, ptr noundef %6) #18
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %76
  %97 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !75
  %98 = load ptr, ptr %0, align 8, !tbaa !40
  %99 = call ptr @DestroyImage(ptr noundef %98) #18
  store ptr %94, ptr %0, align 8, !tbaa !40
  br label %100

100:                                              ; preds = %76, %96
  %101 = phi i32 [ 1, %96 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  ret i32 %101
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #14 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !45
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !95
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !45
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !103
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !104
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !52
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !55
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !57
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #20
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !55
  %24 = tail call float @DecodePixelGamma(float noundef %23) #20
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !57
  %27 = tail call float @DecodePixelGamma(float noundef %26) #20
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %24, i64 1
  br label %30

30:                                               ; preds = %20, %7
  %31 = phi float [ %19, %7 ], [ %27, %20 ]
  %32 = phi <2 x float> [ %14, %7 ], [ %29, %20 ]
  %33 = extractelement <2 x float> %32, i64 0
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fpext float %34 to double
  %36 = fcmp olt double %35, 1.000000e-15
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = extractelement <2 x float> %32, i64 1
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 1.000000e-15
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call float @llvm.fabs.f32(float %31)
  %44 = fpext float %43 to double
  %45 = fcmp olt double %44, 1.000000e-15
  br i1 %45, label %74, label %46

46:                                               ; preds = %42, %37, %30
  %47 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %32
  %48 = fsub float 1.000000e+00, %31
  %49 = extractelement <2 x float> %47, i64 0
  %50 = extractelement <2 x float> %47, i64 1
  %51 = fcmp olt float %50, %49
  %52 = select i1 %51, float %50, float %49
  %53 = fcmp olt float %48, %52
  %54 = select i1 %53, float %48, float %52
  %55 = fpext float %54 to double
  %56 = fsub double 1.000000e+00, %55
  %57 = fsub float %48, %54
  %58 = fpext float %57 to double
  %59 = fdiv double %58, %56
  %60 = fptrunc double %59 to float
  store i32 12, ptr %2, align 4, !tbaa !104
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %62 = insertelement <2 x float> poison, float %54, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fsub <2 x float> %47, %63
  %65 = fpext <2 x float> %64 to <2 x double>
  %66 = insertelement <2 x double> poison, double %56, i64 0
  %67 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = fdiv <2 x double> %65, %67
  %69 = fptrunc <2 x double> %68 to <2 x float>
  %70 = fmul <2 x float> %69, <float 6.553500e+04, float 6.553500e+04>
  store <2 x float> %70, ptr %61, align 8, !tbaa !48
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !57
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !103
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @XShearImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #8 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca %struct._MagickPixelPacket, align 8
  %21 = load i64, ptr %2, align 8, !tbaa !28
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %227

24:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  store i64 0, ptr %14, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  store i64 %22, ptr %15, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  store i64 1, ptr %16, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #9
  store i32 0, ptr %17, align 4, !tbaa !47
  %25 = load i32, ptr %0, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %26 = load i64, ptr %15, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %15, align 8, !tbaa !28
  %28 = load i64, ptr %14, align 8, !tbaa !28
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %226, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 8
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  br label %33

33:                                               ; preds = %30, %218
  %34 = phi i64 [ %27, %30 ], [ %224, %218 ]
  %35 = phi i64 [ %28, %30 ], [ %222, %218 ]
  %36 = icmp sgt i64 %35, %34
  br i1 %36, label %218, label %37

37:                                               ; preds = %33, %212
  %38 = phi i64 [ %213, %212 ], [ %35, %33 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %20) #9
  %39 = load i32, ptr %3, align 4, !tbaa !47
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %212, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8, !tbaa !40
  %43 = load i64, ptr %5, align 8, !tbaa !28
  %44 = add nsw i64 %43, %38
  %45 = load ptr, ptr %6, align 8, !tbaa !40
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !6
  %48 = load ptr, ptr %7, align 8, !tbaa !40
  %49 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %42, i64 noundef 0, i64 noundef %44, i64 noundef %47, i64 noundef 1, ptr noundef %48) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %211, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %4, align 8, !tbaa !40
  %53 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #18
  %54 = load i64, ptr %8, align 8, !tbaa !28
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 %54
  %56 = getelementptr inbounds i16, ptr %53, i64 %54
  %57 = load float, ptr %9, align 4, !tbaa !48
  %58 = sitofp i64 %38 to double
  %59 = load i64, ptr %2, align 8, !tbaa !28
  %60 = uitofp i64 %59 to double
  %61 = fmul double %60, 5.000000e-01
  %62 = fsub double %58, %61
  %63 = fptrunc double %62 to float
  %64 = fmul float %57, %63
  %65 = fcmp oeq float %64, 0.000000e+00
  br i1 %65, label %212, label %66

66:                                               ; preds = %51
  %67 = fcmp ule float %64, 0.000000e+00
  %68 = fneg float %64
  %69 = select i1 %67, float %68, float %64
  %70 = call float @llvm.floor.f32(float %69)
  %71 = fptosi float %70 to i64
  %72 = sitofp i64 %71 to float
  %73 = fsub float %69, %72
  %74 = add nsw i64 %71, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !105
  %75 = load ptr, ptr %6, align 8, !tbaa !40
  call void @GetMagickPixelPacket(ptr noundef %75, ptr noundef nonnull %19) #18
  %76 = load ptr, ptr %6, align 8, !tbaa !40
  call void @GetMagickPixelPacket(ptr noundef %76, ptr noundef nonnull %20) #18
  br i1 %67, label %77, label %136

77:                                               ; preds = %66
  %78 = load i64, ptr %8, align 8, !tbaa !28
  %79 = icmp sgt i64 %78, %71
  br i1 %79, label %80, label %193

80:                                               ; preds = %77
  %81 = xor i64 %71, -1
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %81
  %83 = getelementptr inbounds i16, ptr %56, i64 %81
  %84 = load i64, ptr %11, align 8, !tbaa !28
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %6, align 8, !tbaa !40
  br label %120

88:                                               ; preds = %80, %111
  %89 = phi i64 [ %113, %111 ], [ %84, %80 ]
  %90 = phi i64 [ %118, %111 ], [ 0, %80 ]
  %91 = phi ptr [ %116, %111 ], [ %82, %80 ]
  %92 = phi ptr [ %115, %111 ], [ %55, %80 ]
  %93 = phi ptr [ %117, %111 ], [ %83, %80 ]
  %94 = phi ptr [ %114, %111 ], [ %56, %80 ]
  %95 = load i64, ptr %8, align 8, !tbaa !28
  %96 = add nsw i64 %95, %90
  %97 = icmp sgt i64 %96, %71
  %98 = load ptr, ptr %6, align 8, !tbaa !40
  br i1 %97, label %102, label %99

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %101 = getelementptr inbounds i16, ptr %94, i64 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %98, ptr noundef nonnull %100, ptr noundef nonnull %101, ptr noundef nonnull %18) #19
  br label %111

102:                                              ; preds = %88
  call fastcc void @SetMagickPixelPacket(ptr noundef %98, ptr noundef %92, ptr noundef %94, ptr noundef nonnull %19) #19
  %103 = load float, ptr %31, align 4, !tbaa !59
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !106
  %106 = uitofp i16 %105 to float
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %18, float noundef %103, ptr noundef nonnull %19, float noundef %106, float noundef %73, ptr noundef nonnull %20) #19
  call fastcc void @SetPixelPacket(ptr noundef %98, ptr noundef nonnull %20, ptr noundef %91, ptr noundef %93) #19
  %107 = load ptr, ptr %6, align 8, !tbaa !40
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %109 = getelementptr inbounds i16, ptr %94, i64 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %107, ptr noundef %92, ptr noundef %94, ptr noundef nonnull %18) #19
  %110 = load i64, ptr %11, align 8, !tbaa !28
  br label %111

111:                                              ; preds = %102, %99
  %112 = phi ptr [ %98, %99 ], [ %107, %102 ]
  %113 = phi i64 [ %89, %99 ], [ %110, %102 ]
  %114 = phi ptr [ %101, %99 ], [ %109, %102 ]
  %115 = phi ptr [ %100, %99 ], [ %108, %102 ]
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %117 = getelementptr inbounds i16, ptr %93, i64 1
  %118 = add nuw nsw i64 %90, 1
  %119 = icmp slt i64 %118, %113
  br i1 %119, label %88, label %120, !llvm.loop !107

120:                                              ; preds = %111, %86
  %121 = phi ptr [ %87, %86 ], [ %112, %111 ]
  %122 = phi ptr [ %83, %86 ], [ %117, %111 ]
  %123 = phi ptr [ %82, %86 ], [ %116, %111 ]
  %124 = load float, ptr %31, align 4, !tbaa !59
  %125 = load float, ptr %32, align 4, !tbaa !59
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %18, float noundef %124, ptr noundef nonnull %10, float noundef %125, float noundef %73, ptr noundef nonnull %20) #19
  call fastcc void @SetPixelPacket(ptr noundef %121, ptr noundef nonnull %20, ptr noundef %123, ptr noundef %122) #19
  %126 = icmp sgt i64 %71, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %120, %127
  %128 = phi i64 [ %134, %127 ], [ 0, %120 ]
  %129 = phi ptr [ %132, %127 ], [ %123, %120 ]
  %130 = phi ptr [ %131, %127 ], [ %122, %120 ]
  %131 = getelementptr inbounds i16, ptr %130, i64 1
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %133 = load ptr, ptr %6, align 8, !tbaa !40
  call fastcc void @SetPixelPacket(ptr noundef %133, ptr noundef nonnull %10, ptr noundef nonnull %132, ptr noundef nonnull %131) #19
  %134 = add nuw nsw i64 %128, 1
  %135 = icmp eq i64 %134, %71
  br i1 %135, label %193, label %127, !llvm.loop !108

136:                                              ; preds = %66
  %137 = load i64, ptr %11, align 8, !tbaa !28
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %137
  %139 = getelementptr inbounds i16, ptr %56, i64 %137
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 %74
  %141 = getelementptr inbounds i16, ptr %139, i64 %74
  %142 = icmp sgt i64 %137, 0
  %143 = load ptr, ptr %6, align 8, !tbaa !40
  br i1 %142, label %144, label %175

144:                                              ; preds = %136, %170
  %145 = phi i64 [ %171, %170 ], [ %137, %136 ]
  %146 = phi ptr [ %172, %170 ], [ %143, %136 ]
  %147 = phi i64 [ %173, %170 ], [ 0, %136 ]
  %148 = phi ptr [ %154, %170 ], [ %140, %136 ]
  %149 = phi ptr [ %152, %170 ], [ %138, %136 ]
  %150 = phi ptr [ %155, %170 ], [ %141, %136 ]
  %151 = phi ptr [ %153, %170 ], [ %139, %136 ]
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 -1
  %153 = getelementptr inbounds i16, ptr %151, i64 -1
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %148, i64 -1
  %155 = getelementptr inbounds i16, ptr %150, i64 -1
  %156 = load i64, ptr %8, align 8, !tbaa !28
  %157 = sub i64 %74, %147
  %158 = add i64 %157, %145
  %159 = add i64 %158, %156
  %160 = getelementptr inbounds %struct._Image, ptr %146, i64 0, i32 7
  %161 = load i64, ptr %160, align 8, !tbaa !6
  %162 = icmp ugt i64 %159, %161
  br i1 %162, label %170, label %163

163:                                              ; preds = %144
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %146, ptr noundef nonnull %152, ptr noundef nonnull %153, ptr noundef nonnull %19) #19
  %164 = load float, ptr %31, align 4, !tbaa !59
  %165 = getelementptr %struct._PixelPacket, ptr %149, i64 -1, i32 3
  %166 = load i16, ptr %165, align 2, !tbaa !106
  %167 = uitofp i16 %166 to float
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %18, float noundef %164, ptr noundef nonnull %19, float noundef %167, float noundef %73, ptr noundef nonnull %20) #19
  call fastcc void @SetPixelPacket(ptr noundef nonnull %146, ptr noundef nonnull %20, ptr noundef nonnull %154, ptr noundef nonnull %155) #19
  %168 = load ptr, ptr %6, align 8, !tbaa !40
  call fastcc void @SetMagickPixelPacket(ptr noundef %168, ptr noundef nonnull %152, ptr noundef nonnull %153, ptr noundef nonnull %18) #19
  %169 = load i64, ptr %11, align 8, !tbaa !28
  br label %170

170:                                              ; preds = %144, %163
  %171 = phi i64 [ %145, %144 ], [ %169, %163 ]
  %172 = phi ptr [ %146, %144 ], [ %168, %163 ]
  %173 = add nuw nsw i64 %147, 1
  %174 = icmp slt i64 %173, %171
  br i1 %174, label %144, label %175, !llvm.loop !109

175:                                              ; preds = %170, %136
  %176 = phi ptr [ %143, %136 ], [ %172, %170 ]
  %177 = phi ptr [ %141, %136 ], [ %155, %170 ]
  %178 = phi ptr [ %140, %136 ], [ %154, %170 ]
  %179 = load float, ptr %31, align 4, !tbaa !59
  %180 = load float, ptr %32, align 4, !tbaa !59
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %18, float noundef %179, ptr noundef nonnull %10, float noundef %180, float noundef %73, ptr noundef nonnull %20) #19
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %178, i64 -1
  %182 = getelementptr inbounds i16, ptr %177, i64 -1
  call fastcc void @SetPixelPacket(ptr noundef %176, ptr noundef nonnull %20, ptr noundef nonnull %181, ptr noundef nonnull %182) #19
  %183 = icmp sgt i64 %71, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %175, %184
  %185 = phi i64 [ %191, %184 ], [ 0, %175 ]
  %186 = phi ptr [ %189, %184 ], [ %181, %175 ]
  %187 = phi ptr [ %190, %184 ], [ %182, %175 ]
  %188 = load ptr, ptr %6, align 8, !tbaa !40
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 -1
  %190 = getelementptr inbounds i16, ptr %187, i64 -1
  call fastcc void @SetPixelPacket(ptr noundef %188, ptr noundef nonnull %10, ptr noundef nonnull %189, ptr noundef nonnull %190) #19
  %191 = add nuw nsw i64 %185, 1
  %192 = icmp eq i64 %191, %71
  br i1 %192, label %193, label %184, !llvm.loop !110

193:                                              ; preds = %184, %127, %175, %120, %77
  %194 = load ptr, ptr %4, align 8, !tbaa !40
  %195 = load ptr, ptr %7, align 8, !tbaa !40
  %196 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %194, ptr noundef %195) #20
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  store i32 0, ptr %3, align 4, !tbaa !47
  br label %199

199:                                              ; preds = %198, %193
  %200 = load ptr, ptr %6, align 8, !tbaa !40
  %201 = getelementptr inbounds %struct._Image, ptr %200, i64 0, i32 47
  %202 = load ptr, ptr %201, align 8, !tbaa !85
  %203 = icmp eq ptr %202, null
  br i1 %203, label %212, label %204

204:                                              ; preds = %199
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_XShearImage.var)
  %205 = load ptr, ptr %6, align 8, !tbaa !40
  %206 = load i64, ptr %12, align 8, !tbaa !79
  %207 = add nsw i64 %206, 1
  store i64 %207, ptr %12, align 8, !tbaa !79
  %208 = load i64, ptr %2, align 8, !tbaa !28
  %209 = call fastcc i32 @SetImageProgress(ptr noundef %205, ptr noundef nonnull @.str.16, i64 noundef %206, i64 noundef %208) #19
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_XShearImage.var)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %204, %41
  store i32 0, ptr %3, align 4, !tbaa !47
  br label %212

212:                                              ; preds = %211, %199, %204, %51, %37
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #9
  %213 = add nsw i64 %38, 1
  %214 = load i64, ptr %15, align 8, !tbaa !28
  %215 = icmp slt i64 %38, %214
  br i1 %215, label %37, label %216

216:                                              ; preds = %212
  %217 = load i64, ptr %14, align 8, !tbaa !28
  br label %218

218:                                              ; preds = %216, %33
  %219 = phi i64 [ %35, %33 ], [ %217, %216 ]
  %220 = phi i64 [ %34, %33 ], [ %214, %216 ]
  %221 = load i64, ptr %16, align 8, !tbaa !28
  %222 = add nsw i64 %221, %219
  store i64 %222, ptr %14, align 8, !tbaa !28
  %223 = add nsw i64 %221, %220
  %224 = call i64 @llvm.smin.i64(i64 %223, i64 %22)
  store i64 %224, ptr %15, align 8, !tbaa !28
  %225 = icmp sgt i64 %222, %224
  br i1 %225, label %226, label %33

226:                                              ; preds = %218, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %227

227:                                              ; preds = %226, %13
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeAreaBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #14 {
  %7 = fpext float %4 to double
  %8 = fsub double 1.000000e+00, %7
  %9 = fsub float 6.553500e+04, %1
  %10 = fpext float %9 to double
  %11 = fneg double %8
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %10, double 6.553500e+04)
  %13 = fptrunc double %12 to float
  %14 = fsub float 6.553500e+04, %3
  %15 = fneg float %4
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %14, float 6.553500e+04)
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %13, ptr noundef %2, float noundef %16, ptr noundef %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #14 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !52
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #19
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !61
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #19
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !62
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !57
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #19
  store i16 %15, ptr %2, align 2, !tbaa !63
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !59
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #19
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !106
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !95
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !111
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !103
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #19
  store i16 %33, ptr %3, align 2, !tbaa !45
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositePlus(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #14 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fadd float %11, %12
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #19
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #19
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !48
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !48
  %23 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %21, <2 x float> %24)
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !57
  %32 = fmul float %31, %12
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %29, float %32)
  %34 = fpext float %33 to double
  %35 = insertelement <4 x double> poison, double %17, i64 0
  %36 = insertelement <4 x double> %35, double %16, i64 1
  %37 = shufflevector <4 x double> %36, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %38 = shufflevector <2 x double> %27, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = insertelement <4 x double> %38, double 6.553500e+04, i64 3
  %40 = insertelement <4 x double> %39, double %34, i64 2
  %41 = fmul <4 x double> %37, %40
  %42 = fptrunc <4 x double> %41 to <4 x float>
  store <4 x float> %42, ptr %20, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !104
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !103
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !103
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !103
  br label %57

57:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RoundToUnity(float noundef %0) unnamed_addr #4 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fcmp ogt float %0, 1.000000e+00
  %4 = select i1 %3, float 1.000000e+00, float %0
  %5 = select i1 %2, float 0.000000e+00, float %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #4 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @YShearImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #8 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca %struct._MagickPixelPacket, align 8
  %21 = load i64, ptr %2, align 8, !tbaa !28
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %228

24:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  store i64 0, ptr %14, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  store i64 %22, ptr %15, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  store i64 1, ptr %16, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #9
  store i32 0, ptr %17, align 4, !tbaa !47
  %25 = load i32, ptr %0, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %26 = load i64, ptr %15, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %15, align 8, !tbaa !28
  %28 = load i64, ptr %14, align 8, !tbaa !28
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %227, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 8
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  br label %33

33:                                               ; preds = %30, %219
  %34 = phi i64 [ %27, %30 ], [ %225, %219 ]
  %35 = phi i64 [ %28, %30 ], [ %223, %219 ]
  %36 = icmp sgt i64 %35, %34
  br i1 %36, label %219, label %37

37:                                               ; preds = %33, %213
  %38 = phi i64 [ %214, %213 ], [ %35, %33 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %20) #9
  %39 = load i32, ptr %3, align 4, !tbaa !47
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %213, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8, !tbaa !40
  %43 = load i64, ptr %5, align 8, !tbaa !28
  %44 = add nsw i64 %43, %38
  %45 = load ptr, ptr %6, align 8, !tbaa !40
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !43
  %48 = load ptr, ptr %7, align 8, !tbaa !40
  %49 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %42, i64 noundef %44, i64 noundef 0, i64 noundef 1, i64 noundef %47, ptr noundef %48) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %212, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %4, align 8, !tbaa !40
  %53 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #18
  %54 = load i64, ptr %8, align 8, !tbaa !28
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 %54
  %56 = getelementptr inbounds i16, ptr %53, i64 %54
  %57 = load float, ptr %9, align 4, !tbaa !48
  %58 = sitofp i64 %38 to double
  %59 = load i64, ptr %2, align 8, !tbaa !28
  %60 = uitofp i64 %59 to double
  %61 = fmul double %60, 5.000000e-01
  %62 = fsub double %58, %61
  %63 = fptrunc double %62 to float
  %64 = fmul float %57, %63
  %65 = fcmp oeq float %64, 0.000000e+00
  br i1 %65, label %213, label %66

66:                                               ; preds = %51
  %67 = fcmp ule float %64, 0.000000e+00
  %68 = fneg float %64
  %69 = select i1 %67, float %68, float %64
  %70 = call float @llvm.floor.f32(float %69)
  %71 = fptosi float %70 to i64
  %72 = sitofp i64 %71 to float
  %73 = fsub float %69, %72
  %74 = add nsw i64 %71, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !105
  %75 = load ptr, ptr %6, align 8, !tbaa !40
  call void @GetMagickPixelPacket(ptr noundef %75, ptr noundef nonnull %19) #18
  %76 = load ptr, ptr %6, align 8, !tbaa !40
  call void @GetMagickPixelPacket(ptr noundef %76, ptr noundef nonnull %20) #18
  br i1 %67, label %77, label %136

77:                                               ; preds = %66
  %78 = load i64, ptr %8, align 8, !tbaa !28
  %79 = icmp sgt i64 %78, %71
  br i1 %79, label %80, label %193

80:                                               ; preds = %77
  %81 = xor i64 %71, -1
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %81
  %83 = getelementptr inbounds i16, ptr %56, i64 %81
  %84 = load i64, ptr %11, align 8, !tbaa !28
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %6, align 8, !tbaa !40
  br label %120

88:                                               ; preds = %80, %111
  %89 = phi i64 [ %113, %111 ], [ %84, %80 ]
  %90 = phi ptr [ %116, %111 ], [ %82, %80 ]
  %91 = phi ptr [ %115, %111 ], [ %55, %80 ]
  %92 = phi i64 [ %118, %111 ], [ 0, %80 ]
  %93 = phi ptr [ %117, %111 ], [ %83, %80 ]
  %94 = phi ptr [ %114, %111 ], [ %56, %80 ]
  %95 = load i64, ptr %8, align 8, !tbaa !28
  %96 = add nsw i64 %95, %92
  %97 = icmp sgt i64 %96, %71
  %98 = load ptr, ptr %6, align 8, !tbaa !40
  br i1 %97, label %102, label %99

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %101 = getelementptr inbounds i16, ptr %94, i64 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %98, ptr noundef nonnull %100, ptr noundef nonnull %101, ptr noundef nonnull %18) #19
  br label %111

102:                                              ; preds = %88
  call fastcc void @SetMagickPixelPacket(ptr noundef %98, ptr noundef %91, ptr noundef %94, ptr noundef nonnull %19) #19
  %103 = load float, ptr %31, align 4, !tbaa !59
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !106
  %106 = uitofp i16 %105 to float
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %18, float noundef %103, ptr noundef nonnull %19, float noundef %106, float noundef %73, ptr noundef nonnull %20) #19
  call fastcc void @SetPixelPacket(ptr noundef %98, ptr noundef nonnull %20, ptr noundef %90, ptr noundef %93) #19
  %107 = load ptr, ptr %6, align 8, !tbaa !40
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %109 = getelementptr inbounds i16, ptr %94, i64 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %107, ptr noundef %91, ptr noundef %94, ptr noundef nonnull %18) #19
  %110 = load i64, ptr %11, align 8, !tbaa !28
  br label %111

111:                                              ; preds = %102, %99
  %112 = phi ptr [ %98, %99 ], [ %107, %102 ]
  %113 = phi i64 [ %89, %99 ], [ %110, %102 ]
  %114 = phi ptr [ %101, %99 ], [ %109, %102 ]
  %115 = phi ptr [ %100, %99 ], [ %108, %102 ]
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 1
  %117 = getelementptr inbounds i16, ptr %93, i64 1
  %118 = add nuw nsw i64 %92, 1
  %119 = icmp slt i64 %118, %113
  br i1 %119, label %88, label %120, !llvm.loop !112

120:                                              ; preds = %111, %86
  %121 = phi ptr [ %87, %86 ], [ %112, %111 ]
  %122 = phi ptr [ %83, %86 ], [ %117, %111 ]
  %123 = phi ptr [ %82, %86 ], [ %116, %111 ]
  %124 = load float, ptr %31, align 4, !tbaa !59
  %125 = load float, ptr %32, align 4, !tbaa !59
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %18, float noundef %124, ptr noundef nonnull %10, float noundef %125, float noundef %73, ptr noundef nonnull %20) #19
  call fastcc void @SetPixelPacket(ptr noundef %121, ptr noundef nonnull %20, ptr noundef %123, ptr noundef %122) #19
  %126 = icmp sgt i64 %71, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %120, %127
  %128 = phi ptr [ %132, %127 ], [ %123, %120 ]
  %129 = phi i64 [ %134, %127 ], [ 0, %120 ]
  %130 = phi ptr [ %131, %127 ], [ %122, %120 ]
  %131 = getelementptr inbounds i16, ptr %130, i64 1
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 1
  %133 = load ptr, ptr %6, align 8, !tbaa !40
  call fastcc void @SetPixelPacket(ptr noundef %133, ptr noundef nonnull %10, ptr noundef nonnull %132, ptr noundef nonnull %131) #19
  %134 = add nuw nsw i64 %129, 1
  %135 = icmp eq i64 %134, %71
  br i1 %135, label %193, label %127, !llvm.loop !113

136:                                              ; preds = %66
  %137 = load i64, ptr %11, align 8, !tbaa !28
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %137
  %139 = getelementptr inbounds i16, ptr %56, i64 %137
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 %74
  %141 = getelementptr inbounds i16, ptr %139, i64 %74
  %142 = icmp sgt i64 %137, 0
  %143 = load ptr, ptr %6, align 8, !tbaa !40
  br i1 %142, label %144, label %175

144:                                              ; preds = %136, %170
  %145 = phi i64 [ %171, %170 ], [ %137, %136 ]
  %146 = phi ptr [ %172, %170 ], [ %143, %136 ]
  %147 = phi ptr [ %154, %170 ], [ %140, %136 ]
  %148 = phi ptr [ %152, %170 ], [ %138, %136 ]
  %149 = phi i64 [ %173, %170 ], [ 0, %136 ]
  %150 = phi ptr [ %155, %170 ], [ %141, %136 ]
  %151 = phi ptr [ %153, %170 ], [ %139, %136 ]
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %148, i64 -1
  %153 = getelementptr inbounds i16, ptr %151, i64 -1
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 -1
  %155 = getelementptr inbounds i16, ptr %150, i64 -1
  %156 = load i64, ptr %8, align 8, !tbaa !28
  %157 = sub i64 %74, %149
  %158 = add i64 %157, %145
  %159 = add i64 %158, %156
  %160 = getelementptr inbounds %struct._Image, ptr %146, i64 0, i32 8
  %161 = load i64, ptr %160, align 8, !tbaa !43
  %162 = icmp ugt i64 %159, %161
  br i1 %162, label %170, label %163

163:                                              ; preds = %144
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %146, ptr noundef nonnull %152, ptr noundef nonnull %153, ptr noundef nonnull %19) #19
  %164 = load float, ptr %31, align 4, !tbaa !59
  %165 = getelementptr %struct._PixelPacket, ptr %148, i64 -1, i32 3
  %166 = load i16, ptr %165, align 2, !tbaa !106
  %167 = uitofp i16 %166 to float
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %18, float noundef %164, ptr noundef nonnull %19, float noundef %167, float noundef %73, ptr noundef nonnull %20) #19
  call fastcc void @SetPixelPacket(ptr noundef nonnull %146, ptr noundef nonnull %20, ptr noundef nonnull %154, ptr noundef nonnull %155) #19
  %168 = load ptr, ptr %6, align 8, !tbaa !40
  call fastcc void @SetMagickPixelPacket(ptr noundef %168, ptr noundef nonnull %152, ptr noundef nonnull %153, ptr noundef nonnull %18) #19
  %169 = load i64, ptr %11, align 8, !tbaa !28
  br label %170

170:                                              ; preds = %144, %163
  %171 = phi i64 [ %145, %144 ], [ %169, %163 ]
  %172 = phi ptr [ %146, %144 ], [ %168, %163 ]
  %173 = add nuw nsw i64 %149, 1
  %174 = icmp slt i64 %173, %171
  br i1 %174, label %144, label %175, !llvm.loop !114

175:                                              ; preds = %170, %136
  %176 = phi ptr [ %143, %136 ], [ %172, %170 ]
  %177 = phi ptr [ %141, %136 ], [ %155, %170 ]
  %178 = phi ptr [ %140, %136 ], [ %154, %170 ]
  %179 = load float, ptr %31, align 4, !tbaa !59
  %180 = load float, ptr %32, align 4, !tbaa !59
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %18, float noundef %179, ptr noundef nonnull %10, float noundef %180, float noundef %73, ptr noundef nonnull %20) #19
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %178, i64 -1
  %182 = getelementptr inbounds i16, ptr %177, i64 -1
  call fastcc void @SetPixelPacket(ptr noundef %176, ptr noundef nonnull %20, ptr noundef nonnull %181, ptr noundef nonnull %182) #19
  %183 = icmp sgt i64 %71, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %175, %184
  %185 = phi ptr [ %189, %184 ], [ %181, %175 ]
  %186 = phi i64 [ %191, %184 ], [ 0, %175 ]
  %187 = phi ptr [ %190, %184 ], [ %182, %175 ]
  %188 = load ptr, ptr %6, align 8, !tbaa !40
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 -1
  %190 = getelementptr inbounds i16, ptr %187, i64 -1
  call fastcc void @SetPixelPacket(ptr noundef %188, ptr noundef nonnull %10, ptr noundef nonnull %189, ptr noundef nonnull %190) #19
  %191 = add nuw nsw i64 %186, 1
  %192 = icmp eq i64 %191, %71
  br i1 %192, label %193, label %184, !llvm.loop !115

193:                                              ; preds = %184, %127, %175, %120, %77
  %194 = load ptr, ptr %4, align 8, !tbaa !40
  %195 = load ptr, ptr %7, align 8, !tbaa !40
  %196 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %194, ptr noundef %195) #20
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  store i32 0, ptr %3, align 4, !tbaa !47
  br label %199

199:                                              ; preds = %198, %193
  %200 = load ptr, ptr %6, align 8, !tbaa !40
  %201 = getelementptr inbounds %struct._Image, ptr %200, i64 0, i32 47
  %202 = load ptr, ptr %201, align 8, !tbaa !85
  %203 = icmp eq ptr %202, null
  br i1 %203, label %213, label %204

204:                                              ; preds = %199
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_YShearImage.var)
  %205 = load ptr, ptr %6, align 8, !tbaa !40
  %206 = load i64, ptr %12, align 8, !tbaa !79
  %207 = add nsw i64 %206, 1
  store i64 %207, ptr %12, align 8, !tbaa !79
  %208 = getelementptr inbounds %struct._Image, ptr %205, i64 0, i32 8
  %209 = load i64, ptr %208, align 8, !tbaa !43
  %210 = call fastcc i32 @SetImageProgress(ptr noundef %205, ptr noundef nonnull @.str.17, i64 noundef %206, i64 noundef %209) #19
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_YShearImage.var)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %204, %41
  store i32 0, ptr %3, align 4, !tbaa !47
  br label %213

213:                                              ; preds = %212, %199, %204, %51, %37
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #9
  %214 = add nsw i64 %38, 1
  %215 = load i64, ptr %15, align 8, !tbaa !28
  %216 = icmp slt i64 %38, %215
  br i1 %216, label %37, label %217

217:                                              ; preds = %213
  %218 = load i64, ptr %14, align 8, !tbaa !28
  br label %219

219:                                              ; preds = %217, %33
  %220 = phi i64 [ %35, %33 ], [ %218, %217 ]
  %221 = phi i64 [ %34, %33 ], [ %215, %217 ]
  %222 = load i64, ptr %16, align 8, !tbaa !28
  %223 = add nsw i64 %222, %220
  store i64 %223, ptr %14, align 8, !tbaa !28
  %224 = add nsw i64 %222, %221
  %225 = call i64 @llvm.smin.i64(i64 %224, i64 %22)
  store i64 %225, ptr %15, align 8, !tbaa !28
  %226 = icmp sgt i64 %223, %225
  br i1 %226, label %227, label %33

227:                                              ; preds = %219, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %228

228:                                              ; preds = %227, %13
  ret void
}

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShearRotateImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !30
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1743, ptr noundef nonnull @.str.14, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %3
  %13 = fptrunc double %1 to float
  %14 = fcmp olt float %13, -4.500000e+01
  br i1 %14, label %18, label %15

15:                                               ; preds = %18, %12
  %16 = phi float [ %13, %12 ], [ %20, %18 ]
  %17 = fcmp ogt float %16, 4.500000e+01
  br i1 %17, label %22, label %30

18:                                               ; preds = %12, %18
  %19 = phi float [ %20, %18 ], [ %13, %12 ]
  %20 = fadd float %19, 3.600000e+02
  %21 = fcmp olt float %20, -4.500000e+01
  br i1 %21, label %18, label %15, !llvm.loop !116

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %15 ]
  %24 = phi float [ %25, %22 ], [ %16, %15 ]
  %25 = fadd float %24, -9.000000e+01
  %26 = add i64 %23, 1
  %27 = fcmp ogt float %25, 4.500000e+01
  br i1 %27, label %22, label %28, !llvm.loop !117

28:                                               ; preds = %22
  %29 = and i64 %26, 3
  br label %30

30:                                               ; preds = %28, %15
  %31 = phi float [ %16, %15 ], [ %25, %28 ]
  %32 = phi i64 [ 0, %15 ], [ %29, %28 ]
  %33 = tail call ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %32, ptr noundef %2) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %37 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1757, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %36) #18
  br label %156

38:                                               ; preds = %30
  %39 = fpext float %31 to double
  %40 = tail call fastcc double @DegreesToRadians(double noundef %39) #19
  %41 = fmul double %40, 5.000000e-01
  %42 = tail call double @tan(double noundef %41) #18
  %43 = fneg double %42
  %44 = tail call double @sin(double noundef %40) #18
  %45 = fcmp oeq double %42, 0.000000e+00
  %46 = fcmp oeq double %44, 0.000000e+00
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %156, label %48

48:                                               ; preds = %38
  %49 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %33, i32 noundef 1) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %52) #18
  %53 = tail call ptr @DestroyImage(ptr noundef nonnull %33) #18
  br label %156

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !93
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %33, i32 noundef 6) #18
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !43
  %65 = uitofp i64 %64 to double
  %66 = fmul double %43, %65
  %67 = tail call double @llvm.fabs.f64(double %66)
  %68 = uitofp i64 %62 to double
  %69 = fadd double %67, %68
  %70 = fadd double %69, 5.000000e-01
  %71 = tail call double @llvm.floor.f64(double %70)
  %72 = fptoui double %71 to i64
  %73 = uitofp i64 %72 to double
  %74 = fmul double %44, %73
  %75 = tail call double @llvm.fabs.f64(double %74)
  %76 = fadd double %75, %65
  %77 = fadd double %76, 5.000000e-01
  %78 = tail call double @llvm.floor.f64(double %77)
  %79 = fptoui double %78 to i64
  %80 = uitofp i64 %79 to double
  %81 = fmul double %43, %80
  %82 = tail call double @llvm.fabs.f64(double %81)
  %83 = fadd double %82, %73
  %84 = fadd double %83, 5.000000e-01
  %85 = tail call double @llvm.floor.f64(double %84)
  %86 = fptoui double %85 to i64
  %87 = icmp ugt i64 %86, %72
  %88 = add i64 %72, 2
  %89 = sub i64 %88, %86
  %90 = select i1 %87, i64 %62, i64 %89
  %91 = uitofp i64 %90 to double
  %92 = fmul double %91, 5.000000e-01
  %93 = fadd double %92, 5.000000e-01
  %94 = tail call double @llvm.floor.f64(double %93)
  %95 = fptosi double %94 to i64
  %96 = fsub double %80, %65
  %97 = fadd double %96, 2.000000e+00
  %98 = fmul double %97, 5.000000e-01
  %99 = fadd double %98, 5.000000e-01
  %100 = tail call double @llvm.floor.f64(double %99)
  %101 = fptosi double %100 to i64
  %102 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 13
  %103 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 12
  %104 = load i64, ptr %103, align 8
  store i64 %104, ptr %102, align 8
  %105 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 36
  store i32 13, ptr %105, align 8, !tbaa !94
  store i64 %95, ptr %5, align 8, !tbaa !36
  %106 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  store i64 %101, ptr %106, align 8, !tbaa !37
  %107 = call ptr @BorderImage(ptr noundef nonnull %33, ptr noundef nonnull %5, ptr noundef %2) #18
  store ptr %107, ptr %4, align 8, !tbaa !40
  %108 = call ptr @DestroyImage(ptr noundef nonnull %33) #18
  %109 = icmp eq ptr %107, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %60
  %111 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %112 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1792, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %111) #18
  br label %156

113:                                              ; preds = %60
  %114 = fptrunc double %43 to float
  %115 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 8
  %116 = load i64, ptr %115, align 8, !tbaa !43
  %117 = sub i64 %116, %64
  %118 = sdiv i64 %117, 2
  %119 = call fastcc i32 @XShearImage(ptr noundef nonnull %107, float noundef %114, i64 noundef %62, i64 noundef %64, i64 noundef %95, i64 noundef %118, ptr noundef %2) #19
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = call ptr @DestroyImage(ptr noundef nonnull %107) #18
  br label %156

123:                                              ; preds = %113
  %124 = fptrunc double %44 to float
  %125 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 7
  %126 = load i64, ptr %125, align 8, !tbaa !6
  %127 = sub i64 %126, %72
  %128 = sdiv i64 %127, 2
  %129 = call fastcc i32 @YShearImage(ptr noundef nonnull %107, float noundef %124, i64 noundef %72, i64 noundef %64, i64 noundef %128, i64 noundef %101, ptr noundef %2) #19
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call ptr @DestroyImage(ptr noundef nonnull %107) #18
  br label %156

133:                                              ; preds = %123
  %134 = load i64, ptr %125, align 8, !tbaa !6
  %135 = sub i64 %134, %72
  %136 = sdiv i64 %135, 2
  %137 = load i64, ptr %115, align 8, !tbaa !43
  %138 = sub i64 %137, %79
  %139 = sdiv i64 %138, 2
  %140 = call fastcc i32 @XShearImage(ptr noundef nonnull %107, float noundef %114, i64 noundef %72, i64 noundef %79, i64 noundef %136, i64 noundef %139, ptr noundef %2) #19
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = call ptr @DestroyImage(ptr noundef nonnull %107) #18
  br label %156

144:                                              ; preds = %133
  %145 = uitofp i64 %62 to float
  %146 = uitofp i64 %64 to float
  %147 = call fastcc i32 @CropToFitImage(ptr noundef nonnull %4, float noundef %114, float noundef %124, float noundef %145, float noundef %146, i32 noundef 1, ptr noundef %2) #19, !range !27
  %148 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %149 = load i32, ptr %148, align 8, !tbaa !94
  %150 = load ptr, ptr %4, align 8, !tbaa !40
  %151 = getelementptr inbounds %struct._Image, ptr %150, i64 0, i32 36
  store i32 %149, ptr %151, align 8, !tbaa !94
  %152 = getelementptr inbounds %struct._Image, ptr %150, i64 0, i32 26
  %153 = icmp eq i32 %147, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %152, i8 0, i64 16, i1 false)
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = call ptr @DestroyImage(ptr noundef nonnull %150) #18
  br label %156

156:                                              ; preds = %144, %154, %38, %142, %131, %121, %110, %51, %35
  %157 = phi ptr [ null, %35 ], [ %53, %51 ], [ null, %110 ], [ null, %121 ], [ null, %131 ], [ null, %142 ], [ %33, %38 ], [ %155, %154 ], [ %150, %144 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %157
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { convergent nounwind }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize allocsize(0,1) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 40}
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
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{i32 0, i32 2}
!28 = !{!11, !11, i64 0}
!29 = distinct !{!29, !26}
!30 = !{!7, !8, i64 12976}
!31 = !{!32, !15, i64 0}
!32 = !{!"_AffineMatrix", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!33 = !{!32, !15, i64 8}
!34 = !{!32, !15, i64 16}
!35 = !{!32, !15, i64 24}
!36 = !{!18, !11, i64 0}
!37 = !{!18, !11, i64 8}
!38 = !{!18, !11, i64 16}
!39 = !{!18, !11, i64 24}
!40 = !{!12, !12, i64 0}
!41 = !{!15, !15, i64 0}
!42 = distinct !{!42, !26}
!43 = !{!7, !11, i64 48}
!44 = distinct !{!44, !26}
!45 = !{!14, !14, i64 0}
!46 = distinct !{!46, !26}
!47 = !{!8, !8, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !9, i64 0}
!50 = distinct !{!50, !26}
!51 = distinct !{!51, !26}
!52 = !{!53, !49, i64 32}
!53 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48}
!54 = !{!7, !14, i64 84}
!55 = !{!53, !49, i64 36}
!56 = !{!7, !14, i64 82}
!57 = !{!53, !49, i64 40}
!58 = !{!7, !14, i64 80}
!59 = !{!53, !49, i64 44}
!60 = !{!7, !14, i64 86}
!61 = !{!13, !14, i64 4}
!62 = !{!13, !14, i64 2}
!63 = !{!13, !14, i64 0}
!64 = distinct !{!64, !26}
!65 = !{!66}
!66 = !{i64 2, i64 -1, i64 -1, i1 true}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !26}
!75 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28}
!76 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28}
!77 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!78 = !{i64 0, i64 8, !28}
!79 = !{!24, !24, i64 0}
!80 = !{!7, !8, i64 13184}
!81 = distinct !{!81, !26}
!82 = distinct !{!82, !26}
!83 = distinct !{!83, !26}
!84 = distinct !{!84, !26}
!85 = !{!7, !12, i64 568}
!86 = !{!7, !12, i64 576}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !26}
!89 = distinct !{!89, !26}
!90 = distinct !{!90, !26}
!91 = distinct !{!91, !26}
!92 = distinct !{!92, !26}
!93 = !{!7, !8, i64 32}
!94 = !{!7, !8, i64 416}
!95 = !{!7, !8, i64 4}
!96 = !{!97, !15, i64 0}
!97 = !{!"_PointInfo", !15, i64 0, !15, i64 8}
!98 = !{!97, !15, i64 8}
!99 = distinct !{!99, !26, !100, !101}
!100 = !{!"llvm.loop.isvectorized", i32 1}
!101 = !{!"llvm.loop.unroll.runtime.disable"}
!102 = distinct !{!102, !26}
!103 = !{!53, !49, i64 48}
!104 = !{!53, !8, i64 4}
!105 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 16, i64 8, !41, i64 24, i64 8, !28, i64 32, i64 4, !48, i64 36, i64 4, !48, i64 40, i64 4, !48, i64 44, i64 4, !48, i64 48, i64 4, !48}
!106 = !{!13, !14, i64 6}
!107 = distinct !{!107, !26}
!108 = distinct !{!108, !26}
!109 = distinct !{!109, !26}
!110 = distinct !{!110, !26}
!111 = !{!7, !8, i64 0}
!112 = distinct !{!112, !26}
!113 = distinct !{!113, !26}
!114 = distinct !{!114, !26}
!115 = distinct !{!115, !26}
!116 = distinct !{!116, !26}
!117 = distinct !{!117, !26}
