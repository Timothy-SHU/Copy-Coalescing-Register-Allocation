; ModuleID = 'magick/effect.c'
source_filename = "magick/effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
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
%struct.KernelInfo = type { i32, i64, i64, i64, i64, ptr, double, double, double, double, double, ptr, i64 }
%struct._OffsetInfo = type { i64, i64 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._MontageInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, double, i64, i32, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, [4096 x i8], i32, i64 }
%struct._PointInfo = type { double, double }

@.str = private unnamed_addr constant [16 x i8] c"magick/effect.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"20%,95%\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"10%,95%\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_AdaptiveBlurImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"Convolve/Image\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_AdaptiveSharpenImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"blur:%.20gx%.20g;blur:%.20gx%.20g+90\00", align 1
@DespeckleImage.X = internal unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 1, i64 -1], align 16
@DespeckleImage.Y = internal unnamed_addr constant [4 x i64] [i64 1, i64 0, i64 1, i64 1], align 16
@.str.10 = private unnamed_addr constant [16 x i8] c"Despeckle/Image\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"KernelWidthMustBeAnOddNumber\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"  FilterImage with %.20gx%.20g kernel:\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%.20g: \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.gomp_critical_user_MagickCore_FilterImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"Filter/Image\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"gaussian:%.20gx%.20g\00", align 1
@.gomp_critical_user_MagickCore_MotionBlurImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"Blur/Image\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"204x204+10+10\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@DefaultTileLabel = external constant [0 x i8], align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"#dfdfdf\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"rotate %g\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"shear %gx%g\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"roll %+.20gx%+.20g\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"100,100,%g\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"modulate %s\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"100,%g\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"gamma %g\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"contrast (%.20g)\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"+contrast (%.20g)\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"-colorspace gray -colors %.20g\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"colors %.20g\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"despeckle (%.20g)\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"noise %g\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"multiplicative\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"impulse\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"laplacian\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"poisson\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"+noise %s\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"sharpen %gx%g\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"blur %gx%g\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"threshold %g\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"edge %g\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"spread %g\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"solarize %g\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"shade %gx%g\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"raise %.20gx%.20g%+.20g%+.20g\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"segment %gx%g\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"swirl %g\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"implode %g\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"wave %gx%g\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"paint %g\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"charcoal %gx%g\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"jpeg:%s\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"quality %s\0A%gmb \00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"quality %s\0A%gkb \00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"quality %s\0A%.20gb \00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Preview/Image\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"3x3\00", align 1
@DefaultTileFrame = external constant [0 x i8], align 1
@.gomp_critical_user_MagickCore_RotationalBlurImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.66 = private unnamed_addr constant [46 x i8] c"  SelectiveBlurImage with %.20gx%.20g kernel:\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"%+f \00", align 1
@.gomp_critical_user_MagickCore_SelectiveBlurImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.68 = private unnamed_addr constant [20 x i8] c"SelectiveBlur/Image\00", align 1
@.gomp_critical_user_MagickCore_ShadeImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.69 = private unnamed_addr constant [12 x i8] c"Shade/Image\00", align 1
@.gomp_critical_user_MagickCore_SpreadImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.70 = private unnamed_addr constant [13 x i8] c"Spread/Image\00", align 1
@.gomp_critical_user_MagickCore_UnsharpMaskImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.71 = private unnamed_addr constant [14 x i8] c"Sharpen/Image\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveBlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AdaptiveBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #16
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = alloca i64, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store i32 %1, ptr %7, align 4, !tbaa !10
  store ptr %4, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 195, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #17
  br label %26

26:                                               ; preds = %23, %5
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !27
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !28
  %31 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %28, i64 noundef %30, i32 noundef 1, ptr noundef %4) #17
  store ptr %31, ptr %13, align 8, !tbaa !6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %202, label %33

33:                                               ; preds = %26
  %34 = tail call double @llvm.fabs.f64(double %3)
  %35 = fcmp ugt double %34, 1.000000e-15
  br i1 %35, label %36, label %202

36:                                               ; preds = %33
  %37 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %31, i32 noundef 1) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %40) #17
  %41 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #17
  br label %202

42:                                               ; preds = %36
  %43 = tail call ptr @EdgeImage(ptr noundef nonnull %0, double noundef %2, ptr noundef %4) #16
  store ptr %43, ptr %14, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #17
  br label %202

47:                                               ; preds = %42
  %48 = tail call i32 @LevelImage(ptr noundef nonnull %43, ptr noundef nonnull @.str.3) #17
  %49 = tail call ptr @BlurImage(ptr noundef nonnull %43, double noundef %2, double noundef %3, ptr noundef %4) #16
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @DestroyImage(ptr noundef nonnull %43) #17
  store ptr %49, ptr %14, align 8, !tbaa !6
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %49, %51 ], [ %43, %47 ]
  %55 = tail call i32 @LevelImage(ptr noundef nonnull %54, ptr noundef nonnull @.str.4) #17
  %56 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #17
  store i64 %56, ptr %18, align 8, !tbaa !29
  %57 = tail call ptr @AcquireAlignedMemory(i64 noundef %56, i64 noundef 8) #18
  store ptr %57, ptr %12, align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = tail call ptr @DestroyImage(ptr noundef nonnull %54) #17
  %61 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #17
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %63 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 236, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %62) #17
  br label %202

64:                                               ; preds = %53
  %65 = shl i64 %56, 3
  %66 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %57, i32 noundef 0, i64 noundef %65) #17
  %67 = icmp sgt i64 %56, 0
  br i1 %67, label %68, label %144

68:                                               ; preds = %64
  %69 = fcmp olt double %34, 1.000000e-15
  %70 = select i1 %69, double 1.000000e-15, double %3
  %71 = fmul double %70, 2.000000e+00
  %72 = fmul double %70, %71
  %73 = fmul double %70, 0x401921FB54442D18
  %74 = fmul double %70, %73
  %75 = fcmp olt double %3, 1.000000e-15
  br label %76

76:                                               ; preds = %68, %114
  %77 = phi i64 [ 0, %68 ], [ %124, %114 ]
  %78 = sub nsw i64 %56, %77
  %79 = shl i64 %78, 3
  %80 = tail call ptr @AcquireAlignedMemory(i64 noundef %78, i64 noundef %79) #18
  %81 = getelementptr inbounds ptr, ptr %57, i64 %77
  store ptr %80, ptr %81, align 8, !tbaa !6
  %82 = icmp eq ptr %80, null
  br i1 %82, label %126, label %83

83:                                               ; preds = %76
  %84 = sdiv i64 %78, 2
  %85 = sub nsw i64 0, %84
  %86 = icmp slt i64 %78, -1
  br i1 %86, label %114, label %87

87:                                               ; preds = %83
  %88 = tail call i64 @llvm.abs.i64(i64 %84, i1 true)
  br label %89

89:                                               ; preds = %87, %111
  %90 = phi i64 [ %85, %87 ], [ %112, %111 ]
  %91 = phi i64 [ 0, %87 ], [ %108, %111 ]
  %92 = phi double [ 0.000000e+00, %87 ], [ %107, %111 ]
  %93 = mul nsw i64 %90, %90
  %94 = sitofp i64 %93 to double
  br label %95

95:                                               ; preds = %89, %95
  %96 = phi i64 [ %85, %89 ], [ %109, %95 ]
  %97 = phi i64 [ %91, %89 ], [ %108, %95 ]
  %98 = phi double [ %92, %89 ], [ %107, %95 ]
  %99 = sitofp i64 %96 to double
  %100 = tail call double @llvm.fmuladd.f64(double %99, double %99, double %94)
  %101 = fneg double %100
  %102 = fdiv double %101, %72
  %103 = tail call double @exp(double noundef %102) #17
  %104 = fdiv double %103, %74
  %105 = load ptr, ptr %81, align 8, !tbaa !6
  %106 = getelementptr inbounds double, ptr %105, i64 %97
  store double %104, ptr %106, align 8, !tbaa !30
  %107 = fadd double %98, %104
  %108 = add nsw i64 %97, 1
  %109 = add i64 %96, 1
  %110 = icmp eq i64 %96, %88
  br i1 %110, label %111, label %95, !llvm.loop !31

111:                                              ; preds = %95
  %112 = add i64 %90, 1
  %113 = icmp eq i64 %90, %88
  br i1 %113, label %114, label %89, !llvm.loop !33

114:                                              ; preds = %111, %83
  %115 = phi ptr [ %80, %83 ], [ %105, %111 ]
  %116 = phi double [ 0.000000e+00, %83 ], [ %107, %111 ]
  %117 = phi i64 [ -1, %83 ], [ %97, %111 ]
  %118 = fsub double 1.000000e+00, %116
  %119 = sdiv i64 %117, 2
  %120 = getelementptr inbounds double, ptr %115, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !30
  %122 = fadd double %118, %121
  %123 = select i1 %75, double 1.000000e+00, double %122
  store double %123, ptr %120, align 8, !tbaa !30
  %124 = add nuw nsw i64 %77, 2
  %125 = icmp slt i64 %124, %56
  br i1 %125, label %76, label %126, !llvm.loop !34

126:                                              ; preds = %114, %76
  %127 = phi i64 [ %124, %114 ], [ %77, %76 ]
  %128 = icmp slt i64 %127, %56
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = icmp sgt i64 %127, 1
  br i1 %130, label %131, label %138

131:                                              ; preds = %129, %131
  %132 = phi i64 [ %133, %131 ], [ %127, %129 ]
  %133 = add nsw i64 %132, -2
  %134 = getelementptr inbounds ptr, ptr %57, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !6
  %136 = tail call ptr @RelinquishAlignedMemory(ptr noundef %135) #17
  store ptr %136, ptr %134, align 8, !tbaa !6
  %137 = icmp ugt i64 %132, 3
  br i1 %137, label %131, label %138, !llvm.loop !35

138:                                              ; preds = %131, %129
  %139 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %57) #17
  %140 = tail call ptr @DestroyImage(ptr noundef nonnull %54) #17
  %141 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #17
  %142 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %143 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 269, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %142) #17
  br label %202

144:                                              ; preds = %64, %126
  store i32 1, ptr %15, align 4, !tbaa !10
  store i64 0, ptr %16, align 8, !tbaa !36
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %17) #17
  call fastcc void @SetMagickPixelPacketBias(ptr noundef %0, ptr noundef nonnull %17) #16
  %145 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #17
  store ptr %145, ptr %11, align 8, !tbaa !6
  %146 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %54, ptr noundef %4) #17
  store ptr %146, ptr %10, align 8, !tbaa !6
  %147 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %4) #17
  store ptr %147, ptr %9, align 8, !tbaa !6
  %148 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %149 = load i64, ptr %148, align 8, !tbaa !28
  %150 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %151 = shl i64 %150, 5
  %152 = icmp ugt i64 %149, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %144
  %154 = call i32 @GetImagePixelCacheType(ptr noundef %0) #17
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %161, label %156

156:                                              ; preds = %153
  %157 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %31) #17
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %165

161:                                              ; preds = %156, %153, %144
  %162 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %163 = icmp ult i64 %162, 2
  %164 = select i1 %163, i64 1, i64 2
  br label %165

165:                                              ; preds = %161, %159
  %166 = phi i64 [ %160, %159 ], [ %164, %161 ]
  %167 = trunc i64 %166 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %167)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @AdaptiveBlurImageChannel.omp_outlined, ptr nonnull %13, ptr nonnull %15, ptr nonnull %10, ptr nonnull %14, ptr nonnull %8, ptr nonnull %9, ptr nonnull %18, ptr nonnull %11, ptr nonnull %17, ptr nonnull %12, ptr nonnull %7, ptr nonnull %6, ptr nonnull %16)
  %168 = load ptr, ptr %6, align 8, !tbaa !6
  %169 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 77
  %170 = load i32, ptr %169, align 8, !tbaa !37
  %171 = load ptr, ptr %13, align 8, !tbaa !6
  %172 = getelementptr inbounds %struct._Image, ptr %171, i64 0, i32 77
  store i32 %170, ptr %172, align 8, !tbaa !37
  %173 = load ptr, ptr %9, align 8, !tbaa !6
  %174 = call ptr @DestroyCacheView(ptr noundef %173) #17
  store ptr %174, ptr %9, align 8, !tbaa !6
  %175 = load ptr, ptr %10, align 8, !tbaa !6
  %176 = call ptr @DestroyCacheView(ptr noundef %175) #17
  store ptr %176, ptr %10, align 8, !tbaa !6
  %177 = load ptr, ptr %11, align 8, !tbaa !6
  %178 = call ptr @DestroyCacheView(ptr noundef %177) #17
  store ptr %178, ptr %11, align 8, !tbaa !6
  %179 = load ptr, ptr %14, align 8, !tbaa !6
  %180 = call ptr @DestroyImage(ptr noundef %179) #17
  store ptr %180, ptr %14, align 8, !tbaa !6
  %181 = load i64, ptr %18, align 8, !tbaa !29
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %165, %183
  %184 = phi i64 [ %191, %183 ], [ 0, %165 ]
  %185 = load ptr, ptr %12, align 8, !tbaa !6
  %186 = getelementptr inbounds ptr, ptr %185, i64 %184
  %187 = load ptr, ptr %186, align 8, !tbaa !6
  %188 = call ptr @RelinquishAlignedMemory(ptr noundef %187) #17
  %189 = load ptr, ptr %12, align 8, !tbaa !6
  %190 = getelementptr inbounds ptr, ptr %189, i64 %184
  store ptr %188, ptr %190, align 8, !tbaa !6
  %191 = add nuw nsw i64 %184, 2
  %192 = load i64, ptr %18, align 8, !tbaa !29
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %183, label %194, !llvm.loop !38

194:                                              ; preds = %183, %165
  %195 = load ptr, ptr %12, align 8, !tbaa !6
  %196 = call ptr @RelinquishAlignedMemory(ptr noundef %195) #17
  store ptr %196, ptr %12, align 8, !tbaa !6
  %197 = load i32, ptr %15, align 4, !tbaa !10
  %198 = icmp eq i32 %197, 0
  %199 = load ptr, ptr %13, align 8, !tbaa !6
  br i1 %198, label %200, label %202

200:                                              ; preds = %194
  %201 = call ptr @DestroyImage(ptr noundef %199) #17
  br label %202

202:                                              ; preds = %194, %200, %33, %26, %138, %59, %45, %39
  %203 = phi ptr [ null, %39 ], [ null, %45 ], [ null, %59 ], [ null, %138 ], [ null, %26 ], [ %31, %33 ], [ %201, %200 ], [ %199, %194 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret ptr %203
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EdgeImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1285, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #17
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef 5.000000e-01) #17
  %12 = tail call ptr @AcquireKernelInfo(ptr noundef null) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1291, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %15) #17
  br label %76

17:                                               ; preds = %10
  %18 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 104) #17
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 1
  store i64 %11, ptr %19, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 2
  store i64 %11, ptr %20, align 8, !tbaa !41
  %21 = add i64 %11, -1
  %22 = sdiv i64 %21, 2
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 3
  store i64 %22, ptr %23, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 4
  store i64 %22, ptr %24, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 12
  store i64 2880220587, ptr %25, align 8, !tbaa !44
  %26 = shl i64 %11, 3
  %27 = tail call ptr @AcquireAlignedMemory(i64 noundef %11, i64 noundef %26) #18
  %28 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 5
  store ptr %27, ptr %28, align 8, !tbaa !45
  %29 = icmp eq ptr %27, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %17
  %31 = load i64, ptr %19, align 8, !tbaa !39
  %32 = load i64, ptr %20, align 8, !tbaa !41
  %33 = mul i64 %32, %31
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = add nuw i64 %33, 1
  %37 = and i64 %36, -2
  %38 = add nsw i64 %33, -1
  %39 = insertelement <2 x i64> poison, i64 %38, i64 0
  %40 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %41

41:                                               ; preds = %53, %35
  %42 = phi i64 [ 0, %35 ], [ %54, %53 ]
  %43 = phi <2 x i64> [ <i64 0, i64 1>, %35 ], [ %55, %53 ]
  %44 = icmp ule <2 x i64> %43, %40
  %45 = extractelement <2 x i1> %44, i64 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds double, ptr %27, i64 %42
  store double -1.000000e+00, ptr %47, align 8, !tbaa !30
  br label %48

48:                                               ; preds = %46, %41
  %49 = extractelement <2 x i1> %44, i64 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = or disjoint i64 %42, 1
  %52 = getelementptr inbounds double, ptr %27, i64 %51
  store double -1.000000e+00, ptr %52, align 8, !tbaa !30
  br label %53

53:                                               ; preds = %50, %48
  %54 = add i64 %42, 2
  %55 = add <2 x i64> %43, <i64 2, i64 2>
  %56 = icmp eq i64 %54, %37
  br i1 %56, label %61, label %41, !llvm.loop !46

57:                                               ; preds = %17
  %58 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %12) #17
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %60 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1303, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %59) #17
  br label %76

61:                                               ; preds = %53
  %62 = lshr i64 %33, 1
  br label %63

63:                                               ; preds = %61, %30
  %64 = phi i64 [ 0, %30 ], [ %62, %61 ]
  %65 = uitofp i64 %31 to double
  %66 = uitofp i64 %32 to double
  %67 = tail call double @llvm.fmuladd.f64(double %65, double %66, double -1.000000e+00)
  %68 = getelementptr inbounds double, ptr %27, i64 %64
  store double %67, ptr %68, align 8, !tbaa !30
  %69 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %12, ptr noundef %2) #17
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %12, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %2) #17
  br label %73

73:                                               ; preds = %71, %63
  %74 = phi ptr [ %72, %71 ], [ %69, %63 ]
  %75 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %12) #17
  br label %76

76:                                               ; preds = %73, %57, %14
  %77 = phi ptr [ null, %14 ], [ null, %57 ], [ %74, %73 ]
  ret ptr %77
}

; Function Attrs: optsize
declare i32 @LevelImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #16
  ret ptr %5
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacketBias(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %4 = load double, ptr %3, align 8, !tbaa !49
  %5 = fptrunc double %4 to float
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %7 = insertelement <4 x float> poison, float %5, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %8, ptr %6, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %5, ptr %9, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @AdaptiveBlurImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %13, ptr nocapture noundef nonnull align 8 dereferenceable(8) %14) #7 {
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = load ptr, ptr %2, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !28
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %328

25:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 0, ptr %16, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  store i64 %23, ptr %17, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  store i64 1, ptr %18, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #8
  store i32 0, ptr %19, align 4, !tbaa !10
  %26 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %18, i64 1, i64 4)
  %27 = load i64, ptr %17, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %17, align 8, !tbaa !29
  %29 = load i64, ptr %16, align 8, !tbaa !29
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %327, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  br label %37

37:                                               ; preds = %31, %319
  %38 = phi i64 [ %28, %31 ], [ %325, %319 ]
  %39 = phi i64 [ %29, %31 ], [ %323, %319 ]
  %40 = icmp sgt i64 %39, %38
  br i1 %40, label %319, label %41

41:                                               ; preds = %37, %313
  %42 = phi i64 [ %314, %313 ], [ %39, %37 ]
  %43 = load i32, ptr %3, align 4, !tbaa !10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %313, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 8, !tbaa !6
  %47 = load ptr, ptr %5, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !27
  %50 = load ptr, ptr %6, align 8, !tbaa !6
  %51 = call ptr @GetCacheViewVirtualPixels(ptr noundef %46, i64 noundef 0, i64 noundef %42, i64 noundef %49, i64 noundef 1, ptr noundef %50) #19
  %52 = load ptr, ptr %7, align 8, !tbaa !6
  %53 = load ptr, ptr %2, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !27
  %56 = load ptr, ptr %6, align 8, !tbaa !6
  %57 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %52, i64 noundef 0, i64 noundef %42, i64 noundef %55, i64 noundef 1, ptr noundef %56) #19
  %58 = icmp eq ptr %51, null
  %59 = icmp eq ptr %57, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %312, label %61

61:                                               ; preds = %45
  %62 = load ptr, ptr %7, align 8, !tbaa !6
  %63 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %62) #17
  %64 = load ptr, ptr %2, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 7
  %66 = load i64, ptr %65, align 8, !tbaa !27
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %293

68:                                               ; preds = %61
  %69 = icmp eq ptr %63, null
  %70 = load i64, ptr %8, align 8, !tbaa !29
  br label %71

71:                                               ; preds = %68, %285
  %72 = phi i64 [ %70, %68 ], [ %111, %285 ]
  %73 = phi i64 [ 0, %68 ], [ %288, %285 ]
  %74 = phi ptr [ %57, %68 ], [ %286, %285 ]
  %75 = phi ptr [ %51, %68 ], [ %287, %285 ]
  %76 = uitofp i64 %72 to double
  %77 = fmul double %76, 0x3EF0001000100010
  %78 = load ptr, ptr %5, align 8, !tbaa !6
  %79 = call float @GetPixelIntensity(ptr noundef %78, ptr noundef nonnull %75) #19
  %80 = fpext float %79 to double
  %81 = call double @llvm.fmuladd.f64(double %77, double %80, double -5.000000e-01)
  %82 = call double @llvm.ceil.f64(double %81)
  %83 = fptosi double %82 to i64
  %84 = icmp slt i64 %83, 0
  %85 = load i64, ptr %8, align 8
  %86 = call i64 @llvm.smin.i64(i64 %85, i64 %83)
  %87 = and i64 %86, -2
  %88 = select i1 %84, i64 0, i64 %87
  %89 = load ptr, ptr %9, align 8, !tbaa !6
  %90 = sub i64 %85, %88
  %91 = sdiv i64 %90, -2
  %92 = add i64 %91, %73
  %93 = lshr i64 %90, 1
  %94 = sub nsw i64 %42, %93
  %95 = load ptr, ptr %6, align 8, !tbaa !6
  %96 = call ptr @GetCacheViewVirtualPixels(ptr noundef %89, i64 noundef %92, i64 noundef %94, i64 noundef %90, i64 noundef %90, ptr noundef %95) #19
  %97 = icmp eq ptr %96, null
  br i1 %97, label %293, label %98

98:                                               ; preds = %71
  %99 = load ptr, ptr %9, align 8, !tbaa !6
  %100 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %99) #17
  %101 = load float, ptr %32, align 8, !tbaa !54
  %102 = fpext float %101 to double
  %103 = load float, ptr %33, align 4, !tbaa !55
  %104 = fpext float %103 to double
  %105 = load float, ptr %34, align 8, !tbaa !56
  %106 = fpext float %105 to double
  %107 = load float, ptr %35, align 4, !tbaa !57
  %108 = fpext float %107 to double
  %109 = load float, ptr %36, align 8, !tbaa !52
  %110 = fpext float %109 to double
  %111 = load i64, ptr %8, align 8, !tbaa !29
  %112 = sub i64 %111, %88
  %113 = icmp sgt i64 %112, 0
  %114 = load i32, ptr %12, align 4
  br i1 %113, label %117, label %115

115:                                              ; preds = %98
  %116 = and i32 %114, 1
  br label %232

117:                                              ; preds = %98
  %118 = load ptr, ptr %11, align 8, !tbaa !6
  %119 = getelementptr inbounds ptr, ptr %118, i64 %88
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = and i32 %114, 8
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr %13, align 8
  %124 = getelementptr inbounds %struct._Image, ptr %123, i64 0, i32 6
  %125 = and i32 %114, 1
  %126 = icmp eq i32 %125, 0
  %127 = and i32 %114, 2
  %128 = icmp eq i32 %127, 0
  %129 = and i32 %114, 4
  %130 = icmp eq i32 %129, 0
  %131 = and i32 %114, 32
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr inbounds %struct._Image, ptr %123, i64 0, i32 1
  %134 = icmp eq ptr %100, null
  %135 = getelementptr inbounds i16, ptr %100, i64 %73
  br label %136

136:                                              ; preds = %117, %229
  %137 = phi i64 [ 0, %117 ], [ %230, %229 ]
  %138 = phi ptr [ %120, %117 ], [ %225, %229 ]
  %139 = phi double [ %102, %117 ], [ %179, %229 ]
  %140 = phi double [ %104, %117 ], [ %188, %229 ]
  %141 = phi double [ %106, %117 ], [ %196, %229 ]
  %142 = phi double [ %108, %117 ], [ %204, %229 ]
  %143 = phi double [ %110, %117 ], [ %223, %229 ]
  %144 = phi double [ 0.000000e+00, %117 ], [ %224, %229 ]
  %145 = phi ptr [ %96, %117 ], [ %226, %229 ]
  %146 = mul i64 %112, %137
  %147 = getelementptr inbounds i16, ptr %135, i64 %146
  br label %148

148:                                              ; preds = %136, %221
  %149 = phi i64 [ 0, %136 ], [ %227, %221 ]
  %150 = phi ptr [ %138, %136 ], [ %225, %221 ]
  %151 = phi double [ %139, %136 ], [ %179, %221 ]
  %152 = phi double [ %140, %136 ], [ %188, %221 ]
  %153 = phi double [ %141, %136 ], [ %196, %221 ]
  %154 = phi double [ %142, %136 ], [ %204, %221 ]
  %155 = phi double [ %143, %136 ], [ %223, %221 ]
  %156 = phi double [ %144, %136 ], [ %224, %221 ]
  %157 = phi ptr [ %145, %136 ], [ %226, %221 ]
  br i1 %122, label %169, label %158

158:                                              ; preds = %148
  %159 = load i32, ptr %124, align 8, !tbaa !58
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 0, i32 3
  %163 = load i16, ptr %162, align 2, !tbaa !59
  %164 = xor i16 %163, -1
  %165 = uitofp i16 %164 to double
  %166 = fmul double %165, 0x3EF0001000100010
  %167 = fptrunc double %166 to float
  %168 = fpext float %167 to double
  br label %169

169:                                              ; preds = %161, %158, %148
  %170 = phi double [ %168, %161 ], [ 1.000000e+00, %158 ], [ 1.000000e+00, %148 ]
  br i1 %126, label %178, label %171

171:                                              ; preds = %169
  %172 = load double, ptr %150, align 8, !tbaa !30
  %173 = fmul double %170, %172
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 0, i32 2
  %175 = load i16, ptr %174, align 2, !tbaa !60
  %176 = uitofp i16 %175 to double
  %177 = call double @llvm.fmuladd.f64(double %173, double %176, double %151)
  br label %178

178:                                              ; preds = %171, %169
  %179 = phi double [ %177, %171 ], [ %151, %169 ]
  br i1 %128, label %187, label %180

180:                                              ; preds = %178
  %181 = load double, ptr %150, align 8, !tbaa !30
  %182 = fmul double %170, %181
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 0, i32 1
  %184 = load i16, ptr %183, align 2, !tbaa !61
  %185 = uitofp i16 %184 to double
  %186 = call double @llvm.fmuladd.f64(double %182, double %185, double %152)
  br label %187

187:                                              ; preds = %180, %178
  %188 = phi double [ %186, %180 ], [ %152, %178 ]
  br i1 %130, label %195, label %189

189:                                              ; preds = %187
  %190 = load double, ptr %150, align 8, !tbaa !30
  %191 = fmul double %170, %190
  %192 = load i16, ptr %157, align 2, !tbaa !62
  %193 = uitofp i16 %192 to double
  %194 = call double @llvm.fmuladd.f64(double %191, double %193, double %153)
  br label %195

195:                                              ; preds = %189, %187
  %196 = phi double [ %194, %189 ], [ %153, %187 ]
  br i1 %122, label %203, label %197

197:                                              ; preds = %195
  %198 = load double, ptr %150, align 8, !tbaa !30
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 0, i32 3
  %200 = load i16, ptr %199, align 2, !tbaa !59
  %201 = uitofp i16 %200 to double
  %202 = call double @llvm.fmuladd.f64(double %198, double %201, double %154)
  br label %203

203:                                              ; preds = %197, %195
  %204 = phi double [ %202, %197 ], [ %154, %195 ]
  br i1 %132, label %205, label %207

205:                                              ; preds = %203
  %206 = load double, ptr %150, align 8, !tbaa !30
  br label %221

207:                                              ; preds = %203
  %208 = load i32, ptr %133, align 4, !tbaa !63
  %209 = icmp eq i32 %208, 12
  %210 = load double, ptr %150, align 8, !tbaa !30
  br i1 %209, label %211, label %221

211:                                              ; preds = %207
  %212 = fmul double %170, %210
  br i1 %134, label %217, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds i16, ptr %147, i64 %149
  %215 = load i16, ptr %214, align 2, !tbaa !64
  %216 = zext i16 %215 to i32
  br label %217

217:                                              ; preds = %211, %213
  %218 = phi i32 [ %216, %213 ], [ 0, %211 ]
  %219 = sitofp i32 %218 to double
  %220 = call double @llvm.fmuladd.f64(double %212, double %219, double %155)
  br label %221

221:                                              ; preds = %205, %217, %207
  %222 = phi double [ %210, %217 ], [ %210, %207 ], [ %206, %205 ]
  %223 = phi double [ %220, %217 ], [ %155, %207 ], [ %155, %205 ]
  %224 = call double @llvm.fmuladd.f64(double %222, double %170, double %156)
  %225 = getelementptr inbounds double, ptr %150, i64 1
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 1
  %227 = add nuw nsw i64 %149, 1
  %228 = icmp eq i64 %227, %112
  br i1 %228, label %229, label %148, !llvm.loop !65

229:                                              ; preds = %221
  %230 = add nuw nsw i64 %137, 1
  %231 = icmp eq i64 %230, %112
  br i1 %231, label %232, label %136, !llvm.loop !66

232:                                              ; preds = %229, %115
  %233 = phi i32 [ %116, %115 ], [ %125, %229 ]
  %234 = phi double [ 0.000000e+00, %115 ], [ %224, %229 ]
  %235 = phi double [ %110, %115 ], [ %223, %229 ]
  %236 = phi double [ %108, %115 ], [ %204, %229 ]
  %237 = phi double [ %106, %115 ], [ %196, %229 ]
  %238 = phi double [ %104, %115 ], [ %188, %229 ]
  %239 = phi double [ %102, %115 ], [ %179, %229 ]
  %240 = fcmp olt double %234, 0.000000e+00
  %241 = select i1 %240, double 0.000000e+00, double %234
  %242 = call fastcc double @PerceptibleReciprocal(double noundef %241) #16
  %243 = icmp eq i32 %233, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %232
  %245 = fmul double %239, %242
  %246 = fptrunc double %245 to float
  %247 = call fastcc zeroext i16 @ClampToQuantum(float noundef %246) #16
  %248 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  store i16 %247, ptr %248, align 2, !tbaa !60
  br label %249

249:                                              ; preds = %244, %232
  %250 = and i32 %114, 2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %249
  %253 = fmul double %238, %242
  %254 = fptrunc double %253 to float
  %255 = call fastcc zeroext i16 @ClampToQuantum(float noundef %254) #16
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  store i16 %255, ptr %256, align 2, !tbaa !61
  br label %257

257:                                              ; preds = %252, %249
  %258 = and i32 %114, 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %257
  %261 = fmul double %237, %242
  %262 = fptrunc double %261 to float
  %263 = call fastcc zeroext i16 @ClampToQuantum(float noundef %262) #16
  store i16 %263, ptr %74, align 2, !tbaa !62
  br label %264

264:                                              ; preds = %260, %257
  %265 = and i32 %114, 8
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %264
  %268 = fptrunc double %236 to float
  %269 = call fastcc zeroext i16 @ClampToQuantum(float noundef %268) #16
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  store i16 %269, ptr %270, align 2, !tbaa !59
  br label %271

271:                                              ; preds = %267, %264
  %272 = and i32 %114, 32
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr %13, align 8, !tbaa !6
  %276 = getelementptr inbounds %struct._Image, ptr %275, i64 0, i32 1
  %277 = load i32, ptr %276, align 4, !tbaa !63
  %278 = icmp ne i32 %277, 12
  %279 = select i1 %278, i1 true, i1 %69
  br i1 %279, label %285, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds i16, ptr %63, i64 %73
  %282 = fmul double %235, %242
  %283 = fptrunc double %282 to float
  %284 = call fastcc zeroext i16 @ClampToQuantum(float noundef %283) #16
  store i16 %284, ptr %281, align 2, !tbaa !64
  br label %285

285:                                              ; preds = %271, %274, %280
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %288 = add nuw nsw i64 %73, 1
  %289 = load ptr, ptr %2, align 8, !tbaa !6
  %290 = getelementptr inbounds %struct._Image, ptr %289, i64 0, i32 7
  %291 = load i64, ptr %290, align 8, !tbaa !27
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %71, label %293, !llvm.loop !67

293:                                              ; preds = %285, %71, %61
  %294 = load ptr, ptr %7, align 8, !tbaa !6
  %295 = load ptr, ptr %6, align 8, !tbaa !6
  %296 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %294, ptr noundef %295) #19
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %299

299:                                              ; preds = %298, %293
  %300 = load ptr, ptr %13, align 8, !tbaa !6
  %301 = getelementptr inbounds %struct._Image, ptr %300, i64 0, i32 47
  %302 = load ptr, ptr %301, align 8, !tbaa !68
  %303 = icmp eq ptr %302, null
  br i1 %303, label %313, label %304

304:                                              ; preds = %299
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_AdaptiveBlurImageChannel.var)
  %305 = load ptr, ptr %13, align 8, !tbaa !6
  %306 = load i64, ptr %14, align 8, !tbaa !36
  %307 = add nsw i64 %306, 1
  store i64 %307, ptr %14, align 8, !tbaa !36
  %308 = getelementptr inbounds %struct._Image, ptr %305, i64 0, i32 8
  %309 = load i64, ptr %308, align 8, !tbaa !28
  %310 = call fastcc i32 @SetImageProgress(ptr noundef %305, ptr noundef nonnull @.str.7, i64 noundef %306, i64 noundef %309) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_AdaptiveBlurImageChannel.var)
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %304, %45
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %313

313:                                              ; preds = %312, %299, %304, %41
  %314 = add nsw i64 %42, 1
  %315 = load i64, ptr %17, align 8, !tbaa !29
  %316 = icmp slt i64 %42, %315
  br i1 %316, label %41, label %317

317:                                              ; preds = %313
  %318 = load i64, ptr %16, align 8, !tbaa !29
  br label %319

319:                                              ; preds = %317, %37
  %320 = phi i64 [ %39, %37 ], [ %318, %317 ]
  %321 = phi i64 [ %38, %37 ], [ %315, %317 ]
  %322 = load i64, ptr %18, align 8, !tbaa !29
  %323 = add nsw i64 %322, %320
  store i64 %323, ptr %16, align 8, !tbaa !29
  %324 = add nsw i64 %322, %321
  %325 = call i64 @llvm.smin.i64(i64 %324, i64 %23)
  store i64 %325, ptr %17, align 8, !tbaa !29
  %326 = icmp sgt i64 %323, %325
  br i1 %326, label %327, label %37

327:                                              ; preds = %319, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  br label %328

328:                                              ; preds = %327, %15
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #8

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull %10) #17
  %12 = load ptr, ptr %6, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #17
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare !callback !70 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveSharpenImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AdaptiveSharpenImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveSharpenImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = alloca i64, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store i32 %1, ptr %7, align 4, !tbaa !10
  store ptr %4, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 520, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #17
  br label %26

26:                                               ; preds = %23, %5
  %27 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #17
  store ptr %27, ptr %13, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %199, label %29

29:                                               ; preds = %26
  %30 = tail call double @llvm.fabs.f64(double %3)
  %31 = fcmp ugt double %30, 1.000000e-15
  br i1 %31, label %32, label %199

32:                                               ; preds = %29
  %33 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %27, i32 noundef 1) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %36) #17
  %37 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #17
  br label %199

38:                                               ; preds = %32
  %39 = tail call ptr @EdgeImage(ptr noundef nonnull %0, double noundef %2, ptr noundef %4) #16
  store ptr %39, ptr %14, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #17
  br label %199

43:                                               ; preds = %38
  %44 = tail call i32 @LevelImage(ptr noundef nonnull %39, ptr noundef nonnull @.str.3) #17
  %45 = tail call ptr @BlurImage(ptr noundef nonnull %39, double noundef %2, double noundef %3, ptr noundef %4) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @DestroyImage(ptr noundef nonnull %39) #17
  store ptr %45, ptr %14, align 8, !tbaa !6
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %45, %47 ], [ %39, %43 ]
  %51 = tail call i32 @LevelImage(ptr noundef nonnull %50, ptr noundef nonnull @.str.4) #17
  %52 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #17
  store i64 %52, ptr %18, align 8, !tbaa !29
  %53 = tail call ptr @AcquireAlignedMemory(i64 noundef %52, i64 noundef 8) #18
  store ptr %53, ptr %12, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = tail call ptr @DestroyImage(ptr noundef nonnull %50) #17
  %57 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #17
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %59 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 561, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %58) #17
  br label %199

60:                                               ; preds = %49
  %61 = shl i64 %52, 3
  %62 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %53, i32 noundef 0, i64 noundef %61) #17
  %63 = icmp sgt i64 %52, 0
  br i1 %63, label %64, label %141

64:                                               ; preds = %60
  %65 = fcmp olt double %30, 1.000000e-15
  %66 = select i1 %65, double 1.000000e-15, double %3
  %67 = fmul double %66, 2.000000e+00
  %68 = fmul double %66, %67
  %69 = fmul double %66, 0x401921FB54442D18
  %70 = fmul double %66, %69
  %71 = fcmp olt double %3, 1.000000e-15
  br label %72

72:                                               ; preds = %64, %113
  %73 = phi i64 [ 0, %64 ], [ %121, %113 ]
  %74 = sub nsw i64 %52, %73
  %75 = shl i64 %74, 3
  %76 = tail call ptr @AcquireAlignedMemory(i64 noundef %74, i64 noundef %75) #18
  %77 = getelementptr inbounds ptr, ptr %53, i64 %73
  store ptr %76, ptr %77, align 8, !tbaa !6
  %78 = icmp eq ptr %76, null
  br i1 %78, label %123, label %79

79:                                               ; preds = %72
  %80 = xor i64 %73, -1
  %81 = add nsw i64 %52, %80
  %82 = sdiv i64 %81, 2
  %83 = sub nsw i64 0, %82
  %84 = icmp slt i64 %81, -1
  br i1 %84, label %113, label %85

85:                                               ; preds = %79
  %86 = tail call i64 @llvm.abs.i64(i64 %82, i1 true)
  br label %87

87:                                               ; preds = %85, %110
  %88 = phi i64 [ %83, %85 ], [ %111, %110 ]
  %89 = phi i64 [ 0, %85 ], [ %107, %110 ]
  %90 = phi double [ 0.000000e+00, %85 ], [ %106, %110 ]
  %91 = mul nsw i64 %88, %88
  %92 = sitofp i64 %91 to double
  br label %93

93:                                               ; preds = %87, %93
  %94 = phi i64 [ %83, %87 ], [ %108, %93 ]
  %95 = phi i64 [ %89, %87 ], [ %107, %93 ]
  %96 = phi double [ %90, %87 ], [ %106, %93 ]
  %97 = sitofp i64 %94 to double
  %98 = tail call double @llvm.fmuladd.f64(double %97, double %97, double %92)
  %99 = fneg double %98
  %100 = fdiv double %99, %68
  %101 = tail call double @exp(double noundef %100) #17
  %102 = fneg double %101
  %103 = fdiv double %102, %70
  %104 = load ptr, ptr %77, align 8, !tbaa !6
  %105 = getelementptr inbounds double, ptr %104, i64 %95
  store double %103, ptr %105, align 8, !tbaa !30
  %106 = fadd double %96, %103
  %107 = add nsw i64 %95, 1
  %108 = add i64 %94, 1
  %109 = icmp eq i64 %94, %86
  br i1 %109, label %110, label %93, !llvm.loop !72

