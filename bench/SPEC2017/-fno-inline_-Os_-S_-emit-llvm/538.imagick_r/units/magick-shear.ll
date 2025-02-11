; ModuleID = 'magick/shear.c'
source_filename = "magick/shear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
@.str.9 = private unnamed_addr constant [13 x i8] c"Rotate/Image\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"AngleIsDiscontinuous\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"XShear/Image\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"YShear/Image\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DeskewImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._AffineMatrix, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !5
  %9 = add i64 %8, 7
  %10 = lshr i64 %9, 3
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi i64 [ 1, %3 ], [ %14, %11 ]
  %13 = icmp ult i64 %12, %10
  %14 = shl nuw i64 %12, 1
  br i1 %13, label %11, label %15, !llvm.loop !24

15:                                               ; preds = %11
  %16 = add i64 %14, -1
  %17 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 8) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 607, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %20) #16
  br label %121

22:                                               ; preds = %15
  %23 = tail call fastcc i32 @RadonTransform(ptr noundef nonnull %0, double noundef %1, ptr noundef nonnull %17, ptr noundef %2) #17, !range !26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = icmp sgt i64 %16, 0
  br i1 %26, label %31, label %46

27:                                               ; preds = %22
  %28 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #16
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %29) #16
  br label %121

31:                                               ; preds = %25, %31
  %32 = phi i64 [ %41, %31 ], [ 0, %25 ]
  %33 = phi i64 [ %40, %31 ], [ 0, %25 ]
  %34 = phi i64 [ %42, %31 ], [ 0, %25 ]
  %35 = getelementptr inbounds i64, ptr %17, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !27
  %37 = icmp ugt i64 %36, %33
  %38 = sub nsw i64 %34, %12
  %39 = add nsw i64 %38, 1
  %40 = tail call i64 @llvm.umax.i64(i64 %36, i64 %33)
  %41 = select i1 %37, i64 %39, i64 %32
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, %16
  br i1 %43, label %44, label %31, !llvm.loop !28

44:                                               ; preds = %31
  %45 = sitofp i64 %41 to double
  br label %46

46:                                               ; preds = %44, %25
  %47 = phi double [ 0.000000e+00, %25 ], [ %45, %44 ]
  %48 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #16
  %49 = uitofp i64 %12 to double
  %50 = fdiv double %47, %49
  %51 = fmul double %50, 1.250000e-01
  %52 = tail call double @atan(double noundef %51) #16
  %53 = fptrunc double %52 to float
  %54 = fneg float %53
  %55 = tail call fastcc float @RadiansToDegrees(float noundef %54) #17
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %58 = load i32, ptr %57, align 8, !tbaa !29
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %46
  %61 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 627, ptr noundef nonnull @.str.4, double noundef %56) #16
  br label %62

62:                                               ; preds = %60, %46
  %63 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %121, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  %66 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.5, double noundef %56) #16
  %67 = call i32 @SetImageArtifact(ptr noundef nonnull %63, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  %68 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %63, i32 noundef 1) #16
  %69 = call double @fmod(double noundef %56, double noundef 3.600000e+02) #16
  %70 = call fastcc double @DegreesToRadians(double noundef %69) #17
  %71 = call double @cos(double noundef %70) #16
  store double %71, ptr %4, align 8, !tbaa !30
  %72 = call double @fmod(double noundef %56, double noundef 3.600000e+02) #16
  %73 = call fastcc double @DegreesToRadians(double noundef %72) #17
  %74 = call double @sin(double noundef %73) #16
  %75 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 1
  store double %74, ptr %75, align 8, !tbaa !32
  %76 = call double @fmod(double noundef %56, double noundef 3.600000e+02) #16
  %77 = call fastcc double @DegreesToRadians(double noundef %76) #17
  %78 = call double @sin(double noundef %77) #16
  %79 = fneg double %78
  %80 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 2
  store double %79, ptr %80, align 8, !tbaa !33
  %81 = call double @fmod(double noundef %56, double noundef 3.600000e+02) #16
  %82 = call fastcc double @DegreesToRadians(double noundef %81) #17
  %83 = call double @cos(double noundef %82) #16
  %84 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 3
  store double %83, ptr %84, align 8, !tbaa !34
  %85 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %85, i8 0, i64 16, i1 false)
  %86 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %65
  %89 = call ptr @AffineTransformImage(ptr noundef nonnull %63, ptr noundef nonnull %4, ptr noundef %2) #16
  %90 = call ptr @DestroyImage(ptr noundef nonnull %63) #16
  br label %121

91:                                               ; preds = %65
  %92 = call fastcc i64 @StringToLong(ptr noundef nonnull %86) #17
  call fastcc void @GetImageBackgroundColor(ptr noundef nonnull %63, i64 noundef %92, ptr noundef %2) #17
  %93 = call ptr @AffineTransformImage(ptr noundef nonnull %63, ptr noundef nonnull %4, ptr noundef %2) #16
  %94 = call ptr @DestroyImage(ptr noundef nonnull %63) #16
  %95 = icmp eq ptr %93, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %91
  %97 = call ptr @StatisticImage(ptr noundef nonnull %93, i32 noundef 4, i64 noundef 3, i64 noundef 3, ptr noundef %2) #16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call ptr @DestroyImage(ptr noundef nonnull %93) #16
  br label %121

101:                                              ; preds = %96
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %97, ptr noundef %2) #16
  %102 = call ptr @DestroyImage(ptr noundef nonnull %97) #16
  %103 = load i32, ptr %57, align 8, !tbaa !29
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %101
  %106 = load i64, ptr %5, align 8, !tbaa !35
  %107 = uitofp i64 %106 to double
  %108 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !36
  %110 = uitofp i64 %109 to double
  %111 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !37
  %113 = sitofp i64 %112 to double
  %114 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %115 = load i64, ptr %114, align 8, !tbaa !38
  %116 = sitofp i64 %115 to double
  %117 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 674, ptr noundef nonnull @.str.8, double noundef %107, double noundef %110, double noundef %113, double noundef %116) #16
  br label %118

118:                                              ; preds = %105, %101
  %119 = call ptr @CropImage(ptr noundef nonnull %93, ptr noundef nonnull %5, ptr noundef %2) #16
  %120 = call ptr @DestroyImage(ptr noundef nonnull %93) #16
  br label %121

121:                                              ; preds = %91, %62, %118, %99, %88, %27, %19
  %122 = phi ptr [ null, %19 ], [ null, %27 ], [ %89, %88 ], [ null, %99 ], [ %119, %118 ], [ null, %62 ], [ null, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  ret ptr %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @RadonTransform(ptr noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [256 x i16], align 16
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #14
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = add i64 %9, 7
  %11 = lshr i64 %10, 3
  br label %12

12:                                               ; preds = %12, %4
  %13 = phi i64 [ 1, %4 ], [ %15, %12 ]
  %14 = icmp ult i64 %13, %11
  %15 = shl nuw nsw i64 %13, 1
  br i1 %14, label %12, label %16, !llvm.loop !39

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !40
  %19 = tail call ptr @AcquireMatrixInfo(i64 noundef %13, i64 noundef %18, i64 noundef 2, ptr noundef %3) #16
  %20 = load i64, ptr %17, align 8, !tbaa !40
  %21 = tail call ptr @AcquireMatrixInfo(i64 noundef %13, i64 noundef %20, i64 noundef 2, ptr noundef %3) #16
  %22 = icmp eq ptr %19, null
  %23 = icmp eq ptr %21, null
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  br i1 %23, label %28, label %26

26:                                               ; preds = %25
  %27 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %21) #16
  br label %28

28:                                               ; preds = %26, %25
  br i1 %22, label %201, label %29

29:                                               ; preds = %28
  %30 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %19) #16
  br label %201

31:                                               ; preds = %16
  %32 = tail call i32 @NullMatrix(ptr noundef nonnull %19) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %21) #16
  %36 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %19) #16
  br label %201

37:                                               ; preds = %31, %49
  %38 = phi i64 [ %52, %49 ], [ 0, %31 ]
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37, %41
  %42 = phi i32 [ %47, %41 ], [ %39, %37 ]
  %43 = phi i16 [ %46, %41 ], [ 0, %37 ]
  %44 = trunc i32 %42 to i16
  %45 = and i16 %44, 1
  %46 = add i16 %45, %43
  %47 = lshr i32 %42, 1
  %48 = icmp ult i32 %42, 2
  br i1 %48, label %49, label %41, !llvm.loop !41

49:                                               ; preds = %41, %37
  %50 = phi i16 [ 0, %37 ], [ %46, %41 ]
  %51 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %38
  store i16 %50, ptr %51, align 2, !tbaa !42
  %52 = add nuw nsw i64 %38, 1
  %53 = icmp eq i64 %52, 256
  br i1 %53, label %54, label %37, !llvm.loop !43

54:                                               ; preds = %49
  %55 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #16
  %56 = load i64, ptr %17, align 8, !tbaa !40
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %127