110:                                              ; preds = %93
  %111 = add i64 %88, 1
  %112 = icmp eq i64 %88, %86
  br i1 %112, label %113, label %87, !llvm.loop !73

113:                                              ; preds = %110, %79
  %114 = phi ptr [ %76, %79 ], [ %104, %110 ]
  %115 = phi double [ 0.000000e+00, %79 ], [ %106, %110 ]
  %116 = phi i64 [ -1, %79 ], [ %95, %110 ]
  %117 = fmul double %115, -2.000000e+00
  %118 = sdiv i64 %116, 2
  %119 = getelementptr inbounds double, ptr %114, i64 %118
  %120 = select i1 %71, double 1.000000e+00, double %117
  store double %120, ptr %119, align 8, !tbaa !30
  %121 = add nuw nsw i64 %73, 2
  %122 = icmp slt i64 %121, %52
  br i1 %122, label %72, label %123, !llvm.loop !74

123:                                              ; preds = %113, %72
  %124 = phi i64 [ %121, %113 ], [ %73, %72 ]
  %125 = icmp slt i64 %124, %52
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = icmp sgt i64 %124, 1
  br i1 %127, label %128, label %135

128:                                              ; preds = %126, %128
  %129 = phi i64 [ %130, %128 ], [ %124, %126 ]
  %130 = add nsw i64 %129, -2
  %131 = getelementptr inbounds ptr, ptr %53, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = tail call ptr @RelinquishAlignedMemory(ptr noundef %132) #17
  store ptr %133, ptr %131, align 8, !tbaa !6
  %134 = icmp ugt i64 %129, 3
  br i1 %134, label %128, label %135, !llvm.loop !75

135:                                              ; preds = %128, %126
  %136 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %53) #17
  %137 = tail call ptr @DestroyImage(ptr noundef nonnull %50) #17
  %138 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #17
  %139 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %140 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 594, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %139) #17
  br label %199

141:                                              ; preds = %60, %123
  store i32 1, ptr %15, align 4, !tbaa !10
  store i64 0, ptr %16, align 8, !tbaa !36
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %17) #17
  call fastcc void @SetMagickPixelPacketBias(ptr noundef %0, ptr noundef nonnull %17) #16
  %142 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #17
  store ptr %142, ptr %11, align 8, !tbaa !6
  %143 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %50, ptr noundef %4) #17
  store ptr %143, ptr %10, align 8, !tbaa !6
  %144 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %27, ptr noundef %4) #17
  store ptr %144, ptr %9, align 8, !tbaa !6
  %145 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %146 = load i64, ptr %145, align 8, !tbaa !28
  %147 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %148 = shl i64 %147, 5
  %149 = icmp ugt i64 %146, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %141
  %151 = call i32 @GetImagePixelCacheType(ptr noundef %0) #17
  %152 = icmp eq i32 %151, 3
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %27) #17
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %162

158:                                              ; preds = %153, %150, %141
  %159 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %160 = icmp ult i64 %159, 2
  %161 = select i1 %160, i64 1, i64 2
  br label %162

162:                                              ; preds = %158, %156
  %163 = phi i64 [ %157, %156 ], [ %161, %158 ]
  %164 = trunc i64 %163 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %164)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @AdaptiveSharpenImageChannel.omp_outlined, ptr nonnull %13, ptr nonnull %15, ptr nonnull %10, ptr nonnull %14, ptr nonnull %8, ptr nonnull %9, ptr nonnull %18, ptr nonnull %11, ptr nonnull %12, ptr nonnull %17, ptr nonnull %7, ptr nonnull %6, ptr nonnull %16)
  %165 = load ptr, ptr %6, align 8, !tbaa !6
  %166 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 77
  %167 = load i32, ptr %166, align 8, !tbaa !37
  %168 = load ptr, ptr %13, align 8, !tbaa !6
  %169 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 77
  store i32 %167, ptr %169, align 8, !tbaa !37
  %170 = load ptr, ptr %9, align 8, !tbaa !6
  %171 = call ptr @DestroyCacheView(ptr noundef %170) #17
  store ptr %171, ptr %9, align 8, !tbaa !6
  %172 = load ptr, ptr %10, align 8, !tbaa !6
  %173 = call ptr @DestroyCacheView(ptr noundef %172) #17
  store ptr %173, ptr %10, align 8, !tbaa !6
  %174 = load ptr, ptr %11, align 8, !tbaa !6
  %175 = call ptr @DestroyCacheView(ptr noundef %174) #17
  store ptr %175, ptr %11, align 8, !tbaa !6
  %176 = load ptr, ptr %14, align 8, !tbaa !6
  %177 = call ptr @DestroyImage(ptr noundef %176) #17
  store ptr %177, ptr %14, align 8, !tbaa !6
  %178 = load i64, ptr %18, align 8, !tbaa !29
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %162, %180
  %181 = phi i64 [ %188, %180 ], [ 0, %162 ]
  %182 = load ptr, ptr %12, align 8, !tbaa !6
  %183 = getelementptr inbounds ptr, ptr %182, i64 %181
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = call ptr @RelinquishAlignedMemory(ptr noundef %184) #17
  %186 = load ptr, ptr %12, align 8, !tbaa !6
  %187 = getelementptr inbounds ptr, ptr %186, i64 %181
  store ptr %185, ptr %187, align 8, !tbaa !6
  %188 = add nuw nsw i64 %181, 2
  %189 = load i64, ptr %18, align 8, !tbaa !29
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %180, label %191, !llvm.loop !76

191:                                              ; preds = %180, %162
  %192 = load ptr, ptr %12, align 8, !tbaa !6
  %193 = call ptr @RelinquishAlignedMemory(ptr noundef %192) #17
  store ptr %193, ptr %12, align 8, !tbaa !6
  %194 = load i32, ptr %15, align 4, !tbaa !10
  %195 = icmp eq i32 %194, 0
  %196 = load ptr, ptr %13, align 8, !tbaa !6
  br i1 %195, label %197, label %199

197:                                              ; preds = %191
  %198 = call ptr @DestroyImage(ptr noundef %196) #17
  br label %199

199:                                              ; preds = %191, %197, %29, %26, %135, %55, %41, %35
  %200 = phi ptr [ null, %35 ], [ null, %41 ], [ null, %55 ], [ null, %135 ], [ null, %26 ], [ %27, %29 ], [ %198, %197 ], [ %196, %191 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret ptr %200
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @AdaptiveSharpenImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %11, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %13, ptr nocapture noundef nonnull align 8 dereferenceable(8) %14) #7 {
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = load ptr, ptr %2, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !28
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %328

25:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 0, ptr %16, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  store i64 %23, ptr %17, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  store i64 1, ptr %18, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #8
  store i32 0, ptr %19, align 4, !tbaa !10
  %26 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %18, i64 1, i64 4)
  %27 = load i64, ptr %17, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %17, align 8, !tbaa !29
  %29 = load i64, ptr %16, align 8, !tbaa !29
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %327, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  br label %37

37:                                               ; preds = %31, %319
  %38 = phi i64 [ %28, %31 ], [ %325, %319 ]
  %39 = phi i64 [ %29, %31 ], [ %323, %319 ]
  %40 = icmp sgt i64 %39, %38
  br i1 %40, label %319, label %41

41:                                               ; preds = %37, %313
  %42 = phi i64 [ %314, %313 ], [ %39, %37 ]
  %43 = load i32, ptr %3, align 4, !tbaa !10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %313, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 8, !tbaa !6
  %47 = load ptr, ptr %5, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !27
  %50 = load ptr, ptr %6, align 8, !tbaa !6
  %51 = call ptr @GetCacheViewVirtualPixels(ptr noundef %46, i64 noundef 0, i64 noundef %42, i64 noundef %49, i64 noundef 1, ptr noundef %50) #19
  %52 = load ptr, ptr %7, align 8, !tbaa !6
  %53 = load ptr, ptr %2, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !27
  %56 = load ptr, ptr %6, align 8, !tbaa !6
  %57 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %52, i64 noundef 0, i64 noundef %42, i64 noundef %55, i64 noundef 1, ptr noundef %56) #19
  %58 = icmp eq ptr %51, null
  %59 = icmp eq ptr %57, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %312, label %61

61:                                               ; preds = %45
  %62 = load ptr, ptr %7, align 8, !tbaa !6
  %63 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %62) #17
  %64 = load ptr, ptr %2, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 7
  %66 = load i64, ptr %65, align 8, !tbaa !27
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %293

68:                                               ; preds = %61
  %69 = icmp eq ptr %63, null
  %70 = load i64, ptr %8, align 8, !tbaa !29
  br label %71

71:                                               ; preds = %68, %285
  %72 = phi i64 [ %70, %68 ], [ %111, %285 ]
  %73 = phi i64 [ 0, %68 ], [ %288, %285 ]
  %74 = phi ptr [ %57, %68 ], [ %286, %285 ]
  %75 = phi ptr [ %51, %68 ], [ %287, %285 ]
  %76 = uitofp i64 %72 to double
  %77 = load ptr, ptr %5, align 8, !tbaa !6
  %78 = call float @GetPixelIntensity(ptr noundef %77, ptr noundef nonnull %75) #19
  %79 = fpext float %78 to double
  %80 = call double @llvm.fmuladd.f64(double %79, double 0xBEF0001000100010, double 1.000000e+00)
  %81 = call double @llvm.fmuladd.f64(double %76, double %80, double -5.000000e-01)
  %82 = call double @llvm.ceil.f64(double %81)
  %83 = fptosi double %82 to i64
  %84 = icmp slt i64 %83, 0
  %85 = load i64, ptr %8, align 8
  %86 = call i64 @llvm.smin.i64(i64 %85, i64 %83)
  %87 = and i64 %86, -2
  %88 = select i1 %84, i64 0, i64 %87
  %89 = load ptr, ptr %9, align 8, !tbaa !6
  %90 = sub i64 %85, %88
  %91 = sdiv i64 %90, -2
  %92 = add i64 %91, %73
  %93 = lshr i64 %90, 1
  %94 = sub nsw i64 %42, %93
  %95 = load ptr, ptr %6, align 8, !tbaa !6
  %96 = call ptr @GetCacheViewVirtualPixels(ptr noundef %89, i64 noundef %92, i64 noundef %94, i64 noundef %90, i64 noundef %90, ptr noundef %95) #19
  %97 = icmp eq ptr %96, null
  br i1 %97, label %293, label %98

98:                                               ; preds = %71
  %99 = load ptr, ptr %9, align 8, !tbaa !6
  %100 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %99) #17
  %101 = load float, ptr %32, align 8, !tbaa !54
  %102 = fpext float %101 to double
  %103 = load float, ptr %33, align 4, !tbaa !55
  %104 = fpext float %103 to double
  %105 = load float, ptr %34, align 8, !tbaa !56
  %106 = fpext float %105 to double
  %107 = load float, ptr %35, align 4, !tbaa !57
  %108 = fpext float %107 to double
  %109 = load float, ptr %36, align 8, !tbaa !52
  %110 = fpext float %109 to double
  %111 = load i64, ptr %8, align 8, !tbaa !29
  %112 = sub i64 %111, %88
  %113 = icmp sgt i64 %112, 0
  %114 = load i32, ptr %12, align 4
  br i1 %113, label %117, label %115

115:                                              ; preds = %98
  %116 = and i32 %114, 1
  br label %232

117:                                              ; preds = %98
  %118 = load ptr, ptr %10, align 8, !tbaa !6
  %119 = getelementptr inbounds ptr, ptr %118, i64 %88
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = and i32 %114, 8
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr %13, align 8
  %124 = getelementptr inbounds %struct._Image, ptr %123, i64 0, i32 6
  %125 = and i32 %114, 1
  %126 = icmp eq i32 %125, 0
  %127 = and i32 %114, 2
  %128 = icmp eq i32 %127, 0
  %129 = and i32 %114, 4
  %130 = icmp eq i32 %129, 0
  %131 = and i32 %114, 32
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr inbounds %struct._Image, ptr %123, i64 0, i32 1
  %134 = icmp eq ptr %100, null
  %135 = getelementptr inbounds i16, ptr %100, i64 %73
  br label %136

136:                                              ; preds = %117, %229
  %137 = phi i64 [ 0, %117 ], [ %230, %229 ]
  %138 = phi ptr [ %120, %117 ], [ %225, %229 ]
  %139 = phi double [ %102, %117 ], [ %179, %229 ]
  %140 = phi double [ %104, %117 ], [ %188, %229 ]
  %141 = phi double [ %106, %117 ], [ %196, %229 ]
  %142 = phi double [ %108, %117 ], [ %204, %229 ]
  %143 = phi double [ %110, %117 ], [ %223, %229 ]
  %144 = phi double [ 0.000000e+00, %117 ], [ %224, %229 ]
  %145 = phi ptr [ %96, %117 ], [ %226, %229 ]
  %146 = mul i64 %112, %137
  %147 = getelementptr inbounds i16, ptr %135, i64 %146
  br label %148

148:                                              ; preds = %136, %221
  %149 = phi i64 [ 0, %136 ], [ %227, %221 ]
  %150 = phi ptr [ %138, %136 ], [ %225, %221 ]
  %151 = phi double [ %139, %136 ], [ %179, %221 ]
  %152 = phi double [ %140, %136 ], [ %188, %221 ]
  %153 = phi double [ %141, %136 ], [ %196, %221 ]
  %154 = phi double [ %142, %136 ], [ %204, %221 ]
  %155 = phi double [ %143, %136 ], [ %223, %221 ]
  %156 = phi double [ %144, %136 ], [ %224, %221 ]
  %157 = phi ptr [ %145, %136 ], [ %226, %221 ]
  br i1 %122, label %169, label %158

158:                                              ; preds = %148
  %159 = load i32, ptr %124, align 8, !tbaa !58
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 0, i32 3
  %163 = load i16, ptr %162, align 2, !tbaa !59
  %164 = xor i16 %163, -1
  %165 = uitofp i16 %164 to double
  %166 = fmul double %165, 0x3EF0001000100010
  %167 = fptrunc double %166 to float
  %168 = fpext float %167 to double
  br label %169

169:                                              ; preds = %161, %158, %148
  %170 = phi double [ %168, %161 ], [ 1.000000e+00, %158 ], [ 1.000000e+00, %148 ]
  br i1 %126, label %178, label %171

171:                                              ; preds = %169
  %172 = load double, ptr %150, align 8, !tbaa !30
  %173 = fmul double %170, %172
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 0, i32 2
  %175 = load i16, ptr %174, align 2, !tbaa !60
  %176 = uitofp i16 %175 to double
  %177 = call double @llvm.fmuladd.f64(double %173, double %176, double %151)
  br label %178

178:                                              ; preds = %171, %169
  %179 = phi double [ %177, %171 ], [ %151, %169 ]
  br i1 %128, label %187, label %180

180:                                              ; preds = %178
  %181 = load double, ptr %150, align 8, !tbaa !30
  %182 = fmul double %170, %181
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 0, i32 1
  %184 = load i16, ptr %183, align 2, !tbaa !61
  %185 = uitofp i16 %184 to double
  %186 = call double @llvm.fmuladd.f64(double %182, double %185, double %152)
  br label %187

187:                                              ; preds = %180, %178
  %188 = phi double [ %186, %180 ], [ %152, %178 ]
  br i1 %130, label %195, label %189

189:                                              ; preds = %187
  %190 = load double, ptr %150, align 8, !tbaa !30
  %191 = fmul double %170, %190
  %192 = load i16, ptr %157, align 2, !tbaa !62
  %193 = uitofp i16 %192 to double
  %194 = call double @llvm.fmuladd.f64(double %191, double %193, double %153)
  br label %195

195:                                              ; preds = %189, %187
  %196 = phi double [ %194, %189 ], [ %153, %187 ]
  br i1 %122, label %203, label %197

197:                                              ; preds = %195
  %198 = load double, ptr %150, align 8, !tbaa !30
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 0, i32 3
  %200 = load i16, ptr %199, align 2, !tbaa !59
  %201 = uitofp i16 %200 to double
  %202 = call double @llvm.fmuladd.f64(double %198, double %201, double %154)
  br label %203

203:                                              ; preds = %197, %195
  %204 = phi double [ %202, %197 ], [ %154, %195 ]
  br i1 %132, label %205, label %207

205:                                              ; preds = %203
  %206 = load double, ptr %150, align 8, !tbaa !30
  br label %221

207:                                              ; preds = %203
  %208 = load i32, ptr %133, align 4, !tbaa !63
  %209 = icmp eq i32 %208, 12
  %210 = load double, ptr %150, align 8, !tbaa !30
  br i1 %209, label %211, label %221

211:                                              ; preds = %207
  %212 = fmul double %170, %210
  br i1 %134, label %217, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds i16, ptr %147, i64 %149
  %215 = load i16, ptr %214, align 2, !tbaa !64
  %216 = zext i16 %215 to i32
  br label %217

217:                                              ; preds = %211, %213
  %218 = phi i32 [ %216, %213 ], [ 0, %211 ]
  %219 = sitofp i32 %218 to double
  %220 = call double @llvm.fmuladd.f64(double %212, double %219, double %155)
  br label %221

221:                                              ; preds = %205, %217, %207
  %222 = phi double [ %210, %217 ], [ %210, %207 ], [ %206, %205 ]
  %223 = phi double [ %220, %217 ], [ %155, %207 ], [ %155, %205 ]
  %224 = call double @llvm.fmuladd.f64(double %222, double %170, double %156)
  %225 = getelementptr inbounds double, ptr %150, i64 1
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 1
  %227 = add nuw nsw i64 %149, 1
  %228 = icmp eq i64 %227, %112
  br i1 %228, label %229, label %148, !llvm.loop !77

229:                                              ; preds = %221
  %230 = add nuw nsw i64 %137, 1
  %231 = icmp eq i64 %230, %112
  br i1 %231, label %232, label %136, !llvm.loop !78

232:                                              ; preds = %229, %115
  %233 = phi i32 [ %116, %115 ], [ %125, %229 ]
  %234 = phi double [ 0.000000e+00, %115 ], [ %224, %229 ]
  %235 = phi double [ %110, %115 ], [ %223, %229 ]
  %236 = phi double [ %108, %115 ], [ %204, %229 ]
  %237 = phi double [ %106, %115 ], [ %196, %229 ]
  %238 = phi double [ %104, %115 ], [ %188, %229 ]
  %239 = phi double [ %102, %115 ], [ %179, %229 ]
  %240 = fcmp olt double %234, 0.000000e+00
  %241 = select i1 %240, double 0.000000e+00, double %234
  %242 = call fastcc double @PerceptibleReciprocal(double noundef %241) #16
  %243 = icmp eq i32 %233, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %232
  %245 = fmul double %239, %242
  %246 = fptrunc double %245 to float
  %247 = call fastcc zeroext i16 @ClampToQuantum(float noundef %246) #16
  %248 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  store i16 %247, ptr %248, align 2, !tbaa !60
  br label %249

249:                                              ; preds = %244, %232
  %250 = and i32 %114, 2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %249
  %253 = fmul double %238, %242
  %254 = fptrunc double %253 to float
  %255 = call fastcc zeroext i16 @ClampToQuantum(float noundef %254) #16
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  store i16 %255, ptr %256, align 2, !tbaa !61
  br label %257

257:                                              ; preds = %252, %249
  %258 = and i32 %114, 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %257
  %261 = fmul double %237, %242
  %262 = fptrunc double %261 to float
  %263 = call fastcc zeroext i16 @ClampToQuantum(float noundef %262) #16
  store i16 %263, ptr %74, align 2, !tbaa !62
  br label %264

264:                                              ; preds = %260, %257
  %265 = and i32 %114, 8
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %264
  %268 = fptrunc double %236 to float
  %269 = call fastcc zeroext i16 @ClampToQuantum(float noundef %268) #16
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  store i16 %269, ptr %270, align 2, !tbaa !59
  br label %271

271:                                              ; preds = %267, %264
  %272 = and i32 %114, 32
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr %13, align 8, !tbaa !6
  %276 = getelementptr inbounds %struct._Image, ptr %275, i64 0, i32 1
  %277 = load i32, ptr %276, align 4, !tbaa !63
  %278 = icmp ne i32 %277, 12
  %279 = select i1 %278, i1 true, i1 %69
  br i1 %279, label %285, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds i16, ptr %63, i64 %73
  %282 = fmul double %235, %242
  %283 = fptrunc double %282 to float
  %284 = call fastcc zeroext i16 @ClampToQuantum(float noundef %283) #16
  store i16 %284, ptr %281, align 2, !tbaa !64
  br label %285

285:                                              ; preds = %271, %274, %280
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %288 = add nuw nsw i64 %73, 1
  %289 = load ptr, ptr %2, align 8, !tbaa !6
  %290 = getelementptr inbounds %struct._Image, ptr %289, i64 0, i32 7
  %291 = load i64, ptr %290, align 8, !tbaa !27
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %71, label %293, !llvm.loop !79

293:                                              ; preds = %285, %71, %61
  %294 = load ptr, ptr %7, align 8, !tbaa !6
  %295 = load ptr, ptr %6, align 8, !tbaa !6
  %296 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %294, ptr noundef %295) #19
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %299

299:                                              ; preds = %298, %293
  %300 = load ptr, ptr %13, align 8, !tbaa !6
  %301 = getelementptr inbounds %struct._Image, ptr %300, i64 0, i32 47
  %302 = load ptr, ptr %301, align 8, !tbaa !68
  %303 = icmp eq ptr %302, null
  br i1 %303, label %313, label %304

304:                                              ; preds = %299
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_AdaptiveSharpenImageChannel.var)
  %305 = load ptr, ptr %13, align 8, !tbaa !6
  %306 = load i64, ptr %14, align 8, !tbaa !36
  %307 = add nsw i64 %306, 1
  store i64 %307, ptr %14, align 8, !tbaa !36
  %308 = getelementptr inbounds %struct._Image, ptr %305, i64 0, i32 8
  %309 = load i64, ptr %308, align 8, !tbaa !28
  %310 = call fastcc i32 @SetImageProgress(ptr noundef %305, ptr noundef nonnull @.str.7, i64 noundef %306, i64 noundef %309) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_AdaptiveSharpenImageChannel.var)
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %304, %45
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %313

313:                                              ; preds = %312, %299, %304, %41
  %314 = add nsw i64 %42, 1
  %315 = load i64, ptr %17, align 8, !tbaa !29
  %316 = icmp slt i64 %42, %315
  br i1 %316, label %41, label %317

317:                                              ; preds = %313
  %318 = load i64, ptr %16, align 8, !tbaa !29
  br label %319

319:                                              ; preds = %317, %37
  %320 = phi i64 [ %39, %37 ], [ %318, %317 ]
  %321 = phi i64 [ %38, %37 ], [ %315, %317 ]
  %322 = load i64, ptr %18, align 8, !tbaa !29
  %323 = add nsw i64 %322, %320
  store i64 %323, ptr %16, align 8, !tbaa !29
  %324 = add nsw i64 %322, %321
  %325 = call i64 @llvm.smin.i64(i64 %324, i64 %23)
  store i64 %325, ptr %17, align 8, !tbaa !29
  %326 = icmp sgt i64 %323, %325
  br i1 %326, label %327, label %37

327:                                              ; preds = %319, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  br label %328

328:                                              ; preds = %327, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call ptr @AccelerateBlurImage(ptr noundef nonnull %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %2, double noundef %3, double noundef %2, double noundef %3) #17
  %18 = call ptr @AcquireKernelInfo(ptr noundef nonnull %6) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 822, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %21) #17
  br label %26

23:                                               ; preds = %16
  %24 = call ptr @MorphologyApply(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %18, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #17
  %25 = call ptr @DestroyKernelInfo(ptr noundef nonnull %18) #17
  br label %26

26:                                               ; preds = %13, %23, %20
  %27 = phi ptr [ null, %20 ], [ %24, %23 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @AccelerateBlurImage(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireKernelInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @MorphologyApply(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyKernelInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ConvolveImage(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @ConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, ptr noundef %2, ptr noundef %3) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ConvolveImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @AcquireKernelInfo(ptr noundef null) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 897, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #17
  br label %45

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %2, ptr %12, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %2, ptr %13, align 8, !tbaa !41
  %14 = add i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 4
  store i64 %15, ptr %17, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %18, align 8, !tbaa !44
  %19 = shl i64 %2, 3
  %20 = tail call ptr @AcquireAlignedMemory(i64 noundef %2, i64 noundef %19) #18
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !45
  %22 = icmp eq ptr %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = mul i64 %2, %2
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %30, label %37

26:                                               ; preds = %11
  %27 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #17
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 908, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %28) #17
  br label %45

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %35, %30 ], [ 0, %23 ]
  %32 = getelementptr inbounds double, ptr %3, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !30
  %34 = getelementptr inbounds double, ptr %20, i64 %31
  store double %33, ptr %34, align 8, !tbaa !30
  %35 = add nuw nsw i64 %31, 1
  %36 = icmp eq i64 %35, %24
  br i1 %36, label %37, label %30, !llvm.loop !80

37:                                               ; preds = %30, %23
  %38 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %4) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %6, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #17
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ %38, %37 ]
  %44 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #17
  br label %45

45:                                               ; preds = %42, %26, %8
  %46 = phi ptr [ null, %8 ], [ null, %26 ], [ %43, %42 ]
  ret ptr %46
}

; Function Attrs: optsize
declare ptr @AccelerateConvolveImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DespeckleImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1083, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #17
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @AccelerateDespeckleImage(ptr noundef nonnull %0, ptr noundef %1) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %212

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !28
  %17 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %14, i64 noundef %16, i32 noundef 1, ptr noundef %1) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %212, label %19

19:                                               ; preds = %12
  %20 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %17, i32 noundef 1) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 58
  tail call void @InheritException(ptr noundef %1, ptr noundef nonnull %23) #17
  %24 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #17
  br label %212

25:                                               ; preds = %19
  %26 = load i64, ptr %13, align 8, !tbaa !27
  %27 = add i64 %26, 2
  %28 = load i64, ptr %15, align 8, !tbaa !28
  %29 = add i64 %28, 2
  %30 = mul i64 %29, %27
  %31 = tail call ptr @AcquireVirtualMemory(i64 noundef %30, i64 noundef 2) #18
  %32 = tail call ptr @AcquireVirtualMemory(i64 noundef %30, i64 noundef 2) #18
  %33 = icmp eq ptr %31, null
  %34 = icmp eq ptr %32, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  br i1 %34, label %39, label %37

37:                                               ; preds = %36
  %38 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %32) #17
  br label %39

39:                                               ; preds = %37, %36
  br i1 %33, label %42, label %40

40:                                               ; preds = %39
  %41 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %31) #17
  br label %42

42:                                               ; preds = %40, %39
  %43 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #17
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %45 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1113, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %44) #17
  br label %212

46:                                               ; preds = %25
  %47 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %31) #17
  %48 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %32) #17
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !63
  %51 = icmp eq i32 %50, 12
  %52 = select i1 %51, i64 5, i64 4
  %53 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #17
  %54 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %17, ptr noundef %1) #17
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %56 = shl i64 %30, 1
  %57 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %59

59:                                               ; preds = %46, %197
  %60 = phi i32 [ 1, %46 ], [ %198, %197 ]
  %61 = phi i64 [ 0, %46 ], [ %199, %197 ]
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %197, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %55, align 8, !tbaa !58
  %65 = icmp eq i32 %64, 0
  %66 = icmp eq i64 %61, 3
  %67 = and i1 %66, %65
  br i1 %67, label %197, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @ResetMagickMemory(ptr noundef %47, i32 noundef 0, i64 noundef %56) #17
  %70 = load i64, ptr %15, align 8, !tbaa !28
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %68
  %73 = load i64, ptr %13, align 8, !tbaa !27
  br label %74

74:                                               ; preds = %72, %108
  %75 = phi i64 [ %83, %108 ], [ %73, %72 ]
  %76 = phi i64 [ %109, %108 ], [ %73, %72 ]
  %77 = phi i64 [ %110, %108 ], [ 0, %72 ]
  %78 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %53, i64 noundef 0, i64 noundef %77, i64 noundef %75, i64 noundef 1, ptr noundef %1) #19
  %79 = icmp eq ptr %78, null
  br i1 %79, label %113, label %80

80:                                               ; preds = %74
  %81 = add nsw i64 %76, 2
  %82 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %53) #17
  %83 = load i64, ptr %13, align 8, !tbaa !27
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = add nsw i64 %76, 3
  br label %87

87:                                               ; preds = %85, %103
  %88 = phi i64 [ %106, %103 ], [ %86, %85 ]
  %89 = phi ptr [ %104, %103 ], [ %78, %85 ]
  %90 = phi i64 [ %105, %103 ], [ 0, %85 ]
  switch i64 %61, label %103 [
    i64 0, label %91
    i64 1, label %93
    i64 2, label %99
    i64 3, label %95
    i64 4, label %97
  ]

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 2
  br label %99

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 1
  br label %99

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 3
  br label %99

97:                                               ; preds = %87
  %98 = getelementptr inbounds i16, ptr %82, i64 %90
  br label %99

99:                                               ; preds = %87, %91, %93, %95, %97
  %100 = phi ptr [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %89, %87 ]
  %101 = load i16, ptr %100, align 2, !tbaa !64
  %102 = getelementptr inbounds i16, ptr %47, i64 %88
  store i16 %101, ptr %102, align 2, !tbaa !64
  br label %103

103:                                              ; preds = %99, %87
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %105 = add nuw nsw i64 %90, 1
  %106 = add nsw i64 %88, 1
  %107 = icmp eq i64 %105, %83
  br i1 %107, label %108, label %87, !llvm.loop !81

108:                                              ; preds = %103, %80
  %109 = phi i64 [ %81, %80 ], [ %88, %103 ]
  %110 = add nuw nsw i64 %77, 1
  %111 = load i64, ptr %15, align 8, !tbaa !28
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %74, label %113, !llvm.loop !82

113:                                              ; preds = %108, %74, %68
  %114 = tail call ptr @ResetMagickMemory(ptr noundef %48, i32 noundef 0, i64 noundef %56) #17
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ 0, %113 ], [ %131, %115 ]
  %117 = getelementptr inbounds [4 x i64], ptr @DespeckleImage.X, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !29
  %119 = getelementptr inbounds [4 x i64], ptr @DespeckleImage.Y, i64 0, i64 %116
  %120 = load i64, ptr %119, align 8, !tbaa !29
  %121 = load i64, ptr %13, align 8, !tbaa !27
  %122 = load i64, ptr %15, align 8, !tbaa !28
  tail call fastcc void @Hull(ptr noundef nonnull %0, i64 noundef %118, i64 noundef %120, i64 noundef %121, i64 noundef %122, i32 noundef 1, ptr noundef %47, ptr noundef %48) #16
  %123 = sub nsw i64 0, %118
  %124 = sub nsw i64 0, %120
  %125 = load i64, ptr %13, align 8, !tbaa !27
  %126 = load i64, ptr %15, align 8, !tbaa !28
  tail call fastcc void @Hull(ptr noundef nonnull %0, i64 noundef %123, i64 noundef %124, i64 noundef %125, i64 noundef %126, i32 noundef 1, ptr noundef %47, ptr noundef %48) #16
  %127 = load i64, ptr %13, align 8, !tbaa !27
  %128 = load i64, ptr %15, align 8, !tbaa !28
  tail call fastcc void @Hull(ptr noundef nonnull %0, i64 noundef %123, i64 noundef %124, i64 noundef %127, i64 noundef %128, i32 noundef -1, ptr noundef %47, ptr noundef %48) #16
  %129 = load i64, ptr %13, align 8, !tbaa !27
  %130 = load i64, ptr %15, align 8, !tbaa !28
  tail call fastcc void @Hull(ptr noundef nonnull %0, i64 noundef %118, i64 noundef %120, i64 noundef %129, i64 noundef %130, i32 noundef -1, ptr noundef %47, ptr noundef %48) #16
  %131 = add nuw nsw i64 %116, 1
  %132 = icmp eq i64 %131, 4
  br i1 %132, label %133, label %115, !llvm.loop !83

133:                                              ; preds = %115
  %134 = load i64, ptr %15, align 8, !tbaa !28
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %189

136:                                              ; preds = %133
  %137 = load i64, ptr %13, align 8, !tbaa !27
  br label %142

138:                                              ; preds = %185
  %139 = add nuw nsw i64 %144, 1
  %140 = load i64, ptr %15, align 8, !tbaa !28
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %189, !llvm.loop !84

142:                                              ; preds = %136, %138
  %143 = phi i64 [ %186, %138 ], [ %137, %136 ]
  %144 = phi i64 [ %139, %138 ], [ 0, %136 ]
  %145 = load i64, ptr %57, align 8, !tbaa !27
  %146 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %54, i64 noundef 0, i64 noundef %144, i64 noundef %145, i64 noundef 1, ptr noundef %1) #19
  %147 = icmp eq ptr %146, null
  br i1 %147, label %189, label %148

148:                                              ; preds = %142
  %149 = add nsw i64 %143, 2
  %150 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #17
  %151 = load i64, ptr %13, align 8, !tbaa !27
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %185

153:                                              ; preds = %148
  %154 = add nsw i64 %143, 3
  %155 = icmp eq ptr %150, null
  br label %156

156:                                              ; preds = %153, %180
  %157 = phi i64 [ %154, %153 ], [ %183, %180 ]
  %158 = phi ptr [ %146, %153 ], [ %181, %180 ]
  %159 = phi i64 [ 0, %153 ], [ %182, %180 ]
  switch i64 %61, label %180 [
    i64 0, label %160
    i64 1, label %164
    i64 2, label %168
    i64 3, label %171
    i64 4, label %175
  ]

160:                                              ; preds = %156
  %161 = getelementptr inbounds i16, ptr %47, i64 %157
  %162 = load i16, ptr %161, align 2, !tbaa !64
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 2
  store i16 %162, ptr %163, align 2, !tbaa !60
  br label %180

164:                                              ; preds = %156
  %165 = getelementptr inbounds i16, ptr %47, i64 %157
  %166 = load i16, ptr %165, align 2, !tbaa !64
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 1
  store i16 %166, ptr %167, align 2, !tbaa !61
  br label %180

168:                                              ; preds = %156
  %169 = getelementptr inbounds i16, ptr %47, i64 %157
  %170 = load i16, ptr %169, align 2, !tbaa !64
  store i16 %170, ptr %158, align 2, !tbaa !62
  br label %180

171:                                              ; preds = %156
  %172 = getelementptr inbounds i16, ptr %47, i64 %157
  %173 = load i16, ptr %172, align 2, !tbaa !64
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 3
  store i16 %173, ptr %174, align 2, !tbaa !59
  br label %180

175:                                              ; preds = %156
  br i1 %155, label %180, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds i16, ptr %150, i64 %159
  %178 = getelementptr inbounds i16, ptr %47, i64 %157
  %179 = load i16, ptr %178, align 2, !tbaa !64
  store i16 %179, ptr %177, align 2, !tbaa !64
  br label %180

180:                                              ; preds = %156, %175, %176, %171, %168, %164, %160
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 1
  %182 = add nuw nsw i64 %159, 1
  %183 = add nsw i64 %157, 1
  %184 = icmp eq i64 %182, %151
  br i1 %184, label %185, label %156, !llvm.loop !85

185:                                              ; preds = %180, %148
  %186 = phi i64 [ %149, %148 ], [ %157, %180 ]
  %187 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %54, ptr noundef %1) #19
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %138

189:                                              ; preds = %138, %142, %185, %133
  %190 = phi i32 [ 1, %133 ], [ 0, %185 ], [ 1, %142 ], [ 1, %138 ]
  %191 = load ptr, ptr %58, align 8, !tbaa !68
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef %61, i64 noundef %52) #16
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, i32 0, i32 %190
  br label %197

197:                                              ; preds = %189, %193, %63, %59
  %198 = phi i32 [ 0, %59 ], [ 1, %63 ], [ %196, %193 ], [ %190, %189 ]
  %199 = add nuw nsw i64 %61, 1
  %200 = icmp eq i64 %199, %52
  br i1 %200, label %201, label %59, !llvm.loop !86

201:                                              ; preds = %197
  %202 = tail call ptr @DestroyCacheView(ptr noundef %54) #17
  %203 = tail call ptr @DestroyCacheView(ptr noundef %53) #17
  %204 = tail call ptr @RelinquishVirtualMemory(ptr noundef %32) #17
  %205 = tail call ptr @RelinquishVirtualMemory(ptr noundef %31) #17
  %206 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %207 = load i32, ptr %206, align 8, !tbaa !37
  %208 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 77
  store i32 %207, ptr %208, align 8, !tbaa !37
  %209 = icmp eq i32 %198, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #17
  br label %212

212:                                              ; preds = %201, %210, %12, %9, %42, %22
  %213 = phi ptr [ null, %22 ], [ null, %42 ], [ %10, %9 ], [ null, %12 ], [ %211, %210 ], [ %17, %201 ]
  ret ptr %213
}

; Function Attrs: optsize
declare ptr @AccelerateDespeckleImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Hull(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noalias noundef %6, ptr noalias noundef %7) unnamed_addr #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i64 %3, ptr %9, align 8, !tbaa !29
  store i64 %4, ptr %10, align 8, !tbaa !29
  store i32 %5, ptr %11, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  %17 = getelementptr i16, ptr %6, i64 %3
  %18 = getelementptr i16, ptr %17, i64 2
  store ptr %18, ptr %12, align 8, !tbaa !6
  %19 = getelementptr i16, ptr %7, i64 %3
  %20 = getelementptr i16, ptr %19, i64 2
  store ptr %20, ptr %13, align 8, !tbaa !6
  %21 = add i64 %3, 2
  %22 = mul i64 %21, %2
  %23 = getelementptr i16, ptr %18, i64 %22
  %24 = getelementptr i16, ptr %23, i64 %1
  store ptr %24, ptr %14, align 8, !tbaa !6
  %25 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %26 = and i64 %25, 576460752303423487
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %8
  %29 = tail call i32 @GetImagePixelCacheType(ptr noundef %0) #17
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @GetImagePixelCacheType(ptr noundef %0) #17
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %40

36:                                               ; preds = %31, %28, %8
  %37 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %38 = icmp ult i64 %37, 2
  %39 = select i1 %38, i64 1, i64 2
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i64 [ %35, %34 ], [ %39, %36 ]
  %42 = trunc i64 %41 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %42)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @Hull.omp_outlined, ptr nonnull %10, ptr nonnull %9, ptr nonnull %11, ptr nonnull %12, ptr nonnull %14, ptr nonnull %13)
  %43 = load i64, ptr %9, align 8, !tbaa !29
  %44 = getelementptr i16, ptr %6, i64 %43
  %45 = getelementptr i16, ptr %44, i64 2
  store ptr %45, ptr %12, align 8, !tbaa !6
  %46 = getelementptr i16, ptr %7, i64 %43
  %47 = getelementptr i16, ptr %46, i64 2
  store ptr %47, ptr %13, align 8, !tbaa !6
  %48 = add i64 %43, 2
  %49 = mul i64 %48, %2
  %50 = getelementptr i16, ptr %47, i64 %49
  %51 = getelementptr i16, ptr %50, i64 %1
  store ptr %51, ptr %14, align 8, !tbaa !6
  %52 = sub i64 -2, %43
  %53 = mul i64 %52, %2
  %54 = sub i64 %53, %1
  %55 = getelementptr inbounds i16, ptr %47, i64 %54
  store ptr %55, ptr %15, align 8, !tbaa !6
  %56 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %57 = and i64 %56, 576460752303423487
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %40
  %60 = call i32 @GetImagePixelCacheType(ptr noundef %0) #17
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = call i32 @GetImagePixelCacheType(ptr noundef %0) #17
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %71

67:                                               ; preds = %62, %59, %40
  %68 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %69 = icmp ult i64 %68, 2
  %70 = select i1 %69, i64 1, i64 2
  br label %71

71:                                               ; preds = %67, %65
  %72 = phi i64 [ %66, %65 ], [ %70, %67 ]
  %73 = trunc i64 %72 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %73)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @Hull.omp_outlined.11, ptr nonnull %10, ptr nonnull %9, ptr nonnull %11, ptr nonnull %13, ptr nonnull %15, ptr nonnull %14, ptr nonnull %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @Hull.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7) #7 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load i64, ptr %2, align 8, !tbaa !29
  %14 = add nsw i64 %13, -1
  %15 = icmp sgt i64 %13, 0
  br i1 %15, label %16, label %98

16:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 %14, ptr %10, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 1, ptr %11, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !tbaa !10
  %17 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %17, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %18 = load i64, ptr %9, align 8, !tbaa !29
  %19 = load i64, ptr %10, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %14)
  store i64 %20, ptr %10, align 8, !tbaa !29
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %97, label %22

22:                                               ; preds = %16
  %23 = load i64, ptr %3, align 8, !tbaa !29
  %24 = load i32, ptr %4, align 4, !tbaa !10
  %25 = icmp sgt i32 %24, 0
  %26 = icmp sgt i64 %23, 0
  %27 = load i64, ptr %11, align 8, !tbaa !29
  br label %28

28:                                               ; preds = %22, %91
  %29 = phi i64 [ %20, %22 ], [ %94, %91 ]
  %30 = phi i64 [ %18, %22 ], [ %92, %91 ]
  %31 = load ptr, ptr %5, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  br label %34

34:                                               ; preds = %28, %88
  %35 = phi i64 [ %30, %28 ], [ %89, %88 ]
  %36 = shl nsw i64 %35, 1
  %37 = or disjoint i64 %36, 1
  %38 = mul i64 %23, %35
  %39 = add i64 %37, %38
  br i1 %25, label %44, label %40

40:                                               ; preds = %34
  br i1 %26, label %41, label %88

41:                                               ; preds = %40
  %42 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 2) #16, !range !87
  %43 = zext nneg i16 %42 to i64
  br label %68

44:                                               ; preds = %34
  br i1 %26, label %45, label %88

45:                                               ; preds = %44
  %46 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 2) #16, !range !87
  %47 = zext nneg i16 %46 to i64
  br label %48

48:                                               ; preds = %45, %62
  %49 = phi i64 [ 0, %45 ], [ %66, %62 ]
  %50 = phi i64 [ %39, %45 ], [ %65, %62 ]
  %51 = getelementptr inbounds i16, ptr %31, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !64
  %53 = zext i16 %52 to i64
  %54 = getelementptr inbounds i16, ptr %32, i64 %50
  %55 = load i16, ptr %54, align 2, !tbaa !64
  %56 = zext i16 %55 to i64
  %57 = add nuw nsw i64 %47, %53
  %58 = icmp ugt i64 %57, %56
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #16, !range !87
  %61 = add i16 %60, %52
  br label %62

62:                                               ; preds = %59, %48
  %63 = phi i16 [ %61, %59 ], [ %52, %48 ]
  %64 = getelementptr inbounds i16, ptr %33, i64 %50
  store i16 %63, ptr %64, align 2, !tbaa !64
  %65 = add nsw i64 %50, 1
  %66 = add nuw nsw i64 %49, 1
  %67 = icmp eq i64 %66, %23
  br i1 %67, label %88, label %48, !llvm.loop !88

68:                                               ; preds = %41, %82
  %69 = phi i64 [ 0, %41 ], [ %86, %82 ]
  %70 = phi i64 [ %39, %41 ], [ %85, %82 ]
  %71 = getelementptr inbounds i16, ptr %31, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !64
  %73 = zext i16 %72 to i64
  %74 = getelementptr inbounds i16, ptr %32, i64 %70
  %75 = load i16, ptr %74, align 2, !tbaa !64
  %76 = zext i16 %75 to i64
  %77 = sub nsw i64 %73, %43
  %78 = icmp slt i64 %77, %76
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #16, !range !87
  %81 = sub i16 %72, %80
  br label %82

82:                                               ; preds = %79, %68
  %83 = phi i16 [ %81, %79 ], [ %72, %68 ]
  %84 = getelementptr inbounds i16, ptr %33, i64 %70
  store i16 %83, ptr %84, align 2, !tbaa !64
  %85 = add nsw i64 %70, 1
  %86 = add nuw nsw i64 %69, 1
  %87 = icmp eq i64 %86, %23
  br i1 %87, label %88, label %68, !llvm.loop !89

88:                                               ; preds = %82, %62, %40, %44
  %89 = add nsw i64 %35, 1
  %90 = icmp slt i64 %35, %29
  br i1 %90, label %34, label %91

91:                                               ; preds = %88
  %92 = add nsw i64 %27, %30
  %93 = add nsw i64 %27, %29
  %94 = call i64 @llvm.smin.i64(i64 %93, i64 %14)
  %95 = icmp sgt i64 %92, %94
  br i1 %95, label %96, label %28

96:                                               ; preds = %91
  store i64 %94, ptr %10, align 8, !tbaa !29
  store i64 %92, ptr %9, align 8, !tbaa !29
  br label %97

97:                                               ; preds = %96, %16
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %98

98:                                               ; preds = %97, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #10 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @Hull.omp_outlined.11(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8) #7 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load i64, ptr %2, align 8, !tbaa !29
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %109

17:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 %15, ptr %11, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 1, ptr %12, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !tbaa !10
  %18 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %19 = load i64, ptr %10, align 8, !tbaa !29
  %20 = load i64, ptr %11, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %15)
  store i64 %21, ptr %11, align 8, !tbaa !29
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %108, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %3, align 8, !tbaa !29
  %25 = load i32, ptr %4, align 4, !tbaa !10
  %26 = icmp sgt i32 %25, 0
  %27 = icmp sgt i64 %24, 0
  %28 = load i64, ptr %12, align 8, !tbaa !29
  br label %29

29:                                               ; preds = %23, %102
  %30 = phi i64 [ %21, %23 ], [ %105, %102 ]
  %31 = phi i64 [ %19, %23 ], [ %103, %102 ]
  %32 = load ptr, ptr %5, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %8, align 8
  br label %35

35:                                               ; preds = %29, %99
  %36 = phi i64 [ %31, %29 ], [ %100, %99 ]
  %37 = shl nsw i64 %36, 1
  %38 = or disjoint i64 %37, 1
  %39 = mul i64 %24, %36
  %40 = add i64 %38, %39
  br i1 %26, label %46, label %41

41:                                               ; preds = %35
  br i1 %27, label %42, label %99

42:                                               ; preds = %41
  %43 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 2) #16, !range !87
  %44 = zext nneg i16 %43 to i64
  %45 = load ptr, ptr %7, align 8
  br label %75

46:                                               ; preds = %35
  br i1 %27, label %47, label %99

47:                                               ; preds = %46
  %48 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 2) #16, !range !87
  %49 = zext nneg i16 %48 to i64
  %50 = load ptr, ptr %7, align 8
  br label %51

51:                                               ; preds = %47, %69
  %52 = phi i64 [ 0, %47 ], [ %73, %69 ]
  %53 = phi i64 [ %40, %47 ], [ %72, %69 ]
  %54 = getelementptr inbounds i16, ptr %32, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !64
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds i16, ptr %33, i64 %53
  %58 = load i16, ptr %57, align 2, !tbaa !64
  %59 = zext i16 %58 to i64
  %60 = add nuw nsw i64 %49, %56
  %61 = icmp ugt i64 %60, %59
  br i1 %61, label %69, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds i16, ptr %50, i64 %53
  %64 = load i16, ptr %63, align 2, !tbaa !64
  %65 = icmp ugt i16 %64, %55
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #16, !range !87
  %68 = add i16 %67, %55
  br label %69

69:                                               ; preds = %66, %62, %51
  %70 = phi i16 [ %68, %66 ], [ %55, %62 ], [ %55, %51 ]
  %71 = getelementptr inbounds i16, ptr %34, i64 %53
  store i16 %70, ptr %71, align 2, !tbaa !64
  %72 = add nsw i64 %53, 1
  %73 = add nuw nsw i64 %52, 1
  %74 = icmp eq i64 %73, %24
  br i1 %74, label %99, label %51, !llvm.loop !90

75:                                               ; preds = %42, %93
  %76 = phi i64 [ 0, %42 ], [ %97, %93 ]
  %77 = phi i64 [ %40, %42 ], [ %96, %93 ]
  %78 = getelementptr inbounds i16, ptr %32, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !64
  %80 = zext i16 %79 to i64
  %81 = getelementptr inbounds i16, ptr %33, i64 %77
  %82 = load i16, ptr %81, align 2, !tbaa !64
  %83 = zext i16 %82 to i64
  %84 = sub nsw i64 %80, %44
  %85 = icmp slt i64 %84, %83
  br i1 %85, label %93, label %86

86:                                               ; preds = %75
  %87 = getelementptr inbounds i16, ptr %45, i64 %77
  %88 = load i16, ptr %87, align 2, !tbaa !64
  %89 = icmp ult i16 %88, %79
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #16, !range !87
  %92 = sub i16 %79, %91
  br label %93

93:                                               ; preds = %90, %86, %75
  %94 = phi i16 [ %92, %90 ], [ %79, %86 ], [ %79, %75 ]
  %95 = getelementptr inbounds i16, ptr %34, i64 %77
  store i16 %94, ptr %95, align 2, !tbaa !64
  %96 = add nsw i64 %77, 1
  %97 = add nuw nsw i64 %76, 1
  %98 = icmp eq i64 %97, %24
  br i1 %98, label %99, label %75, !llvm.loop !91

99:                                               ; preds = %93, %69, %41, %46
  %100 = add nsw i64 %36, 1
  %101 = icmp slt i64 %36, %30
  br i1 %101, label %35, label %102

102:                                              ; preds = %99
  %103 = add nsw i64 %28, %31
  %104 = add nsw i64 %28, %30
  %105 = call i64 @llvm.smin.i64(i64 %104, i64 %15)
  %106 = icmp sgt i64 %103, %105
  br i1 %106, label %107, label %29

107:                                              ; preds = %102
  store i64 %105, ptr %11, align 8, !tbaa !29
  store i64 %103, ptr %10, align 8, !tbaa !29
  br label %108

108:                                              ; preds = %107, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %109

109:                                              ; preds = %108, %9
  ret void
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth1D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @EmbossImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1378, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #17
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef %2) #17
  %13 = tail call ptr @AcquireKernelInfo(ptr noundef null) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1384, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %16) #17
  br label %120

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 1
  store i64 %12, ptr %19, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 2
  store i64 %12, ptr %20, align 8, !tbaa !41
  %21 = add i64 %12, -1
  %22 = sdiv i64 %21, 2
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 3
  store i64 %22, ptr %23, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 4
  store i64 %22, ptr %24, align 8, !tbaa !43
  %25 = shl i64 %12, 3
  %26 = tail call ptr @AcquireAlignedMemory(i64 noundef %12, i64 noundef %25) #18
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !45
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %13) #17
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1394, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %31) #17
  br label %120

33:                                               ; preds = %18
  %34 = load i64, ptr %19, align 8, !tbaa !39
  %35 = add i64 %34, -1
  %36 = sdiv i64 %35, 2
  %37 = sub nsw i64 0, %36
  %38 = icmp ugt i64 %34, -9223372036854775808
  br i1 %38, label %56, label %39

39:                                               ; preds = %33
  %40 = tail call double @llvm.fabs.f64(double %2)
  %41 = fcmp olt double %40, 1.000000e-15
  %42 = select i1 %41, double 1.000000e-15, double %2
  %43 = fmul double %42, 2.000000e+00
  %44 = fmul double %42, %43
  %45 = fmul double %42, 0x401921FB54442D18
  %46 = fmul double %42, %45
  %47 = tail call i64 @llvm.abs.i64(i64 %36, i1 true)
  br label %48

48:                                               ; preds = %83, %39
  %49 = phi i64 [ %37, %39 ], [ %85, %83 ]
  %50 = phi i64 [ %36, %39 ], [ %84, %83 ]
  %51 = phi i64 [ 0, %39 ], [ %80, %83 ]
  %52 = mul nsw i64 %49, %49
  %53 = sitofp i64 %52 to double
  br label %63

54:                                               ; preds = %83
  %55 = load i64, ptr %19, align 8, !tbaa !39
  br label %56

56:                                               ; preds = %54, %33
  %57 = phi i64 [ %55, %54 ], [ %34, %33 ]
  %58 = load i64, ptr %20, align 8, !tbaa !41
  %59 = mul i64 %58, %57
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %56
  %62 = load ptr, ptr %27, align 8, !tbaa !45
  br label %87

63:                                               ; preds = %48, %63
  %64 = phi i64 [ %37, %48 ], [ %81, %63 ]
  %65 = phi i64 [ %51, %48 ], [ %80, %63 ]
  %66 = or i64 %64, %49
  %67 = icmp sgt i64 %66, -1
  %68 = select i1 %67, double 8.000000e+00, double -8.000000e+00
  %69 = sitofp i64 %64 to double
  %70 = tail call double @llvm.fmuladd.f64(double %69, double %69, double %53)
  %71 = fneg double %70
  %72 = fdiv double %71, %44
  %73 = tail call double @exp(double noundef %72) #17
  %74 = fmul double %68, %73
  %75 = fdiv double %74, %46
  %76 = load ptr, ptr %27, align 8, !tbaa !45
  %77 = getelementptr inbounds double, ptr %76, i64 %65
  %78 = icmp eq i64 %64, %50
  %79 = select i1 %78, double %75, double 0.000000e+00
  store double %79, ptr %77, align 8
  %80 = add nsw i64 %65, 1
  %81 = add i64 %64, 1
  %82 = icmp eq i64 %64, %47
  br i1 %82, label %83, label %63, !llvm.loop !92

83:                                               ; preds = %63
  %84 = add nsw i64 %50, -1
  %85 = add i64 %49, 1
  %86 = icmp eq i64 %49, %47
  br i1 %86, label %54, label %48, !llvm.loop !93

87:                                               ; preds = %61, %87
  %88 = phi double [ 0.000000e+00, %61 ], [ %92, %87 ]
  %89 = phi i64 [ 0, %61 ], [ %93, %87 ]
  %90 = getelementptr inbounds double, ptr %62, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !30
  %92 = fadd double %88, %91
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp eq i64 %93, %59
  br i1 %94, label %95, label %87, !llvm.loop !94

95:                                               ; preds = %87
  %96 = fcmp olt double %92, 0.000000e+00
  %97 = select i1 %96, double 0.000000e+00, double %92
  %98 = tail call fastcc double @PerceptibleReciprocal(double noundef %97) #16
  br i1 %60, label %99, label %108

99:                                               ; preds = %95
  %100 = load ptr, ptr %27, align 8, !tbaa !45
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi i64 [ 0, %99 ], [ %106, %101 ]
  %103 = getelementptr inbounds double, ptr %100, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !30
  %105 = fmul double %98, %104
  store double %105, ptr %103, align 8, !tbaa !30
  %106 = add nuw nsw i64 %102, 1
  %107 = icmp eq i64 %106, %59
  br i1 %107, label %108, label %101, !llvm.loop !95

108:                                              ; preds = %101, %56, %95
  %109 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %13, ptr noundef %3) #17
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %13) #17
  br label %117

113:                                              ; preds = %108
  %114 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %13, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %3) #17
  %115 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %13) #17
  %116 = icmp eq ptr %114, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %111, %113
  %118 = phi ptr [ %109, %111 ], [ %114, %113 ]
  %119 = tail call i32 @EqualizeImageChannel(ptr noundef nonnull %118, i32 noundef 134217471) #17
  br label %120

120:                                              ; preds = %113, %117, %29, %15
  %121 = phi ptr [ null, %15 ], [ null, %29 ], [ %118, %117 ], [ null, %113 ]
  ret ptr %121
}

; Function Attrs: optsize
declare i32 @EqualizeImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FilterImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @FilterImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FilterImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = alloca ptr, align 8
  %16 = alloca [4096 x i8], align 16
  %17 = alloca ptr, align 8
  %18 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !6
  store i32 %1, ptr %6, align 4, !tbaa !10
  store ptr %2, ptr %7, align 8, !tbaa !6
  store ptr %3, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %20 = load i32, ptr %19, align 8, !tbaa !12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1514, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #17
  br label %25

25:                                               ; preds = %22, %4
  %26 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !39
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1518, i32 noundef 410, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, ptr noundef nonnull %31) #17
  br label %154

33:                                               ; preds = %25
  %34 = load i32, ptr %19, align 8, !tbaa !12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %79, label %36

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  %37 = uitofp i64 %27 to double
  %38 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !41
  %40 = uitofp i64 %39 to double
  %41 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, ptr noundef nonnull @.str.13, double noundef %37, double noundef %40) #17
  %42 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #17
  store ptr %42, ptr %17, align 8, !tbaa !6
  %43 = load i64, ptr %38, align 8, !tbaa !41
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  br label %48

48:                                               ; preds = %45, %67
  %49 = phi i64 [ %71, %67 ], [ 0, %45 ]
  %50 = phi ptr [ %68, %67 ], [ %47, %45 ]
  %51 = load ptr, ptr %17, align 8, !tbaa !6
  store i8 0, ptr %51, align 1, !tbaa !96
  %52 = sitofp i64 %49 to double
  %53 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %16, i64 noundef 4096, ptr noundef nonnull @.str.14, double noundef %52) #17
  %54 = call i32 @ConcatenateString(ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  %55 = load i64, ptr %26, align 8, !tbaa !39
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48, %57
  %58 = phi i64 [ %64, %57 ], [ 0, %48 ]
  %59 = phi ptr [ %60, %57 ], [ %50, %48 ]
  %60 = getelementptr inbounds double, ptr %59, i64 1
  %61 = load double, ptr %59, align 8, !tbaa !30
  %62 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %16, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %61) #17
  %63 = call i32 @ConcatenateString(ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  %64 = add nuw nsw i64 %58, 1
  %65 = load i64, ptr %26, align 8, !tbaa !39
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %57, label %67, !llvm.loop !97

67:                                               ; preds = %57, %48
  %68 = phi ptr [ %50, %48 ], [ %60, %57 ]
  %69 = load ptr, ptr %17, align 8, !tbaa !6
  %70 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1550, ptr noundef nonnull @.str.2, ptr noundef %69) #17
  %71 = add nuw nsw i64 %49, 1
  %72 = load i64, ptr %38, align 8, !tbaa !41
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %48, label %74, !llvm.loop !98

74:                                               ; preds = %67
  %75 = load ptr, ptr %17, align 8, !tbaa !6
  br label %76

76:                                               ; preds = %74, %36
  %77 = phi ptr [ %75, %74 ], [ %42, %36 ]
  %78 = call ptr @DestroyString(ptr noundef %77) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %16) #8
  br label %79

79:                                               ; preds = %76, %33
  %80 = call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) #17
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %154

82:                                               ; preds = %79
  %83 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #17
  store ptr %83, ptr %11, align 8, !tbaa !6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %154, label %85

85:                                               ; preds = %82
  %86 = call i32 @SetImageStorageClass(ptr noundef nonnull %83, i32 noundef 1) #17
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct._Image, ptr %83, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %89) #17
  %90 = call ptr @DestroyImage(ptr noundef nonnull %83) #17
  br label %154

91:                                               ; preds = %85
  %92 = load i64, ptr %26, align 8, !tbaa !39
  %93 = shl i64 %92, 2
  %94 = call ptr @AcquireAlignedMemory(i64 noundef %92, i64 noundef %93) #18
  store ptr %94, ptr %15, align 8, !tbaa !6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load i64, ptr %26, align 8, !tbaa !39
  %98 = mul i64 %97, %97
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  br label %107

103:                                              ; preds = %91
  %104 = call ptr @DestroyImage(ptr noundef nonnull %83) #17
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %106 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1580, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %105) #17
  br label %154

107:                                              ; preds = %100, %107
  %108 = phi i64 [ 0, %100 ], [ %113, %107 ]
  %109 = getelementptr inbounds double, ptr %102, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !30
  %111 = fptrunc double %110 to float
  %112 = getelementptr inbounds float, ptr %94, i64 %108
  store float %111, ptr %112, align 4, !tbaa !50
  %113 = add nuw nsw i64 %108, 1
  %114 = icmp eq i64 %113, %98
  br i1 %114, label %115, label %107, !llvm.loop !99

115:                                              ; preds = %107, %96
  store i32 1, ptr %12, align 4, !tbaa !10
  store i64 0, ptr %13, align 8, !tbaa !36
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %14) #17
  call fastcc void @SetMagickPixelPacketBias(ptr noundef %0, ptr noundef nonnull %14) #16
  %116 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #17
  store ptr %116, ptr %10, align 8, !tbaa !6
  %117 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %83, ptr noundef %3) #17
  store ptr %117, ptr %9, align 8, !tbaa !6
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %119 = load i64, ptr %118, align 8, !tbaa !28
  %120 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %121 = shl i64 %120, 5
  %122 = icmp ugt i64 %119, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #17
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %83) #17
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %135

131:                                              ; preds = %126, %123, %115
  %132 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %133 = icmp ult i64 %132, 2
  %134 = select i1 %133, i64 1, i64 2
  br label %135

135:                                              ; preds = %131, %129
  %136 = phi i64 [ %130, %129 ], [ %134, %131 ]
  %137 = trunc i64 %136 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %18, i32 %137)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @FilterImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %12, ptr nonnull %10, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9, ptr nonnull %11, ptr nonnull %14, ptr nonnull %15, ptr nonnull %6, ptr nonnull %13)
  %138 = load ptr, ptr %5, align 8, !tbaa !6
  %139 = getelementptr inbounds %struct._Image, ptr %138, i64 0, i32 77
  %140 = load i32, ptr %139, align 8, !tbaa !37
  %141 = load ptr, ptr %11, align 8, !tbaa !6
  %142 = getelementptr inbounds %struct._Image, ptr %141, i64 0, i32 77
  store i32 %140, ptr %142, align 8, !tbaa !37
  %143 = load ptr, ptr %9, align 8, !tbaa !6
  %144 = call ptr @DestroyCacheView(ptr noundef %143) #17
  store ptr %144, ptr %9, align 8, !tbaa !6
  %145 = load ptr, ptr %10, align 8, !tbaa !6
  %146 = call ptr @DestroyCacheView(ptr noundef %145) #17
  store ptr %146, ptr %10, align 8, !tbaa !6
  %147 = load ptr, ptr %15, align 8, !tbaa !6
  %148 = call ptr @RelinquishAlignedMemory(ptr noundef %147) #17
  store ptr %148, ptr %15, align 8, !tbaa !6
  %149 = load i32, ptr %12, align 4, !tbaa !10
  %150 = icmp eq i32 %149, 0
  %151 = load ptr, ptr %11, align 8, !tbaa !6
  br i1 %150, label %152, label %154

152:                                              ; preds = %135
  %153 = call ptr @DestroyImage(ptr noundef %151) #17
  br label %154

154:                                              ; preds = %135, %152, %82, %79, %103, %88, %30
  %155 = phi ptr [ null, %30 ], [ null, %88 ], [ null, %103 ], [ %80, %79 ], [ null, %82 ], [ %153, %152 ], [ %151, %135 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret ptr %155
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @FilterImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #7 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !28
  %21 = add nsw i64 %20, -1
  %22 = icmp sgt i64 %20, 0
  br i1 %22, label %23, label %483

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 0, ptr %14, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 %21, ptr %15, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 1, ptr %16, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  store i32 0, ptr %17, align 4, !tbaa !10
  %24 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %24, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %25 = load i64, ptr %15, align 8
  %26 = call i64 @llvm.smin.i64(i64 %25, i64 %21)
  store i64 %26, ptr %15, align 8, !tbaa !29
  %27 = load i64, ptr %14, align 8, !tbaa !29
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %482, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  br label %34

34:                                               ; preds = %29, %474
  %35 = phi i64 [ %26, %29 ], [ %480, %474 ]
  %36 = phi i64 [ %27, %29 ], [ %478, %474 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %474, label %38

38:                                               ; preds = %34, %468
  %39 = phi i64 [ %469, %468 ], [ %36, %34 ]
  %40 = load i32, ptr %3, align 4, !tbaa !10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %468, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = load ptr, ptr %5, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.KernelInfo, ptr %44, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !39
  %47 = add i64 %46, -1
  %48 = sdiv i64 %47, -2
  %49 = getelementptr inbounds %struct.KernelInfo, ptr %44, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !41
  %51 = add i64 %50, -1
  %52 = lshr i64 %51, 1
  %53 = sub nsw i64 %39, %52
  %54 = load ptr, ptr %2, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !27
  %57 = add i64 %56, %46
  %58 = load ptr, ptr %6, align 8, !tbaa !6
  %59 = call ptr @GetCacheViewVirtualPixels(ptr noundef %43, i64 noundef %48, i64 noundef %53, i64 noundef %57, i64 noundef %50, ptr noundef %58) #19
  %60 = load ptr, ptr %7, align 8, !tbaa !6
  %61 = load ptr, ptr %8, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 7
  %63 = load i64, ptr %62, align 8, !tbaa !27
  %64 = load ptr, ptr %6, align 8, !tbaa !6
  %65 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %60, i64 noundef 0, i64 noundef %39, i64 noundef %63, i64 noundef 1, ptr noundef %64) #19
  %66 = icmp eq ptr %59, null
  %67 = icmp eq ptr %65, null
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %467, label %69

69:                                               ; preds = %42
  %70 = load ptr, ptr %4, align 8, !tbaa !6
  %71 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %70) #17
  %72 = load ptr, ptr %7, align 8, !tbaa !6
  %73 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %72) #17
  %74 = load ptr, ptr %2, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !27
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %448

78:                                               ; preds = %69
  %79 = load <2 x float>, ptr %30, align 8, !tbaa !50
  %80 = fpext <2 x float> %79 to <2 x double>
  %81 = shufflevector <2 x double> %80, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %82 = load float, ptr %31, align 8, !tbaa !56
  %83 = fpext float %82 to double
  %84 = load float, ptr %32, align 4, !tbaa !57
  %85 = fpext float %84 to double
  %86 = load float, ptr %33, align 8, !tbaa !52
  %87 = fpext float %86 to double
  %88 = load ptr, ptr %10, align 8, !tbaa !6
  %89 = load i32, ptr %11, align 4, !tbaa !10
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  %92 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 6
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.KernelInfo, ptr %93, i64 0, i32 1
  %95 = getelementptr inbounds %struct.KernelInfo, ptr %93, i64 0, i32 2
  %96 = insertelement <4 x i32> poison, i32 %89, i64 0
  %97 = shufflevector <4 x i32> %96, <4 x i32> poison, <4 x i32> zeroinitializer
  %98 = and <4 x i32> %97, <i32 32, i32 4, i32 2, i32 1>
  %99 = icmp eq <4 x i32> %98, zeroinitializer
  %100 = getelementptr inbounds %struct._Image, ptr %74, i64 0, i32 1
  %101 = icmp eq ptr %73, null
  %102 = extractelement <4 x i1> %99, i64 0
  %103 = extractelement <4 x i1> %99, i64 1
  %104 = extractelement <4 x i1> %99, i64 2
  %105 = extractelement <4 x i1> %99, i64 3
  br label %106

106:                                              ; preds = %78, %442
  %107 = phi i64 [ 0, %78 ], [ %446, %442 ]
  %108 = phi ptr [ %65, %78 ], [ %445, %442 ]
  %109 = phi ptr [ %71, %78 ], [ %443, %442 ]
  %110 = phi ptr [ %59, %78 ], [ %444, %442 ]
  br i1 %91, label %111, label %113

111:                                              ; preds = %106
  %112 = load i64, ptr %94, align 8, !tbaa !39
  br label %124

113:                                              ; preds = %106
  %114 = load i32, ptr %92, align 8, !tbaa !58
  %115 = icmp eq i32 %114, 0
  %116 = load i64, ptr %94, align 8, !tbaa !39
  br i1 %115, label %124, label %117

117:                                              ; preds = %113
  %118 = icmp sgt i64 %116, 0
  br i1 %118, label %119, label %319

119:                                              ; preds = %117
  %120 = load i64, ptr %95, align 8, !tbaa !41
  %121 = icmp sgt i64 %120, 0
  %122 = add nuw i64 %116, %76
  %123 = shl i64 %120, 2
  br label %272

124:                                              ; preds = %111, %113
  %125 = phi i64 [ %112, %111 ], [ %116, %113 ]
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %170

127:                                              ; preds = %124
  %128 = load i64, ptr %95, align 8, !tbaa !41
  %129 = icmp sgt i64 %128, 0
  %130 = add nuw i64 %125, %76
  %131 = shl i64 %128, 2
  br label %132

132:                                              ; preds = %127, %163
  %133 = phi i64 [ 0, %127 ], [ %168, %163 ]
  %134 = phi ptr [ %110, %127 ], [ %167, %163 ]
  %135 = phi ptr [ %88, %127 ], [ %165, %163 ]
  %136 = phi double [ %83, %127 ], [ %164, %163 ]
  %137 = phi <2 x double> [ %81, %127 ], [ %166, %163 ]
  br i1 %129, label %138, label %163

138:                                              ; preds = %132, %138
  %139 = phi i64 [ %159, %138 ], [ 0, %132 ]
  %140 = phi ptr [ %158, %138 ], [ %135, %132 ]
  %141 = phi double [ %157, %138 ], [ %136, %132 ]
  %142 = phi <2 x double> [ %152, %138 ], [ %137, %132 ]
  %143 = load float, ptr %140, align 4, !tbaa !50
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 %139
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 %139, i32 1
  %146 = load <2 x i16>, ptr %145, align 2, !tbaa !64
  %147 = uitofp <2 x i16> %146 to <2 x float>
  %148 = insertelement <2 x float> poison, float %143, i64 0
  %149 = shufflevector <2 x float> %148, <2 x float> poison, <2 x i32> zeroinitializer
  %150 = fmul <2 x float> %149, %147
  %151 = fpext <2 x float> %150 to <2 x double>
  %152 = fadd <2 x double> %142, %151
  %153 = load i16, ptr %144, align 2, !tbaa !62
  %154 = uitofp i16 %153 to float
  %155 = fmul float %143, %154
  %156 = fpext float %155 to double
  %157 = fadd double %141, %156
  %158 = getelementptr inbounds float, ptr %140, i64 1
  %159 = add nuw nsw i64 %139, 1
  %160 = icmp eq i64 %159, %128
  br i1 %160, label %161, label %138, !llvm.loop !100

161:                                              ; preds = %138
  %162 = getelementptr i8, ptr %135, i64 %131
  br label %163

163:                                              ; preds = %161, %132
  %164 = phi double [ %136, %132 ], [ %157, %161 ]
  %165 = phi ptr [ %135, %132 ], [ %162, %161 ]
  %166 = phi <2 x double> [ %137, %132 ], [ %152, %161 ]
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 %130
  %168 = add nuw nsw i64 %133, 1
  %169 = icmp eq i64 %168, %125
  br i1 %169, label %170, label %132, !llvm.loop !101

170:                                              ; preds = %163, %124
  %171 = phi double [ %83, %124 ], [ %164, %163 ]
  %172 = phi <2 x double> [ %81, %124 ], [ %166, %163 ]
  br i1 %105, label %178, label %173

173:                                              ; preds = %170
  %174 = extractelement <2 x double> %172, i64 1
  %175 = fptrunc double %174 to float
  %176 = call fastcc zeroext i16 @ClampToQuantum(float noundef %175) #16
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  store i16 %176, ptr %177, align 2, !tbaa !60
  br label %178

178:                                              ; preds = %173, %170
  br i1 %104, label %184, label %179

179:                                              ; preds = %178
  %180 = extractelement <2 x double> %172, i64 0
  %181 = fptrunc double %180 to float
  %182 = call fastcc zeroext i16 @ClampToQuantum(float noundef %181) #16
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  store i16 %182, ptr %183, align 2, !tbaa !61
  br label %184

184:                                              ; preds = %179, %178
  br i1 %103, label %188, label %185

185:                                              ; preds = %184
  %186 = fptrunc double %171 to float
  %187 = call fastcc zeroext i16 @ClampToQuantum(float noundef %186) #16
  store i16 %187, ptr %108, align 2, !tbaa !62
  br label %188

188:                                              ; preds = %185, %184
  br i1 %91, label %227, label %189

189:                                              ; preds = %188
  br i1 %126, label %190, label %222

190:                                              ; preds = %189
  %191 = load i64, ptr %95, align 8, !tbaa !41
  %192 = icmp sgt i64 %191, 0
  %193 = add nuw i64 %125, %76
  %194 = shl i64 %191, 2
  br label %195

195:                                              ; preds = %190, %216
  %196 = phi i64 [ 0, %190 ], [ %220, %216 ]
  %197 = phi ptr [ %110, %190 ], [ %219, %216 ]
  %198 = phi ptr [ %88, %190 ], [ %218, %216 ]
  %199 = phi double [ %85, %190 ], [ %217, %216 ]
  br i1 %192, label %200, label %216

200:                                              ; preds = %195, %200
  %201 = phi i64 [ %212, %200 ], [ 0, %195 ]
  %202 = phi ptr [ %211, %200 ], [ %198, %195 ]
  %203 = phi double [ %210, %200 ], [ %199, %195 ]
  %204 = load float, ptr %202, align 4, !tbaa !50
  %205 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 %201, i32 3
  %206 = load i16, ptr %205, align 2, !tbaa !59
  %207 = uitofp i16 %206 to float
  %208 = fmul float %204, %207
  %209 = fpext float %208 to double
  %210 = fadd double %203, %209
  %211 = getelementptr inbounds float, ptr %202, i64 1
  %212 = add nuw nsw i64 %201, 1
  %213 = icmp eq i64 %212, %191
  br i1 %213, label %214, label %200, !llvm.loop !102

214:                                              ; preds = %200
  %215 = getelementptr i8, ptr %198, i64 %194
  br label %216

216:                                              ; preds = %214, %195
  %217 = phi double [ %199, %195 ], [ %210, %214 ]
  %218 = phi ptr [ %198, %195 ], [ %215, %214 ]
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 %193
  %220 = add nuw nsw i64 %196, 1
  %221 = icmp eq i64 %220, %125
  br i1 %221, label %222, label %195, !llvm.loop !103

222:                                              ; preds = %216, %189
  %223 = phi double [ %85, %189 ], [ %217, %216 ]
  %224 = fptrunc double %223 to float
  %225 = call fastcc zeroext i16 @ClampToQuantum(float noundef %224) #16
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  store i16 %225, ptr %226, align 2, !tbaa !59
  br label %227

227:                                              ; preds = %222, %188
  br i1 %102, label %442, label %228

228:                                              ; preds = %227
  %229 = load i32, ptr %100, align 4, !tbaa !63
  %230 = icmp eq i32 %229, 12
  br i1 %230, label %231, label %442

231:                                              ; preds = %228
  br i1 %126, label %232, label %270

232:                                              ; preds = %231
  %233 = load i64, ptr %95, align 8, !tbaa !41
  %234 = icmp sgt i64 %233, 0
  %235 = add nuw i64 %125, %76
  %236 = shl i64 %233, 2
  br label %237

237:                                              ; preds = %232, %264
  %238 = phi ptr [ %109, %232 ], [ %267, %264 ]
  %239 = phi i64 [ 0, %232 ], [ %268, %264 ]
  %240 = phi ptr [ %88, %232 ], [ %266, %264 ]
  %241 = phi double [ %87, %232 ], [ %265, %264 ]
  br i1 %234, label %242, label %264

242:                                              ; preds = %237
  %243 = icmp eq ptr %238, null
  br label %244

244:                                              ; preds = %242, %253
  %245 = phi i64 [ 0, %242 ], [ %260, %253 ]
  %246 = phi ptr [ %240, %242 ], [ %259, %253 ]
  %247 = phi double [ %241, %242 ], [ %258, %253 ]
  %248 = load float, ptr %246, align 4, !tbaa !50
  br i1 %243, label %253, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds i16, ptr %238, i64 %245
  %251 = load i16, ptr %250, align 2, !tbaa !64
  %252 = zext i16 %251 to i32
  br label %253

253:                                              ; preds = %244, %249
  %254 = phi i32 [ %252, %249 ], [ 0, %244 ]
  %255 = sitofp i32 %254 to float
  %256 = fmul float %248, %255
  %257 = fpext float %256 to double
  %258 = fadd double %247, %257
  %259 = getelementptr inbounds float, ptr %246, i64 1
  %260 = add nuw nsw i64 %245, 1
  %261 = icmp eq i64 %260, %233
  br i1 %261, label %262, label %244, !llvm.loop !104

262:                                              ; preds = %253
  %263 = getelementptr i8, ptr %240, i64 %236
  br label %264

264:                                              ; preds = %262, %237
  %265 = phi double [ %241, %237 ], [ %258, %262 ]
  %266 = phi ptr [ %240, %237 ], [ %263, %262 ]
  %267 = getelementptr inbounds i16, ptr %238, i64 %235
  %268 = add nuw nsw i64 %239, 1
  %269 = icmp eq i64 %268, %125
  br i1 %269, label %270, label %237, !llvm.loop !105

270:                                              ; preds = %264, %231
  %271 = phi double [ %87, %231 ], [ %265, %264 ]
  br i1 %101, label %442, label %437

272:                                              ; preds = %119, %311
  %273 = phi double [ 0.000000e+00, %119 ], [ %314, %311 ]
  %274 = phi i64 [ 0, %119 ], [ %317, %311 ]
  %275 = phi ptr [ %110, %119 ], [ %316, %311 ]
  %276 = phi ptr [ %88, %119 ], [ %313, %311 ]
  %277 = phi double [ %83, %119 ], [ %312, %311 ]
  %278 = phi <2 x double> [ %81, %119 ], [ %315, %311 ]
  br i1 %121, label %279, label %311

279:                                              ; preds = %272, %279
  %280 = phi double [ %305, %279 ], [ %273, %272 ]
  %281 = phi i64 [ %307, %279 ], [ 0, %272 ]
  %282 = phi ptr [ %306, %279 ], [ %276, %272 ]
  %283 = phi double [ %304, %279 ], [ %277, %272 ]
  %284 = phi <2 x double> [ %301, %279 ], [ %278, %272 ]
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 %281
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 %281, i32 3
  %287 = load i16, ptr %286, align 2, !tbaa !59
  %288 = xor i16 %287, -1
  %289 = uitofp i16 %288 to double
  %290 = fmul double %289, 0x3EF0001000100010
  %291 = fptrunc double %290 to float
  %292 = fpext float %291 to double
  %293 = load float, ptr %282, align 4, !tbaa !50
  %294 = fpext float %293 to double
  %295 = fmul double %294, %292
  %296 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 %281, i32 1
  %297 = load <2 x i16>, ptr %296, align 2, !tbaa !64
  %298 = uitofp <2 x i16> %297 to <2 x double>
  %299 = insertelement <2 x double> poison, double %295, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %300, <2 x double> %298, <2 x double> %284)
  %302 = load i16, ptr %285, align 2, !tbaa !62
  %303 = uitofp i16 %302 to double
  %304 = call double @llvm.fmuladd.f64(double %295, double %303, double %283)
  %305 = call double @llvm.fmuladd.f64(double %294, double %292, double %280)
  %306 = getelementptr inbounds float, ptr %282, i64 1
  %307 = add nuw nsw i64 %281, 1
  %308 = icmp eq i64 %307, %120
  br i1 %308, label %309, label %279, !llvm.loop !106

309:                                              ; preds = %279
  %310 = getelementptr i8, ptr %276, i64 %123
  br label %311