58:                                               ; preds = %54, %122
  %59 = phi i64 [ %124, %122 ], [ 0, %54 ]
  %60 = phi i32 [ %123, %122 ], [ 1, %54 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %122, label %62

62:                                               ; preds = %58
  %63 = load i64, ptr %8, align 8, !tbaa !5
  %64 = call ptr @GetCacheViewVirtualPixels(ptr noundef %55, i64 noundef 0, i64 noundef %59, i64 noundef %63, i64 noundef 1, ptr noundef %3) #18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %122, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %8, align 8, !tbaa !5
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %122

69:                                               ; preds = %66
  %70 = add nuw i64 %67, 7
  %71 = sdiv i64 %70, 8
  br label %72

72:                                               ; preds = %69, %105
  %73 = phi i64 [ %106, %105 ], [ %67, %69 ]
  %74 = phi i64 [ %109, %105 ], [ 0, %69 ]
  %75 = phi i64 [ %108, %105 ], [ 0, %69 ]
  %76 = phi i64 [ %111, %105 ], [ 0, %69 ]
  %77 = phi i64 [ %107, %105 ], [ %71, %69 ]
  %78 = phi ptr [ %110, %105 ], [ %64, %69 ]
  %79 = shl i64 %74, 1
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !44
  %82 = uitofp i16 %81 to double
  %83 = fcmp olt double %82, %1
  br i1 %83, label %93, label %84

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 1
  %86 = load i16, ptr %85, align 2, !tbaa !45
  %87 = uitofp i16 %86 to double
  %88 = fcmp olt double %87, %1
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i16, ptr %78, align 2, !tbaa !46
  %91 = uitofp i16 %90 to double
  %92 = fcmp olt double %91, %1
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %84, %72
  %94 = or disjoint i64 %79, 1
  br label %95

95:                                               ; preds = %93, %89
  %96 = phi i64 [ %94, %93 ], [ %79, %89 ]
  %97 = add i64 %75, 1
  %98 = icmp eq i64 %97, 8
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %96
  %101 = load i16, ptr %100, align 2, !tbaa !42
  store i16 %101, ptr %6, align 2, !tbaa !42
  %102 = add nsw i64 %77, -1
  %103 = call i32 @SetMatrixElement(ptr noundef %19, i64 noundef %102, i64 noundef %59, ptr noundef nonnull %6) #16
  %104 = load i64, ptr %8, align 8, !tbaa !5
  br label %105

105:                                              ; preds = %99, %95
  %106 = phi i64 [ %104, %99 ], [ %73, %95 ]
  %107 = phi i64 [ %102, %99 ], [ %77, %95 ]
  %108 = phi i64 [ 0, %99 ], [ %97, %95 ]
  %109 = phi i64 [ 0, %99 ], [ %96, %95 ]
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %111 = add nuw nsw i64 %76, 1
  %112 = icmp slt i64 %111, %106
  br i1 %112, label %72, label %113, !llvm.loop !47

113:                                              ; preds = %105
  %114 = icmp eq i64 %108, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %113
  %116 = sub i64 8, %108
  %117 = shl i64 %109, %116
  %118 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !42
  store i16 %119, ptr %6, align 2, !tbaa !42
  %120 = add nsw i64 %107, -1
  %121 = call i32 @SetMatrixElement(ptr noundef %19, i64 noundef %120, i64 noundef %59, ptr noundef nonnull %6) #16
  br label %122

122:                                              ; preds = %66, %113, %115, %62, %58
  %123 = phi i32 [ 0, %58 ], [ 0, %62 ], [ 1, %115 ], [ 1, %113 ], [ 1, %66 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  %124 = add nuw nsw i64 %59, 1
  %125 = load i64, ptr %17, align 8, !tbaa !40
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %58, label %127, !llvm.loop !48

127:                                              ; preds = %122, %54
  %128 = phi i32 [ 1, %54 ], [ %123, %122 ]
  call fastcc void @RadonProjection(ptr noundef %19, ptr noundef %21, i64 noundef -1, ptr noundef %2) #17
  %129 = call i32 @NullMatrix(ptr noundef %19) #16
  %130 = load i64, ptr %17, align 8, !tbaa !40
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %197

132:                                              ; preds = %127, %192
  %133 = phi i64 [ %194, %192 ], [ 0, %127 ]
  %134 = phi i32 [ %193, %192 ], [ %128, %127 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %192, label %136

136:                                              ; preds = %132
  %137 = load i64, ptr %8, align 8, !tbaa !5
  %138 = call ptr @GetCacheViewVirtualPixels(ptr noundef %55, i64 noundef 0, i64 noundef %133, i64 noundef %137, i64 noundef 1, ptr noundef %3) #18
  %139 = icmp eq ptr %138, null
  br i1 %139, label %192, label %140

140:                                              ; preds = %136
  %141 = load i64, ptr %8, align 8, !tbaa !5
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %192

143:                                              ; preds = %140, %176
  %144 = phi i64 [ %177, %176 ], [ %141, %140 ]
  %145 = phi i64 [ %180, %176 ], [ 0, %140 ]
  %146 = phi i64 [ %179, %176 ], [ 0, %140 ]
  %147 = phi i64 [ %182, %176 ], [ 0, %140 ]
  %148 = phi i64 [ %178, %176 ], [ 0, %140 ]
  %149 = phi ptr [ %181, %176 ], [ %138, %140 ]
  %150 = shl i64 %145, 1
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 2
  %152 = load i16, ptr %151, align 2, !tbaa !44
  %153 = uitofp i16 %152 to double
  %154 = fcmp olt double %153, %1
  br i1 %154, label %164, label %155

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 1
  %157 = load i16, ptr %156, align 2, !tbaa !45
  %158 = uitofp i16 %157 to double
  %159 = fcmp olt double %158, %1
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = load i16, ptr %149, align 2, !tbaa !46
  %162 = uitofp i16 %161 to double
  %163 = fcmp olt double %162, %1
  br i1 %163, label %164, label %166

164:                                              ; preds = %160, %155, %143
  %165 = or disjoint i64 %150, 1
  br label %166

166:                                              ; preds = %164, %160
  %167 = phi i64 [ %165, %164 ], [ %150, %160 ]
  %168 = add i64 %146, 1
  %169 = icmp eq i64 %168, 8
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %167
  %172 = load i16, ptr %171, align 2, !tbaa !42
  store i16 %172, ptr %7, align 2, !tbaa !42
  %173 = add nsw i64 %148, 1
  %174 = call i32 @SetMatrixElement(ptr noundef %19, i64 noundef %148, i64 noundef %133, ptr noundef nonnull %7) #16
  %175 = load i64, ptr %8, align 8, !tbaa !5
  br label %176

176:                                              ; preds = %170, %166
  %177 = phi i64 [ %175, %170 ], [ %144, %166 ]
  %178 = phi i64 [ %173, %170 ], [ %148, %166 ]
  %179 = phi i64 [ 0, %170 ], [ %168, %166 ]
  %180 = phi i64 [ 0, %170 ], [ %167, %166 ]
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 1
  %182 = add nuw nsw i64 %147, 1
  %183 = icmp slt i64 %182, %177
  br i1 %183, label %143, label %184, !llvm.loop !49

184:                                              ; preds = %176
  %185 = icmp eq i64 %179, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %184
  %187 = sub i64 8, %179
  %188 = shl i64 %180, %187
  %189 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !42
  store i16 %190, ptr %7, align 2, !tbaa !42
  %191 = call i32 @SetMatrixElement(ptr noundef %19, i64 noundef %178, i64 noundef %133, ptr noundef nonnull %7) #16
  br label %192

192:                                              ; preds = %140, %184, %186, %136, %132
  %193 = phi i32 [ 0, %132 ], [ 0, %136 ], [ 1, %186 ], [ 1, %184 ], [ 1, %140 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  %194 = add nuw nsw i64 %133, 1
  %195 = load i64, ptr %17, align 8, !tbaa !40
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %132, label %197, !llvm.loop !50

197:                                              ; preds = %192, %127
  call fastcc void @RadonProjection(ptr noundef %19, ptr noundef %21, i64 noundef 1, ptr noundef %2) #17
  %198 = call ptr @DestroyCacheView(ptr noundef %55) #16
  %199 = call ptr @DestroyMatrixInfo(ptr noundef %21) #16
  %200 = call ptr @DestroyMatrixInfo(ptr noundef %19) #16
  br label %201

201:                                              ; preds = %28, %29, %197, %34
  %202 = phi i32 [ 0, %34 ], [ 1, %197 ], [ 0, %29 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #14
  ret i32 %202
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %5 = icmp slt i64 %1, 1
  br i1 %5, label %87, label %6

6:                                                ; preds = %3
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %4) #16
  %7 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #16
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !40
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
  %23 = load i64, ptr %12, align 8, !tbaa !5
  %24 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %16, i64 noundef %23, i64 noundef 1, ptr noundef %2) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %22
  %27 = load i64, ptr %12, align 8, !tbaa !5
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = sub nsw i64 %27, %1
  %31 = load <4 x float>, ptr %13, align 8, !tbaa !51
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
  %42 = load <4 x i16>, ptr %34, align 2, !tbaa !42
  %43 = uitofp <4 x i16> %42 to <4 x double>
  %44 = shufflevector <4 x double> %43, <4 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %45 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %44, <4 x double> <double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010>, <4 x double> %41)
  %46 = fptrunc <4 x double> %45 to <4 x float>
  store <4 x float> %46, ptr %13, align 8, !tbaa !51
  %47 = fadd float %35, 1.000000e+00
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 1
  br label %49

49:                                               ; preds = %32, %40
  %50 = phi float [ %47, %40 ], [ %35, %32 ]
  %51 = phi ptr [ %48, %40 ], [ %34, %32 ]
  %52 = phi <4 x float> [ %46, %40 ], [ %36, %32 ]
  %53 = add nuw nsw i64 %33, 1
  %54 = icmp eq i64 %53, %27
  br i1 %54, label %55, label %32, !llvm.loop !53

55:                                               ; preds = %49, %26, %22, %14
  %56 = phi float [ %17, %14 ], [ %17, %22 ], [ %17, %26 ], [ %50, %49 ]
  %57 = add nuw nsw i64 %16, 1
  %58 = load i64, ptr %8, align 8, !tbaa !40
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %14, label %60, !llvm.loop !54

60:                                               ; preds = %55, %6
  %61 = phi float [ 0.000000e+00, %6 ], [ %56, %55 ]
  %62 = call ptr @DestroyCacheView(ptr noundef %7) #16
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %64 = load float, ptr %63, align 8, !tbaa !55
  %65 = fmul float %64, 6.553500e+04
  %66 = fdiv float %65, %61
  %67 = call fastcc zeroext i16 @ClampToQuantum(float noundef %66) #17
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  store i16 %67, ptr %69, align 4, !tbaa !57
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %71 = load float, ptr %70, align 4, !tbaa !58
  %72 = fmul float %71, 6.553500e+04
  %73 = fdiv float %72, %61
  %74 = call fastcc zeroext i16 @ClampToQuantum(float noundef %73) #17
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  store i16 %74, ptr %75, align 2, !tbaa !59
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %77 = load float, ptr %76, align 8, !tbaa !60
  %78 = fmul float %77, 6.553500e+04
  %79 = fdiv float %78, %61
  %80 = call fastcc zeroext i16 @ClampToQuantum(float noundef %79) #17
  store i16 %80, ptr %68, align 8, !tbaa !61
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %82 = load float, ptr %81, align 4, !tbaa !62
  %83 = fmul float %82, 6.553500e+04
  %84 = fdiv float %83, %61
  %85 = call fastcc zeroext i16 @ClampToQuantum(float noundef %84) #17
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  store i16 %85, ptr %86, align 2, !tbaa !63
  br label %87

87:                                               ; preds = %3, %60
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #16
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %9 = load i64, ptr %8, align 8, !tbaa.struct !64
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa.struct !65
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa.struct !66
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa.struct !67
  %16 = and i64 %1, 3
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #16
  br label %429

20:                                               ; preds = %3
  %21 = and i64 %1, 1
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %27 = select i1 %22, ptr %24, ptr %26
  %28 = select i1 %22, ptr %23, ptr %25
  %29 = load i64, ptr %28, align 8, !tbaa !27
  %30 = load i64, ptr %27, align 8, !tbaa !27
  %31 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %29, i64 noundef %30, i32 noundef 1, ptr noundef %2) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %429, label %33

33:                                               ; preds = %20
  %34 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #16
  %35 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %2) #16
  switch i64 %16, label %410 [
    i64 1, label %43
    i64 2, label %36
    i64 3, label %269
  ]

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !40
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %253

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %185

43:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @GetPixelCacheTileSize(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !5
  store i64 %45, ptr %5, align 8, !tbaa !27
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !40
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %172

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %52

52:                                               ; preds = %49, %164
  %53 = phi i64 [ %47, %49 ], [ %165, %164 ]
  %54 = phi i64 [ %47, %49 ], [ %166, %164 ]
  %55 = phi i32 [ 1, %49 ], [ %168, %164 ]
  %56 = phi i64 [ 0, %49 ], [ %167, %164 ]
  %57 = phi i64 [ 0, %49 ], [ %170, %164 ]
  %58 = icmp eq i32 %55, 0
  br i1 %58, label %164, label %59

59:                                               ; preds = %52
  %60 = load i64, ptr %44, align 8, !tbaa !5
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %152

62:                                               ; preds = %59
  %63 = load i64, ptr %5, align 8, !tbaa !27
  br label %64

64:                                               ; preds = %62, %143
  %65 = phi i64 [ %63, %62 ], [ %145, %143 ]
  %66 = phi i64 [ %60, %62 ], [ %147, %143 ]
  %67 = phi i32 [ 1, %62 ], [ %144, %143 ]
  %68 = phi i64 [ 0, %62 ], [ %146, %143 ]
  %69 = add nsw i64 %65, %68
  %70 = icmp sgt i64 %69, %66
  %71 = sub i64 %66, %69
  %72 = select i1 %70, i64 %71, i64 0
  %73 = add i64 %72, %65
  %74 = load i64, ptr %4, align 8, !tbaa !27
  %75 = add nsw i64 %74, %57
  %76 = load i64, ptr %46, align 8, !tbaa !40
  %77 = icmp sgt i64 %75, %76
  %78 = sub i64 %76, %75
  %79 = select i1 %77, i64 %78, i64 0
  %80 = add i64 %79, %74
  %81 = call ptr @GetCacheViewVirtualPixels(ptr noundef %34, i64 noundef %68, i64 noundef %57, i64 noundef %73, i64 noundef %80, ptr noundef %2) #18
  %82 = icmp eq ptr %81, null
  br i1 %82, label %149, label %83

83:                                               ; preds = %64
  %84 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %34) #16
  %85 = icmp sgt i64 %73, 0
  br i1 %85, label %86, label %143

86:                                               ; preds = %83
  %87 = add i64 %80, %57
  %88 = add i64 %80, -1
  %89 = mul i64 %88, %73
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 %89
  %91 = icmp slt i64 %80, 1
  %92 = sub nsw i64 0, %73
  %93 = icmp eq ptr %84, null
  %94 = getelementptr inbounds i16, ptr %84, i64 %89
  br label %95

95:                                               ; preds = %86, %139
  %96 = phi i32 [ %67, %86 ], [ %140, %139 ]
  %97 = phi i64 [ 0, %86 ], [ %141, %139 ]
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %139, label %99

99:                                               ; preds = %95
  %100 = load i64, ptr %50, align 8, !tbaa !5
  %101 = sub i64 %100, %87
  %102 = add nsw i64 %97, %68
  %103 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %35, i64 noundef %101, i64 noundef %102, i64 noundef %80, i64 noundef 1, ptr noundef %2) #18
  %104 = icmp eq ptr %103, null
  br i1 %104, label %139, label %105

105:                                              ; preds = %99
  br i1 %91, label %122, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 %97
  br label %108

108:                                              ; preds = %106, %108
  %109 = phi i64 [ %115, %108 ], [ 0, %106 ]
  %110 = phi ptr [ %114, %108 ], [ %107, %106 ]
  %111 = phi ptr [ %112, %108 ], [ %103, %106 ]
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %113 = load i64, ptr %110, align 2
  store i64 %113, ptr %111, align 2
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 %92
  %115 = add nuw nsw i64 %109, 1
  %116 = icmp eq i64 %115, %80
  br i1 %116, label %117, label %108, !llvm.loop !68

117:                                              ; preds = %108
  %118 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %35) #16
  %119 = icmp eq ptr %118, null
  %120 = select i1 %93, i1 true, i1 %119
  %121 = or i1 %120, %91
  br i1 %121, label %135, label %124

122:                                              ; preds = %105
  %123 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %35) #16
  br label %135

124:                                              ; preds = %117
  %125 = getelementptr inbounds i16, ptr %94, i64 %97
  br label %126

126:                                              ; preds = %124, %126
  %127 = phi ptr [ %132, %126 ], [ %125, %124 ]
  %128 = phi i64 [ %133, %126 ], [ 0, %124 ]
  %129 = phi ptr [ %131, %126 ], [ %118, %124 ]
  %130 = load i16, ptr %127, align 2, !tbaa !42
  %131 = getelementptr inbounds i16, ptr %129, i64 1
  store i16 %130, ptr %129, align 2, !tbaa !42
  %132 = getelementptr inbounds i16, ptr %127, i64 %92
  %133 = add nuw nsw i64 %128, 1
  %134 = icmp eq i64 %133, %80
  br i1 %134, label %135, label %126, !llvm.loop !69

135:                                              ; preds = %126, %117, %122
  %136 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %35, ptr noundef %2) #18
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  br label %139

139:                                              ; preds = %99, %95, %135
  %140 = phi i32 [ %138, %135 ], [ 0, %95 ], [ 0, %99 ]
  %141 = add nuw nsw i64 %97, 1
  %142 = icmp slt i64 %141, %73
  br i1 %142, label %95, label %143, !llvm.loop !70

143:                                              ; preds = %139, %83
  %144 = phi i32 [ %67, %83 ], [ %140, %139 ]
  %145 = load i64, ptr %5, align 8, !tbaa !27
  %146 = add nsw i64 %145, %68
  %147 = load i64, ptr %44, align 8, !tbaa !5
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %64, label %149, !llvm.loop !71

149:                                              ; preds = %64, %143
  %150 = phi i32 [ %144, %143 ], [ 0, %64 ]
  %151 = load i64, ptr %46, align 8, !tbaa !40
  br label %152

152:                                              ; preds = %149, %59
  %153 = phi i64 [ %53, %59 ], [ %151, %149 ]
  %154 = phi i32 [ 1, %59 ], [ %150, %149 ]
  %155 = load ptr, ptr %51, align 8, !tbaa !72
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %152
  %158 = load i64, ptr %4, align 8, !tbaa !27
  %159 = add i64 %158, %56
  %160 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %159, i64 noundef %153) #17
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 0, i32 %154
  %163 = load i64, ptr %46, align 8, !tbaa !40
  br label %164

164:                                              ; preds = %152, %157, %52
  %165 = phi i64 [ %53, %52 ], [ %163, %157 ], [ %153, %152 ]
  %166 = phi i64 [ %54, %52 ], [ %163, %157 ], [ %153, %152 ]
  %167 = phi i64 [ %56, %52 ], [ %159, %157 ], [ %56, %152 ]
  %168 = phi i32 [ 0, %52 ], [ %162, %157 ], [ %154, %152 ]
  %169 = load i64, ptr %4, align 8, !tbaa !27
  %170 = add nsw i64 %169, %57
  %171 = icmp slt i64 %170, %166
  br i1 %171, label %52, label %172, !llvm.loop !73

172:                                              ; preds = %164, %43
  %173 = phi i32 [ 1, %43 ], [ %168, %164 ]
  %174 = phi i64 [ %47, %43 ], [ %166, %164 ]
  %175 = add nsw i64 %174, -1
  %176 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %175, i64 noundef %174) #17
  %177 = icmp eq i64 %11, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %180 = load i64, ptr %179, align 8, !tbaa !5
  %181 = add i64 %15, %180
  %182 = sub i64 %11, %181
  br label %183

183:                                              ; preds = %178, %172
  %184 = phi i64 [ %182, %178 ], [ %15, %172 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %411

185:                                              ; preds = %40, %247
  %186 = phi i32 [ 1, %40 ], [ %249, %247 ]
  %187 = phi i64 [ 0, %40 ], [ %248, %247 ]
  %188 = phi i64 [ 0, %40 ], [ %250, %247 ]
  %189 = icmp eq i32 %186, 0
  br i1 %189, label %247, label %190

190:                                              ; preds = %185
  %191 = load i64, ptr %41, align 8, !tbaa !5
  %192 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %34, i64 noundef 0, i64 noundef %188, i64 noundef %191, i64 noundef 1, ptr noundef %2) #18
  %193 = load i64, ptr %37, align 8, !tbaa !40
  %194 = xor i64 %188, -1
  %195 = add i64 %193, %194
  %196 = load i64, ptr %41, align 8, !tbaa !5
  %197 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %35, i64 noundef 0, i64 noundef %195, i64 noundef %196, i64 noundef 1, ptr noundef %2) #18
  %198 = icmp eq ptr %192, null
  %199 = icmp eq ptr %197, null
  %200 = select i1 %198, i1 true, i1 %199
  br i1 %200, label %247, label %201

201:                                              ; preds = %190
  %202 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %34) #16
  %203 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %35) #16
  %204 = load i64, ptr %41, align 8, !tbaa !5
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %235

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 %204
  br label %208

208:                                              ; preds = %206, %208
  %209 = phi i64 [ %215, %208 ], [ 0, %206 ]
  %210 = phi ptr [ %212, %208 ], [ %207, %206 ]
  %211 = phi ptr [ %213, %208 ], [ %192, %206 ]
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 -1
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 1
  %214 = load i64, ptr %211, align 2
  store i64 %214, ptr %212, align 2
  %215 = add nuw nsw i64 %209, 1
  %216 = load i64, ptr %41, align 8, !tbaa !5
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %208, label %218, !llvm.loop !74

218:                                              ; preds = %208
  %219 = icmp ne ptr %202, null
  %220 = icmp ne ptr %203, null
  %221 = select i1 %219, i1 %220, i1 false
  %222 = icmp sgt i64 %216, 0
  %223 = and i1 %221, %222
  br i1 %223, label %224, label %235

224:                                              ; preds = %218
  %225 = getelementptr inbounds i16, ptr %203, i64 %216
  %226 = getelementptr i16, ptr %225, i64 -1
  br label %227

227:                                              ; preds = %224, %227
  %228 = phi i64 [ 0, %224 ], [ %233, %227 ]
  %229 = sub nsw i64 0, %228
  %230 = getelementptr inbounds i16, ptr %202, i64 %228
  %231 = load i16, ptr %230, align 2, !tbaa !42
  %232 = getelementptr i16, ptr %226, i64 %229
  store i16 %231, ptr %232, align 2, !tbaa !42
  %233 = add nuw nsw i64 %228, 1
  %234 = icmp eq i64 %233, %216
  br i1 %234, label %235, label %227, !llvm.loop !75

235:                                              ; preds = %227, %201, %218
  %236 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %35, ptr noundef %2) #18
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = load ptr, ptr %42, align 8, !tbaa !72
  %240 = icmp eq ptr %239, null
  br i1 %240, label %247, label %241

241:                                              ; preds = %235
  %242 = add nsw i64 %187, 1
  %243 = load i64, ptr %37, align 8, !tbaa !40
  %244 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %187, i64 noundef %243) #17
  %245 = icmp eq i32 %244, 0
  %246 = select i1 %245, i32 0, i32 %238
  br label %247

247:                                              ; preds = %235, %241, %190, %185
  %248 = phi i64 [ %187, %185 ], [ %187, %190 ], [ %242, %241 ], [ %187, %235 ]
  %249 = phi i32 [ 0, %185 ], [ 0, %190 ], [ %246, %241 ], [ %238, %235 ]
  %250 = add nuw nsw i64 %188, 1
  %251 = load i64, ptr %37, align 8, !tbaa !40
  %252 = icmp slt i64 %250, %251
  br i1 %252, label %185, label %253, !llvm.loop !76

253:                                              ; preds = %247, %36
  %254 = phi i32 [ 1, %36 ], [ %249, %247 ]
  %255 = icmp eq i64 %9, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %258 = load i64, ptr %257, align 8, !tbaa !5
  %259 = add i64 %13, %258
  %260 = sub i64 %9, %259
  br label %261

261:                                              ; preds = %256, %253
  %262 = phi i64 [ %260, %256 ], [ %13, %253 ]
  %263 = icmp eq i64 %11, 0
  br i1 %263, label %411, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %266 = load i64, ptr %265, align 8, !tbaa !40
  %267 = add i64 %15, %266
  %268 = sub i64 %11, %267
  br label %411

269:                                              ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @GetPixelCacheTileSize(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %6) #16
  %270 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %271 = load i64, ptr %270, align 8, !tbaa !5
  store i64 %271, ptr %7, align 8, !tbaa !27
  %272 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %273 = load i64, ptr %272, align 8, !tbaa !40
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %275, label %397

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %277 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %278

278:                                              ; preds = %275, %389
  %279 = phi i64 [ %273, %275 ], [ %390, %389 ]
  %280 = phi i64 [ %273, %275 ], [ %391, %389 ]
  %281 = phi i64 [ 0, %275 ], [ %395, %389 ]
  %282 = phi i32 [ 1, %275 ], [ %393, %389 ]
  %283 = phi i64 [ 0, %275 ], [ %392, %389 ]
  %284 = icmp eq i32 %282, 0
  br i1 %284, label %389, label %285

285:                                              ; preds = %278
  %286 = load i64, ptr %270, align 8, !tbaa !5
  %287 = icmp sgt i64 %286, 0
  br i1 %287, label %288, label %377

288:                                              ; preds = %285
  %289 = load i64, ptr %7, align 8, !tbaa !27
  br label %290

290:                                              ; preds = %288, %368
  %291 = phi i64 [ %370, %368 ], [ %289, %288 ]
  %292 = phi i64 [ %372, %368 ], [ %286, %288 ]
  %293 = phi i64 [ %371, %368 ], [ 0, %288 ]
  %294 = phi i32 [ %369, %368 ], [ 1, %288 ]
  %295 = add nsw i64 %291, %293
  %296 = icmp sgt i64 %295, %292
  %297 = sub i64 %292, %295
  %298 = select i1 %296, i64 %297, i64 0
  %299 = add i64 %298, %291
  %300 = load i64, ptr %6, align 8, !tbaa !27
  %301 = add nsw i64 %300, %281
  %302 = load i64, ptr %272, align 8, !tbaa !40
  %303 = icmp sgt i64 %301, %302
  %304 = sub i64 %302, %301
  %305 = select i1 %303, i64 %304, i64 0
  %306 = add i64 %305, %300
  %307 = call ptr @GetCacheViewVirtualPixels(ptr noundef %34, i64 noundef %293, i64 noundef %281, i64 noundef %299, i64 noundef %306, ptr noundef %2) #18
  %308 = icmp eq ptr %307, null
  br i1 %308, label %374, label %309

309:                                              ; preds = %290
  %310 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %34) #16
  %311 = icmp sgt i64 %299, 0
  br i1 %311, label %312, label %368

312:                                              ; preds = %309
  %313 = add i64 %299, %293
  %314 = add nsw i64 %299, -1
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 %314
  %316 = icmp slt i64 %306, 1
  %317 = icmp eq ptr %310, null
  %318 = getelementptr inbounds i16, ptr %310, i64 %314
  br label %319

319:                                              ; preds = %312, %364
  %320 = phi i64 [ 0, %312 ], [ %366, %364 ]
  %321 = phi i32 [ %294, %312 ], [ %365, %364 ]
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %364, label %323

323:                                              ; preds = %319
  %324 = load i64, ptr %276, align 8, !tbaa !40
  %325 = sub i64 %320, %313
  %326 = add i64 %325, %324
  %327 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %35, i64 noundef %281, i64 noundef %326, i64 noundef %306, i64 noundef 1, ptr noundef %2) #18
  %328 = icmp eq ptr %327, null
  br i1 %328, label %364, label %329

329:                                              ; preds = %323
  %330 = sub nsw i64 0, %320
  br i1 %316, label %347, label %331

331:                                              ; preds = %329
  %332 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 %330
  br label %333

333:                                              ; preds = %331, %333
  %334 = phi i64 [ %340, %333 ], [ 0, %331 ]
  %335 = phi ptr [ %339, %333 ], [ %332, %331 ]
  %336 = phi ptr [ %337, %333 ], [ %327, %331 ]
  %337 = getelementptr inbounds %struct._PixelPacket, ptr %336, i64 1
  %338 = load i64, ptr %335, align 2
  store i64 %338, ptr %336, align 2
  %339 = getelementptr inbounds %struct._PixelPacket, ptr %335, i64 %299
  %340 = add nuw nsw i64 %334, 1
  %341 = icmp slt i64 %340, %306
  br i1 %341, label %333, label %342, !llvm.loop !77

342:                                              ; preds = %333
  %343 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %35) #16
  %344 = icmp eq ptr %343, null
  %345 = select i1 %317, i1 true, i1 %344
  %346 = or i1 %345, %316
  br i1 %346, label %360, label %349

347:                                              ; preds = %329
  %348 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %35) #16
  br label %360

349:                                              ; preds = %342
  %350 = getelementptr inbounds i16, ptr %318, i64 %330
  br label %351

351:                                              ; preds = %349, %351
  %352 = phi ptr [ %357, %351 ], [ %350, %349 ]
  %353 = phi i64 [ %358, %351 ], [ 0, %349 ]
  %354 = phi ptr [ %356, %351 ], [ %343, %349 ]
  %355 = load i16, ptr %352, align 2, !tbaa !42
  %356 = getelementptr inbounds i16, ptr %354, i64 1
  store i16 %355, ptr %354, align 2, !tbaa !42
  %357 = getelementptr inbounds i16, ptr %352, i64 %299
  %358 = add nuw nsw i64 %353, 1
  %359 = icmp slt i64 %358, %306
  br i1 %359, label %351, label %360, !llvm.loop !78

360:                                              ; preds = %351, %342, %347
  %361 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %35, ptr noundef %2) #18
  %362 = icmp ne i32 %361, 0
  %363 = zext i1 %362 to i32
  br label %364

364:                                              ; preds = %323, %319, %360
  %365 = phi i32 [ %363, %360 ], [ 0, %319 ], [ 0, %323 ]
  %366 = add nuw nsw i64 %320, 1
  %367 = icmp eq i64 %366, %299
  br i1 %367, label %368, label %319, !llvm.loop !79

368:                                              ; preds = %364, %309
  %369 = phi i32 [ %294, %309 ], [ %365, %364 ]
  %370 = load i64, ptr %7, align 8, !tbaa !27
  %371 = add nsw i64 %370, %293
  %372 = load i64, ptr %270, align 8, !tbaa !5
  %373 = icmp slt i64 %371, %372
  br i1 %373, label %290, label %374, !llvm.loop !80

374:                                              ; preds = %290, %368
  %375 = phi i32 [ %369, %368 ], [ 0, %290 ]
  %376 = load i64, ptr %272, align 8, !tbaa !40
  br label %377

377:                                              ; preds = %374, %285
  %378 = phi i64 [ %279, %285 ], [ %376, %374 ]
  %379 = phi i32 [ 1, %285 ], [ %375, %374 ]
  %380 = load ptr, ptr %277, align 8, !tbaa !72
  %381 = icmp eq ptr %380, null
  br i1 %381, label %389, label %382

382:                                              ; preds = %377
  %383 = load i64, ptr %6, align 8, !tbaa !27
  %384 = add i64 %383, %283
  %385 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %384, i64 noundef %378) #17
  %386 = icmp eq i32 %385, 0
  %387 = select i1 %386, i32 0, i32 %379
  %388 = load i64, ptr %272, align 8, !tbaa !40
  br label %389

389:                                              ; preds = %377, %382, %278
  %390 = phi i64 [ %279, %278 ], [ %388, %382 ], [ %378, %377 ]
  %391 = phi i64 [ %280, %278 ], [ %388, %382 ], [ %378, %377 ]
  %392 = phi i64 [ %283, %278 ], [ %384, %382 ], [ %283, %377 ]
  %393 = phi i32 [ 0, %278 ], [ %387, %382 ], [ %379, %377 ]
  %394 = load i64, ptr %6, align 8, !tbaa !27
  %395 = add nsw i64 %394, %281
  %396 = icmp slt i64 %395, %391
  br i1 %396, label %278, label %397, !llvm.loop !81

397:                                              ; preds = %389, %269
  %398 = phi i32 [ 1, %269 ], [ %393, %389 ]
  %399 = phi i64 [ %273, %269 ], [ %391, %389 ]
  %400 = add nsw i64 %399, -1
  %401 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %400, i64 noundef %399) #17
  %402 = icmp eq i64 %9, 0
  br i1 %402, label %408, label %403

403:                                              ; preds = %397
  %404 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %405 = load i64, ptr %404, align 8, !tbaa !40
  %406 = add i64 %13, %405
  %407 = sub i64 %9, %406
  br label %408

408:                                              ; preds = %403, %397
  %409 = phi i64 [ %407, %403 ], [ %13, %397 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %411

410:                                              ; preds = %33
  unreachable

411:                                              ; preds = %261, %264, %408, %183
  %412 = phi i64 [ %11, %408 ], [ %9, %264 ], [ %9, %261 ], [ %11, %183 ]
  %413 = phi i64 [ %9, %408 ], [ %11, %264 ], [ 0, %261 ], [ %9, %183 ]
  %414 = phi i64 [ %15, %408 ], [ %262, %264 ], [ %262, %261 ], [ %184, %183 ]
  %415 = phi i64 [ %409, %408 ], [ %268, %264 ], [ %15, %261 ], [ %13, %183 ]
  %416 = phi i32 [ %398, %408 ], [ %254, %264 ], [ %254, %261 ], [ %173, %183 ]
  %417 = call ptr @DestroyCacheView(ptr noundef %35) #16
  %418 = call ptr @DestroyCacheView(ptr noundef %34) #16
  %419 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %420 = load i32, ptr %419, align 8, !tbaa !82
  %421 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 77
  store i32 %420, ptr %421, align 8, !tbaa !82
  %422 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 26
  store i64 %412, ptr %422, align 8, !tbaa.struct !64
  %423 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 26, i32 1
  store i64 %413, ptr %423, align 8, !tbaa.struct !65
  %424 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 26, i32 2
  store i64 %414, ptr %424, align 8, !tbaa.struct !66
  %425 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 26, i32 3
  store i64 %415, ptr %425, align 8, !tbaa.struct !67
  %426 = icmp eq i32 %416, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %411
  %428 = call ptr @DestroyImage(ptr noundef nonnull %31) #16
  br label %429

429:                                              ; preds = %411, %427, %20, %18
  %430 = phi ptr [ %19, %18 ], [ null, %20 ], [ %428, %427 ], [ %31, %411 ]
  ret ptr %430
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetPixelCacheTileSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef nonnull %10) #16
  %12 = load ptr, ptr %6, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #16
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #14
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShearImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._RectangleInfo, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1599, ptr noundef nonnull @.str.10, ptr noundef nonnull %11) #16
  br label %13

13:                                               ; preds = %10, %4
  %14 = fcmp une double %1, 0.000000e+00
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = tail call double @fmod(double noundef %1, double noundef 9.000000e+01) #16
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1603, i32 noundef 465, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #16
  br label %138

21:                                               ; preds = %15, %13
  %22 = fcmp une double %2, 0.000000e+00
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = tail call double @fmod(double noundef %2, double noundef 9.000000e+01) #16
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1605, i32 noundef 465, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull %27) #16
  br label %138

29:                                               ; preds = %23, %21
  %30 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1611, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %33) #16
  br label %138