311:                                              ; preds = %309, %272
  %312 = phi double [ %277, %272 ], [ %304, %309 ]
  %313 = phi ptr [ %276, %272 ], [ %310, %309 ]
  %314 = phi double [ %273, %272 ], [ %305, %309 ]
  %315 = phi <2 x double> [ %278, %272 ], [ %301, %309 ]
  %316 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 %122
  %317 = add nuw nsw i64 %274, 1
  %318 = icmp eq i64 %317, %116
  br i1 %318, label %319, label %272, !llvm.loop !107

319:                                              ; preds = %311, %117
  %320 = phi double [ %83, %117 ], [ %312, %311 ]
  %321 = phi double [ 0.000000e+00, %117 ], [ %314, %311 ]
  %322 = phi <2 x double> [ %81, %117 ], [ %315, %311 ]
  %323 = fcmp olt double %321, 0.000000e+00
  %324 = select i1 %323, double 0.000000e+00, double %321
  %325 = call fastcc double @PerceptibleReciprocal(double noundef %324) #16
  br i1 %105, label %332, label %326

326:                                              ; preds = %319
  %327 = extractelement <2 x double> %322, i64 1
  %328 = fmul double %327, %325
  %329 = fptrunc double %328 to float
  %330 = call fastcc zeroext i16 @ClampToQuantum(float noundef %329) #16
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  store i16 %330, ptr %331, align 2, !tbaa !60
  br label %332

332:                                              ; preds = %326, %319
  br i1 %104, label %339, label %333

333:                                              ; preds = %332
  %334 = extractelement <2 x double> %322, i64 0
  %335 = fmul double %334, %325
  %336 = fptrunc double %335 to float
  %337 = call fastcc zeroext i16 @ClampToQuantum(float noundef %336) #16
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  store i16 %337, ptr %338, align 2, !tbaa !61
  br label %339

339:                                              ; preds = %333, %332
  br i1 %103, label %344, label %340

340:                                              ; preds = %339
  %341 = fmul double %320, %325
  %342 = fptrunc double %341 to float
  %343 = call fastcc zeroext i16 @ClampToQuantum(float noundef %342) #16
  store i16 %343, ptr %108, align 2, !tbaa !62
  br label %344

344:                                              ; preds = %339, %340
  br i1 %118, label %345, label %377

345:                                              ; preds = %344
  %346 = load i64, ptr %95, align 8, !tbaa !41
  %347 = icmp sgt i64 %346, 0
  %348 = add nuw i64 %116, %76
  %349 = shl i64 %346, 2
  br label %350

350:                                              ; preds = %345, %371
  %351 = phi i64 [ 0, %345 ], [ %375, %371 ]
  %352 = phi ptr [ %110, %345 ], [ %374, %371 ]
  %353 = phi ptr [ %88, %345 ], [ %373, %371 ]
  %354 = phi double [ %85, %345 ], [ %372, %371 ]
  br i1 %347, label %355, label %371

355:                                              ; preds = %350, %355
  %356 = phi i64 [ %367, %355 ], [ 0, %350 ]
  %357 = phi ptr [ %366, %355 ], [ %353, %350 ]
  %358 = phi double [ %365, %355 ], [ %354, %350 ]
  %359 = load float, ptr %357, align 4, !tbaa !50
  %360 = getelementptr inbounds %struct._PixelPacket, ptr %352, i64 %356, i32 3
  %361 = load i16, ptr %360, align 2, !tbaa !59
  %362 = uitofp i16 %361 to float
  %363 = fmul float %359, %362
  %364 = fpext float %363 to double
  %365 = fadd double %358, %364
  %366 = getelementptr inbounds float, ptr %357, i64 1
  %367 = add nuw nsw i64 %356, 1
  %368 = icmp eq i64 %367, %346
  br i1 %368, label %369, label %355, !llvm.loop !108

369:                                              ; preds = %355
  %370 = getelementptr i8, ptr %353, i64 %349
  br label %371

371:                                              ; preds = %369, %350
  %372 = phi double [ %354, %350 ], [ %365, %369 ]
  %373 = phi ptr [ %353, %350 ], [ %370, %369 ]
  %374 = getelementptr inbounds %struct._PixelPacket, ptr %352, i64 %348
  %375 = add nuw nsw i64 %351, 1
  %376 = icmp eq i64 %375, %116
  br i1 %376, label %377, label %350, !llvm.loop !109

377:                                              ; preds = %371, %344
  %378 = phi double [ %85, %344 ], [ %372, %371 ]
  %379 = fptrunc double %378 to float
  %380 = call fastcc zeroext i16 @ClampToQuantum(float noundef %379) #16
  %381 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  store i16 %380, ptr %381, align 2, !tbaa !59
  br i1 %102, label %442, label %382

382:                                              ; preds = %377
  %383 = load i32, ptr %100, align 4, !tbaa !63
  %384 = icmp eq i32 %383, 12
  br i1 %384, label %385, label %442

385:                                              ; preds = %382
  br i1 %118, label %386, label %433

386:                                              ; preds = %385
  %387 = load i64, ptr %95, align 8, !tbaa !41
  %388 = icmp sgt i64 %387, 0
  %389 = add nuw i64 %116, %76
  %390 = shl i64 %387, 2
  br label %391

391:                                              ; preds = %386, %426
  %392 = phi ptr [ %109, %386 ], [ %430, %426 ]
  %393 = phi i64 [ 0, %386 ], [ %431, %426 ]
  %394 = phi ptr [ %110, %386 ], [ %429, %426 ]
  %395 = phi ptr [ %88, %386 ], [ %428, %426 ]
  %396 = phi double [ %87, %386 ], [ %427, %426 ]
  br i1 %388, label %397, label %426

397:                                              ; preds = %391
  %398 = icmp eq ptr %392, null
  br label %399

399:                                              ; preds = %397, %417
  %400 = phi i64 [ 0, %397 ], [ %422, %417 ]
  %401 = phi ptr [ %395, %397 ], [ %421, %417 ]
  %402 = phi double [ %396, %397 ], [ %420, %417 ]
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 %400, i32 3
  %404 = load i16, ptr %403, align 2, !tbaa !59
  %405 = xor i16 %404, -1
  %406 = uitofp i16 %405 to double
  %407 = fmul double %406, 0x3EF0001000100010
  %408 = fptrunc double %407 to float
  %409 = fpext float %408 to double
  %410 = load float, ptr %401, align 4, !tbaa !50
  %411 = fpext float %410 to double
  %412 = fmul double %411, %409
  br i1 %398, label %417, label %413

413:                                              ; preds = %399
  %414 = getelementptr inbounds i16, ptr %392, i64 %400
  %415 = load i16, ptr %414, align 2, !tbaa !64
  %416 = zext i16 %415 to i32
  br label %417

417:                                              ; preds = %399, %413
  %418 = phi i32 [ %416, %413 ], [ 0, %399 ]
  %419 = sitofp i32 %418 to double
  %420 = call double @llvm.fmuladd.f64(double %412, double %419, double %402)
  %421 = getelementptr inbounds float, ptr %401, i64 1
  %422 = add nuw nsw i64 %400, 1
  %423 = icmp eq i64 %422, %387
  br i1 %423, label %424, label %399, !llvm.loop !110

424:                                              ; preds = %417
  %425 = getelementptr i8, ptr %395, i64 %390
  br label %426

426:                                              ; preds = %424, %391
  %427 = phi double [ %396, %391 ], [ %420, %424 ]
  %428 = phi ptr [ %395, %391 ], [ %425, %424 ]
  %429 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 %389
  %430 = getelementptr inbounds i16, ptr %392, i64 %389
  %431 = add nuw nsw i64 %393, 1
  %432 = icmp eq i64 %431, %116
  br i1 %432, label %433, label %391, !llvm.loop !111

433:                                              ; preds = %426, %385
  %434 = phi double [ %87, %385 ], [ %427, %426 ]
  br i1 %101, label %442, label %435

435:                                              ; preds = %433
  %436 = fmul double %325, %434
  br label %437

437:                                              ; preds = %270, %435
  %438 = phi double [ %436, %435 ], [ %271, %270 ]
  %439 = getelementptr inbounds i16, ptr %73, i64 %107
  %440 = fptrunc double %438 to float
  %441 = call fastcc zeroext i16 @ClampToQuantum(float noundef %440) #16
  store i16 %441, ptr %439, align 2, !tbaa !64
  br label %442

442:                                              ; preds = %437, %377, %382, %433, %270, %227, %228
  %443 = getelementptr inbounds i16, ptr %109, i64 1
  %444 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 1
  %445 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %446 = add nuw nsw i64 %107, 1
  %447 = icmp eq i64 %446, %76
  br i1 %447, label %448, label %106, !llvm.loop !112

448:                                              ; preds = %442, %69
  %449 = load ptr, ptr %7, align 8, !tbaa !6
  %450 = load ptr, ptr %6, align 8, !tbaa !6
  %451 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %449, ptr noundef %450) #19
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %448
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %454

454:                                              ; preds = %453, %448
  %455 = load ptr, ptr %2, align 8, !tbaa !6
  %456 = getelementptr inbounds %struct._Image, ptr %455, i64 0, i32 47
  %457 = load ptr, ptr %456, align 8, !tbaa !68
  %458 = icmp eq ptr %457, null
  br i1 %458, label %468, label %459

459:                                              ; preds = %454
  call void @__kmpc_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_FilterImageChannel.var)
  %460 = load ptr, ptr %2, align 8, !tbaa !6
  %461 = load i64, ptr %12, align 8, !tbaa !36
  %462 = add nsw i64 %461, 1
  store i64 %462, ptr %12, align 8, !tbaa !36
  %463 = getelementptr inbounds %struct._Image, ptr %460, i64 0, i32 8
  %464 = load i64, ptr %463, align 8, !tbaa !28
  %465 = call fastcc i32 @SetImageProgress(ptr noundef %460, ptr noundef nonnull @.str.16, i64 noundef %461, i64 noundef %464) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_FilterImageChannel.var)
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %459, %42
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %468

468:                                              ; preds = %467, %454, %459, %38
  %469 = add nsw i64 %39, 1
  %470 = load i64, ptr %15, align 8, !tbaa !29
  %471 = icmp slt i64 %39, %470
  br i1 %471, label %38, label %472

472:                                              ; preds = %468
  %473 = load i64, ptr %14, align 8, !tbaa !29
  br label %474

474:                                              ; preds = %472, %34
  %475 = phi i64 [ %36, %34 ], [ %473, %472 ]
  %476 = phi i64 [ %35, %34 ], [ %470, %472 ]
  %477 = load i64, ptr %16, align 8, !tbaa !29
  %478 = add nsw i64 %477, %475
  store i64 %478, ptr %14, align 8, !tbaa !29
  %479 = add nsw i64 %477, %476
  %480 = call i64 @llvm.smin.i64(i64 %479, i64 %21)
  store i64 %480, ptr %15, align 8, !tbaa !29
  %481 = icmp sgt i64 %478, %480
  br i1 %481, label %482, label %34

482:                                              ; preds = %474, %23
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  br label %483

483:                                              ; preds = %482, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GaussianBlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @GaussianBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GaussianBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1878, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  br label %13

13:                                               ; preds = %10, %5
  %14 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.17, double noundef %2, double noundef %3) #17
  %15 = call ptr @AcquireKernelInfo(ptr noundef nonnull %6) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1885, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %18) #17
  br label %28

20:                                               ; preds = %13
  %21 = call ptr @AccelerateConvolveImageChannel(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %15, ptr noundef %4) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call ptr @MorphologyApply(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %15, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #17
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi ptr [ %24, %23 ], [ %21, %20 ]
  %27 = call ptr @DestroyKernelInfo(ptr noundef nonnull %15) #17
  br label %28

28:                                               ; preds = %25, %17
  %29 = phi ptr [ null, %17 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MotionBlurImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @MotionBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MotionBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !6
  store i32 %1, ptr %8, align 4, !tbaa !10
  store ptr %5, ptr %9, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2022, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #17
  br label %26

26:                                               ; preds = %23, %6
  %27 = tail call i64 @GetOptimalKernelWidth1D(double noundef %2, double noundef %3) #17
  store i64 %27, ptr %18, align 8, !tbaa !29
  %28 = tail call fastcc ptr @GetMotionBlurKernel(i64 noundef %27, double noundef %3) #16
  store ptr %28, ptr %12, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2027, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %31) #17
  br label %120

33:                                               ; preds = %26
  %34 = tail call ptr @AcquireQuantumMemory(i64 noundef %27, i64 noundef 16) #18
  store ptr %34, ptr %17, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %28) #17
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2032, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %38) #17
  br label %120

40:                                               ; preds = %33
  %41 = uitofp i64 %27 to double
  %42 = tail call fastcc double @DegreesToRadians(double noundef %4) #16
  %43 = tail call double @sin(double noundef %42) #17
  %44 = fmul double %43, %41
  %45 = tail call double @cos(double noundef %42) #17
  %46 = fmul double %45, %41
  %47 = icmp sgt i64 %27, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %40, %48
  %49 = phi i64 [ %65, %48 ], [ 0, %40 ]
  %50 = sitofp i64 %49 to double
  %51 = fmul double %46, %50
  %52 = tail call double @hypot(double noundef %44, double noundef %46) #17
  %53 = fdiv double %51, %52
  %54 = fadd double %53, -5.000000e-01
  %55 = tail call double @llvm.ceil.f64(double %54)
  %56 = fptosi double %55 to i64
  %57 = getelementptr inbounds %struct._OffsetInfo, ptr %34, i64 %49
  store i64 %56, ptr %57, align 8, !tbaa !113
  %58 = fmul double %44, %50
  %59 = tail call double @hypot(double noundef %44, double noundef %46) #17
  %60 = fdiv double %58, %59
  %61 = fadd double %60, -5.000000e-01
  %62 = tail call double @llvm.ceil.f64(double %61)
  %63 = fptosi double %62 to i64
  %64 = getelementptr inbounds %struct._OffsetInfo, ptr %34, i64 %49, i32 1
  store i64 %63, ptr %64, align 8, !tbaa !115
  %65 = add nuw nsw i64 %49, 1
  %66 = icmp slt i64 %65, %27
  br i1 %66, label %48, label %67, !llvm.loop !116

67:                                               ; preds = %48, %40
  %68 = tail call ptr @AccelerateMotionBlurImage(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %28, i64 noundef %27, ptr noundef nonnull %34, ptr noundef %5) #17
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %120

70:                                               ; preds = %67
  %71 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #17
  store ptr %71, ptr %13, align 8, !tbaa !6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %28) #17
  %75 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %34) #17
  br label %120

76:                                               ; preds = %70
  %77 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %71, i32 noundef 1) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %28) #17
  %81 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %34) #17
  %82 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %82) #17
  %83 = tail call ptr @DestroyImage(ptr noundef nonnull %71) #17
  br label %120

84:                                               ; preds = %76
  store i32 1, ptr %14, align 4, !tbaa !10
  store i64 0, ptr %15, align 8, !tbaa !36
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %16) #17
  %85 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %5) #17
  store ptr %85, ptr %11, align 8, !tbaa !6
  %86 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %71, ptr noundef %5) #17
  store ptr %86, ptr %10, align 8, !tbaa !6
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %88 = load i64, ptr %87, align 8, !tbaa !28
  %89 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %90 = shl i64 %89, 5
  %91 = icmp ugt i64 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #17
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %71) #17
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %104

100:                                              ; preds = %95, %92, %84
  %101 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %102 = icmp ult i64 %101, 2
  %103 = select i1 %102, i64 1, i64 2
  br label %104

104:                                              ; preds = %100, %98
  %105 = phi i64 [ %99, %98 ], [ %103, %100 ]
  %106 = trunc i64 %105 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %106)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @MotionBlurImageChannel.omp_outlined, ptr nonnull %7, ptr nonnull %14, ptr nonnull %10, ptr nonnull %13, ptr nonnull %9, ptr nonnull %12, ptr nonnull %16, ptr nonnull %8, ptr nonnull %18, ptr nonnull %11, ptr nonnull %17, ptr nonnull %15)
  %107 = load ptr, ptr %10, align 8, !tbaa !6
  %108 = call ptr @DestroyCacheView(ptr noundef %107) #17
  store ptr %108, ptr %10, align 8, !tbaa !6
  %109 = load ptr, ptr %11, align 8, !tbaa !6
  %110 = call ptr @DestroyCacheView(ptr noundef %109) #17
  store ptr %110, ptr %11, align 8, !tbaa !6
  %111 = load ptr, ptr %12, align 8, !tbaa !6
  %112 = call ptr @RelinquishAlignedMemory(ptr noundef %111) #17
  store ptr %112, ptr %12, align 8, !tbaa !6
  %113 = load ptr, ptr %17, align 8, !tbaa !6
  %114 = call ptr @RelinquishMagickMemory(ptr noundef %113) #17
  store ptr %114, ptr %17, align 8, !tbaa !6
  %115 = load i32, ptr %14, align 4, !tbaa !10
  %116 = icmp eq i32 %115, 0
  %117 = load ptr, ptr %13, align 8, !tbaa !6
  br i1 %116, label %118, label %120

118:                                              ; preds = %104
  %119 = call ptr @DestroyImage(ptr noundef %117) #17
  br label %120

120:                                              ; preds = %104, %118, %67, %79, %73, %36, %30
  %121 = phi ptr [ null, %30 ], [ null, %36 ], [ null, %73 ], [ null, %79 ], [ %68, %67 ], [ %119, %118 ], [ %117, %104 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  ret ptr %121
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GetMotionBlurKernel(i64 noundef %0, double noundef %1) unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1951, ptr noundef nonnull @.str.19) #17
  %4 = tail call ptr @AcquireAlignedMemory(i64 noundef %0, i64 noundef 8) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i64 %0, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %6
  %9 = tail call double @llvm.fabs.f64(double %1)
  %10 = fcmp olt double %9, 1.000000e-15
  %11 = select i1 %10, double 1.000000e-15, double %1
  %12 = fmul double %11, 2.000000e+00
  %13 = fmul double %11, %12
  %14 = fmul double %11, 0x40040D931FF62705
  br label %16

15:                                               ; preds = %16
  br i1 %7, label %29, label %36

16:                                               ; preds = %8, %16
  %17 = phi i64 [ 0, %8 ], [ %27, %16 ]
  %18 = phi double [ 0.000000e+00, %8 ], [ %26, %16 ]
  %19 = sitofp i64 %17 to double
  %20 = fneg double %19
  %21 = fmul double %20, %19
  %22 = fdiv double %21, %13
  %23 = tail call double @exp(double noundef %22) #17
  %24 = fdiv double %23, %14
  %25 = getelementptr inbounds double, ptr %4, i64 %17
  store double %24, ptr %25, align 8, !tbaa !30
  %26 = fadd double %18, %24
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, %0
  br i1 %28, label %15, label %16, !llvm.loop !117

29:                                               ; preds = %15, %29
  %30 = phi i64 [ %34, %29 ], [ 0, %15 ]
  %31 = getelementptr inbounds double, ptr %4, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !30
  %33 = fdiv double %32, %26
  store double %33, ptr %31, align 8, !tbaa !30
  %34 = add nuw nsw i64 %30, 1
  %35 = icmp eq i64 %34, %0
  br i1 %35, label %36, label %29, !llvm.loop !118

36:                                               ; preds = %29, %6, %15, %2
  ret ptr %4
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #10 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @AccelerateMotionBlurImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @MotionBlurImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #7 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._PixelPacket, align 8
  %20 = load ptr, ptr %2, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !28
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %337

25:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 0, ptr %15, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 %23, ptr %16, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  store i64 1, ptr %17, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #8
  store i32 0, ptr %18, align 4, !tbaa !10
  %26 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %27 = load i64, ptr %16, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %16, align 8, !tbaa !29
  %29 = load i64, ptr %15, align 8, !tbaa !29
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %336, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %8, i64 32
  %33 = getelementptr inbounds i8, ptr %8, i64 48
  br label %34

34:                                               ; preds = %31, %328
  %35 = phi i64 [ %28, %31 ], [ %334, %328 ]
  %36 = phi i64 [ %29, %31 ], [ %332, %328 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %328, label %38

38:                                               ; preds = %34, %322
  %39 = phi i64 [ %323, %322 ], [ %36, %34 ]
  %40 = load i32, ptr %3, align 4, !tbaa !10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %322, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = load ptr, ptr %5, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !27
  %47 = load ptr, ptr %6, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %43, i64 noundef 0, i64 noundef %39, i64 noundef %46, i64 noundef 1, ptr noundef %47) #19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %321, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %4, align 8, !tbaa !6
  %52 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %51) #17
  %53 = load ptr, ptr %2, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !27
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %302

57:                                               ; preds = %50
  %58 = icmp eq ptr %52, null
  %59 = load i32, ptr %9, align 4, !tbaa !10
  br label %60

60:                                               ; preds = %57, %293
  %61 = phi i32 [ %59, %57 ], [ %295, %293 ]
  %62 = phi i32 [ %59, %57 ], [ %296, %293 ]
  %63 = phi ptr [ %53, %57 ], [ %294, %293 ]
  %64 = phi ptr [ %48, %57 ], [ %297, %293 ]
  %65 = phi i64 [ 0, %57 ], [ %298, %293 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8
  %66 = load ptr, ptr %7, align 8, !tbaa !6
  %67 = load <4 x float>, ptr %32, align 8
  %68 = load float, ptr %33, align 8, !tbaa.struct !119
  %69 = and i32 %62, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i64, ptr %10, align 8, !tbaa !29
  br label %80

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !58
  %76 = icmp eq i32 %75, 0
  %77 = load i64, ptr %10, align 8, !tbaa !29
  br i1 %76, label %80, label %78

78:                                               ; preds = %73
  %79 = icmp sgt i64 %77, 0
  br i1 %79, label %167, label %229

80:                                               ; preds = %71, %73
  %81 = phi i64 [ %72, %71 ], [ %77, %73 ]
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %128

83:                                               ; preds = %80, %120
  %84 = phi i64 [ %123, %120 ], [ 0, %80 ]
  %85 = phi ptr [ %122, %120 ], [ %66, %80 ]
  %86 = phi float [ %121, %120 ], [ %68, %80 ]
  %87 = phi <4 x float> [ %106, %120 ], [ %67, %80 ]
  %88 = load ptr, ptr %11, align 8, !tbaa !6
  %89 = load ptr, ptr %12, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct._OffsetInfo, ptr %89, i64 %84
  %91 = load i64, ptr %90, align 8, !tbaa !113
  %92 = add nsw i64 %91, %65
  %93 = getelementptr inbounds %struct._OffsetInfo, ptr %89, i64 %84, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !115
  %95 = add nsw i64 %94, %39
  %96 = load ptr, ptr %6, align 8, !tbaa !6
  %97 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %88, i64 noundef %92, i64 noundef %95, ptr noundef nonnull %19, ptr noundef %96) #17
  %98 = load double, ptr %85, align 8, !tbaa !30
  %99 = fpext <4 x float> %87 to <4 x double>
  %100 = load <4 x i16>, ptr %19, align 8, !tbaa !64
  %101 = uitofp <4 x i16> %100 to <4 x double>
  %102 = shufflevector <4 x double> %101, <4 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %103 = insertelement <4 x double> poison, double %98, i64 0
  %104 = shufflevector <4 x double> %103, <4 x double> poison, <4 x i32> zeroinitializer
  %105 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %104, <4 x double> %102, <4 x double> %99)
  %106 = fptrunc <4 x double> %105 to <4 x float>
  %107 = load ptr, ptr %2, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !63
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %120

111:                                              ; preds = %83
  %112 = load ptr, ptr %11, align 8, !tbaa !6
  %113 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %112) #17
  %114 = load double, ptr %85, align 8, !tbaa !30
  %115 = load i16, ptr %113, align 2, !tbaa !64
  %116 = uitofp i16 %115 to double
  %117 = fpext float %86 to double
  %118 = call double @llvm.fmuladd.f64(double %114, double %116, double %117)
  %119 = fptrunc double %118 to float
  br label %120

120:                                              ; preds = %111, %83
  %121 = phi float [ %119, %111 ], [ %86, %83 ]
  %122 = getelementptr inbounds double, ptr %85, i64 1
  %123 = add nuw nsw i64 %84, 1
  %124 = load i64, ptr %10, align 8, !tbaa !29
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %83, label %126, !llvm.loop !120

126:                                              ; preds = %120
  %127 = load i32, ptr %9, align 4, !tbaa !10
  br label %128

128:                                              ; preds = %126, %80
  %129 = phi i32 [ %61, %80 ], [ %127, %126 ]
  %130 = phi float [ %68, %80 ], [ %121, %126 ]
  %131 = phi <4 x float> [ %67, %80 ], [ %106, %126 ]
  %132 = and i32 %129, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = extractelement <4 x float> %131, i64 0
  %136 = call fastcc zeroext i16 @ClampToQuantum(float noundef %135) #16
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  store i16 %136, ptr %137, align 2, !tbaa !60
  br label %138

138:                                              ; preds = %134, %128
  %139 = and i32 %129, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = extractelement <4 x float> %131, i64 1
  %143 = call fastcc zeroext i16 @ClampToQuantum(float noundef %142) #16
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 1
  store i16 %143, ptr %144, align 2, !tbaa !61
  br label %145

145:                                              ; preds = %141, %138
  %146 = and i32 %129, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = extractelement <4 x float> %131, i64 2
  %150 = call fastcc zeroext i16 @ClampToQuantum(float noundef %149) #16
  store i16 %150, ptr %64, align 2, !tbaa !62
  br label %151

151:                                              ; preds = %148, %145
  %152 = and i32 %129, 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = extractelement <4 x float> %131, i64 3
  %156 = call fastcc zeroext i16 @ClampToQuantum(float noundef %155) #16
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 3
  store i16 %156, ptr %157, align 2, !tbaa !59
  br label %158

158:                                              ; preds = %154, %151
  %159 = and i32 %129, 32
  %160 = icmp eq i32 %159, 0
  %161 = load ptr, ptr %2, align 8, !tbaa !6
  br i1 %160, label %293, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct._Image, ptr %161, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !63
  %165 = icmp ne i32 %164, 12
  %166 = select i1 %165, i1 true, i1 %58
  br i1 %166, label %293, label %286

167:                                              ; preds = %78, %219
  %168 = phi double [ %222, %219 ], [ 0.000000e+00, %78 ]
  %169 = phi i64 [ %224, %219 ], [ 0, %78 ]
  %170 = phi ptr [ %223, %219 ], [ %66, %78 ]
  %171 = phi float [ %221, %219 ], [ %68, %78 ]
  %172 = phi <4 x float> [ %199, %219 ], [ %67, %78 ]
  %173 = load ptr, ptr %11, align 8, !tbaa !6
  %174 = load ptr, ptr %12, align 8, !tbaa !6
  %175 = getelementptr inbounds %struct._OffsetInfo, ptr %174, i64 %169
  %176 = load i64, ptr %175, align 8, !tbaa !113
  %177 = add nsw i64 %176, %65
  %178 = getelementptr inbounds %struct._OffsetInfo, ptr %174, i64 %169, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !115
  %180 = add nsw i64 %179, %39
  %181 = load ptr, ptr %6, align 8, !tbaa !6
  %182 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %173, i64 noundef %177, i64 noundef %180, ptr noundef nonnull %19, ptr noundef %181) #17
  %183 = load double, ptr %170, align 8, !tbaa !30
  %184 = fpext <4 x float> %172 to <4 x double>
  %185 = load <4 x i16>, ptr %19, align 8, !tbaa !64
  %186 = extractelement <4 x i16> %185, i64 3
  %187 = xor i16 %186, -1
  %188 = uitofp i16 %187 to double
  %189 = fmul double %188, 0x3EF0001000100010
  %190 = fptrunc double %189 to float
  %191 = fpext float %190 to double
  %192 = fmul double %183, %191
  %193 = uitofp <4 x i16> %185 to <4 x double>
  %194 = shufflevector <4 x double> %193, <4 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %195 = insertelement <4 x double> poison, double %183, i64 0
  %196 = insertelement <4 x double> %195, double %192, i64 1
  %197 = shufflevector <4 x double> %196, <4 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %198 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %197, <4 x double> %194, <4 x double> %184)
  %199 = fptrunc <4 x double> %198 to <4 x float>
  %200 = load ptr, ptr %2, align 8, !tbaa !6
  %201 = getelementptr inbounds %struct._Image, ptr %200, i64 0, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !63
  %203 = icmp eq i32 %202, 12
  br i1 %203, label %204, label %219

204:                                              ; preds = %167
  %205 = load ptr, ptr %11, align 8, !tbaa !6
  %206 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %205) #17
  %207 = load double, ptr %170, align 8, !tbaa !30
  %208 = fmul double %207, %191
  %209 = icmp eq ptr %206, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %204
  %211 = load i16, ptr %206, align 2, !tbaa !64
  %212 = zext i16 %211 to i32
  br label %213

213:                                              ; preds = %204, %210
  %214 = phi i32 [ %212, %210 ], [ 0, %204 ]
  %215 = sitofp i32 %214 to double
  %216 = fpext float %171 to double
  %217 = call double @llvm.fmuladd.f64(double %208, double %215, double %216)
  %218 = fptrunc double %217 to float
  br label %219

219:                                              ; preds = %213, %167
  %220 = phi double [ %207, %213 ], [ %183, %167 ]
  %221 = phi float [ %218, %213 ], [ %171, %167 ]
  %222 = call double @llvm.fmuladd.f64(double %220, double %191, double %168)
  %223 = getelementptr inbounds double, ptr %170, i64 1
  %224 = add nuw nsw i64 %169, 1
  %225 = load i64, ptr %10, align 8, !tbaa !29
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %167, label %227, !llvm.loop !121

227:                                              ; preds = %219
  %228 = load i32, ptr %9, align 4, !tbaa !10
  br label %229

229:                                              ; preds = %227, %78
  %230 = phi i32 [ %61, %78 ], [ %228, %227 ]
  %231 = phi i32 [ %62, %78 ], [ %228, %227 ]
  %232 = phi float [ %68, %78 ], [ %221, %227 ]
  %233 = phi double [ 0.000000e+00, %78 ], [ %222, %227 ]
  %234 = phi <4 x float> [ %67, %78 ], [ %199, %227 ]
  %235 = fcmp olt double %233, 0.000000e+00
  %236 = select i1 %235, double 0.000000e+00, double %233
  %237 = call fastcc double @PerceptibleReciprocal(double noundef %236) #16
  %238 = and i32 %231, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %229
  %241 = extractelement <4 x float> %234, i64 0
  %242 = fpext float %241 to double
  %243 = fmul double %237, %242
  %244 = fptrunc double %243 to float
  %245 = call fastcc zeroext i16 @ClampToQuantum(float noundef %244) #16
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  store i16 %245, ptr %246, align 2, !tbaa !60
  br label %247

247:                                              ; preds = %240, %229
  %248 = and i32 %231, 2
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %247
  %251 = extractelement <4 x float> %234, i64 1
  %252 = fpext float %251 to double
  %253 = fmul double %237, %252
  %254 = fptrunc double %253 to float
  %255 = call fastcc zeroext i16 @ClampToQuantum(float noundef %254) #16
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 1
  store i16 %255, ptr %256, align 2, !tbaa !61
  br label %257

257:                                              ; preds = %250, %247
  %258 = and i32 %231, 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %257
  %261 = extractelement <4 x float> %234, i64 2
  %262 = fpext float %261 to double
  %263 = fmul double %237, %262
  %264 = fptrunc double %263 to float
  %265 = call fastcc zeroext i16 @ClampToQuantum(float noundef %264) #16
  store i16 %265, ptr %64, align 2, !tbaa !62
  br label %266

266:                                              ; preds = %260, %257
  %267 = and i32 %231, 8
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %266
  %270 = extractelement <4 x float> %234, i64 3
  %271 = call fastcc zeroext i16 @ClampToQuantum(float noundef %270) #16
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 3
  store i16 %271, ptr %272, align 2, !tbaa !59
  br label %273

273:                                              ; preds = %269, %266
  %274 = and i32 %231, 32
  %275 = icmp eq i32 %274, 0
  %276 = load ptr, ptr %2, align 8, !tbaa !6
  br i1 %275, label %293, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct._Image, ptr %276, i64 0, i32 1
  %279 = load i32, ptr %278, align 4, !tbaa !63
  %280 = icmp ne i32 %279, 12
  %281 = select i1 %280, i1 true, i1 %58
  br i1 %281, label %293, label %282

282:                                              ; preds = %277
  %283 = fpext float %232 to double
  %284 = fmul double %237, %283
  %285 = fptrunc double %284 to float
  br label %286

286:                                              ; preds = %162, %282
  %287 = phi float [ %285, %282 ], [ %130, %162 ]
  %288 = phi ptr [ %276, %282 ], [ %161, %162 ]
  %289 = phi i32 [ %230, %282 ], [ %129, %162 ]
  %290 = phi i32 [ %231, %282 ], [ %129, %162 ]
  %291 = getelementptr inbounds i16, ptr %52, i64 %65
  %292 = call fastcc zeroext i16 @ClampToQuantum(float noundef %287) #16
  store i16 %292, ptr %291, align 2, !tbaa !64
  br label %293

293:                                              ; preds = %286, %273, %277, %158, %162
  %294 = phi ptr [ %276, %273 ], [ %276, %277 ], [ %161, %158 ], [ %161, %162 ], [ %288, %286 ]
  %295 = phi i32 [ %230, %273 ], [ %230, %277 ], [ %129, %158 ], [ %129, %162 ], [ %289, %286 ]
  %296 = phi i32 [ %231, %273 ], [ %231, %277 ], [ %129, %158 ], [ %129, %162 ], [ %290, %286 ]
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8
  %298 = add nuw nsw i64 %65, 1
  %299 = getelementptr inbounds %struct._Image, ptr %294, i64 0, i32 7
  %300 = load i64, ptr %299, align 8, !tbaa !27
  %301 = icmp slt i64 %298, %300
  br i1 %301, label %60, label %302, !llvm.loop !122

302:                                              ; preds = %293, %50
  %303 = load ptr, ptr %4, align 8, !tbaa !6
  %304 = load ptr, ptr %6, align 8, !tbaa !6
  %305 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %303, ptr noundef %304) #19
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %302
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %308

308:                                              ; preds = %307, %302
  %309 = load ptr, ptr %2, align 8, !tbaa !6
  %310 = getelementptr inbounds %struct._Image, ptr %309, i64 0, i32 47
  %311 = load ptr, ptr %310, align 8, !tbaa !68
  %312 = icmp eq ptr %311, null
  br i1 %312, label %322, label %313

313:                                              ; preds = %308
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_MotionBlurImageChannel.var)
  %314 = load ptr, ptr %2, align 8, !tbaa !6
  %315 = load i64, ptr %13, align 8, !tbaa !36
  %316 = add nsw i64 %315, 1
  store i64 %316, ptr %13, align 8, !tbaa !36
  %317 = getelementptr inbounds %struct._Image, ptr %314, i64 0, i32 8
  %318 = load i64, ptr %317, align 8, !tbaa !28
  %319 = call fastcc i32 @SetImageProgress(ptr noundef %314, ptr noundef nonnull @.str.18, i64 noundef %315, i64 noundef %318) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_MotionBlurImageChannel.var)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %313, %42
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %322

322:                                              ; preds = %321, %308, %313, %38
  %323 = add nsw i64 %39, 1
  %324 = load i64, ptr %16, align 8, !tbaa !29
  %325 = icmp slt i64 %39, %324
  br i1 %325, label %38, label %326

326:                                              ; preds = %322
  %327 = load i64, ptr %15, align 8, !tbaa !29
  br label %328

328:                                              ; preds = %326, %34
  %329 = phi i64 [ %36, %34 ], [ %327, %326 ]
  %330 = phi i64 [ %35, %34 ], [ %324, %326 ]
  %331 = load i64, ptr %17, align 8, !tbaa !29
  %332 = add nsw i64 %331, %329
  store i64 %332, ptr %15, align 8, !tbaa !29
  %333 = add nsw i64 %331, %330
  %334 = call i64 @llvm.smin.i64(i64 %333, i64 %23)
  store i64 %334, ptr %16, align 8, !tbaa !29
  %335 = icmp sgt i64 %332, %334
  br i1 %335, label %336, label %34

336:                                              ; preds = %328, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  br label %337

337:                                              ; preds = %336, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PreviewImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca %struct._QuantizeInfo, align 8
  %8 = alloca %struct._RectangleInfo, align 8
  %9 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #8
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2299, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #17
  br label %16

16:                                               ; preds = %13, %3
  %17 = tail call ptr @AcquireImageInfo() #17
  call void @SetGeometry(ptr noundef nonnull %0, ptr noundef nonnull %8) #17
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 3
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 1
  %21 = call i32 @ParseMetaGeometry(ptr noundef nonnull @.str.20, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %8, ptr noundef nonnull %20) #17
  %22 = call ptr @NewImageList() #17
  store ptr %22, ptr %6, align 8, !tbaa !6
  call void @GetQuantizeInfo(ptr noundef nonnull %7) #17
  %23 = getelementptr inbounds %struct._QuantizeInfo, ptr %7, i64 0, i32 3
  %24 = getelementptr inbounds %struct._ImageInfo, ptr %17, i64 0, i32 16
  %25 = getelementptr inbounds %struct._ImageInfo, ptr %17, i64 0, i32 51
  br label %26

26:                                               ; preds = %16, %352
  %27 = phi i64 [ -1, %16 ], [ %360, %352 ]
  %28 = phi double [ 0.000000e+00, %16 ], [ %357, %352 ]
  %29 = phi i64 [ 2, %16 ], [ %356, %352 ]
  %30 = phi i64 [ 0, %16 ], [ %359, %352 ]
  %31 = phi double [ 0xBFC99999A0000000, %16 ], [ %355, %352 ]
  %32 = phi double [ 1.250000e+01, %16 ], [ %354, %352 ]
  %33 = phi double [ 0.000000e+00, %16 ], [ %353, %352 ]
  %34 = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %16 ], [ %358, %352 ]
  %35 = load i64, ptr %8, align 8, !tbaa !123
  %36 = load i64, ptr %20, align 8, !tbaa !124
  %37 = call ptr @ThumbnailImage(ptr noundef %0, i64 noundef %35, i64 noundef %36, ptr noundef %2) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %362, label %39

39:                                               ; preds = %26
  %40 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %37, ptr noundef null, ptr noundef null) #17
  %41 = call i32 @SetImageProperty(ptr noundef nonnull %37, ptr noundef nonnull @.str.21, ptr noundef nonnull @DefaultTileLabel) #17
  %42 = icmp eq i64 %30, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 14
  %45 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.22, ptr noundef nonnull %44, ptr noundef %2) #17
  call void @AppendImageToList(ptr noundef nonnull %6, ptr noundef nonnull %37) #17
  br label %352

46:                                               ; preds = %39
  switch i32 %1, label %96 [
    i32 1, label %49
    i32 2, label %53
    i32 3, label %58
    i32 4, label %72
    i32 5, label %80
    i32 6, label %88
    i32 29, label %278
    i32 8, label %103
    i32 9, label %117
    i32 10, label %131
    i32 11, label %139
    i32 12, label %47
    i32 13, label %164
    i32 14, label %169
    i32 15, label %189
    i32 16, label %194
    i32 17, label %199
    i32 18, label %207
    i32 19, label %211
    i32 20, label %216
    i32 21, label %224
    i32 22, label %228
    i32 23, label %248
    i32 24, label %255
    i32 25, label %259
    i32 26, label %263
    i32 27, label %269
    i32 28, label %273
  ]

47:                                               ; preds = %46
  %48 = icmp ugt i64 %30, 1
  br i1 %48, label %147, label %156