35:                                               ; preds = %29
  %36 = tail call double @fmod(double noundef %1, double noundef 3.600000e+02) #16
  %37 = tail call fastcc double @DegreesToRadians(double noundef %36) #17
  %38 = tail call double @tan(double noundef %37) #16
  %39 = fneg double %38
  %40 = tail call double @fmod(double noundef %2, double noundef 3.600000e+02) #16
  %41 = tail call fastcc double @DegreesToRadians(double noundef %40) #17
  %42 = tail call double @tan(double noundef %41) #16
  %43 = fcmp oeq double %38, 0.000000e+00
  %44 = fcmp oeq double %42, 0.000000e+00
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %138, label %46

46:                                               ; preds = %35
  %47 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %30, i32 noundef 1) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %50) #16
  %51 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #16
  br label %138

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !84
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %30, i32 noundef 6) #16
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
  store i32 13, ptr %67, align 8, !tbaa !85
  %68 = load <2 x i64>, ptr %59, align 8, !tbaa !27
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
  store <2 x i64> %86, ptr %6, align 16, !tbaa !27
  %87 = call ptr @BorderImage(ptr noundef nonnull %30, ptr noundef nonnull %6, ptr noundef %3) #16
  store ptr %87, ptr %5, align 8, !tbaa !86
  %88 = call ptr @DestroyImage(ptr noundef nonnull %30) #16
  %89 = icmp eq ptr %87, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %58
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %92 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1642, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %91) #16
  br label %138

93:                                               ; preds = %58
  %94 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !84
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %87, i32 noundef 6) #16
  br label %99

99:                                               ; preds = %97, %93
  %100 = fptrunc double %39 to float
  %101 = load i64, ptr %59, align 8, !tbaa !5
  %102 = load i64, ptr %63, align 8, !tbaa !40
  %103 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 8
  %104 = load i64, ptr %103, align 8, !tbaa !40
  %105 = sub i64 %104, %102
  %106 = sdiv i64 %105, 2
  %107 = extractelement <2 x i64> %86, i64 0
  %108 = call fastcc i32 @XShearImage(ptr noundef nonnull %87, float noundef %100, i64 noundef %101, i64 noundef %102, i64 noundef %107, i64 noundef %106, ptr noundef %3) #17, !range !26
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = call ptr @DestroyImage(ptr noundef nonnull %87) #16
  br label %138

112:                                              ; preds = %99
  %113 = fptrunc double %42 to float
  %114 = load i64, ptr %63, align 8, !tbaa !40
  %115 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 7
  %116 = load i64, ptr %115, align 8, !tbaa !5
  %117 = sub i64 %116, %76
  %118 = sdiv i64 %117, 2
  %119 = extractelement <2 x i64> %86, i64 1
  %120 = call fastcc i32 @YShearImage(ptr noundef nonnull %87, float noundef %113, i64 noundef %76, i64 noundef %114, i64 noundef %118, i64 noundef %119, ptr noundef %3) #17, !range !26
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = call ptr @DestroyImage(ptr noundef nonnull %87) #16
  br label %138

124:                                              ; preds = %112
  %125 = load i64, ptr %59, align 8, !tbaa !5
  %126 = uitofp i64 %125 to float
  %127 = load i64, ptr %63, align 8, !tbaa !40
  %128 = uitofp i64 %127 to float
  %129 = call fastcc i32 @CropToFitImage(ptr noundef nonnull %5, float noundef %100, float noundef %113, float noundef %126, float noundef %128, i32 noundef 0, ptr noundef %3) #17, !range !26
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %131 = load i32, ptr %130, align 8, !tbaa !85
  %132 = load ptr, ptr %5, align 8, !tbaa !86
  %133 = getelementptr inbounds %struct._Image, ptr %132, i64 0, i32 36
  store i32 %131, ptr %133, align 8, !tbaa !85
  %134 = getelementptr inbounds %struct._Image, ptr %132, i64 0, i32 26
  %135 = icmp eq i32 %129, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, i8 0, i64 16, i1 false)
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = call ptr @DestroyImage(ptr noundef nonnull %132) #16
  br label %138

138:                                              ; preds = %124, %136, %35, %122, %110, %90, %49, %32, %26, %18
  %139 = phi ptr [ null, %18 ], [ null, %26 ], [ null, %32 ], [ %51, %49 ], [ null, %90 ], [ null, %110 ], [ null, %122 ], [ %30, %35 ], [ %137, %136 ], [ %132, %124 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
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
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: optsize
declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @XShearImage(ptr noundef %0, float noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #14
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, ptr noundef nonnull @.str.10, ptr noundef nonnull %16) #16
  br label %18

18:                                               ; preds = %15, %7
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8) #16
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %8) #17
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !87
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %8) #17
  br label %24

24:                                               ; preds = %23, %18
  %25 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %6) #16
  %26 = icmp sgt i64 %3, 0
  br i1 %26, label %27, label %169

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = uitofp i64 %3 to double
  %30 = fmul double %29, 5.000000e-01
  %31 = icmp sgt i64 %2, 0
  %32 = add i64 %4, %2
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %36

36:                                               ; preds = %27, %164
  %37 = phi i32 [ 1, %27 ], [ %166, %164 ]
  %38 = phi i64 [ 0, %27 ], [ %167, %164 ]
  %39 = phi i64 [ 0, %27 ], [ %165, %164 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #14
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %164, label %41

41:                                               ; preds = %36
  %42 = add nsw i64 %38, %5
  %43 = load i64, ptr %28, align 8, !tbaa !5
  %44 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %25, i64 noundef 0, i64 noundef %42, i64 noundef %43, i64 noundef 1, ptr noundef %6) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %164, label %46

46:                                               ; preds = %41
  %47 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %25) #16
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %44, i64 %4
  %49 = getelementptr inbounds i16, ptr %47, i64 %4
  %50 = sitofp i64 %38 to double
  %51 = fsub double %50, %30
  %52 = fptrunc double %51 to float
  %53 = fmul float %52, %1
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %54, label %164, label %55

55:                                               ; preds = %46
  %56 = fcmp ule float %53, 0.000000e+00
  %57 = fneg float %53
  %58 = select i1 %56, float %57, float %53
  %59 = call float @llvm.floor.f32(float %58)
  %60 = fptosi float %59 to i64
  %61 = sitofp i64 %60 to float
  %62 = fsub float %58, %61
  %63 = add nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !tbaa.struct !88
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %10) #16
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %11) #16
  br i1 %56, label %64, label %109

64:                                               ; preds = %55
  %65 = icmp slt i64 %60, %4
  br i1 %65, label %66, label %153

66:                                               ; preds = %64
  %67 = xor i64 %60, -1
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 %67
  %69 = getelementptr inbounds i16, ptr %49, i64 %67
  br i1 %31, label %70, label %95

70:                                               ; preds = %66, %88
  %71 = phi i64 [ %93, %88 ], [ 0, %66 ]
  %72 = phi ptr [ %91, %88 ], [ %68, %66 ]
  %73 = phi ptr [ %90, %88 ], [ %48, %66 ]
  %74 = phi ptr [ %92, %88 ], [ %69, %66 ]
  %75 = phi ptr [ %89, %88 ], [ %49, %66 ]
  %76 = add nsw i64 %71, %4
  %77 = icmp sgt i64 %76, %60
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %80 = getelementptr inbounds i16, ptr %75, i64 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %79, ptr noundef nonnull %80, ptr noundef nonnull %9) #17
  br label %88

81:                                               ; preds = %70
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %73, ptr noundef %75, ptr noundef nonnull %10) #17
  %82 = load float, ptr %33, align 4, !tbaa !62
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  %84 = load i16, ptr %83, align 2, !tbaa !91
  %85 = uitofp i16 %84 to float
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %9, float noundef %82, ptr noundef nonnull %10, float noundef %85, float noundef %62, ptr noundef nonnull %11) #17
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %72, ptr noundef %74) #17
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %87 = getelementptr inbounds i16, ptr %75, i64 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %73, ptr noundef %75, ptr noundef nonnull %9) #17
  br label %88

88:                                               ; preds = %81, %78
  %89 = phi ptr [ %80, %78 ], [ %87, %81 ]
  %90 = phi ptr [ %79, %78 ], [ %86, %81 ]
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %92 = getelementptr inbounds i16, ptr %74, i64 1
  %93 = add nuw nsw i64 %71, 1
  %94 = icmp eq i64 %93, %2
  br i1 %94, label %95, label %70, !llvm.loop !92

95:                                               ; preds = %88, %66
  %96 = phi ptr [ %69, %66 ], [ %92, %88 ]
  %97 = phi ptr [ %68, %66 ], [ %91, %88 ]
  %98 = load float, ptr %33, align 4, !tbaa !62
  %99 = load float, ptr %34, align 4, !tbaa !62
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %9, float noundef %98, ptr noundef nonnull %8, float noundef %99, float noundef %62, ptr noundef nonnull %11) #17
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %97, ptr noundef %96) #17
  %100 = icmp sgt i64 %60, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %95, %101
  %102 = phi i64 [ %107, %101 ], [ 0, %95 ]
  %103 = phi ptr [ %106, %101 ], [ %97, %95 ]
  %104 = phi ptr [ %105, %101 ], [ %96, %95 ]
  %105 = getelementptr inbounds i16, ptr %104, i64 1
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %106, ptr noundef nonnull %105) #17
  %107 = add nuw nsw i64 %102, 1
  %108 = icmp eq i64 %107, %60
  br i1 %108, label %153, label %101, !llvm.loop !93

109:                                              ; preds = %55
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 %2
  %111 = getelementptr inbounds i16, ptr %49, i64 %2
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 %63
  %113 = getelementptr inbounds i16, ptr %111, i64 %63
  br i1 %31, label %114, label %137

114:                                              ; preds = %109
  %115 = add i64 %32, %63
  br label %116

116:                                              ; preds = %114, %134
  %117 = phi i64 [ 0, %114 ], [ %135, %134 ]
  %118 = phi ptr [ %112, %114 ], [ %124, %134 ]
  %119 = phi ptr [ %110, %114 ], [ %122, %134 ]
  %120 = phi ptr [ %113, %114 ], [ %125, %134 ]
  %121 = phi ptr [ %111, %114 ], [ %123, %134 ]
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 -1
  %123 = getelementptr inbounds i16, ptr %121, i64 -1
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 -1
  %125 = getelementptr inbounds i16, ptr %120, i64 -1
  %126 = sub i64 %115, %117
  %127 = load i64, ptr %28, align 8, !tbaa !5
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %116
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %122, ptr noundef nonnull %123, ptr noundef nonnull %10) #17
  %130 = load float, ptr %33, align 4, !tbaa !62
  %131 = getelementptr %struct._PixelPacket, ptr %119, i64 -1, i32 3
  %132 = load i16, ptr %131, align 2, !tbaa !91
  %133 = uitofp i16 %132 to float
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %9, float noundef %130, ptr noundef nonnull %10, float noundef %133, float noundef %62, ptr noundef nonnull %11) #17
  call fastcc void @SetPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %124, ptr noundef nonnull %125) #17
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %122, ptr noundef nonnull %123, ptr noundef nonnull %9) #17
  br label %134

134:                                              ; preds = %116, %129
  %135 = add nuw nsw i64 %117, 1
  %136 = icmp eq i64 %135, %2
  br i1 %136, label %137, label %116, !llvm.loop !94

137:                                              ; preds = %134, %109
  %138 = phi ptr [ %113, %109 ], [ %125, %134 ]
  %139 = phi ptr [ %112, %109 ], [ %124, %134 ]
  %140 = load float, ptr %33, align 4, !tbaa !62
  %141 = load float, ptr %34, align 4, !tbaa !62
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %9, float noundef %140, ptr noundef nonnull %8, float noundef %141, float noundef %62, ptr noundef nonnull %11) #17
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 -1
  %143 = getelementptr inbounds i16, ptr %138, i64 -1
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %142, ptr noundef nonnull %143) #17
  %144 = icmp sgt i64 %60, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %137, %145
  %146 = phi i64 [ %151, %145 ], [ 0, %137 ]
  %147 = phi ptr [ %149, %145 ], [ %142, %137 ]
  %148 = phi ptr [ %150, %145 ], [ %143, %137 ]
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 -1
  %150 = getelementptr inbounds i16, ptr %148, i64 -1
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %149, ptr noundef nonnull %150) #17
  %151 = add nuw nsw i64 %146, 1
  %152 = icmp eq i64 %151, %60
  br i1 %152, label %153, label %145, !llvm.loop !95

153:                                              ; preds = %145, %101, %137, %95, %64
  %154 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef %6) #18
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = load ptr, ptr %35, align 8, !tbaa !72
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = add nsw i64 %39, 1
  %161 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i64 noundef %39, i64 noundef %3) #17
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 0, i32 %156
  br label %164

164:                                              ; preds = %153, %159, %46, %41, %36
  %165 = phi i64 [ %39, %36 ], [ %39, %41 ], [ %39, %46 ], [ %160, %159 ], [ %39, %153 ]
  %166 = phi i32 [ 0, %36 ], [ 0, %41 ], [ 1, %46 ], [ %163, %159 ], [ %156, %153 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #14
  %167 = add nuw nsw i64 %38, 1
  %168 = icmp eq i64 %167, %3
  br i1 %168, label %169, label %36, !llvm.loop !96

169:                                              ; preds = %164, %24
  %170 = phi i32 [ 1, %24 ], [ %166, %164 ]
  %171 = call ptr @DestroyCacheView(ptr noundef %25) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #14
  ret i32 %170
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @YShearImage(ptr noundef %0, float noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #14
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1385, ptr noundef nonnull @.str.10, ptr noundef nonnull %16) #16
  br label %18

18:                                               ; preds = %15, %7
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8) #16
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %8) #17
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !87
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %8) #17
  br label %24

24:                                               ; preds = %23, %18
  %25 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %6) #16
  %26 = icmp sgt i64 %2, 0
  br i1 %26, label %27, label %170

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %29 = uitofp i64 %2 to double
  %30 = fmul double %29, 5.000000e-01
  %31 = icmp sgt i64 %3, 0
  %32 = add i64 %5, %3
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %36

36:                                               ; preds = %27, %165
  %37 = phi i32 [ 1, %27 ], [ %167, %165 ]
  %38 = phi i64 [ 0, %27 ], [ %168, %165 ]
  %39 = phi i64 [ 0, %27 ], [ %166, %165 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #14
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %165, label %41

41:                                               ; preds = %36
  %42 = add nsw i64 %38, %4
  %43 = load i64, ptr %28, align 8, !tbaa !40
  %44 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %25, i64 noundef %42, i64 noundef 0, i64 noundef 1, i64 noundef %43, ptr noundef %6) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %165, label %46

46:                                               ; preds = %41
  %47 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %25) #16
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %44, i64 %5
  %49 = getelementptr inbounds i16, ptr %47, i64 %5
  %50 = sitofp i64 %38 to double
  %51 = fsub double %50, %30
  %52 = fptrunc double %51 to float
  %53 = fmul float %52, %1
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %54, label %165, label %55

55:                                               ; preds = %46
  %56 = fcmp ule float %53, 0.000000e+00
  %57 = fneg float %53
  %58 = select i1 %56, float %57, float %53
  %59 = call float @llvm.floor.f32(float %58)
  %60 = fptosi float %59 to i64
  %61 = sitofp i64 %60 to float
  %62 = fsub float %58, %61
  %63 = add nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !tbaa.struct !88
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %10) #16
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %11) #16
  br i1 %56, label %64, label %109

64:                                               ; preds = %55
  %65 = icmp slt i64 %60, %5
  br i1 %65, label %66, label %153

66:                                               ; preds = %64
  %67 = xor i64 %60, -1
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 %67
  %69 = getelementptr inbounds i16, ptr %49, i64 %67
  br i1 %31, label %70, label %95

70:                                               ; preds = %66, %88
  %71 = phi ptr [ %91, %88 ], [ %68, %66 ]
  %72 = phi ptr [ %90, %88 ], [ %48, %66 ]
  %73 = phi i64 [ %93, %88 ], [ 0, %66 ]
  %74 = phi ptr [ %92, %88 ], [ %69, %66 ]
  %75 = phi ptr [ %89, %88 ], [ %49, %66 ]
  %76 = add nsw i64 %73, %5
  %77 = icmp sgt i64 %76, %60
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %80 = getelementptr inbounds i16, ptr %75, i64 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %79, ptr noundef nonnull %80, ptr noundef nonnull %9) #17
  br label %88

81:                                               ; preds = %70
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %72, ptr noundef %75, ptr noundef nonnull %10) #17
  %82 = load float, ptr %33, align 4, !tbaa !62
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 3
  %84 = load i16, ptr %83, align 2, !tbaa !91
  %85 = uitofp i16 %84 to float
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %9, float noundef %82, ptr noundef nonnull %10, float noundef %85, float noundef %62, ptr noundef nonnull %11) #17
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %71, ptr noundef %74) #17
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %87 = getelementptr inbounds i16, ptr %75, i64 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %72, ptr noundef %75, ptr noundef nonnull %9) #17
  br label %88

88:                                               ; preds = %81, %78
  %89 = phi ptr [ %80, %78 ], [ %87, %81 ]
  %90 = phi ptr [ %79, %78 ], [ %86, %81 ]
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %92 = getelementptr inbounds i16, ptr %74, i64 1
  %93 = add nuw nsw i64 %73, 1
  %94 = icmp eq i64 %93, %3
  br i1 %94, label %95, label %70, !llvm.loop !97

95:                                               ; preds = %88, %66
  %96 = phi ptr [ %69, %66 ], [ %92, %88 ]
  %97 = phi ptr [ %68, %66 ], [ %91, %88 ]
  %98 = load float, ptr %33, align 4, !tbaa !62
  %99 = load float, ptr %34, align 4, !tbaa !62
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %9, float noundef %98, ptr noundef nonnull %8, float noundef %99, float noundef %62, ptr noundef nonnull %11) #17
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %97, ptr noundef %96) #17
  %100 = icmp sgt i64 %60, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %95, %101
  %102 = phi ptr [ %106, %101 ], [ %97, %95 ]
  %103 = phi i64 [ %107, %101 ], [ 0, %95 ]
  %104 = phi ptr [ %105, %101 ], [ %96, %95 ]
  %105 = getelementptr inbounds i16, ptr %104, i64 1
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 1
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %106, ptr noundef nonnull %105) #17
  %107 = add nuw nsw i64 %103, 1
  %108 = icmp eq i64 %107, %60
  br i1 %108, label %153, label %101, !llvm.loop !98

109:                                              ; preds = %55
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 %3
  %111 = getelementptr inbounds i16, ptr %49, i64 %3
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 %63
  %113 = getelementptr inbounds i16, ptr %111, i64 %63
  br i1 %31, label %114, label %137

114:                                              ; preds = %109
  %115 = add i64 %32, %63
  br label %116

116:                                              ; preds = %114, %134
  %117 = phi ptr [ %112, %114 ], [ %124, %134 ]
  %118 = phi ptr [ %110, %114 ], [ %122, %134 ]
  %119 = phi i64 [ 0, %114 ], [ %135, %134 ]
  %120 = phi ptr [ %113, %114 ], [ %125, %134 ]
  %121 = phi ptr [ %111, %114 ], [ %123, %134 ]
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 -1
  %123 = getelementptr inbounds i16, ptr %121, i64 -1
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 -1
  %125 = getelementptr inbounds i16, ptr %120, i64 -1
  %126 = sub i64 %115, %119
  %127 = load i64, ptr %28, align 8, !tbaa !40
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %116
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %122, ptr noundef nonnull %123, ptr noundef nonnull %10) #17
  %130 = load float, ptr %33, align 4, !tbaa !62
  %131 = getelementptr %struct._PixelPacket, ptr %118, i64 -1, i32 3
  %132 = load i16, ptr %131, align 2, !tbaa !91
  %133 = uitofp i16 %132 to float
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %9, float noundef %130, ptr noundef nonnull %10, float noundef %133, float noundef %62, ptr noundef nonnull %11) #17
  call fastcc void @SetPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %124, ptr noundef nonnull %125) #17
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %122, ptr noundef nonnull %123, ptr noundef nonnull %9) #17
  br label %134

134:                                              ; preds = %116, %129
  %135 = add nuw nsw i64 %119, 1
  %136 = icmp eq i64 %135, %3
  br i1 %136, label %137, label %116, !llvm.loop !99

137:                                              ; preds = %134, %109
  %138 = phi ptr [ %113, %109 ], [ %125, %134 ]
  %139 = phi ptr [ %112, %109 ], [ %124, %134 ]
  %140 = load float, ptr %33, align 4, !tbaa !62
  %141 = load float, ptr %34, align 4, !tbaa !62
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %9, float noundef %140, ptr noundef nonnull %8, float noundef %141, float noundef %62, ptr noundef nonnull %11) #17
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 -1
  %143 = getelementptr inbounds i16, ptr %138, i64 -1
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %142, ptr noundef nonnull %143) #17
  %144 = icmp sgt i64 %60, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %137, %145
  %146 = phi ptr [ %149, %145 ], [ %142, %137 ]
  %147 = phi i64 [ %151, %145 ], [ 0, %137 ]
  %148 = phi ptr [ %150, %145 ], [ %143, %137 ]
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %146, i64 -1
  %150 = getelementptr inbounds i16, ptr %148, i64 -1
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %149, ptr noundef nonnull %150) #17
  %151 = add nuw nsw i64 %147, 1
  %152 = icmp eq i64 %151, %60
  br i1 %152, label %153, label %145, !llvm.loop !100

153:                                              ; preds = %145, %101, %137, %95, %64
  %154 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef %6) #18
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = load ptr, ptr %35, align 8, !tbaa !72
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %153
  %160 = add nsw i64 %39, 1
  %161 = load i64, ptr %28, align 8, !tbaa !40
  %162 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef %39, i64 noundef %161) #17
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 0, i32 %156
  br label %165