49:                                               ; preds = %46
  %50 = fadd double %28, 4.500000e+01
  %51 = call ptr @RotateImage(ptr noundef nonnull %37, double noundef %50, ptr noundef %2) #17
  %52 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.23, double noundef %50) #17
  br label %335

53:                                               ; preds = %46
  %54 = fadd double %28, 5.000000e+00
  %55 = call ptr @ShearImage(ptr noundef nonnull %37, double noundef %54, double noundef %54, ptr noundef %2) #17
  %56 = fmul double %54, 2.000000e+00
  %57 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.24, double noundef %54, double noundef %56) #17
  br label %335

58:                                               ; preds = %46
  %59 = add nuw nsw i64 %30, 1
  %60 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %61 = load i64, ptr %60, align 8, !tbaa !27
  %62 = mul i64 %61, %59
  %63 = sdiv i64 %62, 9
  %64 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !28
  %66 = mul i64 %65, %59
  %67 = sdiv i64 %66, 9
  %68 = call ptr @RollImage(ptr noundef nonnull %37, i64 noundef %63, i64 noundef %67, ptr noundef %2) #17
  %69 = sitofp i64 %63 to double
  %70 = sitofp i64 %67 to double
  %71 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.25, double noundef %69, double noundef %70) #17
  br label %335

72:                                               ; preds = %46
  %73 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %325, label %75

75:                                               ; preds = %72
  %76 = fmul double %32, 2.000000e+00
  %77 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.26, double noundef %76) #17
  %78 = call i32 @ModulateImage(ptr noundef nonnull %73, ptr noundef nonnull %4) #17
  %79 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #17
  br label %328

80:                                               ; preds = %46
  %81 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %82 = icmp eq ptr %81, null
  br i1 %82, label %325, label %83

83:                                               ; preds = %80
  %84 = fmul double %32, 2.000000e+00
  %85 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.28, double noundef %84) #17
  %86 = call i32 @ModulateImage(ptr noundef nonnull %81, ptr noundef nonnull %4) #17
  %87 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #17
  br label %328

88:                                               ; preds = %46
  %89 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %90 = icmp eq ptr %89, null
  br i1 %90, label %325, label %91

91:                                               ; preds = %88
  %92 = fmul double %32, 2.000000e+00
  %93 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %92) #17
  %94 = call i32 @ModulateImage(ptr noundef nonnull %89, ptr noundef nonnull %4) #17
  %95 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #17
  br label %328

96:                                               ; preds = %46
  %97 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %98 = icmp eq ptr %97, null
  br i1 %98, label %325, label %99

99:                                               ; preds = %96
  %100 = fadd double %31, 0x3FD99999A0000000
  %101 = call i32 @GammaImageChannel(ptr noundef nonnull %97, i32 noundef 134217719, double noundef %100) #17
  %102 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.30, double noundef %100) #17
  br label %328

103:                                              ; preds = %46
  %104 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %105 = icmp ne ptr %104, null
  %106 = icmp ne i64 %30, 0
  %107 = and i1 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %103, %108
  %109 = phi i64 [ %111, %108 ], [ 0, %103 ]
  %110 = call i32 @ContrastImage(ptr noundef nonnull %104, i32 noundef 1) #17
  %111 = add nuw nsw i64 %109, 1
  %112 = icmp eq i64 %111, %30
  br i1 %112, label %113, label %108, !llvm.loop !125

113:                                              ; preds = %108, %103
  %114 = sitofp i64 %30 to double
  %115 = fadd double %114, 1.000000e+00
  %116 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.31, double noundef %115) #17
  br label %335

117:                                              ; preds = %46
  %118 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %119 = icmp eq ptr %118, null
  br i1 %119, label %325, label %120

120:                                              ; preds = %117
  %121 = icmp eq i64 %30, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ %125, %122 ], [ 0, %120 ]
  %124 = call i32 @ContrastImage(ptr noundef nonnull %118, i32 noundef 0) #17
  %125 = add nuw nsw i64 %123, 1
  %126 = icmp eq i64 %125, %30
  br i1 %126, label %127, label %122, !llvm.loop !126

127:                                              ; preds = %122, %120
  %128 = sitofp i64 %30 to double
  %129 = fadd double %128, 1.000000e+00
  %130 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.32, double noundef %129) #17
  br label %335

131:                                              ; preds = %46
  %132 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %133 = icmp eq ptr %132, null
  br i1 %133, label %325, label %134

134:                                              ; preds = %131
  %135 = shl i64 %29, 1
  store i64 %135, ptr %7, align 8, !tbaa !127
  store i32 2, ptr %23, align 4, !tbaa !129
  %136 = call i32 @QuantizeImage(ptr noundef nonnull %7, ptr noundef nonnull %132) #17
  %137 = uitofp i64 %135 to double
  %138 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.33, double noundef %137) #17
  br label %328

139:                                              ; preds = %46
  %140 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %141 = icmp eq ptr %140, null
  br i1 %141, label %325, label %142

142:                                              ; preds = %139
  %143 = shl i64 %29, 1
  store i64 %143, ptr %7, align 8, !tbaa !127
  %144 = call i32 @QuantizeImage(ptr noundef nonnull %7, ptr noundef nonnull %140) #17
  %145 = uitofp i64 %143 to double
  %146 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.34, double noundef %145) #17
  br label %328

147:                                              ; preds = %47, %152
  %148 = phi i64 [ %154, %152 ], [ 0, %47 ]
  %149 = phi ptr [ %150, %152 ], [ %37, %47 ]
  %150 = call ptr @DespeckleImage(ptr noundef nonnull %149, ptr noundef %2) #16
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = call ptr @DestroyImage(ptr noundef nonnull %149) #17
  %154 = add nuw nsw i64 %148, 1
  %155 = icmp eq i64 %154, %27
  br i1 %155, label %156, label %147, !llvm.loop !130

156:                                              ; preds = %152, %147, %47
  %157 = phi ptr [ %37, %47 ], [ %149, %147 ], [ %150, %152 ]
  %158 = call ptr @DespeckleImage(ptr noundef nonnull %157, ptr noundef %2) #16
  %159 = icmp eq ptr %158, null
  br i1 %159, label %325, label %160

160:                                              ; preds = %156
  %161 = sitofp i64 %30 to double
  %162 = fadd double %161, 1.000000e+00
  %163 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.35, double noundef %162) #17
  br label %328

164:                                              ; preds = %46
  %165 = extractelement <2 x double> %34, i64 1
  %166 = fptoui double %165 to i64
  %167 = call ptr @StatisticImage(ptr noundef nonnull %37, i32 noundef 7, i64 noundef %166, i64 noundef %166, ptr noundef %2) #17
  %168 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.36, double noundef %165) #17
  br label %335

169:                                              ; preds = %46
  %170 = trunc i64 %30 to i32
  switch i32 %170, label %183 [
    i32 0, label %171
    i32 1, label %173
    i32 2, label %175
    i32 3, label %177
    i32 4, label %179
    i32 5, label %181
  ]

171:                                              ; preds = %169
  %172 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.37, i64 noundef 4096) #17
  br label %186

173:                                              ; preds = %169
  %174 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.38, i64 noundef 4096) #17
  br label %186

175:                                              ; preds = %169
  %176 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.39, i64 noundef 4096) #17
  br label %186

177:                                              ; preds = %169
  %178 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.40, i64 noundef 4096) #17
  br label %186

179:                                              ; preds = %169
  %180 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.41, i64 noundef 4096) #17
  br label %186

181:                                              ; preds = %169
  %182 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i64 noundef 4096) #17
  br label %186

183:                                              ; preds = %169
  %184 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 55
  %185 = call i64 @CopyMagickString(ptr noundef nonnull %184, ptr noundef nonnull @.str.43, i64 noundef 4096) #17
  br label %186

186:                                              ; preds = %183, %181, %179, %177, %175, %173, %171
  %187 = call ptr @StatisticImage(ptr noundef nonnull %37, i32 noundef 7, i64 noundef %30, i64 noundef %30, ptr noundef %2) #17
  %188 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.44, ptr noundef nonnull %4) #17
  br label %335

189:                                              ; preds = %46
  %190 = extractelement <2 x double> %34, i64 0
  %191 = extractelement <2 x double> %34, i64 1
  %192 = call ptr @SharpenImage(ptr noundef nonnull %37, double noundef %191, double noundef %190, ptr noundef %2) #16
  %193 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %191, double noundef %190) #17
  br label %335

194:                                              ; preds = %46
  %195 = extractelement <2 x double> %34, i64 0
  %196 = extractelement <2 x double> %34, i64 1
  %197 = call ptr @BlurImage(ptr noundef nonnull %37, double noundef %196, double noundef %195, ptr noundef %2) #16
  %198 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, double noundef %196, double noundef %195) #17
  br label %335

199:                                              ; preds = %46
  %200 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %201 = icmp eq ptr %200, null
  br i1 %201, label %325, label %202

202:                                              ; preds = %199
  %203 = fmul double %32, 6.553600e+04
  %204 = fdiv double %203, 1.000000e+02
  %205 = call i32 @BilevelImage(ptr noundef nonnull %37, double noundef %204) #17
  %206 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.47, double noundef %204) #17
  br label %328

207:                                              ; preds = %46
  %208 = extractelement <2 x double> %34, i64 1
  %209 = call ptr @EdgeImage(ptr noundef nonnull %37, double noundef %208, ptr noundef %2) #16
  %210 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.48, double noundef %208) #17
  br label %335

211:                                              ; preds = %46
  %212 = extractelement <2 x double> %34, i64 1
  %213 = call ptr @SpreadImage(ptr noundef nonnull %37, double noundef %212, ptr noundef %2) #16
  %214 = fadd double %212, 5.000000e-01
  %215 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.49, double noundef %214) #17
  br label %335

216:                                              ; preds = %46
  %217 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %218 = icmp eq ptr %217, null
  br i1 %218, label %325, label %219

219:                                              ; preds = %216
  %220 = fmul double %32, 6.553500e+04
  %221 = fdiv double %220, 1.000000e+02
  %222 = call i32 @SolarizeImage(ptr noundef nonnull %217, double noundef %221) #17
  %223 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.50, double noundef %221) #17
  br label %328

224:                                              ; preds = %46
  %225 = fadd double %28, 1.000000e+01
  %226 = call ptr @ShadeImage(ptr noundef nonnull %37, i32 noundef 1, double noundef %225, double noundef %225, ptr noundef %2) #16
  %227 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.51, double noundef %225, double noundef %225) #17
  br label %335

228:                                              ; preds = %46
  %229 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %230 = icmp eq ptr %229, null
  br i1 %230, label %325, label %231

231:                                              ; preds = %228
  %232 = shl nuw nsw i64 %30, 1
  %233 = add nuw nsw i64 %232, 2
  store i64 %233, ptr %8, align 8, !tbaa !123
  store i64 %233, ptr %20, align 8, !tbaa !124
  %234 = trunc i64 %30 to i8
  %235 = add nsw i8 %234, -1
  %236 = sdiv i8 %235, 2
  %237 = sext i8 %236 to i64
  store i64 %237, ptr %18, align 8, !tbaa !131
  store i64 %237, ptr %19, align 8, !tbaa !132
  %238 = call i32 @RaiseImage(ptr noundef nonnull %229, ptr noundef nonnull %8, i32 noundef 1) #17
  %239 = load i64, ptr %8, align 8, !tbaa !123
  %240 = uitofp i64 %239 to double
  %241 = load i64, ptr %20, align 8, !tbaa !124
  %242 = uitofp i64 %241 to double
  %243 = load i64, ptr %18, align 8, !tbaa !131
  %244 = sitofp i64 %243 to double
  %245 = load i64, ptr %19, align 8, !tbaa !132
  %246 = sitofp i64 %245 to double
  %247 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.52, double noundef %240, double noundef %242, double noundef %244, double noundef %246) #17
  br label %328

248:                                              ; preds = %46
  %249 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %250 = icmp eq ptr %249, null
  br i1 %250, label %325, label %251

251:                                              ; preds = %248
  %252 = fadd double %33, 0x3FD99999A0000000
  %253 = call i32 @SegmentImage(ptr noundef nonnull %249, i32 noundef 13, i32 noundef 0, double noundef %252, double noundef %252) #17
  %254 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, double noundef %252, double noundef %252) #17
  br label %328

255:                                              ; preds = %46
  %256 = call ptr @SwirlImage(ptr noundef nonnull %37, double noundef %28, ptr noundef %2) #17
  %257 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.54, double noundef %28) #17
  %258 = fadd double %28, 4.500000e+01
  br label %335

259:                                              ; preds = %46
  %260 = fadd double %28, 0x3FB99999A0000000
  %261 = call ptr @ImplodeImage(ptr noundef nonnull %37, double noundef %260, ptr noundef %2) #17
  %262 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.55, double noundef %260) #17
  br label %335

263:                                              ; preds = %46
  %264 = fadd double %28, 5.000000e+00
  %265 = fmul double %264, 5.000000e-01
  %266 = fmul double %264, 2.000000e+00
  %267 = call ptr @WaveImage(ptr noundef nonnull %37, double noundef %265, double noundef %266, ptr noundef %2) #17
  %268 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.56, double noundef %265, double noundef %266) #17
  br label %335

269:                                              ; preds = %46
  %270 = extractelement <2 x double> %34, i64 1
  %271 = call ptr @OilPaintImage(ptr noundef nonnull %37, double noundef %270, ptr noundef %2) #17
  %272 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %270) #17
  br label %335

273:                                              ; preds = %46
  %274 = extractelement <2 x double> %34, i64 0
  %275 = extractelement <2 x double> %34, i64 1
  %276 = call ptr @CharcoalImage(ptr noundef nonnull %37, double noundef %275, double noundef %274, ptr noundef %2) #17
  %277 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.58, double noundef %275, double noundef %274) #17
  br label %335

278:                                              ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #8
  %279 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %280 = icmp eq ptr %279, null
  br i1 %280, label %323, label %281

281:                                              ; preds = %278
  %282 = fptoui double %32 to i64
  store i64 %282, ptr %24, align 8, !tbaa !133
  %283 = uitofp i64 %282 to double
  %284 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.59, double noundef %283) #17
  %285 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %9) #17
  %286 = icmp eq i32 %285, -1
  br i1 %286, label %289, label %287

287:                                              ; preds = %281
  %288 = call i32 @close(i32 noundef %285) #17
  br label %289

289:                                              ; preds = %287, %281
  %290 = getelementptr inbounds %struct._Image, ptr %279, i64 0, i32 53
  %291 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %290, i64 noundef 4096, ptr noundef nonnull @.str.60, ptr noundef nonnull %9) #17
  %292 = call i32 @WriteImage(ptr noundef nonnull %17, ptr noundef nonnull %279) #17
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %289
  %295 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %290, i64 noundef 4096) #17
  %296 = call ptr @ReadImage(ptr noundef nonnull %17, ptr noundef %2) #17
  %297 = icmp eq ptr %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %294
  %299 = call ptr @DestroyImage(ptr noundef nonnull %279) #17
  br label %300

300:                                              ; preds = %294, %298, %289
  %301 = phi ptr [ %279, %289 ], [ %296, %298 ], [ %279, %294 ]
  %302 = getelementptr inbounds %struct._Image, ptr %301, i64 0, i32 53
  %303 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %302) #17
  %304 = call i64 @GetBlobSize(ptr noundef nonnull %301) #17
  %305 = icmp ugt i64 %304, 1048575
  %306 = call i64 @GetBlobSize(ptr noundef nonnull %301) #17
  br i1 %305, label %307, label %312

307:                                              ; preds = %300
  %308 = sitofp i64 %306 to double
  %309 = fmul double %308, 0x3F50000000000000
  %310 = fmul double %309, 0x3F50000000000000
  %311 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.61, ptr noundef nonnull %4, double noundef %310) #17
  br label %323

312:                                              ; preds = %300
  %313 = icmp ugt i64 %306, 1023
  br i1 %313, label %314, label %319

314:                                              ; preds = %312
  %315 = call i64 @GetBlobSize(ptr noundef nonnull %301) #17
  %316 = sitofp i64 %315 to double
  %317 = fmul double %316, 0x3F50000000000000
  %318 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.62, ptr noundef nonnull %4, double noundef %317) #17
  br label %323

319:                                              ; preds = %312
  %320 = call i64 @GetBlobSize(ptr noundef nonnull %37) #17
  %321 = sitofp i64 %320 to double
  %322 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.63, ptr noundef nonnull %4, double noundef %321) #17
  br label %323

323:                                              ; preds = %307, %319, %314, %278
  %324 = phi ptr [ null, %278 ], [ %301, %314 ], [ %301, %319 ], [ %301, %307 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #8
  br label %335

325:                                              ; preds = %96, %248, %228, %216, %199, %156, %139, %131, %117, %88, %80, %72
  %326 = phi ptr [ %37, %72 ], [ %37, %80 ], [ %37, %88 ], [ %37, %117 ], [ %37, %131 ], [ %37, %139 ], [ %157, %156 ], [ %37, %199 ], [ %37, %216 ], [ %37, %228 ], [ %37, %248 ], [ %37, %96 ]
  %327 = call ptr @DestroyImage(ptr noundef nonnull %326) #17
  br label %362

328:                                              ; preds = %99, %251, %231, %219, %202, %160, %142, %134, %91, %83, %75
  %329 = phi double [ %33, %75 ], [ %33, %83 ], [ %33, %91 ], [ %33, %134 ], [ %33, %142 ], [ %33, %160 ], [ %33, %202 ], [ %33, %219 ], [ %33, %231 ], [ %252, %251 ], [ %33, %99 ]
  %330 = phi ptr [ %73, %75 ], [ %81, %83 ], [ %89, %91 ], [ %132, %134 ], [ %140, %142 ], [ %158, %160 ], [ %200, %202 ], [ %217, %219 ], [ %229, %231 ], [ %249, %251 ], [ %97, %99 ]
  %331 = phi ptr [ %37, %75 ], [ %37, %83 ], [ %37, %91 ], [ %37, %134 ], [ %37, %142 ], [ %157, %160 ], [ %37, %202 ], [ %37, %219 ], [ %37, %231 ], [ %37, %251 ], [ %37, %99 ]
  %332 = phi double [ %31, %75 ], [ %31, %83 ], [ %31, %91 ], [ %31, %134 ], [ %31, %142 ], [ %31, %160 ], [ %31, %202 ], [ %31, %219 ], [ %31, %231 ], [ %31, %251 ], [ %100, %99 ]
  %333 = phi i64 [ %29, %75 ], [ %29, %83 ], [ %29, %91 ], [ %135, %134 ], [ %143, %142 ], [ %29, %160 ], [ %29, %202 ], [ %29, %219 ], [ %29, %231 ], [ %29, %251 ], [ %29, %99 ]
  %334 = call ptr @DestroyImage(ptr noundef nonnull %331) #17
  br label %340

335:                                              ; preds = %323, %273, %269, %263, %259, %255, %224, %211, %207, %194, %189, %186, %164, %127, %113, %58, %53, %49
  %336 = phi ptr [ %276, %273 ], [ %271, %269 ], [ %267, %263 ], [ %261, %259 ], [ %256, %255 ], [ %226, %224 ], [ %213, %211 ], [ %209, %207 ], [ %197, %194 ], [ %192, %189 ], [ %187, %186 ], [ %167, %164 ], [ %118, %127 ], [ %104, %113 ], [ %324, %323 ], [ %68, %58 ], [ %55, %53 ], [ %51, %49 ]
  %337 = phi double [ %28, %273 ], [ %28, %269 ], [ %264, %263 ], [ %260, %259 ], [ %258, %255 ], [ %225, %224 ], [ %28, %211 ], [ %28, %207 ], [ %28, %194 ], [ %28, %189 ], [ %28, %186 ], [ %28, %164 ], [ %28, %127 ], [ %28, %113 ], [ %28, %323 ], [ %28, %58 ], [ %54, %53 ], [ %50, %49 ]
  %338 = call ptr @DestroyImage(ptr noundef %37) #17
  %339 = icmp eq ptr %336, null
  br i1 %339, label %362, label %340

340:                                              ; preds = %328, %335
  %341 = phi double [ %28, %328 ], [ %337, %335 ]
  %342 = phi i64 [ %333, %328 ], [ %29, %335 ]
  %343 = phi double [ %332, %328 ], [ %31, %335 ]
  %344 = phi ptr [ %330, %328 ], [ %336, %335 ]
  %345 = phi double [ %329, %328 ], [ %33, %335 ]
  %346 = fadd <2 x double> %34, <double 2.500000e-01, double 5.000000e-01>
  %347 = fadd double %32, 1.250000e+01
  %348 = call i32 @DeleteImageProperty(ptr noundef nonnull %344, ptr noundef nonnull @.str.21) #17
  %349 = call i32 @SetImageProperty(ptr noundef nonnull %344, ptr noundef nonnull @.str.21, ptr noundef nonnull %5) #17
  call void @AppendImageToList(ptr noundef nonnull %6, ptr noundef nonnull %344) #17
  %350 = call fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef nonnull @.str.64, i64 noundef %30, i64 noundef 9) #16
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %362, label %352

352:                                              ; preds = %340, %43
  %353 = phi double [ %33, %43 ], [ %345, %340 ]
  %354 = phi double [ %32, %43 ], [ %347, %340 ]
  %355 = phi double [ %31, %43 ], [ %343, %340 ]
  %356 = phi i64 [ %29, %43 ], [ %342, %340 ]
  %357 = phi double [ %28, %43 ], [ %341, %340 ]
  %358 = phi <2 x double> [ %34, %43 ], [ %346, %340 ]
  %359 = add nuw nsw i64 %30, 1
  %360 = add nsw i64 %27, 1
  %361 = icmp eq i64 %359, 9
  br i1 %361, label %362, label %26, !llvm.loop !135

362:                                              ; preds = %340, %335, %26, %352, %325
  %363 = load ptr, ptr %6, align 8, !tbaa !6
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %367

365:                                              ; preds = %362
  %366 = call ptr @DestroyImageInfo(ptr noundef %17) #17
  br label %401

367:                                              ; preds = %362
  %368 = call ptr @CloneMontageInfo(ptr noundef %17, ptr noundef null) #17
  %369 = getelementptr inbounds %struct._MontageInfo, ptr %368, i64 0, i32 15
  %370 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %371 = call i64 @CopyMagickString(ptr noundef nonnull %369, ptr noundef nonnull %370, i64 noundef 4096) #17
  %372 = getelementptr inbounds %struct._MontageInfo, ptr %368, i64 0, i32 8
  store i32 1, ptr %372, align 8, !tbaa !136
  %373 = getelementptr inbounds %struct._MontageInfo, ptr %368, i64 0, i32 1
  %374 = call ptr @CloneString(ptr noundef nonnull %373, ptr noundef nonnull @.str.65) #17
  %375 = call ptr @CloneString(ptr noundef %368, ptr noundef nonnull @.str.20) #17
  %376 = getelementptr inbounds %struct._MontageInfo, ptr %368, i64 0, i32 3
  %377 = call ptr @CloneString(ptr noundef nonnull %376, ptr noundef nonnull @DefaultTileFrame) #17
  %378 = load ptr, ptr %6, align 8, !tbaa !6
  %379 = call ptr @MontageImages(ptr noundef %378, ptr noundef %368, ptr noundef %2) #17
  %380 = call ptr @DestroyMontageInfo(ptr noundef %368) #17
  %381 = load ptr, ptr %6, align 8, !tbaa !6
  %382 = call ptr @DestroyImageList(ptr noundef %381) #17
  store ptr %382, ptr %6, align 8, !tbaa !6
  %383 = icmp eq ptr %379, null
  br i1 %383, label %384, label %386

384:                                              ; preds = %367
  %385 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2718, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %370) #17
  br label %401

386:                                              ; preds = %367
  %387 = getelementptr inbounds %struct._Image, ptr %379, i64 0, i32 20
  %388 = load ptr, ptr %387, align 8, !tbaa !138
  %389 = icmp eq ptr %388, null
  br i1 %389, label %399, label %390

390:                                              ; preds = %386
  %391 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %388) #17
  store ptr %391, ptr %387, align 8, !tbaa !138
  %392 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %393 = load ptr, ptr %392, align 8, !tbaa !139
  %394 = icmp eq ptr %393, null
  br i1 %394, label %399, label %395

395:                                              ; preds = %390
  %396 = getelementptr inbounds %struct._Image, ptr %379, i64 0, i32 21
  %397 = load ptr, ptr %396, align 8, !tbaa !139
  %398 = call ptr @RelinquishMagickMemory(ptr noundef %397) #17
  store ptr %398, ptr %396, align 8, !tbaa !139
  br label %399

399:                                              ; preds = %390, %395, %386
  %400 = call ptr @DestroyImageInfo(ptr noundef %17) #17
  br label %401

401:                                              ; preds = %399, %384, %365
  %402 = phi ptr [ null, %365 ], [ null, %384 ], [ %379, %399 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  ret ptr %402
}

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseMetaGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetQuantizeInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ThumbnailImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ShearImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RollImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ModulateImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GammaImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ContrastImage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @StatisticImage(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SharpenImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @SharpenImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #16
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @BilevelImage(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SpreadImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !6
  store ptr %2, ptr %5, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %16 = load i32, ptr %15, align 8, !tbaa !12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3912, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #17
  br label %21

21:                                               ; preds = %18, %3
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !28
  %26 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %23, i64 noundef %25, i32 noundef 1, ptr noundef %2) #17
  store ptr %26, ptr %8, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %74, label %28

28:                                               ; preds = %21
  %29 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %26, i32 noundef 1) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %32) #17
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %26) #17
  br label %74

34:                                               ; preds = %28
  store i32 1, ptr %9, align 4, !tbaa !10
  store i64 0, ptr %10, align 8, !tbaa !36
  call void @GetMagickPixelPacket(ptr noundef nonnull %26, ptr noundef nonnull %11) #17
  %35 = call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef 5.000000e-01) #17
  store i64 %35, ptr %13, align 8, !tbaa !29
  %36 = call fastcc ptr @AcquireRandomInfoThreadSet() #16
  store ptr %36, ptr %12, align 8, !tbaa !6
  %37 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #17
  store ptr %37, ptr %6, align 8, !tbaa !6
  %38 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %26, ptr noundef %2) #17
  store ptr %38, ptr %7, align 8, !tbaa !6
  %39 = load ptr, ptr %36, align 8, !tbaa !6
  %40 = call i64 @GetRandomSecretKey(ptr noundef %39) #17
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %60

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 8
  %44 = load i64, ptr %43, align 8, !tbaa !28
  %45 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %46 = shl i64 %45, 5
  %47 = icmp ugt i64 %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #17
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %26) #17
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %60

56:                                               ; preds = %51, %48, %42
  %57 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %58 = icmp ult i64 %57, 2
  %59 = select i1 %58, i64 1, i64 2
  br label %60

60:                                               ; preds = %54, %56, %34
  %61 = phi i64 [ 1, %34 ], [ %55, %54 ], [ %59, %56 ]
  %62 = trunc i64 %61 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %62)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @SpreadImage.omp_outlined, ptr nonnull %8, ptr nonnull %9, ptr nonnull %7, ptr nonnull %5, ptr nonnull %11, ptr nonnull %4, ptr nonnull %6, ptr nonnull %13, ptr nonnull %12, ptr nonnull %10)
  %63 = load ptr, ptr %7, align 8, !tbaa !6
  %64 = call ptr @DestroyCacheView(ptr noundef %63) #17
  store ptr %64, ptr %7, align 8, !tbaa !6
  %65 = load ptr, ptr %6, align 8, !tbaa !6
  %66 = call ptr @DestroyCacheView(ptr noundef %65) #17
  store ptr %66, ptr %6, align 8, !tbaa !6
  %67 = load ptr, ptr %12, align 8, !tbaa !6
  %68 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %67) #16
  store ptr %68, ptr %12, align 8, !tbaa !6
  %69 = load i32, ptr %9, align 4, !tbaa !10
  %70 = icmp eq i32 %69, 0
  %71 = load ptr, ptr %8, align 8, !tbaa !6
  br i1 %70, label %72, label %74

72:                                               ; preds = %60
  %73 = call ptr @DestroyImage(ptr noundef %71) #17
  br label %74

74:                                               ; preds = %60, %72, %21, %31
  %75 = phi ptr [ null, %31 ], [ null, %21 ], [ %73, %72 ], [ %71, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret ptr %75
}

; Function Attrs: optsize
declare i32 @SolarizeImage(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShadeImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct._PrimaryInfo, align 16
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store i32 %1, ptr %7, align 4, !tbaa !10
  store ptr %4, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #8
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3562, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #17
  br label %23

23:                                               ; preds = %20, %5
  %24 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #17
  store ptr %24, ptr %11, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !27
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !28
  %29 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %26, i64 noundef %28, i32 noundef 1, ptr noundef %4) #17
  store ptr %29, ptr %12, align 8, !tbaa !6
  %30 = icmp eq ptr %24, null
  %31 = icmp eq ptr %29, null
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  br i1 %30, label %36, label %34

34:                                               ; preds = %33
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #17
  br label %36

36:                                               ; preds = %34, %33
  br i1 %31, label %95, label %37

37:                                               ; preds = %36
  %38 = tail call ptr @DestroyImage(ptr noundef nonnull %29) #17
  br label %95

39:                                               ; preds = %23
  %40 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %29, i32 noundef 1) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %43) #17
  %44 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #17
  %45 = tail call ptr @DestroyImage(ptr noundef nonnull %29) #17
  br label %95

46:                                               ; preds = %39
  %47 = tail call fastcc double @DegreesToRadians(double noundef %2) #16
  %48 = tail call double @cos(double noundef %47) #17
  %49 = tail call fastcc double @DegreesToRadians(double noundef %3) #16
  %50 = tail call double @cos(double noundef %49) #17
  %51 = tail call double @sin(double noundef %47) #17
  %52 = tail call double @cos(double noundef %49) #17
  %53 = insertelement <2 x double> poison, double %48, i64 0
  %54 = insertelement <2 x double> %53, double %51, i64 1
  %55 = fmul <2 x double> %54, <double 6.553500e+04, double 6.553500e+04>
  %56 = insertelement <2 x double> poison, double %50, i64 0
  %57 = insertelement <2 x double> %56, double %52, i64 1
  %58 = fmul <2 x double> %55, %57
  store <2 x double> %58, ptr %15, align 16, !tbaa !30
  %59 = tail call double @sin(double noundef %49) #17
  %60 = fmul double %59, 6.553500e+04
  %61 = getelementptr inbounds %struct._PrimaryInfo, ptr %15, i64 0, i32 2
  store double %60, ptr %61, align 16, !tbaa !140
  store i32 1, ptr %13, align 4, !tbaa !10
  store i64 0, ptr %14, align 8, !tbaa !36
  %62 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %24, ptr noundef %4) #17
  store ptr %62, ptr %9, align 8, !tbaa !6
  %63 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %29, ptr noundef %4) #17
  store ptr %63, ptr %10, align 8, !tbaa !6
  %64 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !28
  %66 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %67 = shl i64 %66, 5
  %68 = icmp ugt i64 %65, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %46
  %70 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %24) #17
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %29) #17
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %81

77:                                               ; preds = %72, %69, %46
  %78 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %79 = icmp ult i64 %78, 2
  %80 = select i1 %79, i64 1, i64 2
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i64 [ %76, %75 ], [ %80, %77 ]
  %83 = trunc i64 %82 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %83)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @ShadeImage.omp_outlined, ptr nonnull %11, ptr nonnull %13, ptr nonnull %9, ptr nonnull %8, ptr nonnull %10, ptr nonnull %12, ptr nonnull %6, ptr nonnull %15, ptr nonnull %7, ptr nonnull %14)
  %84 = load ptr, ptr %10, align 8, !tbaa !6
  %85 = call ptr @DestroyCacheView(ptr noundef %84) #17
  store ptr %85, ptr %10, align 8, !tbaa !6
  %86 = load ptr, ptr %9, align 8, !tbaa !6
  %87 = call ptr @DestroyCacheView(ptr noundef %86) #17
  store ptr %87, ptr %9, align 8, !tbaa !6
  %88 = load ptr, ptr %11, align 8, !tbaa !6
  %89 = call ptr @DestroyImage(ptr noundef %88) #17
  store ptr %89, ptr %11, align 8, !tbaa !6
  %90 = load i32, ptr %13, align 4, !tbaa !10
  %91 = icmp eq i32 %90, 0
  %92 = load ptr, ptr %12, align 8, !tbaa !6
  br i1 %91, label %93, label %95

93:                                               ; preds = %81
  %94 = call ptr @DestroyImage(ptr noundef %92) #17
  br label %95

95:                                               ; preds = %81, %93, %36, %37, %42
  %96 = phi ptr [ null, %42 ], [ null, %37 ], [ null, %36 ], [ %94, %93 ], [ %92, %81 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret ptr %96
}

; Function Attrs: optsize
declare i32 @RaiseImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SegmentImage(ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @SwirlImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ImplodeImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WaveImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OilPaintImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CharcoalImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneMontageInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @MontageImages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyMontageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RotationalBlurImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RotationalBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RotationalBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct._MagickPixelPacket, align 8
  %14 = alloca float, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct._PointInfo, align 16
  %18 = alloca i64, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !6
  store i32 %1, ptr %6, align 4, !tbaa !10
  store ptr %3, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2822, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #17
  br label %26

26:                                               ; preds = %23, %4
  %27 = tail call ptr @AccelerateRadialBlurImage(ptr noundef nonnull %0, i32 noundef %1, double noundef %2, ptr noundef %3) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %127

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %31 = load <2 x i64>, ptr %30, align 8, !tbaa !29
  %32 = add <2 x i64> %31, <i64 -1, i64 -1>
  %33 = uitofp <2 x i64> %32 to <2 x double>
  %34 = fmul <2 x double> %33, <double 5.000000e-01, double 5.000000e-01>
  store <2 x double> %34, ptr %17, align 16, !tbaa !30
  %35 = extractelement <2 x double> %34, i64 0
  %36 = extractelement <2 x double> %34, i64 1
  %37 = tail call double @hypot(double noundef %35, double noundef %36) #17
  %38 = fptrunc double %37 to float
  store float %38, ptr %14, align 4, !tbaa !50
  %39 = tail call fastcc double @DegreesToRadians(double noundef %2) #16
  %40 = fmul double %39, 4.000000e+00
  %41 = fpext float %38 to double
  %42 = tail call double @sqrt(double noundef %41) #17
  %43 = tail call double @llvm.fmuladd.f64(double %40, double %42, double 2.000000e+00)
  %44 = tail call double @llvm.fabs.f64(double %43)
  %45 = fptoui double %44 to i64
  store i64 %45, ptr %18, align 8, !tbaa !29
  %46 = add i64 %45, -1
  %47 = uitofp i64 %46 to float
  %48 = fpext float %47 to double
  %49 = fdiv double %39, %48
  %50 = fptrunc double %49 to float
  %51 = tail call ptr @AcquireQuantumMemory(i64 noundef %45, i64 noundef 4) #18
  store ptr %51, ptr %15, align 8, !tbaa !6
  %52 = tail call ptr @AcquireQuantumMemory(i64 noundef %45, i64 noundef 4) #18
  store ptr %52, ptr %16, align 8, !tbaa !6
  %53 = icmp eq ptr %51, null
  %54 = icmp eq ptr %52, null
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %58 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2840, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %57) #17
  br label %127

59:                                               ; preds = %29
  %60 = icmp sgt i64 %45, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %59
  %62 = fmul float %50, %47
  %63 = fmul float %62, -5.000000e-01
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ 0, %61 ], [ %75, %64 ]
  %66 = sitofp i64 %65 to float
  %67 = tail call float @llvm.fmuladd.f32(float %50, float %66, float %63)
  %68 = fpext float %67 to double
  %69 = tail call double @cos(double noundef %68) #17
  %70 = fptrunc double %69 to float
  %71 = getelementptr inbounds float, ptr %51, i64 %65
  store float %70, ptr %71, align 4, !tbaa !50
  %72 = tail call double @sin(double noundef %68) #17
  %73 = fptrunc double %72 to float
  %74 = getelementptr inbounds float, ptr %52, i64 %65
  store float %73, ptr %74, align 4, !tbaa !50
  %75 = add nuw nsw i64 %65, 1
  %76 = icmp eq i64 %75, %45
  br i1 %76, label %77, label %64, !llvm.loop !141

77:                                               ; preds = %64, %59
  %78 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #17
  store ptr %78, ptr %10, align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %51) #17
  %82 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %52) #17
  br label %127

83:                                               ; preds = %77
  %84 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %78, i32 noundef 1) #17
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %51) #17
  %88 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %52) #17
  %89 = getelementptr inbounds %struct._Image, ptr %78, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %89) #17
  %90 = tail call ptr @DestroyImage(ptr noundef nonnull %78) #17
  br label %127

91:                                               ; preds = %83
  store i32 1, ptr %11, align 4, !tbaa !10
  store i64 0, ptr %12, align 8, !tbaa !36
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %13) #17
  %92 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #17
  store ptr %92, ptr %9, align 8, !tbaa !6
  %93 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %78, ptr noundef %3) #17
  store ptr %93, ptr %8, align 8, !tbaa !6
  %94 = getelementptr inbounds %struct._Image, ptr %78, i64 0, i32 8
  %95 = load i64, ptr %94, align 8, !tbaa !28
  %96 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %97 = shl i64 %96, 5
  %98 = icmp ugt i64 %95, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %91
  %100 = call i32 @GetImagePixelCacheType(ptr noundef %0) #17
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %78) #17
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %111

107:                                              ; preds = %102, %99, %91
  %108 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %109 = icmp ult i64 %108, 2
  %110 = select i1 %109, i64 1, i64 2
  br label %111

111:                                              ; preds = %107, %105
  %112 = phi i64 [ %106, %105 ], [ %110, %107 ]
  %113 = trunc i64 %112 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %113)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 14, ptr nonnull @RotationalBlurImageChannel.omp_outlined, ptr nonnull %10, ptr nonnull %11, ptr nonnull %8, ptr nonnull %7, ptr nonnull %17, ptr nonnull %14, ptr nonnull %18, ptr nonnull %13, ptr nonnull %6, ptr nonnull %5, ptr nonnull %9, ptr nonnull %15, ptr nonnull %16, ptr nonnull %12)
  %114 = load ptr, ptr %8, align 8, !tbaa !6
  %115 = call ptr @DestroyCacheView(ptr noundef %114) #17
  store ptr %115, ptr %8, align 8, !tbaa !6
  %116 = load ptr, ptr %9, align 8, !tbaa !6
  %117 = call ptr @DestroyCacheView(ptr noundef %116) #17
  store ptr %117, ptr %9, align 8, !tbaa !6
  %118 = load ptr, ptr %15, align 8, !tbaa !6
  %119 = call ptr @RelinquishMagickMemory(ptr noundef %118) #17
  store ptr %119, ptr %15, align 8, !tbaa !6
  %120 = load ptr, ptr %16, align 8, !tbaa !6
  %121 = call ptr @RelinquishMagickMemory(ptr noundef %120) #17
  store ptr %121, ptr %16, align 8, !tbaa !6
  %122 = load i32, ptr %11, align 4, !tbaa !10
  %123 = icmp eq i32 %122, 0
  %124 = load ptr, ptr %10, align 8, !tbaa !6
  br i1 %123, label %125, label %127

125:                                              ; preds = %111
  %126 = call ptr @DestroyImage(ptr noundef %124) #17
  br label %127

127:                                              ; preds = %111, %125, %26, %86, %80, %56
  %128 = phi ptr [ null, %56 ], [ null, %80 ], [ null, %86 ], [ %27, %26 ], [ %126, %125 ], [ %124, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret ptr %128
}