165:                                              ; preds = %153, %159, %46, %41, %36
  %166 = phi i64 [ %39, %36 ], [ %39, %41 ], [ %39, %46 ], [ %160, %159 ], [ %39, %153 ]
  %167 = phi i32 [ 0, %36 ], [ 0, %41 ], [ 1, %46 ], [ %164, %159 ], [ %156, %153 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #14
  %168 = add nuw nsw i64 %38, 1
  %169 = icmp eq i64 %168, %2
  br i1 %169, label %170, label %36, !llvm.loop !101

170:                                              ; preds = %165, %24
  %171 = phi i32 [ 1, %24 ], [ %167, %165 ]
  %172 = call ptr @DestroyCacheView(ptr noundef %25) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #14
  ret i32 %171
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @CropToFitImage(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x %struct._PointInfo], align 16
  %9 = alloca %struct._RectangleInfo, align 16
  %10 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10)
  %11 = insertelement <2 x float> poison, float %3, i64 0
  %12 = insertelement <2 x float> %11, float %4, i64 1
  %13 = fneg <2 x float> %12
  %14 = fpext <2 x float> %13 to <2 x double>
  %15 = fmul <2 x double> %14, <double 5.000000e-01, double 5.000000e-01>
  store <2 x double> %15, ptr %8, align 16, !tbaa !90
  %16 = insertelement <2 x float> poison, float %4, i64 0
  %17 = insertelement <2 x float> %16, float %3, i64 1
  %18 = fpext <2 x float> %17 to <2 x double>
  %19 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 1
  %20 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 1, i32 1
  %21 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %21, ptr %20, align 8, !tbaa !90
  %22 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 2, i32 1
  %23 = fmul <2 x double> %18, <double 5.000000e-01, double 5.000000e-01>
  %24 = extractelement <2 x double> %23, i64 1
  store double %24, ptr %19, align 16, !tbaa !102
  store <2 x double> %23, ptr %22, align 8, !tbaa !90
  %25 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 3, i32 1
  %26 = extractelement <2 x double> %23, i64 0
  store double %26, ptr %25, align 8, !tbaa !104
  %27 = icmp eq i32 %5, 0
  %28 = load ptr, ptr %0, align 8, !tbaa !86
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !40
  %31 = uitofp i64 %30 to double
  %32 = fmul double %31, 5.000000e-01
  %33 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !5
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
  %50 = load <4 x double>, ptr %49, align 16, !tbaa !90
  %51 = shufflevector <4 x double> %50, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %52 = shufflevector <4 x double> %50, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %53 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %52, <2 x double> %51)
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %53, <2 x double> %52)
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %54, <2 x double> %53)
  %56 = select i1 %27, <2 x double> %53, <2 x double> %55
  %57 = fadd <2 x double> %56, %44
  %58 = fadd <2 x double> %54, %46
  %59 = shufflevector <2 x double> %57, <2 x double> %58, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %59, ptr %49, align 16, !tbaa !90
  %60 = add nuw i64 %48, 2
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %62, label %47, !llvm.loop !105

62:                                               ; preds = %47
  %63 = load <2 x double>, ptr %8, align 16
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i64 [ 1, %62 ], [ %74, %64 ]
  %66 = phi <2 x double> [ %63, %62 ], [ %73, %64 ]
  %67 = phi <2 x double> [ %63, %62 ], [ %71, %64 ]
  %68 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 %65
  %69 = load <2 x double>, ptr %68, align 16, !tbaa !90
  %70 = fcmp ogt <2 x double> %67, %69
  %71 = select <2 x i1> %70, <2 x double> %69, <2 x double> %67
  %72 = fcmp olt <2 x double> %66, %69
  %73 = select <2 x i1> %72, <2 x double> %69, <2 x double> %66
  %74 = add nuw nsw i64 %65, 1
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %76, label %64, !llvm.loop !108

76:                                               ; preds = %64
  %77 = extractelement <2 x double> %71, i64 0
  %78 = fadd double %77, -5.000000e-01
  %79 = tail call double @llvm.ceil.f64(double %78)
  %80 = fptosi double %79 to i64
  %81 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  store i64 %80, ptr %81, align 16, !tbaa !37
  %82 = extractelement <2 x double> %71, i64 1
  %83 = fadd double %82, -5.000000e-01
  %84 = tail call double @llvm.ceil.f64(double %83)
  %85 = fptosi double %84 to i64
  %86 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  store i64 %85, ptr %86, align 8, !tbaa !38
  %87 = fsub <2 x double> %73, %71
  %88 = fadd <2 x double> %87, <double 5.000000e-01, double 5.000000e-01>
  %89 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %88)
  %90 = fptoui <2 x double> %89 to <2 x i64>
  store <2 x i64> %90, ptr %9, align 16, !tbaa !27
  %91 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %91, i64 32, i1 false), !tbaa.struct !64
  %92 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.15, ptr noundef nonnull %91) #16
  %93 = load ptr, ptr %0, align 8, !tbaa !86
  %94 = call ptr @CropImage(ptr noundef %93, ptr noundef nonnull %9, ptr noundef %6) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %76
  %97 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !64
  %98 = load ptr, ptr %0, align 8, !tbaa !86
  %99 = call ptr @DestroyImage(ptr noundef %98) #16
  store ptr %94, ptr %0, align 8, !tbaa !86
  br label %100

100:                                              ; preds = %76, %96
  %101 = phi i32 [ 1, %96 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShearRotateImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1743, ptr noundef nonnull @.str.10, ptr noundef nonnull %10) #16
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
  br i1 %21, label %18, label %15, !llvm.loop !109

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %15 ]
  %24 = phi float [ %25, %22 ], [ %16, %15 ]
  %25 = fadd float %24, -9.000000e+01
  %26 = add i64 %23, 1
  %27 = fcmp ogt float %25, 4.500000e+01
  br i1 %27, label %22, label %28, !llvm.loop !110

28:                                               ; preds = %22
  %29 = and i64 %26, 3
  br label %30

30:                                               ; preds = %28, %15
  %31 = phi float [ %16, %15 ], [ %25, %28 ]
  %32 = phi i64 [ 0, %15 ], [ %29, %28 ]
  %33 = tail call ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %32, ptr noundef %2) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %37 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1757, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %36) #16
  br label %156

38:                                               ; preds = %30
  %39 = fpext float %31 to double
  %40 = tail call fastcc double @DegreesToRadians(double noundef %39) #17
  %41 = fmul double %40, 5.000000e-01
  %42 = tail call double @tan(double noundef %41) #16
  %43 = fneg double %42
  %44 = tail call double @sin(double noundef %40) #16
  %45 = fcmp oeq double %42, 0.000000e+00
  %46 = fcmp oeq double %44, 0.000000e+00
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %156, label %48

48:                                               ; preds = %38
  %49 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %33, i32 noundef 1) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %52) #16
  %53 = tail call ptr @DestroyImage(ptr noundef nonnull %33) #16
  br label %156

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !84
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %33, i32 noundef 6) #16
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !40
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
  store i32 13, ptr %105, align 8, !tbaa !85
  store i64 %95, ptr %5, align 8, !tbaa !35
  %106 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  store i64 %101, ptr %106, align 8, !tbaa !36
  %107 = call ptr @BorderImage(ptr noundef nonnull %33, ptr noundef nonnull %5, ptr noundef %2) #16
  store ptr %107, ptr %4, align 8, !tbaa !86
  %108 = call ptr @DestroyImage(ptr noundef nonnull %33) #16
  %109 = icmp eq ptr %107, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %60
  %111 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %112 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1792, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %111) #16
  br label %156

113:                                              ; preds = %60
  %114 = fptrunc double %43 to float
  %115 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 8
  %116 = load i64, ptr %115, align 8, !tbaa !40
  %117 = sub i64 %116, %64
  %118 = sdiv i64 %117, 2
  %119 = call fastcc i32 @XShearImage(ptr noundef nonnull %107, float noundef %114, i64 noundef %62, i64 noundef %64, i64 noundef %95, i64 noundef %118, ptr noundef %2) #17, !range !26
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = call ptr @DestroyImage(ptr noundef nonnull %107) #16
  br label %156

123:                                              ; preds = %113
  %124 = fptrunc double %44 to float
  %125 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 7
  %126 = load i64, ptr %125, align 8, !tbaa !5
  %127 = sub i64 %126, %72
  %128 = sdiv i64 %127, 2
  %129 = call fastcc i32 @YShearImage(ptr noundef nonnull %107, float noundef %124, i64 noundef %72, i64 noundef %64, i64 noundef %128, i64 noundef %101, ptr noundef %2) #17, !range !26
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call ptr @DestroyImage(ptr noundef nonnull %107) #16
  br label %156

133:                                              ; preds = %123
  %134 = load i64, ptr %125, align 8, !tbaa !5
  %135 = sub i64 %134, %72
  %136 = sdiv i64 %135, 2
  %137 = load i64, ptr %115, align 8, !tbaa !40
  %138 = sub i64 %137, %79
  %139 = sdiv i64 %138, 2
  %140 = call fastcc i32 @XShearImage(ptr noundef nonnull %107, float noundef %114, i64 noundef %72, i64 noundef %79, i64 noundef %136, i64 noundef %139, ptr noundef %2) #17, !range !26
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = call ptr @DestroyImage(ptr noundef nonnull %107) #16
  br label %156

144:                                              ; preds = %133
  %145 = uitofp i64 %62 to float
  %146 = uitofp i64 %64 to float
  %147 = call fastcc i32 @CropToFitImage(ptr noundef nonnull %4, float noundef %114, float noundef %124, float noundef %145, float noundef %146, i32 noundef 1, ptr noundef %2) #17, !range !26
  %148 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %149 = load i32, ptr %148, align 8, !tbaa !85
  %150 = load ptr, ptr %4, align 8, !tbaa !86
  %151 = getelementptr inbounds %struct._Image, ptr %150, i64 0, i32 36
  store i32 %149, ptr %151, align 8, !tbaa !85
  %152 = getelementptr inbounds %struct._Image, ptr %150, i64 0, i32 26
  %153 = icmp eq i32 %147, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %152, i8 0, i64 16, i1 false)
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = call ptr @DestroyImage(ptr noundef nonnull %150) #16
  br label %156

156:                                              ; preds = %144, %154, %38, %142, %131, %121, %110, %51, %35
  %157 = phi ptr [ null, %35 ], [ %53, %51 ], [ null, %110 ], [ null, %121 ], [ null, %131 ], [ null, %142 ], [ %33, %38 ], [ %155, %154 ], [ %150, %144 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %157
}

; Function Attrs: optsize
declare ptr @AcquireMatrixInfo(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyMatrixInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @NullMatrix(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RadonProjection(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = tail call i64 @GetMatrixColumns(ptr noundef %0) #16
  %10 = icmp ugt i64 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %4, %129
  %12 = phi ptr [ %14, %129 ], [ %0, %4 ]
  %13 = phi i64 [ %130, %129 ], [ 1, %4 ]
  %14 = phi ptr [ %12, %129 ], [ %1, %4 ]
  %15 = call i64 @GetMatrixColumns(ptr noundef %12) #16
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = shl i64 %13, 1
  br label %129

19:                                               ; preds = %11
  %20 = icmp sgt i64 %13, 0
  %21 = shl i64 %13, 1
  br label %26

22:                                               ; preds = %129, %4
  %23 = phi ptr [ %0, %4 ], [ %14, %129 ]
  %24 = call i64 @GetMatrixColumns(ptr noundef %23) #16
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %133, label %170

26:                                               ; preds = %19, %125
  %27 = phi i64 [ 0, %19 ], [ %126, %125 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  br i1 %20, label %28, label %125

28:                                               ; preds = %26, %122
  %29 = phi i64 [ %123, %122 ], [ 0, %26 ]
  %30 = call i64 @GetMatrixRows(ptr noundef %12) #16
  %31 = xor i64 %29, -1
  %32 = sub i64 %29, %30
  %33 = icmp slt i64 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = add nsw i64 %29, %27
  %36 = add i64 %35, %13
  %37 = shl nuw nsw i64 %29, 1
  %38 = add nsw i64 %37, %27
  %39 = or disjoint i64 %38, 1
  br label %51

40:                                               ; preds = %74, %28
  %41 = phi i64 [ 0, %28 ], [ %75, %74 ]
  %42 = call i64 @GetMatrixRows(ptr noundef %12) #16
  %43 = sub i64 %42, %29
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %40
  %46 = add nsw i64 %29, %27
  %47 = add i64 %46, %13
  %48 = shl nuw nsw i64 %29, 1
  %49 = add nsw i64 %48, %27
  %50 = or disjoint i64 %49, 1
  br label %88

51:                                               ; preds = %34, %74
  %52 = phi i64 [ 0, %34 ], [ %75, %74 ]
  %53 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %35, i64 noundef %52, ptr noundef nonnull %5) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %51
  %56 = add nuw nsw i64 %52, %29
  %57 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %36, i64 noundef %56, ptr noundef nonnull %6) #16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = load i16, ptr %5, align 2, !tbaa !42
  %61 = load i16, ptr %6, align 2, !tbaa !42
  %62 = add i16 %61, %60
  store i16 %62, ptr %6, align 2, !tbaa !42
  %63 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %38, i64 noundef %52, ptr noundef nonnull %6) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = add nuw nsw i64 %56, 1
  %67 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %36, i64 noundef %66, ptr noundef nonnull %6) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i16, ptr %5, align 2, !tbaa !42
  %71 = load i16, ptr %6, align 2, !tbaa !42
  %72 = add i16 %71, %70
  store i16 %72, ptr %6, align 2, !tbaa !42
  %73 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %39, i64 noundef %52, ptr noundef nonnull %6) #16
  br label %74

74:                                               ; preds = %69, %65, %59, %55, %51
  %75 = add nuw nsw i64 %52, 1
  %76 = call i64 @GetMatrixRows(ptr noundef %12) #16
  %77 = add i64 %76, %31
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %51, label %40, !llvm.loop !111

79:                                               ; preds = %104, %40
  %80 = phi i64 [ %41, %40 ], [ %105, %104 ]
  %81 = call i64 @GetMatrixRows(ptr noundef %12) #16
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %79
  %84 = add nsw i64 %29, %27
  %85 = shl nuw nsw i64 %29, 1
  %86 = add nsw i64 %85, %27
  %87 = or disjoint i64 %86, 1
  br label %109

88:                                               ; preds = %45, %104
  %89 = phi i64 [ %41, %45 ], [ %105, %104 ]
  %90 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %46, i64 noundef %89, ptr noundef nonnull %5) #16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %88
  %93 = add nuw nsw i64 %89, %29
  %94 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %47, i64 noundef %93, ptr noundef nonnull %6) #16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load i16, ptr %5, align 2, !tbaa !42
  %98 = load i16, ptr %6, align 2, !tbaa !42
  %99 = add i16 %98, %97
  store i16 %99, ptr %6, align 2, !tbaa !42
  %100 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %49, i64 noundef %89, ptr noundef nonnull %6) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %50, i64 noundef %89, ptr noundef nonnull %5) #16
  br label %104

104:                                              ; preds = %102, %96, %92, %88
  %105 = add nuw nsw i64 %89, 1
  %106 = call i64 @GetMatrixRows(ptr noundef %12) #16
  %107 = sub i64 %106, %29
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %88, label %79, !llvm.loop !112

109:                                              ; preds = %83, %118
  %110 = phi i64 [ %80, %83 ], [ %119, %118 ]
  %111 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %84, i64 noundef %110, ptr noundef nonnull %5) #16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %86, i64 noundef %110, ptr noundef nonnull %5) #16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %87, i64 noundef %110, ptr noundef nonnull %5) #16
  br label %118

118:                                              ; preds = %116, %113, %109
  %119 = add nuw nsw i64 %110, 1
  %120 = call i64 @GetMatrixRows(ptr noundef %12) #16
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %109, label %122, !llvm.loop !113

122:                                              ; preds = %118, %79
  %123 = add nuw nsw i64 %29, 1
  %124 = icmp eq i64 %123, %13
  br i1 %124, label %125, label %28, !llvm.loop !114

125:                                              ; preds = %122, %26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  %126 = add nsw i64 %27, %21
  %127 = call i64 @GetMatrixColumns(ptr noundef %12) #16
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %26, label %129, !llvm.loop !115

129:                                              ; preds = %125, %17
  %130 = phi i64 [ %18, %17 ], [ %21, %125 ]
  %131 = call i64 @GetMatrixColumns(ptr noundef %14) #16
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %11, label %22, !llvm.loop !116

133:                                              ; preds = %22, %160
  %134 = phi i64 [ %167, %160 ], [ 0, %22 ]
  %135 = call i64 @GetMatrixRows(ptr noundef %23) #16
  %136 = add i64 %135, -1
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %133, %155
  %139 = phi i64 [ %156, %155 ], [ 0, %133 ]
  %140 = phi i64 [ %143, %155 ], [ 0, %133 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #14
  %141 = call i32 @GetMatrixElement(ptr noundef %23, i64 noundef %134, i64 noundef %140, ptr noundef nonnull %7) #16
  %142 = icmp eq i32 %141, 0
  %143 = add nuw nsw i64 %140, 1
  br i1 %142, label %155, label %144

144:                                              ; preds = %138
  %145 = call i32 @GetMatrixElement(ptr noundef %23, i64 noundef %134, i64 noundef %143, ptr noundef nonnull %8) #16
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %144
  %148 = load i16, ptr %7, align 2, !tbaa !42
  %149 = zext i16 %148 to i64
  %150 = load i16, ptr %8, align 2, !tbaa !42
  %151 = zext i16 %150 to i64
  %152 = sub nsw i64 %149, %151
  %153 = mul nsw i64 %152, %152
  %154 = add i64 %153, %139
  br label %155

155:                                              ; preds = %138, %144, %147
  %156 = phi i64 [ %139, %144 ], [ %154, %147 ], [ %139, %138 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  %157 = call i64 @GetMatrixRows(ptr noundef %23) #16
  %158 = add i64 %157, -1
  %159 = icmp slt i64 %143, %158
  br i1 %159, label %138, label %160, !llvm.loop !117

160:                                              ; preds = %155, %133
  %161 = phi i64 [ 0, %133 ], [ %156, %155 ]
  %162 = call i64 @GetMatrixColumns(ptr noundef %23) #16
  %163 = mul nsw i64 %134, %2
  %164 = getelementptr i64, ptr %3, i64 %162
  %165 = getelementptr i64, ptr %164, i64 %163
  %166 = getelementptr i64, ptr %165, i64 -1
  store i64 %161, ptr %166, align 8, !tbaa !27
  %167 = add nuw nsw i64 %134, 1
  %168 = call i64 @GetMatrixColumns(ptr noundef %23) #16
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %133, label %170, !llvm.loop !118

170:                                              ; preds = %160, %22
  ret void
}

; Function Attrs: optsize
declare i64 @GetMatrixColumns(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetMatrixRows(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

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
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !42
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !87
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !42
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !119
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !120
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !55
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !58
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !60
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #18
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !58
  %24 = tail call float @DecodePixelGamma(float noundef %23) #18
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !60
  %27 = tail call float @DecodePixelGamma(float noundef %26) #18
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
  store i32 12, ptr %2, align 4, !tbaa !120
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
  store <2 x float> %70, ptr %61, align 8, !tbaa !51
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !60
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !119
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeAreaBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #11 {
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
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %13, ptr noundef %2, float noundef %16, ptr noundef %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !55
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #17
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !44
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !58
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !45
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !60
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #17
  store i16 %15, ptr %2, align 2, !tbaa !46
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !62
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #17
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !91
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !87
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !121
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !119
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #17
  store i16 %33, ptr %3, align 2, !tbaa !42
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositePlus(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #11 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fadd float %11, %12
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #17
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #17
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !51
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !51
  %23 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %21, <2 x float> %24)
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !60
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
  store <4 x float> %42, ptr %20, align 8, !tbaa !51
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !120
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !119
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !119
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !119
  br label %57

57:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

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

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize allocsize(0,1) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 40}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i32 0, i32 2}
!27 = !{!10, !10, i64 0}
!28 = distinct !{!28, !25}
!29 = !{!6, !7, i64 12976}
!30 = !{!31, !14, i64 0}
!31 = !{!"_AffineMatrix", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!32 = !{!31, !14, i64 8}
!33 = !{!31, !14, i64 16}
!34 = !{!31, !14, i64 24}
!35 = !{!17, !10, i64 0}
!36 = !{!17, !10, i64 8}
!37 = !{!17, !10, i64 16}
!38 = !{!17, !10, i64 24}
!39 = distinct !{!39, !25}
!40 = !{!6, !10, i64 48}
!41 = distinct !{!41, !25}
!42 = !{!13, !13, i64 0}
!43 = distinct !{!43, !25}
!44 = !{!12, !13, i64 4}
!45 = !{!12, !13, i64 2}
!46 = !{!12, !13, i64 0}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !8, i64 0}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = !{!56, !52, i64 32}
!56 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48}
!57 = !{!6, !13, i64 84}
!58 = !{!56, !52, i64 36}
!59 = !{!6, !13, i64 82}
!60 = !{!56, !52, i64 40}
!61 = !{!6, !13, i64 80}
!62 = !{!56, !52, i64 44}
!63 = !{!6, !13, i64 86}
!64 = !{i64 0, i64 8, !27, i64 8, i64 8, !27, i64 16, i64 8, !27, i64 24, i64 8, !27}
!65 = !{i64 0, i64 8, !27, i64 8, i64 8, !27, i64 16, i64 8, !27}
!66 = !{i64 0, i64 8, !27, i64 8, i64 8, !27}
!67 = !{i64 0, i64 8, !27}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = !{!6, !11, i64 568}
!73 = distinct !{!73, !25}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25}
!80 = distinct !{!80, !25}
!81 = distinct !{!81, !25}
!82 = !{!6, !7, i64 13184}
!83 = !{!6, !11, i64 576}
!84 = !{!6, !7, i64 32}
!85 = !{!6, !7, i64 416}
!86 = !{!11, !11, i64 0}
!87 = !{!6, !7, i64 4}
!88 = !{i64 0, i64 4, !89, i64 4, i64 4, !89, i64 8, i64 4, !89, i64 16, i64 8, !90, i64 24, i64 8, !27, i64 32, i64 4, !51, i64 36, i64 4, !51, i64 40, i64 4, !51, i64 44, i64 4, !51, i64 48, i64 4, !51}
!89 = !{!7, !7, i64 0}
!90 = !{!14, !14, i64 0}
!91 = !{!12, !13, i64 6}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !25}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = !{!103, !14, i64 0}
!103 = !{!"_PointInfo", !14, i64 0, !14, i64 8}
!104 = !{!103, !14, i64 8}
!105 = distinct !{!105, !25, !106, !107}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = !{!56, !52, i64 48}
!120 = !{!56, !7, i64 4}
!121 = !{!6, !7, i64 0}