; Function Attrs: optsize
declare ptr @AccelerateRadialBlurImage(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RotationalBlurImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %6, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %9, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %13, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %14, ptr nocapture noundef nonnull align 8 dereferenceable(8) %15) #7 {
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct._PixelPacket, align 8
  %22 = load ptr, ptr %2, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !28
  %25 = add nsw i64 %24, -1
  %26 = icmp sgt i64 %24, 0
  br i1 %26, label %27, label %388

27:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  store i64 0, ptr %17, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  store i64 %25, ptr %18, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8
  store i64 1, ptr %19, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #8
  store i32 0, ptr %20, align 4, !tbaa !10
  %28 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %28, i32 33, ptr nonnull %20, ptr nonnull %17, ptr nonnull %18, ptr nonnull %19, i64 1, i64 4)
  %29 = load i64, ptr %18, align 8
  %30 = call i64 @llvm.smin.i64(i64 %29, i64 %25)
  store i64 %30, ptr %18, align 8, !tbaa !29
  %31 = load i64, ptr %17, align 8, !tbaa !29
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %387, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._PointInfo, ptr %6, i64 0, i32 1
  %35 = getelementptr inbounds i8, ptr %9, i64 32
  %36 = getelementptr inbounds i8, ptr %9, i64 48
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 0, i32 3
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 0, i32 1
  br label %39

39:                                               ; preds = %33, %379
  %40 = phi i64 [ %30, %33 ], [ %385, %379 ]
  %41 = phi i64 [ %31, %33 ], [ %383, %379 ]
  %42 = icmp sgt i64 %41, %40
  br i1 %42, label %379, label %43

43:                                               ; preds = %39, %373
  %44 = phi i64 [ %374, %373 ], [ %41, %39 ]
  %45 = load i32, ptr %3, align 4, !tbaa !10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %373, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 8, !tbaa !6
  %49 = load ptr, ptr %2, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !27
  %52 = load ptr, ptr %5, align 8, !tbaa !6
  %53 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %48, i64 noundef 0, i64 noundef %44, i64 noundef %51, i64 noundef 1, ptr noundef %52) #19
  %54 = icmp eq ptr %53, null
  br i1 %54, label %372, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr %4, align 8, !tbaa !6
  %57 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %56) #17
  %58 = load ptr, ptr %2, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !27
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %353

62:                                               ; preds = %55
  %63 = sitofp i64 %44 to double
  %64 = icmp eq ptr %57, null
  br label %65

65:                                               ; preds = %62, %346
  %66 = phi ptr [ %53, %62 ], [ %347, %346 ]
  %67 = phi i64 [ 0, %62 ], [ %348, %346 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8
  %68 = sitofp i64 %67 to double
  %69 = load double, ptr %6, align 8, !tbaa !142
  %70 = fsub double %68, %69
  %71 = load double, ptr %34, align 8, !tbaa !144
  %72 = fsub double %63, %71
  %73 = call double @hypot(double noundef %70, double noundef %72) #17
  %74 = fptrunc double %73 to float
  %75 = fcmp oeq float %74, 0.000000e+00
  br i1 %75, label %86, label %76

76:                                               ; preds = %65
  %77 = load float, ptr %7, align 4, !tbaa !50
  %78 = fdiv float %77, %74
  %79 = fptoui float %78 to i64
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i64, ptr %8, align 8, !tbaa !29
  %83 = icmp ugt i64 %82, %79
  %84 = add i64 %82, -1
  %85 = select i1 %83, i64 %79, i64 %84
  br label %86

86:                                               ; preds = %81, %76, %65
  %87 = phi i64 [ 1, %65 ], [ 1, %76 ], [ %85, %81 ]
  %88 = load <4 x float>, ptr %35, align 8
  %89 = load float, ptr %36, align 8, !tbaa.struct !119
  %90 = load i32, ptr %10, align 4, !tbaa !10
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, ptr %8, align 8, !tbaa !29
  br label %108

95:                                               ; preds = %86
  %96 = load ptr, ptr %11, align 8, !tbaa !6
  %97 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 6
  %98 = load i32, ptr %97, align 8, !tbaa !58
  %99 = icmp eq i32 %98, 0
  %100 = load i64, ptr %8, align 8, !tbaa !29
  br i1 %99, label %108, label %101

101:                                              ; preds = %95
  %102 = icmp sgt i64 %100, 0
  %103 = extractelement <4 x float> %88, i64 2
  %104 = extractelement <4 x float> %88, i64 3
  %105 = shufflevector <4 x float> %88, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br i1 %102, label %106, label %281

106:                                              ; preds = %101
  %107 = fneg double %72
  br label %210

108:                                              ; preds = %93, %95
  %109 = phi i64 [ %94, %93 ], [ %100, %95 ]
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %161

111:                                              ; preds = %108
  %112 = fneg double %72
  br label %113

113:                                              ; preds = %111, %153
  %114 = phi i64 [ 0, %111 ], [ %156, %153 ]
  %115 = phi float [ 0.000000e+00, %111 ], [ %155, %153 ]
  %116 = phi float [ %89, %111 ], [ %154, %153 ]
  %117 = phi <4 x float> [ %88, %111 ], [ %142, %153 ]
  %118 = load ptr, ptr %12, align 8, !tbaa !6
  %119 = load double, ptr %6, align 8, !tbaa !142
  %120 = load ptr, ptr %13, align 8, !tbaa !6
  %121 = getelementptr inbounds float, ptr %120, i64 %114
  %122 = load float, ptr %121, align 4, !tbaa !50
  %123 = fpext float %122 to double
  %124 = call double @llvm.fmuladd.f64(double %70, double %123, double %119)
  %125 = load ptr, ptr %14, align 8, !tbaa !6
  %126 = getelementptr inbounds float, ptr %125, i64 %114
  %127 = load float, ptr %126, align 4, !tbaa !50
  %128 = fpext float %127 to double
  %129 = call double @llvm.fmuladd.f64(double %112, double %128, double %124)
  %130 = fadd double %129, 5.000000e-01
  %131 = fptosi double %130 to i64
  %132 = load double, ptr %34, align 8, !tbaa !144
  %133 = call double @llvm.fmuladd.f64(double %70, double %128, double %132)
  %134 = call double @llvm.fmuladd.f64(double %72, double %123, double %133)
  %135 = fadd double %134, 5.000000e-01
  %136 = fptosi double %135 to i64
  %137 = load ptr, ptr %5, align 8, !tbaa !6
  %138 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %118, i64 noundef %131, i64 noundef %136, ptr noundef nonnull %21, ptr noundef %137) #17
  %139 = load <4 x i16>, ptr %21, align 8, !tbaa !64
  %140 = uitofp <4 x i16> %139 to <4 x float>
  %141 = shufflevector <4 x float> %140, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %142 = fadd <4 x float> %117, %141
  %143 = load ptr, ptr %11, align 8, !tbaa !6
  %144 = getelementptr inbounds %struct._Image, ptr %143, i64 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !63
  %146 = icmp eq i32 %145, 12
  br i1 %146, label %147, label %153

147:                                              ; preds = %113
  %148 = load ptr, ptr %12, align 8, !tbaa !6
  %149 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %148) #17
  %150 = load i16, ptr %149, align 2, !tbaa !64
  %151 = uitofp i16 %150 to float
  %152 = fadd float %116, %151
  br label %153

153:                                              ; preds = %147, %113
  %154 = phi float [ %152, %147 ], [ %116, %113 ]
  %155 = fadd float %115, 1.000000e+00
  %156 = add nsw i64 %114, %87
  %157 = load i64, ptr %8, align 8, !tbaa !29
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %113, label %159, !llvm.loop !145

159:                                              ; preds = %153
  %160 = load i32, ptr %10, align 4, !tbaa !10
  br label %161

161:                                              ; preds = %159, %108
  %162 = phi i32 [ %90, %108 ], [ %160, %159 ]
  %163 = phi float [ %89, %108 ], [ %154, %159 ]
  %164 = phi float [ 0.000000e+00, %108 ], [ %155, %159 ]
  %165 = phi <4 x float> [ %88, %108 ], [ %142, %159 ]
  %166 = fpext float %164 to double
  %167 = call fastcc double @PerceptibleReciprocal(double noundef %166) #16
  %168 = fptrunc double %167 to float
  %169 = and i32 %162, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %161
  %172 = extractelement <4 x float> %165, i64 0
  %173 = fmul float %172, %168
  %174 = call fastcc zeroext i16 @ClampToQuantum(float noundef %173) #16
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  store i16 %174, ptr %175, align 2, !tbaa !60
  br label %176

176:                                              ; preds = %171, %161
  %177 = and i32 %162, 2
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = extractelement <4 x float> %165, i64 1
  %181 = fmul float %180, %168
  %182 = call fastcc zeroext i16 @ClampToQuantum(float noundef %181) #16
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  store i16 %182, ptr %183, align 2, !tbaa !61
  br label %184

184:                                              ; preds = %179, %176
  %185 = and i32 %162, 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %184
  %188 = extractelement <4 x float> %165, i64 2
  %189 = fmul float %188, %168
  %190 = call fastcc zeroext i16 @ClampToQuantum(float noundef %189) #16
  store i16 %190, ptr %66, align 2, !tbaa !62
  br label %191

191:                                              ; preds = %187, %184
  %192 = and i32 %162, 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = extractelement <4 x float> %165, i64 3
  %196 = fmul float %195, %168
  %197 = call fastcc zeroext i16 @ClampToQuantum(float noundef %196) #16
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 3
  store i16 %197, ptr %198, align 2, !tbaa !59
  br label %199

199:                                              ; preds = %194, %191
  %200 = and i32 %162, 32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %346, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %11, align 8, !tbaa !6
  %204 = getelementptr inbounds %struct._Image, ptr %203, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !63
  %206 = icmp ne i32 %205, 12
  %207 = select i1 %206, i1 true, i1 %64
  br i1 %207, label %346, label %208

208:                                              ; preds = %202
  %209 = fmul float %163, %168
  br label %342

210:                                              ; preds = %106, %272
  %211 = phi double [ 0.000000e+00, %106 ], [ %274, %272 ]
  %212 = phi i64 [ 0, %106 ], [ %276, %272 ]
  %213 = phi float [ 0.000000e+00, %106 ], [ %275, %272 ]
  %214 = phi float [ %103, %106 ], [ %257, %272 ]
  %215 = phi float [ %104, %106 ], [ %259, %272 ]
  %216 = phi float [ %89, %106 ], [ %273, %272 ]
  %217 = phi <2 x float> [ %105, %106 ], [ %252, %272 ]
  %218 = load ptr, ptr %12, align 8, !tbaa !6
  %219 = load double, ptr %6, align 8, !tbaa !142
  %220 = load ptr, ptr %13, align 8, !tbaa !6
  %221 = getelementptr inbounds float, ptr %220, i64 %212
  %222 = load float, ptr %221, align 4, !tbaa !50
  %223 = fpext float %222 to double
  %224 = call double @llvm.fmuladd.f64(double %70, double %223, double %219)
  %225 = load ptr, ptr %14, align 8, !tbaa !6
  %226 = getelementptr inbounds float, ptr %225, i64 %212
  %227 = load float, ptr %226, align 4, !tbaa !50
  %228 = fpext float %227 to double
  %229 = call double @llvm.fmuladd.f64(double %107, double %228, double %224)
  %230 = fadd double %229, 5.000000e-01
  %231 = fptosi double %230 to i64
  %232 = load double, ptr %34, align 8, !tbaa !144
  %233 = call double @llvm.fmuladd.f64(double %70, double %228, double %232)
  %234 = call double @llvm.fmuladd.f64(double %72, double %223, double %233)
  %235 = fadd double %234, 5.000000e-01
  %236 = fptosi double %235 to i64
  %237 = load ptr, ptr %5, align 8, !tbaa !6
  %238 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %218, i64 noundef %231, i64 noundef %236, ptr noundef nonnull %21, ptr noundef %237) #17
  %239 = load i16, ptr %37, align 2, !tbaa !59
  %240 = xor i16 %239, -1
  %241 = uitofp i16 %240 to double
  %242 = fmul double %241, 0x3EF0001000100010
  %243 = fptrunc double %242 to float
  %244 = fpext float %243 to double
  %245 = fpext <2 x float> %217 to <2 x double>
  %246 = load <2 x i16>, ptr %38, align 2, !tbaa !64
  %247 = uitofp <2 x i16> %246 to <2 x double>
  %248 = shufflevector <2 x double> %247, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %249 = insertelement <2 x double> poison, double %244, i64 0
  %250 = shufflevector <2 x double> %249, <2 x double> poison, <2 x i32> zeroinitializer
  %251 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %250, <2 x double> %248, <2 x double> %245)
  %252 = fptrunc <2 x double> %251 to <2 x float>
  %253 = load i16, ptr %21, align 8, !tbaa !62
  %254 = uitofp i16 %253 to double
  %255 = fpext float %214 to double
  %256 = call double @llvm.fmuladd.f64(double %244, double %254, double %255)
  %257 = fptrunc double %256 to float
  %258 = uitofp i16 %239 to float
  %259 = fadd float %215, %258
  %260 = load ptr, ptr %11, align 8, !tbaa !6
  %261 = getelementptr inbounds %struct._Image, ptr %260, i64 0, i32 1
  %262 = load i32, ptr %261, align 4, !tbaa !63
  %263 = icmp eq i32 %262, 12
  br i1 %263, label %264, label %272

264:                                              ; preds = %210
  %265 = load ptr, ptr %12, align 8, !tbaa !6
  %266 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %265) #17
  %267 = load i16, ptr %266, align 2, !tbaa !64
  %268 = uitofp i16 %267 to double
  %269 = fpext float %216 to double
  %270 = call double @llvm.fmuladd.f64(double %244, double %268, double %269)
  %271 = fptrunc double %270 to float
  br label %272

272:                                              ; preds = %264, %210
  %273 = phi float [ %271, %264 ], [ %216, %210 ]
  %274 = fadd double %211, %244
  %275 = fadd float %213, 1.000000e+00
  %276 = add nsw i64 %212, %87
  %277 = load i64, ptr %8, align 8, !tbaa !29
  %278 = icmp slt i64 %276, %277
  br i1 %278, label %210, label %279, !llvm.loop !146

279:                                              ; preds = %272
  %280 = load i32, ptr %10, align 4, !tbaa !10
  br label %281

281:                                              ; preds = %279, %101
  %282 = phi i32 [ %90, %101 ], [ %280, %279 ]
  %283 = phi float [ %89, %101 ], [ %273, %279 ]
  %284 = phi float [ %104, %101 ], [ %259, %279 ]
  %285 = phi float [ %103, %101 ], [ %257, %279 ]
  %286 = phi float [ 0.000000e+00, %101 ], [ %275, %279 ]
  %287 = phi double [ 0.000000e+00, %101 ], [ %274, %279 ]
  %288 = phi <2 x float> [ %105, %101 ], [ %252, %279 ]
  %289 = fcmp olt double %287, 0.000000e+00
  %290 = select i1 %289, double 0.000000e+00, double %287
  %291 = call fastcc double @PerceptibleReciprocal(double noundef %290) #16
  %292 = fpext float %286 to double
  %293 = call fastcc double @PerceptibleReciprocal(double noundef %292) #16
  %294 = fptrunc double %293 to float
  %295 = and i32 %282, 1
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %304, label %297

297:                                              ; preds = %281
  %298 = extractelement <2 x float> %288, i64 0
  %299 = fpext float %298 to double
  %300 = fmul double %291, %299
  %301 = fptrunc double %300 to float
  %302 = call fastcc zeroext i16 @ClampToQuantum(float noundef %301) #16
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  store i16 %302, ptr %303, align 2, !tbaa !60
  br label %304

304:                                              ; preds = %297, %281
  %305 = and i32 %282, 2
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %304
  %308 = extractelement <2 x float> %288, i64 1
  %309 = fpext float %308 to double
  %310 = fmul double %291, %309
  %311 = fptrunc double %310 to float
  %312 = call fastcc zeroext i16 @ClampToQuantum(float noundef %311) #16
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  store i16 %312, ptr %313, align 2, !tbaa !61
  br label %314

314:                                              ; preds = %307, %304
  %315 = and i32 %282, 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %314
  %318 = fpext float %285 to double
  %319 = fmul double %291, %318
  %320 = fptrunc double %319 to float
  %321 = call fastcc zeroext i16 @ClampToQuantum(float noundef %320) #16
  store i16 %321, ptr %66, align 2, !tbaa !62
  br label %322

322:                                              ; preds = %317, %314
  %323 = and i32 %282, 8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %322
  %326 = fmul float %284, %294
  %327 = call fastcc zeroext i16 @ClampToQuantum(float noundef %326) #16
  %328 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 3
  store i16 %327, ptr %328, align 2, !tbaa !59
  br label %329

329:                                              ; preds = %325, %322
  %330 = and i32 %282, 32
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %346, label %332

332:                                              ; preds = %329
  %333 = load ptr, ptr %11, align 8, !tbaa !6
  %334 = getelementptr inbounds %struct._Image, ptr %333, i64 0, i32 1
  %335 = load i32, ptr %334, align 4, !tbaa !63
  %336 = icmp ne i32 %335, 12
  %337 = select i1 %336, i1 true, i1 %64
  br i1 %337, label %346, label %338

338:                                              ; preds = %332
  %339 = fpext float %283 to double
  %340 = fmul double %291, %339
  %341 = fptrunc double %340 to float
  br label %342

342:                                              ; preds = %208, %338
  %343 = phi float [ %341, %338 ], [ %209, %208 ]
  %344 = getelementptr inbounds i16, ptr %57, i64 %67
  %345 = call fastcc zeroext i16 @ClampToQuantum(float noundef %343) #16
  store i16 %345, ptr %344, align 2, !tbaa !64
  br label %346

346:                                              ; preds = %342, %329, %332, %199, %202
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8
  %348 = add nuw nsw i64 %67, 1
  %349 = load ptr, ptr %2, align 8, !tbaa !6
  %350 = getelementptr inbounds %struct._Image, ptr %349, i64 0, i32 7
  %351 = load i64, ptr %350, align 8, !tbaa !27
  %352 = icmp slt i64 %348, %351
  br i1 %352, label %65, label %353, !llvm.loop !147

353:                                              ; preds = %346, %55
  %354 = load ptr, ptr %4, align 8, !tbaa !6
  %355 = load ptr, ptr %5, align 8, !tbaa !6
  %356 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %354, ptr noundef %355) #19
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %353
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %359

359:                                              ; preds = %358, %353
  %360 = load ptr, ptr %11, align 8, !tbaa !6
  %361 = getelementptr inbounds %struct._Image, ptr %360, i64 0, i32 47
  %362 = load ptr, ptr %361, align 8, !tbaa !68
  %363 = icmp eq ptr %362, null
  br i1 %363, label %373, label %364

364:                                              ; preds = %359
  call void @__kmpc_critical(ptr nonnull @2, i32 %28, ptr nonnull @.gomp_critical_user_MagickCore_RotationalBlurImageChannel.var)
  %365 = load ptr, ptr %11, align 8, !tbaa !6
  %366 = load i64, ptr %15, align 8, !tbaa !36
  %367 = add nsw i64 %366, 1
  store i64 %367, ptr %15, align 8, !tbaa !36
  %368 = getelementptr inbounds %struct._Image, ptr %365, i64 0, i32 8
  %369 = load i64, ptr %368, align 8, !tbaa !28
  %370 = call fastcc i32 @SetImageProgress(ptr noundef %365, ptr noundef nonnull @.str.18, i64 noundef %366, i64 noundef %369) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %28, ptr nonnull @.gomp_critical_user_MagickCore_RotationalBlurImageChannel.var)
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %364, %47
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %373

373:                                              ; preds = %372, %359, %364, %43
  %374 = add nsw i64 %44, 1
  %375 = load i64, ptr %18, align 8, !tbaa !29
  %376 = icmp slt i64 %44, %375
  br i1 %376, label %43, label %377

377:                                              ; preds = %373
  %378 = load i64, ptr %17, align 8, !tbaa !29
  br label %379

379:                                              ; preds = %377, %39
  %380 = phi i64 [ %41, %39 ], [ %378, %377 ]
  %381 = phi i64 [ %40, %39 ], [ %375, %377 ]
  %382 = load i64, ptr %19, align 8, !tbaa !29
  %383 = add nsw i64 %382, %380
  store i64 %383, ptr %17, align 8, !tbaa !29
  %384 = add nsw i64 %382, %381
  %385 = call i64 @llvm.smin.i64(i64 %384, i64 %25)
  store i64 %385, ptr %18, align 8, !tbaa !29
  %386 = icmp sgt i64 %383, %385
  br i1 %386, label %387, label %39

387:                                              ; preds = %379, %27
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  br label %388

388:                                              ; preds = %387, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SelectiveBlurImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @SelectiveBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SelectiveBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [4096 x i8], align 16
  %23 = alloca ptr, align 8
  %24 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !6
  store i32 %1, ptr %8, align 4, !tbaa !10
  store double %4, ptr %9, align 8, !tbaa !30
  store ptr %5, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %26 = load i32, ptr %25, align 8, !tbaa !12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %30 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3136, ptr noundef nonnull @.str.2, ptr noundef nonnull %29) #17
  br label %31

31:                                               ; preds = %28, %6
  %32 = tail call i64 @GetOptimalKernelWidth1D(double noundef %2, double noundef %3) #17
  store i64 %32, ptr %20, align 8, !tbaa !29
  %33 = shl i64 %32, 3
  %34 = tail call ptr @AcquireAlignedMemory(i64 noundef %32, i64 noundef %33) #18
  store ptr %34, ptr %14, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %38 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3143, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %37) #17
  br label %184

39:                                               ; preds = %31
  %40 = add i64 %32, -1
  %41 = sdiv i64 %40, 2
  %42 = sub nsw i64 0, %41
  %43 = icmp ugt i64 %32, -9223372036854775808
  br i1 %43, label %74, label %44

44:                                               ; preds = %39
  %45 = tail call double @llvm.fabs.f64(double %3)
  %46 = fcmp olt double %45, 1.000000e-15
  %47 = select i1 %46, double 1.000000e-15, double %3
  %48 = fmul double %47, 2.000000e+00
  %49 = fmul double %47, %48
  %50 = fmul double %47, 0x401921FB54442D18
  %51 = fmul double %47, %50
  %52 = tail call i64 @llvm.abs.i64(i64 %41, i1 true)
  br label %53

53:                                               ; preds = %71, %44
  %54 = phi i64 [ %42, %44 ], [ %72, %71 ]
  %55 = phi i64 [ 0, %44 ], [ %67, %71 ]
  %56 = mul nsw i64 %54, %54
  %57 = sitofp i64 %56 to double
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i64 [ %42, %53 ], [ %69, %58 ]
  %60 = phi i64 [ %55, %53 ], [ %67, %58 ]
  %61 = sitofp i64 %59 to double
  %62 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %57)
  %63 = fneg double %62
  %64 = fdiv double %63, %49
  %65 = tail call double @exp(double noundef %64) #17
  %66 = fdiv double %65, %51
  %67 = add nsw i64 %60, 1
  %68 = getelementptr inbounds double, ptr %34, i64 %60
  store double %66, ptr %68, align 8, !tbaa !30
  %69 = add i64 %59, 1
  %70 = icmp eq i64 %59, %52
  br i1 %70, label %71, label %58, !llvm.loop !148

71:                                               ; preds = %58
  %72 = add i64 %54, 1
  %73 = icmp eq i64 %54, %52
  br i1 %73, label %74, label %53, !llvm.loop !149

74:                                               ; preds = %71, %39
  %75 = load i32, ptr %25, align 8, !tbaa !12
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #8
  %78 = uitofp i64 %32 to double
  %79 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3165, ptr noundef nonnull @.str.66, double noundef %78, double noundef %78) #17
  %80 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #17
  store ptr %80, ptr %23, align 8, !tbaa !6
  %81 = icmp sgt i64 %32, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %77, %98
  %83 = phi i64 [ %101, %98 ], [ 0, %77 ]
  %84 = phi ptr [ %92, %98 ], [ %34, %77 ]
  %85 = load ptr, ptr %23, align 8, !tbaa !6
  store i8 0, ptr %85, align 1, !tbaa !96
  %86 = sitofp i64 %83 to double
  %87 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %22, i64 noundef 4096, ptr noundef nonnull @.str.14, double noundef %86) #17
  %88 = call i32 @ConcatenateString(ptr noundef nonnull %23, ptr noundef nonnull %22) #17
  br label %89

89:                                               ; preds = %82, %89
  %90 = phi i64 [ %96, %89 ], [ 0, %82 ]
  %91 = phi ptr [ %92, %89 ], [ %84, %82 ]
  %92 = getelementptr inbounds double, ptr %91, i64 1
  %93 = load double, ptr %91, align 8, !tbaa !30
  %94 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %22, i64 noundef 4096, ptr noundef nonnull @.str.67, double noundef %93) #17
  %95 = call i32 @ConcatenateString(ptr noundef nonnull %23, ptr noundef nonnull %22) #17
  %96 = add nuw nsw i64 %90, 1
  %97 = icmp slt i64 %96, %32
  br i1 %97, label %89, label %98, !llvm.loop !150

98:                                               ; preds = %89
  %99 = load ptr, ptr %23, align 8, !tbaa !6
  %100 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3180, ptr noundef nonnull @.str.2, ptr noundef %99) #17
  %101 = add nuw nsw i64 %83, 1
  %102 = icmp slt i64 %101, %32
  br i1 %102, label %82, label %103, !llvm.loop !151

103:                                              ; preds = %98
  %104 = load ptr, ptr %23, align 8, !tbaa !6
  br label %105

105:                                              ; preds = %103, %77
  %106 = phi ptr [ %104, %103 ], [ %80, %77 ]
  %107 = call ptr @DestroyString(ptr noundef %106) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %22) #8
  br label %108

108:                                              ; preds = %105, %74
  %109 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #17
  store ptr %109, ptr %15, align 8, !tbaa !6
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %34) #17
  br label %184

113:                                              ; preds = %108
  %114 = call i32 @SetImageStorageClass(ptr noundef nonnull %109, i32 noundef 1) #17
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %34) #17
  %118 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %118) #17
  %119 = call ptr @DestroyImage(ptr noundef nonnull %109) #17
  br label %184

120:                                              ; preds = %113
  %121 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #17
  store ptr %121, ptr %16, align 8, !tbaa !6
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %34) #17
  %125 = call ptr @DestroyImage(ptr noundef nonnull %109) #17
  br label %184

126:                                              ; preds = %120
  %127 = call i32 @TransformImageColorspace(ptr noundef nonnull %121, i32 noundef 2) #17
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._Image, ptr %121, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %130) #17
  %131 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %34) #17
  %132 = call ptr @DestroyImage(ptr noundef nonnull %109) #17
  %133 = call ptr @DestroyImage(ptr noundef nonnull %121) #17
  br label %184

134:                                              ; preds = %126
  store i32 1, ptr %17, align 4, !tbaa !10
  store i64 0, ptr %18, align 8, !tbaa !36
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %136 = load i64, ptr %135, align 8, !tbaa !27
  %137 = lshr i64 %40, 1
  %138 = add i64 %136, 1
  %139 = add i64 %138, %32
  %140 = mul i64 %137, %139
  store i64 %140, ptr %21, align 8, !tbaa !29
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %19) #17
  call fastcc void @SetMagickPixelPacketBias(ptr noundef %0, ptr noundef nonnull %19) #16
  %141 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %5) #17
  store ptr %141, ptr %12, align 8, !tbaa !6
  %142 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %121, ptr noundef %5) #17
  store ptr %142, ptr %13, align 8, !tbaa !6
  %143 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %109, ptr noundef %5) #17
  store ptr %143, ptr %11, align 8, !tbaa !6
  %144 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %145 = load i64, ptr %144, align 8, !tbaa !28
  %146 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %147 = shl i64 %146, 5
  %148 = icmp ugt i64 %145, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %134
  %150 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #17
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %157, label %152

152:                                              ; preds = %149
  %153 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %109) #17
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %161

157:                                              ; preds = %152, %149, %134
  %158 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %159 = icmp ult i64 %158, 2
  %160 = select i1 %159, i64 1, i64 2
  br label %161

161:                                              ; preds = %157, %155
  %162 = phi i64 [ %156, %155 ], [ %160, %157 ]
  %163 = trunc i64 %162 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %24, i32 %163)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 15, ptr nonnull @SelectiveBlurImageChannel.omp_outlined, ptr nonnull %7, ptr nonnull %17, ptr nonnull %12, ptr nonnull %20, ptr nonnull %10, ptr nonnull %13, ptr nonnull %16, ptr nonnull %11, ptr nonnull %15, ptr nonnull %19, ptr nonnull %14, ptr nonnull %21, ptr nonnull %8, ptr nonnull %9, ptr nonnull %18)
  %164 = load ptr, ptr %7, align 8, !tbaa !6
  %165 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 77
  %166 = load i32, ptr %165, align 8, !tbaa !37
  %167 = load ptr, ptr %15, align 8, !tbaa !6
  %168 = getelementptr inbounds %struct._Image, ptr %167, i64 0, i32 77
  store i32 %166, ptr %168, align 8, !tbaa !37
  %169 = load ptr, ptr %11, align 8, !tbaa !6
  %170 = call ptr @DestroyCacheView(ptr noundef %169) #17
  store ptr %170, ptr %11, align 8, !tbaa !6
  %171 = load ptr, ptr %13, align 8, !tbaa !6
  %172 = call ptr @DestroyCacheView(ptr noundef %171) #17
  store ptr %172, ptr %13, align 8, !tbaa !6
  %173 = load ptr, ptr %12, align 8, !tbaa !6
  %174 = call ptr @DestroyCacheView(ptr noundef %173) #17
  store ptr %174, ptr %12, align 8, !tbaa !6
  %175 = load ptr, ptr %16, align 8, !tbaa !6
  %176 = call ptr @DestroyImage(ptr noundef %175) #17
  store ptr %176, ptr %16, align 8, !tbaa !6
  %177 = load ptr, ptr %14, align 8, !tbaa !6
  %178 = call ptr @RelinquishAlignedMemory(ptr noundef %177) #17
  store ptr %178, ptr %14, align 8, !tbaa !6
  %179 = load i32, ptr %17, align 4, !tbaa !10
  %180 = icmp eq i32 %179, 0
  %181 = load ptr, ptr %15, align 8, !tbaa !6
  br i1 %180, label %182, label %184

182:                                              ; preds = %161
  %183 = call ptr @DestroyImage(ptr noundef %181) #17
  br label %184

184:                                              ; preds = %161, %182, %129, %123, %116, %111, %36
  %185 = phi ptr [ null, %36 ], [ null, %111 ], [ null, %116 ], [ null, %123 ], [ null, %129 ], [ %183, %182 ], [ %181, %161 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  ret ptr %185
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SelectiveBlurImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %13, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %14, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %15, ptr nocapture noundef nonnull align 8 dereferenceable(8) %16) #7 {
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = load ptr, ptr %2, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !28
  %25 = add nsw i64 %24, -1
  %26 = icmp sgt i64 %24, 0
  br i1 %26, label %27, label %686

27:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  store i64 0, ptr %18, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8
  store i64 %25, ptr %19, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #8
  store i64 1, ptr %20, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #8
  store i32 0, ptr %21, align 4, !tbaa !10
  %28 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %28, i32 33, ptr nonnull %21, ptr nonnull %18, ptr nonnull %19, ptr nonnull %20, i64 1, i64 4)
  %29 = load i64, ptr %19, align 8
  %30 = call i64 @llvm.smin.i64(i64 %29, i64 %25)
  store i64 %30, ptr %19, align 8, !tbaa !29
  %31 = load i64, ptr %18, align 8, !tbaa !29
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %685, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  br label %38

38:                                               ; preds = %33, %677
  %39 = phi i64 [ %30, %33 ], [ %683, %677 ]
  %40 = phi i64 [ %31, %33 ], [ %681, %677 ]
  %41 = icmp sgt i64 %40, %39
  br i1 %41, label %677, label %42

42:                                               ; preds = %38, %671
  %43 = phi i64 [ %672, %671 ], [ %40, %38 ]
  %44 = load i32, ptr %3, align 4, !tbaa !10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %671, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %4, align 8, !tbaa !6
  %48 = load i64, ptr %5, align 8, !tbaa !29
  %49 = add i64 %48, -1
  %50 = sdiv i64 %49, -2
  %51 = lshr i64 %49, 1
  %52 = sub nsw i64 %43, %51
  %53 = load ptr, ptr %2, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !27
  %56 = add i64 %55, %48
  %57 = load ptr, ptr %6, align 8, !tbaa !6
  %58 = call ptr @GetCacheViewVirtualPixels(ptr noundef %47, i64 noundef %50, i64 noundef %52, i64 noundef %56, i64 noundef %48, ptr noundef %57) #19
  %59 = load ptr, ptr %7, align 8, !tbaa !6
  %60 = load i64, ptr %5, align 8, !tbaa !29
  %61 = add i64 %60, -1
  %62 = sdiv i64 %61, -2
  %63 = lshr i64 %61, 1
  %64 = sub nsw i64 %43, %63
  %65 = load ptr, ptr %8, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 7
  %67 = load i64, ptr %66, align 8, !tbaa !27
  %68 = add i64 %67, %60
  %69 = load ptr, ptr %6, align 8, !tbaa !6
  %70 = call ptr @GetCacheViewVirtualPixels(ptr noundef %59, i64 noundef %62, i64 noundef %64, i64 noundef %68, i64 noundef %60, ptr noundef %69) #19
  %71 = load ptr, ptr %9, align 8, !tbaa !6
  %72 = load ptr, ptr %10, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct._Image, ptr %72, i64 0, i32 7
  %74 = load i64, ptr %73, align 8, !tbaa !27
  %75 = load ptr, ptr %6, align 8, !tbaa !6
  %76 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %71, i64 noundef 0, i64 noundef %43, i64 noundef %74, i64 noundef 1, ptr noundef %75) #19
  %77 = icmp eq ptr %58, null
  %78 = icmp eq ptr %70, null
  %79 = select i1 %77, i1 true, i1 %78
  %80 = icmp eq ptr %76, null
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %670, label %82

82:                                               ; preds = %46
  %83 = load ptr, ptr %4, align 8, !tbaa !6
  %84 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %83) #17
  %85 = load ptr, ptr %9, align 8, !tbaa !6
  %86 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %85) #17
  %87 = load ptr, ptr %2, align 8, !tbaa !6
  %88 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 7
  %89 = load i64, ptr %88, align 8, !tbaa !27
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %651

91:                                               ; preds = %82
  %92 = icmp eq ptr %84, null
  %93 = icmp eq ptr %86, null
  br label %94

94:                                               ; preds = %91, %642
  %95 = phi ptr [ %87, %91 ], [ %643, %642 ]
  %96 = phi i64 [ 0, %91 ], [ %647, %642 ]
  %97 = phi ptr [ %76, %91 ], [ %646, %642 ]
  %98 = phi ptr [ %70, %91 ], [ %645, %642 ]
  %99 = phi ptr [ %58, %91 ], [ %644, %642 ]
  %100 = load <4 x float>, ptr %34, align 8
  %101 = shufflevector <4 x float> %100, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %102 = load <2 x float>, ptr %35, align 4, !tbaa !50
  %103 = fpext <2 x float> %102 to <2 x double>
  %104 = shufflevector <2 x double> %103, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %105 = load float, ptr %36, align 4, !tbaa !57
  %106 = insertelement <2 x float> %101, float %105, i64 1
  %107 = fpext <2 x float> %106 to <2 x double>
  %108 = load float, ptr %37, align 8, !tbaa !52
  %109 = fpext float %108 to double
  %110 = load ptr, ptr %12, align 8, !tbaa !6
  %111 = load i64, ptr %13, align 8, !tbaa !29
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 %111
  %113 = call float @GetPixelIntensity(ptr noundef nonnull %95, ptr noundef %112) #19
  %114 = load i32, ptr %14, align 4, !tbaa !10
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %94
  %118 = load ptr, ptr %2, align 8, !tbaa !6
  %119 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 6
  %120 = load i32, ptr %119, align 8, !tbaa !58
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load i64, ptr %5, align 8, !tbaa !29
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %372, label %444

125:                                              ; preds = %117, %94
  %126 = load i64, ptr %5, align 8, !tbaa !29
  %127 = icmp sgt i64 %126, 0
  %128 = extractelement <2 x double> %107, i64 0
  br i1 %127, label %129, label %190

129:                                              ; preds = %125, %175
  %130 = phi i64 [ %176, %175 ], [ %126, %125 ]
  %131 = phi i64 [ %186, %175 ], [ 0, %125 ]
  %132 = phi i64 [ %185, %175 ], [ 0, %125 ]
  %133 = phi ptr [ %179, %175 ], [ %110, %125 ]
  %134 = phi double [ %178, %175 ], [ 0.000000e+00, %125 ]
  %135 = phi double [ %177, %175 ], [ %128, %125 ]
  %136 = phi <2 x double> [ %180, %175 ], [ %104, %125 ]
  %137 = getelementptr %struct._PixelPacket, ptr %98, i64 %132
  %138 = icmp sgt i64 %130, 0
  br i1 %138, label %139, label %175

139:                                              ; preds = %129, %167
  %140 = phi i64 [ %172, %167 ], [ 0, %129 ]
  %141 = phi ptr [ %171, %167 ], [ %133, %129 ]
  %142 = phi double [ %169, %167 ], [ %134, %129 ]
  %143 = phi double [ %168, %167 ], [ %135, %129 ]
  %144 = phi <2 x double> [ %170, %167 ], [ %136, %129 ]
  %145 = load ptr, ptr %8, align 8, !tbaa !6
  %146 = getelementptr %struct._PixelPacket, ptr %137, i64 %140
  %147 = call float @GetPixelIntensity(ptr noundef %145, ptr noundef %146) #19
  %148 = fsub float %147, %113
  %149 = call float @llvm.fabs.f32(float %148)
  %150 = fpext float %149 to double
  %151 = load double, ptr %15, align 8, !tbaa !30
  %152 = fcmp ogt double %151, %150
  br i1 %152, label %153, label %167

153:                                              ; preds = %139
  %154 = load double, ptr %141, align 8, !tbaa !30
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 %140
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 %132
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 %132, i32 2
  %158 = load i16, ptr %157, align 2, !tbaa !60
  %159 = uitofp i16 %158 to double
  %160 = call double @llvm.fmuladd.f64(double %154, double %159, double %143)
  %161 = load <2 x i16>, ptr %156, align 2, !tbaa !64
  %162 = uitofp <2 x i16> %161 to <2 x double>
  %163 = insertelement <2 x double> poison, double %154, i64 0
  %164 = shufflevector <2 x double> %163, <2 x double> poison, <2 x i32> zeroinitializer
  %165 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %164, <2 x double> %162, <2 x double> %144)
  %166 = fadd double %142, %154
  br label %167

167:                                              ; preds = %153, %139
  %168 = phi double [ %160, %153 ], [ %143, %139 ]
  %169 = phi double [ %166, %153 ], [ %142, %139 ]
  %170 = phi <2 x double> [ %165, %153 ], [ %144, %139 ]
  %171 = getelementptr inbounds double, ptr %141, i64 1
  %172 = add nuw nsw i64 %140, 1
  %173 = load i64, ptr %5, align 8, !tbaa !29
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %139, label %175, !llvm.loop !152

175:                                              ; preds = %167, %129
  %176 = phi i64 [ %130, %129 ], [ %173, %167 ]
  %177 = phi double [ %135, %129 ], [ %168, %167 ]
  %178 = phi double [ %134, %129 ], [ %169, %167 ]
  %179 = phi ptr [ %133, %129 ], [ %171, %167 ]
  %180 = phi <2 x double> [ %136, %129 ], [ %170, %167 ]
  %181 = load ptr, ptr %2, align 8, !tbaa !6
  %182 = getelementptr inbounds %struct._Image, ptr %181, i64 0, i32 7
  %183 = load i64, ptr %182, align 8, !tbaa !27
  %184 = add i64 %176, %132
  %185 = add i64 %184, %183
  %186 = add nuw nsw i64 %131, 1
  %187 = icmp slt i64 %186, %176
  br i1 %187, label %129, label %188, !llvm.loop !153

188:                                              ; preds = %175
  %189 = load i32, ptr %14, align 4, !tbaa !10
  br label %190

190:                                              ; preds = %188, %125
  %191 = phi i32 [ %114, %125 ], [ %189, %188 ]
  %192 = phi i64 [ %126, %125 ], [ %176, %188 ]
  %193 = phi double [ %128, %125 ], [ %177, %188 ]
  %194 = phi double [ 0.000000e+00, %125 ], [ %178, %188 ]
  %195 = phi ptr [ %110, %125 ], [ %179, %188 ]
  %196 = phi <2 x double> [ %104, %125 ], [ %180, %188 ]
  %197 = fcmp olt double %194, 0.000000e+00
  %198 = select i1 %197, double 0.000000e+00, double %194
  %199 = fcmp une double %198, 0.000000e+00
  br i1 %199, label %200, label %226

200:                                              ; preds = %190
  %201 = call fastcc double @PerceptibleReciprocal(double noundef %198) #16
  %202 = and i32 %191, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  %205 = fmul double %193, %201
  %206 = fptrunc double %205 to float
  %207 = call fastcc zeroext i16 @ClampToQuantum(float noundef %206) #16
  %208 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %207, ptr %208, align 2, !tbaa !60
  br label %209

209:                                              ; preds = %204, %200
  %210 = and i32 %191, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %209
  %213 = extractelement <2 x double> %196, i64 1
  %214 = fmul double %213, %201
  %215 = fptrunc double %214 to float
  %216 = call fastcc zeroext i16 @ClampToQuantum(float noundef %215) #16
  %217 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  store i16 %216, ptr %217, align 2, !tbaa !61
  br label %218

218:                                              ; preds = %212, %209
  %219 = and i32 %191, 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = extractelement <2 x double> %196, i64 0
  %223 = fmul double %222, %201
  %224 = fptrunc double %223 to float
  %225 = call fastcc zeroext i16 @ClampToQuantum(float noundef %224) #16
  store i16 %225, ptr %97, align 2, !tbaa !62
  br label %226

226:                                              ; preds = %218, %221, %190
  %227 = and i32 %191, 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %296, label %229

229:                                              ; preds = %226
  %230 = icmp sgt i64 %192, 0
  %231 = extractelement <2 x double> %107, i64 1
  br i1 %230, label %232, label %283

232:                                              ; preds = %229, %269
  %233 = phi i64 [ %270, %269 ], [ %192, %229 ]
  %234 = phi i64 [ %279, %269 ], [ 0, %229 ]
  %235 = phi i64 [ %278, %269 ], [ 0, %229 ]
  %236 = phi ptr [ %273, %269 ], [ %195, %229 ]
  %237 = phi double [ %272, %269 ], [ 0.000000e+00, %229 ]
  %238 = phi double [ %271, %269 ], [ %231, %229 ]
  %239 = getelementptr %struct._PixelPacket, ptr %98, i64 %235
  %240 = getelementptr %struct._PixelPacket, ptr %99, i64 %235, i32 3
  %241 = icmp sgt i64 %233, 0
  br i1 %241, label %242, label %269

242:                                              ; preds = %232, %262
  %243 = phi i64 [ %266, %262 ], [ 0, %232 ]
  %244 = phi ptr [ %265, %262 ], [ %236, %232 ]
  %245 = phi double [ %264, %262 ], [ %237, %232 ]
  %246 = phi double [ %263, %262 ], [ %238, %232 ]
  %247 = load ptr, ptr %8, align 8, !tbaa !6
  %248 = getelementptr %struct._PixelPacket, ptr %239, i64 %243
  %249 = call float @GetPixelIntensity(ptr noundef %247, ptr noundef %248) #19
  %250 = fsub float %249, %113
  %251 = call float @llvm.fabs.f32(float %250)
  %252 = fpext float %251 to double
  %253 = load double, ptr %15, align 8, !tbaa !30
  %254 = fcmp ogt double %253, %252
  br i1 %254, label %255, label %262

255:                                              ; preds = %242
  %256 = load double, ptr %244, align 8, !tbaa !30
  %257 = getelementptr %struct._PixelPacket, ptr %240, i64 %243
  %258 = load i16, ptr %257, align 2, !tbaa !59
  %259 = uitofp i16 %258 to double
  %260 = call double @llvm.fmuladd.f64(double %256, double %259, double %246)
  %261 = fadd double %245, %256
  br label %262

262:                                              ; preds = %255, %242
  %263 = phi double [ %260, %255 ], [ %246, %242 ]
  %264 = phi double [ %261, %255 ], [ %245, %242 ]
  %265 = getelementptr inbounds double, ptr %244, i64 1
  %266 = add nuw nsw i64 %243, 1
  %267 = load i64, ptr %5, align 8, !tbaa !29
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %242, label %269, !llvm.loop !154

269:                                              ; preds = %262, %232
  %270 = phi i64 [ %233, %232 ], [ %267, %262 ]
  %271 = phi double [ %238, %232 ], [ %263, %262 ]
  %272 = phi double [ %237, %232 ], [ %264, %262 ]
  %273 = phi ptr [ %236, %232 ], [ %265, %262 ]
  %274 = load ptr, ptr %2, align 8, !tbaa !6
  %275 = getelementptr inbounds %struct._Image, ptr %274, i64 0, i32 7
  %276 = load i64, ptr %275, align 8, !tbaa !27
  %277 = add i64 %270, %235
  %278 = add i64 %277, %276
  %279 = add nuw nsw i64 %234, 1
  %280 = icmp slt i64 %279, %270
  br i1 %280, label %232, label %281, !llvm.loop !155

281:                                              ; preds = %269
  %282 = load i32, ptr %14, align 4, !tbaa !10
  br label %283

283:                                              ; preds = %281, %229
  %284 = phi i32 [ %191, %229 ], [ %282, %281 ]
  %285 = phi i64 [ %192, %229 ], [ %270, %281 ]
  %286 = phi double [ %231, %229 ], [ %271, %281 ]
  %287 = phi double [ 0.000000e+00, %229 ], [ %272, %281 ]
  %288 = phi ptr [ %195, %229 ], [ %273, %281 ]
  %289 = fcmp olt double %287, 0.000000e+00
  %290 = select i1 %289, double 0.000000e+00, double %287
  %291 = call fastcc double @PerceptibleReciprocal(double noundef %290) #16
  %292 = fmul double %286, %291
  %293 = fptrunc double %292 to float
  %294 = call fastcc zeroext i16 @ClampToQuantum(float noundef %293) #16
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  store i16 %294, ptr %295, align 2, !tbaa !59
  br label %296

296:                                              ; preds = %283, %226
  %297 = phi i64 [ %285, %283 ], [ %192, %226 ]
  %298 = phi i32 [ %284, %283 ], [ %191, %226 ]
  %299 = phi ptr [ %288, %283 ], [ %195, %226 ]
  %300 = and i32 %298, 32
  %301 = icmp eq i32 %300, 0
  %302 = load ptr, ptr %2, align 8, !tbaa !6
  br i1 %301, label %642, label %303

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct._Image, ptr %302, i64 0, i32 1
  %305 = load i32, ptr %304, align 4, !tbaa !63
  %306 = icmp eq i32 %305, 12
  br i1 %306, label %307, label %642

307:                                              ; preds = %303
  %308 = icmp sgt i64 %297, 0
  br i1 %308, label %309, label %368

309:                                              ; preds = %307
  %310 = getelementptr inbounds i16, ptr %84, i64 %96
  br label %311

311:                                              ; preds = %309, %356
  %312 = phi i64 [ %297, %309 ], [ %357, %356 ]
  %313 = phi ptr [ %302, %309 ], [ %358, %356 ]
  %314 = phi i64 [ 0, %309 ], [ %366, %356 ]
  %315 = phi i64 [ 0, %309 ], [ %365, %356 ]
  %316 = phi ptr [ %299, %309 ], [ %361, %356 ]
  %317 = phi double [ 0.000000e+00, %309 ], [ %360, %356 ]
  %318 = phi double [ %109, %309 ], [ %359, %356 ]
  %319 = getelementptr %struct._PixelPacket, ptr %98, i64 %315
  %320 = icmp sgt i64 %312, 0
  br i1 %320, label %321, label %356

321:                                              ; preds = %311
  %322 = getelementptr i16, ptr %310, i64 %315
  br label %323

323:                                              ; preds = %321, %347
  %324 = phi i64 [ 0, %321 ], [ %351, %347 ]
  %325 = phi ptr [ %316, %321 ], [ %350, %347 ]
  %326 = phi double [ %317, %321 ], [ %349, %347 ]
  %327 = phi double [ %318, %321 ], [ %348, %347 ]
  %328 = load ptr, ptr %8, align 8, !tbaa !6
  %329 = getelementptr %struct._PixelPacket, ptr %319, i64 %324
  %330 = call float @GetPixelIntensity(ptr noundef %328, ptr noundef %329) #19
  %331 = fsub float %330, %113
  %332 = call float @llvm.fabs.f32(float %331)
  %333 = fpext float %332 to double
  %334 = load double, ptr %15, align 8, !tbaa !30
  %335 = fcmp ogt double %334, %333
  br i1 %335, label %336, label %347

336:                                              ; preds = %323
  %337 = load double, ptr %325, align 8, !tbaa !30
  br i1 %92, label %342, label %338

338:                                              ; preds = %336
  %339 = getelementptr i16, ptr %322, i64 %324
  %340 = load i16, ptr %339, align 2, !tbaa !64
  %341 = zext i16 %340 to i32
  br label %342

342:                                              ; preds = %336, %338
  %343 = phi i32 [ %341, %338 ], [ 0, %336 ]
  %344 = sitofp i32 %343 to double
  %345 = call double @llvm.fmuladd.f64(double %337, double %344, double %327)
  %346 = fadd double %326, %337
  br label %347

347:                                              ; preds = %342, %323
  %348 = phi double [ %345, %342 ], [ %327, %323 ]
  %349 = phi double [ %346, %342 ], [ %326, %323 ]
  %350 = getelementptr inbounds double, ptr %325, i64 1
  %351 = add nuw nsw i64 %324, 1
  %352 = load i64, ptr %5, align 8, !tbaa !29
  %353 = icmp slt i64 %351, %352
  br i1 %353, label %323, label %354, !llvm.loop !156

354:                                              ; preds = %347
  %355 = load ptr, ptr %2, align 8, !tbaa !6
  br label %356

356:                                              ; preds = %354, %311
  %357 = phi i64 [ %312, %311 ], [ %352, %354 ]
  %358 = phi ptr [ %313, %311 ], [ %355, %354 ]
  %359 = phi double [ %318, %311 ], [ %348, %354 ]
  %360 = phi double [ %317, %311 ], [ %349, %354 ]
  %361 = phi ptr [ %316, %311 ], [ %350, %354 ]
  %362 = getelementptr inbounds %struct._Image, ptr %358, i64 0, i32 7
  %363 = load i64, ptr %362, align 8, !tbaa !27
  %364 = add i64 %357, %315
  %365 = add i64 %364, %363
  %366 = add nuw nsw i64 %314, 1
  %367 = icmp slt i64 %366, %357
  br i1 %367, label %311, label %368, !llvm.loop !157

368:                                              ; preds = %356, %307
  %369 = phi ptr [ %302, %307 ], [ %358, %356 ]
  %370 = phi double [ %109, %307 ], [ %359, %356 ]
  %371 = phi double [ 0.000000e+00, %307 ], [ %360, %356 ]
  br i1 %93, label %642, label %631

372:                                              ; preds = %122, %429
  %373 = phi i64 [ %430, %429 ], [ %123, %122 ]
  %374 = phi ptr [ %431, %429 ], [ %118, %122 ]
  %375 = phi i64 [ %440, %429 ], [ 0, %122 ]
  %376 = phi i64 [ %439, %429 ], [ 0, %122 ]
  %377 = phi ptr [ %433, %429 ], [ %110, %122 ]
  %378 = phi double [ %432, %429 ], [ 0.000000e+00, %122 ]
  %379 = phi <2 x double> [ %434, %429 ], [ %107, %122 ]
  %380 = phi <2 x double> [ %435, %429 ], [ %104, %122 ]
  %381 = getelementptr %struct._PixelPacket, ptr %98, i64 %376
  %382 = icmp sgt i64 %373, 0
  br i1 %382, label %383, label %429

383:                                              ; preds = %372, %419
  %384 = phi i64 [ %424, %419 ], [ 0, %372 ]
  %385 = phi ptr [ %423, %419 ], [ %377, %372 ]
  %386 = phi double [ %420, %419 ], [ %378, %372 ]
  %387 = phi <2 x double> [ %421, %419 ], [ %379, %372 ]
  %388 = phi <2 x double> [ %422, %419 ], [ %380, %372 ]
  %389 = load ptr, ptr %8, align 8, !tbaa !6
  %390 = getelementptr %struct._PixelPacket, ptr %381, i64 %384
  %391 = call float @GetPixelIntensity(ptr noundef %389, ptr noundef %390) #19
  %392 = fsub float %391, %113
  %393 = call float @llvm.fabs.f32(float %392)
  %394 = fpext float %393 to double
  %395 = load double, ptr %15, align 8, !tbaa !30
  %396 = fcmp ogt double %395, %394
  br i1 %396, label %397, label %419

397:                                              ; preds = %383
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 %384
  %399 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 %376
  %400 = load double, ptr %385, align 8, !tbaa !30
  %401 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 %376, i32 2
  %402 = load <2 x i16>, ptr %399, align 2, !tbaa !64
  %403 = uitofp <2 x i16> %402 to <2 x double>
  %404 = load <2 x i16>, ptr %401, align 2, !tbaa !64
  %405 = extractelement <2 x i16> %404, i64 1
  %406 = xor i16 %405, -1
  %407 = uitofp i16 %406 to double
  %408 = fmul double %407, 0x3EF0001000100010
  %409 = fptrunc double %408 to float
  %410 = fpext float %409 to double
  %411 = fmul double %400, %410
  %412 = uitofp <2 x i16> %404 to <2 x double>
  %413 = insertelement <2 x double> poison, double %411, i64 0
  %414 = shufflevector <2 x double> %413, <2 x double> poison, <2 x i32> zeroinitializer
  %415 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %414, <2 x double> %403, <2 x double> %388)
  %416 = insertelement <2 x double> %413, double %400, i64 1
  %417 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %416, <2 x double> %412, <2 x double> %387)
  %418 = call double @llvm.fmuladd.f64(double %400, double %410, double %386)
  br label %419

419:                                              ; preds = %397, %383
  %420 = phi double [ %418, %397 ], [ %386, %383 ]
  %421 = phi <2 x double> [ %417, %397 ], [ %387, %383 ]
  %422 = phi <2 x double> [ %415, %397 ], [ %388, %383 ]
  %423 = getelementptr inbounds double, ptr %385, i64 1
  %424 = add nuw nsw i64 %384, 1
  %425 = load i64, ptr %5, align 8, !tbaa !29
  %426 = icmp slt i64 %424, %425
  br i1 %426, label %383, label %427, !llvm.loop !158

427:                                              ; preds = %419
  %428 = load ptr, ptr %2, align 8, !tbaa !6
  br label %429

429:                                              ; preds = %427, %372
  %430 = phi i64 [ %373, %372 ], [ %425, %427 ]
  %431 = phi ptr [ %374, %372 ], [ %428, %427 ]
  %432 = phi double [ %378, %372 ], [ %420, %427 ]
  %433 = phi ptr [ %377, %372 ], [ %423, %427 ]
  %434 = phi <2 x double> [ %379, %372 ], [ %421, %427 ]
  %435 = phi <2 x double> [ %380, %372 ], [ %422, %427 ]
  %436 = getelementptr inbounds %struct._Image, ptr %431, i64 0, i32 7
  %437 = load i64, ptr %436, align 8, !tbaa !27
  %438 = add i64 %430, %376
  %439 = add i64 %438, %437
  %440 = add nuw nsw i64 %375, 1
  %441 = icmp slt i64 %440, %430
  br i1 %441, label %372, label %442, !llvm.loop !159

442:                                              ; preds = %429
  %443 = load i32, ptr %14, align 4, !tbaa !10
  br label %444

444:                                              ; preds = %442, %122
  %445 = phi i32 [ %114, %122 ], [ %443, %442 ]
  %446 = phi ptr [ %118, %122 ], [ %431, %442 ]
  %447 = phi i64 [ %123, %122 ], [ %430, %442 ]
  %448 = phi double [ 0.000000e+00, %122 ], [ %432, %442 ]
  %449 = phi ptr [ %110, %122 ], [ %433, %442 ]
  %450 = phi <2 x double> [ %107, %122 ], [ %434, %442 ]
  %451 = phi <2 x double> [ %104, %122 ], [ %435, %442 ]
  %452 = fcmp olt double %448, 0.000000e+00
  %453 = select i1 %452, double 0.000000e+00, double %448
  %454 = fcmp une double %453, 0.000000e+00
  br i1 %454, label %455, label %482

455:                                              ; preds = %444
  %456 = call fastcc double @PerceptibleReciprocal(double noundef %453) #16
  %457 = and i32 %445, 1
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %465, label %459

459:                                              ; preds = %455
  %460 = extractelement <2 x double> %450, i64 0
  %461 = fmul double %460, %456
  %462 = fptrunc double %461 to float
  %463 = call fastcc zeroext i16 @ClampToQuantum(float noundef %462) #16
  %464 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %463, ptr %464, align 2, !tbaa !60
  br label %465

465:                                              ; preds = %459, %455
  %466 = and i32 %445, 2
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %474, label %468

468:                                              ; preds = %465
  %469 = extractelement <2 x double> %451, i64 1
  %470 = fmul double %469, %456
  %471 = fptrunc double %470 to float
  %472 = call fastcc zeroext i16 @ClampToQuantum(float noundef %471) #16
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  store i16 %472, ptr %473, align 2, !tbaa !61
  br label %474

474:                                              ; preds = %468, %465
  %475 = and i32 %445, 4
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %482, label %477

477:                                              ; preds = %474
  %478 = extractelement <2 x double> %451, i64 0
  %479 = fmul double %478, %456
  %480 = fptrunc double %479 to float
  %481 = call fastcc zeroext i16 @ClampToQuantum(float noundef %480) #16
  store i16 %481, ptr %97, align 2, !tbaa !62
  br label %482

482:                                              ; preds = %474, %477, %444
  %483 = and i32 %445, 8
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %546, label %485

485:                                              ; preds = %482
  %486 = icmp sgt i64 %447, 0
  %487 = extractelement <2 x double> %450, i64 1
  br i1 %486, label %488, label %537

488:                                              ; preds = %485, %524
  %489 = phi i64 [ %525, %524 ], [ %447, %485 ]
  %490 = phi ptr [ %526, %524 ], [ %446, %485 ]
  %491 = phi i64 [ %533, %524 ], [ 0, %485 ]
  %492 = phi i64 [ %532, %524 ], [ 0, %485 ]
  %493 = phi ptr [ %528, %524 ], [ %449, %485 ]
  %494 = phi double [ %527, %524 ], [ %487, %485 ]
  %495 = getelementptr %struct._PixelPacket, ptr %98, i64 %492
  %496 = getelementptr %struct._PixelPacket, ptr %99, i64 %492, i32 3
  %497 = icmp sgt i64 %489, 0
  br i1 %497, label %498, label %524

498:                                              ; preds = %488, %516
  %499 = phi i64 [ %519, %516 ], [ 0, %488 ]
  %500 = phi ptr [ %518, %516 ], [ %493, %488 ]
  %501 = phi double [ %517, %516 ], [ %494, %488 ]
  %502 = load ptr, ptr %8, align 8, !tbaa !6
  %503 = getelementptr %struct._PixelPacket, ptr %495, i64 %499
  %504 = call float @GetPixelIntensity(ptr noundef %502, ptr noundef %503) #19
  %505 = fsub float %504, %113
  %506 = call float @llvm.fabs.f32(float %505)
  %507 = fpext float %506 to double
  %508 = load double, ptr %15, align 8, !tbaa !30
  %509 = fcmp ogt double %508, %507
  br i1 %509, label %510, label %516

510:                                              ; preds = %498
  %511 = load double, ptr %500, align 8, !tbaa !30
  %512 = getelementptr %struct._PixelPacket, ptr %496, i64 %499
  %513 = load i16, ptr %512, align 2, !tbaa !59
  %514 = uitofp i16 %513 to double
  %515 = call double @llvm.fmuladd.f64(double %511, double %514, double %501)
  br label %516

516:                                              ; preds = %510, %498
  %517 = phi double [ %515, %510 ], [ %501, %498 ]
  %518 = getelementptr inbounds double, ptr %500, i64 1
  %519 = add nuw nsw i64 %499, 1
  %520 = load i64, ptr %5, align 8, !tbaa !29
  %521 = icmp slt i64 %519, %520
  br i1 %521, label %498, label %522, !llvm.loop !160

522:                                              ; preds = %516
  %523 = load ptr, ptr %2, align 8, !tbaa !6
  br label %524

524:                                              ; preds = %522, %488
  %525 = phi i64 [ %489, %488 ], [ %520, %522 ]
  %526 = phi ptr [ %490, %488 ], [ %523, %522 ]
  %527 = phi double [ %494, %488 ], [ %517, %522 ]
  %528 = phi ptr [ %493, %488 ], [ %518, %522 ]
  %529 = getelementptr inbounds %struct._Image, ptr %526, i64 0, i32 7
  %530 = load i64, ptr %529, align 8, !tbaa !27
  %531 = add i64 %525, %492
  %532 = add i64 %531, %530
  %533 = add nuw nsw i64 %491, 1
  %534 = icmp slt i64 %533, %525
  br i1 %534, label %488, label %535, !llvm.loop !161

535:                                              ; preds = %524
  %536 = load i32, ptr %14, align 4, !tbaa !10
  br label %537

537:                                              ; preds = %535, %485
  %538 = phi i32 [ %445, %485 ], [ %536, %535 ]
  %539 = phi i64 [ %447, %485 ], [ %525, %535 ]
  %540 = phi ptr [ %446, %485 ], [ %526, %535 ]
  %541 = phi double [ %487, %485 ], [ %527, %535 ]
  %542 = phi ptr [ %449, %485 ], [ %528, %535 ]
  %543 = fptrunc double %541 to float
  %544 = call fastcc zeroext i16 @ClampToQuantum(float noundef %543) #16
  %545 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  store i16 %544, ptr %545, align 2, !tbaa !59
  br label %546

546:                                              ; preds = %537, %482
  %547 = phi i64 [ %539, %537 ], [ %447, %482 ]
  %548 = phi ptr [ %540, %537 ], [ %446, %482 ]
  %549 = phi i32 [ %538, %537 ], [ %445, %482 ]
  %550 = phi ptr [ %542, %537 ], [ %449, %482 ]
  %551 = and i32 %549, 32
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %642, label %553

553:                                              ; preds = %546
  %554 = getelementptr inbounds %struct._Image, ptr %548, i64 0, i32 1
  %555 = load i32, ptr %554, align 4, !tbaa !63
  %556 = icmp eq i32 %555, 12
  br i1 %556, label %557, label %642

557:                                              ; preds = %553
  %558 = icmp sgt i64 %547, 0
  br i1 %558, label %559, label %627

559:                                              ; preds = %557
  %560 = getelementptr inbounds i16, ptr %84, i64 %96
  br label %561

561:                                              ; preds = %559, %615
  %562 = phi i64 [ %547, %559 ], [ %616, %615 ]
  %563 = phi ptr [ %548, %559 ], [ %617, %615 ]
  %564 = phi i64 [ 0, %559 ], [ %625, %615 ]
  %565 = phi i64 [ 0, %559 ], [ %624, %615 ]
  %566 = phi ptr [ %550, %559 ], [ %620, %615 ]
  %567 = phi double [ 0.000000e+00, %559 ], [ %619, %615 ]
  %568 = phi double [ %109, %559 ], [ %618, %615 ]
  %569 = getelementptr %struct._PixelPacket, ptr %98, i64 %565
  %570 = getelementptr %struct._PixelPacket, ptr %99, i64 %565, i32 3
  %571 = icmp sgt i64 %562, 0
  br i1 %571, label %572, label %615

572:                                              ; preds = %561
  %573 = getelementptr i16, ptr %560, i64 %565
  br label %574

574:                                              ; preds = %572, %606
  %575 = phi i64 [ 0, %572 ], [ %610, %606 ]
  %576 = phi ptr [ %566, %572 ], [ %609, %606 ]
  %577 = phi double [ %567, %572 ], [ %608, %606 ]
  %578 = phi double [ %568, %572 ], [ %607, %606 ]
  %579 = load ptr, ptr %8, align 8, !tbaa !6
  %580 = getelementptr %struct._PixelPacket, ptr %569, i64 %575
  %581 = call float @GetPixelIntensity(ptr noundef %579, ptr noundef %580) #19
  %582 = fsub float %581, %113
  %583 = call float @llvm.fabs.f32(float %582)
  %584 = fpext float %583 to double
  %585 = load double, ptr %15, align 8, !tbaa !30
  %586 = fcmp ogt double %585, %584
  br i1 %586, label %587, label %606

587:                                              ; preds = %574
  %588 = getelementptr %struct._PixelPacket, ptr %570, i64 %575
  %589 = load i16, ptr %588, align 2, !tbaa !59
  %590 = xor i16 %589, -1
  %591 = uitofp i16 %590 to double
  %592 = fmul double %591, 0x3EF0001000100010
  %593 = fptrunc double %592 to float
  %594 = load double, ptr %576, align 8, !tbaa !30
  %595 = fpext float %593 to double
  %596 = fmul double %594, %595
  br i1 %92, label %601, label %597

597:                                              ; preds = %587
  %598 = getelementptr i16, ptr %573, i64 %575
  %599 = load i16, ptr %598, align 2, !tbaa !64
  %600 = zext i16 %599 to i32
  br label %601

601:                                              ; preds = %587, %597
  %602 = phi i32 [ %600, %597 ], [ 0, %587 ]
  %603 = sitofp i32 %602 to double
  %604 = call double @llvm.fmuladd.f64(double %596, double %603, double %578)
  %605 = fadd double %577, %594
  br label %606

606:                                              ; preds = %601, %574
  %607 = phi double [ %604, %601 ], [ %578, %574 ]
  %608 = phi double [ %605, %601 ], [ %577, %574 ]
  %609 = getelementptr inbounds double, ptr %576, i64 1
  %610 = add nuw nsw i64 %575, 1
  %611 = load i64, ptr %5, align 8, !tbaa !29
  %612 = icmp slt i64 %610, %611
  br i1 %612, label %574, label %613, !llvm.loop !162

613:                                              ; preds = %606
  %614 = load ptr, ptr %2, align 8, !tbaa !6
  br label %615

615:                                              ; preds = %613, %561
  %616 = phi i64 [ %562, %561 ], [ %611, %613 ]
  %617 = phi ptr [ %563, %561 ], [ %614, %613 ]
  %618 = phi double [ %568, %561 ], [ %607, %613 ]
  %619 = phi double [ %567, %561 ], [ %608, %613 ]
  %620 = phi ptr [ %566, %561 ], [ %609, %613 ]
  %621 = getelementptr inbounds %struct._Image, ptr %617, i64 0, i32 7
  %622 = load i64, ptr %621, align 8, !tbaa !27
  %623 = add i64 %616, %565
  %624 = add i64 %623, %622
  %625 = add nuw nsw i64 %564, 1
  %626 = icmp slt i64 %625, %616
  br i1 %626, label %561, label %627, !llvm.loop !163

627:                                              ; preds = %615, %557
  %628 = phi ptr [ %548, %557 ], [ %617, %615 ]
  %629 = phi double [ %109, %557 ], [ %618, %615 ]
  %630 = phi double [ 0.000000e+00, %557 ], [ %619, %615 ]
  br i1 %93, label %642, label %631

631:                                              ; preds = %627, %368
  %632 = phi double [ %371, %368 ], [ %630, %627 ]
  %633 = phi double [ %370, %368 ], [ %629, %627 ]
  %634 = phi ptr [ %369, %368 ], [ %628, %627 ]
  %635 = fcmp olt double %632, 0.000000e+00
  %636 = select i1 %635, double 0.000000e+00, double %632
  %637 = call fastcc double @PerceptibleReciprocal(double noundef %636) #16
  %638 = getelementptr inbounds i16, ptr %86, i64 %96
  %639 = fmul double %633, %637
  %640 = fptrunc double %639 to float
  %641 = call fastcc zeroext i16 @ClampToQuantum(float noundef %640) #16
  store i16 %641, ptr %638, align 2, !tbaa !64
  br label %642

642:                                              ; preds = %631, %546, %553, %627, %296, %303, %368
  %643 = phi ptr [ %548, %546 ], [ %548, %553 ], [ %628, %627 ], [ %302, %296 ], [ %302, %303 ], [ %369, %368 ], [ %634, %631 ]
  %644 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %645 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 1
  %646 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  %647 = add nuw nsw i64 %96, 1
  %648 = getelementptr inbounds %struct._Image, ptr %643, i64 0, i32 7
  %649 = load i64, ptr %648, align 8, !tbaa !27
  %650 = icmp slt i64 %647, %649
  br i1 %650, label %94, label %651, !llvm.loop !164

651:                                              ; preds = %642, %82
  %652 = load ptr, ptr %9, align 8, !tbaa !6
  %653 = load ptr, ptr %6, align 8, !tbaa !6
  %654 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %652, ptr noundef %653) #19
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %651
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %657

657:                                              ; preds = %656, %651
  %658 = load ptr, ptr %2, align 8, !tbaa !6
  %659 = getelementptr inbounds %struct._Image, ptr %658, i64 0, i32 47
  %660 = load ptr, ptr %659, align 8, !tbaa !68
  %661 = icmp eq ptr %660, null
  br i1 %661, label %671, label %662

662:                                              ; preds = %657
  call void @__kmpc_critical(ptr nonnull @2, i32 %28, ptr nonnull @.gomp_critical_user_MagickCore_SelectiveBlurImageChannel.var)
  %663 = load ptr, ptr %2, align 8, !tbaa !6
  %664 = load i64, ptr %16, align 8, !tbaa !36
  %665 = add nsw i64 %664, 1
  store i64 %665, ptr %16, align 8, !tbaa !36
  %666 = getelementptr inbounds %struct._Image, ptr %663, i64 0, i32 8
  %667 = load i64, ptr %666, align 8, !tbaa !28
  %668 = call fastcc i32 @SetImageProgress(ptr noundef %663, ptr noundef nonnull @.str.68, i64 noundef %664, i64 noundef %667) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %28, ptr nonnull @.gomp_critical_user_MagickCore_SelectiveBlurImageChannel.var)
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %671

670:                                              ; preds = %662, %46
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %671

671:                                              ; preds = %670, %657, %662, %42
  %672 = add nsw i64 %43, 1
  %673 = load i64, ptr %19, align 8, !tbaa !29
  %674 = icmp slt i64 %43, %673
  br i1 %674, label %42, label %675

675:                                              ; preds = %671
  %676 = load i64, ptr %18, align 8, !tbaa !29
  br label %677

677:                                              ; preds = %675, %38
  %678 = phi i64 [ %40, %38 ], [ %676, %675 ]
  %679 = phi i64 [ %39, %38 ], [ %673, %675 ]
  %680 = load i64, ptr %20, align 8, !tbaa !29
  %681 = add nsw i64 %680, %678
  store i64 %681, ptr %18, align 8, !tbaa !29
  %682 = add nsw i64 %680, %679
  %683 = call i64 @llvm.smin.i64(i64 %682, i64 %25)
  store i64 %683, ptr %19, align 8, !tbaa !29
  %684 = icmp sgt i64 %681, %683
  br i1 %684, label %685, label %38

685:                                              ; preds = %677, %27
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  br label %686

686:                                              ; preds = %685, %17
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ShadeImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %9, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %10, ptr nocapture noundef nonnull align 8 dereferenceable(8) %11) #7 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = load ptr, ptr %2, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !28
  %20 = add nsw i64 %19, -1
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %22, label %232

22:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 0, ptr %13, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 %20, ptr %14, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 1, ptr %15, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  store i32 0, ptr %16, align 4, !tbaa !10
  %23 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %23, i32 33, ptr nonnull %16, ptr nonnull %13, ptr nonnull %14, ptr nonnull %15, i64 1, i64 4)
  %24 = load i64, ptr %14, align 8
  %25 = call i64 @llvm.smin.i64(i64 %24, i64 %20)
  store i64 %25, ptr %14, align 8, !tbaa !29
  %26 = load i64, ptr %13, align 8, !tbaa !29
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %231, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._PrimaryInfo, ptr %9, i64 0, i32 1
  %30 = getelementptr inbounds %struct._PrimaryInfo, ptr %9, i64 0, i32 2
  br label %31

31:                                               ; preds = %28, %223
  %32 = phi i64 [ %25, %28 ], [ %229, %223 ]
  %33 = phi i64 [ %26, %28 ], [ %227, %223 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %223, label %35

35:                                               ; preds = %31, %217
  %36 = phi i64 [ %218, %217 ], [ %33, %31 ]
  %37 = load i32, ptr %3, align 4, !tbaa !10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %217, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8, !tbaa !6
  %41 = add nsw i64 %36, -1
  %42 = load ptr, ptr %2, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !27
  %45 = add i64 %44, 2
  %46 = load ptr, ptr %5, align 8, !tbaa !6
  %47 = call ptr @GetCacheViewVirtualPixels(ptr noundef %40, i64 noundef -1, i64 noundef %41, i64 noundef %45, i64 noundef 3, ptr noundef %46) #19
  %48 = load ptr, ptr %6, align 8, !tbaa !6
  %49 = load ptr, ptr %7, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !27
  %52 = load ptr, ptr %5, align 8, !tbaa !6
  %53 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %48, i64 noundef 0, i64 noundef %36, i64 noundef %51, i64 noundef 1, ptr noundef %52) #19
  %54 = icmp eq ptr %47, null
  %55 = icmp eq ptr %53, null
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %216, label %57

57:                                               ; preds = %39
  %58 = load ptr, ptr %2, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !27
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %197

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 1
  %64 = load ptr, ptr %8, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 7
  %66 = load i64, ptr %65, align 8, !tbaa !27
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 %66
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 2
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %66
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 2
  br label %71

71:                                               ; preds = %62, %182
  %72 = phi ptr [ %193, %182 ], [ %58, %62 ]
  %73 = phi i64 [ %192, %182 ], [ 0, %62 ]
  %74 = phi ptr [ %191, %182 ], [ %53, %62 ]
  %75 = phi ptr [ %93, %182 ], [ %70, %62 ]
  %76 = phi ptr [ %90, %182 ], [ %68, %62 ]
  %77 = phi ptr [ %87, %182 ], [ %63, %62 ]
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 -1
  %79 = call float @GetPixelIntensity(ptr noundef nonnull %72, ptr noundef nonnull %78) #19
  %80 = load ptr, ptr %2, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 -1
  %82 = call float @GetPixelIntensity(ptr noundef %80, ptr noundef nonnull %81) #19
  %83 = load ptr, ptr %2, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 -1
  %85 = call float @GetPixelIntensity(ptr noundef %83, ptr noundef nonnull %84) #19
  %86 = load ptr, ptr %2, align 8, !tbaa !6
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %88 = call float @GetPixelIntensity(ptr noundef %86, ptr noundef nonnull %87) #19
  %89 = load ptr, ptr %2, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %91 = call float @GetPixelIntensity(ptr noundef %89, ptr noundef nonnull %90) #19
  %92 = load ptr, ptr %2, align 8, !tbaa !6
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %94 = call float @GetPixelIntensity(ptr noundef %92, ptr noundef nonnull %93) #19
  %95 = load ptr, ptr %2, align 8, !tbaa !6
  %96 = call float @GetPixelIntensity(ptr noundef %95, ptr noundef nonnull %84) #19
  %97 = load ptr, ptr %2, align 8, !tbaa !6
  %98 = call float @GetPixelIntensity(ptr noundef %97, ptr noundef nonnull %75) #19
  %99 = load ptr, ptr %2, align 8, !tbaa !6
  %100 = call float @GetPixelIntensity(ptr noundef %99, ptr noundef nonnull %93) #19
  %101 = load ptr, ptr %2, align 8, !tbaa !6
  %102 = call float @GetPixelIntensity(ptr noundef %101, ptr noundef nonnull %78) #19
  %103 = load ptr, ptr %2, align 8, !tbaa !6
  %104 = call float @GetPixelIntensity(ptr noundef %103, ptr noundef nonnull %77) #19
  %105 = load ptr, ptr %2, align 8, !tbaa !6
  %106 = call float @GetPixelIntensity(ptr noundef %105, ptr noundef nonnull %87) #19
  %107 = insertelement <2 x float> poison, float %96, i64 0
  %108 = insertelement <2 x float> %107, float %79, i64 1
  %109 = insertelement <2 x float> poison, float %98, i64 0
  %110 = insertelement <2 x float> %109, float %82, i64 1
  %111 = fadd <2 x float> %108, %110
  %112 = insertelement <2 x float> poison, float %100, i64 0
  %113 = insertelement <2 x float> %112, float %85, i64 1
  %114 = fadd <2 x float> %111, %113
  %115 = insertelement <2 x float> poison, float %102, i64 0
  %116 = insertelement <2 x float> %115, float %88, i64 1
  %117 = fsub <2 x float> %114, %116
  %118 = insertelement <2 x float> poison, float %104, i64 0
  %119 = insertelement <2 x float> %118, float %91, i64 1
  %120 = fsub <2 x float> %117, %119
  %121 = insertelement <2 x float> poison, float %106, i64 0
  %122 = insertelement <2 x float> %121, float %94, i64 1
  %123 = fsub <2 x float> %120, %122
  %124 = extractelement <2 x float> %123, i64 1
  %125 = fpext float %124 to double
  %126 = extractelement <2 x float> %123, i64 0
  %127 = fpext float %126 to double
  %128 = fcmp oeq <2 x float> %123, zeroinitializer
  %129 = extractelement <2 x i1> %128, i64 0
  %130 = extractelement <2 x i1> %128, i64 1
  %131 = select i1 %130, i1 %129, i1 false
  br i1 %131, label %132, label %135

132:                                              ; preds = %71
  %133 = load double, ptr %30, align 8, !tbaa !140
  %134 = fptrunc double %133 to float
  br label %156

135:                                              ; preds = %71
  %136 = load double, ptr %9, align 8, !tbaa !165
  %137 = load double, ptr %29, align 8, !tbaa !166
  %138 = fmul double %137, %127
  %139 = call double @llvm.fmuladd.f64(double %125, double %136, double %138)
  %140 = load double, ptr %30, align 8, !tbaa !140
  %141 = call double @llvm.fmuladd.f64(double %140, double 1.310700e+05, double %139)
  %142 = fptrunc double %141 to float
  %143 = fpext float %142 to double
  %144 = fcmp ogt double %143, 1.000000e-15
  br i1 %144, label %145, label %156

145:                                              ; preds = %135
  %146 = fmul double %127, %127
  %147 = call double @llvm.fmuladd.f64(double %125, double %125, double %146)
  %148 = fadd double %147, 0x420FFFC000200000
  %149 = fptrunc double %148 to float
  %150 = fpext float %149 to double
  %151 = fcmp ogt double %150, 1.000000e-30
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = call double @llvm.sqrt.f64(double %150)
  %154 = fdiv double %143, %153
  %155 = fptrunc double %154 to float
  br label %156

156:                                              ; preds = %135, %152, %145, %132
  %157 = phi float [ %134, %132 ], [ %155, %152 ], [ 0.000000e+00, %145 ], [ 0.000000e+00, %135 ]
  %158 = load i32, ptr %10, align 4, !tbaa !10
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = fptoui float %157 to i16
  br label %182

162:                                              ; preds = %156
  %163 = fpext float %157 to double
  %164 = fmul double %163, 0x3EF0001000100010
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  %166 = load i16, ptr %165, align 2, !tbaa !60
  %167 = uitofp i16 %166 to double
  %168 = fmul double %164, %167
  %169 = fptrunc double %168 to float
  %170 = call fastcc zeroext i16 @ClampToQuantum(float noundef %169) #16
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  %172 = load i16, ptr %171, align 2, !tbaa !61
  %173 = uitofp i16 %172 to double
  %174 = fmul double %164, %173
  %175 = fptrunc double %174 to float
  %176 = call fastcc zeroext i16 @ClampToQuantum(float noundef %175) #16
  %177 = load i16, ptr %76, align 2, !tbaa !62
  %178 = uitofp i16 %177 to double
  %179 = fmul double %164, %178
  %180 = fptrunc double %179 to float
  %181 = call fastcc zeroext i16 @ClampToQuantum(float noundef %180) #16
  br label %182

182:                                              ; preds = %162, %160
  %183 = phi i16 [ %170, %162 ], [ %161, %160 ]
  %184 = phi i16 [ %176, %162 ], [ %161, %160 ]
  %185 = phi i16 [ %181, %162 ], [ %161, %160 ]
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  store i16 %183, ptr %186, align 2
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  store i16 %184, ptr %187, align 2
  store i16 %185, ptr %74, align 2, !tbaa !62
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !59
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  store i16 %189, ptr %190, align 2, !tbaa !59
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %192 = add nuw nsw i64 %73, 1
  %193 = load ptr, ptr %2, align 8, !tbaa !6
  %194 = getelementptr inbounds %struct._Image, ptr %193, i64 0, i32 7
  %195 = load i64, ptr %194, align 8, !tbaa !27
  %196 = icmp slt i64 %192, %195
  br i1 %196, label %71, label %197, !llvm.loop !167

197:                                              ; preds = %182, %57
  %198 = load ptr, ptr %6, align 8, !tbaa !6
  %199 = load ptr, ptr %5, align 8, !tbaa !6
  %200 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %198, ptr noundef %199) #19
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %203

203:                                              ; preds = %202, %197
  %204 = load ptr, ptr %8, align 8, !tbaa !6
  %205 = getelementptr inbounds %struct._Image, ptr %204, i64 0, i32 47
  %206 = load ptr, ptr %205, align 8, !tbaa !68
  %207 = icmp eq ptr %206, null
  br i1 %207, label %217, label %208

208:                                              ; preds = %203
  call void @__kmpc_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_ShadeImage.var)
  %209 = load ptr, ptr %8, align 8, !tbaa !6
  %210 = load i64, ptr %11, align 8, !tbaa !36
  %211 = add nsw i64 %210, 1
  store i64 %211, ptr %11, align 8, !tbaa !36
  %212 = getelementptr inbounds %struct._Image, ptr %209, i64 0, i32 8
  %213 = load i64, ptr %212, align 8, !tbaa !28
  %214 = call fastcc i32 @SetImageProgress(ptr noundef %209, ptr noundef nonnull @.str.69, i64 noundef %210, i64 noundef %213) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_ShadeImage.var)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %208, %39
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %217

217:                                              ; preds = %216, %203, %208, %35
  %218 = add nsw i64 %36, 1
  %219 = load i64, ptr %14, align 8, !tbaa !29
  %220 = icmp slt i64 %36, %219
  br i1 %220, label %35, label %221

221:                                              ; preds = %217
  %222 = load i64, ptr %13, align 8, !tbaa !29
  br label %223

223:                                              ; preds = %221, %31
  %224 = phi i64 [ %33, %31 ], [ %222, %221 ]
  %225 = phi i64 [ %32, %31 ], [ %219, %221 ]
  %226 = load i64, ptr %15, align 8, !tbaa !29
  %227 = add nsw i64 %226, %224
  store i64 %227, ptr %13, align 8, !tbaa !29
  %228 = add nsw i64 %226, %225
  %229 = call i64 @llvm.smin.i64(i64 %228, i64 %20)
  store i64 %229, ptr %14, align 8, !tbaa !29
  %230 = icmp sgt i64 %227, %229
  br i1 %230, label %231, label %31

231:                                              ; preds = %223, %22
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  br label %232

232:                                              ; preds = %231, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SharpenImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3794, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #17
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #17
  %14 = tail call ptr @AcquireKernelInfo(ptr noundef null) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3800, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %17) #17
  br label %112

19:                                               ; preds = %12
  %20 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 104) #17
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 1
  store i64 %13, ptr %21, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 2
  store i64 %13, ptr %22, align 8, !tbaa !41
  %23 = add i64 %13, -1
  %24 = sdiv i64 %23, 2
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 3
  store i64 %24, ptr %25, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 4
  store i64 %24, ptr %26, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 12
  store i64 2880220587, ptr %27, align 8, !tbaa !44
  %28 = shl i64 %13, 3
  %29 = tail call ptr @AcquireAlignedMemory(i64 noundef %13, i64 noundef %28) #18
  %30 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 5
  store ptr %29, ptr %30, align 8, !tbaa !45
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %14) #17
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3812, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %34) #17
  br label %112

36:                                               ; preds = %19
  %37 = load i64, ptr %21, align 8, !tbaa !39
  %38 = add i64 %37, -1
  %39 = sdiv i64 %38, 2
  %40 = sub nsw i64 0, %39
  %41 = icmp ugt i64 %37, -9223372036854775808
  br i1 %41, label %81, label %42

42:                                               ; preds = %36
  %43 = tail call double @llvm.fabs.f64(double %3)
  %44 = fcmp olt double %43, 1.000000e-15
  %45 = select i1 %44, double 1.000000e-15, double %3
  %46 = fmul double %45, 2.000000e+00
  %47 = fmul double %45, %46
  %48 = fmul double %45, 0x401921FB54442D18
  %49 = fmul double %45, %48
  %50 = tail call i64 @llvm.abs.i64(i64 %39, i1 true)
  br label %51

51:                                               ; preds = %74, %42
  %52 = phi i64 [ %40, %42 ], [ %75, %74 ]
  %53 = phi double [ 0.000000e+00, %42 ], [ %70, %74 ]
  %54 = phi i64 [ 0, %42 ], [ %71, %74 ]
  %55 = mul nsw i64 %52, %52
  %56 = sitofp i64 %55 to double
  br label %57

57:                                               ; preds = %51, %57
  %58 = phi i64 [ %40, %51 ], [ %72, %57 ]
  %59 = phi double [ %53, %51 ], [ %70, %57 ]
  %60 = phi i64 [ %54, %51 ], [ %71, %57 ]
  %61 = sitofp i64 %58 to double
  %62 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %56)
  %63 = fneg double %62
  %64 = fdiv double %63, %47
  %65 = tail call double @exp(double noundef %64) #17
  %66 = fneg double %65
  %67 = fdiv double %66, %49
  %68 = load ptr, ptr %30, align 8, !tbaa !45
  %69 = getelementptr inbounds double, ptr %68, i64 %60
  store double %67, ptr %69, align 8, !tbaa !30
  %70 = fadd double %59, %67
  %71 = add nsw i64 %60, 1
  %72 = add i64 %58, 1
  %73 = icmp eq i64 %58, %50
  br i1 %73, label %74, label %57, !llvm.loop !168

74:                                               ; preds = %57
  %75 = add i64 %52, 1
  %76 = icmp eq i64 %52, %50
  br i1 %76, label %77, label %51, !llvm.loop !169

77:                                               ; preds = %74
  %78 = load i64, ptr %21, align 8, !tbaa !39
  %79 = fmul double %70, -2.000000e+00
  %80 = sdiv i64 %71, 2
  br label %81

81:                                               ; preds = %77, %36
  %82 = phi i64 [ %37, %36 ], [ %78, %77 ]
  %83 = phi ptr [ %29, %36 ], [ %68, %77 ]
  %84 = phi i64 [ 0, %36 ], [ %80, %77 ]
  %85 = phi double [ -0.000000e+00, %36 ], [ %79, %77 ]
  %86 = getelementptr inbounds double, ptr %83, i64 %84
  store double %85, ptr %86, align 8, !tbaa !30
  %87 = load i64, ptr %22, align 8, !tbaa !41
  %88 = mul i64 %87, %82
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %81, %90
  %91 = phi double [ %95, %90 ], [ 0.000000e+00, %81 ]
  %92 = phi i64 [ %96, %90 ], [ 0, %81 ]
  %93 = getelementptr inbounds double, ptr %83, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !30
  %95 = fadd double %91, %94
  %96 = add nuw nsw i64 %92, 1
  %97 = icmp eq i64 %96, %88
  br i1 %97, label %98, label %90, !llvm.loop !170

98:                                               ; preds = %90
  %99 = fcmp olt double %95, 0.000000e+00
  %100 = select i1 %99, double 0.000000e+00, double %95
  %101 = tail call fastcc double @PerceptibleReciprocal(double noundef %100) #16
  br i1 %89, label %102, label %109

102:                                              ; preds = %98, %102
  %103 = phi i64 [ %107, %102 ], [ 0, %98 ]
  %104 = getelementptr inbounds double, ptr %83, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !30
  %106 = fmul double %101, %105
  store double %106, ptr %104, align 8, !tbaa !30
  %107 = add nuw nsw i64 %103, 1
  %108 = icmp eq i64 %107, %88
  br i1 %108, label %109, label %102, !llvm.loop !171

109:                                              ; preds = %102, %81, %98
  %110 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %14, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #17
  %111 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %14) #17
  br label %112

112:                                              ; preds = %109, %32, %16
  %113 = phi ptr [ null, %16 ], [ null, %32 ], [ %110, %109 ]
  ret ptr %113
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireRandomInfoThreadSet() unnamed_addr #0 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %2 = tail call ptr @AcquireAlignedMemory(i64 noundef %1, i64 noundef 8) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #17
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !172

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call ptr @AcquireRandomInfo() #17
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !6
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef nonnull %2) #16
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare i64 @GetRandomSecretKey(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SpreadImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull align 8 dereferenceable(8) %11) #7 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !28
  %21 = add nsw i64 %20, -1
  %22 = icmp sgt i64 %20, 0
  br i1 %22, label %23, label %123

23:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 0, ptr %13, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 %21, ptr %14, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 1, ptr %15, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  store i32 0, ptr %16, align 4, !tbaa !10
  %24 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %24, i32 33, ptr nonnull %16, ptr nonnull %13, ptr nonnull %14, ptr nonnull %15, i64 1, i64 4)
  %25 = load i64, ptr %14, align 8
  %26 = call i64 @llvm.smin.i64(i64 %25, i64 %21)
  store i64 %26, ptr %14, align 8, !tbaa !29
  %27 = load i64, ptr %13, align 8, !tbaa !29
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %122, label %29

29:                                               ; preds = %23, %114
  %30 = phi i64 [ %120, %114 ], [ %26, %23 ]
  %31 = phi i64 [ %118, %114 ], [ %27, %23 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %114, label %33

33:                                               ; preds = %29, %108
  %34 = phi i64 [ %109, %108 ], [ %31, %29 ]
  %35 = call fastcc i32 @GetOpenMPThreadId() #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #8
  %36 = load i32, ptr %3, align 4, !tbaa !10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %108, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 8, !tbaa !6
  %40 = load ptr, ptr %2, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !27
  %43 = load ptr, ptr %5, align 8, !tbaa !6
  %44 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %34, i64 noundef %42, i64 noundef 1, ptr noundef %43) #19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %107, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %4, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %47) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !173
  %49 = load ptr, ptr %2, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !27
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %46
  %54 = sext i32 %35 to i64
  %55 = sitofp i64 %34 to double
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ 0, %53 ], [ %83, %56 ]
  %58 = phi ptr [ %44, %53 ], [ %82, %56 ]
  %59 = load ptr, ptr %7, align 8, !tbaa !6
  %60 = load ptr, ptr %8, align 8, !tbaa !6
  %61 = sitofp i64 %57 to double
  %62 = load i64, ptr %9, align 8, !tbaa !29
  %63 = uitofp i64 %62 to double
  %64 = load ptr, ptr %10, align 8, !tbaa !6
  %65 = getelementptr inbounds ptr, ptr %64, i64 %54
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = call double @GetPseudoRandomValue(ptr noundef %66) #17
  %68 = fadd double %67, -5.000000e-01
  %69 = call double @llvm.fmuladd.f64(double %63, double %68, double %61)
  %70 = load i64, ptr %9, align 8, !tbaa !29
  %71 = uitofp i64 %70 to double
  %72 = load ptr, ptr %10, align 8, !tbaa !6
  %73 = getelementptr inbounds ptr, ptr %72, i64 %54
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = call double @GetPseudoRandomValue(ptr noundef %74) #17
  %76 = fadd double %75, -5.000000e-01
  %77 = call double @llvm.fmuladd.f64(double %71, double %76, double %55)
  %78 = load ptr, ptr %5, align 8, !tbaa !6
  %79 = call i32 @InterpolateMagickPixelPacket(ptr noundef %59, ptr noundef %60, i32 noundef 0, double noundef %69, double noundef %77, ptr noundef nonnull %17, ptr noundef %78) #17
  %80 = load ptr, ptr %2, align 8, !tbaa !6
  %81 = getelementptr inbounds i16, ptr %48, i64 %57
  call fastcc void @SetPixelPacket(ptr noundef %80, ptr noundef nonnull %17, ptr noundef nonnull %58, ptr noundef %81) #16
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %83 = add nuw nsw i64 %57, 1
  %84 = load ptr, ptr %2, align 8, !tbaa !6
  %85 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 7
  %86 = load i64, ptr %85, align 8, !tbaa !27
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %56, label %88, !llvm.loop !174

88:                                               ; preds = %56, %46
  %89 = load ptr, ptr %4, align 8, !tbaa !6
  %90 = load ptr, ptr %5, align 8, !tbaa !6
  %91 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %89, ptr noundef %90) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %94

94:                                               ; preds = %93, %88
  %95 = load ptr, ptr %7, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct._Image, ptr %95, i64 0, i32 47
  %97 = load ptr, ptr %96, align 8, !tbaa !68
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  call void @__kmpc_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_SpreadImage.var)
  %100 = load ptr, ptr %7, align 8, !tbaa !6
  %101 = load i64, ptr %11, align 8, !tbaa !36
  %102 = add nsw i64 %101, 1
  store i64 %102, ptr %11, align 8, !tbaa !36
  %103 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 8
  %104 = load i64, ptr %103, align 8, !tbaa !28
  %105 = call fastcc i32 @SetImageProgress(ptr noundef %100, ptr noundef nonnull @.str.70, i64 noundef %101, i64 noundef %104) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_SpreadImage.var)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99, %38
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %108

108:                                              ; preds = %107, %94, %99, %33
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #8
  %109 = add nsw i64 %34, 1
  %110 = load i64, ptr %14, align 8, !tbaa !29
  %111 = icmp slt i64 %34, %110
  br i1 %111, label %33, label %112

112:                                              ; preds = %108
  %113 = load i64, ptr %13, align 8, !tbaa !29
  br label %114

114:                                              ; preds = %112, %29
  %115 = phi i64 [ %31, %29 ], [ %113, %112 ]
  %116 = phi i64 [ %30, %29 ], [ %110, %112 ]
  %117 = load i64, ptr %15, align 8, !tbaa !29
  %118 = add nsw i64 %117, %115
  store i64 %118, ptr %13, align 8, !tbaa !29
  %119 = add nsw i64 %117, %116
  %120 = call i64 @llvm.smin.i64(i64 %119, i64 %21)
  store i64 %120, ptr %14, align 8, !tbaa !29
  %121 = icmp sgt i64 %118, %120
  br i1 %121, label %122, label %29

122:                                              ; preds = %114, %23
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  br label %123

123:                                              ; preds = %122, %12
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #14 {
  %1 = tail call i32 @omp_get_thread_num() #16
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !54
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #16
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !60
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #16
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !61
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !56
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #16
  store i16 %15, ptr %2, align 2, !tbaa !62
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !57
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #16
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !59
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !63
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !175
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !52
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #16
  store i16 %33, ptr %3, align 2, !tbaa !64
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %7) #17
  store ptr %10, ptr %6, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !176

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #17
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UnsharpMaskImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @UnsharpMaskImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) #16
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UnsharpMaskImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = alloca float, align 4
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %8, align 8, !tbaa !6
  store i32 %1, ptr %9, align 4, !tbaa !10
  store double %4, ptr %10, align 8, !tbaa !30
  store ptr %6, ptr %11, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #8
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4090, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #17
  br label %26

26:                                               ; preds = %23, %7
  %27 = tail call ptr @AccelerateUnsharpMaskImage(ptr noundef nonnull %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = and i32 %1, -257
  %31 = tail call ptr @BlurImageChannel(ptr noundef nonnull %0, i32 noundef %30, double noundef %2, double noundef %3, ptr noundef %6) #16
  store ptr %31, ptr %14, align 8, !tbaa !6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %72, label %33

33:                                               ; preds = %29
  %34 = fmul double %5, 6.553500e+04
  %35 = fptrunc double %34 to float
  store float %35, ptr %18, align 4, !tbaa !50
  store i32 1, ptr %15, align 4, !tbaa !10
  store i64 0, ptr %16, align 8, !tbaa !36
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %17) #17
  %36 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %6) #17
  store ptr %36, ptr %12, align 8, !tbaa !6
  %37 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %6) #17
  store ptr %37, ptr %13, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %39 = load i64, ptr %38, align 8, !tbaa !28
  %40 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %41 = shl i64 %40, 5
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #17
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %31) #17
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  br label %55

51:                                               ; preds = %46, %43, %33
  %52 = call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %53 = icmp ult i64 %52, 2
  %54 = select i1 %53, i64 1, i64 2
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i64 [ %50, %49 ], [ %54, %51 ]
  %57 = trunc i64 %56 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %57)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @UnsharpMaskImageChannel.omp_outlined, ptr nonnull %8, ptr nonnull %15, ptr nonnull %12, ptr nonnull %11, ptr nonnull %13, ptr nonnull %14, ptr nonnull %17, ptr nonnull %9, ptr nonnull %18, ptr nonnull %10, ptr nonnull %16)
  %58 = load ptr, ptr %8, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 77
  %60 = load i32, ptr %59, align 8, !tbaa !37
  %61 = load ptr, ptr %14, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 77
  store i32 %60, ptr %62, align 8, !tbaa !37
  %63 = load ptr, ptr %13, align 8, !tbaa !6
  %64 = call ptr @DestroyCacheView(ptr noundef %63) #17
  store ptr %64, ptr %13, align 8, !tbaa !6
  %65 = load ptr, ptr %12, align 8, !tbaa !6
  %66 = call ptr @DestroyCacheView(ptr noundef %65) #17
  store ptr %66, ptr %12, align 8, !tbaa !6
  %67 = load i32, ptr %15, align 4, !tbaa !10
  %68 = icmp eq i32 %67, 0
  %69 = load ptr, ptr %14, align 8, !tbaa !6
  br i1 %68, label %70, label %72

70:                                               ; preds = %55
  %71 = call ptr @DestroyImage(ptr noundef %69) #17
  br label %72

72:                                               ; preds = %55, %70, %29, %26
  %73 = phi ptr [ %27, %26 ], [ null, %29 ], [ %71, %70 ], [ %69, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  ret ptr %73
}

; Function Attrs: optsize
declare ptr @AccelerateUnsharpMaskImage(ptr noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @UnsharpMaskImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture nonnull readnone align 8 %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #7 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !28
  %21 = add nsw i64 %20, -1
  %22 = icmp sgt i64 %20, 0
  br i1 %22, label %23, label %237

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 0, ptr %14, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 %21, ptr %15, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 1, ptr %16, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  store i32 0, ptr %17, align 4, !tbaa !10
  %24 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %24, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %25 = load i64, ptr %15, align 8
  %26 = call i64 @llvm.smin.i64(i64 %25, i64 %21)
  store i64 %26, ptr %15, align 8, !tbaa !29
  %27 = load i64, ptr %14, align 8, !tbaa !29
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %236, label %29

29:                                               ; preds = %23, %228
  %30 = phi i64 [ %234, %228 ], [ %26, %23 ]
  %31 = phi i64 [ %232, %228 ], [ %27, %23 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %228, label %33

33:                                               ; preds = %29, %222
  %34 = phi i64 [ %223, %222 ], [ %31, %29 ]
  %35 = load i32, ptr %3, align 4, !tbaa !10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %222, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8, !tbaa !6
  %39 = load ptr, ptr %2, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !27
  %42 = load ptr, ptr %5, align 8, !tbaa !6
  %43 = call ptr @GetCacheViewVirtualPixels(ptr noundef %38, i64 noundef 0, i64 noundef %34, i64 noundef %41, i64 noundef 1, ptr noundef %42) #19
  %44 = load ptr, ptr %6, align 8, !tbaa !6
  %45 = load ptr, ptr %7, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !27
  %48 = load ptr, ptr %5, align 8, !tbaa !6
  %49 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %44, i64 noundef 0, i64 noundef %34, i64 noundef %47, i64 noundef 1, ptr noundef %48) #19
  %50 = icmp eq ptr %43, null
  %51 = icmp eq ptr %49, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %221, label %53

53:                                               ; preds = %37
  %54 = load ptr, ptr %4, align 8, !tbaa !6
  %55 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %54) #17
  %56 = load ptr, ptr %6, align 8, !tbaa !6
  %57 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %56) #17
  %58 = load ptr, ptr %2, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !27
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %202

62:                                               ; preds = %53
  %63 = load i32, ptr %9, align 4, !tbaa !10
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  %66 = load float, ptr %10, align 4
  %67 = fpext float %66 to double
  %68 = load double, ptr %11, align 8
  %69 = insertelement <4 x i32> poison, i32 %63, i64 0
  %70 = shufflevector <4 x i32> %69, <4 x i32> poison, <4 x i32> zeroinitializer
  %71 = and <4 x i32> %70, <i32 32, i32 8, i32 4, i32 2>
  %72 = icmp eq <4 x i32> %71, zeroinitializer
  %73 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 1
  %74 = icmp eq ptr %55, null
  %75 = icmp eq ptr %57, null
  %76 = extractelement <4 x i1> %72, i64 0
  %77 = extractelement <4 x i1> %72, i64 1
  %78 = extractelement <4 x i1> %72, i64 2
  %79 = extractelement <4 x i1> %72, i64 3
  br label %80

80:                                               ; preds = %62, %197
  %81 = phi i64 [ 0, %62 ], [ %200, %197 ]
  %82 = phi ptr [ %49, %62 ], [ %199, %197 ]
  %83 = phi ptr [ %43, %62 ], [ %198, %197 ]
  br i1 %65, label %101, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  %86 = load i16, ptr %85, align 2, !tbaa !60
  %87 = uitofp i16 %86 to float
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  %89 = load i16, ptr %88, align 2, !tbaa !60
  %90 = uitofp i16 %89 to float
  %91 = fsub float %87, %90
  %92 = fpext float %91 to double
  %93 = fmul double %92, 2.000000e+00
  %94 = call double @llvm.fabs.f64(double %93)
  %95 = fcmp olt double %94, %67
  %96 = uitofp i16 %86 to double
  %97 = call double @llvm.fmuladd.f64(double %92, double %68, double %96)
  %98 = select i1 %95, double %96, double %97
  %99 = fptrunc double %98 to float
  %100 = call fastcc zeroext i16 @ClampToQuantum(float noundef %99) #16
  store i16 %100, ptr %88, align 2, !tbaa !60
  br label %101

101:                                              ; preds = %84, %80
  br i1 %79, label %119, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  %104 = load i16, ptr %103, align 2, !tbaa !61
  %105 = uitofp i16 %104 to float
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 1
  %107 = load i16, ptr %106, align 2, !tbaa !61
  %108 = uitofp i16 %107 to float
  %109 = fsub float %105, %108
  %110 = fpext float %109 to double
  %111 = fmul double %110, 2.000000e+00
  %112 = call double @llvm.fabs.f64(double %111)
  %113 = fcmp olt double %112, %67
  %114 = uitofp i16 %104 to double
  %115 = call double @llvm.fmuladd.f64(double %110, double %68, double %114)
  %116 = select i1 %113, double %114, double %115
  %117 = fptrunc double %116 to float
  %118 = call fastcc zeroext i16 @ClampToQuantum(float noundef %117) #16
  store i16 %118, ptr %106, align 2, !tbaa !61
  br label %119

119:                                              ; preds = %102, %101
  br i1 %78, label %135, label %120

120:                                              ; preds = %119
  %121 = load i16, ptr %83, align 2, !tbaa !62
  %122 = uitofp i16 %121 to float
  %123 = load i16, ptr %82, align 2, !tbaa !62
  %124 = uitofp i16 %123 to float
  %125 = fsub float %122, %124
  %126 = fpext float %125 to double
  %127 = fmul double %126, 2.000000e+00
  %128 = call double @llvm.fabs.f64(double %127)
  %129 = fcmp olt double %128, %67
  %130 = uitofp i16 %121 to double
  %131 = call double @llvm.fmuladd.f64(double %126, double %68, double %130)
  %132 = select i1 %129, double %130, double %131
  %133 = fptrunc double %132 to float
  %134 = call fastcc zeroext i16 @ClampToQuantum(float noundef %133) #16
  store i16 %134, ptr %82, align 2, !tbaa !62
  br label %135

135:                                              ; preds = %120, %119
  br i1 %77, label %153, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !59
  %139 = uitofp i16 %138 to float
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 3
  %141 = load i16, ptr %140, align 2, !tbaa !59
  %142 = uitofp i16 %141 to float
  %143 = fsub float %139, %142
  %144 = fpext float %143 to double
  %145 = fmul double %144, 2.000000e+00
  %146 = call double @llvm.fabs.f64(double %145)
  %147 = fcmp olt double %146, %67
  %148 = uitofp i16 %138 to double
  %149 = call double @llvm.fmuladd.f64(double %144, double %68, double %148)
  %150 = select i1 %147, double %148, double %149
  %151 = fptrunc double %150 to float
  %152 = call fastcc zeroext i16 @ClampToQuantum(float noundef %151) #16
  store i16 %152, ptr %140, align 2, !tbaa !59
  br label %153

153:                                              ; preds = %136, %135
  br i1 %76, label %197, label %154

154:                                              ; preds = %153
  %155 = load i32, ptr %73, align 4, !tbaa !63
  %156 = icmp eq i32 %155, 12
  br i1 %156, label %157, label %197

157:                                              ; preds = %154
  %158 = getelementptr inbounds i16, ptr %55, i64 %81
  br i1 %74, label %162, label %159

159:                                              ; preds = %157
  %160 = load i16, ptr %158, align 2, !tbaa !64
  %161 = zext i16 %160 to i32
  br label %162

162:                                              ; preds = %157, %159
  %163 = phi i32 [ %161, %159 ], [ 0, %157 ]
  %164 = sitofp i32 %163 to float
  %165 = getelementptr inbounds i16, ptr %57, i64 %81
  br i1 %75, label %169, label %166

166:                                              ; preds = %162
  %167 = load i16, ptr %165, align 2, !tbaa !64
  %168 = zext i16 %167 to i32
  br label %169

169:                                              ; preds = %162, %166
  %170 = phi i32 [ %168, %166 ], [ 0, %162 ]
  %171 = sitofp i32 %170 to float
  %172 = fsub float %164, %171
  %173 = fpext float %172 to double
  %174 = fmul double %173, 2.000000e+00
  %175 = call double @llvm.fabs.f64(double %174)
  %176 = fcmp olt double %175, %67
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  br i1 %74, label %181, label %178

178:                                              ; preds = %177
  %179 = load i16, ptr %158, align 2, !tbaa !64
  %180 = zext i16 %179 to i32
  br label %181

181:                                              ; preds = %177, %178
  %182 = phi i32 [ %180, %178 ], [ 0, %177 ]
  %183 = sitofp i32 %182 to double
  br label %192

184:                                              ; preds = %169
  br i1 %74, label %188, label %185

185:                                              ; preds = %184
  %186 = load i16, ptr %158, align 2, !tbaa !64
  %187 = zext i16 %186 to i32
  br label %188

188:                                              ; preds = %184, %185
  %189 = phi i32 [ %187, %185 ], [ 0, %184 ]
  %190 = sitofp i32 %189 to double
  %191 = call double @llvm.fmuladd.f64(double %173, double %68, double %190)
  br label %192

192:                                              ; preds = %188, %181
  %193 = phi double [ %183, %181 ], [ %191, %188 ]
  br i1 %75, label %197, label %194

194:                                              ; preds = %192
  %195 = fptrunc double %193 to float
  %196 = call fastcc zeroext i16 @ClampToQuantum(float noundef %195) #16
  store i16 %196, ptr %165, align 2, !tbaa !64
  br label %197

197:                                              ; preds = %192, %194, %154, %153
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 1
  %200 = add nuw nsw i64 %81, 1
  %201 = icmp eq i64 %200, %60
  br i1 %201, label %202, label %80, !llvm.loop !177

202:                                              ; preds = %197, %53
  %203 = load ptr, ptr %6, align 8, !tbaa !6
  %204 = load ptr, ptr %5, align 8, !tbaa !6
  %205 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %203, ptr noundef %204) #19
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %208

208:                                              ; preds = %207, %202
  %209 = load ptr, ptr %2, align 8, !tbaa !6
  %210 = getelementptr inbounds %struct._Image, ptr %209, i64 0, i32 47
  %211 = load ptr, ptr %210, align 8, !tbaa !68
  %212 = icmp eq ptr %211, null
  br i1 %212, label %222, label %213

213:                                              ; preds = %208
  call void @__kmpc_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_UnsharpMaskImageChannel.var)
  %214 = load ptr, ptr %2, align 8, !tbaa !6
  %215 = load i64, ptr %12, align 8, !tbaa !36
  %216 = add nsw i64 %215, 1
  store i64 %216, ptr %12, align 8, !tbaa !36
  %217 = getelementptr inbounds %struct._Image, ptr %214, i64 0, i32 8
  %218 = load i64, ptr %217, align 8, !tbaa !28
  %219 = call fastcc i32 @SetImageProgress(ptr noundef %214, ptr noundef nonnull @.str.71, i64 noundef %215, i64 noundef %218) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_UnsharpMaskImageChannel.var)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %213, %37
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %222

222:                                              ; preds = %221, %208, %213, %33
  %223 = add nsw i64 %34, 1
  %224 = load i64, ptr %15, align 8, !tbaa !29
  %225 = icmp slt i64 %34, %224
  br i1 %225, label %33, label %226

226:                                              ; preds = %222
  %227 = load i64, ptr %14, align 8, !tbaa !29
  br label %228

228:                                              ; preds = %226, %29
  %229 = phi i64 [ %31, %29 ], [ %227, %226 ]
  %230 = phi i64 [ %30, %29 ], [ %224, %226 ]
  %231 = load i64, ptr %16, align 8, !tbaa !29
  %232 = add nsw i64 %231, %229
  store i64 %232, ptr %14, align 8, !tbaa !29
  %233 = add nsw i64 %231, %230
  %234 = call i64 @llvm.smin.i64(i64 %233, i64 %21)
  store i64 %234, ptr %15, align 8, !tbaa !29
  %235 = icmp sgt i64 %232, %234
  br i1 %235, label %236, label %29

236:                                              ; preds = %228, %23
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  br label %237

237:                                              ; preds = %236, %13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { convergent nounwind }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind optsize allocsize(0,1) }
attributes #19 = { hot nounwind optsize }

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
!12 = !{!13, !11, i64 12976}
!13 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !14, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !7, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !17, i64 104, !18, i64 112, !11, i64 208, !7, i64 216, !11, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !14, i64 256, !17, i64 264, !17, i64 272, !20, i64 280, !20, i64 312, !20, i64 344, !17, i64 376, !17, i64 384, !17, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !7, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !21, i64 480, !22, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !14, i64 12904, !14, i64 12912, !24, i64 12920, !11, i64 12976, !14, i64 12984, !7, i64 12992, !25, i64 13000, !25, i64 13032, !7, i64 13064, !14, i64 13072, !14, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !11, i64 13112, !11, i64 13116, !15, i64 13120, !7, i64 13128, !20, i64 13136, !7, i64 13168, !7, i64 13176, !11, i64 13184, !11, i64 13188, !26, i64 13192, !11, i64 13200, !14, i64 13208, !14, i64 13216, !11, i64 13224, !14, i64 13232}
!14 = !{!"long", !8, i64 0}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !8, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = !{!"_ChromaticityInfo", !19, i64 0, !19, i64 24, !19, i64 48, !19, i64 72}
!19 = !{!"_PrimaryInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!20 = !{!"_RectangleInfo", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!21 = !{!"_ErrorInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!22 = !{!"_TimerInfo", !23, i64 0, !23, i64 24, !11, i64 48, !14, i64 56}
!23 = !{!"_Timer", !17, i64 0, !17, i64 8, !17, i64 16}
!24 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !7, i64 40, !14, i64 48}
!25 = !{!"_ProfileInfo", !7, i64 0, !14, i64 8, !7, i64 16, !14, i64 24}
!26 = !{!"long long", !8, i64 0}
!27 = !{!13, !14, i64 40}
!28 = !{!13, !14, i64 48}
!29 = !{!14, !14, i64 0}
!30 = !{!17, !17, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = !{!26, !26, i64 0}
!37 = !{!13, !11, i64 13184}
!38 = distinct !{!38, !32}
!39 = !{!40, !14, i64 8}
!40 = !{!"KernelInfo", !11, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !7, i64 88, !14, i64 96}
!41 = !{!40, !14, i64 16}
!42 = !{!40, !14, i64 24}
!43 = !{!40, !14, i64 32}
!44 = !{!40, !14, i64 96}
!45 = !{!40, !7, i64 40}
!46 = distinct !{!46, !32, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!13, !17, i64 376}
!50 = !{!51, !51, i64 0}
!51 = !{!"float", !8, i64 0}
!52 = !{!53, !51, i64 48}
!53 = !{!"_MagickPixelPacket", !11, i64 0, !11, i64 4, !11, i64 8, !17, i64 16, !14, i64 24, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48}
!54 = !{!53, !51, i64 32}
!55 = !{!53, !51, i64 36}
!56 = !{!53, !51, i64 40}
!57 = !{!53, !51, i64 44}
!58 = !{!13, !11, i64 32}
!59 = !{!15, !16, i64 6}
!60 = !{!15, !16, i64 4}
!61 = !{!15, !16, i64 2}
!62 = !{!15, !16, i64 0}
!63 = !{!13, !11, i64 4}
!64 = !{!16, !16, i64 0}
!65 = distinct !{!65, !32}
!66 = distinct !{!66, !32}
!67 = distinct !{!67, !32}
!68 = !{!13, !7, i64 568}
!69 = !{!13, !7, i64 576}
!70 = !{!71}
!71 = !{i64 2, i64 -1, i64 -1, i1 true}
!72 = distinct !{!72, !32}
!73 = distinct !{!73, !32}
!74 = distinct !{!74, !32}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = !{i16 257, i16 515}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = !{!8, !8, i64 0}
!97 = distinct !{!97, !32}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !32}
!100 = distinct !{!100, !32}
!101 = distinct !{!101, !32}
!102 = distinct !{!102, !32}
!103 = distinct !{!103, !32}
!104 = distinct !{!104, !32}
!105 = distinct !{!105, !32}
!106 = distinct !{!106, !32}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !32}
!110 = distinct !{!110, !32}
!111 = distinct !{!111, !32}
!112 = distinct !{!112, !32}
!113 = !{!114, !14, i64 0}
!114 = !{!"_OffsetInfo", !14, i64 0, !14, i64 8}
!115 = !{!114, !14, i64 8}
!116 = distinct !{!116, !32}
!117 = distinct !{!117, !32}
!118 = distinct !{!118, !32}
!119 = !{i64 0, i64 4, !50}
!120 = distinct !{!120, !32}
!121 = distinct !{!121, !32}
!122 = distinct !{!122, !32}
!123 = !{!20, !14, i64 0}
!124 = !{!20, !14, i64 8}
!125 = distinct !{!125, !32}
!126 = distinct !{!126, !32}
!127 = !{!128, !14, i64 0}
!128 = !{!"_QuantizeInfo", !14, i64 0, !14, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !14, i64 32, !11, i64 40}
!129 = !{!128, !11, i64 20}
!130 = distinct !{!130, !32}
!131 = !{!20, !14, i64 16}
!132 = !{!20, !14, i64 24}
!133 = !{!134, !14, i64 96}
!134 = !{!"_ImageInfo", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !14, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !17, i64 144, !17, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !11, i64 184, !11, i64 188, !14, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !14, i64 216, !11, i64 224, !11, i64 228, !7, i64 232, !7, i64 240, !11, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !14, i64 320, !8, i64 328, !8, i64 4424, !8, i64 8520, !8, i64 12616, !11, i64 16712, !7, i64 16720, !14, i64 16728, !14, i64 16736, !15, i64 16744, !14, i64 16752, !11, i64 16760, !15, i64 16764, !7, i64 16776, !11, i64 16784}
!135 = distinct !{!135, !32}
!136 = !{!137, !11, i64 64}
!137 = !{!"_MontageInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !17, i64 48, !14, i64 56, !11, i64 64, !15, i64 68, !15, i64 76, !15, i64 84, !15, i64 92, !15, i64 100, !11, i64 108, !8, i64 112, !11, i64 4208, !14, i64 4216}
!138 = !{!13, !7, i64 232}
!139 = !{!13, !7, i64 240}
!140 = !{!19, !17, i64 16}
!141 = distinct !{!141, !32}
!142 = !{!143, !17, i64 0}
!143 = !{!"_PointInfo", !17, i64 0, !17, i64 8}
!144 = !{!143, !17, i64 8}
!145 = distinct !{!145, !32}
!146 = distinct !{!146, !32}
!147 = distinct !{!147, !32}
!148 = distinct !{!148, !32}
!149 = distinct !{!149, !32}
!150 = distinct !{!150, !32}
!151 = distinct !{!151, !32}
!152 = distinct !{!152, !32}
!153 = distinct !{!153, !32}
!154 = distinct !{!154, !32}
!155 = distinct !{!155, !32}
!156 = distinct !{!156, !32}
!157 = distinct !{!157, !32}
!158 = distinct !{!158, !32}
!159 = distinct !{!159, !32}
!160 = distinct !{!160, !32}
!161 = distinct !{!161, !32}
!162 = distinct !{!162, !32}
!163 = distinct !{!163, !32}
!164 = distinct !{!164, !32}
!165 = !{!19, !17, i64 0}
!166 = !{!19, !17, i64 8}
!167 = distinct !{!167, !32}
!168 = distinct !{!168, !32}
!169 = distinct !{!169, !32}
!170 = distinct !{!170, !32}
!171 = distinct !{!171, !32}
!172 = distinct !{!172, !32}
!173 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 16, i64 8, !30, i64 24, i64 8, !29, i64 32, i64 4, !50, i64 36, i64 4, !50, i64 40, i64 4, !50, i64 44, i64 4, !50, i64 48, i64 4, !50}
!174 = distinct !{!174, !32}
!175 = !{!13, !11, i64 0}
!176 = distinct !{!176, !32}
!177 = distinct !{!177, !32}
