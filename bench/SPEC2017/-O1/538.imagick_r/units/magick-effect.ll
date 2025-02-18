; ModuleID = 'magick/effect.c'
source_filename = "magick/effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

@.str = private unnamed_addr constant [16 x i8] c"magick/effect.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"20%,95%\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"10%,95%\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Convolve/Image\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"blur:%.20gx%.20g;blur:%.20gx%.20g+90\00", align 1
@DespeckleImage.X = internal unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 1, i64 -1], align 16
@DespeckleImage.Y = internal unnamed_addr constant [4 x i64] [i64 1, i64 0, i64 1, i64 1], align 16
@.str.9 = private unnamed_addr constant [16 x i8] c"Despeckle/Image\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"KernelWidthMustBeAnOddNumber\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"  FilterImage with %.20gx%.20g kernel:\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%.20g: \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Filter/Image\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"gaussian:%.20gx%.20g\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Blur/Image\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"204x204+10+10\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@DefaultTileLabel = external constant [0 x i8], align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"#dfdfdf\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"rotate %g\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"shear %gx%g\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"roll %+.20gx%+.20g\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"100,100,%g\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"modulate %s\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"100,%g\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"gamma %g\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"contrast (%.20g)\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"+contrast (%.20g)\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"-colorspace gray -colors %.20g\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"colors %.20g\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"despeckle (%.20g)\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"noise %g\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"multiplicative\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"impulse\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"laplacian\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"poisson\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"+noise %s\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"sharpen %gx%g\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"blur %gx%g\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"threshold %g\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"edge %g\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"spread %g\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"solarize %g\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"shade %gx%g\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"raise %.20gx%.20g%+.20g%+.20g\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"segment %gx%g\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"swirl %g\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"implode %g\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"wave %gx%g\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"paint %g\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"charcoal %gx%g\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"jpeg:%s\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"quality %s\0A%gmb \00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"quality %s\0A%gkb \00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"quality %s\0A%.20gb \00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"Preview/Image\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"3x3\00", align 1
@DefaultTileFrame = external constant [0 x i8], align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"  SelectiveBlurImage with %.20gx%.20g kernel:\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"%+f \00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"SelectiveBlur/Image\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Shade/Image\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"Spread/Image\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"Sharpen/Image\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AdaptiveBlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AdaptiveBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AdaptiveBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 195, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !54
  %19 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %16, i64 noundef %18, i32 noundef 1, ptr noundef %4) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %458, label %21

21:                                               ; preds = %14
  %22 = tail call double @llvm.fabs.f64(double %3)
  %23 = fcmp ugt double %22, 1.000000e-15
  br i1 %23, label %24, label %458

24:                                               ; preds = %21
  %25 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %19, i32 noundef 1) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %28) #11
  %29 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #11
  br label %458

30:                                               ; preds = %24
  %31 = tail call ptr @EdgeImage(ptr noundef %0, double noundef %2, ptr noundef %4)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #11
  br label %458

35:                                               ; preds = %30
  %36 = tail call i32 @LevelImage(ptr noundef nonnull %31, ptr noundef nonnull @.str.3) #11
  %37 = tail call ptr @BlurImageChannel(ptr noundef nonnull %31, i32 noundef 134217719, double noundef %2, double noundef %3, ptr noundef %4)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #11
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %37, %39 ], [ %31, %35 ]
  %43 = tail call i32 @LevelImage(ptr noundef nonnull %42, ptr noundef nonnull @.str.4) #11
  %44 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #11
  %45 = tail call ptr @AcquireAlignedMemory(i64 noundef %44, i64 noundef 8) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = tail call ptr @DestroyImage(ptr noundef nonnull %42) #11
  %49 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #11
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 236, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %50) #11
  br label %458

52:                                               ; preds = %41
  %53 = shl i64 %44, 3
  %54 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %45, i32 noundef 0, i64 noundef %53) #11
  %55 = icmp sgt i64 %44, 0
  br i1 %55, label %56, label %129

56:                                               ; preds = %52
  %57 = fcmp olt double %22, 1.000000e-15
  %58 = select i1 %57, double 1.000000e-15, double %3
  %59 = fmul double %58, 2.000000e+00
  %60 = fmul double %58, %59
  %61 = fmul double %58, 0x401921FB54442D18
  %62 = fmul double %58, %61
  %63 = fcmp olt double %3, 1.000000e-15
  br label %64

64:                                               ; preds = %56, %104
  %65 = phi i64 [ 0, %56 ], [ %114, %104 ]
  %66 = sub nsw i64 %44, %65
  %67 = shl i64 %66, 3
  %68 = tail call ptr @AcquireAlignedMemory(i64 noundef %66, i64 noundef %67) #12
  %69 = getelementptr inbounds ptr, ptr %45, i64 %65
  store ptr %68, ptr %69, align 8, !tbaa !55
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = icmp eq i64 %65, 0
  br i1 %72, label %123, label %116

73:                                               ; preds = %64
  %74 = sdiv i64 %66, 2
  %75 = sub nsw i64 0, %74
  %76 = icmp slt i64 %66, -1
  br i1 %76, label %104, label %77

77:                                               ; preds = %73
  %78 = tail call i64 @llvm.abs.i64(i64 %74, i1 true)
  br label %79

79:                                               ; preds = %77, %101
  %80 = phi i64 [ %102, %101 ], [ %75, %77 ]
  %81 = phi i64 [ %98, %101 ], [ 0, %77 ]
  %82 = phi double [ %97, %101 ], [ 0.000000e+00, %77 ]
  %83 = mul nsw i64 %80, %80
  %84 = sitofp i64 %83 to double
  br label %85

85:                                               ; preds = %79, %85
  %86 = phi i64 [ %75, %79 ], [ %99, %85 ]
  %87 = phi i64 [ %81, %79 ], [ %98, %85 ]
  %88 = phi double [ %82, %79 ], [ %97, %85 ]
  %89 = sitofp i64 %86 to double
  %90 = tail call double @llvm.fmuladd.f64(double %89, double %89, double %84)
  %91 = fneg double %90
  %92 = fdiv double %91, %60
  %93 = tail call double @exp(double noundef %92) #11
  %94 = fdiv double %93, %62
  %95 = load ptr, ptr %69, align 8, !tbaa !55
  %96 = getelementptr inbounds double, ptr %95, i64 %87
  store double %94, ptr %96, align 8, !tbaa !56
  %97 = fadd double %88, %94
  %98 = add nsw i64 %87, 1
  %99 = add i64 %86, 1
  %100 = icmp eq i64 %86, %78
  br i1 %100, label %101, label %85, !llvm.loop !57

101:                                              ; preds = %85
  %102 = add i64 %80, 1
  %103 = icmp eq i64 %80, %78
  br i1 %103, label %104, label %79, !llvm.loop !60

104:                                              ; preds = %101, %73
  %105 = phi double [ 0.000000e+00, %73 ], [ %97, %101 ]
  %106 = phi i64 [ -1, %73 ], [ %87, %101 ]
  %107 = fsub double 1.000000e+00, %105
  %108 = load ptr, ptr %69, align 8, !tbaa !55
  %109 = sdiv i64 %106, 2
  %110 = getelementptr inbounds double, ptr %108, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !56
  %112 = fadd double %107, %111
  %113 = select i1 %63, double 1.000000e+00, double %112
  store double %113, ptr %110, align 8, !tbaa !56
  %114 = add nuw nsw i64 %65, 2
  %115 = icmp slt i64 %114, %44
  br i1 %115, label %64, label %129, !llvm.loop !61

116:                                              ; preds = %71, %116
  %117 = phi i64 [ %118, %116 ], [ %65, %71 ]
  %118 = add nsw i64 %117, -2
  %119 = getelementptr inbounds ptr, ptr %45, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !55
  %121 = tail call ptr @RelinquishAlignedMemory(ptr noundef %120) #11
  store ptr %121, ptr %119, align 8, !tbaa !55
  %122 = icmp sgt i64 %117, 3
  br i1 %122, label %116, label %123, !llvm.loop !62

123:                                              ; preds = %116, %71
  %124 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %45) #11
  %125 = tail call ptr @DestroyImage(ptr noundef nonnull %42) #11
  %126 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #11
  %127 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %128 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 269, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %127) #11
  br label %458

129:                                              ; preds = %104, %52
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #11
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %131 = load double, ptr %130, align 8, !tbaa !63
  %132 = fptrunc double %131 to float
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  store float %132, ptr %133, align 8, !tbaa !64
  %134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  store float %132, ptr %134, align 4, !tbaa !67
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  store float %132, ptr %135, align 8, !tbaa !68
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  store float %132, ptr %136, align 4, !tbaa !69
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  store float %132, ptr %137, align 8, !tbaa !70
  %138 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #11
  %139 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %42, ptr noundef %4) #11
  %140 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %19, ptr noundef %4) #11
  %141 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %142 = load i64, ptr %141, align 8, !tbaa !54
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %437

144:                                              ; preds = %129
  %145 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %146 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %147 = uitofp i64 %44 to double
  %148 = fmul double %147, 0x3EF0001000100010
  %149 = and i32 %1, 8
  %150 = icmp eq i32 %149, 0
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %152 = and i32 %1, 1
  %153 = icmp eq i32 %152, 0
  %154 = and i32 %1, 2
  %155 = icmp eq i32 %154, 0
  %156 = and i32 %1, 4
  %157 = icmp eq i32 %156, 0
  %158 = and i32 %1, 32
  %159 = icmp eq i32 %158, 0
  %160 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %161 = and i32 %1, 1
  %162 = icmp eq i32 %161, 0
  %163 = and i32 %1, 2
  %164 = icmp eq i32 %163, 0
  %165 = and i32 %1, 4
  %166 = icmp eq i32 %165, 0
  %167 = and i32 %1, 8
  %168 = icmp eq i32 %167, 0
  %169 = and i32 %1, 32
  %170 = icmp eq i32 %169, 0
  %171 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %172 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %174 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %175

175:                                              ; preds = %144, %429
  %176 = phi i64 [ 0, %144 ], [ %432, %429 ]
  %177 = phi i64 [ 0, %144 ], [ %431, %429 ]
  %178 = phi i32 [ 1, %144 ], [ %430, %429 ]
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %429, label %180

180:                                              ; preds = %175
  %181 = load i64, ptr %145, align 8, !tbaa !53
  %182 = call ptr @GetCacheViewVirtualPixels(ptr noundef %139, i64 noundef 0, i64 noundef %176, i64 noundef %181, i64 noundef 1, ptr noundef %4) #13
  %183 = load i64, ptr %146, align 8, !tbaa !53
  %184 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %140, i64 noundef 0, i64 noundef %176, i64 noundef %183, i64 noundef 1, ptr noundef %4) #13
  %185 = icmp eq ptr %182, null
  %186 = icmp eq ptr %184, null
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %429, label %188

188:                                              ; preds = %180
  %189 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %140) #11
  %190 = load i64, ptr %146, align 8, !tbaa !53
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %414

192:                                              ; preds = %188
  %193 = icmp eq ptr %189, null
  br label %198

194:                                              ; preds = %411
  %195 = add nuw nsw i64 %199, 1
  %196 = load i64, ptr %146, align 8, !tbaa !53
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %414, !llvm.loop !71

198:                                              ; preds = %192, %194
  %199 = phi i64 [ 0, %192 ], [ %195, %194 ]
  %200 = phi ptr [ %184, %192 ], [ %413, %194 ]
  %201 = phi ptr [ %182, %192 ], [ %412, %194 ]
  %202 = call float @GetPixelIntensity(ptr noundef nonnull %42, ptr noundef %201) #13
  %203 = fpext float %202 to double
  %204 = call double @llvm.fmuladd.f64(double %148, double %203, double -5.000000e-01)
  %205 = call double @llvm.ceil.f64(double %204)
  %206 = fptosi double %205 to i64
  %207 = icmp slt i64 %206, 0
  %208 = call i64 @llvm.smin.i64(i64 %44, i64 %206)
  %209 = and i64 %208, -2
  %210 = select i1 %207, i64 0, i64 %209
  %211 = sub i64 %44, %210
  %212 = sdiv i64 %211, -2
  %213 = add i64 %212, %199
  %214 = lshr i64 %211, 1
  %215 = sub nsw i64 %176, %214
  %216 = call ptr @GetCacheViewVirtualPixels(ptr noundef %138, i64 noundef %213, i64 noundef %215, i64 noundef %211, i64 noundef %211, ptr noundef %4) #13
  %217 = icmp eq ptr %216, null
  br i1 %217, label %411, label %218

218:                                              ; preds = %198
  %219 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %138) #11
  %220 = load float, ptr %133, align 8, !tbaa !64
  %221 = fpext float %220 to double
  %222 = load float, ptr %134, align 4, !tbaa !67
  %223 = fpext float %222 to double
  %224 = load float, ptr %135, align 8, !tbaa !68
  %225 = fpext float %224 to double
  %226 = load float, ptr %136, align 4, !tbaa !69
  %227 = fpext float %226 to double
  %228 = load float, ptr %137, align 8, !tbaa !70
  %229 = fpext float %228 to double
  %230 = icmp sgt i64 %211, 0
  br i1 %230, label %231, label %330

231:                                              ; preds = %218
  %232 = getelementptr inbounds ptr, ptr %45, i64 %210
  %233 = load ptr, ptr %232, align 8, !tbaa !55
  %234 = icmp eq ptr %219, null
  %235 = getelementptr inbounds i16, ptr %219, i64 %199
  br label %236

236:                                              ; preds = %231, %327
  %237 = phi i64 [ 0, %231 ], [ %328, %327 ]
  %238 = phi ptr [ %233, %231 ], [ %323, %327 ]
  %239 = phi double [ %221, %231 ], [ %279, %327 ]
  %240 = phi double [ %223, %231 ], [ %288, %327 ]
  %241 = phi double [ %225, %231 ], [ %296, %327 ]
  %242 = phi double [ %227, %231 ], [ %304, %327 ]
  %243 = phi double [ %229, %231 ], [ %320, %327 ]
  %244 = phi double [ 0.000000e+00, %231 ], [ %322, %327 ]
  %245 = phi ptr [ %216, %231 ], [ %324, %327 ]
  %246 = mul i64 %237, %211
  %247 = getelementptr inbounds i16, ptr %235, i64 %246
  br label %248

248:                                              ; preds = %236, %319
  %249 = phi i64 [ 0, %236 ], [ %325, %319 ]
  %250 = phi ptr [ %238, %236 ], [ %323, %319 ]
  %251 = phi double [ %239, %236 ], [ %279, %319 ]
  %252 = phi double [ %240, %236 ], [ %288, %319 ]
  %253 = phi double [ %241, %236 ], [ %296, %319 ]
  %254 = phi double [ %242, %236 ], [ %304, %319 ]
  %255 = phi double [ %243, %236 ], [ %320, %319 ]
  %256 = phi double [ %244, %236 ], [ %322, %319 ]
  %257 = phi ptr [ %245, %236 ], [ %324, %319 ]
  br i1 %150, label %269, label %258

258:                                              ; preds = %248
  %259 = load i32, ptr %151, align 8, !tbaa !72
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %269, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %257, i64 0, i32 3
  %263 = load i16, ptr %262, align 2, !tbaa !73
  %264 = xor i16 %263, -1
  %265 = uitofp i16 %264 to double
  %266 = fmul double %265, 0x3EF0001000100010
  %267 = fptrunc double %266 to float
  %268 = fpext float %267 to double
  br label %269

269:                                              ; preds = %261, %258, %248
  %270 = phi double [ %268, %261 ], [ 1.000000e+00, %258 ], [ 1.000000e+00, %248 ]
  br i1 %153, label %278, label %271

271:                                              ; preds = %269
  %272 = load double, ptr %250, align 8, !tbaa !56
  %273 = fmul double %270, %272
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %257, i64 0, i32 2
  %275 = load i16, ptr %274, align 2, !tbaa !74
  %276 = uitofp i16 %275 to double
  %277 = call double @llvm.fmuladd.f64(double %273, double %276, double %251)
  br label %278

278:                                              ; preds = %271, %269
  %279 = phi double [ %277, %271 ], [ %251, %269 ]
  br i1 %155, label %287, label %280

280:                                              ; preds = %278
  %281 = load double, ptr %250, align 8, !tbaa !56
  %282 = fmul double %270, %281
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %257, i64 0, i32 1
  %284 = load i16, ptr %283, align 2, !tbaa !75
  %285 = uitofp i16 %284 to double
  %286 = call double @llvm.fmuladd.f64(double %282, double %285, double %252)
  br label %287

287:                                              ; preds = %280, %278
  %288 = phi double [ %286, %280 ], [ %252, %278 ]
  br i1 %157, label %295, label %289

289:                                              ; preds = %287
  %290 = load double, ptr %250, align 8, !tbaa !56
  %291 = fmul double %270, %290
  %292 = load i16, ptr %257, align 2, !tbaa !76
  %293 = uitofp i16 %292 to double
  %294 = call double @llvm.fmuladd.f64(double %291, double %293, double %253)
  br label %295

295:                                              ; preds = %289, %287
  %296 = phi double [ %294, %289 ], [ %253, %287 ]
  br i1 %150, label %303, label %297

297:                                              ; preds = %295
  %298 = load double, ptr %250, align 8, !tbaa !56
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %257, i64 0, i32 3
  %300 = load i16, ptr %299, align 2, !tbaa !73
  %301 = uitofp i16 %300 to double
  %302 = call double @llvm.fmuladd.f64(double %298, double %301, double %254)
  br label %303

303:                                              ; preds = %297, %295
  %304 = phi double [ %302, %297 ], [ %254, %295 ]
  br i1 %159, label %319, label %305

305:                                              ; preds = %303
  %306 = load i32, ptr %160, align 4, !tbaa !77
  %307 = icmp eq i32 %306, 12
  br i1 %307, label %308, label %319

308:                                              ; preds = %305
  %309 = load double, ptr %250, align 8, !tbaa !56
  %310 = fmul double %270, %309
  br i1 %234, label %315, label %311

311:                                              ; preds = %308
  %312 = getelementptr inbounds i16, ptr %247, i64 %249
  %313 = load i16, ptr %312, align 2, !tbaa !78
  %314 = zext i16 %313 to i32
  br label %315

315:                                              ; preds = %308, %311
  %316 = phi i32 [ %314, %311 ], [ 0, %308 ]
  %317 = sitofp i32 %316 to double
  %318 = call double @llvm.fmuladd.f64(double %310, double %317, double %255)
  br label %319

319:                                              ; preds = %315, %305, %303
  %320 = phi double [ %318, %315 ], [ %255, %305 ], [ %255, %303 ]
  %321 = load double, ptr %250, align 8, !tbaa !56
  %322 = call double @llvm.fmuladd.f64(double %321, double %270, double %256)
  %323 = getelementptr inbounds double, ptr %250, i64 1
  %324 = getelementptr inbounds %struct._PixelPacket, ptr %257, i64 1
  %325 = add nuw nsw i64 %249, 1
  %326 = icmp eq i64 %325, %211
  br i1 %326, label %327, label %248, !llvm.loop !79

327:                                              ; preds = %319
  %328 = add nuw nsw i64 %237, 1
  %329 = icmp eq i64 %328, %211
  br i1 %329, label %330, label %236, !llvm.loop !80

330:                                              ; preds = %327, %218
  %331 = phi double [ 0.000000e+00, %218 ], [ %322, %327 ]
  %332 = phi double [ %229, %218 ], [ %320, %327 ]
  %333 = phi double [ %227, %218 ], [ %304, %327 ]
  %334 = phi double [ %225, %218 ], [ %296, %327 ]
  %335 = phi double [ %223, %218 ], [ %288, %327 ]
  %336 = phi double [ %221, %218 ], [ %279, %327 ]
  %337 = fcmp olt double %331, 0.000000e+00
  %338 = select i1 %337, double 0.000000e+00, double %331
  %339 = fcmp ult double %338, 1.000000e-15
  %340 = fdiv double 1.000000e+00, %338
  %341 = select i1 %339, double 0x430C6BF52633FFFF, double %340
  br i1 %162, label %354, label %342

342:                                              ; preds = %330
  %343 = fmul double %341, %336
  %344 = fptrunc double %343 to float
  %345 = fcmp ugt float %344, 0.000000e+00
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  %347 = fcmp ult float %344, 6.553500e+04
  br i1 %347, label %348, label %351

348:                                              ; preds = %346
  %349 = fadd float %344, 5.000000e-01
  %350 = fptoui float %349 to i16
  br label %351

351:                                              ; preds = %342, %346, %348
  %352 = phi i16 [ %350, %348 ], [ 0, %342 ], [ -1, %346 ]
  %353 = getelementptr inbounds %struct._PixelPacket, ptr %200, i64 0, i32 2
  store i16 %352, ptr %353, align 2, !tbaa !74
  br label %354

354:                                              ; preds = %351, %330
  br i1 %164, label %367, label %355

355:                                              ; preds = %354
  %356 = fmul double %341, %335
  %357 = fptrunc double %356 to float
  %358 = fcmp ugt float %357, 0.000000e+00
  br i1 %358, label %359, label %364

359:                                              ; preds = %355
  %360 = fcmp ult float %357, 6.553500e+04
  br i1 %360, label %361, label %364

361:                                              ; preds = %359
  %362 = fadd float %357, 5.000000e-01
  %363 = fptoui float %362 to i16
  br label %364

364:                                              ; preds = %355, %359, %361
  %365 = phi i16 [ %363, %361 ], [ 0, %355 ], [ -1, %359 ]
  %366 = getelementptr inbounds %struct._PixelPacket, ptr %200, i64 0, i32 1
  store i16 %365, ptr %366, align 2, !tbaa !75
  br label %367

367:                                              ; preds = %364, %354
  br i1 %166, label %379, label %368

368:                                              ; preds = %367
  %369 = fmul double %334, %341
  %370 = fptrunc double %369 to float
  %371 = fcmp ugt float %370, 0.000000e+00
  br i1 %371, label %372, label %377

372:                                              ; preds = %368
  %373 = fcmp ult float %370, 6.553500e+04
  br i1 %373, label %374, label %377

374:                                              ; preds = %372
  %375 = fadd float %370, 5.000000e-01
  %376 = fptoui float %375 to i16
  br label %377

377:                                              ; preds = %368, %372, %374
  %378 = phi i16 [ %376, %374 ], [ 0, %368 ], [ -1, %372 ]
  store i16 %378, ptr %200, align 2, !tbaa !76
  br label %379

379:                                              ; preds = %377, %367
  br i1 %168, label %391, label %380

380:                                              ; preds = %379
  %381 = fptrunc double %333 to float
  %382 = fcmp ugt float %381, 0.000000e+00
  br i1 %382, label %383, label %388

383:                                              ; preds = %380
  %384 = fcmp ult float %381, 6.553500e+04
  br i1 %384, label %385, label %388

385:                                              ; preds = %383
  %386 = fadd float %381, 5.000000e-01
  %387 = fptoui float %386 to i16
  br label %388

388:                                              ; preds = %380, %383, %385
  %389 = phi i16 [ %387, %385 ], [ 0, %380 ], [ -1, %383 ]
  %390 = getelementptr inbounds %struct._PixelPacket, ptr %200, i64 0, i32 3
  store i16 %389, ptr %390, align 2, !tbaa !73
  br label %391

391:                                              ; preds = %388, %379
  br i1 %170, label %408, label %392

392:                                              ; preds = %391
  %393 = load i32, ptr %171, align 4, !tbaa !77
  %394 = icmp ne i32 %393, 12
  %395 = select i1 %394, i1 true, i1 %193
  br i1 %395, label %408, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds i16, ptr %189, i64 %199
  %398 = fmul double %332, %341
  %399 = fptrunc double %398 to float
  %400 = fcmp ugt float %399, 0.000000e+00
  br i1 %400, label %401, label %406

401:                                              ; preds = %396
  %402 = fcmp ult float %399, 6.553500e+04
  br i1 %402, label %403, label %406

403:                                              ; preds = %401
  %404 = fadd float %399, 5.000000e-01
  %405 = fptoui float %404 to i16
  br label %406

406:                                              ; preds = %396, %401, %403
  %407 = phi i16 [ %405, %403 ], [ 0, %396 ], [ -1, %401 ]
  store i16 %407, ptr %397, align 2, !tbaa !78
  br label %408

408:                                              ; preds = %406, %392, %391
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %200, i64 1
  %410 = getelementptr inbounds %struct._PixelPacket, ptr %201, i64 1
  br label %411

411:                                              ; preds = %198, %408
  %412 = phi ptr [ %410, %408 ], [ %201, %198 ]
  %413 = phi ptr [ %409, %408 ], [ %200, %198 ]
  br i1 %217, label %414, label %194

414:                                              ; preds = %194, %411, %188
  %415 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %140, ptr noundef %4) #13
  %416 = icmp ne i32 %415, 0
  %417 = zext i1 %416 to i32
  %418 = load ptr, ptr %172, align 8, !tbaa !81
  %419 = icmp eq ptr %418, null
  br i1 %419, label %429, label %420

420:                                              ; preds = %414
  %421 = add nsw i64 %177, 1
  %422 = load i64, ptr %17, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  %423 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.7, ptr noundef nonnull %173) #11
  %424 = load ptr, ptr %172, align 8, !tbaa !81
  %425 = load ptr, ptr %174, align 8, !tbaa !82
  %426 = call i32 %424(ptr noundef nonnull %6, i64 noundef %177, i64 noundef %422, ptr noundef %425) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  %427 = icmp eq i32 %426, 0
  %428 = select i1 %427, i32 0, i32 %417
  br label %429

429:                                              ; preds = %414, %420, %180, %175
  %430 = phi i32 [ 0, %175 ], [ 0, %180 ], [ %428, %420 ], [ %417, %414 ]
  %431 = phi i64 [ %177, %175 ], [ %177, %180 ], [ %421, %420 ], [ %177, %414 ]
  %432 = add nuw nsw i64 %176, 1
  %433 = load i64, ptr %141, align 8, !tbaa !54
  %434 = icmp slt i64 %432, %433
  br i1 %434, label %175, label %435, !llvm.loop !83

435:                                              ; preds = %429
  %436 = icmp eq i32 %430, 0
  br label %437

437:                                              ; preds = %435, %129
  %438 = phi i1 [ false, %129 ], [ %436, %435 ]
  %439 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %440 = load i32, ptr %439, align 8, !tbaa !84
  %441 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 77
  store i32 %440, ptr %441, align 8, !tbaa !84
  %442 = call ptr @DestroyCacheView(ptr noundef %140) #11
  %443 = call ptr @DestroyCacheView(ptr noundef %139) #11
  %444 = call ptr @DestroyCacheView(ptr noundef %138) #11
  %445 = call ptr @DestroyImage(ptr noundef nonnull %42) #11
  %446 = icmp sgt i64 %44, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %437, %447
  %448 = phi i64 [ %452, %447 ], [ 0, %437 ]
  %449 = getelementptr inbounds ptr, ptr %45, i64 %448
  %450 = load ptr, ptr %449, align 8, !tbaa !55
  %451 = call ptr @RelinquishAlignedMemory(ptr noundef %450) #11
  store ptr %451, ptr %449, align 8, !tbaa !55
  %452 = add nuw nsw i64 %448, 2
  %453 = icmp slt i64 %452, %44
  br i1 %453, label %447, label %454, !llvm.loop !85

454:                                              ; preds = %447, %437
  %455 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %45) #11
  br i1 %438, label %456, label %458

456:                                              ; preds = %454
  %457 = call ptr @DestroyImage(ptr noundef nonnull %19) #11
  br label %458

458:                                              ; preds = %454, %456, %21, %14, %123, %47, %33, %27
  %459 = phi ptr [ null, %27 ], [ null, %33 ], [ null, %47 ], [ null, %123 ], [ null, %14 ], [ %19, %21 ], [ %457, %456 ], [ %19, %454 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #11
  ret ptr %459
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @EdgeImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1285, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef 5.000000e-01) #11
  %12 = tail call ptr @AcquireKernelInfo(ptr noundef null) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1291, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %15) #11
  br label %59

17:                                               ; preds = %10
  %18 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 104) #11
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 1
  store i64 %11, ptr %19, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 2
  store i64 %11, ptr %20, align 8, !tbaa !88
  %21 = add i64 %11, -1
  %22 = sdiv i64 %21, 2
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 3
  store i64 %22, ptr %23, align 8, !tbaa !89
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 4
  store i64 %22, ptr %24, align 8, !tbaa !90
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 12
  store i64 2880220587, ptr %25, align 8, !tbaa !91
  %26 = shl i64 %11, 3
  %27 = tail call ptr @AcquireAlignedMemory(i64 noundef %11, i64 noundef %26) #12
  %28 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 5
  store ptr %27, ptr %28, align 8, !tbaa !92
  %29 = icmp eq ptr %27, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %17
  %31 = load i64, ptr %19, align 8, !tbaa !86
  %32 = load i64, ptr %20, align 8, !tbaa !88
  %33 = mul i64 %32, %31
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %39, label %46

35:                                               ; preds = %17
  %36 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %12) #11
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %38 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1303, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %37) #11
  br label %59

39:                                               ; preds = %30, %39
  %40 = phi i64 [ %42, %39 ], [ 0, %30 ]
  %41 = getelementptr inbounds double, ptr %27, i64 %40
  store double -1.000000e+00, ptr %41, align 8, !tbaa !56
  %42 = add nuw nsw i64 %40, 1
  %43 = icmp eq i64 %42, %33
  br i1 %43, label %44, label %39, !llvm.loop !93

44:                                               ; preds = %39
  %45 = lshr i64 %42, 1
  br label %46

46:                                               ; preds = %44, %30
  %47 = phi i64 [ 0, %30 ], [ %45, %44 ]
  %48 = uitofp i64 %31 to double
  %49 = uitofp i64 %32 to double
  %50 = tail call double @llvm.fmuladd.f64(double %48, double %49, double -1.000000e+00)
  %51 = getelementptr inbounds double, ptr %27, i64 %47
  store double %50, ptr %51, align 8, !tbaa !56
  %52 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %12, ptr noundef %2) #11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %12, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %2) #11
  br label %56

56:                                               ; preds = %54, %46
  %57 = phi ptr [ %55, %54 ], [ %52, %46 ]
  %58 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %12) #11
  br label %59

59:                                               ; preds = %56, %35, %14
  %60 = phi ptr [ null, %14 ], [ null, %35 ], [ %57, %56 ]
  ret ptr %60
}

declare i32 @LevelImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3)
  ret ptr %5
}

declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @AdaptiveSharpenImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AdaptiveSharpenImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @AdaptiveSharpenImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 520, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %11, %5
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %455, label %17

17:                                               ; preds = %14
  %18 = tail call double @llvm.fabs.f64(double %3)
  %19 = fcmp ugt double %18, 1.000000e-15
  br i1 %19, label %20, label %455

20:                                               ; preds = %17
  %21 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %15, i32 noundef 1) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %24) #11
  %25 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #11
  br label %455

26:                                               ; preds = %20
  %27 = tail call ptr @EdgeImage(ptr noundef %0, double noundef %2, ptr noundef %4)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #11
  br label %455

31:                                               ; preds = %26
  %32 = tail call i32 @LevelImage(ptr noundef nonnull %27, ptr noundef nonnull @.str.3) #11
  %33 = tail call ptr @BlurImageChannel(ptr noundef nonnull %27, i32 noundef 134217719, double noundef %2, double noundef %3, ptr noundef %4)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #11
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi ptr [ %33, %35 ], [ %27, %31 ]
  %39 = tail call i32 @LevelImage(ptr noundef nonnull %38, ptr noundef nonnull @.str.4) #11
  %40 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #11
  %41 = tail call ptr @AcquireAlignedMemory(i64 noundef %40, i64 noundef 8) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = tail call ptr @DestroyImage(ptr noundef nonnull %38) #11
  %45 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #11
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %47 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 561, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %46) #11
  br label %455

48:                                               ; preds = %37
  %49 = shl i64 %40, 3
  %50 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %41, i32 noundef 0, i64 noundef %49) #11
  %51 = icmp sgt i64 %40, 0
  br i1 %51, label %52, label %125

52:                                               ; preds = %48
  %53 = fcmp olt double %18, 1.000000e-15
  %54 = select i1 %53, double 1.000000e-15, double %3
  %55 = fmul double %54, 2.000000e+00
  %56 = fmul double %54, %55
  %57 = fmul double %54, 0x401921FB54442D18
  %58 = fmul double %54, %57
  %59 = fcmp olt double %3, 1.000000e-15
  br label %60

60:                                               ; preds = %52, %102
  %61 = phi i64 [ 0, %52 ], [ %110, %102 ]
  %62 = sub nsw i64 %40, %61
  %63 = shl i64 %62, 3
  %64 = tail call ptr @AcquireAlignedMemory(i64 noundef %62, i64 noundef %63) #12
  %65 = getelementptr inbounds ptr, ptr %41, i64 %61
  store ptr %64, ptr %65, align 8, !tbaa !55
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = icmp eq i64 %61, 0
  br i1 %68, label %119, label %112

69:                                               ; preds = %60
  %70 = add i64 %62, -1
  %71 = sdiv i64 %70, 2
  %72 = sub nsw i64 0, %71
  %73 = icmp ugt i64 %62, -9223372036854775808
  br i1 %73, label %102, label %74

74:                                               ; preds = %69
  %75 = tail call i64 @llvm.abs.i64(i64 %71, i1 true)
  br label %76

76:                                               ; preds = %74, %99
  %77 = phi i64 [ %100, %99 ], [ %72, %74 ]
  %78 = phi i64 [ %96, %99 ], [ 0, %74 ]
  %79 = phi double [ %95, %99 ], [ 0.000000e+00, %74 ]
  %80 = mul nsw i64 %77, %77
  %81 = sitofp i64 %80 to double
  br label %82

82:                                               ; preds = %76, %82
  %83 = phi i64 [ %72, %76 ], [ %97, %82 ]
  %84 = phi i64 [ %78, %76 ], [ %96, %82 ]
  %85 = phi double [ %79, %76 ], [ %95, %82 ]
  %86 = sitofp i64 %83 to double
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %86, double %81)
  %88 = fneg double %87
  %89 = fdiv double %88, %56
  %90 = tail call double @exp(double noundef %89) #11
  %91 = fneg double %90
  %92 = fdiv double %91, %58
  %93 = load ptr, ptr %65, align 8, !tbaa !55
  %94 = getelementptr inbounds double, ptr %93, i64 %84
  store double %92, ptr %94, align 8, !tbaa !56
  %95 = fadd double %85, %92
  %96 = add nsw i64 %84, 1
  %97 = add i64 %83, 1
  %98 = icmp eq i64 %83, %75
  br i1 %98, label %99, label %82, !llvm.loop !94

99:                                               ; preds = %82
  %100 = add i64 %77, 1
  %101 = icmp eq i64 %77, %75
  br i1 %101, label %102, label %76, !llvm.loop !95

102:                                              ; preds = %99, %69
  %103 = phi double [ 0.000000e+00, %69 ], [ %95, %99 ]
  %104 = phi i64 [ -1, %69 ], [ %84, %99 ]
  %105 = fmul double %103, -2.000000e+00
  %106 = load ptr, ptr %65, align 8, !tbaa !55
  %107 = sdiv i64 %104, 2
  %108 = getelementptr inbounds double, ptr %106, i64 %107
  %109 = select i1 %59, double 1.000000e+00, double %105
  store double %109, ptr %108, align 8, !tbaa !56
  %110 = add nuw nsw i64 %61, 2
  %111 = icmp slt i64 %110, %40
  br i1 %111, label %60, label %125, !llvm.loop !96

112:                                              ; preds = %67, %112
  %113 = phi i64 [ %114, %112 ], [ %61, %67 ]
  %114 = add nsw i64 %113, -2
  %115 = getelementptr inbounds ptr, ptr %41, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !55
  %117 = tail call ptr @RelinquishAlignedMemory(ptr noundef %116) #11
  store ptr %117, ptr %115, align 8, !tbaa !55
  %118 = icmp sgt i64 %113, 3
  br i1 %118, label %112, label %119, !llvm.loop !97

119:                                              ; preds = %112, %67
  %120 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %41) #11
  %121 = tail call ptr @DestroyImage(ptr noundef nonnull %38) #11
  %122 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #11
  %123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %124 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 594, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %123) #11
  br label %455

125:                                              ; preds = %102, %48
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #11
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %127 = load double, ptr %126, align 8, !tbaa !63
  %128 = fptrunc double %127 to float
  %129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  store float %128, ptr %129, align 8, !tbaa !64
  %130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  store float %128, ptr %130, align 4, !tbaa !67
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  store float %128, ptr %131, align 8, !tbaa !68
  %132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  store float %128, ptr %132, align 4, !tbaa !69
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  store float %128, ptr %133, align 8, !tbaa !70
  %134 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #11
  %135 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %38, ptr noundef %4) #11
  %136 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %4) #11
  %137 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %138 = load i64, ptr %137, align 8, !tbaa !54
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %434

140:                                              ; preds = %125
  %141 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 7
  %142 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %143 = uitofp i64 %40 to double
  %144 = and i32 %1, 8
  %145 = icmp eq i32 %144, 0
  %146 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %147 = and i32 %1, 1
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %1, 2
  %150 = icmp eq i32 %149, 0
  %151 = and i32 %1, 4
  %152 = icmp eq i32 %151, 0
  %153 = and i32 %1, 32
  %154 = icmp eq i32 %153, 0
  %155 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %156 = and i32 %1, 1
  %157 = icmp eq i32 %156, 0
  %158 = and i32 %1, 2
  %159 = icmp eq i32 %158, 0
  %160 = and i32 %1, 4
  %161 = icmp eq i32 %160, 0
  %162 = and i32 %1, 8
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %1, 32
  %165 = icmp eq i32 %164, 0
  %166 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %167 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %168 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %169 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %170 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %171

171:                                              ; preds = %140, %426
  %172 = phi i64 [ 0, %140 ], [ %429, %426 ]
  %173 = phi i64 [ 0, %140 ], [ %428, %426 ]
  %174 = phi i32 [ 1, %140 ], [ %427, %426 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %426, label %176

176:                                              ; preds = %171
  %177 = load i64, ptr %141, align 8, !tbaa !53
  %178 = call ptr @GetCacheViewVirtualPixels(ptr noundef %135, i64 noundef 0, i64 noundef %172, i64 noundef %177, i64 noundef 1, ptr noundef %4) #13
  %179 = load i64, ptr %142, align 8, !tbaa !53
  %180 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %136, i64 noundef 0, i64 noundef %172, i64 noundef %179, i64 noundef 1, ptr noundef %4) #13
  %181 = icmp eq ptr %178, null
  %182 = icmp eq ptr %180, null
  %183 = select i1 %181, i1 true, i1 %182
  br i1 %183, label %426, label %184

184:                                              ; preds = %176
  %185 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %136) #11
  %186 = load i64, ptr %142, align 8, !tbaa !53
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %411

188:                                              ; preds = %184
  %189 = icmp eq ptr %185, null
  br label %194

190:                                              ; preds = %408
  %191 = add nuw nsw i64 %195, 1
  %192 = load i64, ptr %142, align 8, !tbaa !53
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %411, !llvm.loop !98

194:                                              ; preds = %188, %190
  %195 = phi i64 [ 0, %188 ], [ %191, %190 ]
  %196 = phi ptr [ %180, %188 ], [ %410, %190 ]
  %197 = phi ptr [ %178, %188 ], [ %409, %190 ]
  %198 = call float @GetPixelIntensity(ptr noundef nonnull %38, ptr noundef %197) #13
  %199 = fpext float %198 to double
  %200 = call double @llvm.fmuladd.f64(double %199, double 0xBEF0001000100010, double 1.000000e+00)
  %201 = call double @llvm.fmuladd.f64(double %143, double %200, double -5.000000e-01)
  %202 = call double @llvm.ceil.f64(double %201)
  %203 = fptosi double %202 to i64
  %204 = icmp slt i64 %203, 0
  %205 = call i64 @llvm.smin.i64(i64 %40, i64 %203)
  %206 = and i64 %205, -2
  %207 = select i1 %204, i64 0, i64 %206
  %208 = sub i64 %40, %207
  %209 = sdiv i64 %208, -2
  %210 = add i64 %209, %195
  %211 = lshr i64 %208, 1
  %212 = sub nsw i64 %172, %211
  %213 = call ptr @GetCacheViewVirtualPixels(ptr noundef %134, i64 noundef %210, i64 noundef %212, i64 noundef %208, i64 noundef %208, ptr noundef %4) #13
  %214 = icmp eq ptr %213, null
  br i1 %214, label %408, label %215

215:                                              ; preds = %194
  %216 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %134) #11
  %217 = load float, ptr %129, align 8, !tbaa !64
  %218 = fpext float %217 to double
  %219 = load float, ptr %130, align 4, !tbaa !67
  %220 = fpext float %219 to double
  %221 = load float, ptr %131, align 8, !tbaa !68
  %222 = fpext float %221 to double
  %223 = load float, ptr %132, align 4, !tbaa !69
  %224 = fpext float %223 to double
  %225 = load float, ptr %133, align 8, !tbaa !70
  %226 = fpext float %225 to double
  %227 = icmp sgt i64 %208, 0
  br i1 %227, label %228, label %327

228:                                              ; preds = %215
  %229 = getelementptr inbounds ptr, ptr %41, i64 %207
  %230 = load ptr, ptr %229, align 8, !tbaa !55
  %231 = icmp eq ptr %216, null
  %232 = getelementptr inbounds i16, ptr %216, i64 %195
  br label %233

233:                                              ; preds = %228, %324
  %234 = phi i64 [ 0, %228 ], [ %325, %324 ]
  %235 = phi ptr [ %230, %228 ], [ %320, %324 ]
  %236 = phi double [ %218, %228 ], [ %276, %324 ]
  %237 = phi double [ %220, %228 ], [ %285, %324 ]
  %238 = phi double [ %222, %228 ], [ %293, %324 ]
  %239 = phi double [ %224, %228 ], [ %301, %324 ]
  %240 = phi double [ %226, %228 ], [ %317, %324 ]
  %241 = phi double [ 0.000000e+00, %228 ], [ %319, %324 ]
  %242 = phi ptr [ %213, %228 ], [ %321, %324 ]
  %243 = mul i64 %234, %208
  %244 = getelementptr inbounds i16, ptr %232, i64 %243
  br label %245

245:                                              ; preds = %233, %316
  %246 = phi i64 [ 0, %233 ], [ %322, %316 ]
  %247 = phi ptr [ %235, %233 ], [ %320, %316 ]
  %248 = phi double [ %236, %233 ], [ %276, %316 ]
  %249 = phi double [ %237, %233 ], [ %285, %316 ]
  %250 = phi double [ %238, %233 ], [ %293, %316 ]
  %251 = phi double [ %239, %233 ], [ %301, %316 ]
  %252 = phi double [ %240, %233 ], [ %317, %316 ]
  %253 = phi double [ %241, %233 ], [ %319, %316 ]
  %254 = phi ptr [ %242, %233 ], [ %321, %316 ]
  br i1 %145, label %266, label %255

255:                                              ; preds = %245
  %256 = load i32, ptr %146, align 8, !tbaa !72
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 0, i32 3
  %260 = load i16, ptr %259, align 2, !tbaa !73
  %261 = xor i16 %260, -1
  %262 = uitofp i16 %261 to double
  %263 = fmul double %262, 0x3EF0001000100010
  %264 = fptrunc double %263 to float
  %265 = fpext float %264 to double
  br label %266

266:                                              ; preds = %258, %255, %245
  %267 = phi double [ %265, %258 ], [ 1.000000e+00, %255 ], [ 1.000000e+00, %245 ]
  br i1 %148, label %275, label %268

268:                                              ; preds = %266
  %269 = load double, ptr %247, align 8, !tbaa !56
  %270 = fmul double %267, %269
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 0, i32 2
  %272 = load i16, ptr %271, align 2, !tbaa !74
  %273 = uitofp i16 %272 to double
  %274 = call double @llvm.fmuladd.f64(double %270, double %273, double %248)
  br label %275

275:                                              ; preds = %268, %266
  %276 = phi double [ %274, %268 ], [ %248, %266 ]
  br i1 %150, label %284, label %277

277:                                              ; preds = %275
  %278 = load double, ptr %247, align 8, !tbaa !56
  %279 = fmul double %267, %278
  %280 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 0, i32 1
  %281 = load i16, ptr %280, align 2, !tbaa !75
  %282 = uitofp i16 %281 to double
  %283 = call double @llvm.fmuladd.f64(double %279, double %282, double %249)
  br label %284

284:                                              ; preds = %277, %275
  %285 = phi double [ %283, %277 ], [ %249, %275 ]
  br i1 %152, label %292, label %286

286:                                              ; preds = %284
  %287 = load double, ptr %247, align 8, !tbaa !56
  %288 = fmul double %267, %287
  %289 = load i16, ptr %254, align 2, !tbaa !76
  %290 = uitofp i16 %289 to double
  %291 = call double @llvm.fmuladd.f64(double %288, double %290, double %250)
  br label %292

292:                                              ; preds = %286, %284
  %293 = phi double [ %291, %286 ], [ %250, %284 ]
  br i1 %145, label %300, label %294

294:                                              ; preds = %292
  %295 = load double, ptr %247, align 8, !tbaa !56
  %296 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 0, i32 3
  %297 = load i16, ptr %296, align 2, !tbaa !73
  %298 = uitofp i16 %297 to double
  %299 = call double @llvm.fmuladd.f64(double %295, double %298, double %251)
  br label %300

300:                                              ; preds = %294, %292
  %301 = phi double [ %299, %294 ], [ %251, %292 ]
  br i1 %154, label %316, label %302

302:                                              ; preds = %300
  %303 = load i32, ptr %155, align 4, !tbaa !77
  %304 = icmp eq i32 %303, 12
  br i1 %304, label %305, label %316

305:                                              ; preds = %302
  %306 = load double, ptr %247, align 8, !tbaa !56
  %307 = fmul double %267, %306
  br i1 %231, label %312, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds i16, ptr %244, i64 %246
  %310 = load i16, ptr %309, align 2, !tbaa !78
  %311 = zext i16 %310 to i32
  br label %312

312:                                              ; preds = %305, %308
  %313 = phi i32 [ %311, %308 ], [ 0, %305 ]
  %314 = sitofp i32 %313 to double
  %315 = call double @llvm.fmuladd.f64(double %307, double %314, double %252)
  br label %316

316:                                              ; preds = %312, %302, %300
  %317 = phi double [ %315, %312 ], [ %252, %302 ], [ %252, %300 ]
  %318 = load double, ptr %247, align 8, !tbaa !56
  %319 = call double @llvm.fmuladd.f64(double %318, double %267, double %253)
  %320 = getelementptr inbounds double, ptr %247, i64 1
  %321 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 1
  %322 = add nuw nsw i64 %246, 1
  %323 = icmp eq i64 %322, %208
  br i1 %323, label %324, label %245, !llvm.loop !99

324:                                              ; preds = %316
  %325 = add nuw nsw i64 %234, 1
  %326 = icmp eq i64 %325, %208
  br i1 %326, label %327, label %233, !llvm.loop !100

327:                                              ; preds = %324, %215
  %328 = phi double [ 0.000000e+00, %215 ], [ %319, %324 ]
  %329 = phi double [ %226, %215 ], [ %317, %324 ]
  %330 = phi double [ %224, %215 ], [ %301, %324 ]
  %331 = phi double [ %222, %215 ], [ %293, %324 ]
  %332 = phi double [ %220, %215 ], [ %285, %324 ]
  %333 = phi double [ %218, %215 ], [ %276, %324 ]
  %334 = fcmp olt double %328, 0.000000e+00
  %335 = select i1 %334, double 0.000000e+00, double %328
  %336 = fcmp ult double %335, 1.000000e-15
  %337 = fdiv double 1.000000e+00, %335
  %338 = select i1 %336, double 0x430C6BF52633FFFF, double %337
  br i1 %157, label %351, label %339

339:                                              ; preds = %327
  %340 = fmul double %338, %333
  %341 = fptrunc double %340 to float
  %342 = fcmp ugt float %341, 0.000000e+00
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  %344 = fcmp ult float %341, 6.553500e+04
  br i1 %344, label %345, label %348

345:                                              ; preds = %343
  %346 = fadd float %341, 5.000000e-01
  %347 = fptoui float %346 to i16
  br label %348

348:                                              ; preds = %339, %343, %345
  %349 = phi i16 [ %347, %345 ], [ 0, %339 ], [ -1, %343 ]
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 0, i32 2
  store i16 %349, ptr %350, align 2, !tbaa !74
  br label %351

351:                                              ; preds = %348, %327
  br i1 %159, label %364, label %352

352:                                              ; preds = %351
  %353 = fmul double %338, %332
  %354 = fptrunc double %353 to float
  %355 = fcmp ugt float %354, 0.000000e+00
  br i1 %355, label %356, label %361

356:                                              ; preds = %352
  %357 = fcmp ult float %354, 6.553500e+04
  br i1 %357, label %358, label %361

358:                                              ; preds = %356
  %359 = fadd float %354, 5.000000e-01
  %360 = fptoui float %359 to i16
  br label %361

361:                                              ; preds = %352, %356, %358
  %362 = phi i16 [ %360, %358 ], [ 0, %352 ], [ -1, %356 ]
  %363 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 0, i32 1
  store i16 %362, ptr %363, align 2, !tbaa !75
  br label %364

364:                                              ; preds = %361, %351
  br i1 %161, label %376, label %365

365:                                              ; preds = %364
  %366 = fmul double %331, %338
  %367 = fptrunc double %366 to float
  %368 = fcmp ugt float %367, 0.000000e+00
  br i1 %368, label %369, label %374

369:                                              ; preds = %365
  %370 = fcmp ult float %367, 6.553500e+04
  br i1 %370, label %371, label %374

371:                                              ; preds = %369
  %372 = fadd float %367, 5.000000e-01
  %373 = fptoui float %372 to i16
  br label %374

374:                                              ; preds = %365, %369, %371
  %375 = phi i16 [ %373, %371 ], [ 0, %365 ], [ -1, %369 ]
  store i16 %375, ptr %196, align 2, !tbaa !76
  br label %376

376:                                              ; preds = %374, %364
  br i1 %163, label %388, label %377

377:                                              ; preds = %376
  %378 = fptrunc double %330 to float
  %379 = fcmp ugt float %378, 0.000000e+00
  br i1 %379, label %380, label %385

380:                                              ; preds = %377
  %381 = fcmp ult float %378, 6.553500e+04
  br i1 %381, label %382, label %385

382:                                              ; preds = %380
  %383 = fadd float %378, 5.000000e-01
  %384 = fptoui float %383 to i16
  br label %385

385:                                              ; preds = %377, %380, %382
  %386 = phi i16 [ %384, %382 ], [ 0, %377 ], [ -1, %380 ]
  %387 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 0, i32 3
  store i16 %386, ptr %387, align 2, !tbaa !73
  br label %388

388:                                              ; preds = %385, %376
  br i1 %165, label %405, label %389

389:                                              ; preds = %388
  %390 = load i32, ptr %166, align 4, !tbaa !77
  %391 = icmp ne i32 %390, 12
  %392 = select i1 %391, i1 true, i1 %189
  br i1 %392, label %405, label %393

393:                                              ; preds = %389
  %394 = getelementptr inbounds i16, ptr %185, i64 %195
  %395 = fmul double %329, %338
  %396 = fptrunc double %395 to float
  %397 = fcmp ugt float %396, 0.000000e+00
  br i1 %397, label %398, label %403

398:                                              ; preds = %393
  %399 = fcmp ult float %396, 6.553500e+04
  br i1 %399, label %400, label %403

400:                                              ; preds = %398
  %401 = fadd float %396, 5.000000e-01
  %402 = fptoui float %401 to i16
  br label %403

403:                                              ; preds = %393, %398, %400
  %404 = phi i16 [ %402, %400 ], [ 0, %393 ], [ -1, %398 ]
  store i16 %404, ptr %394, align 2, !tbaa !78
  br label %405

405:                                              ; preds = %403, %389, %388
  %406 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 1
  %407 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 1
  br label %408

408:                                              ; preds = %194, %405
  %409 = phi ptr [ %407, %405 ], [ %197, %194 ]
  %410 = phi ptr [ %406, %405 ], [ %196, %194 ]
  br i1 %214, label %411, label %190

411:                                              ; preds = %190, %408, %184
  %412 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %136, ptr noundef %4) #13
  %413 = icmp ne i32 %412, 0
  %414 = zext i1 %413 to i32
  %415 = load ptr, ptr %167, align 8, !tbaa !81
  %416 = icmp eq ptr %415, null
  br i1 %416, label %426, label %417

417:                                              ; preds = %411
  %418 = add nsw i64 %173, 1
  %419 = load i64, ptr %168, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  %420 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.7, ptr noundef nonnull %169) #11
  %421 = load ptr, ptr %167, align 8, !tbaa !81
  %422 = load ptr, ptr %170, align 8, !tbaa !82
  %423 = call i32 %421(ptr noundef nonnull %6, i64 noundef %173, i64 noundef %419, ptr noundef %422) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  %424 = icmp eq i32 %423, 0
  %425 = select i1 %424, i32 0, i32 %414
  br label %426

426:                                              ; preds = %411, %417, %176, %171
  %427 = phi i32 [ 0, %171 ], [ 0, %176 ], [ %425, %417 ], [ %414, %411 ]
  %428 = phi i64 [ %173, %171 ], [ %173, %176 ], [ %418, %417 ], [ %173, %411 ]
  %429 = add nuw nsw i64 %172, 1
  %430 = load i64, ptr %137, align 8, !tbaa !54
  %431 = icmp slt i64 %429, %430
  br i1 %431, label %171, label %432, !llvm.loop !101

432:                                              ; preds = %426
  %433 = icmp eq i32 %427, 0
  br label %434

434:                                              ; preds = %432, %125
  %435 = phi i1 [ false, %125 ], [ %433, %432 ]
  %436 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %437 = load i32, ptr %436, align 8, !tbaa !84
  %438 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 77
  store i32 %437, ptr %438, align 8, !tbaa !84
  %439 = call ptr @DestroyCacheView(ptr noundef %136) #11
  %440 = call ptr @DestroyCacheView(ptr noundef %135) #11
  %441 = call ptr @DestroyCacheView(ptr noundef %134) #11
  %442 = call ptr @DestroyImage(ptr noundef nonnull %38) #11
  %443 = icmp sgt i64 %40, 0
  br i1 %443, label %444, label %451

444:                                              ; preds = %434, %444
  %445 = phi i64 [ %449, %444 ], [ 0, %434 ]
  %446 = getelementptr inbounds ptr, ptr %41, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !55
  %448 = call ptr @RelinquishAlignedMemory(ptr noundef %447) #11
  store ptr %448, ptr %446, align 8, !tbaa !55
  %449 = add nuw nsw i64 %445, 2
  %450 = icmp slt i64 %449, %40
  br i1 %450, label %444, label %451, !llvm.loop !102

451:                                              ; preds = %444, %434
  %452 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %41) #11
  br i1 %435, label %453, label %455

453:                                              ; preds = %451
  %454 = call ptr @DestroyImage(ptr noundef nonnull %15) #11
  br label %455

455:                                              ; preds = %451, %453, %17, %14, %119, %43, %29, %23
  %456 = phi ptr [ null, %23 ], [ null, %29 ], [ null, %43 ], [ null, %119 ], [ null, %14 ], [ %15, %17 ], [ %454, %453 ], [ %15, %451 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #11
  ret ptr %456
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call ptr @AccelerateBlurImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %2, double noundef %3, double noundef %2, double noundef %3) #11
  %18 = call ptr @AcquireKernelInfo(ptr noundef nonnull %6) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 822, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %21) #11
  br label %26

23:                                               ; preds = %16
  %24 = call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %18, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #11
  %25 = call ptr @DestroyKernelInfo(ptr noundef nonnull %18) #11
  br label %26

26:                                               ; preds = %13, %23, %20
  %27 = phi ptr [ null, %20 ], [ %24, %23 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  ret ptr %27
}

declare ptr @AccelerateBlurImage(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @AcquireKernelInfo(ptr noundef) local_unnamed_addr #2

declare ptr @MorphologyApply(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyKernelInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ConvolveImage(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @ConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ConvolveImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @AcquireKernelInfo(ptr noundef null) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 897, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #11
  br label %45

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %2, ptr %12, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %2, ptr %13, align 8, !tbaa !88
  %14 = add i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 4
  store i64 %15, ptr %17, align 8, !tbaa !90
  %18 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %18, align 8, !tbaa !91
  %19 = shl i64 %2, 3
  %20 = tail call ptr @AcquireAlignedMemory(i64 noundef %2, i64 noundef %19) #12
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !92
  %22 = icmp eq ptr %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = mul i64 %2, %2
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %30, label %37

26:                                               ; preds = %11
  %27 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #11
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 908, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %28) #11
  br label %45

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %35, %30 ], [ 0, %23 ]
  %32 = getelementptr inbounds double, ptr %3, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !56
  %34 = getelementptr inbounds double, ptr %20, i64 %31
  store double %33, ptr %34, align 8, !tbaa !56
  %35 = add nuw nsw i64 %31, 1
  %36 = icmp eq i64 %35, %24
  br i1 %36, label %37, label %30, !llvm.loop !103

37:                                               ; preds = %30, %23
  %38 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %4) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %6, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #11
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ %38, %37 ]
  %44 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #11
  br label %45

45:                                               ; preds = %42, %26, %8
  %46 = phi ptr [ null, %8 ], [ null, %26 ], [ %43, %42 ]
  ret ptr %46
}

declare ptr @AccelerateConvolveImageChannel(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DespeckleImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1083, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call ptr @AccelerateDespeckleImage(ptr noundef %0, ptr noundef %1) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %494

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !54
  %18 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %15, i64 noundef %17, i32 noundef 1, ptr noundef %1) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %494, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %18, i32 noundef 1) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  tail call void @InheritException(ptr noundef %1, ptr noundef nonnull %24) #11
  %25 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #11
  br label %494

26:                                               ; preds = %20
  %27 = load i64, ptr %14, align 8, !tbaa !53
  %28 = add i64 %27, 2
  %29 = load i64, ptr %16, align 8, !tbaa !54
  %30 = add i64 %29, 2
  %31 = mul i64 %30, %28
  %32 = tail call ptr @AcquireVirtualMemory(i64 noundef %31, i64 noundef 2) #12
  %33 = tail call ptr @AcquireVirtualMemory(i64 noundef %31, i64 noundef 2) #12
  %34 = icmp eq ptr %32, null
  %35 = icmp eq ptr %33, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  br i1 %35, label %40, label %38

38:                                               ; preds = %37
  %39 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %33) #11
  br label %40

40:                                               ; preds = %38, %37
  br i1 %34, label %43, label %41

41:                                               ; preds = %40
  %42 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %32) #11
  br label %43

43:                                               ; preds = %41, %40
  %44 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #11
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %46 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1113, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %45) #11
  br label %494

47:                                               ; preds = %26
  %48 = tail call ptr @GetVirtualMemoryBlob(ptr noundef %32) #11
  %49 = tail call ptr @GetVirtualMemoryBlob(ptr noundef %33) #11
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !77
  %52 = icmp eq i32 %51, 12
  %53 = select i1 %52, i64 5, i64 4
  %54 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #11
  %55 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %18, ptr noundef %1) #11
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %57 = shl i64 %31, 1
  %58 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %62

62:                                               ; preds = %47, %479
  %63 = phi i32 [ 1, %47 ], [ %480, %479 ]
  %64 = phi i64 [ 0, %47 ], [ %481, %479 ]
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %479, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %56, align 8, !tbaa !72
  %68 = icmp eq i32 %67, 0
  %69 = icmp eq i64 %64, 3
  %70 = and i1 %69, %68
  br i1 %70, label %479, label %71

71:                                               ; preds = %66
  %72 = call ptr @ResetMagickMemory(ptr noundef %48, i32 noundef 0, i64 noundef %57) #11
  %73 = load i64, ptr %16, align 8, !tbaa !54
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %118

75:                                               ; preds = %71
  %76 = load i64, ptr %14, align 8, !tbaa !53
  %77 = add nsw i64 %76, 2
  br label %82

78:                                               ; preds = %116
  %79 = add nuw nsw i64 %83, 1
  %80 = load i64, ptr %16, align 8, !tbaa !54
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %118, !llvm.loop !104

82:                                               ; preds = %75, %78
  %83 = phi i64 [ %79, %78 ], [ 0, %75 ]
  %84 = phi i64 [ %117, %78 ], [ %77, %75 ]
  %85 = load i64, ptr %14, align 8, !tbaa !53
  %86 = call ptr @GetCacheViewVirtualPixels(ptr noundef %54, i64 noundef 0, i64 noundef %83, i64 noundef %85, i64 noundef 1, ptr noundef %1) #13
  %87 = icmp eq ptr %86, null
  br i1 %87, label %116, label %88

88:                                               ; preds = %82
  %89 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %54) #11
  %90 = load i64, ptr %14, align 8, !tbaa !53
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %88, %109
  %93 = phi i64 [ %96, %109 ], [ %84, %88 ]
  %94 = phi ptr [ %110, %109 ], [ %86, %88 ]
  %95 = phi i64 [ %111, %109 ], [ 0, %88 ]
  %96 = add nsw i64 %93, 1
  switch i64 %64, label %109 [
    i64 0, label %97
    i64 1, label %99
    i64 2, label %105
    i64 3, label %101
    i64 4, label %103
  ]

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  br label %105

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 1
  br label %105

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 3
  br label %105

103:                                              ; preds = %92
  %104 = getelementptr inbounds i16, ptr %89, i64 %95
  br label %105

105:                                              ; preds = %92, %97, %99, %101, %103
  %106 = phi ptr [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %98, %97 ], [ %94, %92 ]
  %107 = load i16, ptr %106, align 2, !tbaa !78
  %108 = getelementptr inbounds i16, ptr %48, i64 %96
  store i16 %107, ptr %108, align 2, !tbaa !78
  br label %109

109:                                              ; preds = %105, %92
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %111 = add nuw nsw i64 %95, 1
  %112 = icmp eq i64 %111, %90
  br i1 %112, label %113, label %92, !llvm.loop !105

113:                                              ; preds = %109, %88
  %114 = phi i64 [ %84, %88 ], [ %96, %109 ]
  %115 = add nsw i64 %114, 2
  br label %116

116:                                              ; preds = %82, %113
  %117 = phi i64 [ %115, %113 ], [ %84, %82 ]
  br i1 %87, label %118, label %78

118:                                              ; preds = %78, %116, %71
  %119 = call ptr @ResetMagickMemory(ptr noundef %49, i32 noundef 0, i64 noundef %57) #11
  %120 = load i64, ptr %14, align 8, !tbaa !53
  %121 = load i64, ptr %16, align 8, !tbaa !54
  %122 = add i64 %120, 2
  %123 = getelementptr inbounds i16, ptr %48, i64 %122
  %124 = getelementptr inbounds i16, ptr %49, i64 %122
  %125 = icmp sgt i64 %121, 0
  %126 = icmp sgt i64 %120, 0
  %127 = icmp sgt i64 %120, 0
  %128 = icmp sgt i64 %120, 0
  %129 = icmp sgt i64 %120, 0
  %130 = icmp sgt i64 %120, 0
  %131 = icmp sgt i64 %120, 0
  %132 = icmp sgt i64 %120, 0
  %133 = icmp sgt i64 %120, 0
  br label %134

134:                                              ; preds = %118, %401
  %135 = phi i64 [ 0, %118 ], [ %402, %401 ]
  %136 = getelementptr inbounds [4 x i64], ptr @DespeckleImage.X, i64 0, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !106
  %138 = getelementptr inbounds [4 x i64], ptr @DespeckleImage.Y, i64 0, i64 %135
  %139 = load i64, ptr %138, align 8, !tbaa !106
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %140 = mul i64 %122, %139
  %141 = add i64 %140, %137
  %142 = getelementptr inbounds i16, ptr %123, i64 %141
  br i1 %125, label %143, label %170

143:                                              ; preds = %134, %167
  %144 = phi i64 [ %168, %167 ], [ 0, %134 ]
  br i1 %126, label %145, label %167

145:                                              ; preds = %143
  %146 = shl nuw nsw i64 %144, 1
  %147 = or disjoint i64 %146, 1
  %148 = mul i64 %144, %120
  %149 = add i64 %147, %148
  br label %150

150:                                              ; preds = %145, %150
  %151 = phi i64 [ %165, %150 ], [ 0, %145 ]
  %152 = phi i64 [ %164, %150 ], [ %149, %145 ]
  %153 = getelementptr inbounds i16, ptr %123, i64 %152
  %154 = load i16, ptr %153, align 2, !tbaa !78, !alias.scope !107, !noalias !110
  %155 = zext i16 %154 to i64
  %156 = getelementptr inbounds i16, ptr %142, i64 %152
  %157 = load i16, ptr %156, align 2, !tbaa !78, !alias.scope !107, !noalias !110
  %158 = zext i16 %157 to i64
  %159 = add nuw nsw i64 %155, 514
  %160 = icmp ugt i64 %159, %158
  %161 = add i16 %154, 257
  %162 = select i1 %160, i16 %154, i16 %161
  %163 = getelementptr inbounds i16, ptr %124, i64 %152
  store i16 %162, ptr %163, align 2, !tbaa !78, !alias.scope !110, !noalias !107
  %164 = add nsw i64 %152, 1
  %165 = add nuw nsw i64 %151, 1
  %166 = icmp eq i64 %165, %120
  br i1 %166, label %167, label %150, !llvm.loop !112

167:                                              ; preds = %150, %143
  %168 = add nuw nsw i64 %144, 1
  %169 = icmp eq i64 %168, %121
  br i1 %169, label %170, label %143, !llvm.loop !113

170:                                              ; preds = %167, %134
  %171 = getelementptr inbounds i16, ptr %124, i64 %141
  %172 = sub i64 0, %141
  %173 = getelementptr inbounds i16, ptr %124, i64 %172
  br i1 %125, label %174, label %207

174:                                              ; preds = %170, %204
  %175 = phi i64 [ %205, %204 ], [ 0, %170 ]
  br i1 %127, label %176, label %204

176:                                              ; preds = %174
  %177 = shl nuw nsw i64 %175, 1
  %178 = or disjoint i64 %177, 1
  %179 = mul i64 %175, %120
  %180 = add i64 %178, %179
  br label %181

181:                                              ; preds = %176, %198
  %182 = phi i64 [ %202, %198 ], [ 0, %176 ]
  %183 = phi i64 [ %201, %198 ], [ %180, %176 ]
  %184 = getelementptr inbounds i16, ptr %124, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !78, !alias.scope !110, !noalias !107
  %186 = zext i16 %185 to i64
  %187 = getelementptr inbounds i16, ptr %173, i64 %183
  %188 = load i16, ptr %187, align 2, !tbaa !78, !alias.scope !110, !noalias !107
  %189 = zext i16 %188 to i64
  %190 = add nuw nsw i64 %186, 514
  %191 = icmp ugt i64 %190, %189
  br i1 %191, label %198, label %192

192:                                              ; preds = %181
  %193 = getelementptr inbounds i16, ptr %171, i64 %183
  %194 = load i16, ptr %193, align 2, !tbaa !78, !alias.scope !110, !noalias !107
  %195 = icmp ugt i16 %194, %185
  %196 = add i16 %185, 257
  %197 = select i1 %195, i16 %196, i16 %185
  br label %198

198:                                              ; preds = %192, %181
  %199 = phi i16 [ %185, %181 ], [ %197, %192 ]
  %200 = getelementptr inbounds i16, ptr %123, i64 %183
  store i16 %199, ptr %200, align 2, !tbaa !78, !alias.scope !107, !noalias !110
  %201 = add nsw i64 %183, 1
  %202 = add nuw nsw i64 %182, 1
  %203 = icmp eq i64 %202, %120
  br i1 %203, label %204, label %181, !llvm.loop !114

204:                                              ; preds = %198, %174
  %205 = add nuw nsw i64 %175, 1
  %206 = icmp eq i64 %205, %121
  br i1 %206, label %207, label %174, !llvm.loop !115

207:                                              ; preds = %204, %170
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %208 = mul i64 %122, %139
  %209 = add i64 %208, %137
  %210 = sub i64 0, %209
  %211 = getelementptr inbounds i16, ptr %123, i64 %210
  br i1 %125, label %212, label %239

212:                                              ; preds = %207, %236
  %213 = phi i64 [ %237, %236 ], [ 0, %207 ]
  br i1 %128, label %214, label %236

214:                                              ; preds = %212
  %215 = shl nuw nsw i64 %213, 1
  %216 = or disjoint i64 %215, 1
  %217 = mul i64 %213, %120
  %218 = add i64 %216, %217
  br label %219

219:                                              ; preds = %214, %219
  %220 = phi i64 [ %234, %219 ], [ 0, %214 ]
  %221 = phi i64 [ %233, %219 ], [ %218, %214 ]
  %222 = getelementptr inbounds i16, ptr %123, i64 %221
  %223 = load i16, ptr %222, align 2, !tbaa !78, !alias.scope !116, !noalias !119
  %224 = zext i16 %223 to i64
  %225 = getelementptr inbounds i16, ptr %211, i64 %221
  %226 = load i16, ptr %225, align 2, !tbaa !78, !alias.scope !116, !noalias !119
  %227 = zext i16 %226 to i64
  %228 = add nuw nsw i64 %224, 514
  %229 = icmp ugt i64 %228, %227
  %230 = add i16 %223, 257
  %231 = select i1 %229, i16 %223, i16 %230
  %232 = getelementptr inbounds i16, ptr %124, i64 %221
  store i16 %231, ptr %232, align 2, !tbaa !78, !alias.scope !119, !noalias !116
  %233 = add nsw i64 %221, 1
  %234 = add nuw nsw i64 %220, 1
  %235 = icmp eq i64 %234, %120
  br i1 %235, label %236, label %219, !llvm.loop !112

236:                                              ; preds = %219, %212
  %237 = add nuw nsw i64 %213, 1
  %238 = icmp eq i64 %237, %121
  br i1 %238, label %239, label %212, !llvm.loop !113

239:                                              ; preds = %236, %207
  %240 = getelementptr inbounds i16, ptr %124, i64 %210
  %241 = getelementptr inbounds i16, ptr %124, i64 %209
  br i1 %125, label %242, label %303

242:                                              ; preds = %239, %272
  %243 = phi i64 [ %273, %272 ], [ 0, %239 ]
  br i1 %129, label %244, label %272

244:                                              ; preds = %242
  %245 = shl nuw nsw i64 %243, 1
  %246 = or disjoint i64 %245, 1
  %247 = mul i64 %243, %120
  %248 = add i64 %246, %247
  br label %249

249:                                              ; preds = %244, %266
  %250 = phi i64 [ %270, %266 ], [ 0, %244 ]
  %251 = phi i64 [ %269, %266 ], [ %248, %244 ]
  %252 = getelementptr inbounds i16, ptr %124, i64 %251
  %253 = load i16, ptr %252, align 2, !tbaa !78, !alias.scope !119, !noalias !116
  %254 = zext i16 %253 to i64
  %255 = getelementptr inbounds i16, ptr %241, i64 %251
  %256 = load i16, ptr %255, align 2, !tbaa !78, !alias.scope !119, !noalias !116
  %257 = zext i16 %256 to i64
  %258 = add nuw nsw i64 %254, 514
  %259 = icmp ugt i64 %258, %257
  br i1 %259, label %266, label %260

260:                                              ; preds = %249
  %261 = getelementptr inbounds i16, ptr %240, i64 %251
  %262 = load i16, ptr %261, align 2, !tbaa !78, !alias.scope !119, !noalias !116
  %263 = icmp ugt i16 %262, %253
  %264 = add i16 %253, 257
  %265 = select i1 %263, i16 %264, i16 %253
  br label %266

266:                                              ; preds = %260, %249
  %267 = phi i16 [ %253, %249 ], [ %265, %260 ]
  %268 = getelementptr inbounds i16, ptr %123, i64 %251
  store i16 %267, ptr %268, align 2, !tbaa !78, !alias.scope !116, !noalias !119
  %269 = add nsw i64 %251, 1
  %270 = add nuw nsw i64 %250, 1
  %271 = icmp eq i64 %270, %120
  br i1 %271, label %272, label %249, !llvm.loop !114

272:                                              ; preds = %266, %242
  %273 = add nuw nsw i64 %243, 1
  %274 = icmp eq i64 %273, %121
  br i1 %274, label %275, label %242, !llvm.loop !115

275:                                              ; preds = %272
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  br i1 %125, label %276, label %366

276:                                              ; preds = %275, %300
  %277 = phi i64 [ %301, %300 ], [ 0, %275 ]
  br i1 %130, label %278, label %300

278:                                              ; preds = %276
  %279 = shl nuw nsw i64 %277, 1
  %280 = or disjoint i64 %279, 1
  %281 = mul i64 %277, %120
  %282 = add i64 %280, %281
  br label %283

283:                                              ; preds = %278, %283
  %284 = phi i64 [ %298, %283 ], [ 0, %278 ]
  %285 = phi i64 [ %297, %283 ], [ %282, %278 ]
  %286 = getelementptr inbounds i16, ptr %123, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !78, !alias.scope !121, !noalias !124
  %288 = zext i16 %287 to i64
  %289 = getelementptr inbounds i16, ptr %211, i64 %285
  %290 = load i16, ptr %289, align 2, !tbaa !78, !alias.scope !121, !noalias !124
  %291 = zext i16 %290 to i64
  %292 = add nsw i64 %288, -514
  %293 = icmp slt i64 %292, %291
  %294 = add i16 %287, -257
  %295 = select i1 %293, i16 %287, i16 %294
  %296 = getelementptr inbounds i16, ptr %124, i64 %285
  store i16 %295, ptr %296, align 2, !tbaa !78, !alias.scope !124, !noalias !121
  %297 = add nsw i64 %285, 1
  %298 = add nuw nsw i64 %284, 1
  %299 = icmp eq i64 %298, %120
  br i1 %299, label %300, label %283, !llvm.loop !126

300:                                              ; preds = %283, %276
  %301 = add nuw nsw i64 %277, 1
  %302 = icmp eq i64 %301, %121
  br i1 %302, label %304, label %276, !llvm.loop !113

303:                                              ; preds = %239
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  br label %304

304:                                              ; preds = %300, %303
  br i1 %125, label %305, label %366

305:                                              ; preds = %304, %335
  %306 = phi i64 [ %336, %335 ], [ 0, %304 ]
  br i1 %131, label %307, label %335

307:                                              ; preds = %305
  %308 = shl nuw nsw i64 %306, 1
  %309 = or disjoint i64 %308, 1
  %310 = mul i64 %306, %120
  %311 = add i64 %309, %310
  br label %312

312:                                              ; preds = %307, %329
  %313 = phi i64 [ %333, %329 ], [ 0, %307 ]
  %314 = phi i64 [ %332, %329 ], [ %311, %307 ]
  %315 = getelementptr inbounds i16, ptr %124, i64 %314
  %316 = load i16, ptr %315, align 2, !tbaa !78, !alias.scope !124, !noalias !121
  %317 = zext i16 %316 to i64
  %318 = getelementptr inbounds i16, ptr %241, i64 %314
  %319 = load i16, ptr %318, align 2, !tbaa !78, !alias.scope !124, !noalias !121
  %320 = zext i16 %319 to i64
  %321 = add nsw i64 %317, -514
  %322 = icmp slt i64 %321, %320
  br i1 %322, label %329, label %323

323:                                              ; preds = %312
  %324 = getelementptr inbounds i16, ptr %240, i64 %314
  %325 = load i16, ptr %324, align 2, !tbaa !78, !alias.scope !124, !noalias !121
  %326 = icmp ult i16 %325, %316
  %327 = add i16 %316, -257
  %328 = select i1 %326, i16 %327, i16 %316
  br label %329

329:                                              ; preds = %323, %312
  %330 = phi i16 [ %316, %312 ], [ %328, %323 ]
  %331 = getelementptr inbounds i16, ptr %123, i64 %314
  store i16 %330, ptr %331, align 2, !tbaa !78, !alias.scope !121, !noalias !124
  %332 = add nsw i64 %314, 1
  %333 = add nuw nsw i64 %313, 1
  %334 = icmp eq i64 %333, %120
  br i1 %334, label %335, label %312, !llvm.loop !127

335:                                              ; preds = %329, %305
  %336 = add nuw nsw i64 %306, 1
  %337 = icmp eq i64 %336, %121
  br i1 %337, label %338, label %305, !llvm.loop !115

338:                                              ; preds = %335
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  br i1 %125, label %339, label %401

339:                                              ; preds = %338, %363
  %340 = phi i64 [ %364, %363 ], [ 0, %338 ]
  br i1 %132, label %341, label %363

341:                                              ; preds = %339
  %342 = shl nuw nsw i64 %340, 1
  %343 = or disjoint i64 %342, 1
  %344 = mul i64 %340, %120
  %345 = add i64 %343, %344
  br label %346

346:                                              ; preds = %341, %346
  %347 = phi i64 [ %361, %346 ], [ 0, %341 ]
  %348 = phi i64 [ %360, %346 ], [ %345, %341 ]
  %349 = getelementptr inbounds i16, ptr %123, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !78, !alias.scope !128, !noalias !131
  %351 = zext i16 %350 to i64
  %352 = getelementptr inbounds i16, ptr %142, i64 %348
  %353 = load i16, ptr %352, align 2, !tbaa !78, !alias.scope !128, !noalias !131
  %354 = zext i16 %353 to i64
  %355 = add nsw i64 %351, -514
  %356 = icmp slt i64 %355, %354
  %357 = add i16 %350, -257
  %358 = select i1 %356, i16 %350, i16 %357
  %359 = getelementptr inbounds i16, ptr %124, i64 %348
  store i16 %358, ptr %359, align 2, !tbaa !78, !alias.scope !131, !noalias !128
  %360 = add nsw i64 %348, 1
  %361 = add nuw nsw i64 %347, 1
  %362 = icmp eq i64 %361, %120
  br i1 %362, label %363, label %346, !llvm.loop !126

363:                                              ; preds = %346, %339
  %364 = add nuw nsw i64 %340, 1
  %365 = icmp eq i64 %364, %121
  br i1 %365, label %367, label %339, !llvm.loop !113

366:                                              ; preds = %304, %275
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  br label %367

367:                                              ; preds = %363, %366
  br i1 %125, label %368, label %401

368:                                              ; preds = %367, %398
  %369 = phi i64 [ %399, %398 ], [ 0, %367 ]
  br i1 %133, label %370, label %398

370:                                              ; preds = %368
  %371 = shl nuw nsw i64 %369, 1
  %372 = or disjoint i64 %371, 1
  %373 = mul i64 %369, %120
  %374 = add i64 %372, %373
  br label %375

375:                                              ; preds = %370, %392
  %376 = phi i64 [ %396, %392 ], [ 0, %370 ]
  %377 = phi i64 [ %395, %392 ], [ %374, %370 ]
  %378 = getelementptr inbounds i16, ptr %124, i64 %377
  %379 = load i16, ptr %378, align 2, !tbaa !78, !alias.scope !131, !noalias !128
  %380 = zext i16 %379 to i64
  %381 = getelementptr inbounds i16, ptr %173, i64 %377
  %382 = load i16, ptr %381, align 2, !tbaa !78, !alias.scope !131, !noalias !128
  %383 = zext i16 %382 to i64
  %384 = add nsw i64 %380, -514
  %385 = icmp slt i64 %384, %383
  br i1 %385, label %392, label %386

386:                                              ; preds = %375
  %387 = getelementptr inbounds i16, ptr %171, i64 %377
  %388 = load i16, ptr %387, align 2, !tbaa !78, !alias.scope !131, !noalias !128
  %389 = icmp ult i16 %388, %379
  %390 = add i16 %379, -257
  %391 = select i1 %389, i16 %390, i16 %379
  br label %392

392:                                              ; preds = %386, %375
  %393 = phi i16 [ %379, %375 ], [ %391, %386 ]
  %394 = getelementptr inbounds i16, ptr %123, i64 %377
  store i16 %393, ptr %394, align 2, !tbaa !78, !alias.scope !128, !noalias !131
  %395 = add nsw i64 %377, 1
  %396 = add nuw nsw i64 %376, 1
  %397 = icmp eq i64 %396, %120
  br i1 %397, label %398, label %375, !llvm.loop !127

398:                                              ; preds = %392, %368
  %399 = add nuw nsw i64 %369, 1
  %400 = icmp eq i64 %399, %121
  br i1 %400, label %401, label %368, !llvm.loop !115

401:                                              ; preds = %398, %338, %367
  %402 = add nuw nsw i64 %135, 1
  %403 = icmp eq i64 %402, 4
  br i1 %403, label %404, label %134, !llvm.loop !133

404:                                              ; preds = %401
  %405 = load i64, ptr %16, align 8, !tbaa !54
  %406 = icmp sgt i64 %405, 0
  br i1 %406, label %407, label %468

407:                                              ; preds = %404
  %408 = load i64, ptr %14, align 8, !tbaa !53
  %409 = add nsw i64 %408, 2
  br label %414

410:                                              ; preds = %464
  %411 = add nuw nsw i64 %415, 1
  %412 = load i64, ptr %16, align 8, !tbaa !54
  %413 = icmp slt i64 %411, %412
  br i1 %413, label %414, label %468, !llvm.loop !134

414:                                              ; preds = %407, %410
  %415 = phi i64 [ %411, %410 ], [ 0, %407 ]
  %416 = phi i64 [ %467, %410 ], [ %409, %407 ]
  %417 = phi i32 [ %465, %410 ], [ 1, %407 ]
  %418 = load i64, ptr %58, align 8, !tbaa !53
  %419 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %55, i64 noundef 0, i64 noundef %415, i64 noundef %418, i64 noundef 1, ptr noundef %1) #13
  %420 = icmp eq ptr %419, null
  br i1 %420, label %464, label %421

421:                                              ; preds = %414
  %422 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %55) #11
  %423 = load i64, ptr %14, align 8, !tbaa !53
  %424 = add nsw i64 %416, 1
  %425 = icmp sgt i64 %423, 0
  br i1 %425, label %426, label %457

426:                                              ; preds = %421
  %427 = icmp eq ptr %422, null
  br label %428

428:                                              ; preds = %426, %452
  %429 = phi i64 [ %424, %426 ], [ %455, %452 ]
  %430 = phi ptr [ %419, %426 ], [ %453, %452 ]
  %431 = phi i64 [ 0, %426 ], [ %454, %452 ]
  switch i64 %64, label %452 [
    i64 0, label %432
    i64 1, label %436
    i64 2, label %440
    i64 3, label %443
    i64 4, label %447
  ]

432:                                              ; preds = %428
  %433 = getelementptr inbounds i16, ptr %48, i64 %429
  %434 = load i16, ptr %433, align 2, !tbaa !78
  %435 = getelementptr inbounds %struct._PixelPacket, ptr %430, i64 0, i32 2
  store i16 %434, ptr %435, align 2, !tbaa !74
  br label %452

436:                                              ; preds = %428
  %437 = getelementptr inbounds i16, ptr %48, i64 %429
  %438 = load i16, ptr %437, align 2, !tbaa !78
  %439 = getelementptr inbounds %struct._PixelPacket, ptr %430, i64 0, i32 1
  store i16 %438, ptr %439, align 2, !tbaa !75
  br label %452

440:                                              ; preds = %428
  %441 = getelementptr inbounds i16, ptr %48, i64 %429
  %442 = load i16, ptr %441, align 2, !tbaa !78
  store i16 %442, ptr %430, align 2, !tbaa !76
  br label %452

443:                                              ; preds = %428
  %444 = getelementptr inbounds i16, ptr %48, i64 %429
  %445 = load i16, ptr %444, align 2, !tbaa !78
  %446 = getelementptr inbounds %struct._PixelPacket, ptr %430, i64 0, i32 3
  store i16 %445, ptr %446, align 2, !tbaa !73
  br label %452

447:                                              ; preds = %428
  br i1 %427, label %452, label %448

448:                                              ; preds = %447
  %449 = getelementptr inbounds i16, ptr %422, i64 %431
  %450 = getelementptr inbounds i16, ptr %48, i64 %429
  %451 = load i16, ptr %450, align 2, !tbaa !78
  store i16 %451, ptr %449, align 2, !tbaa !78
  br label %452

452:                                              ; preds = %428, %447, %448, %443, %440, %436, %432
  %453 = getelementptr inbounds %struct._PixelPacket, ptr %430, i64 1
  %454 = add nuw nsw i64 %431, 1
  %455 = add nsw i64 %429, 1
  %456 = icmp eq i64 %454, %423
  br i1 %456, label %457, label %428, !llvm.loop !135

457:                                              ; preds = %452, %421
  %458 = phi i64 [ %416, %421 ], [ %429, %452 ]
  %459 = phi i64 [ %424, %421 ], [ %455, %452 ]
  %460 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %55, ptr noundef %1) #13
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %464, label %462

462:                                              ; preds = %457
  %463 = add nsw i64 %458, 2
  br label %464

464:                                              ; preds = %457, %414, %462
  %465 = phi i32 [ %417, %462 ], [ %417, %414 ], [ 0, %457 ]
  %466 = phi i1 [ true, %462 ], [ false, %414 ], [ false, %457 ]
  %467 = phi i64 [ %463, %462 ], [ %416, %414 ], [ %459, %457 ]
  br i1 %466, label %410, label %468

468:                                              ; preds = %410, %464, %404
  %469 = phi i32 [ 1, %404 ], [ %465, %464 ], [ %465, %410 ]
  %470 = load ptr, ptr %59, align 8, !tbaa !81
  %471 = icmp eq ptr %470, null
  br i1 %471, label %479, label %472

472:                                              ; preds = %468
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #11
  %473 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.9, ptr noundef nonnull %60) #11
  %474 = load ptr, ptr %59, align 8, !tbaa !81
  %475 = load ptr, ptr %61, align 8, !tbaa !82
  %476 = call i32 %474(ptr noundef nonnull %3, i64 noundef %64, i64 noundef %53, ptr noundef %475) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #11
  %477 = icmp eq i32 %476, 0
  %478 = select i1 %477, i32 0, i32 %469
  br label %479

479:                                              ; preds = %468, %472, %66, %62
  %480 = phi i32 [ 0, %62 ], [ 1, %66 ], [ %478, %472 ], [ %469, %468 ]
  %481 = add nuw nsw i64 %64, 1
  %482 = icmp eq i64 %481, %53
  br i1 %482, label %483, label %62, !llvm.loop !136

483:                                              ; preds = %479
  %484 = call ptr @DestroyCacheView(ptr noundef %55) #11
  %485 = call ptr @DestroyCacheView(ptr noundef %54) #11
  %486 = call ptr @RelinquishVirtualMemory(ptr noundef %33) #11
  %487 = call ptr @RelinquishVirtualMemory(ptr noundef %32) #11
  %488 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %489 = load i32, ptr %488, align 8, !tbaa !84
  %490 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 77
  store i32 %489, ptr %490, align 8, !tbaa !84
  %491 = icmp eq i32 %480, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %483
  %493 = call ptr @DestroyImage(ptr noundef nonnull %18) #11
  br label %494

494:                                              ; preds = %483, %492, %13, %10, %43, %23
  %495 = phi ptr [ null, %23 ], [ null, %43 ], [ %11, %10 ], [ null, %13 ], [ %493, %492 ], [ %18, %483 ]
  ret ptr %495
}

declare ptr @AccelerateDespeckleImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #2

declare ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @GetOptimalKernelWidth1D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @EmbossImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1378, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef %2) #11
  %13 = tail call ptr @AcquireKernelInfo(ptr noundef null) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1384, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %16) #11
  br label %121

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 1
  store i64 %12, ptr %19, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 2
  store i64 %12, ptr %20, align 8, !tbaa !88
  %21 = add i64 %12, -1
  %22 = sdiv i64 %21, 2
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 3
  store i64 %22, ptr %23, align 8, !tbaa !89
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 4
  store i64 %22, ptr %24, align 8, !tbaa !90
  %25 = shl i64 %12, 3
  %26 = tail call ptr @AcquireAlignedMemory(i64 noundef %12, i64 noundef %25) #12
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !92
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %13) #11
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1394, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %31) #11
  br label %121

33:                                               ; preds = %18
  %34 = load i64, ptr %19, align 8, !tbaa !86
  %35 = add i64 %34, -1
  %36 = sdiv i64 %35, 2
  %37 = sub nsw i64 0, %36
  %38 = icmp ugt i64 %34, -9223372036854775808
  br i1 %38, label %54, label %39

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

48:                                               ; preds = %39, %81
  %49 = phi i64 [ %37, %39 ], [ %83, %81 ]
  %50 = phi i64 [ %36, %39 ], [ %82, %81 ]
  %51 = phi i64 [ 0, %39 ], [ %78, %81 ]
  %52 = mul nsw i64 %49, %49
  %53 = sitofp i64 %52 to double
  br label %61

54:                                               ; preds = %81, %33
  %55 = load i64, ptr %19, align 8, !tbaa !86
  %56 = load i64, ptr %20, align 8, !tbaa !88
  %57 = mul i64 %56, %55
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %54
  %60 = load ptr, ptr %27, align 8, !tbaa !92
  br label %85

61:                                               ; preds = %48, %61
  %62 = phi i64 [ %37, %48 ], [ %79, %61 ]
  %63 = phi i64 [ %51, %48 ], [ %78, %61 ]
  %64 = or i64 %62, %49
  %65 = icmp sgt i64 %64, -1
  %66 = select i1 %65, double 8.000000e+00, double -8.000000e+00
  %67 = sitofp i64 %62 to double
  %68 = tail call double @llvm.fmuladd.f64(double %67, double %67, double %53)
  %69 = fneg double %68
  %70 = fdiv double %69, %44
  %71 = tail call double @exp(double noundef %70) #11
  %72 = fmul double %66, %71
  %73 = fdiv double %72, %46
  %74 = load ptr, ptr %27, align 8, !tbaa !92
  %75 = getelementptr inbounds double, ptr %74, i64 %63
  %76 = icmp eq i64 %62, %50
  %77 = select i1 %76, double %73, double 0.000000e+00
  store double %77, ptr %75, align 8
  %78 = add nsw i64 %63, 1
  %79 = add i64 %62, 1
  %80 = icmp eq i64 %62, %47
  br i1 %80, label %81, label %61, !llvm.loop !137

81:                                               ; preds = %61
  %82 = add nsw i64 %50, -1
  %83 = add i64 %49, 1
  %84 = icmp eq i64 %49, %47
  br i1 %84, label %54, label %48, !llvm.loop !138

85:                                               ; preds = %59, %85
  %86 = phi double [ 0.000000e+00, %59 ], [ %90, %85 ]
  %87 = phi i64 [ 0, %59 ], [ %91, %85 ]
  %88 = getelementptr inbounds double, ptr %60, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !56
  %90 = fadd double %86, %89
  %91 = add nuw nsw i64 %87, 1
  %92 = icmp eq i64 %91, %57
  br i1 %92, label %93, label %85, !llvm.loop !139

93:                                               ; preds = %85, %54
  %94 = phi double [ 0.000000e+00, %54 ], [ %90, %85 ]
  %95 = fcmp olt double %94, 0.000000e+00
  %96 = select i1 %95, double 0.000000e+00, double %94
  %97 = fcmp ult double %96, 1.000000e-15
  %98 = fdiv double 1.000000e+00, %96
  %99 = select i1 %97, double 0x430C6BF52633FFFF, double %98
  %100 = icmp sgt i64 %57, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load ptr, ptr %27, align 8, !tbaa !92
  br label %103

103:                                              ; preds = %101, %103
  %104 = phi i64 [ 0, %101 ], [ %108, %103 ]
  %105 = getelementptr inbounds double, ptr %102, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !56
  %107 = fmul double %99, %106
  store double %107, ptr %105, align 8, !tbaa !56
  %108 = add nuw nsw i64 %104, 1
  %109 = icmp eq i64 %108, %57
  br i1 %109, label %110, label %103, !llvm.loop !140

110:                                              ; preds = %103, %93
  %111 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %13, ptr noundef %3) #11
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %13, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %3) #11
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi ptr [ %114, %113 ], [ %111, %110 ]
  %117 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %13) #11
  %118 = icmp eq ptr %116, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = tail call i32 @EqualizeImageChannel(ptr noundef nonnull %116, i32 noundef 134217471) #11
  br label %121

121:                                              ; preds = %115, %119, %29, %15
  %122 = phi ptr [ null, %15 ], [ null, %29 ], [ %116, %119 ], [ %116, %115 ]
  ret ptr %122
}

declare i32 @EqualizeImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @FilterImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @FilterImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FilterImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1514, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #11
  br label %15

15:                                               ; preds = %12, %4
  %16 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !86
  %18 = and i64 %17, 1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1518, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, ptr noundef nonnull %21) #11
  br label %650

23:                                               ; preds = %15
  %24 = load i32, ptr %9, align 8, !tbaa !34
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %27 = uitofp i64 %17 to double
  %28 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !88
  %30 = uitofp i64 %29 to double
  %31 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, ptr noundef nonnull @.str.11, double noundef %27, double noundef %30) #11
  %32 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #11
  store ptr %32, ptr %8, align 8, !tbaa !55
  %33 = load i64, ptr %28, align 8, !tbaa !88
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  br label %38

38:                                               ; preds = %35, %57
  %39 = phi i64 [ %61, %57 ], [ 0, %35 ]
  %40 = phi ptr [ %58, %57 ], [ %37, %35 ]
  %41 = load ptr, ptr %8, align 8, !tbaa !55
  store i8 0, ptr %41, align 1, !tbaa !141
  %42 = sitofp i64 %39 to double
  %43 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %42) #11
  %44 = call i32 @ConcatenateString(ptr noundef nonnull %8, ptr noundef nonnull %7) #11
  %45 = load i64, ptr %16, align 8, !tbaa !86
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38, %47
  %48 = phi i64 [ %54, %47 ], [ 0, %38 ]
  %49 = phi ptr [ %50, %47 ], [ %40, %38 ]
  %50 = getelementptr inbounds double, ptr %49, i64 1
  %51 = load double, ptr %49, align 8, !tbaa !56
  %52 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.13, double noundef %51) #11
  %53 = call i32 @ConcatenateString(ptr noundef nonnull %8, ptr noundef nonnull %7) #11
  %54 = add nuw nsw i64 %48, 1
  %55 = load i64, ptr %16, align 8, !tbaa !86
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %47, label %57, !llvm.loop !142

57:                                               ; preds = %47, %38
  %58 = phi ptr [ %40, %38 ], [ %50, %47 ]
  %59 = load ptr, ptr %8, align 8, !tbaa !55
  %60 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1550, ptr noundef nonnull @.str.2, ptr noundef %59) #11
  %61 = add nuw nsw i64 %39, 1
  %62 = load i64, ptr %28, align 8, !tbaa !88
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %38, label %64, !llvm.loop !143

64:                                               ; preds = %57, %26
  %65 = load ptr, ptr %8, align 8, !tbaa !55
  %66 = call ptr @DestroyString(ptr noundef %65) #11
  store ptr %66, ptr %8, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #11
  br label %67

67:                                               ; preds = %64, %23
  %68 = call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #11
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %650

70:                                               ; preds = %67
  %71 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %650, label %73

73:                                               ; preds = %70
  %74 = call i32 @SetImageStorageClass(ptr noundef nonnull %71, i32 noundef 1) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %77) #11
  %78 = call ptr @DestroyImage(ptr noundef nonnull %71) #11
  br label %650

79:                                               ; preds = %73
  %80 = load i64, ptr %16, align 8, !tbaa !86
  %81 = shl i64 %80, 2
  %82 = call ptr @AcquireAlignedMemory(i64 noundef %80, i64 noundef %81) #12
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load i64, ptr %16, align 8, !tbaa !86
  %86 = mul i64 %85, %85
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !92
  br label %95

91:                                               ; preds = %79
  %92 = call ptr @DestroyImage(ptr noundef nonnull %71) #11
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %94 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1580, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %93) #11
  br label %650

95:                                               ; preds = %88, %95
  %96 = phi i64 [ 0, %88 ], [ %101, %95 ]
  %97 = getelementptr inbounds double, ptr %90, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !56
  %99 = fptrunc double %98 to float
  %100 = getelementptr inbounds float, ptr %82, i64 %96
  store float %99, ptr %100, align 4, !tbaa !144
  %101 = add nuw nsw i64 %96, 1
  %102 = icmp eq i64 %101, %86
  br i1 %102, label %103, label %95, !llvm.loop !145

103:                                              ; preds = %95, %84
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #11
  %104 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %105 = load double, ptr %104, align 8, !tbaa !63
  %106 = fptrunc double %105 to float
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  store float %106, ptr %107, align 8, !tbaa !64
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  store float %106, ptr %108, align 4, !tbaa !67
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  store float %106, ptr %109, align 8, !tbaa !68
  %110 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  store float %106, ptr %110, align 4, !tbaa !69
  %111 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  store float %106, ptr %111, align 8, !tbaa !70
  %112 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #11
  %113 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %71, ptr noundef %3) #11
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %115 = load i64, ptr %114, align 8, !tbaa !54
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %643

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 2
  %119 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %120 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %121 = and i32 %1, 8
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %124 = and i32 %1, 1
  %125 = icmp eq i32 %124, 0
  %126 = and i32 %1, 2
  %127 = icmp eq i32 %126, 0
  %128 = and i32 %1, 4
  %129 = icmp eq i32 %128, 0
  %130 = and i32 %1, 32
  %131 = icmp eq i32 %130, 0
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %133 = and i32 %1, 1
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %1, 2
  %136 = icmp eq i32 %135, 0
  %137 = and i32 %1, 4
  %138 = icmp eq i32 %137, 0
  %139 = and i32 %1, 32
  %140 = icmp eq i32 %139, 0
  %141 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %142 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %143 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %144 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %145

145:                                              ; preds = %117, %627
  %146 = phi i64 [ 0, %117 ], [ %630, %627 ]
  %147 = phi i64 [ 0, %117 ], [ %629, %627 ]
  %148 = phi i32 [ 1, %117 ], [ %628, %627 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %627, label %150

150:                                              ; preds = %145
  %151 = load i64, ptr %16, align 8, !tbaa !86
  %152 = add i64 %151, -1
  %153 = sdiv i64 %152, -2
  %154 = load i64, ptr %118, align 8, !tbaa !88
  %155 = add i64 %154, -1
  %156 = lshr i64 %155, 1
  %157 = sub nsw i64 %146, %156
  %158 = load i64, ptr %119, align 8, !tbaa !53
  %159 = add i64 %158, %151
  %160 = call ptr @GetCacheViewVirtualPixels(ptr noundef %112, i64 noundef %153, i64 noundef %157, i64 noundef %159, i64 noundef %154, ptr noundef %3) #13
  %161 = load i64, ptr %120, align 8, !tbaa !53
  %162 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %113, i64 noundef 0, i64 noundef %146, i64 noundef %161, i64 noundef 1, ptr noundef %3) #13
  %163 = icmp eq ptr %160, null
  %164 = icmp eq ptr %162, null
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %627, label %166

166:                                              ; preds = %150
  %167 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %112) #11
  %168 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %113) #11
  %169 = load i64, ptr %119, align 8, !tbaa !53
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %612

171:                                              ; preds = %166
  %172 = load float, ptr %107, align 8, !tbaa !64
  %173 = fpext float %172 to double
  %174 = load float, ptr %108, align 4, !tbaa !67
  %175 = fpext float %174 to double
  %176 = load float, ptr %109, align 8, !tbaa !68
  %177 = fpext float %176 to double
  %178 = load float, ptr %110, align 4, !tbaa !69
  %179 = fpext float %178 to double
  %180 = load float, ptr %111, align 8, !tbaa !70
  %181 = fpext float %180 to double
  %182 = icmp eq ptr %168, null
  %183 = icmp eq ptr %168, null
  br label %184

184:                                              ; preds = %171, %606
  %185 = phi i64 [ 0, %171 ], [ %610, %606 ]
  %186 = phi ptr [ %162, %171 ], [ %609, %606 ]
  %187 = phi ptr [ %160, %171 ], [ %608, %606 ]
  %188 = phi ptr [ %167, %171 ], [ %607, %606 ]
  br i1 %122, label %200, label %189

189:                                              ; preds = %184
  %190 = load i32, ptr %123, align 8, !tbaa !72
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %189
  %193 = load i64, ptr %16, align 8, !tbaa !86
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %447

195:                                              ; preds = %192
  %196 = load i64, ptr %118, align 8, !tbaa !88
  %197 = icmp sgt i64 %196, 0
  %198 = add nuw i64 %193, %169
  %199 = shl i64 %196, 2
  br label %395

200:                                              ; preds = %189, %184
  %201 = load i64, ptr %16, align 8, !tbaa !86
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %253

203:                                              ; preds = %200
  %204 = load i64, ptr %118, align 8, !tbaa !88
  %205 = icmp sgt i64 %204, 0
  %206 = add nuw i64 %201, %169
  %207 = shl i64 %204, 2
  br label %208

208:                                              ; preds = %203, %245
  %209 = phi i64 [ 0, %203 ], [ %251, %245 ]
  %210 = phi ptr [ %187, %203 ], [ %250, %245 ]
  %211 = phi ptr [ %82, %203 ], [ %249, %245 ]
  %212 = phi double [ %173, %203 ], [ %248, %245 ]
  %213 = phi double [ %175, %203 ], [ %247, %245 ]
  %214 = phi double [ %177, %203 ], [ %246, %245 ]
  br i1 %205, label %215, label %245

215:                                              ; preds = %208, %215
  %216 = phi i64 [ %241, %215 ], [ 0, %208 ]
  %217 = phi ptr [ %240, %215 ], [ %211, %208 ]
  %218 = phi double [ %228, %215 ], [ %212, %208 ]
  %219 = phi double [ %234, %215 ], [ %213, %208 ]
  %220 = phi double [ %239, %215 ], [ %214, %208 ]
  %221 = load float, ptr %217, align 4, !tbaa !144
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 %216
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 %216, i32 2
  %224 = load i16, ptr %223, align 2, !tbaa !74
  %225 = uitofp i16 %224 to float
  %226 = fmul float %221, %225
  %227 = fpext float %226 to double
  %228 = fadd double %218, %227
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 %216, i32 1
  %230 = load i16, ptr %229, align 2, !tbaa !75
  %231 = uitofp i16 %230 to float
  %232 = fmul float %221, %231
  %233 = fpext float %232 to double
  %234 = fadd double %219, %233
  %235 = load i16, ptr %222, align 2, !tbaa !76
  %236 = uitofp i16 %235 to float
  %237 = fmul float %221, %236
  %238 = fpext float %237 to double
  %239 = fadd double %220, %238
  %240 = getelementptr inbounds float, ptr %217, i64 1
  %241 = add nuw nsw i64 %216, 1
  %242 = icmp eq i64 %241, %204
  br i1 %242, label %243, label %215, !llvm.loop !146

243:                                              ; preds = %215
  %244 = getelementptr i8, ptr %211, i64 %207
  br label %245

245:                                              ; preds = %243, %208
  %246 = phi double [ %214, %208 ], [ %239, %243 ]
  %247 = phi double [ %213, %208 ], [ %234, %243 ]
  %248 = phi double [ %212, %208 ], [ %228, %243 ]
  %249 = phi ptr [ %211, %208 ], [ %244, %243 ]
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 %206
  %251 = add nuw nsw i64 %209, 1
  %252 = icmp eq i64 %251, %201
  br i1 %252, label %253, label %208, !llvm.loop !147

253:                                              ; preds = %245, %200
  %254 = phi double [ %177, %200 ], [ %246, %245 ]
  %255 = phi double [ %175, %200 ], [ %247, %245 ]
  %256 = phi double [ %173, %200 ], [ %248, %245 ]
  br i1 %134, label %268, label %257

257:                                              ; preds = %253
  %258 = fptrunc double %256 to float
  %259 = fcmp ugt float %258, 0.000000e+00
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = fcmp ult float %258, 6.553500e+04
  br i1 %261, label %262, label %265

262:                                              ; preds = %260
  %263 = fadd float %258, 5.000000e-01
  %264 = fptoui float %263 to i16
  br label %265

265:                                              ; preds = %257, %260, %262
  %266 = phi i16 [ %264, %262 ], [ 0, %257 ], [ -1, %260 ]
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 2
  store i16 %266, ptr %267, align 2, !tbaa !74
  br label %268

268:                                              ; preds = %265, %253
  br i1 %136, label %280, label %269

269:                                              ; preds = %268
  %270 = fptrunc double %255 to float
  %271 = fcmp ugt float %270, 0.000000e+00
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = fcmp ult float %270, 6.553500e+04
  br i1 %273, label %274, label %277

274:                                              ; preds = %272
  %275 = fadd float %270, 5.000000e-01
  %276 = fptoui float %275 to i16
  br label %277

277:                                              ; preds = %269, %272, %274
  %278 = phi i16 [ %276, %274 ], [ 0, %269 ], [ -1, %272 ]
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 1
  store i16 %278, ptr %279, align 2, !tbaa !75
  br label %280

280:                                              ; preds = %277, %268
  br i1 %138, label %291, label %281

281:                                              ; preds = %280
  %282 = fptrunc double %254 to float
  %283 = fcmp ugt float %282, 0.000000e+00
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = fcmp ult float %282, 6.553500e+04
  br i1 %285, label %286, label %289

286:                                              ; preds = %284
  %287 = fadd float %282, 5.000000e-01
  %288 = fptoui float %287 to i16
  br label %289

289:                                              ; preds = %281, %284, %286
  %290 = phi i16 [ %288, %286 ], [ 0, %281 ], [ -1, %284 ]
  store i16 %290, ptr %186, align 2, !tbaa !76
  br label %291

291:                                              ; preds = %289, %280
  br i1 %122, label %338, label %292

292:                                              ; preds = %291
  %293 = icmp sgt i64 %201, 0
  br i1 %293, label %294, label %326

294:                                              ; preds = %292
  %295 = load i64, ptr %118, align 8, !tbaa !88
  %296 = icmp sgt i64 %295, 0
  %297 = add nuw i64 %201, %169
  %298 = shl i64 %295, 2
  br label %299

299:                                              ; preds = %294, %320
  %300 = phi i64 [ 0, %294 ], [ %324, %320 ]
  %301 = phi ptr [ %187, %294 ], [ %323, %320 ]
  %302 = phi ptr [ %82, %294 ], [ %322, %320 ]
  %303 = phi double [ %179, %294 ], [ %321, %320 ]
  br i1 %296, label %304, label %320

304:                                              ; preds = %299, %304
  %305 = phi i64 [ %316, %304 ], [ 0, %299 ]
  %306 = phi ptr [ %315, %304 ], [ %302, %299 ]
  %307 = phi double [ %314, %304 ], [ %303, %299 ]
  %308 = load float, ptr %306, align 4, !tbaa !144
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %301, i64 %305, i32 3
  %310 = load i16, ptr %309, align 2, !tbaa !73
  %311 = uitofp i16 %310 to float
  %312 = fmul float %308, %311
  %313 = fpext float %312 to double
  %314 = fadd double %307, %313
  %315 = getelementptr inbounds float, ptr %306, i64 1
  %316 = add nuw nsw i64 %305, 1
  %317 = icmp eq i64 %316, %295
  br i1 %317, label %318, label %304, !llvm.loop !148

318:                                              ; preds = %304
  %319 = getelementptr i8, ptr %302, i64 %298
  br label %320

320:                                              ; preds = %318, %299
  %321 = phi double [ %303, %299 ], [ %314, %318 ]
  %322 = phi ptr [ %302, %299 ], [ %319, %318 ]
  %323 = getelementptr inbounds %struct._PixelPacket, ptr %301, i64 %297
  %324 = add nuw nsw i64 %300, 1
  %325 = icmp eq i64 %324, %201
  br i1 %325, label %326, label %299, !llvm.loop !149

326:                                              ; preds = %320, %292
  %327 = phi double [ %179, %292 ], [ %321, %320 ]
  %328 = fptrunc double %327 to float
  %329 = fcmp ugt float %328, 0.000000e+00
  br i1 %329, label %330, label %335

330:                                              ; preds = %326
  %331 = fcmp ult float %328, 6.553500e+04
  br i1 %331, label %332, label %335

332:                                              ; preds = %330
  %333 = fadd float %328, 5.000000e-01
  %334 = fptoui float %333 to i16
  br label %335

335:                                              ; preds = %326, %330, %332
  %336 = phi i16 [ %334, %332 ], [ 0, %326 ], [ -1, %330 ]
  %337 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 3
  store i16 %336, ptr %337, align 2, !tbaa !73
  br label %338

338:                                              ; preds = %335, %291
  br i1 %140, label %606, label %339

339:                                              ; preds = %338
  %340 = load i32, ptr %141, align 4, !tbaa !77
  %341 = icmp eq i32 %340, 12
  br i1 %341, label %342, label %606

342:                                              ; preds = %339
  %343 = icmp sgt i64 %201, 0
  br i1 %343, label %344, label %382

344:                                              ; preds = %342
  %345 = load i64, ptr %118, align 8, !tbaa !88
  %346 = icmp sgt i64 %345, 0
  %347 = add nuw i64 %201, %169
  %348 = shl i64 %345, 2
  br label %349

349:                                              ; preds = %344, %376
  %350 = phi ptr [ %188, %344 ], [ %379, %376 ]
  %351 = phi i64 [ 0, %344 ], [ %380, %376 ]
  %352 = phi ptr [ %82, %344 ], [ %378, %376 ]
  %353 = phi double [ %181, %344 ], [ %377, %376 ]
  br i1 %346, label %354, label %376

354:                                              ; preds = %349
  %355 = icmp eq ptr %350, null
  br label %356

356:                                              ; preds = %354, %365
  %357 = phi i64 [ 0, %354 ], [ %372, %365 ]
  %358 = phi ptr [ %352, %354 ], [ %371, %365 ]
  %359 = phi double [ %353, %354 ], [ %370, %365 ]
  %360 = load float, ptr %358, align 4, !tbaa !144
  br i1 %355, label %365, label %361

361:                                              ; preds = %356
  %362 = getelementptr inbounds i16, ptr %350, i64 %357
  %363 = load i16, ptr %362, align 2, !tbaa !78
  %364 = zext i16 %363 to i32
  br label %365

365:                                              ; preds = %356, %361
  %366 = phi i32 [ %364, %361 ], [ 0, %356 ]
  %367 = sitofp i32 %366 to float
  %368 = fmul float %360, %367
  %369 = fpext float %368 to double
  %370 = fadd double %359, %369
  %371 = getelementptr inbounds float, ptr %358, i64 1
  %372 = add nuw nsw i64 %357, 1
  %373 = icmp eq i64 %372, %345
  br i1 %373, label %374, label %356, !llvm.loop !150

374:                                              ; preds = %365
  %375 = getelementptr i8, ptr %352, i64 %348
  br label %376

376:                                              ; preds = %374, %349
  %377 = phi double [ %353, %349 ], [ %370, %374 ]
  %378 = phi ptr [ %352, %349 ], [ %375, %374 ]
  %379 = getelementptr inbounds i16, ptr %350, i64 %347
  %380 = add nuw nsw i64 %351, 1
  %381 = icmp eq i64 %380, %201
  br i1 %381, label %382, label %349, !llvm.loop !151

382:                                              ; preds = %376, %342
  %383 = phi double [ %181, %342 ], [ %377, %376 ]
  br i1 %183, label %606, label %384

384:                                              ; preds = %382
  %385 = getelementptr inbounds i16, ptr %168, i64 %185
  %386 = fptrunc double %383 to float
  %387 = fcmp ugt float %386, 0.000000e+00
  br i1 %387, label %388, label %393

388:                                              ; preds = %384
  %389 = fcmp ult float %386, 6.553500e+04
  br i1 %389, label %390, label %393

390:                                              ; preds = %388
  %391 = fadd float %386, 5.000000e-01
  %392 = fptoui float %391 to i16
  br label %393

393:                                              ; preds = %384, %388, %390
  %394 = phi i16 [ %392, %390 ], [ 0, %384 ], [ -1, %388 ]
  store i16 %394, ptr %385, align 2, !tbaa !78
  br label %606

395:                                              ; preds = %195, %438
  %396 = phi double [ 0.000000e+00, %195 ], [ %443, %438 ]
  %397 = phi i64 [ 0, %195 ], [ %445, %438 ]
  %398 = phi ptr [ %187, %195 ], [ %444, %438 ]
  %399 = phi ptr [ %82, %195 ], [ %442, %438 ]
  %400 = phi double [ %173, %195 ], [ %441, %438 ]
  %401 = phi double [ %175, %195 ], [ %440, %438 ]
  %402 = phi double [ %177, %195 ], [ %439, %438 ]
  br i1 %197, label %403, label %438

403:                                              ; preds = %395, %403
  %404 = phi double [ %432, %403 ], [ %396, %395 ]
  %405 = phi i64 [ %434, %403 ], [ 0, %395 ]
  %406 = phi ptr [ %433, %403 ], [ %399, %395 ]
  %407 = phi double [ %424, %403 ], [ %400, %395 ]
  %408 = phi double [ %428, %403 ], [ %401, %395 ]
  %409 = phi double [ %431, %403 ], [ %402, %395 ]
  %410 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 %405
  %411 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 %405, i32 3
  %412 = load i16, ptr %411, align 2, !tbaa !73
  %413 = xor i16 %412, -1
  %414 = uitofp i16 %413 to double
  %415 = fmul double %414, 0x3EF0001000100010
  %416 = fptrunc double %415 to float
  %417 = fpext float %416 to double
  %418 = load float, ptr %406, align 4, !tbaa !144
  %419 = fpext float %418 to double
  %420 = fmul double %419, %417
  %421 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 %405, i32 2
  %422 = load i16, ptr %421, align 2, !tbaa !74
  %423 = uitofp i16 %422 to double
  %424 = call double @llvm.fmuladd.f64(double %420, double %423, double %407)
  %425 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 %405, i32 1
  %426 = load i16, ptr %425, align 2, !tbaa !75
  %427 = uitofp i16 %426 to double
  %428 = call double @llvm.fmuladd.f64(double %420, double %427, double %408)
  %429 = load i16, ptr %410, align 2, !tbaa !76
  %430 = uitofp i16 %429 to double
  %431 = call double @llvm.fmuladd.f64(double %420, double %430, double %409)
  %432 = call double @llvm.fmuladd.f64(double %419, double %417, double %404)
  %433 = getelementptr inbounds float, ptr %406, i64 1
  %434 = add nuw nsw i64 %405, 1
  %435 = icmp eq i64 %434, %196
  br i1 %435, label %436, label %403, !llvm.loop !152

436:                                              ; preds = %403
  %437 = getelementptr i8, ptr %399, i64 %199
  br label %438

438:                                              ; preds = %436, %395
  %439 = phi double [ %402, %395 ], [ %431, %436 ]
  %440 = phi double [ %401, %395 ], [ %428, %436 ]
  %441 = phi double [ %400, %395 ], [ %424, %436 ]
  %442 = phi ptr [ %399, %395 ], [ %437, %436 ]
  %443 = phi double [ %396, %395 ], [ %432, %436 ]
  %444 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 %198
  %445 = add nuw nsw i64 %397, 1
  %446 = icmp eq i64 %445, %193
  br i1 %446, label %447, label %395, !llvm.loop !153

447:                                              ; preds = %438, %192
  %448 = phi double [ %177, %192 ], [ %439, %438 ]
  %449 = phi double [ %175, %192 ], [ %440, %438 ]
  %450 = phi double [ %173, %192 ], [ %441, %438 ]
  %451 = phi double [ 0.000000e+00, %192 ], [ %443, %438 ]
  %452 = fcmp olt double %451, 0.000000e+00
  %453 = select i1 %452, double 0.000000e+00, double %451
  %454 = fcmp ult double %453, 1.000000e-15
  %455 = fdiv double 1.000000e+00, %453
  %456 = select i1 %454, double 0x430C6BF52633FFFF, double %455
  br i1 %125, label %469, label %457

457:                                              ; preds = %447
  %458 = fmul double %450, %456
  %459 = fptrunc double %458 to float
  %460 = fcmp ugt float %459, 0.000000e+00
  br i1 %460, label %461, label %466

461:                                              ; preds = %457
  %462 = fcmp ult float %459, 6.553500e+04
  br i1 %462, label %463, label %466

463:                                              ; preds = %461
  %464 = fadd float %459, 5.000000e-01
  %465 = fptoui float %464 to i16
  br label %466

466:                                              ; preds = %457, %461, %463
  %467 = phi i16 [ %465, %463 ], [ 0, %457 ], [ -1, %461 ]
  %468 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 2
  store i16 %467, ptr %468, align 2, !tbaa !74
  br label %469

469:                                              ; preds = %466, %447
  br i1 %127, label %482, label %470

470:                                              ; preds = %469
  %471 = fmul double %449, %456
  %472 = fptrunc double %471 to float
  %473 = fcmp ugt float %472, 0.000000e+00
  br i1 %473, label %474, label %479

474:                                              ; preds = %470
  %475 = fcmp ult float %472, 6.553500e+04
  br i1 %475, label %476, label %479

476:                                              ; preds = %474
  %477 = fadd float %472, 5.000000e-01
  %478 = fptoui float %477 to i16
  br label %479

479:                                              ; preds = %470, %474, %476
  %480 = phi i16 [ %478, %476 ], [ 0, %470 ], [ -1, %474 ]
  %481 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 1
  store i16 %480, ptr %481, align 2, !tbaa !75
  br label %482

482:                                              ; preds = %479, %469
  br i1 %129, label %494, label %483

483:                                              ; preds = %482
  %484 = fmul double %448, %456
  %485 = fptrunc double %484 to float
  %486 = fcmp ugt float %485, 0.000000e+00
  br i1 %486, label %487, label %492

487:                                              ; preds = %483
  %488 = fcmp ult float %485, 6.553500e+04
  br i1 %488, label %489, label %492

489:                                              ; preds = %487
  %490 = fadd float %485, 5.000000e-01
  %491 = fptoui float %490 to i16
  br label %492

492:                                              ; preds = %483, %487, %489
  %493 = phi i16 [ %491, %489 ], [ 0, %483 ], [ -1, %487 ]
  store i16 %493, ptr %186, align 2, !tbaa !76
  br label %494

494:                                              ; preds = %482, %492
  %495 = icmp sgt i64 %193, 0
  br i1 %495, label %496, label %528

496:                                              ; preds = %494
  %497 = load i64, ptr %118, align 8, !tbaa !88
  %498 = icmp sgt i64 %497, 0
  %499 = add nuw i64 %193, %169
  %500 = shl i64 %497, 2
  br label %501

501:                                              ; preds = %496, %522
  %502 = phi i64 [ 0, %496 ], [ %526, %522 ]
  %503 = phi ptr [ %187, %496 ], [ %525, %522 ]
  %504 = phi ptr [ %82, %496 ], [ %524, %522 ]
  %505 = phi double [ %179, %496 ], [ %523, %522 ]
  br i1 %498, label %506, label %522

506:                                              ; preds = %501, %506
  %507 = phi i64 [ %518, %506 ], [ 0, %501 ]
  %508 = phi ptr [ %517, %506 ], [ %504, %501 ]
  %509 = phi double [ %516, %506 ], [ %505, %501 ]
  %510 = load float, ptr %508, align 4, !tbaa !144
  %511 = getelementptr inbounds %struct._PixelPacket, ptr %503, i64 %507, i32 3
  %512 = load i16, ptr %511, align 2, !tbaa !73
  %513 = uitofp i16 %512 to float
  %514 = fmul float %510, %513
  %515 = fpext float %514 to double
  %516 = fadd double %509, %515
  %517 = getelementptr inbounds float, ptr %508, i64 1
  %518 = add nuw nsw i64 %507, 1
  %519 = icmp eq i64 %518, %497
  br i1 %519, label %520, label %506, !llvm.loop !154

520:                                              ; preds = %506
  %521 = getelementptr i8, ptr %504, i64 %500
  br label %522

522:                                              ; preds = %520, %501
  %523 = phi double [ %505, %501 ], [ %516, %520 ]
  %524 = phi ptr [ %504, %501 ], [ %521, %520 ]
  %525 = getelementptr inbounds %struct._PixelPacket, ptr %503, i64 %499
  %526 = add nuw nsw i64 %502, 1
  %527 = icmp eq i64 %526, %193
  br i1 %527, label %528, label %501, !llvm.loop !155

528:                                              ; preds = %522, %494
  %529 = phi double [ %179, %494 ], [ %523, %522 ]
  %530 = fptrunc double %529 to float
  %531 = fcmp ugt float %530, 0.000000e+00
  br i1 %531, label %532, label %537

532:                                              ; preds = %528
  %533 = fcmp ult float %530, 6.553500e+04
  br i1 %533, label %534, label %537

534:                                              ; preds = %532
  %535 = fadd float %530, 5.000000e-01
  %536 = fptoui float %535 to i16
  br label %537

537:                                              ; preds = %528, %532, %534
  %538 = phi i16 [ %536, %534 ], [ 0, %528 ], [ -1, %532 ]
  %539 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 3
  store i16 %538, ptr %539, align 2, !tbaa !73
  br i1 %131, label %606, label %540

540:                                              ; preds = %537
  %541 = load i32, ptr %132, align 4, !tbaa !77
  %542 = icmp eq i32 %541, 12
  br i1 %542, label %543, label %606

543:                                              ; preds = %540
  %544 = icmp sgt i64 %193, 0
  br i1 %544, label %545, label %592

545:                                              ; preds = %543
  %546 = load i64, ptr %118, align 8, !tbaa !88
  %547 = icmp sgt i64 %546, 0
  %548 = add nuw i64 %193, %169
  %549 = shl i64 %546, 2
  br label %550

550:                                              ; preds = %545, %585
  %551 = phi ptr [ %188, %545 ], [ %589, %585 ]
  %552 = phi i64 [ 0, %545 ], [ %590, %585 ]
  %553 = phi ptr [ %187, %545 ], [ %588, %585 ]
  %554 = phi ptr [ %82, %545 ], [ %587, %585 ]
  %555 = phi double [ %181, %545 ], [ %586, %585 ]
  br i1 %547, label %556, label %585

556:                                              ; preds = %550
  %557 = icmp eq ptr %551, null
  br label %558

558:                                              ; preds = %556, %576
  %559 = phi i64 [ 0, %556 ], [ %581, %576 ]
  %560 = phi ptr [ %554, %556 ], [ %580, %576 ]
  %561 = phi double [ %555, %556 ], [ %579, %576 ]
  %562 = getelementptr inbounds %struct._PixelPacket, ptr %553, i64 %559, i32 3
  %563 = load i16, ptr %562, align 2, !tbaa !73
  %564 = xor i16 %563, -1
  %565 = uitofp i16 %564 to double
  %566 = fmul double %565, 0x3EF0001000100010
  %567 = fptrunc double %566 to float
  %568 = fpext float %567 to double
  %569 = load float, ptr %560, align 4, !tbaa !144
  %570 = fpext float %569 to double
  %571 = fmul double %570, %568
  br i1 %557, label %576, label %572

572:                                              ; preds = %558
  %573 = getelementptr inbounds i16, ptr %551, i64 %559
  %574 = load i16, ptr %573, align 2, !tbaa !78
  %575 = zext i16 %574 to i32
  br label %576

576:                                              ; preds = %558, %572
  %577 = phi i32 [ %575, %572 ], [ 0, %558 ]
  %578 = sitofp i32 %577 to double
  %579 = call double @llvm.fmuladd.f64(double %571, double %578, double %561)
  %580 = getelementptr inbounds float, ptr %560, i64 1
  %581 = add nuw nsw i64 %559, 1
  %582 = icmp eq i64 %581, %546
  br i1 %582, label %583, label %558, !llvm.loop !156

583:                                              ; preds = %576
  %584 = getelementptr i8, ptr %554, i64 %549
  br label %585

585:                                              ; preds = %583, %550
  %586 = phi double [ %555, %550 ], [ %579, %583 ]
  %587 = phi ptr [ %554, %550 ], [ %584, %583 ]
  %588 = getelementptr inbounds %struct._PixelPacket, ptr %553, i64 %548
  %589 = getelementptr inbounds i16, ptr %551, i64 %548
  %590 = add nuw nsw i64 %552, 1
  %591 = icmp eq i64 %590, %193
  br i1 %591, label %592, label %550, !llvm.loop !157

592:                                              ; preds = %585, %543
  %593 = phi double [ %181, %543 ], [ %586, %585 ]
  br i1 %182, label %606, label %594

594:                                              ; preds = %592
  %595 = getelementptr inbounds i16, ptr %168, i64 %185
  %596 = fmul double %456, %593
  %597 = fptrunc double %596 to float
  %598 = fcmp ugt float %597, 0.000000e+00
  br i1 %598, label %599, label %604

599:                                              ; preds = %594
  %600 = fcmp ult float %597, 6.553500e+04
  br i1 %600, label %601, label %604

601:                                              ; preds = %599
  %602 = fadd float %597, 5.000000e-01
  %603 = fptoui float %602 to i16
  br label %604

604:                                              ; preds = %594, %599, %601
  %605 = phi i16 [ %603, %601 ], [ 0, %594 ], [ -1, %599 ]
  store i16 %605, ptr %595, align 2, !tbaa !78
  br label %606

606:                                              ; preds = %537, %540, %604, %592, %382, %393, %338, %339
  %607 = getelementptr inbounds i16, ptr %188, i64 1
  %608 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 1
  %609 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 1
  %610 = add nuw nsw i64 %185, 1
  %611 = icmp eq i64 %610, %169
  br i1 %611, label %612, label %184, !llvm.loop !158

612:                                              ; preds = %606, %166
  %613 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %113, ptr noundef %3) #13
  %614 = icmp ne i32 %613, 0
  %615 = zext i1 %614 to i32
  %616 = load ptr, ptr %142, align 8, !tbaa !81
  %617 = icmp eq ptr %616, null
  br i1 %617, label %627, label %618

618:                                              ; preds = %612
  %619 = add nsw i64 %147, 1
  %620 = load i64, ptr %114, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  %621 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.14, ptr noundef nonnull %143) #11
  %622 = load ptr, ptr %142, align 8, !tbaa !81
  %623 = load ptr, ptr %144, align 8, !tbaa !82
  %624 = call i32 %622(ptr noundef nonnull %5, i64 noundef %147, i64 noundef %620, ptr noundef %623) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  %625 = icmp eq i32 %624, 0
  %626 = select i1 %625, i32 0, i32 %615
  br label %627

627:                                              ; preds = %612, %618, %150, %145
  %628 = phi i32 [ 0, %145 ], [ 0, %150 ], [ %626, %618 ], [ %615, %612 ]
  %629 = phi i64 [ %147, %145 ], [ %147, %150 ], [ %619, %618 ], [ %147, %612 ]
  %630 = add nuw nsw i64 %146, 1
  %631 = load i64, ptr %114, align 8, !tbaa !54
  %632 = icmp slt i64 %630, %631
  br i1 %632, label %145, label %633, !llvm.loop !159

633:                                              ; preds = %627
  %634 = icmp eq i32 %628, 0
  %635 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %636 = load i32, ptr %635, align 8, !tbaa !84
  %637 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 77
  store i32 %636, ptr %637, align 8, !tbaa !84
  %638 = call ptr @DestroyCacheView(ptr noundef %113) #11
  %639 = call ptr @DestroyCacheView(ptr noundef %112) #11
  %640 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %82) #11
  br i1 %634, label %641, label %650

641:                                              ; preds = %633
  %642 = call ptr @DestroyImage(ptr noundef nonnull %71) #11
  br label %650

643:                                              ; preds = %103
  %644 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %645 = load i32, ptr %644, align 8, !tbaa !84
  %646 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 77
  store i32 %645, ptr %646, align 8, !tbaa !84
  %647 = call ptr @DestroyCacheView(ptr noundef %113) #11
  %648 = call ptr @DestroyCacheView(ptr noundef %112) #11
  %649 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %82) #11
  br label %650

650:                                              ; preds = %643, %633, %641, %70, %67, %91, %76, %20
  %651 = phi ptr [ null, %20 ], [ null, %76 ], [ null, %91 ], [ %68, %67 ], [ null, %70 ], [ %642, %641 ], [ %71, %633 ], [ %71, %643 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  ret ptr %651
}

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GaussianBlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @GaussianBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GaussianBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1878, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %2, double noundef %3) #11
  %15 = call ptr @AcquireKernelInfo(ptr noundef nonnull %6) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1885, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %18) #11
  br label %28

20:                                               ; preds = %13
  %21 = call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %15, ptr noundef %4) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %15, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #11
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi ptr [ %24, %23 ], [ %21, %20 ]
  %27 = call ptr @DestroyKernelInfo(ptr noundef nonnull %15) #11
  br label %28

28:                                               ; preds = %25, %17
  %29 = phi ptr [ null, %17 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MotionBlurImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @MotionBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MotionBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2022, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #11
  br label %16

16:                                               ; preds = %13, %6
  %17 = tail call i64 @GetOptimalKernelWidth1D(double noundef %2, double noundef %3) #11
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1951, ptr noundef nonnull @.str.70) #11
  %19 = tail call ptr @AcquireAlignedMemory(i64 noundef %17, i64 noundef 8) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %16
  %22 = icmp sgt i64 %17, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = tail call double @llvm.fabs.f64(double %3)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = select i1 %25, double 1.000000e-15, double %3
  %27 = fmul double %26, 2.000000e+00
  %28 = fmul double %26, %27
  %29 = fmul double %26, 0x40040D931FF62705
  br label %33

30:                                               ; preds = %33, %21
  %31 = phi double [ 0.000000e+00, %21 ], [ %43, %33 ]
  %32 = icmp sgt i64 %17, 0
  br i1 %32, label %46, label %53

33:                                               ; preds = %23, %33
  %34 = phi i64 [ 0, %23 ], [ %44, %33 ]
  %35 = phi double [ 0.000000e+00, %23 ], [ %43, %33 ]
  %36 = sitofp i64 %34 to double
  %37 = fneg double %36
  %38 = fmul double %37, %36
  %39 = fdiv double %38, %28
  %40 = tail call double @exp(double noundef %39) #11
  %41 = fdiv double %40, %29
  %42 = getelementptr inbounds double, ptr %19, i64 %34
  store double %41, ptr %42, align 8, !tbaa !56
  %43 = fadd double %35, %41
  %44 = add nuw nsw i64 %34, 1
  %45 = icmp eq i64 %44, %17
  br i1 %45, label %30, label %33, !llvm.loop !160

46:                                               ; preds = %30, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %30 ]
  %48 = getelementptr inbounds double, ptr %19, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !56
  %50 = fdiv double %49, %31
  store double %50, ptr %48, align 8, !tbaa !56
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, %17
  br i1 %52, label %53, label %46, !llvm.loop !161

53:                                               ; preds = %46, %30
  br i1 %20, label %54, label %57

54:                                               ; preds = %16, %53
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %56 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2027, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %55) #11
  br label %484

57:                                               ; preds = %53
  %58 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 16) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #11
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %63 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2032, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %62) #11
  br label %484

64:                                               ; preds = %57
  %65 = uitofp i64 %17 to double
  %66 = fmul double %4, 0x400921FB54442D18
  %67 = fdiv double %66, 1.800000e+02
  %68 = tail call double @sin(double noundef %67) #11
  %69 = fmul double %68, %65
  %70 = tail call double @cos(double noundef %67) #11
  %71 = fmul double %70, %65
  %72 = icmp sgt i64 %17, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %64, %73
  %74 = phi i64 [ %90, %73 ], [ 0, %64 ]
  %75 = sitofp i64 %74 to double
  %76 = fmul double %71, %75
  %77 = tail call double @hypot(double noundef %69, double noundef %71) #11
  %78 = fdiv double %76, %77
  %79 = fadd double %78, -5.000000e-01
  %80 = tail call double @llvm.ceil.f64(double %79)
  %81 = fptosi double %80 to i64
  %82 = getelementptr inbounds %struct._OffsetInfo, ptr %58, i64 %74
  store i64 %81, ptr %82, align 8, !tbaa !162
  %83 = fmul double %69, %75
  %84 = tail call double @hypot(double noundef %69, double noundef %71) #11
  %85 = fdiv double %83, %84
  %86 = fadd double %85, -5.000000e-01
  %87 = tail call double @llvm.ceil.f64(double %86)
  %88 = fptosi double %87 to i64
  %89 = getelementptr inbounds %struct._OffsetInfo, ptr %58, i64 %74, i32 1
  store i64 %88, ptr %89, align 8, !tbaa !164
  %90 = add nuw nsw i64 %74, 1
  %91 = icmp eq i64 %90, %17
  br i1 %91, label %92, label %73, !llvm.loop !165

92:                                               ; preds = %73, %64
  %93 = tail call ptr @AccelerateMotionBlurImage(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %19, i64 noundef %17, ptr noundef nonnull %58, ptr noundef %5) #11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %484

95:                                               ; preds = %92
  %96 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #11
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #11
  %100 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %58) #11
  br label %484

101:                                              ; preds = %95
  %102 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %96, i32 noundef 1) #11
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #11
  %106 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %58) #11
  %107 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %107) #11
  %108 = tail call ptr @DestroyImage(ptr noundef nonnull %96) #11
  br label %484

109:                                              ; preds = %101
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %8) #11
  %110 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %5) #11
  %111 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %96, ptr noundef %5) #11
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %113 = load i64, ptr %112, align 8, !tbaa !54
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %479

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 7
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %118 = getelementptr inbounds i8, ptr %8, i64 32
  %119 = getelementptr inbounds i8, ptr %8, i64 36
  %120 = getelementptr inbounds i8, ptr %8, i64 40
  %121 = getelementptr inbounds i8, ptr %8, i64 44
  %122 = getelementptr inbounds i8, ptr %8, i64 48
  %123 = and i32 %1, 8
  %124 = icmp eq i32 %123, 0
  %125 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %126 = icmp sgt i64 %17, 0
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 3
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %131 = and i32 %1, 1
  %132 = icmp eq i32 %131, 0
  %133 = and i32 %1, 2
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %1, 4
  %136 = icmp eq i32 %135, 0
  %137 = and i32 %1, 32
  %138 = icmp eq i32 %137, 0
  %139 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %140 = icmp sgt i64 %17, 0
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 3
  %144 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %145 = and i32 %1, 1
  %146 = icmp eq i32 %145, 0
  %147 = and i32 %1, 2
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %1, 4
  %150 = icmp eq i32 %149, 0
  %151 = and i32 %1, 32
  %152 = icmp eq i32 %151, 0
  %153 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %154 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %155 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %156 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %157

157:                                              ; preds = %115, %465
  %158 = phi i64 [ 0, %115 ], [ %468, %465 ]
  %159 = phi i32 [ 1, %115 ], [ %467, %465 ]
  %160 = phi i64 [ 0, %115 ], [ %466, %465 ]
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %465, label %162

162:                                              ; preds = %157
  %163 = load i64, ptr %116, align 8, !tbaa !53
  %164 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %111, i64 noundef 0, i64 noundef %158, i64 noundef %163, i64 noundef 1, ptr noundef %5) #13
  %165 = icmp eq ptr %164, null
  br i1 %165, label %465, label %166

166:                                              ; preds = %162
  %167 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %111) #11
  %168 = load i64, ptr %117, align 8, !tbaa !53
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %450

170:                                              ; preds = %166
  %171 = icmp eq ptr %167, null
  %172 = icmp eq ptr %167, null
  br label %173

173:                                              ; preds = %170, %445
  %174 = phi i64 [ 0, %170 ], [ %447, %445 ]
  %175 = phi ptr [ %164, %170 ], [ %446, %445 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %176 = load float, ptr %118, align 8, !tbaa.struct !166
  %177 = load float, ptr %119, align 4, !tbaa.struct !167
  %178 = load float, ptr %120, align 8, !tbaa.struct !168
  %179 = load float, ptr %121, align 4, !tbaa.struct !169
  %180 = load float, ptr %122, align 8, !tbaa.struct !170
  br i1 %124, label %185, label %181

181:                                              ; preds = %173
  %182 = load i32, ptr %125, align 8, !tbaa !72
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  br i1 %126, label %300, label %366

185:                                              ; preds = %181, %173
  br i1 %140, label %186, label %237

186:                                              ; preds = %185, %232
  %187 = phi i64 [ %235, %232 ], [ 0, %185 ]
  %188 = phi ptr [ %234, %232 ], [ %19, %185 ]
  %189 = phi float [ %206, %232 ], [ %176, %185 ]
  %190 = phi float [ %211, %232 ], [ %177, %185 ]
  %191 = phi float [ %216, %232 ], [ %178, %185 ]
  %192 = phi float [ %221, %232 ], [ %179, %185 ]
  %193 = phi float [ %233, %232 ], [ %180, %185 ]
  %194 = getelementptr inbounds %struct._OffsetInfo, ptr %58, i64 %187
  %195 = load i64, ptr %194, align 8, !tbaa !162
  %196 = add nsw i64 %195, %174
  %197 = getelementptr inbounds %struct._OffsetInfo, ptr %58, i64 %187, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !164
  %199 = add nsw i64 %198, %158
  %200 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %110, i64 noundef %196, i64 noundef %199, ptr noundef nonnull %9, ptr noundef %5) #11
  %201 = load double, ptr %188, align 8, !tbaa !56
  %202 = load i16, ptr %141, align 2, !tbaa !74
  %203 = uitofp i16 %202 to double
  %204 = fpext float %189 to double
  %205 = call double @llvm.fmuladd.f64(double %201, double %203, double %204)
  %206 = fptrunc double %205 to float
  %207 = load i16, ptr %142, align 2, !tbaa !75
  %208 = uitofp i16 %207 to double
  %209 = fpext float %190 to double
  %210 = call double @llvm.fmuladd.f64(double %201, double %208, double %209)
  %211 = fptrunc double %210 to float
  %212 = load i16, ptr %9, align 2, !tbaa !76
  %213 = uitofp i16 %212 to double
  %214 = fpext float %191 to double
  %215 = call double @llvm.fmuladd.f64(double %201, double %213, double %214)
  %216 = fptrunc double %215 to float
  %217 = load i16, ptr %143, align 2, !tbaa !73
  %218 = uitofp i16 %217 to double
  %219 = fpext float %192 to double
  %220 = call double @llvm.fmuladd.f64(double %201, double %218, double %219)
  %221 = fptrunc double %220 to float
  %222 = load i32, ptr %144, align 4, !tbaa !77
  %223 = icmp eq i32 %222, 12
  br i1 %223, label %224, label %232

224:                                              ; preds = %186
  %225 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %110) #11
  %226 = load double, ptr %188, align 8, !tbaa !56
  %227 = load i16, ptr %225, align 2, !tbaa !78
  %228 = uitofp i16 %227 to double
  %229 = fpext float %193 to double
  %230 = call double @llvm.fmuladd.f64(double %226, double %228, double %229)
  %231 = fptrunc double %230 to float
  br label %232

232:                                              ; preds = %224, %186
  %233 = phi float [ %231, %224 ], [ %193, %186 ]
  %234 = getelementptr inbounds double, ptr %188, i64 1
  %235 = add nuw nsw i64 %187, 1
  %236 = icmp eq i64 %235, %17
  br i1 %236, label %237, label %186, !llvm.loop !171

237:                                              ; preds = %232, %185
  %238 = phi float [ %180, %185 ], [ %233, %232 ]
  %239 = phi float [ %179, %185 ], [ %221, %232 ]
  %240 = phi float [ %178, %185 ], [ %216, %232 ]
  %241 = phi float [ %177, %185 ], [ %211, %232 ]
  %242 = phi float [ %176, %185 ], [ %206, %232 ]
  br i1 %146, label %253, label %243

243:                                              ; preds = %237
  %244 = fcmp ugt float %242, 0.000000e+00
  br i1 %244, label %245, label %250

245:                                              ; preds = %243
  %246 = fcmp ult float %242, 6.553500e+04
  br i1 %246, label %247, label %250

247:                                              ; preds = %245
  %248 = fadd float %242, 5.000000e-01
  %249 = fptoui float %248 to i16
  br label %250

250:                                              ; preds = %243, %245, %247
  %251 = phi i16 [ %249, %247 ], [ 0, %243 ], [ -1, %245 ]
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 2
  store i16 %251, ptr %252, align 2, !tbaa !74
  br label %253

253:                                              ; preds = %250, %237
  br i1 %148, label %264, label %254

254:                                              ; preds = %253
  %255 = fcmp ugt float %241, 0.000000e+00
  br i1 %255, label %256, label %261

256:                                              ; preds = %254
  %257 = fcmp ult float %241, 6.553500e+04
  br i1 %257, label %258, label %261

258:                                              ; preds = %256
  %259 = fadd float %241, 5.000000e-01
  %260 = fptoui float %259 to i16
  br label %261

261:                                              ; preds = %254, %256, %258
  %262 = phi i16 [ %260, %258 ], [ 0, %254 ], [ -1, %256 ]
  %263 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 1
  store i16 %262, ptr %263, align 2, !tbaa !75
  br label %264

264:                                              ; preds = %261, %253
  br i1 %150, label %274, label %265

265:                                              ; preds = %264
  %266 = fcmp ugt float %240, 0.000000e+00
  br i1 %266, label %267, label %272

267:                                              ; preds = %265
  %268 = fcmp ult float %240, 6.553500e+04
  br i1 %268, label %269, label %272

269:                                              ; preds = %267
  %270 = fadd float %240, 5.000000e-01
  %271 = fptoui float %270 to i16
  br label %272

272:                                              ; preds = %265, %267, %269
  %273 = phi i16 [ %271, %269 ], [ 0, %265 ], [ -1, %267 ]
  store i16 %273, ptr %175, align 2, !tbaa !76
  br label %274

274:                                              ; preds = %272, %264
  br i1 %124, label %285, label %275

275:                                              ; preds = %274
  %276 = fcmp ugt float %239, 0.000000e+00
  br i1 %276, label %277, label %282

277:                                              ; preds = %275
  %278 = fcmp ult float %239, 6.553500e+04
  br i1 %278, label %279, label %282

279:                                              ; preds = %277
  %280 = fadd float %239, 5.000000e-01
  %281 = fptoui float %280 to i16
  br label %282

282:                                              ; preds = %275, %277, %279
  %283 = phi i16 [ %281, %279 ], [ 0, %275 ], [ -1, %277 ]
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 3
  store i16 %283, ptr %284, align 2, !tbaa !73
  br label %285

285:                                              ; preds = %282, %274
  br i1 %152, label %445, label %286

286:                                              ; preds = %285
  %287 = load i32, ptr %153, align 4, !tbaa !77
  %288 = icmp ne i32 %287, 12
  %289 = select i1 %288, i1 true, i1 %172
  br i1 %289, label %445, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds i16, ptr %167, i64 %174
  %292 = fcmp ugt float %238, 0.000000e+00
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = fcmp ult float %238, 6.553500e+04
  br i1 %294, label %295, label %298

295:                                              ; preds = %293
  %296 = fadd float %238, 5.000000e-01
  %297 = fptoui float %296 to i16
  br label %298

298:                                              ; preds = %290, %293, %295
  %299 = phi i16 [ %297, %295 ], [ 0, %290 ], [ -1, %293 ]
  store i16 %299, ptr %291, align 2, !tbaa !78
  br label %445

300:                                              ; preds = %184, %359
  %301 = phi double [ %362, %359 ], [ 0.000000e+00, %184 ]
  %302 = phi i64 [ %364, %359 ], [ 0, %184 ]
  %303 = phi ptr [ %363, %359 ], [ %19, %184 ]
  %304 = phi float [ %328, %359 ], [ %176, %184 ]
  %305 = phi float [ %333, %359 ], [ %177, %184 ]
  %306 = phi float [ %338, %359 ], [ %178, %184 ]
  %307 = phi float [ %342, %359 ], [ %179, %184 ]
  %308 = phi float [ %360, %359 ], [ %180, %184 ]
  %309 = getelementptr inbounds %struct._OffsetInfo, ptr %58, i64 %302
  %310 = load i64, ptr %309, align 8, !tbaa !162
  %311 = add nsw i64 %310, %174
  %312 = getelementptr inbounds %struct._OffsetInfo, ptr %58, i64 %302, i32 1
  %313 = load i64, ptr %312, align 8, !tbaa !164
  %314 = add nsw i64 %313, %158
  %315 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %110, i64 noundef %311, i64 noundef %314, ptr noundef nonnull %9, ptr noundef %5) #11
  %316 = load i16, ptr %127, align 2, !tbaa !73
  %317 = xor i16 %316, -1
  %318 = uitofp i16 %317 to double
  %319 = fmul double %318, 0x3EF0001000100010
  %320 = fptrunc double %319 to float
  %321 = fpext float %320 to double
  %322 = load double, ptr %303, align 8, !tbaa !56
  %323 = fmul double %322, %321
  %324 = load i16, ptr %128, align 2, !tbaa !74
  %325 = uitofp i16 %324 to double
  %326 = fpext float %304 to double
  %327 = call double @llvm.fmuladd.f64(double %323, double %325, double %326)
  %328 = fptrunc double %327 to float
  %329 = load i16, ptr %129, align 2, !tbaa !75
  %330 = uitofp i16 %329 to double
  %331 = fpext float %305 to double
  %332 = call double @llvm.fmuladd.f64(double %323, double %330, double %331)
  %333 = fptrunc double %332 to float
  %334 = load i16, ptr %9, align 2, !tbaa !76
  %335 = uitofp i16 %334 to double
  %336 = fpext float %306 to double
  %337 = call double @llvm.fmuladd.f64(double %323, double %335, double %336)
  %338 = fptrunc double %337 to float
  %339 = uitofp i16 %316 to double
  %340 = fpext float %307 to double
  %341 = call double @llvm.fmuladd.f64(double %322, double %339, double %340)
  %342 = fptrunc double %341 to float
  %343 = load i32, ptr %130, align 4, !tbaa !77
  %344 = icmp eq i32 %343, 12
  br i1 %344, label %345, label %359

345:                                              ; preds = %300
  %346 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %110) #11
  %347 = load double, ptr %303, align 8, !tbaa !56
  %348 = fmul double %347, %321
  %349 = icmp eq ptr %346, null
  br i1 %349, label %353, label %350

350:                                              ; preds = %345
  %351 = load i16, ptr %346, align 2, !tbaa !78
  %352 = zext i16 %351 to i32
  br label %353

353:                                              ; preds = %345, %350
  %354 = phi i32 [ %352, %350 ], [ 0, %345 ]
  %355 = sitofp i32 %354 to double
  %356 = fpext float %308 to double
  %357 = call double @llvm.fmuladd.f64(double %348, double %355, double %356)
  %358 = fptrunc double %357 to float
  br label %359

359:                                              ; preds = %353, %300
  %360 = phi float [ %358, %353 ], [ %308, %300 ]
  %361 = load double, ptr %303, align 8, !tbaa !56
  %362 = call double @llvm.fmuladd.f64(double %361, double %321, double %301)
  %363 = getelementptr inbounds double, ptr %303, i64 1
  %364 = add nuw nsw i64 %302, 1
  %365 = icmp eq i64 %364, %17
  br i1 %365, label %366, label %300, !llvm.loop !172

366:                                              ; preds = %359, %184
  %367 = phi float [ %180, %184 ], [ %360, %359 ]
  %368 = phi float [ %179, %184 ], [ %342, %359 ]
  %369 = phi float [ %178, %184 ], [ %338, %359 ]
  %370 = phi float [ %177, %184 ], [ %333, %359 ]
  %371 = phi float [ %176, %184 ], [ %328, %359 ]
  %372 = phi double [ 0.000000e+00, %184 ], [ %362, %359 ]
  %373 = fcmp olt double %372, 0.000000e+00
  %374 = select i1 %373, double 0.000000e+00, double %372
  %375 = fcmp ult double %374, 1.000000e-15
  %376 = fdiv double 1.000000e+00, %374
  %377 = select i1 %375, double 0x430C6BF52633FFFF, double %376
  br i1 %132, label %391, label %378

378:                                              ; preds = %366
  %379 = fpext float %371 to double
  %380 = fmul double %377, %379
  %381 = fptrunc double %380 to float
  %382 = fcmp ugt float %381, 0.000000e+00
  br i1 %382, label %383, label %388

383:                                              ; preds = %378
  %384 = fcmp ult float %381, 6.553500e+04
  br i1 %384, label %385, label %388

385:                                              ; preds = %383
  %386 = fadd float %381, 5.000000e-01
  %387 = fptoui float %386 to i16
  br label %388

388:                                              ; preds = %378, %383, %385
  %389 = phi i16 [ %387, %385 ], [ 0, %378 ], [ -1, %383 ]
  %390 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 2
  store i16 %389, ptr %390, align 2, !tbaa !74
  br label %391

391:                                              ; preds = %388, %366
  br i1 %134, label %405, label %392

392:                                              ; preds = %391
  %393 = fpext float %370 to double
  %394 = fmul double %377, %393
  %395 = fptrunc double %394 to float
  %396 = fcmp ugt float %395, 0.000000e+00
  br i1 %396, label %397, label %402

397:                                              ; preds = %392
  %398 = fcmp ult float %395, 6.553500e+04
  br i1 %398, label %399, label %402

399:                                              ; preds = %397
  %400 = fadd float %395, 5.000000e-01
  %401 = fptoui float %400 to i16
  br label %402

402:                                              ; preds = %392, %397, %399
  %403 = phi i16 [ %401, %399 ], [ 0, %392 ], [ -1, %397 ]
  %404 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 1
  store i16 %403, ptr %404, align 2, !tbaa !75
  br label %405

405:                                              ; preds = %402, %391
  br i1 %136, label %418, label %406

406:                                              ; preds = %405
  %407 = fpext float %369 to double
  %408 = fmul double %377, %407
  %409 = fptrunc double %408 to float
  %410 = fcmp ugt float %409, 0.000000e+00
  br i1 %410, label %411, label %416

411:                                              ; preds = %406
  %412 = fcmp ult float %409, 6.553500e+04
  br i1 %412, label %413, label %416

413:                                              ; preds = %411
  %414 = fadd float %409, 5.000000e-01
  %415 = fptoui float %414 to i16
  br label %416

416:                                              ; preds = %406, %411, %413
  %417 = phi i16 [ %415, %413 ], [ 0, %406 ], [ -1, %411 ]
  store i16 %417, ptr %175, align 2, !tbaa !76
  br label %418

418:                                              ; preds = %405, %416
  %419 = fcmp ugt float %368, 0.000000e+00
  br i1 %419, label %420, label %425

420:                                              ; preds = %418
  %421 = fcmp ult float %368, 6.553500e+04
  br i1 %421, label %422, label %425

422:                                              ; preds = %420
  %423 = fadd float %368, 5.000000e-01
  %424 = fptoui float %423 to i16
  br label %425

425:                                              ; preds = %418, %420, %422
  %426 = phi i16 [ %424, %422 ], [ 0, %418 ], [ -1, %420 ]
  %427 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 3
  store i16 %426, ptr %427, align 2, !tbaa !73
  br i1 %138, label %445, label %428

428:                                              ; preds = %425
  %429 = load i32, ptr %139, align 4, !tbaa !77
  %430 = icmp ne i32 %429, 12
  %431 = select i1 %430, i1 true, i1 %171
  br i1 %431, label %445, label %432

432:                                              ; preds = %428
  %433 = getelementptr inbounds i16, ptr %167, i64 %174
  %434 = fpext float %367 to double
  %435 = fmul double %377, %434
  %436 = fptrunc double %435 to float
  %437 = fcmp ugt float %436, 0.000000e+00
  br i1 %437, label %438, label %443

438:                                              ; preds = %432
  %439 = fcmp ult float %436, 6.553500e+04
  br i1 %439, label %440, label %443

440:                                              ; preds = %438
  %441 = fadd float %436, 5.000000e-01
  %442 = fptoui float %441 to i16
  br label %443

443:                                              ; preds = %432, %438, %440
  %444 = phi i16 [ %442, %440 ], [ 0, %432 ], [ -1, %438 ]
  store i16 %444, ptr %433, align 2, !tbaa !78
  br label %445

445:                                              ; preds = %425, %428, %443, %285, %286, %298
  %446 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %447 = add nuw nsw i64 %174, 1
  %448 = load i64, ptr %117, align 8, !tbaa !53
  %449 = icmp slt i64 %447, %448
  br i1 %449, label %173, label %450, !llvm.loop !173

450:                                              ; preds = %445, %166
  %451 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %111, ptr noundef %5) #13
  %452 = icmp ne i32 %451, 0
  %453 = zext i1 %452 to i32
  %454 = load ptr, ptr %154, align 8, !tbaa !81
  %455 = icmp eq ptr %454, null
  br i1 %455, label %465, label %456

456:                                              ; preds = %450
  %457 = add nsw i64 %160, 1
  %458 = load i64, ptr %112, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #11
  %459 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.16, ptr noundef nonnull %155) #11
  %460 = load ptr, ptr %154, align 8, !tbaa !81
  %461 = load ptr, ptr %156, align 8, !tbaa !82
  %462 = call i32 %460(ptr noundef nonnull %7, i64 noundef %160, i64 noundef %458, ptr noundef %461) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #11
  %463 = icmp eq i32 %462, 0
  %464 = select i1 %463, i32 0, i32 %453
  br label %465

465:                                              ; preds = %450, %456, %162, %157
  %466 = phi i64 [ %160, %157 ], [ %160, %162 ], [ %457, %456 ], [ %160, %450 ]
  %467 = phi i32 [ 0, %157 ], [ 0, %162 ], [ %464, %456 ], [ %453, %450 ]
  %468 = add nuw nsw i64 %158, 1
  %469 = load i64, ptr %112, align 8, !tbaa !54
  %470 = icmp slt i64 %468, %469
  br i1 %470, label %157, label %471, !llvm.loop !174

471:                                              ; preds = %465
  %472 = icmp eq i32 %467, 0
  %473 = call ptr @DestroyCacheView(ptr noundef %111) #11
  %474 = call ptr @DestroyCacheView(ptr noundef %110) #11
  %475 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #11
  %476 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %58) #11
  br i1 %472, label %477, label %484

477:                                              ; preds = %471
  %478 = call ptr @DestroyImage(ptr noundef nonnull %96) #11
  br label %484

479:                                              ; preds = %109
  %480 = call ptr @DestroyCacheView(ptr noundef %111) #11
  %481 = call ptr @DestroyCacheView(ptr noundef %110) #11
  %482 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #11
  %483 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %58) #11
  br label %484

484:                                              ; preds = %479, %471, %477, %92, %104, %98, %60, %54
  %485 = phi ptr [ null, %54 ], [ null, %60 ], [ null, %98 ], [ null, %104 ], [ %93, %92 ], [ %478, %477 ], [ %96, %471 ], [ %96, %479 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  ret ptr %485
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #7

declare ptr @AccelerateMotionBlurImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PreviewImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca %struct._QuantizeInfo, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2299, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #11
  br label %17

17:                                               ; preds = %14, %3
  %18 = tail call ptr @AcquireImageInfo() #11
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %9) #11
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  %21 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 1
  %22 = call i32 @ParseMetaGeometry(ptr noundef nonnull @.str.17, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %9, ptr noundef nonnull %21) #11
  %23 = call ptr @NewImageList() #11
  store ptr %23, ptr %7, align 8, !tbaa !55
  call void @GetQuantizeInfo(ptr noundef nonnull %8) #11
  %24 = getelementptr inbounds %struct._QuantizeInfo, ptr %8, i64 0, i32 3
  %25 = getelementptr inbounds %struct._ImageInfo, ptr %18, i64 0, i32 16
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %18, i64 0, i32 51
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %30

30:                                               ; preds = %17, %343
  %31 = phi i64 [ -1, %17 ], [ %352, %343 ]
  %32 = phi double [ 0.000000e+00, %17 ], [ %350, %343 ]
  %33 = phi i64 [ 2, %17 ], [ %349, %343 ]
  %34 = phi i64 [ 0, %17 ], [ %351, %343 ]
  %35 = phi double [ 0xBFC99999A0000000, %17 ], [ %348, %343 ]
  %36 = phi double [ 1.250000e+01, %17 ], [ %347, %343 ]
  %37 = phi double [ 0.000000e+00, %17 ], [ %346, %343 ]
  %38 = phi double [ 0.000000e+00, %17 ], [ %345, %343 ]
  %39 = phi double [ 1.000000e+00, %17 ], [ %344, %343 ]
  %40 = load i64, ptr %9, align 8, !tbaa !175
  %41 = load i64, ptr %21, align 8, !tbaa !176
  %42 = call ptr @ThumbnailImage(ptr noundef %0, i64 noundef %40, i64 noundef %41, ptr noundef %2) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %354, label %44

44:                                               ; preds = %30
  %45 = call ptr @SetImageProgressMonitor(ptr noundef %42, ptr noundef null, ptr noundef null) #11
  %46 = call i32 @SetImageProperty(ptr noundef %42, ptr noundef nonnull @.str.18, ptr noundef nonnull @DefaultTileLabel) #11
  %47 = icmp eq i64 %34, 4
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 14
  %50 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.19, ptr noundef nonnull %49, ptr noundef %2) #11
  call void @AppendImageToList(ptr noundef nonnull %7, ptr noundef %42) #11
  br label %343

51:                                               ; preds = %44
  switch i32 %1, label %101 [
    i32 1, label %54
    i32 2, label %58
    i32 3, label %63
    i32 4, label %77
    i32 5, label %85
    i32 6, label %93
    i32 29, label %271
    i32 8, label %108
    i32 9, label %122
    i32 10, label %136
    i32 11, label %144
    i32 12, label %52
    i32 13, label %169
    i32 14, label %173
    i32 15, label %193
    i32 16, label %196
    i32 17, label %199
    i32 18, label %207
    i32 19, label %210
    i32 20, label %214
    i32 21, label %222
    i32 22, label %226
    i32 23, label %244
    i32 24, label %251
    i32 25, label %255
    i32 26, label %259
    i32 27, label %265
    i32 28, label %268
  ]

52:                                               ; preds = %51
  %53 = icmp ugt i64 %34, 1
  br i1 %53, label %152, label %161

54:                                               ; preds = %51
  %55 = fadd double %32, 4.500000e+01
  %56 = call ptr @RotateImage(ptr noundef %42, double noundef %55, ptr noundef %2) #11
  %57 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.20, double noundef %55) #11
  br label %318

58:                                               ; preds = %51
  %59 = fadd double %32, 5.000000e+00
  %60 = call ptr @ShearImage(ptr noundef %42, double noundef %59, double noundef %59, ptr noundef %2) #11
  %61 = fmul double %59, 2.000000e+00
  %62 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.21, double noundef %59, double noundef %61) #11
  br label %318

63:                                               ; preds = %51
  %64 = add nuw nsw i64 %34, 1
  %65 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %66 = load i64, ptr %65, align 8, !tbaa !53
  %67 = mul i64 %66, %64
  %68 = sdiv i64 %67, 9
  %69 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 8
  %70 = load i64, ptr %69, align 8, !tbaa !54
  %71 = mul i64 %70, %64
  %72 = sdiv i64 %71, 9
  %73 = call ptr @RollImage(ptr noundef %42, i64 noundef %68, i64 noundef %72, ptr noundef %2) #11
  %74 = sitofp i64 %68 to double
  %75 = sitofp i64 %72 to double
  %76 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.22, double noundef %74, double noundef %75) #11
  br label %318

77:                                               ; preds = %51
  %78 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %318, label %80

80:                                               ; preds = %77
  %81 = fmul double %36, 2.000000e+00
  %82 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.23, double noundef %81) #11
  %83 = call i32 @ModulateImage(ptr noundef nonnull %78, ptr noundef nonnull %5) #11
  %84 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %5) #11
  br label %318

85:                                               ; preds = %51
  %86 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %87 = icmp eq ptr %86, null
  br i1 %87, label %318, label %88

88:                                               ; preds = %85
  %89 = fmul double %36, 2.000000e+00
  %90 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.25, double noundef %89) #11
  %91 = call i32 @ModulateImage(ptr noundef nonnull %86, ptr noundef nonnull %5) #11
  %92 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %5) #11
  br label %318

93:                                               ; preds = %51
  %94 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %318, label %96

96:                                               ; preds = %93
  %97 = fmul double %36, 2.000000e+00
  %98 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.26, double noundef %97) #11
  %99 = call i32 @ModulateImage(ptr noundef nonnull %94, ptr noundef nonnull %5) #11
  %100 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %5) #11
  br label %318

101:                                              ; preds = %51
  %102 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %318, label %104

104:                                              ; preds = %101
  %105 = fadd double %35, 0x3FD99999A0000000
  %106 = call i32 @GammaImageChannel(ptr noundef nonnull %102, i32 noundef 134217719, double noundef %105) #11
  %107 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.27, double noundef %105) #11
  br label %318

108:                                              ; preds = %51
  %109 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %110 = icmp ne ptr %109, null
  %111 = icmp ne i64 %34, 0
  %112 = and i1 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %108, %113
  %114 = phi i64 [ %116, %113 ], [ 0, %108 ]
  %115 = call i32 @ContrastImage(ptr noundef nonnull %109, i32 noundef 1) #11
  %116 = add nuw nsw i64 %114, 1
  %117 = icmp eq i64 %116, %34
  br i1 %117, label %118, label %113, !llvm.loop !177

118:                                              ; preds = %113, %108
  %119 = sitofp i64 %34 to double
  %120 = fadd double %119, 1.000000e+00
  %121 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.28, double noundef %120) #11
  br label %318

122:                                              ; preds = %51
  %123 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %124 = icmp eq ptr %123, null
  br i1 %124, label %318, label %125

125:                                              ; preds = %122
  %126 = icmp eq i64 %34, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %125, %127
  %128 = phi i64 [ %130, %127 ], [ 0, %125 ]
  %129 = call i32 @ContrastImage(ptr noundef nonnull %123, i32 noundef 0) #11
  %130 = add nuw nsw i64 %128, 1
  %131 = icmp eq i64 %130, %34
  br i1 %131, label %132, label %127, !llvm.loop !178

132:                                              ; preds = %127, %125
  %133 = sitofp i64 %34 to double
  %134 = fadd double %133, 1.000000e+00
  %135 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %134) #11
  br label %318

136:                                              ; preds = %51
  %137 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %138 = icmp eq ptr %137, null
  br i1 %138, label %318, label %139

139:                                              ; preds = %136
  %140 = shl i64 %33, 1
  store i64 %140, ptr %8, align 8, !tbaa !179
  store i32 2, ptr %24, align 4, !tbaa !181
  %141 = call i32 @QuantizeImage(ptr noundef nonnull %8, ptr noundef nonnull %137) #11
  %142 = uitofp i64 %140 to double
  %143 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.30, double noundef %142) #11
  br label %318

144:                                              ; preds = %51
  %145 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %146 = icmp eq ptr %145, null
  br i1 %146, label %318, label %147

147:                                              ; preds = %144
  %148 = shl i64 %33, 1
  store i64 %148, ptr %8, align 8, !tbaa !179
  %149 = call i32 @QuantizeImage(ptr noundef nonnull %8, ptr noundef nonnull %145) #11
  %150 = uitofp i64 %148 to double
  %151 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.31, double noundef %150) #11
  br label %318

152:                                              ; preds = %52, %157
  %153 = phi i64 [ %159, %157 ], [ 0, %52 ]
  %154 = phi ptr [ %155, %157 ], [ %42, %52 ]
  %155 = call ptr @DespeckleImage(ptr noundef %154, ptr noundef %2)
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = call ptr @DestroyImage(ptr noundef %154) #11
  %159 = add nuw nsw i64 %153, 1
  %160 = icmp eq i64 %159, %31
  br i1 %160, label %161, label %152, !llvm.loop !182

161:                                              ; preds = %157, %152, %52
  %162 = phi ptr [ %42, %52 ], [ %155, %157 ], [ %154, %152 ]
  %163 = call ptr @DespeckleImage(ptr noundef %162, ptr noundef %2)
  %164 = icmp eq ptr %163, null
  br i1 %164, label %318, label %165

165:                                              ; preds = %161
  %166 = sitofp i64 %34 to double
  %167 = fadd double %166, 1.000000e+00
  %168 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.32, double noundef %167) #11
  br label %318

169:                                              ; preds = %51
  %170 = fptoui double %37 to i64
  %171 = call ptr @StatisticImage(ptr noundef %42, i32 noundef 7, i64 noundef %170, i64 noundef %170, ptr noundef %2) #11
  %172 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.33, double noundef %37) #11
  br label %318

173:                                              ; preds = %51
  %174 = trunc i64 %34 to i32
  switch i32 %174, label %187 [
    i32 0, label %175
    i32 1, label %177
    i32 2, label %179
    i32 3, label %181
    i32 4, label %183
    i32 5, label %185
  ]

175:                                              ; preds = %173
  %176 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.34, i64 noundef 4096) #11
  br label %190

177:                                              ; preds = %173
  %178 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.35, i64 noundef 4096) #11
  br label %190

179:                                              ; preds = %173
  %180 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.36, i64 noundef 4096) #11
  br label %190

181:                                              ; preds = %173
  %182 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.37, i64 noundef 4096) #11
  br label %190

183:                                              ; preds = %173
  %184 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.38, i64 noundef 4096) #11
  br label %190

185:                                              ; preds = %173
  %186 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.39, i64 noundef 4096) #11
  br label %190

187:                                              ; preds = %173
  %188 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 55
  %189 = call i64 @CopyMagickString(ptr noundef nonnull %188, ptr noundef nonnull @.str.40, i64 noundef 4096) #11
  br label %190

190:                                              ; preds = %187, %185, %183, %181, %179, %177, %175
  %191 = call ptr @StatisticImage(ptr noundef %42, i32 noundef 7, i64 noundef %34, i64 noundef %34, ptr noundef %2) #11
  %192 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.41, ptr noundef nonnull %5) #11
  br label %318

193:                                              ; preds = %51
  %194 = call ptr @SharpenImageChannel(ptr noundef %42, i32 noundef 134217719, double noundef %37, double noundef %39, ptr noundef %2)
  %195 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.42, double noundef %37, double noundef %39) #11
  br label %318

196:                                              ; preds = %51
  %197 = call ptr @BlurImageChannel(ptr noundef %42, i32 noundef 134217719, double noundef %37, double noundef %39, ptr noundef %2)
  %198 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.43, double noundef %37, double noundef %39) #11
  br label %318

199:                                              ; preds = %51
  %200 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %201 = icmp eq ptr %200, null
  br i1 %201, label %318, label %202

202:                                              ; preds = %199
  %203 = fmul double %36, 6.553600e+04
  %204 = fdiv double %203, 1.000000e+02
  %205 = call i32 @BilevelImage(ptr noundef %42, double noundef %204) #11
  %206 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.44, double noundef %204) #11
  br label %318

207:                                              ; preds = %51
  %208 = call ptr @EdgeImage(ptr noundef %42, double noundef %37, ptr noundef %2)
  %209 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %37) #11
  br label %318

210:                                              ; preds = %51
  %211 = call ptr @SpreadImage(ptr noundef %42, double noundef %37, ptr noundef %2)
  %212 = fadd double %37, 5.000000e-01
  %213 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.46, double noundef %212) #11
  br label %318

214:                                              ; preds = %51
  %215 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %216 = icmp eq ptr %215, null
  br i1 %216, label %318, label %217

217:                                              ; preds = %214
  %218 = fmul double %36, 6.553500e+04
  %219 = fdiv double %218, 1.000000e+02
  %220 = call i32 @SolarizeImage(ptr noundef nonnull %215, double noundef %219) #11
  %221 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.47, double noundef %219) #11
  br label %318

222:                                              ; preds = %51
  %223 = fadd double %32, 1.000000e+01
  %224 = call ptr @ShadeImage(ptr noundef %42, i32 noundef 1, double noundef %223, double noundef %223, ptr noundef %2)
  %225 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.48, double noundef %223, double noundef %223) #11
  br label %318

226:                                              ; preds = %51
  %227 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %228 = icmp eq ptr %227, null
  br i1 %228, label %318, label %229

229:                                              ; preds = %226
  %230 = shl nuw nsw i64 %34, 1
  %231 = add nuw nsw i64 %230, 2
  store i64 %231, ptr %9, align 8, !tbaa !175
  store i64 %231, ptr %21, align 8, !tbaa !176
  %232 = add nsw i64 %34, -1
  %233 = sdiv i64 %232, 2
  store i64 %233, ptr %19, align 8, !tbaa !183
  store i64 %233, ptr %20, align 8, !tbaa !184
  %234 = call i32 @RaiseImage(ptr noundef nonnull %227, ptr noundef nonnull %9, i32 noundef 1) #11
  %235 = load i64, ptr %9, align 8, !tbaa !175
  %236 = uitofp i64 %235 to double
  %237 = load i64, ptr %21, align 8, !tbaa !176
  %238 = uitofp i64 %237 to double
  %239 = load i64, ptr %19, align 8, !tbaa !183
  %240 = sitofp i64 %239 to double
  %241 = load i64, ptr %20, align 8, !tbaa !184
  %242 = sitofp i64 %241 to double
  %243 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.49, double noundef %236, double noundef %238, double noundef %240, double noundef %242) #11
  br label %318

244:                                              ; preds = %51
  %245 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %246 = icmp eq ptr %245, null
  br i1 %246, label %318, label %247

247:                                              ; preds = %244
  %248 = fadd double %38, 0x3FD99999A0000000
  %249 = call i32 @SegmentImage(ptr noundef nonnull %245, i32 noundef 13, i32 noundef 0, double noundef %248, double noundef %248) #11
  %250 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.50, double noundef %248, double noundef %248) #11
  br label %318

251:                                              ; preds = %51
  %252 = call ptr @SwirlImage(ptr noundef %42, double noundef %32, ptr noundef %2) #11
  %253 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.51, double noundef %32) #11
  %254 = fadd double %32, 4.500000e+01
  br label %318

255:                                              ; preds = %51
  %256 = fadd double %32, 0x3FB99999A0000000
  %257 = call ptr @ImplodeImage(ptr noundef %42, double noundef %256, ptr noundef %2) #11
  %258 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.52, double noundef %256) #11
  br label %318

259:                                              ; preds = %51
  %260 = fadd double %32, 5.000000e+00
  %261 = fmul double %260, 5.000000e-01
  %262 = fmul double %260, 2.000000e+00
  %263 = call ptr @WaveImage(ptr noundef %42, double noundef %261, double noundef %262, ptr noundef %2) #11
  %264 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.53, double noundef %261, double noundef %262) #11
  br label %318

265:                                              ; preds = %51
  %266 = call ptr @OilPaintImage(ptr noundef %42, double noundef %37, ptr noundef %2) #11
  %267 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.54, double noundef %37) #11
  br label %318

268:                                              ; preds = %51
  %269 = call ptr @CharcoalImage(ptr noundef %42, double noundef %37, double noundef %39, ptr noundef %2) #11
  %270 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.55, double noundef %37, double noundef %39) #11
  br label %318

271:                                              ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #11
  %272 = call ptr @CloneImage(ptr noundef %42, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %273 = icmp eq ptr %272, null
  br i1 %273, label %316, label %274

274:                                              ; preds = %271
  %275 = fptoui double %36 to i64
  store i64 %275, ptr %25, align 8, !tbaa !185
  %276 = uitofp i64 %275 to double
  %277 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.56, double noundef %276) #11
  %278 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %10) #11
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %282, label %280

280:                                              ; preds = %274
  %281 = call i32 @close(i32 noundef %278) #11
  br label %282

282:                                              ; preds = %280, %274
  %283 = getelementptr inbounds %struct._Image, ptr %272, i64 0, i32 53
  %284 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %283, i64 noundef 4096, ptr noundef nonnull @.str.57, ptr noundef nonnull %10) #11
  %285 = call i32 @WriteImage(ptr noundef %18, ptr noundef nonnull %272) #11
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %282
  %288 = call i64 @CopyMagickString(ptr noundef nonnull %26, ptr noundef nonnull %283, i64 noundef 4096) #11
  %289 = call ptr @ReadImage(ptr noundef %18, ptr noundef %2) #11
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = call ptr @DestroyImage(ptr noundef nonnull %272) #11
  br label %293

293:                                              ; preds = %287, %291, %282
  %294 = phi ptr [ %272, %282 ], [ %289, %291 ], [ %272, %287 ]
  %295 = getelementptr inbounds %struct._Image, ptr %294, i64 0, i32 53
  %296 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %295) #11
  %297 = call i64 @GetBlobSize(ptr noundef nonnull %294) #11
  %298 = icmp ugt i64 %297, 1048575
  %299 = call i64 @GetBlobSize(ptr noundef nonnull %294) #11
  br i1 %298, label %300, label %305

300:                                              ; preds = %293
  %301 = sitofp i64 %299 to double
  %302 = fmul double %301, 0x3F50000000000000
  %303 = fmul double %302, 0x3F50000000000000
  %304 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.58, ptr noundef nonnull %5, double noundef %303) #11
  br label %316

305:                                              ; preds = %293
  %306 = icmp ugt i64 %299, 1023
  br i1 %306, label %307, label %312

307:                                              ; preds = %305
  %308 = call i64 @GetBlobSize(ptr noundef nonnull %294) #11
  %309 = sitofp i64 %308 to double
  %310 = fmul double %309, 0x3F50000000000000
  %311 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.59, ptr noundef nonnull %5, double noundef %310) #11
  br label %316

312:                                              ; preds = %305
  %313 = call i64 @GetBlobSize(ptr noundef %42) #11
  %314 = sitofp i64 %313 to double
  %315 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.60, ptr noundef nonnull %5, double noundef %314) #11
  br label %316

316:                                              ; preds = %300, %312, %307, %271
  %317 = phi ptr [ null, %271 ], [ %294, %307 ], [ %294, %312 ], [ %294, %300 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #11
  br label %318

318:                                              ; preds = %244, %226, %214, %199, %161, %144, %136, %122, %101, %93, %85, %77, %316, %268, %265, %259, %255, %251, %247, %229, %222, %217, %210, %207, %202, %196, %193, %190, %169, %165, %147, %139, %132, %118, %104, %96, %88, %80, %63, %58, %54
  %319 = phi double [ %38, %101 ], [ %38, %104 ], [ %38, %268 ], [ %38, %265 ], [ %38, %259 ], [ %38, %255 ], [ %38, %251 ], [ %38, %244 ], [ %248, %247 ], [ %38, %226 ], [ %38, %229 ], [ %38, %222 ], [ %38, %214 ], [ %38, %217 ], [ %38, %210 ], [ %38, %207 ], [ %38, %199 ], [ %38, %202 ], [ %38, %196 ], [ %38, %193 ], [ %38, %190 ], [ %38, %169 ], [ %38, %161 ], [ %38, %165 ], [ %38, %144 ], [ %38, %147 ], [ %38, %136 ], [ %38, %139 ], [ %38, %122 ], [ %38, %132 ], [ %38, %118 ], [ %38, %316 ], [ %38, %93 ], [ %38, %96 ], [ %38, %85 ], [ %38, %88 ], [ %38, %77 ], [ %38, %80 ], [ %38, %63 ], [ %38, %58 ], [ %38, %54 ]
  %320 = phi ptr [ null, %101 ], [ %102, %104 ], [ %269, %268 ], [ %266, %265 ], [ %263, %259 ], [ %257, %255 ], [ %252, %251 ], [ null, %244 ], [ %245, %247 ], [ null, %226 ], [ %227, %229 ], [ %224, %222 ], [ null, %214 ], [ %215, %217 ], [ %211, %210 ], [ %208, %207 ], [ null, %199 ], [ %200, %202 ], [ %197, %196 ], [ %194, %193 ], [ %191, %190 ], [ %171, %169 ], [ null, %161 ], [ %163, %165 ], [ null, %144 ], [ %145, %147 ], [ null, %136 ], [ %137, %139 ], [ null, %122 ], [ %123, %132 ], [ %109, %118 ], [ %317, %316 ], [ null, %93 ], [ %94, %96 ], [ null, %85 ], [ %86, %88 ], [ null, %77 ], [ %78, %80 ], [ %73, %63 ], [ %60, %58 ], [ %56, %54 ]
  %321 = phi ptr [ %42, %101 ], [ %42, %104 ], [ %42, %268 ], [ %42, %265 ], [ %42, %259 ], [ %42, %255 ], [ %42, %251 ], [ %42, %244 ], [ %42, %247 ], [ %42, %226 ], [ %42, %229 ], [ %42, %222 ], [ %42, %214 ], [ %42, %217 ], [ %42, %210 ], [ %42, %207 ], [ %42, %199 ], [ %42, %202 ], [ %42, %196 ], [ %42, %193 ], [ %42, %190 ], [ %42, %169 ], [ %162, %161 ], [ %162, %165 ], [ %42, %144 ], [ %42, %147 ], [ %42, %136 ], [ %42, %139 ], [ %42, %122 ], [ %42, %132 ], [ %42, %118 ], [ %42, %316 ], [ %42, %93 ], [ %42, %96 ], [ %42, %85 ], [ %42, %88 ], [ %42, %77 ], [ %42, %80 ], [ %42, %63 ], [ %42, %58 ], [ %42, %54 ]
  %322 = phi double [ %35, %101 ], [ %105, %104 ], [ %35, %268 ], [ %35, %265 ], [ %35, %259 ], [ %35, %255 ], [ %35, %251 ], [ %35, %244 ], [ %35, %247 ], [ %35, %226 ], [ %35, %229 ], [ %35, %222 ], [ %35, %214 ], [ %35, %217 ], [ %35, %210 ], [ %35, %207 ], [ %35, %199 ], [ %35, %202 ], [ %35, %196 ], [ %35, %193 ], [ %35, %190 ], [ %35, %169 ], [ %35, %161 ], [ %35, %165 ], [ %35, %144 ], [ %35, %147 ], [ %35, %136 ], [ %35, %139 ], [ %35, %122 ], [ %35, %132 ], [ %35, %118 ], [ %35, %316 ], [ %35, %93 ], [ %35, %96 ], [ %35, %85 ], [ %35, %88 ], [ %35, %77 ], [ %35, %80 ], [ %35, %63 ], [ %35, %58 ], [ %35, %54 ]
  %323 = phi i64 [ %33, %101 ], [ %33, %104 ], [ %33, %268 ], [ %33, %265 ], [ %33, %259 ], [ %33, %255 ], [ %33, %251 ], [ %33, %244 ], [ %33, %247 ], [ %33, %226 ], [ %33, %229 ], [ %33, %222 ], [ %33, %214 ], [ %33, %217 ], [ %33, %210 ], [ %33, %207 ], [ %33, %199 ], [ %33, %202 ], [ %33, %196 ], [ %33, %193 ], [ %33, %190 ], [ %33, %169 ], [ %33, %161 ], [ %33, %165 ], [ %33, %144 ], [ %148, %147 ], [ %33, %136 ], [ %140, %139 ], [ %33, %122 ], [ %33, %132 ], [ %33, %118 ], [ %33, %316 ], [ %33, %93 ], [ %33, %96 ], [ %33, %85 ], [ %33, %88 ], [ %33, %77 ], [ %33, %80 ], [ %33, %63 ], [ %33, %58 ], [ %33, %54 ]
  %324 = phi double [ %32, %101 ], [ %32, %104 ], [ %32, %268 ], [ %32, %265 ], [ %260, %259 ], [ %256, %255 ], [ %254, %251 ], [ %32, %244 ], [ %32, %247 ], [ %32, %226 ], [ %32, %229 ], [ %223, %222 ], [ %32, %214 ], [ %32, %217 ], [ %32, %210 ], [ %32, %207 ], [ %32, %199 ], [ %32, %202 ], [ %32, %196 ], [ %32, %193 ], [ %32, %190 ], [ %32, %169 ], [ %32, %161 ], [ %32, %165 ], [ %32, %144 ], [ %32, %147 ], [ %32, %136 ], [ %32, %139 ], [ %32, %122 ], [ %32, %132 ], [ %32, %118 ], [ %32, %316 ], [ %32, %93 ], [ %32, %96 ], [ %32, %85 ], [ %32, %88 ], [ %32, %77 ], [ %32, %80 ], [ %32, %63 ], [ %59, %58 ], [ %55, %54 ]
  %325 = call ptr @DestroyImage(ptr noundef %321) #11
  %326 = icmp eq ptr %320, null
  br i1 %326, label %354, label %327

327:                                              ; preds = %318
  %328 = fadd double %39, 2.500000e-01
  %329 = fadd double %37, 5.000000e-01
  %330 = fadd double %36, 1.250000e+01
  %331 = call i32 @DeleteImageProperty(ptr noundef nonnull %320, ptr noundef nonnull @.str.18) #11
  %332 = call i32 @SetImageProperty(ptr noundef nonnull %320, ptr noundef nonnull @.str.18, ptr noundef nonnull %6) #11
  call void @AppendImageToList(ptr noundef nonnull %7, ptr noundef nonnull %320) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  %333 = load ptr, ptr %27, align 8, !tbaa !81
  %334 = icmp eq ptr %333, null
  br i1 %334, label %340, label %335

335:                                              ; preds = %327
  %336 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.61, ptr noundef nonnull %28) #11
  %337 = load ptr, ptr %27, align 8, !tbaa !81
  %338 = load ptr, ptr %29, align 8, !tbaa !82
  %339 = call i32 %337(ptr noundef nonnull %4, i64 noundef %34, i64 noundef 9, ptr noundef %338) #11
  br label %340

340:                                              ; preds = %327, %335
  %341 = phi i32 [ %339, %335 ], [ 1, %327 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %354, label %343

343:                                              ; preds = %340, %48
  %344 = phi double [ %39, %48 ], [ %328, %340 ]
  %345 = phi double [ %38, %48 ], [ %319, %340 ]
  %346 = phi double [ %37, %48 ], [ %329, %340 ]
  %347 = phi double [ %36, %48 ], [ %330, %340 ]
  %348 = phi double [ %35, %48 ], [ %322, %340 ]
  %349 = phi i64 [ %33, %48 ], [ %323, %340 ]
  %350 = phi double [ %32, %48 ], [ %324, %340 ]
  %351 = add nuw nsw i64 %34, 1
  %352 = add nsw i64 %31, 1
  %353 = icmp eq i64 %351, 9
  br i1 %353, label %354, label %30, !llvm.loop !187

354:                                              ; preds = %340, %318, %30, %343
  %355 = load ptr, ptr %7, align 8, !tbaa !55
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = call ptr @DestroyImageInfo(ptr noundef %18) #11
  br label %393

359:                                              ; preds = %354
  %360 = call ptr @CloneMontageInfo(ptr noundef %18, ptr noundef null) #11
  %361 = getelementptr inbounds %struct._MontageInfo, ptr %360, i64 0, i32 15
  %362 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %363 = call i64 @CopyMagickString(ptr noundef nonnull %361, ptr noundef nonnull %362, i64 noundef 4096) #11
  %364 = getelementptr inbounds %struct._MontageInfo, ptr %360, i64 0, i32 8
  store i32 1, ptr %364, align 8, !tbaa !188
  %365 = getelementptr inbounds %struct._MontageInfo, ptr %360, i64 0, i32 1
  %366 = call ptr @CloneString(ptr noundef nonnull %365, ptr noundef nonnull @.str.62) #11
  %367 = call ptr @CloneString(ptr noundef %360, ptr noundef nonnull @.str.17) #11
  %368 = getelementptr inbounds %struct._MontageInfo, ptr %360, i64 0, i32 3
  %369 = call ptr @CloneString(ptr noundef nonnull %368, ptr noundef nonnull @DefaultTileFrame) #11
  %370 = load ptr, ptr %7, align 8, !tbaa !55
  %371 = call ptr @MontageImages(ptr noundef %370, ptr noundef %360, ptr noundef %2) #11
  %372 = call ptr @DestroyMontageInfo(ptr noundef %360) #11
  %373 = load ptr, ptr %7, align 8, !tbaa !55
  %374 = call ptr @DestroyImageList(ptr noundef %373) #11
  store ptr %374, ptr %7, align 8, !tbaa !55
  %375 = icmp eq ptr %371, null
  br i1 %375, label %376, label %378

376:                                              ; preds = %359
  %377 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2718, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %362) #11
  br label %393

378:                                              ; preds = %359
  %379 = getelementptr inbounds %struct._Image, ptr %371, i64 0, i32 20
  %380 = load ptr, ptr %379, align 8, !tbaa !190
  %381 = icmp eq ptr %380, null
  br i1 %381, label %391, label %382

382:                                              ; preds = %378
  %383 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %380) #11
  store ptr %383, ptr %379, align 8, !tbaa !190
  %384 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %385 = load ptr, ptr %384, align 8, !tbaa !191
  %386 = icmp eq ptr %385, null
  br i1 %386, label %391, label %387

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct._Image, ptr %371, i64 0, i32 21
  %389 = load ptr, ptr %388, align 8, !tbaa !191
  %390 = call ptr @RelinquishMagickMemory(ptr noundef %389) #11
  store ptr %390, ptr %388, align 8, !tbaa !191
  br label %391

391:                                              ; preds = %382, %387, %378
  %392 = call ptr @DestroyImageInfo(ptr noundef %18) #11
  br label %393

393:                                              ; preds = %391, %376, %357
  %394 = phi ptr [ null, %357 ], [ null, %376 ], [ %371, %391 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  ret ptr %394
}

declare ptr @AcquireImageInfo() local_unnamed_addr #2

declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ParseMetaGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @NewImageList() local_unnamed_addr #2

declare void @GetQuantizeInfo(ptr noundef) local_unnamed_addr #2

declare ptr @ThumbnailImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ShearImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RollImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ModulateImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GammaImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare i32 @ContrastImage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @StatisticImage(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @SharpenImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @SharpenImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3)
  ret ptr %5
}

declare i32 @BilevelImage(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @SpreadImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3912, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !54
  %18 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %15, i64 noundef %17, i32 noundef 1, ptr noundef %2) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %214, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %18, i32 noundef 1) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %24) #11
  %25 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #11
  br label %214

26:                                               ; preds = %20
  call void @GetMagickPixelPacket(ptr noundef nonnull %18, ptr noundef nonnull %5) #11
  %27 = call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef 5.000000e-01) #11
  %28 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %29 = call ptr @AcquireAlignedMemory(i64 noundef %28, i64 noundef 8) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %26
  %32 = shl i64 %28, 3
  %33 = call ptr @ResetMagickMemory(ptr noundef nonnull %29, i32 noundef 0, i64 noundef %32) #11
  %34 = icmp sgt i64 %28, 0
  br i1 %34, label %38, label %59

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %59, label %38, !llvm.loop !192

38:                                               ; preds = %31, %35
  %39 = phi i64 [ %36, %35 ], [ 0, %31 ]
  %40 = call ptr @AcquireRandomInfo() #11
  %41 = getelementptr inbounds ptr, ptr %29, i64 %39
  store ptr %40, ptr %41, align 8, !tbaa !55
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %35

43:                                               ; preds = %38
  %44 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43, %53
  %47 = phi i64 [ %54, %53 ], [ 0, %43 ]
  %48 = getelementptr inbounds ptr, ptr %29, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call ptr @DestroyRandomInfo(ptr noundef nonnull %49) #11
  store ptr %52, ptr %48, align 8, !tbaa !55
  br label %53

53:                                               ; preds = %51, %46
  %54 = add nuw nsw i64 %47, 1
  %55 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %46, label %57, !llvm.loop !193

57:                                               ; preds = %53, %43
  %58 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %29) #11
  br label %59

59:                                               ; preds = %35, %31, %26, %57
  %60 = phi ptr [ %58, %57 ], [ null, %26 ], [ %29, %31 ], [ %29, %35 ]
  %61 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #11
  %62 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %18, ptr noundef %2) #11
  %63 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !54
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %193

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %68 = uitofp i64 %27 to double
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %73 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 1
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %78

78:                                               ; preds = %66, %185
  %79 = phi i64 [ 0, %66 ], [ %188, %185 ]
  %80 = phi i64 [ 0, %66 ], [ %187, %185 ]
  %81 = phi i32 [ 1, %66 ], [ %186, %185 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %185, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %67, align 8, !tbaa !53
  %85 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %62, i64 noundef 0, i64 noundef %79, i64 noundef %84, i64 noundef 1, ptr noundef %2) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %185, label %87

87:                                               ; preds = %83
  %88 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %62) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !194
  %89 = load i64, ptr %67, align 8, !tbaa !53
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %170

91:                                               ; preds = %87
  %92 = sitofp i64 %79 to double
  %93 = icmp ne ptr %88, null
  %94 = icmp eq ptr %88, null
  br label %95

95:                                               ; preds = %91, %165
  %96 = phi i64 [ 0, %91 ], [ %167, %165 ]
  %97 = phi ptr [ %85, %91 ], [ %166, %165 ]
  %98 = sitofp i64 %96 to double
  %99 = load ptr, ptr %60, align 8, !tbaa !55
  %100 = call double @GetPseudoRandomValue(ptr noundef %99) #11
  %101 = fadd double %100, -5.000000e-01
  %102 = call double @llvm.fmuladd.f64(double %68, double %101, double %98)
  %103 = load ptr, ptr %60, align 8, !tbaa !55
  %104 = call double @GetPseudoRandomValue(ptr noundef %103) #11
  %105 = fadd double %104, -5.000000e-01
  %106 = call double @llvm.fmuladd.f64(double %68, double %105, double %92)
  %107 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %61, i32 noundef 0, double noundef %102, double noundef %106, ptr noundef nonnull %6, ptr noundef %2) #11
  %108 = getelementptr inbounds i16, ptr %88, i64 %96
  %109 = load float, ptr %69, align 8, !tbaa !64
  %110 = fcmp ugt float %109, 0.000000e+00
  br i1 %110, label %111, label %116

111:                                              ; preds = %95
  %112 = fcmp ult float %109, 6.553500e+04
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = fadd float %109, 5.000000e-01
  %115 = fptoui float %114 to i16
  br label %116

116:                                              ; preds = %113, %111, %95
  %117 = phi i16 [ %115, %113 ], [ 0, %95 ], [ -1, %111 ]
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %117, ptr %118, align 2, !tbaa !74
  %119 = load float, ptr %70, align 4, !tbaa !67
  %120 = fcmp ugt float %119, 0.000000e+00
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = fcmp ult float %119, 6.553500e+04
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = fadd float %119, 5.000000e-01
  %125 = fptoui float %124 to i16
  br label %126

126:                                              ; preds = %123, %121, %116
  %127 = phi i16 [ %125, %123 ], [ 0, %116 ], [ -1, %121 ]
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  store i16 %127, ptr %128, align 2, !tbaa !75
  %129 = load float, ptr %71, align 8, !tbaa !68
  %130 = fcmp ugt float %129, 0.000000e+00
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = fcmp ult float %129, 6.553500e+04
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = fadd float %129, 5.000000e-01
  %135 = fptoui float %134 to i16
  br label %136

136:                                              ; preds = %133, %131, %126
  %137 = phi i16 [ %135, %133 ], [ 0, %126 ], [ -1, %131 ]
  store i16 %137, ptr %97, align 2, !tbaa !76
  %138 = load float, ptr %72, align 4, !tbaa !69
  %139 = fcmp ugt float %138, 0.000000e+00
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = fcmp ult float %138, 6.553500e+04
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = fadd float %138, 5.000000e-01
  %144 = fptoui float %143 to i16
  br label %145

145:                                              ; preds = %142, %140, %136
  %146 = phi i16 [ %144, %142 ], [ 0, %136 ], [ -1, %140 ]
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  store i16 %146, ptr %147, align 2, !tbaa !73
  %148 = load i32, ptr %73, align 4, !tbaa !77
  %149 = icmp eq i32 %148, 12
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load i32, ptr %18, align 8, !tbaa !196
  %152 = icmp eq i32 %151, 2
  %153 = and i1 %93, %152
  br i1 %153, label %155, label %165

154:                                              ; preds = %145
  br i1 %94, label %165, label %155

155:                                              ; preds = %154, %150
  %156 = load float, ptr %74, align 8, !tbaa !70
  %157 = fcmp ugt float %156, 0.000000e+00
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = fcmp ult float %156, 6.553500e+04
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = fadd float %156, 5.000000e-01
  %162 = fptoui float %161 to i16
  br label %163

163:                                              ; preds = %160, %158, %155
  %164 = phi i16 [ %162, %160 ], [ 0, %155 ], [ -1, %158 ]
  store i16 %164, ptr %108, align 2, !tbaa !78
  br label %165

165:                                              ; preds = %150, %154, %163
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  %167 = add nuw nsw i64 %96, 1
  %168 = load i64, ptr %67, align 8, !tbaa !53
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %95, label %170, !llvm.loop !197

170:                                              ; preds = %165, %87
  %171 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef %2) #13
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = load ptr, ptr %75, align 8, !tbaa !81
  %175 = icmp eq ptr %174, null
  br i1 %175, label %185, label %176

176:                                              ; preds = %170
  %177 = add nsw i64 %80, 1
  %178 = load i64, ptr %16, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  %179 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, ptr noundef nonnull %76) #11
  %180 = load ptr, ptr %75, align 8, !tbaa !81
  %181 = load ptr, ptr %77, align 8, !tbaa !82
  %182 = call i32 %180(ptr noundef nonnull %4, i64 noundef %80, i64 noundef %178, ptr noundef %181) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %183, i32 0, i32 %173
  br label %185

185:                                              ; preds = %170, %176, %83, %78
  %186 = phi i32 [ 0, %78 ], [ 0, %83 ], [ %184, %176 ], [ %173, %170 ]
  %187 = phi i64 [ %80, %78 ], [ %80, %83 ], [ %177, %176 ], [ %80, %170 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  %188 = add nuw nsw i64 %79, 1
  %189 = load i64, ptr %63, align 8, !tbaa !54
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %78, label %191, !llvm.loop !198

191:                                              ; preds = %185
  %192 = icmp eq i32 %186, 0
  br label %193

193:                                              ; preds = %191, %59
  %194 = phi i1 [ false, %59 ], [ %192, %191 ]
  %195 = call ptr @DestroyCacheView(ptr noundef %62) #11
  %196 = call ptr @DestroyCacheView(ptr noundef %61) #11
  %197 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %193, %206
  %200 = phi i64 [ %207, %206 ], [ 0, %193 ]
  %201 = getelementptr inbounds ptr, ptr %60, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !55
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %199
  %205 = call ptr @DestroyRandomInfo(ptr noundef nonnull %202) #11
  store ptr %205, ptr %201, align 8, !tbaa !55
  br label %206

206:                                              ; preds = %204, %199
  %207 = add nuw nsw i64 %200, 1
  %208 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %199, label %210, !llvm.loop !193

210:                                              ; preds = %206, %193
  %211 = call ptr @RelinquishAlignedMemory(ptr noundef %60) #11
  br i1 %194, label %212, label %214

212:                                              ; preds = %210
  %213 = call ptr @DestroyImage(ptr noundef nonnull %18) #11
  br label %214

214:                                              ; preds = %210, %212, %13, %23
  %215 = phi ptr [ null, %23 ], [ null, %13 ], [ %213, %212 ], [ %18, %210 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  ret ptr %215
}

declare i32 @SolarizeImage(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ShadeImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3562, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !54
  %19 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %16, i64 noundef %18, i32 noundef 1, ptr noundef %4) #11
  %20 = icmp eq ptr %14, null
  %21 = icmp eq ptr %19, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  br i1 %20, label %26, label %24

24:                                               ; preds = %23
  %25 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #11
  br label %26

26:                                               ; preds = %24, %23
  br i1 %21, label %234, label %27

27:                                               ; preds = %26
  %28 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #11
  br label %234

29:                                               ; preds = %13
  %30 = tail call i32 @SetImageStorageClass(ptr noundef %19, i32 noundef 1) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %33) #11
  %34 = tail call ptr @DestroyImage(ptr noundef %14) #11
  %35 = tail call ptr @DestroyImage(ptr noundef %19) #11
  br label %234

36:                                               ; preds = %29
  %37 = fmul double %2, 0x400921FB54442D18
  %38 = fdiv double %37, 1.800000e+02
  %39 = tail call double @cos(double noundef %38) #11
  %40 = fmul double %39, 6.553500e+04
  %41 = fmul double %3, 0x400921FB54442D18
  %42 = fdiv double %41, 1.800000e+02
  %43 = tail call double @cos(double noundef %42) #11
  %44 = fmul double %40, %43
  %45 = tail call double @sin(double noundef %38) #11
  %46 = fmul double %45, 6.553500e+04
  %47 = tail call double @cos(double noundef %42) #11
  %48 = fmul double %46, %47
  %49 = tail call double @sin(double noundef %42) #11
  %50 = fmul double %49, 6.553500e+04
  %51 = tail call ptr @AcquireVirtualCacheView(ptr noundef %14, ptr noundef %4) #11
  %52 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %19, ptr noundef %4) #11
  %53 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !54
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %230

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %58 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %59 = fptrunc double %50 to float
  %60 = icmp eq i32 %1, 0
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %64

64:                                               ; preds = %56, %217
  %65 = phi i32 [ 1, %56 ], [ %219, %217 ]
  %66 = phi i64 [ 0, %56 ], [ %218, %217 ]
  %67 = phi i64 [ 0, %56 ], [ %220, %217 ]
  %68 = icmp eq i32 %65, 0
  br i1 %68, label %217, label %69

69:                                               ; preds = %64
  %70 = add nsw i64 %67, -1
  %71 = load i64, ptr %57, align 8, !tbaa !53
  %72 = add i64 %71, 2
  %73 = call ptr @GetCacheViewVirtualPixels(ptr noundef %51, i64 noundef -1, i64 noundef %70, i64 noundef %72, i64 noundef 3, ptr noundef %4) #13
  %74 = load i64, ptr %58, align 8, !tbaa !53
  %75 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %52, i64 noundef 0, i64 noundef %67, i64 noundef %74, i64 noundef 1, ptr noundef %4) #13
  %76 = icmp eq ptr %73, null
  %77 = icmp eq ptr %75, null
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %217, label %79

79:                                               ; preds = %69
  %80 = load i64, ptr %57, align 8, !tbaa !53
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %202

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %84 = load i64, ptr %15, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 %84
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 2
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 %84
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 2
  br label %89

89:                                               ; preds = %82, %193
  %90 = phi i64 [ %199, %193 ], [ 0, %82 ]
  %91 = phi ptr [ %198, %193 ], [ %75, %82 ]
  %92 = phi ptr [ %109, %193 ], [ %88, %82 ]
  %93 = phi ptr [ %106, %193 ], [ %86, %82 ]
  %94 = phi ptr [ %103, %193 ], [ %83, %82 ]
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 -1
  %96 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %95) #13
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 -1
  %98 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %97) #13
  %99 = fadd float %96, %98
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 -1
  %101 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %100) #13
  %102 = fadd float %99, %101
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %104 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %103) #13
  %105 = fsub float %102, %104
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 1
  %107 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %106) #13
  %108 = fsub float %105, %107
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %110 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %109) #13
  %111 = fsub float %108, %110
  %112 = fpext float %111 to double
  %113 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %100) #13
  %114 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %92) #13
  %115 = fadd float %113, %114
  %116 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %109) #13
  %117 = fadd float %115, %116
  %118 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %95) #13
  %119 = fsub float %117, %118
  %120 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %94) #13
  %121 = fsub float %119, %120
  %122 = call float @GetPixelIntensity(ptr noundef %14, ptr noundef nonnull %103) #13
  %123 = fsub float %121, %122
  %124 = fpext float %123 to double
  %125 = fcmp oeq float %111, 0.000000e+00
  %126 = fcmp oeq float %123, 0.000000e+00
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %146, label %128

128:                                              ; preds = %89
  %129 = fmul double %48, %124
  %130 = call double @llvm.fmuladd.f64(double %112, double %44, double %129)
  %131 = call double @llvm.fmuladd.f64(double %50, double 1.310700e+05, double %130)
  %132 = fptrunc double %131 to float
  %133 = fpext float %132 to double
  %134 = fcmp ogt double %133, 1.000000e-15
  br i1 %134, label %135, label %146

135:                                              ; preds = %128
  %136 = fmul double %124, %124
  %137 = call double @llvm.fmuladd.f64(double %112, double %112, double %136)
  %138 = fadd double %137, 0x420FFFC000200000
  %139 = fptrunc double %138 to float
  %140 = fpext float %139 to double
  %141 = fcmp ogt double %140, 1.000000e-30
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = call double @sqrt(double noundef %140) #11
  %144 = fdiv double %133, %143
  %145 = fptrunc double %144 to float
  br label %146

146:                                              ; preds = %89, %128, %142, %135
  %147 = phi float [ %145, %142 ], [ 0.000000e+00, %135 ], [ 0.000000e+00, %128 ], [ %59, %89 ]
  br i1 %60, label %152, label %148

148:                                              ; preds = %146
  %149 = fptoui float %147 to i16
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 2
  store i16 %149, ptr %150, align 2, !tbaa !74
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 1
  store i16 %149, ptr %151, align 2, !tbaa !75
  br label %193

152:                                              ; preds = %146
  %153 = fpext float %147 to double
  %154 = fmul double %153, 0x3EF0001000100010
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 2
  %156 = load i16, ptr %155, align 2, !tbaa !74
  %157 = uitofp i16 %156 to double
  %158 = fmul double %154, %157
  %159 = fptrunc double %158 to float
  %160 = fcmp ugt float %159, 0.000000e+00
  br i1 %160, label %161, label %166

161:                                              ; preds = %152
  %162 = fcmp ult float %159, 6.553500e+04
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = fadd float %159, 5.000000e-01
  %165 = fptoui float %164 to i16
  br label %166

166:                                              ; preds = %152, %161, %163
  %167 = phi i16 [ %165, %163 ], [ 0, %152 ], [ -1, %161 ]
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 2
  store i16 %167, ptr %168, align 2, !tbaa !74
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 1
  %170 = load i16, ptr %169, align 2, !tbaa !75
  %171 = uitofp i16 %170 to double
  %172 = fmul double %154, %171
  %173 = fptrunc double %172 to float
  %174 = fcmp ugt float %173, 0.000000e+00
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = fcmp ult float %173, 6.553500e+04
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = fadd float %173, 5.000000e-01
  %179 = fptoui float %178 to i16
  br label %180

180:                                              ; preds = %166, %175, %177
  %181 = phi i16 [ %179, %177 ], [ 0, %166 ], [ -1, %175 ]
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 1
  store i16 %181, ptr %182, align 2, !tbaa !75
  %183 = load i16, ptr %93, align 2, !tbaa !76
  %184 = uitofp i16 %183 to double
  %185 = fmul double %154, %184
  %186 = fptrunc double %185 to float
  %187 = fcmp ugt float %186, 0.000000e+00
  br i1 %187, label %188, label %193

188:                                              ; preds = %180
  %189 = fcmp ult float %186, 6.553500e+04
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = fadd float %186, 5.000000e-01
  %192 = fptoui float %191 to i16
  br label %193

193:                                              ; preds = %190, %188, %180, %148
  %194 = phi i16 [ %149, %148 ], [ %192, %190 ], [ 0, %180 ], [ -1, %188 ]
  store i16 %194, ptr %91, align 2, !tbaa !76
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 3
  %196 = load i16, ptr %195, align 2, !tbaa !73
  %197 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 3
  store i16 %196, ptr %197, align 2, !tbaa !73
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %199 = add nuw nsw i64 %90, 1
  %200 = load i64, ptr %57, align 8, !tbaa !53
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %89, label %202, !llvm.loop !199

202:                                              ; preds = %193, %79
  %203 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %52, ptr noundef %4) #13
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = load ptr, ptr %61, align 8, !tbaa !81
  %207 = icmp eq ptr %206, null
  br i1 %207, label %217, label %208

208:                                              ; preds = %202
  %209 = add nsw i64 %66, 1
  %210 = load i64, ptr %17, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  %211 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66, ptr noundef nonnull %62) #11
  %212 = load ptr, ptr %61, align 8, !tbaa !81
  %213 = load ptr, ptr %63, align 8, !tbaa !82
  %214 = call i32 %212(ptr noundef nonnull %6, i64 noundef %66, i64 noundef %210, ptr noundef %213) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  %215 = icmp eq i32 %214, 0
  %216 = select i1 %215, i32 0, i32 %205
  br label %217

217:                                              ; preds = %202, %208, %69, %64
  %218 = phi i64 [ %66, %64 ], [ %66, %69 ], [ %209, %208 ], [ %66, %202 ]
  %219 = phi i32 [ 0, %64 ], [ 0, %69 ], [ %216, %208 ], [ %205, %202 ]
  %220 = add nuw nsw i64 %67, 1
  %221 = load i64, ptr %53, align 8, !tbaa !54
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %64, label %223, !llvm.loop !200

223:                                              ; preds = %217
  %224 = icmp eq i32 %219, 0
  %225 = call ptr @DestroyCacheView(ptr noundef %52) #11
  %226 = call ptr @DestroyCacheView(ptr noundef %51) #11
  %227 = call ptr @DestroyImage(ptr noundef %14) #11
  br i1 %224, label %228, label %234

228:                                              ; preds = %223
  %229 = call ptr @DestroyImage(ptr noundef %19) #11
  br label %234

230:                                              ; preds = %36
  %231 = tail call ptr @DestroyCacheView(ptr noundef %52) #11
  %232 = tail call ptr @DestroyCacheView(ptr noundef %51) #11
  %233 = tail call ptr @DestroyImage(ptr noundef %14) #11
  br label %234

234:                                              ; preds = %230, %223, %228, %26, %27, %32
  %235 = phi ptr [ null, %32 ], [ null, %27 ], [ null, %26 ], [ %229, %228 ], [ %19, %223 ], [ %19, %230 ]
  ret ptr %235
}

declare i32 @RaiseImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SegmentImage(ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SwirlImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ImplodeImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WaveImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OilPaintImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CharcoalImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #2

declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

declare ptr @CloneMontageInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MontageImages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyMontageInfo(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RotationalBlurImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RotationalBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RotationalBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2822, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %11, %4
  %15 = tail call ptr @AccelerateRadialBlurImage(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %493

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !53
  %20 = add i64 %19, -1
  %21 = uitofp i64 %20 to double
  %22 = fmul double %21, 5.000000e-01
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = add i64 %24, -1
  %26 = uitofp i64 %25 to double
  %27 = fmul double %26, 5.000000e-01
  %28 = tail call double @hypot(double noundef %22, double noundef %27) #11
  %29 = fptrunc double %28 to float
  %30 = fmul double %2, 0x400921FB54442D18
  %31 = fdiv double %30, 1.800000e+02
  %32 = fmul double %31, 4.000000e+00
  %33 = fpext float %29 to double
  %34 = tail call double @sqrt(double noundef %33) #11
  %35 = tail call double @llvm.fmuladd.f64(double %32, double %34, double 2.000000e+00)
  %36 = tail call double @llvm.fabs.f64(double %35)
  %37 = fptoui double %36 to i64
  %38 = add i64 %37, -1
  %39 = uitofp i64 %38 to float
  %40 = fpext float %39 to double
  %41 = fdiv double %31, %40
  %42 = fptrunc double %41 to float
  %43 = tail call ptr @AcquireQuantumMemory(i64 noundef %37, i64 noundef 4) #12
  %44 = tail call ptr @AcquireQuantumMemory(i64 noundef %37, i64 noundef 4) #12
  %45 = icmp eq ptr %43, null
  %46 = icmp eq ptr %44, null
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %17
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %50 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2840, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %49) #11
  br label %493

51:                                               ; preds = %17
  %52 = icmp sgt i64 %37, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %51
  %54 = fmul float %39, %42
  %55 = fmul float %54, -5.000000e-01
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ 0, %53 ], [ %67, %56 ]
  %58 = sitofp i64 %57 to float
  %59 = tail call float @llvm.fmuladd.f32(float %42, float %58, float %55)
  %60 = fpext float %59 to double
  %61 = tail call double @cos(double noundef %60) #11
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds float, ptr %43, i64 %57
  store float %62, ptr %63, align 4, !tbaa !144
  %64 = tail call double @sin(double noundef %60) #11
  %65 = fptrunc double %64 to float
  %66 = getelementptr inbounds float, ptr %44, i64 %57
  store float %65, ptr %66, align 4, !tbaa !144
  %67 = add nuw nsw i64 %57, 1
  %68 = icmp eq i64 %67, %37
  br i1 %68, label %69, label %56, !llvm.loop !201

69:                                               ; preds = %56, %51
  %70 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = tail call ptr @RelinquishMagickMemory(ptr noundef %43) #11
  %74 = tail call ptr @RelinquishMagickMemory(ptr noundef %44) #11
  br label %493

75:                                               ; preds = %69
  %76 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %70, i32 noundef 1) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = tail call ptr @RelinquishMagickMemory(ptr noundef %43) #11
  %80 = tail call ptr @RelinquishMagickMemory(ptr noundef %44) #11
  %81 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %81) #11
  %82 = tail call ptr @DestroyImage(ptr noundef nonnull %70) #11
  br label %493

83:                                               ; preds = %75
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #11
  %84 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #11
  %85 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %70, ptr noundef %3) #11
  %86 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 8
  %87 = load i64, ptr %86, align 8, !tbaa !54
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %488

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 7
  %91 = getelementptr inbounds i8, ptr %6, i64 32
  %92 = getelementptr inbounds i8, ptr %6, i64 36
  %93 = getelementptr inbounds i8, ptr %6, i64 40
  %94 = getelementptr inbounds i8, ptr %6, i64 44
  %95 = getelementptr inbounds i8, ptr %6, i64 48
  %96 = and i32 %1, 8
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %99 = icmp sgt i64 %37, 0
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 3
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %104 = and i32 %1, 1
  %105 = icmp eq i32 %104, 0
  %106 = and i32 %1, 2
  %107 = icmp eq i32 %106, 0
  %108 = and i32 %1, 4
  %109 = icmp eq i32 %108, 0
  %110 = and i32 %1, 32
  %111 = icmp eq i32 %110, 0
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %113 = icmp sgt i64 %37, 0
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 3
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %118 = and i32 %1, 1
  %119 = icmp eq i32 %118, 0
  %120 = and i32 %1, 2
  %121 = icmp eq i32 %120, 0
  %122 = and i32 %1, 4
  %123 = icmp eq i32 %122, 0
  %124 = and i32 %1, 32
  %125 = icmp eq i32 %124, 0
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %127 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %129 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %130

130:                                              ; preds = %89, %474
  %131 = phi i32 [ 1, %89 ], [ %476, %474 ]
  %132 = phi i64 [ 0, %89 ], [ %475, %474 ]
  %133 = phi i64 [ 0, %89 ], [ %477, %474 ]
  %134 = icmp eq i32 %131, 0
  br i1 %134, label %474, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %90, align 8, !tbaa !53
  %137 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %85, i64 noundef 0, i64 noundef %133, i64 noundef %136, i64 noundef 1, ptr noundef %3) #13
  %138 = icmp eq ptr %137, null
  br i1 %138, label %474, label %139

139:                                              ; preds = %135
  %140 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %85) #11
  %141 = load i64, ptr %90, align 8, !tbaa !53
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %459

143:                                              ; preds = %139
  %144 = sitofp i64 %133 to double
  %145 = fsub double %144, %27
  %146 = fneg double %145
  %147 = icmp eq ptr %140, null
  %148 = fneg double %145
  %149 = icmp eq ptr %140, null
  br label %150

150:                                              ; preds = %143, %454
  %151 = phi i64 [ 0, %143 ], [ %456, %454 ]
  %152 = phi ptr [ %137, %143 ], [ %455, %454 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %153 = sitofp i64 %151 to double
  %154 = fsub double %153, %22
  %155 = call double @hypot(double noundef %154, double noundef %145) #11
  %156 = fptrunc double %155 to float
  %157 = fcmp oeq float %156, 0.000000e+00
  br i1 %157, label %165, label %158

158:                                              ; preds = %150
  %159 = fdiv float %29, %156
  %160 = fptoui float %159 to i64
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = icmp ult i64 %160, %37
  %164 = select i1 %163, i64 %160, i64 %38
  br label %165

165:                                              ; preds = %162, %158, %150
  %166 = phi i64 [ 1, %150 ], [ 1, %158 ], [ %164, %162 ]
  %167 = load float, ptr %91, align 8, !tbaa.struct !166
  %168 = load float, ptr %92, align 4, !tbaa.struct !167
  %169 = load float, ptr %93, align 8, !tbaa.struct !168
  %170 = load float, ptr %94, align 4, !tbaa.struct !169
  %171 = load float, ptr %95, align 8, !tbaa.struct !170
  br i1 %97, label %176, label %172

172:                                              ; preds = %165
  %173 = load i32, ptr %98, align 8, !tbaa !72
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  br i1 %99, label %302, label %364

176:                                              ; preds = %172, %165
  br i1 %113, label %177, label %224

177:                                              ; preds = %176, %219
  %178 = phi i64 [ %222, %219 ], [ 0, %176 ]
  %179 = phi float [ %221, %219 ], [ 0.000000e+00, %176 ]
  %180 = phi float [ %202, %219 ], [ %167, %176 ]
  %181 = phi float [ %205, %219 ], [ %168, %176 ]
  %182 = phi float [ %208, %219 ], [ %169, %176 ]
  %183 = phi float [ %211, %219 ], [ %170, %176 ]
  %184 = phi float [ %220, %219 ], [ %171, %176 ]
  %185 = getelementptr inbounds float, ptr %43, i64 %178
  %186 = load float, ptr %185, align 4, !tbaa !144
  %187 = fpext float %186 to double
  %188 = call double @llvm.fmuladd.f64(double %154, double %187, double %22)
  %189 = getelementptr inbounds float, ptr %44, i64 %178
  %190 = load float, ptr %189, align 4, !tbaa !144
  %191 = fpext float %190 to double
  %192 = call double @llvm.fmuladd.f64(double %148, double %191, double %188)
  %193 = fadd double %192, 5.000000e-01
  %194 = fptosi double %193 to i64
  %195 = call double @llvm.fmuladd.f64(double %154, double %191, double %27)
  %196 = call double @llvm.fmuladd.f64(double %145, double %187, double %195)
  %197 = fadd double %196, 5.000000e-01
  %198 = fptosi double %197 to i64
  %199 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %84, i64 noundef %194, i64 noundef %198, ptr noundef nonnull %7, ptr noundef %3) #11
  %200 = load i16, ptr %114, align 2, !tbaa !74
  %201 = uitofp i16 %200 to float
  %202 = fadd float %180, %201
  %203 = load i16, ptr %115, align 2, !tbaa !75
  %204 = uitofp i16 %203 to float
  %205 = fadd float %181, %204
  %206 = load i16, ptr %7, align 2, !tbaa !76
  %207 = uitofp i16 %206 to float
  %208 = fadd float %182, %207
  %209 = load i16, ptr %116, align 2, !tbaa !73
  %210 = uitofp i16 %209 to float
  %211 = fadd float %183, %210
  %212 = load i32, ptr %117, align 4, !tbaa !77
  %213 = icmp eq i32 %212, 12
  br i1 %213, label %214, label %219

214:                                              ; preds = %177
  %215 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %84) #11
  %216 = load i16, ptr %215, align 2, !tbaa !78
  %217 = uitofp i16 %216 to float
  %218 = fadd float %184, %217
  br label %219

219:                                              ; preds = %214, %177
  %220 = phi float [ %218, %214 ], [ %184, %177 ]
  %221 = fadd float %179, 1.000000e+00
  %222 = add nsw i64 %178, %166
  %223 = icmp slt i64 %222, %37
  br i1 %223, label %177, label %224, !llvm.loop !202

224:                                              ; preds = %219, %176
  %225 = phi float [ %171, %176 ], [ %220, %219 ]
  %226 = phi float [ %170, %176 ], [ %211, %219 ]
  %227 = phi float [ %169, %176 ], [ %208, %219 ]
  %228 = phi float [ %168, %176 ], [ %205, %219 ]
  %229 = phi float [ %167, %176 ], [ %202, %219 ]
  %230 = phi float [ 0.000000e+00, %176 ], [ %221, %219 ]
  %231 = fpext float %230 to double
  %232 = fcmp olt float %230, 0.000000e+00
  %233 = select i1 %232, double -1.000000e+00, double 1.000000e+00
  %234 = fmul double %233, %231
  %235 = fcmp ult double %234, 1.000000e-15
  %236 = fdiv double 1.000000e+00, %231
  %237 = fdiv double %233, 1.000000e-15
  %238 = select i1 %235, double %237, double %236
  %239 = fptrunc double %238 to float
  br i1 %119, label %251, label %240

240:                                              ; preds = %224
  %241 = fmul float %229, %239
  %242 = fcmp ugt float %241, 0.000000e+00
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = fcmp ult float %241, 6.553500e+04
  br i1 %244, label %245, label %248

245:                                              ; preds = %243
  %246 = fadd float %241, 5.000000e-01
  %247 = fptoui float %246 to i16
  br label %248

248:                                              ; preds = %240, %243, %245
  %249 = phi i16 [ %247, %245 ], [ 0, %240 ], [ -1, %243 ]
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 2
  store i16 %249, ptr %250, align 2, !tbaa !74
  br label %251

251:                                              ; preds = %248, %224
  br i1 %121, label %263, label %252

252:                                              ; preds = %251
  %253 = fmul float %228, %239
  %254 = fcmp ugt float %253, 0.000000e+00
  br i1 %254, label %255, label %260

255:                                              ; preds = %252
  %256 = fcmp ult float %253, 6.553500e+04
  br i1 %256, label %257, label %260

257:                                              ; preds = %255
  %258 = fadd float %253, 5.000000e-01
  %259 = fptoui float %258 to i16
  br label %260

260:                                              ; preds = %252, %255, %257
  %261 = phi i16 [ %259, %257 ], [ 0, %252 ], [ -1, %255 ]
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 1
  store i16 %261, ptr %262, align 2, !tbaa !75
  br label %263

263:                                              ; preds = %260, %251
  br i1 %123, label %274, label %264

264:                                              ; preds = %263
  %265 = fmul float %227, %239
  %266 = fcmp ugt float %265, 0.000000e+00
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = fcmp ult float %265, 6.553500e+04
  br i1 %268, label %269, label %272

269:                                              ; preds = %267
  %270 = fadd float %265, 5.000000e-01
  %271 = fptoui float %270 to i16
  br label %272

272:                                              ; preds = %264, %267, %269
  %273 = phi i16 [ %271, %269 ], [ 0, %264 ], [ -1, %267 ]
  store i16 %273, ptr %152, align 2, !tbaa !76
  br label %274

274:                                              ; preds = %272, %263
  br i1 %97, label %286, label %275

275:                                              ; preds = %274
  %276 = fmul float %226, %239
  %277 = fcmp ugt float %276, 0.000000e+00
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = fcmp ult float %276, 6.553500e+04
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = fadd float %276, 5.000000e-01
  %282 = fptoui float %281 to i16
  br label %283

283:                                              ; preds = %275, %278, %280
  %284 = phi i16 [ %282, %280 ], [ 0, %275 ], [ -1, %278 ]
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 3
  store i16 %284, ptr %285, align 2, !tbaa !73
  br label %286

286:                                              ; preds = %283, %274
  br i1 %125, label %454, label %287

287:                                              ; preds = %286
  %288 = load i32, ptr %126, align 4, !tbaa !77
  %289 = icmp ne i32 %288, 12
  %290 = select i1 %289, i1 true, i1 %149
  br i1 %290, label %454, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds i16, ptr %140, i64 %151
  %293 = fmul float %225, %239
  %294 = fcmp ugt float %293, 0.000000e+00
  br i1 %294, label %295, label %300

295:                                              ; preds = %291
  %296 = fcmp ult float %293, 6.553500e+04
  br i1 %296, label %297, label %300

297:                                              ; preds = %295
  %298 = fadd float %293, 5.000000e-01
  %299 = fptoui float %298 to i16
  br label %300

300:                                              ; preds = %291, %295, %297
  %301 = phi i16 [ %299, %297 ], [ 0, %291 ], [ -1, %295 ]
  store i16 %301, ptr %292, align 2, !tbaa !78
  br label %454

302:                                              ; preds = %175, %358
  %303 = phi double [ %360, %358 ], [ 0.000000e+00, %175 ]
  %304 = phi i64 [ %362, %358 ], [ 0, %175 ]
  %305 = phi float [ %361, %358 ], [ 0.000000e+00, %175 ]
  %306 = phi float [ %336, %358 ], [ %167, %175 ]
  %307 = phi float [ %341, %358 ], [ %168, %175 ]
  %308 = phi float [ %346, %358 ], [ %169, %175 ]
  %309 = phi float [ %348, %358 ], [ %170, %175 ]
  %310 = phi float [ %359, %358 ], [ %171, %175 ]
  %311 = getelementptr inbounds float, ptr %43, i64 %304
  %312 = load float, ptr %311, align 4, !tbaa !144
  %313 = fpext float %312 to double
  %314 = call double @llvm.fmuladd.f64(double %154, double %313, double %22)
  %315 = getelementptr inbounds float, ptr %44, i64 %304
  %316 = load float, ptr %315, align 4, !tbaa !144
  %317 = fpext float %316 to double
  %318 = call double @llvm.fmuladd.f64(double %146, double %317, double %314)
  %319 = fadd double %318, 5.000000e-01
  %320 = fptosi double %319 to i64
  %321 = call double @llvm.fmuladd.f64(double %154, double %317, double %27)
  %322 = call double @llvm.fmuladd.f64(double %145, double %313, double %321)
  %323 = fadd double %322, 5.000000e-01
  %324 = fptosi double %323 to i64
  %325 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %84, i64 noundef %320, i64 noundef %324, ptr noundef nonnull %7, ptr noundef %3) #11
  %326 = load i16, ptr %100, align 2, !tbaa !73
  %327 = xor i16 %326, -1
  %328 = uitofp i16 %327 to double
  %329 = fmul double %328, 0x3EF0001000100010
  %330 = fptrunc double %329 to float
  %331 = fpext float %330 to double
  %332 = load i16, ptr %101, align 2, !tbaa !74
  %333 = uitofp i16 %332 to double
  %334 = fpext float %306 to double
  %335 = call double @llvm.fmuladd.f64(double %331, double %333, double %334)
  %336 = fptrunc double %335 to float
  %337 = load i16, ptr %102, align 2, !tbaa !75
  %338 = uitofp i16 %337 to double
  %339 = fpext float %307 to double
  %340 = call double @llvm.fmuladd.f64(double %331, double %338, double %339)
  %341 = fptrunc double %340 to float
  %342 = load i16, ptr %7, align 2, !tbaa !76
  %343 = uitofp i16 %342 to double
  %344 = fpext float %308 to double
  %345 = call double @llvm.fmuladd.f64(double %331, double %343, double %344)
  %346 = fptrunc double %345 to float
  %347 = uitofp i16 %326 to float
  %348 = fadd float %309, %347
  %349 = load i32, ptr %103, align 4, !tbaa !77
  %350 = icmp eq i32 %349, 12
  br i1 %350, label %351, label %358

351:                                              ; preds = %302
  %352 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %84) #11
  %353 = load i16, ptr %352, align 2, !tbaa !78
  %354 = uitofp i16 %353 to double
  %355 = fpext float %310 to double
  %356 = call double @llvm.fmuladd.f64(double %331, double %354, double %355)
  %357 = fptrunc double %356 to float
  br label %358

358:                                              ; preds = %351, %302
  %359 = phi float [ %357, %351 ], [ %310, %302 ]
  %360 = fadd double %303, %331
  %361 = fadd float %305, 1.000000e+00
  %362 = add nsw i64 %304, %166
  %363 = icmp slt i64 %362, %37
  br i1 %363, label %302, label %364, !llvm.loop !203

364:                                              ; preds = %358, %175
  %365 = phi float [ %171, %175 ], [ %359, %358 ]
  %366 = phi float [ %170, %175 ], [ %348, %358 ]
  %367 = phi float [ %169, %175 ], [ %346, %358 ]
  %368 = phi float [ %168, %175 ], [ %341, %358 ]
  %369 = phi float [ %167, %175 ], [ %336, %358 ]
  %370 = phi float [ 0.000000e+00, %175 ], [ %361, %358 ]
  %371 = phi double [ 0.000000e+00, %175 ], [ %360, %358 ]
  %372 = fcmp olt double %371, 0.000000e+00
  %373 = select i1 %372, double 0.000000e+00, double %371
  %374 = fcmp ult double %373, 1.000000e-15
  %375 = fdiv double 1.000000e+00, %373
  %376 = select i1 %374, double 0x430C6BF52633FFFF, double %375
  %377 = fpext float %370 to double
  %378 = fcmp olt float %370, 0.000000e+00
  %379 = select i1 %378, double -1.000000e+00, double 1.000000e+00
  %380 = fmul double %379, %377
  %381 = fcmp ult double %380, 1.000000e-15
  %382 = fdiv double 1.000000e+00, %377
  %383 = fdiv double %379, 1.000000e-15
  %384 = select i1 %381, double %383, double %382
  %385 = fptrunc double %384 to float
  br i1 %105, label %399, label %386

386:                                              ; preds = %364
  %387 = fpext float %369 to double
  %388 = fmul double %376, %387
  %389 = fptrunc double %388 to float
  %390 = fcmp ugt float %389, 0.000000e+00
  br i1 %390, label %391, label %396

391:                                              ; preds = %386
  %392 = fcmp ult float %389, 6.553500e+04
  br i1 %392, label %393, label %396

393:                                              ; preds = %391
  %394 = fadd float %389, 5.000000e-01
  %395 = fptoui float %394 to i16
  br label %396

396:                                              ; preds = %386, %391, %393
  %397 = phi i16 [ %395, %393 ], [ 0, %386 ], [ -1, %391 ]
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 2
  store i16 %397, ptr %398, align 2, !tbaa !74
  br label %399

399:                                              ; preds = %396, %364
  br i1 %107, label %413, label %400

400:                                              ; preds = %399
  %401 = fpext float %368 to double
  %402 = fmul double %376, %401
  %403 = fptrunc double %402 to float
  %404 = fcmp ugt float %403, 0.000000e+00
  br i1 %404, label %405, label %410

405:                                              ; preds = %400
  %406 = fcmp ult float %403, 6.553500e+04
  br i1 %406, label %407, label %410

407:                                              ; preds = %405
  %408 = fadd float %403, 5.000000e-01
  %409 = fptoui float %408 to i16
  br label %410

410:                                              ; preds = %400, %405, %407
  %411 = phi i16 [ %409, %407 ], [ 0, %400 ], [ -1, %405 ]
  %412 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 1
  store i16 %411, ptr %412, align 2, !tbaa !75
  br label %413

413:                                              ; preds = %410, %399
  br i1 %109, label %426, label %414

414:                                              ; preds = %413
  %415 = fpext float %367 to double
  %416 = fmul double %376, %415
  %417 = fptrunc double %416 to float
  %418 = fcmp ugt float %417, 0.000000e+00
  br i1 %418, label %419, label %424

419:                                              ; preds = %414
  %420 = fcmp ult float %417, 6.553500e+04
  br i1 %420, label %421, label %424

421:                                              ; preds = %419
  %422 = fadd float %417, 5.000000e-01
  %423 = fptoui float %422 to i16
  br label %424

424:                                              ; preds = %414, %419, %421
  %425 = phi i16 [ %423, %421 ], [ 0, %414 ], [ -1, %419 ]
  store i16 %425, ptr %152, align 2, !tbaa !76
  br label %426

426:                                              ; preds = %413, %424
  %427 = fmul float %366, %385
  %428 = fcmp ugt float %427, 0.000000e+00
  br i1 %428, label %429, label %434

429:                                              ; preds = %426
  %430 = fcmp ult float %427, 6.553500e+04
  br i1 %430, label %431, label %434

431:                                              ; preds = %429
  %432 = fadd float %427, 5.000000e-01
  %433 = fptoui float %432 to i16
  br label %434

434:                                              ; preds = %426, %429, %431
  %435 = phi i16 [ %433, %431 ], [ 0, %426 ], [ -1, %429 ]
  %436 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 3
  store i16 %435, ptr %436, align 2, !tbaa !73
  br i1 %111, label %454, label %437

437:                                              ; preds = %434
  %438 = load i32, ptr %112, align 4, !tbaa !77
  %439 = icmp ne i32 %438, 12
  %440 = select i1 %439, i1 true, i1 %147
  br i1 %440, label %454, label %441

441:                                              ; preds = %437
  %442 = getelementptr inbounds i16, ptr %140, i64 %151
  %443 = fpext float %365 to double
  %444 = fmul double %376, %443
  %445 = fptrunc double %444 to float
  %446 = fcmp ugt float %445, 0.000000e+00
  br i1 %446, label %447, label %452

447:                                              ; preds = %441
  %448 = fcmp ult float %445, 6.553500e+04
  br i1 %448, label %449, label %452

449:                                              ; preds = %447
  %450 = fadd float %445, 5.000000e-01
  %451 = fptoui float %450 to i16
  br label %452

452:                                              ; preds = %441, %447, %449
  %453 = phi i16 [ %451, %449 ], [ 0, %441 ], [ -1, %447 ]
  store i16 %453, ptr %442, align 2, !tbaa !78
  br label %454

454:                                              ; preds = %434, %437, %452, %286, %287, %300
  %455 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %456 = add nuw nsw i64 %151, 1
  %457 = load i64, ptr %90, align 8, !tbaa !53
  %458 = icmp slt i64 %456, %457
  br i1 %458, label %150, label %459, !llvm.loop !204

459:                                              ; preds = %454, %139
  %460 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %85, ptr noundef %3) #13
  %461 = icmp ne i32 %460, 0
  %462 = zext i1 %461 to i32
  %463 = load ptr, ptr %127, align 8, !tbaa !81
  %464 = icmp eq ptr %463, null
  br i1 %464, label %474, label %465

465:                                              ; preds = %459
  %466 = add nsw i64 %132, 1
  %467 = load i64, ptr %23, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  %468 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.16, ptr noundef nonnull %128) #11
  %469 = load ptr, ptr %127, align 8, !tbaa !81
  %470 = load ptr, ptr %129, align 8, !tbaa !82
  %471 = call i32 %469(ptr noundef nonnull %5, i64 noundef %132, i64 noundef %467, ptr noundef %470) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  %472 = icmp eq i32 %471, 0
  %473 = select i1 %472, i32 0, i32 %462
  br label %474

474:                                              ; preds = %459, %465, %135, %130
  %475 = phi i64 [ %132, %130 ], [ %132, %135 ], [ %466, %465 ], [ %132, %459 ]
  %476 = phi i32 [ 0, %130 ], [ 0, %135 ], [ %473, %465 ], [ %462, %459 ]
  %477 = add nuw nsw i64 %133, 1
  %478 = load i64, ptr %86, align 8, !tbaa !54
  %479 = icmp slt i64 %477, %478
  br i1 %479, label %130, label %480, !llvm.loop !205

480:                                              ; preds = %474
  %481 = icmp eq i32 %476, 0
  %482 = call ptr @DestroyCacheView(ptr noundef %85) #11
  %483 = call ptr @DestroyCacheView(ptr noundef %84) #11
  %484 = call ptr @RelinquishMagickMemory(ptr noundef %43) #11
  %485 = call ptr @RelinquishMagickMemory(ptr noundef %44) #11
  br i1 %481, label %486, label %493

486:                                              ; preds = %480
  %487 = call ptr @DestroyImage(ptr noundef nonnull %70) #11
  br label %493

488:                                              ; preds = %83
  %489 = call ptr @DestroyCacheView(ptr noundef %85) #11
  %490 = call ptr @DestroyCacheView(ptr noundef %84) #11
  %491 = call ptr @RelinquishMagickMemory(ptr noundef %43) #11
  %492 = call ptr @RelinquishMagickMemory(ptr noundef %44) #11
  br label %493

493:                                              ; preds = %488, %480, %486, %14, %78, %72, %48
  %494 = phi ptr [ null, %48 ], [ null, %72 ], [ null, %78 ], [ %15, %14 ], [ %487, %486 ], [ %70, %480 ], [ %70, %488 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  ret ptr %494
}

declare ptr @AccelerateRadialBlurImage(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @SelectiveBlurImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @SelectiveBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SelectiveBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3136, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #11
  br label %17

17:                                               ; preds = %14, %6
  %18 = tail call i64 @GetOptimalKernelWidth1D(double noundef %2, double noundef %3) #11
  %19 = shl i64 %18, 3
  %20 = tail call ptr @AcquireAlignedMemory(i64 noundef %18, i64 noundef %19) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3143, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %23) #11
  br label %754

25:                                               ; preds = %17
  %26 = add i64 %18, -1
  %27 = sdiv i64 %26, 2
  %28 = sub nsw i64 0, %27
  %29 = icmp ugt i64 %18, -9223372036854775808
  br i1 %29, label %61, label %30

30:                                               ; preds = %25
  %31 = tail call double @llvm.fabs.f64(double %3)
  %32 = fcmp olt double %31, 1.000000e-15
  %33 = select i1 %32, double 1.000000e-15, double %3
  %34 = fmul double %33, 2.000000e+00
  %35 = fmul double %33, %34
  %36 = fmul double %33, 0x401921FB54442D18
  %37 = fmul double %33, %36
  %38 = tail call i64 @llvm.abs.i64(i64 %27, i1 true)
  %39 = tail call i64 @llvm.abs.i64(i64 %27, i1 true)
  br label %40

40:                                               ; preds = %30, %58
  %41 = phi i64 [ %28, %30 ], [ %59, %58 ]
  %42 = phi i64 [ 0, %30 ], [ %54, %58 ]
  %43 = mul nsw i64 %41, %41
  %44 = sitofp i64 %43 to double
  br label %45

45:                                               ; preds = %40, %45
  %46 = phi i64 [ %28, %40 ], [ %56, %45 ]
  %47 = phi i64 [ %42, %40 ], [ %54, %45 ]
  %48 = sitofp i64 %46 to double
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %44)
  %50 = fneg double %49
  %51 = fdiv double %50, %35
  %52 = tail call double @exp(double noundef %51) #11
  %53 = fdiv double %52, %37
  %54 = add nsw i64 %47, 1
  %55 = getelementptr inbounds double, ptr %20, i64 %47
  store double %53, ptr %55, align 8, !tbaa !56
  %56 = add i64 %46, 1
  %57 = icmp eq i64 %46, %38
  br i1 %57, label %58, label %45, !llvm.loop !206

58:                                               ; preds = %45
  %59 = add i64 %41, 1
  %60 = icmp eq i64 %41, %39
  br i1 %60, label %61, label %40, !llvm.loop !207

61:                                               ; preds = %58, %25
  %62 = load i32, ptr %11, align 8, !tbaa !34
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %65 = uitofp i64 %18 to double
  %66 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3165, ptr noundef nonnull @.str.63, double noundef %65, double noundef %65) #11
  %67 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #11
  store ptr %67, ptr %10, align 8, !tbaa !55
  %68 = icmp sgt i64 %18, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64, %85
  %70 = phi i64 [ %88, %85 ], [ 0, %64 ]
  %71 = phi ptr [ %79, %85 ], [ %20, %64 ]
  %72 = load ptr, ptr %10, align 8, !tbaa !55
  store i8 0, ptr %72, align 1, !tbaa !141
  %73 = sitofp i64 %70 to double
  %74 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %73) #11
  %75 = call i32 @ConcatenateString(ptr noundef nonnull %10, ptr noundef nonnull %9) #11
  br label %76

76:                                               ; preds = %69, %76
  %77 = phi i64 [ %83, %76 ], [ 0, %69 ]
  %78 = phi ptr [ %79, %76 ], [ %71, %69 ]
  %79 = getelementptr inbounds double, ptr %78, i64 1
  %80 = load double, ptr %78, align 8, !tbaa !56
  %81 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.64, double noundef %80) #11
  %82 = call i32 @ConcatenateString(ptr noundef nonnull %10, ptr noundef nonnull %9) #11
  %83 = add nuw nsw i64 %77, 1
  %84 = icmp eq i64 %83, %18
  br i1 %84, label %85, label %76, !llvm.loop !208

85:                                               ; preds = %76
  %86 = load ptr, ptr %10, align 8, !tbaa !55
  %87 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3180, ptr noundef nonnull @.str.2, ptr noundef %86) #11
  %88 = add nuw nsw i64 %70, 1
  %89 = icmp eq i64 %88, %18
  br i1 %89, label %90, label %69, !llvm.loop !209

90:                                               ; preds = %85, %64
  %91 = load ptr, ptr %10, align 8, !tbaa !55
  %92 = call ptr @DestroyString(ptr noundef %91) #11
  store ptr %92, ptr %10, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #11
  br label %93

93:                                               ; preds = %90, %61
  %94 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %20) #11
  br label %754

98:                                               ; preds = %93
  %99 = call i32 @SetImageStorageClass(ptr noundef nonnull %94, i32 noundef 1) #11
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %20) #11
  %103 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %103) #11
  %104 = call ptr @DestroyImage(ptr noundef nonnull %94) #11
  br label %754

105:                                              ; preds = %98
  %106 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #11
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %20) #11
  %110 = call ptr @DestroyImage(ptr noundef nonnull %94) #11
  br label %754

111:                                              ; preds = %105
  %112 = call i32 @TransformImageColorspace(ptr noundef nonnull %106, i32 noundef 2) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct._Image, ptr %106, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %115) #11
  %116 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %20) #11
  %117 = call ptr @DestroyImage(ptr noundef nonnull %94) #11
  %118 = call ptr @DestroyImage(ptr noundef nonnull %106) #11
  br label %754

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %121 = load i64, ptr %120, align 8, !tbaa !53
  %122 = lshr i64 %26, 1
  %123 = add i64 %18, 1
  %124 = add i64 %123, %121
  %125 = mul i64 %124, %122
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %8) #11
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %127 = load double, ptr %126, align 8, !tbaa !63
  %128 = fptrunc double %127 to float
  %129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  store float %128, ptr %129, align 8, !tbaa !64
  %130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  store float %128, ptr %130, align 4, !tbaa !67
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  store float %128, ptr %131, align 8, !tbaa !68
  %132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  store float %128, ptr %132, align 4, !tbaa !69
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  store float %128, ptr %133, align 8, !tbaa !70
  %134 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %5) #11
  %135 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %106, ptr noundef %5) #11
  %136 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %94, ptr noundef %5) #11
  %137 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %138 = load i64, ptr %137, align 8, !tbaa !54
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %745

140:                                              ; preds = %119
  %141 = getelementptr inbounds %struct._Image, ptr %106, i64 0, i32 7
  %142 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 7
  %143 = and i32 %1, 8
  %144 = icmp eq i32 %143, 0
  %145 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %146 = icmp sgt i64 %18, 0
  %147 = and i32 %1, 1
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %1, 2
  %150 = icmp eq i32 %149, 0
  %151 = and i32 %1, 4
  %152 = icmp eq i32 %151, 0
  %153 = icmp sgt i64 %18, 0
  %154 = and i32 %1, 32
  %155 = icmp eq i32 %154, 0
  %156 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %157 = icmp sgt i64 %18, 0
  %158 = icmp sgt i64 %18, 0
  %159 = and i32 %1, 1
  %160 = icmp eq i32 %159, 0
  %161 = and i32 %1, 2
  %162 = icmp eq i32 %161, 0
  %163 = and i32 %1, 4
  %164 = icmp eq i32 %163, 0
  %165 = icmp sgt i64 %18, 0
  %166 = and i32 %1, 32
  %167 = icmp eq i32 %166, 0
  %168 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %169 = icmp sgt i64 %18, 0
  %170 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %171 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %172 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %173 = shl i64 %18, 3
  br label %174

174:                                              ; preds = %140, %727
  %175 = phi i64 [ 0, %140 ], [ %730, %727 ]
  %176 = phi i32 [ 1, %140 ], [ %729, %727 ]
  %177 = phi i64 [ 0, %140 ], [ %728, %727 ]
  %178 = icmp eq i32 %176, 0
  br i1 %178, label %727, label %179

179:                                              ; preds = %174
  %180 = sub nsw i64 %175, %122
  %181 = load i64, ptr %120, align 8, !tbaa !53
  %182 = add i64 %181, %18
  %183 = call ptr @GetCacheViewVirtualPixels(ptr noundef %134, i64 noundef %28, i64 noundef %180, i64 noundef %182, i64 noundef %18, ptr noundef %5) #13
  %184 = load i64, ptr %141, align 8, !tbaa !53
  %185 = add i64 %184, %18
  %186 = call ptr @GetCacheViewVirtualPixels(ptr noundef %135, i64 noundef %28, i64 noundef %180, i64 noundef %185, i64 noundef %18, ptr noundef %5) #13
  %187 = load i64, ptr %142, align 8, !tbaa !53
  %188 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %136, i64 noundef 0, i64 noundef %175, i64 noundef %187, i64 noundef 1, ptr noundef %5) #13
  %189 = icmp eq ptr %183, null
  %190 = icmp eq ptr %186, null
  %191 = select i1 %189, i1 true, i1 %190
  %192 = icmp eq ptr %188, null
  %193 = select i1 %191, i1 true, i1 %192
  br i1 %193, label %727, label %194

194:                                              ; preds = %179
  %195 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %134) #11
  %196 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %136) #11
  %197 = load i64, ptr %120, align 8, !tbaa !53
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %712

199:                                              ; preds = %194
  %200 = icmp eq ptr %195, null
  %201 = icmp eq ptr %196, null
  %202 = icmp eq ptr %195, null
  %203 = icmp eq ptr %196, null
  br label %204

204:                                              ; preds = %199, %705
  %205 = phi i64 [ 0, %199 ], [ %709, %705 ]
  %206 = phi ptr [ %188, %199 ], [ %708, %705 ]
  %207 = phi ptr [ %183, %199 ], [ %706, %705 ]
  %208 = phi ptr [ %186, %199 ], [ %707, %705 ]
  %209 = load float, ptr %129, align 8, !tbaa !64
  %210 = fpext float %209 to double
  %211 = load float, ptr %130, align 4, !tbaa !67
  %212 = fpext float %211 to double
  %213 = load float, ptr %131, align 8, !tbaa !68
  %214 = fpext float %213 to double
  %215 = load float, ptr %132, align 4, !tbaa !69
  %216 = fpext float %215 to double
  %217 = load float, ptr %133, align 8, !tbaa !70
  %218 = fpext float %217 to double
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %207, i64 %125
  %220 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef %219) #13
  br i1 %144, label %225, label %221

221:                                              ; preds = %204
  %222 = load i32, ptr %145, align 8, !tbaa !72
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  br i1 %146, label %461, label %527

225:                                              ; preds = %221, %204
  br i1 %158, label %226, label %279

226:                                              ; preds = %225, %272
  %227 = phi i64 [ %277, %272 ], [ 0, %225 ]
  %228 = phi i64 [ %276, %272 ], [ 0, %225 ]
  %229 = phi ptr [ %273, %272 ], [ %20, %225 ]
  %230 = phi double [ %268, %272 ], [ %210, %225 ]
  %231 = phi double [ %267, %272 ], [ %212, %225 ]
  %232 = phi double [ %266, %272 ], [ %214, %225 ]
  %233 = phi double [ %265, %272 ], [ 0.000000e+00, %225 ]
  %234 = getelementptr %struct._PixelPacket, ptr %208, i64 %228
  br label %235

235:                                              ; preds = %226, %264
  %236 = phi i64 [ 0, %226 ], [ %270, %264 ]
  %237 = phi ptr [ %229, %226 ], [ %269, %264 ]
  %238 = phi double [ %230, %226 ], [ %268, %264 ]
  %239 = phi double [ %231, %226 ], [ %267, %264 ]
  %240 = phi double [ %232, %226 ], [ %266, %264 ]
  %241 = phi double [ %233, %226 ], [ %265, %264 ]
  %242 = getelementptr %struct._PixelPacket, ptr %234, i64 %236
  %243 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %242) #13
  %244 = fsub float %243, %220
  %245 = call float @llvm.fabs.f32(float %244)
  %246 = fpext float %245 to double
  %247 = fcmp olt double %246, %4
  br i1 %247, label %248, label %264

248:                                              ; preds = %235
  %249 = load double, ptr %237, align 8, !tbaa !56
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %207, i64 %236
  %251 = getelementptr inbounds %struct._PixelPacket, ptr %250, i64 %228
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %250, i64 %228, i32 2
  %253 = load i16, ptr %252, align 2, !tbaa !74
  %254 = uitofp i16 %253 to double
  %255 = call double @llvm.fmuladd.f64(double %249, double %254, double %238)
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %250, i64 %228, i32 1
  %257 = load i16, ptr %256, align 2, !tbaa !75
  %258 = uitofp i16 %257 to double
  %259 = call double @llvm.fmuladd.f64(double %249, double %258, double %239)
  %260 = load i16, ptr %251, align 2, !tbaa !76
  %261 = uitofp i16 %260 to double
  %262 = call double @llvm.fmuladd.f64(double %249, double %261, double %240)
  %263 = fadd double %241, %249
  br label %264

264:                                              ; preds = %248, %235
  %265 = phi double [ %263, %248 ], [ %241, %235 ]
  %266 = phi double [ %262, %248 ], [ %240, %235 ]
  %267 = phi double [ %259, %248 ], [ %239, %235 ]
  %268 = phi double [ %255, %248 ], [ %238, %235 ]
  %269 = getelementptr inbounds double, ptr %237, i64 1
  %270 = add nuw nsw i64 %236, 1
  %271 = icmp eq i64 %270, %18
  br i1 %271, label %272, label %235, !llvm.loop !210

272:                                              ; preds = %264
  %273 = getelementptr i8, ptr %229, i64 %173
  %274 = load i64, ptr %120, align 8, !tbaa !53
  %275 = add i64 %228, %18
  %276 = add i64 %275, %274
  %277 = add nuw nsw i64 %227, 1
  %278 = icmp eq i64 %277, %18
  br i1 %278, label %279, label %226, !llvm.loop !211

279:                                              ; preds = %272, %225
  %280 = phi double [ 0.000000e+00, %225 ], [ %265, %272 ]
  %281 = phi double [ %214, %225 ], [ %266, %272 ]
  %282 = phi double [ %212, %225 ], [ %267, %272 ]
  %283 = phi double [ %210, %225 ], [ %268, %272 ]
  %284 = phi ptr [ %20, %225 ], [ %273, %272 ]
  %285 = fcmp olt double %280, 0.000000e+00
  %286 = select i1 %285, double 0.000000e+00, double %280
  %287 = fcmp une double %286, 0.000000e+00
  br i1 %287, label %288, label %329

288:                                              ; preds = %279
  %289 = fcmp ult double %286, 1.000000e-15
  %290 = fdiv double 1.000000e+00, %286
  %291 = select i1 %289, double 0x430C6BF52633FFFF, double %290
  br i1 %160, label %304, label %292

292:                                              ; preds = %288
  %293 = fmul double %283, %291
  %294 = fptrunc double %293 to float
  %295 = fcmp ugt float %294, 0.000000e+00
  br i1 %295, label %296, label %301

296:                                              ; preds = %292
  %297 = fcmp ult float %294, 6.553500e+04
  br i1 %297, label %298, label %301

298:                                              ; preds = %296
  %299 = fadd float %294, 5.000000e-01
  %300 = fptoui float %299 to i16
  br label %301

301:                                              ; preds = %292, %296, %298
  %302 = phi i16 [ %300, %298 ], [ 0, %292 ], [ -1, %296 ]
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 0, i32 2
  store i16 %302, ptr %303, align 2, !tbaa !74
  br label %304

304:                                              ; preds = %301, %288
  br i1 %162, label %317, label %305

305:                                              ; preds = %304
  %306 = fmul double %282, %291
  %307 = fptrunc double %306 to float
  %308 = fcmp ugt float %307, 0.000000e+00
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = fcmp ult float %307, 6.553500e+04
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = fadd float %307, 5.000000e-01
  %313 = fptoui float %312 to i16
  br label %314

314:                                              ; preds = %305, %309, %311
  %315 = phi i16 [ %313, %311 ], [ 0, %305 ], [ -1, %309 ]
  %316 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 0, i32 1
  store i16 %315, ptr %316, align 2, !tbaa !75
  br label %317

317:                                              ; preds = %314, %304
  br i1 %164, label %329, label %318

318:                                              ; preds = %317
  %319 = fmul double %281, %291
  %320 = fptrunc double %319 to float
  %321 = fcmp ugt float %320, 0.000000e+00
  br i1 %321, label %322, label %327

322:                                              ; preds = %318
  %323 = fcmp ult float %320, 6.553500e+04
  br i1 %323, label %324, label %327

324:                                              ; preds = %322
  %325 = fadd float %320, 5.000000e-01
  %326 = fptoui float %325 to i16
  br label %327

327:                                              ; preds = %318, %322, %324
  %328 = phi i16 [ %326, %324 ], [ 0, %318 ], [ -1, %322 ]
  store i16 %328, ptr %206, align 2, !tbaa !76
  br label %329

329:                                              ; preds = %317, %327, %279
  br i1 %144, label %390, label %330

330:                                              ; preds = %329
  br i1 %165, label %331, label %370

331:                                              ; preds = %330, %363
  %332 = phi i64 [ %368, %363 ], [ 0, %330 ]
  %333 = phi i64 [ %367, %363 ], [ 0, %330 ]
  %334 = phi ptr [ %364, %363 ], [ %284, %330 ]
  %335 = phi double [ %359, %363 ], [ %216, %330 ]
  %336 = phi double [ %358, %363 ], [ 0.000000e+00, %330 ]
  %337 = getelementptr %struct._PixelPacket, ptr %208, i64 %333
  %338 = getelementptr %struct._PixelPacket, ptr %207, i64 %333, i32 3
  br label %339

339:                                              ; preds = %331, %357
  %340 = phi i64 [ 0, %331 ], [ %361, %357 ]
  %341 = phi ptr [ %334, %331 ], [ %360, %357 ]
  %342 = phi double [ %335, %331 ], [ %359, %357 ]
  %343 = phi double [ %336, %331 ], [ %358, %357 ]
  %344 = getelementptr %struct._PixelPacket, ptr %337, i64 %340
  %345 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %344) #13
  %346 = fsub float %345, %220
  %347 = call float @llvm.fabs.f32(float %346)
  %348 = fpext float %347 to double
  %349 = fcmp olt double %348, %4
  br i1 %349, label %350, label %357

350:                                              ; preds = %339
  %351 = load double, ptr %341, align 8, !tbaa !56
  %352 = getelementptr %struct._PixelPacket, ptr %338, i64 %340
  %353 = load i16, ptr %352, align 2, !tbaa !73
  %354 = uitofp i16 %353 to double
  %355 = call double @llvm.fmuladd.f64(double %351, double %354, double %342)
  %356 = fadd double %343, %351
  br label %357

357:                                              ; preds = %350, %339
  %358 = phi double [ %356, %350 ], [ %343, %339 ]
  %359 = phi double [ %355, %350 ], [ %342, %339 ]
  %360 = getelementptr inbounds double, ptr %341, i64 1
  %361 = add nuw nsw i64 %340, 1
  %362 = icmp eq i64 %361, %18
  br i1 %362, label %363, label %339, !llvm.loop !212

363:                                              ; preds = %357
  %364 = getelementptr i8, ptr %334, i64 %173
  %365 = load i64, ptr %120, align 8, !tbaa !53
  %366 = add i64 %333, %18
  %367 = add i64 %366, %365
  %368 = add nuw nsw i64 %332, 1
  %369 = icmp eq i64 %368, %18
  br i1 %369, label %370, label %331, !llvm.loop !213

370:                                              ; preds = %363, %330
  %371 = phi double [ 0.000000e+00, %330 ], [ %358, %363 ]
  %372 = phi double [ %216, %330 ], [ %359, %363 ]
  %373 = phi ptr [ %284, %330 ], [ %364, %363 ]
  %374 = fcmp olt double %371, 0.000000e+00
  %375 = select i1 %374, double 0.000000e+00, double %371
  %376 = fcmp ult double %375, 1.000000e-15
  %377 = fdiv double 1.000000e+00, %375
  %378 = select i1 %376, double 0x430C6BF52633FFFF, double %377
  %379 = fmul double %372, %378
  %380 = fptrunc double %379 to float
  %381 = fcmp ugt float %380, 0.000000e+00
  br i1 %381, label %382, label %387

382:                                              ; preds = %370
  %383 = fcmp ult float %380, 6.553500e+04
  br i1 %383, label %384, label %387

384:                                              ; preds = %382
  %385 = fadd float %380, 5.000000e-01
  %386 = fptoui float %385 to i16
  br label %387

387:                                              ; preds = %370, %382, %384
  %388 = phi i16 [ %386, %384 ], [ 0, %370 ], [ -1, %382 ]
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 0, i32 3
  store i16 %388, ptr %389, align 2, !tbaa !73
  br label %390

390:                                              ; preds = %387, %329
  %391 = phi ptr [ %373, %387 ], [ %284, %329 ]
  br i1 %167, label %705, label %392

392:                                              ; preds = %390
  %393 = load i32, ptr %168, align 4, !tbaa !77
  %394 = icmp eq i32 %393, 12
  br i1 %394, label %395, label %705

395:                                              ; preds = %392
  br i1 %169, label %396, label %441

396:                                              ; preds = %395
  %397 = getelementptr inbounds i16, ptr %195, i64 %205
  br label %398

398:                                              ; preds = %396, %434
  %399 = phi i64 [ 0, %396 ], [ %439, %434 ]
  %400 = phi i64 [ 0, %396 ], [ %438, %434 ]
  %401 = phi ptr [ %391, %396 ], [ %435, %434 ]
  %402 = phi double [ %218, %396 ], [ %430, %434 ]
  %403 = phi double [ 0.000000e+00, %396 ], [ %429, %434 ]
  %404 = getelementptr %struct._PixelPacket, ptr %208, i64 %400
  %405 = getelementptr i16, ptr %397, i64 %400
  br label %406

406:                                              ; preds = %398, %428
  %407 = phi i64 [ 0, %398 ], [ %432, %428 ]
  %408 = phi ptr [ %401, %398 ], [ %431, %428 ]
  %409 = phi double [ %402, %398 ], [ %430, %428 ]
  %410 = phi double [ %403, %398 ], [ %429, %428 ]
  %411 = getelementptr %struct._PixelPacket, ptr %404, i64 %407
  %412 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %411) #13
  %413 = fsub float %412, %220
  %414 = call float @llvm.fabs.f32(float %413)
  %415 = fpext float %414 to double
  %416 = fcmp olt double %415, %4
  br i1 %416, label %417, label %428

417:                                              ; preds = %406
  %418 = load double, ptr %408, align 8, !tbaa !56
  br i1 %202, label %423, label %419

419:                                              ; preds = %417
  %420 = getelementptr i16, ptr %405, i64 %407
  %421 = load i16, ptr %420, align 2, !tbaa !78
  %422 = zext i16 %421 to i32
  br label %423

423:                                              ; preds = %417, %419
  %424 = phi i32 [ %422, %419 ], [ 0, %417 ]
  %425 = sitofp i32 %424 to double
  %426 = call double @llvm.fmuladd.f64(double %418, double %425, double %409)
  %427 = fadd double %410, %418
  br label %428

428:                                              ; preds = %423, %406
  %429 = phi double [ %427, %423 ], [ %410, %406 ]
  %430 = phi double [ %426, %423 ], [ %409, %406 ]
  %431 = getelementptr inbounds double, ptr %408, i64 1
  %432 = add nuw nsw i64 %407, 1
  %433 = icmp eq i64 %432, %18
  br i1 %433, label %434, label %406, !llvm.loop !214

434:                                              ; preds = %428
  %435 = getelementptr i8, ptr %401, i64 %173
  %436 = load i64, ptr %120, align 8, !tbaa !53
  %437 = add i64 %400, %18
  %438 = add i64 %437, %436
  %439 = add nuw nsw i64 %399, 1
  %440 = icmp eq i64 %439, %18
  br i1 %440, label %441, label %398, !llvm.loop !215

441:                                              ; preds = %434, %395
  %442 = phi double [ 0.000000e+00, %395 ], [ %429, %434 ]
  %443 = phi double [ %218, %395 ], [ %430, %434 ]
  br i1 %203, label %705, label %444

444:                                              ; preds = %441
  %445 = fcmp olt double %442, 0.000000e+00
  %446 = select i1 %445, double 0.000000e+00, double %442
  %447 = fcmp ult double %446, 1.000000e-15
  %448 = fdiv double 1.000000e+00, %446
  %449 = select i1 %447, double 0x430C6BF52633FFFF, double %448
  %450 = getelementptr inbounds i16, ptr %196, i64 %205
  %451 = fmul double %443, %449
  %452 = fptrunc double %451 to float
  %453 = fcmp ugt float %452, 0.000000e+00
  br i1 %453, label %454, label %459

454:                                              ; preds = %444
  %455 = fcmp ult float %452, 6.553500e+04
  br i1 %455, label %456, label %459

456:                                              ; preds = %454
  %457 = fadd float %452, 5.000000e-01
  %458 = fptoui float %457 to i16
  br label %459

459:                                              ; preds = %444, %454, %456
  %460 = phi i16 [ %458, %456 ], [ 0, %444 ], [ -1, %454 ]
  store i16 %460, ptr %450, align 2, !tbaa !78
  br label %705

461:                                              ; preds = %224, %520
  %462 = phi i64 [ %525, %520 ], [ 0, %224 ]
  %463 = phi i64 [ %524, %520 ], [ 0, %224 ]
  %464 = phi ptr [ %521, %520 ], [ %20, %224 ]
  %465 = phi double [ %516, %520 ], [ %210, %224 ]
  %466 = phi double [ %515, %520 ], [ %212, %224 ]
  %467 = phi double [ %514, %520 ], [ %214, %224 ]
  %468 = phi double [ %513, %520 ], [ %216, %224 ]
  %469 = phi double [ %512, %520 ], [ 0.000000e+00, %224 ]
  %470 = getelementptr %struct._PixelPacket, ptr %208, i64 %463
  br label %471

471:                                              ; preds = %461, %511
  %472 = phi i64 [ 0, %461 ], [ %518, %511 ]
  %473 = phi ptr [ %464, %461 ], [ %517, %511 ]
  %474 = phi double [ %465, %461 ], [ %516, %511 ]
  %475 = phi double [ %466, %461 ], [ %515, %511 ]
  %476 = phi double [ %467, %461 ], [ %514, %511 ]
  %477 = phi double [ %468, %461 ], [ %513, %511 ]
  %478 = phi double [ %469, %461 ], [ %512, %511 ]
  %479 = getelementptr %struct._PixelPacket, ptr %470, i64 %472
  %480 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %479) #13
  %481 = fsub float %480, %220
  %482 = call float @llvm.fabs.f32(float %481)
  %483 = fpext float %482 to double
  %484 = fcmp olt double %483, %4
  br i1 %484, label %485, label %511

485:                                              ; preds = %471
  %486 = getelementptr inbounds %struct._PixelPacket, ptr %207, i64 %472
  %487 = getelementptr inbounds %struct._PixelPacket, ptr %486, i64 %463
  %488 = getelementptr inbounds %struct._PixelPacket, ptr %486, i64 %463, i32 3
  %489 = load i16, ptr %488, align 2, !tbaa !73
  %490 = xor i16 %489, -1
  %491 = uitofp i16 %490 to double
  %492 = fmul double %491, 0x3EF0001000100010
  %493 = fptrunc double %492 to float
  %494 = load double, ptr %473, align 8, !tbaa !56
  %495 = fpext float %493 to double
  %496 = fmul double %494, %495
  %497 = getelementptr inbounds %struct._PixelPacket, ptr %486, i64 %463, i32 2
  %498 = load i16, ptr %497, align 2, !tbaa !74
  %499 = uitofp i16 %498 to double
  %500 = call double @llvm.fmuladd.f64(double %496, double %499, double %474)
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %486, i64 %463, i32 1
  %502 = load i16, ptr %501, align 2, !tbaa !75
  %503 = uitofp i16 %502 to double
  %504 = call double @llvm.fmuladd.f64(double %496, double %503, double %475)
  %505 = load i16, ptr %487, align 2, !tbaa !76
  %506 = uitofp i16 %505 to double
  %507 = call double @llvm.fmuladd.f64(double %496, double %506, double %476)
  %508 = uitofp i16 %489 to double
  %509 = call double @llvm.fmuladd.f64(double %494, double %508, double %477)
  %510 = call double @llvm.fmuladd.f64(double %494, double %495, double %478)
  br label %511

511:                                              ; preds = %485, %471
  %512 = phi double [ %510, %485 ], [ %478, %471 ]
  %513 = phi double [ %509, %485 ], [ %477, %471 ]
  %514 = phi double [ %507, %485 ], [ %476, %471 ]
  %515 = phi double [ %504, %485 ], [ %475, %471 ]
  %516 = phi double [ %500, %485 ], [ %474, %471 ]
  %517 = getelementptr inbounds double, ptr %473, i64 1
  %518 = add nuw nsw i64 %472, 1
  %519 = icmp eq i64 %518, %18
  br i1 %519, label %520, label %471, !llvm.loop !216

520:                                              ; preds = %511
  %521 = getelementptr i8, ptr %464, i64 %173
  %522 = load i64, ptr %120, align 8, !tbaa !53
  %523 = add i64 %463, %18
  %524 = add i64 %523, %522
  %525 = add nuw nsw i64 %462, 1
  %526 = icmp eq i64 %525, %18
  br i1 %526, label %527, label %461, !llvm.loop !217

527:                                              ; preds = %520, %224
  %528 = phi double [ 0.000000e+00, %224 ], [ %512, %520 ]
  %529 = phi double [ %216, %224 ], [ %513, %520 ]
  %530 = phi double [ %214, %224 ], [ %514, %520 ]
  %531 = phi double [ %212, %224 ], [ %515, %520 ]
  %532 = phi double [ %210, %224 ], [ %516, %520 ]
  %533 = phi ptr [ %20, %224 ], [ %521, %520 ]
  %534 = fcmp olt double %528, 0.000000e+00
  %535 = select i1 %534, double 0.000000e+00, double %528
  %536 = fcmp une double %535, 0.000000e+00
  br i1 %536, label %537, label %578

537:                                              ; preds = %527
  %538 = fcmp ult double %535, 1.000000e-15
  %539 = fdiv double 1.000000e+00, %535
  %540 = select i1 %538, double 0x430C6BF52633FFFF, double %539
  br i1 %148, label %553, label %541

541:                                              ; preds = %537
  %542 = fmul double %540, %532
  %543 = fptrunc double %542 to float
  %544 = fcmp ugt float %543, 0.000000e+00
  br i1 %544, label %545, label %550

545:                                              ; preds = %541
  %546 = fcmp ult float %543, 6.553500e+04
  br i1 %546, label %547, label %550

547:                                              ; preds = %545
  %548 = fadd float %543, 5.000000e-01
  %549 = fptoui float %548 to i16
  br label %550

550:                                              ; preds = %541, %545, %547
  %551 = phi i16 [ %549, %547 ], [ 0, %541 ], [ -1, %545 ]
  %552 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 0, i32 2
  store i16 %551, ptr %552, align 2, !tbaa !74
  br label %553

553:                                              ; preds = %550, %537
  br i1 %150, label %566, label %554

554:                                              ; preds = %553
  %555 = fmul double %531, %540
  %556 = fptrunc double %555 to float
  %557 = fcmp ugt float %556, 0.000000e+00
  br i1 %557, label %558, label %563

558:                                              ; preds = %554
  %559 = fcmp ult float %556, 6.553500e+04
  br i1 %559, label %560, label %563

560:                                              ; preds = %558
  %561 = fadd float %556, 5.000000e-01
  %562 = fptoui float %561 to i16
  br label %563

563:                                              ; preds = %554, %558, %560
  %564 = phi i16 [ %562, %560 ], [ 0, %554 ], [ -1, %558 ]
  %565 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 0, i32 1
  store i16 %564, ptr %565, align 2, !tbaa !75
  br label %566

566:                                              ; preds = %563, %553
  br i1 %152, label %578, label %567

567:                                              ; preds = %566
  %568 = fmul double %530, %540
  %569 = fptrunc double %568 to float
  %570 = fcmp ugt float %569, 0.000000e+00
  br i1 %570, label %571, label %576

571:                                              ; preds = %567
  %572 = fcmp ult float %569, 6.553500e+04
  br i1 %572, label %573, label %576

573:                                              ; preds = %571
  %574 = fadd float %569, 5.000000e-01
  %575 = fptoui float %574 to i16
  br label %576

576:                                              ; preds = %567, %571, %573
  %577 = phi i16 [ %575, %573 ], [ 0, %567 ], [ -1, %571 ]
  store i16 %577, ptr %206, align 2, !tbaa !76
  br label %578

578:                                              ; preds = %527, %576, %566
  br i1 %153, label %579, label %614

579:                                              ; preds = %578, %607
  %580 = phi i64 [ %612, %607 ], [ 0, %578 ]
  %581 = phi i64 [ %611, %607 ], [ 0, %578 ]
  %582 = phi ptr [ %608, %607 ], [ %533, %578 ]
  %583 = phi double [ %603, %607 ], [ %529, %578 ]
  %584 = getelementptr %struct._PixelPacket, ptr %208, i64 %581
  %585 = getelementptr %struct._PixelPacket, ptr %207, i64 %581, i32 3
  br label %586

586:                                              ; preds = %579, %602
  %587 = phi i64 [ 0, %579 ], [ %605, %602 ]
  %588 = phi ptr [ %582, %579 ], [ %604, %602 ]
  %589 = phi double [ %583, %579 ], [ %603, %602 ]
  %590 = getelementptr %struct._PixelPacket, ptr %584, i64 %587
  %591 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %590) #13
  %592 = fsub float %591, %220
  %593 = call float @llvm.fabs.f32(float %592)
  %594 = fpext float %593 to double
  %595 = fcmp olt double %594, %4
  br i1 %595, label %596, label %602

596:                                              ; preds = %586
  %597 = load double, ptr %588, align 8, !tbaa !56
  %598 = getelementptr %struct._PixelPacket, ptr %585, i64 %587
  %599 = load i16, ptr %598, align 2, !tbaa !73
  %600 = uitofp i16 %599 to double
  %601 = call double @llvm.fmuladd.f64(double %597, double %600, double %589)
  br label %602

602:                                              ; preds = %596, %586
  %603 = phi double [ %601, %596 ], [ %589, %586 ]
  %604 = getelementptr inbounds double, ptr %588, i64 1
  %605 = add nuw nsw i64 %587, 1
  %606 = icmp eq i64 %605, %18
  br i1 %606, label %607, label %586, !llvm.loop !218

607:                                              ; preds = %602
  %608 = getelementptr i8, ptr %582, i64 %173
  %609 = load i64, ptr %120, align 8, !tbaa !53
  %610 = add i64 %581, %18
  %611 = add i64 %610, %609
  %612 = add nuw nsw i64 %580, 1
  %613 = icmp eq i64 %612, %18
  br i1 %613, label %614, label %579, !llvm.loop !219

614:                                              ; preds = %607, %578
  %615 = phi double [ %529, %578 ], [ %603, %607 ]
  %616 = phi ptr [ %533, %578 ], [ %608, %607 ]
  %617 = fptrunc double %615 to float
  %618 = fcmp ugt float %617, 0.000000e+00
  br i1 %618, label %619, label %624

619:                                              ; preds = %614
  %620 = fcmp ult float %617, 6.553500e+04
  br i1 %620, label %621, label %624

621:                                              ; preds = %619
  %622 = fadd float %617, 5.000000e-01
  %623 = fptoui float %622 to i16
  br label %624

624:                                              ; preds = %614, %619, %621
  %625 = phi i16 [ %623, %621 ], [ 0, %614 ], [ -1, %619 ]
  %626 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 0, i32 3
  store i16 %625, ptr %626, align 2, !tbaa !73
  br i1 %155, label %705, label %627

627:                                              ; preds = %624
  %628 = load i32, ptr %156, align 4, !tbaa !77
  %629 = icmp eq i32 %628, 12
  br i1 %629, label %630, label %705

630:                                              ; preds = %627
  br i1 %157, label %631, label %685

631:                                              ; preds = %630
  %632 = getelementptr inbounds i16, ptr %195, i64 %205
  br label %633

633:                                              ; preds = %631, %678
  %634 = phi i64 [ 0, %631 ], [ %683, %678 ]
  %635 = phi i64 [ 0, %631 ], [ %682, %678 ]
  %636 = phi ptr [ %616, %631 ], [ %679, %678 ]
  %637 = phi double [ %218, %631 ], [ %674, %678 ]
  %638 = phi double [ 0.000000e+00, %631 ], [ %673, %678 ]
  %639 = getelementptr %struct._PixelPacket, ptr %208, i64 %635
  %640 = getelementptr %struct._PixelPacket, ptr %207, i64 %635, i32 3
  %641 = getelementptr i16, ptr %632, i64 %635
  br label %642

642:                                              ; preds = %633, %672
  %643 = phi i64 [ 0, %633 ], [ %676, %672 ]
  %644 = phi ptr [ %636, %633 ], [ %675, %672 ]
  %645 = phi double [ %637, %633 ], [ %674, %672 ]
  %646 = phi double [ %638, %633 ], [ %673, %672 ]
  %647 = getelementptr %struct._PixelPacket, ptr %639, i64 %643
  %648 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %647) #13
  %649 = fsub float %648, %220
  %650 = call float @llvm.fabs.f32(float %649)
  %651 = fpext float %650 to double
  %652 = fcmp olt double %651, %4
  br i1 %652, label %653, label %672

653:                                              ; preds = %642
  %654 = getelementptr %struct._PixelPacket, ptr %640, i64 %643
  %655 = load i16, ptr %654, align 2, !tbaa !73
  %656 = xor i16 %655, -1
  %657 = uitofp i16 %656 to double
  %658 = fmul double %657, 0x3EF0001000100010
  %659 = fptrunc double %658 to float
  %660 = load double, ptr %644, align 8, !tbaa !56
  %661 = fpext float %659 to double
  %662 = fmul double %660, %661
  br i1 %200, label %667, label %663

663:                                              ; preds = %653
  %664 = getelementptr i16, ptr %641, i64 %643
  %665 = load i16, ptr %664, align 2, !tbaa !78
  %666 = zext i16 %665 to i32
  br label %667

667:                                              ; preds = %653, %663
  %668 = phi i32 [ %666, %663 ], [ 0, %653 ]
  %669 = sitofp i32 %668 to double
  %670 = call double @llvm.fmuladd.f64(double %662, double %669, double %645)
  %671 = fadd double %646, %660
  br label %672

672:                                              ; preds = %667, %642
  %673 = phi double [ %671, %667 ], [ %646, %642 ]
  %674 = phi double [ %670, %667 ], [ %645, %642 ]
  %675 = getelementptr inbounds double, ptr %644, i64 1
  %676 = add nuw nsw i64 %643, 1
  %677 = icmp eq i64 %676, %18
  br i1 %677, label %678, label %642, !llvm.loop !220

678:                                              ; preds = %672
  %679 = getelementptr i8, ptr %636, i64 %173
  %680 = load i64, ptr %120, align 8, !tbaa !53
  %681 = add i64 %635, %18
  %682 = add i64 %681, %680
  %683 = add nuw nsw i64 %634, 1
  %684 = icmp eq i64 %683, %18
  br i1 %684, label %685, label %633, !llvm.loop !221

685:                                              ; preds = %678, %630
  %686 = phi double [ 0.000000e+00, %630 ], [ %673, %678 ]
  %687 = phi double [ %218, %630 ], [ %674, %678 ]
  br i1 %201, label %705, label %688

688:                                              ; preds = %685
  %689 = fcmp olt double %686, 0.000000e+00
  %690 = select i1 %689, double 0.000000e+00, double %686
  %691 = fcmp ult double %690, 1.000000e-15
  %692 = fdiv double 1.000000e+00, %690
  %693 = select i1 %691, double 0x430C6BF52633FFFF, double %692
  %694 = getelementptr inbounds i16, ptr %196, i64 %205
  %695 = fmul double %687, %693
  %696 = fptrunc double %695 to float
  %697 = fcmp ugt float %696, 0.000000e+00
  br i1 %697, label %698, label %703

698:                                              ; preds = %688
  %699 = fcmp ult float %696, 6.553500e+04
  br i1 %699, label %700, label %703

700:                                              ; preds = %698
  %701 = fadd float %696, 5.000000e-01
  %702 = fptoui float %701 to i16
  br label %703

703:                                              ; preds = %688, %698, %700
  %704 = phi i16 [ %702, %700 ], [ 0, %688 ], [ -1, %698 ]
  store i16 %704, ptr %694, align 2, !tbaa !78
  br label %705

705:                                              ; preds = %624, %627, %703, %685, %390, %392, %459, %441
  %706 = getelementptr inbounds %struct._PixelPacket, ptr %207, i64 1
  %707 = getelementptr inbounds %struct._PixelPacket, ptr %208, i64 1
  %708 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 1
  %709 = add nuw nsw i64 %205, 1
  %710 = load i64, ptr %120, align 8, !tbaa !53
  %711 = icmp slt i64 %709, %710
  br i1 %711, label %204, label %712, !llvm.loop !222

712:                                              ; preds = %705, %194
  %713 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %136, ptr noundef %5) #13
  %714 = icmp ne i32 %713, 0
  %715 = zext i1 %714 to i32
  %716 = load ptr, ptr %170, align 8, !tbaa !81
  %717 = icmp eq ptr %716, null
  br i1 %717, label %727, label %718

718:                                              ; preds = %712
  %719 = add nsw i64 %177, 1
  %720 = load i64, ptr %137, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #11
  %721 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.65, ptr noundef nonnull %171) #11
  %722 = load ptr, ptr %170, align 8, !tbaa !81
  %723 = load ptr, ptr %172, align 8, !tbaa !82
  %724 = call i32 %722(ptr noundef nonnull %7, i64 noundef %177, i64 noundef %720, ptr noundef %723) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #11
  %725 = icmp eq i32 %724, 0
  %726 = select i1 %725, i32 0, i32 %715
  br label %727

727:                                              ; preds = %712, %718, %179, %174
  %728 = phi i64 [ %177, %174 ], [ %177, %179 ], [ %719, %718 ], [ %177, %712 ]
  %729 = phi i32 [ 0, %174 ], [ 0, %179 ], [ %726, %718 ], [ %715, %712 ]
  %730 = add nuw nsw i64 %175, 1
  %731 = load i64, ptr %137, align 8, !tbaa !54
  %732 = icmp slt i64 %730, %731
  br i1 %732, label %174, label %733, !llvm.loop !223

733:                                              ; preds = %727
  %734 = icmp eq i32 %729, 0
  %735 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %736 = load i32, ptr %735, align 8, !tbaa !84
  %737 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 77
  store i32 %736, ptr %737, align 8, !tbaa !84
  %738 = call ptr @DestroyCacheView(ptr noundef %136) #11
  %739 = call ptr @DestroyCacheView(ptr noundef %135) #11
  %740 = call ptr @DestroyCacheView(ptr noundef %134) #11
  %741 = call ptr @DestroyImage(ptr noundef nonnull %106) #11
  %742 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %20) #11
  br i1 %734, label %743, label %754

743:                                              ; preds = %733
  %744 = call ptr @DestroyImage(ptr noundef nonnull %94) #11
  br label %754

745:                                              ; preds = %119
  %746 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %747 = load i32, ptr %746, align 8, !tbaa !84
  %748 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 77
  store i32 %747, ptr %748, align 8, !tbaa !84
  %749 = call ptr @DestroyCacheView(ptr noundef %136) #11
  %750 = call ptr @DestroyCacheView(ptr noundef %135) #11
  %751 = call ptr @DestroyCacheView(ptr noundef %134) #11
  %752 = call ptr @DestroyImage(ptr noundef nonnull %106) #11
  %753 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %20) #11
  br label %754

754:                                              ; preds = %745, %733, %743, %114, %108, %101, %96, %22
  %755 = phi ptr [ null, %22 ], [ null, %96 ], [ null, %101 ], [ null, %108 ], [ null, %114 ], [ %744, %743 ], [ %94, %733 ], [ %94, %745 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  ret ptr %755
}

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @SharpenImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3794, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #11
  %14 = tail call ptr @AcquireKernelInfo(ptr noundef null) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3800, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %17) #11
  br label %116

19:                                               ; preds = %12
  %20 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 104) #11
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 1
  store i64 %13, ptr %21, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 2
  store i64 %13, ptr %22, align 8, !tbaa !88
  %23 = add i64 %13, -1
  %24 = sdiv i64 %23, 2
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 3
  store i64 %24, ptr %25, align 8, !tbaa !89
  %26 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 4
  store i64 %24, ptr %26, align 8, !tbaa !90
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 12
  store i64 2880220587, ptr %27, align 8, !tbaa !91
  %28 = shl i64 %13, 3
  %29 = tail call ptr @AcquireAlignedMemory(i64 noundef %13, i64 noundef %28) #12
  %30 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 5
  store ptr %29, ptr %30, align 8, !tbaa !92
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %14) #11
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3812, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %34) #11
  br label %116

36:                                               ; preds = %19
  %37 = load i64, ptr %21, align 8, !tbaa !86
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
  %51 = tail call i64 @llvm.abs.i64(i64 %39, i1 true)
  br label %52

52:                                               ; preds = %42, %75
  %53 = phi i64 [ %40, %42 ], [ %76, %75 ]
  %54 = phi double [ 0.000000e+00, %42 ], [ %71, %75 ]
  %55 = phi i64 [ 0, %42 ], [ %72, %75 ]
  %56 = mul nsw i64 %53, %53
  %57 = sitofp i64 %56 to double
  br label %58

58:                                               ; preds = %52, %58
  %59 = phi i64 [ %40, %52 ], [ %73, %58 ]
  %60 = phi double [ %54, %52 ], [ %71, %58 ]
  %61 = phi i64 [ %55, %52 ], [ %72, %58 ]
  %62 = sitofp i64 %59 to double
  %63 = tail call double @llvm.fmuladd.f64(double %62, double %62, double %57)
  %64 = fneg double %63
  %65 = fdiv double %64, %47
  %66 = tail call double @exp(double noundef %65) #11
  %67 = fneg double %66
  %68 = fdiv double %67, %49
  %69 = load ptr, ptr %30, align 8, !tbaa !92
  %70 = getelementptr inbounds double, ptr %69, i64 %61
  store double %68, ptr %70, align 8, !tbaa !56
  %71 = fadd double %60, %68
  %72 = add nsw i64 %61, 1
  %73 = add i64 %59, 1
  %74 = icmp eq i64 %59, %50
  br i1 %74, label %75, label %58, !llvm.loop !224

75:                                               ; preds = %58
  %76 = add i64 %53, 1
  %77 = icmp eq i64 %53, %51
  br i1 %77, label %78, label %52, !llvm.loop !225

78:                                               ; preds = %75
  %79 = fmul double %71, -2.000000e+00
  %80 = sdiv i64 %72, 2
  br label %81

81:                                               ; preds = %78, %36
  %82 = phi i64 [ 0, %36 ], [ %80, %78 ]
  %83 = phi double [ -0.000000e+00, %36 ], [ %79, %78 ]
  %84 = load ptr, ptr %30, align 8, !tbaa !92
  %85 = getelementptr inbounds double, ptr %84, i64 %82
  store double %83, ptr %85, align 8, !tbaa !56
  %86 = load i64, ptr %21, align 8, !tbaa !86
  %87 = load i64, ptr %22, align 8, !tbaa !88
  %88 = mul i64 %87, %86
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81, %90
  %91 = phi double [ %95, %90 ], [ 0.000000e+00, %81 ]
  %92 = phi i64 [ %96, %90 ], [ 0, %81 ]
  %93 = getelementptr inbounds double, ptr %84, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !56
  %95 = fadd double %91, %94
  %96 = add nuw nsw i64 %92, 1
  %97 = icmp eq i64 %96, %88
  br i1 %97, label %98, label %90, !llvm.loop !226

98:                                               ; preds = %90, %81
  %99 = phi double [ 0.000000e+00, %81 ], [ %95, %90 ]
  %100 = fcmp olt double %99, 0.000000e+00
  %101 = select i1 %100, double 0.000000e+00, double %99
  %102 = fcmp ult double %101, 1.000000e-15
  %103 = fdiv double 1.000000e+00, %101
  %104 = select i1 %102, double 0x430C6BF52633FFFF, double %103
  %105 = icmp sgt i64 %88, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %98, %106
  %107 = phi i64 [ %111, %106 ], [ 0, %98 ]
  %108 = getelementptr inbounds double, ptr %84, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !56
  %110 = fmul double %104, %109
  store double %110, ptr %108, align 8, !tbaa !56
  %111 = add nuw nsw i64 %107, 1
  %112 = icmp eq i64 %111, %88
  br i1 %112, label %113, label %106, !llvm.loop !227

113:                                              ; preds = %106, %98
  %114 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %14, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #11
  %115 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %14) #11
  br label %116

116:                                              ; preds = %113, %32, %16
  %117 = phi ptr [ null, %16 ], [ null, %32 ], [ %114, %113 ]
  ret ptr %117
}

declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @UnsharpMaskImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @UnsharpMaskImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5)
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @UnsharpMaskImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #11
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4090, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #11
  br label %16

16:                                               ; preds = %13, %7
  %17 = tail call ptr @AccelerateUnsharpMaskImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %267

19:                                               ; preds = %16
  %20 = and i32 %1, -257
  %21 = tail call ptr @BlurImageChannel(ptr noundef %0, i32 noundef %20, double noundef %2, double noundef %3, ptr noundef %6)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %267, label %23

23:                                               ; preds = %19
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %9) #11
  %24 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %6) #11
  %25 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %21, ptr noundef %6) #11
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !54
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %261

29:                                               ; preds = %23
  %30 = fmul double %5, 6.553500e+04
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 7
  %34 = and i32 %1, 1
  %35 = icmp eq i32 %34, 0
  %36 = fpext float %31 to double
  %37 = and i32 %1, 2
  %38 = icmp eq i32 %37, 0
  %39 = fpext float %31 to double
  %40 = and i32 %1, 4
  %41 = icmp eq i32 %40, 0
  %42 = fpext float %31 to double
  %43 = and i32 %1, 8
  %44 = icmp eq i32 %43, 0
  %45 = fpext float %31 to double
  %46 = and i32 %1, 32
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %49 = fpext float %31 to double
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %53

53:                                               ; preds = %29, %246
  %54 = phi i64 [ 0, %29 ], [ %249, %246 ]
  %55 = phi i64 [ 0, %29 ], [ %248, %246 ]
  %56 = phi i32 [ 1, %29 ], [ %247, %246 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %246, label %58

58:                                               ; preds = %53
  %59 = load i64, ptr %32, align 8, !tbaa !53
  %60 = call ptr @GetCacheViewVirtualPixels(ptr noundef %24, i64 noundef 0, i64 noundef %54, i64 noundef %59, i64 noundef 1, ptr noundef %6) #13
  %61 = load i64, ptr %33, align 8, !tbaa !53
  %62 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %25, i64 noundef 0, i64 noundef %54, i64 noundef %61, i64 noundef 1, ptr noundef %6) #13
  %63 = icmp eq ptr %60, null
  %64 = icmp eq ptr %62, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %246, label %66

66:                                               ; preds = %58
  %67 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %24) #11
  %68 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %25) #11
  %69 = load i64, ptr %32, align 8, !tbaa !53
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %231

71:                                               ; preds = %66
  %72 = icmp eq ptr %67, null
  %73 = icmp eq ptr %68, null
  br label %74

74:                                               ; preds = %71, %226
  %75 = phi i64 [ 0, %71 ], [ %229, %226 ]
  %76 = phi ptr [ %62, %71 ], [ %228, %226 ]
  %77 = phi ptr [ %60, %71 ], [ %227, %226 ]
  br i1 %35, label %102, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 2
  %80 = load i16, ptr %79, align 2, !tbaa !74
  %81 = uitofp i16 %80 to float
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  %83 = load i16, ptr %82, align 2, !tbaa !74
  %84 = uitofp i16 %83 to float
  %85 = fsub float %81, %84
  %86 = fpext float %85 to double
  %87 = fmul double %86, 2.000000e+00
  %88 = call double @llvm.fabs.f64(double %87)
  %89 = fcmp olt double %88, %36
  %90 = uitofp i16 %80 to double
  %91 = call double @llvm.fmuladd.f64(double %86, double %4, double %90)
  %92 = select i1 %89, double %90, double %91
  %93 = fptrunc double %92 to float
  %94 = fcmp ugt float %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %78
  %96 = fcmp ult float %93, 6.553500e+04
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = fadd float %93, 5.000000e-01
  %99 = fptoui float %98 to i16
  br label %100

100:                                              ; preds = %78, %95, %97
  %101 = phi i16 [ %99, %97 ], [ 0, %78 ], [ -1, %95 ]
  store i16 %101, ptr %82, align 2, !tbaa !74
  br label %102

102:                                              ; preds = %100, %74
  br i1 %38, label %127, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 1
  %105 = load i16, ptr %104, align 2, !tbaa !75
  %106 = uitofp i16 %105 to float
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !75
  %109 = uitofp i16 %108 to float
  %110 = fsub float %106, %109
  %111 = fpext float %110 to double
  %112 = fmul double %111, 2.000000e+00
  %113 = call double @llvm.fabs.f64(double %112)
  %114 = fcmp olt double %113, %39
  %115 = uitofp i16 %105 to double
  %116 = call double @llvm.fmuladd.f64(double %111, double %4, double %115)
  %117 = select i1 %114, double %115, double %116
  %118 = fptrunc double %117 to float
  %119 = fcmp ugt float %118, 0.000000e+00
  br i1 %119, label %120, label %125

120:                                              ; preds = %103
  %121 = fcmp ult float %118, 6.553500e+04
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = fadd float %118, 5.000000e-01
  %124 = fptoui float %123 to i16
  br label %125

125:                                              ; preds = %103, %120, %122
  %126 = phi i16 [ %124, %122 ], [ 0, %103 ], [ -1, %120 ]
  store i16 %126, ptr %107, align 2, !tbaa !75
  br label %127

127:                                              ; preds = %125, %102
  br i1 %41, label %150, label %128

128:                                              ; preds = %127
  %129 = load i16, ptr %77, align 2, !tbaa !76
  %130 = uitofp i16 %129 to float
  %131 = load i16, ptr %76, align 2, !tbaa !76
  %132 = uitofp i16 %131 to float
  %133 = fsub float %130, %132
  %134 = fpext float %133 to double
  %135 = fmul double %134, 2.000000e+00
  %136 = call double @llvm.fabs.f64(double %135)
  %137 = fcmp olt double %136, %42
  %138 = uitofp i16 %129 to double
  %139 = call double @llvm.fmuladd.f64(double %134, double %4, double %138)
  %140 = select i1 %137, double %138, double %139
  %141 = fptrunc double %140 to float
  %142 = fcmp ugt float %141, 0.000000e+00
  br i1 %142, label %143, label %148

143:                                              ; preds = %128
  %144 = fcmp ult float %141, 6.553500e+04
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = fadd float %141, 5.000000e-01
  %147 = fptoui float %146 to i16
  br label %148

148:                                              ; preds = %128, %143, %145
  %149 = phi i16 [ %147, %145 ], [ 0, %128 ], [ -1, %143 ]
  store i16 %149, ptr %76, align 2, !tbaa !76
  br label %150

150:                                              ; preds = %148, %127
  br i1 %44, label %175, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 3
  %153 = load i16, ptr %152, align 2, !tbaa !73
  %154 = uitofp i16 %153 to float
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 3
  %156 = load i16, ptr %155, align 2, !tbaa !73
  %157 = uitofp i16 %156 to float
  %158 = fsub float %154, %157
  %159 = fpext float %158 to double
  %160 = fmul double %159, 2.000000e+00
  %161 = call double @llvm.fabs.f64(double %160)
  %162 = fcmp olt double %161, %45
  %163 = uitofp i16 %153 to double
  %164 = call double @llvm.fmuladd.f64(double %159, double %4, double %163)
  %165 = select i1 %162, double %163, double %164
  %166 = fptrunc double %165 to float
  %167 = fcmp ugt float %166, 0.000000e+00
  br i1 %167, label %168, label %173

168:                                              ; preds = %151
  %169 = fcmp ult float %166, 6.553500e+04
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = fadd float %166, 5.000000e-01
  %172 = fptoui float %171 to i16
  br label %173

173:                                              ; preds = %151, %168, %170
  %174 = phi i16 [ %172, %170 ], [ 0, %151 ], [ -1, %168 ]
  store i16 %174, ptr %155, align 2, !tbaa !73
  br label %175

175:                                              ; preds = %173, %150
  br i1 %47, label %226, label %176

176:                                              ; preds = %175
  %177 = load i32, ptr %48, align 4, !tbaa !77
  %178 = icmp eq i32 %177, 12
  br i1 %178, label %179, label %226

179:                                              ; preds = %176
  %180 = getelementptr inbounds i16, ptr %67, i64 %75
  br i1 %72, label %184, label %181

181:                                              ; preds = %179
  %182 = load i16, ptr %180, align 2, !tbaa !78
  %183 = zext i16 %182 to i32
  br label %184

184:                                              ; preds = %179, %181
  %185 = phi i32 [ %183, %181 ], [ 0, %179 ]
  %186 = sitofp i32 %185 to float
  %187 = getelementptr inbounds i16, ptr %68, i64 %75
  br i1 %73, label %191, label %188

188:                                              ; preds = %184
  %189 = load i16, ptr %187, align 2, !tbaa !78
  %190 = zext i16 %189 to i32
  br label %191

191:                                              ; preds = %184, %188
  %192 = phi i32 [ %190, %188 ], [ 0, %184 ]
  %193 = sitofp i32 %192 to float
  %194 = fsub float %186, %193
  %195 = fpext float %194 to double
  %196 = fmul double %195, 2.000000e+00
  %197 = call double @llvm.fabs.f64(double %196)
  %198 = fcmp olt double %197, %49
  br i1 %198, label %199, label %206

199:                                              ; preds = %191
  br i1 %72, label %203, label %200

200:                                              ; preds = %199
  %201 = load i16, ptr %180, align 2, !tbaa !78
  %202 = zext i16 %201 to i32
  br label %203

203:                                              ; preds = %199, %200
  %204 = phi i32 [ %202, %200 ], [ 0, %199 ]
  %205 = sitofp i32 %204 to double
  br label %214

206:                                              ; preds = %191
  br i1 %72, label %210, label %207

207:                                              ; preds = %206
  %208 = load i16, ptr %180, align 2, !tbaa !78
  %209 = zext i16 %208 to i32
  br label %210

210:                                              ; preds = %206, %207
  %211 = phi i32 [ %209, %207 ], [ 0, %206 ]
  %212 = sitofp i32 %211 to double
  %213 = call double @llvm.fmuladd.f64(double %195, double %4, double %212)
  br label %214

214:                                              ; preds = %210, %203
  %215 = phi double [ %205, %203 ], [ %213, %210 ]
  br i1 %73, label %226, label %216

216:                                              ; preds = %214
  %217 = fptrunc double %215 to float
  %218 = fcmp ugt float %217, 0.000000e+00
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = fcmp ult float %217, 6.553500e+04
  br i1 %220, label %221, label %224

221:                                              ; preds = %219
  %222 = fadd float %217, 5.000000e-01
  %223 = fptoui float %222 to i16
  br label %224

224:                                              ; preds = %216, %219, %221
  %225 = phi i16 [ %223, %221 ], [ 0, %216 ], [ -1, %219 ]
  store i16 %225, ptr %187, align 2, !tbaa !78
  br label %226

226:                                              ; preds = %214, %224, %176, %175
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %229 = add nuw nsw i64 %75, 1
  %230 = icmp eq i64 %229, %69
  br i1 %230, label %231, label %74, !llvm.loop !228

231:                                              ; preds = %226, %66
  %232 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef %6) #13
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i32
  %235 = load ptr, ptr %50, align 8, !tbaa !81
  %236 = icmp eq ptr %235, null
  br i1 %236, label %246, label %237

237:                                              ; preds = %231
  %238 = add nsw i64 %55, 1
  %239 = load i64, ptr %26, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #11
  %240 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, ptr noundef nonnull %51) #11
  %241 = load ptr, ptr %50, align 8, !tbaa !81
  %242 = load ptr, ptr %52, align 8, !tbaa !82
  %243 = call i32 %241(ptr noundef nonnull %8, i64 noundef %55, i64 noundef %239, ptr noundef %242) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #11
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %244, i32 0, i32 %234
  br label %246

246:                                              ; preds = %231, %237, %58, %53
  %247 = phi i32 [ 0, %53 ], [ 0, %58 ], [ %245, %237 ], [ %234, %231 ]
  %248 = phi i64 [ %55, %53 ], [ %55, %58 ], [ %238, %237 ], [ %55, %231 ]
  %249 = add nuw nsw i64 %54, 1
  %250 = load i64, ptr %26, align 8, !tbaa !54
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %53, label %252, !llvm.loop !229

252:                                              ; preds = %246
  %253 = icmp eq i32 %247, 0
  %254 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %255 = load i32, ptr %254, align 8, !tbaa !84
  %256 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 77
  store i32 %255, ptr %256, align 8, !tbaa !84
  %257 = call ptr @DestroyCacheView(ptr noundef %25) #11
  %258 = call ptr @DestroyCacheView(ptr noundef %24) #11
  br i1 %253, label %259, label %267

259:                                              ; preds = %252
  %260 = call ptr @DestroyImage(ptr noundef nonnull %21) #11
  br label %267

261:                                              ; preds = %23
  %262 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %263 = load i32, ptr %262, align 8, !tbaa !84
  %264 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 77
  store i32 %263, ptr %264, align 8, !tbaa !84
  %265 = call ptr @DestroyCacheView(ptr noundef %25) #11
  %266 = call ptr @DestroyCacheView(ptr noundef %24) #11
  br label %267

267:                                              ; preds = %261, %252, %259, %19, %16
  %268 = phi ptr [ %17, %16 ], [ null, %19 ], [ %260, %259 ], [ %21, %252 ], [ %21, %261 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #11
  ret ptr %268
}

declare ptr @AccelerateUnsharpMaskImage(ptr noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

declare ptr @AcquireRandomInfo() local_unnamed_addr #2

declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { hot nounwind }

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
!53 = !{!35, !39, i64 40}
!54 = !{!35, !39, i64 48}
!55 = !{!40, !40, i64 0}
!56 = !{!43, !43, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !58, !59}
!61 = distinct !{!61, !58, !59}
!62 = distinct !{!62, !58, !59}
!63 = !{!35, !43, i64 376}
!64 = !{!65, !66, i64 32}
!65 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !66, i64 32, !66, i64 36, !66, i64 40, !66, i64 44, !66, i64 48}
!66 = !{!"float", !37, i64 0}
!67 = !{!65, !66, i64 36}
!68 = !{!65, !66, i64 40}
!69 = !{!65, !66, i64 44}
!70 = !{!65, !66, i64 48}
!71 = distinct !{!71, !58, !59}
!72 = !{!35, !36, i64 32}
!73 = !{!41, !42, i64 6}
!74 = !{!41, !42, i64 4}
!75 = !{!41, !42, i64 2}
!76 = !{!41, !42, i64 0}
!77 = !{!35, !36, i64 4}
!78 = !{!42, !42, i64 0}
!79 = distinct !{!79, !58, !59}
!80 = distinct !{!80, !58, !59}
!81 = !{!35, !40, i64 568}
!82 = !{!35, !40, i64 576}
!83 = distinct !{!83, !58, !59}
!84 = !{!35, !36, i64 13184}
!85 = distinct !{!85, !58, !59}
!86 = !{!87, !39, i64 8}
!87 = !{!"KernelInfo", !36, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !40, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !40, i64 88, !39, i64 96}
!88 = !{!87, !39, i64 16}
!89 = !{!87, !39, i64 24}
!90 = !{!87, !39, i64 32}
!91 = !{!87, !39, i64 96}
!92 = !{!87, !40, i64 40}
!93 = distinct !{!93, !58, !59}
!94 = distinct !{!94, !58, !59}
!95 = distinct !{!95, !58, !59}
!96 = distinct !{!96, !58, !59}
!97 = distinct !{!97, !58, !59}
!98 = distinct !{!98, !58, !59}
!99 = distinct !{!99, !58, !59}
!100 = distinct !{!100, !58, !59}
!101 = distinct !{!101, !58, !59}
!102 = distinct !{!102, !58, !59}
!103 = distinct !{!103, !58, !59}
!104 = distinct !{!104, !58, !59}
!105 = distinct !{!105, !58, !59}
!106 = !{!39, !39, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"Hull: argument 0"}
!109 = distinct !{!109, !"Hull"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"Hull: argument 1"}
!112 = distinct !{!112, !58, !59}
!113 = distinct !{!113, !58, !59}
!114 = distinct !{!114, !58, !59}
!115 = distinct !{!115, !58, !59}
!116 = !{!117}
!117 = distinct !{!117, !118, !"Hull: argument 0"}
!118 = distinct !{!118, !"Hull"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"Hull: argument 1"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"Hull: argument 0"}
!123 = distinct !{!123, !"Hull"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"Hull: argument 1"}
!126 = distinct !{!126, !58, !59}
!127 = distinct !{!127, !58, !59}
!128 = !{!129}
!129 = distinct !{!129, !130, !"Hull: argument 0"}
!130 = distinct !{!130, !"Hull"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"Hull: argument 1"}
!133 = distinct !{!133, !58, !59}
!134 = distinct !{!134, !58, !59}
!135 = distinct !{!135, !58, !59}
!136 = distinct !{!136, !58, !59}
!137 = distinct !{!137, !58, !59}
!138 = distinct !{!138, !58, !59}
!139 = distinct !{!139, !58, !59}
!140 = distinct !{!140, !58, !59}
!141 = !{!37, !37, i64 0}
!142 = distinct !{!142, !58, !59}
!143 = distinct !{!143, !58, !59}
!144 = !{!66, !66, i64 0}
!145 = distinct !{!145, !58, !59}
!146 = distinct !{!146, !58, !59}
!147 = distinct !{!147, !58, !59}
!148 = distinct !{!148, !58, !59}
!149 = distinct !{!149, !58, !59}
!150 = distinct !{!150, !58, !59}
!151 = distinct !{!151, !58, !59}
!152 = distinct !{!152, !58, !59}
!153 = distinct !{!153, !58, !59}
!154 = distinct !{!154, !58, !59}
!155 = distinct !{!155, !58, !59}
!156 = distinct !{!156, !58, !59}
!157 = distinct !{!157, !58, !59}
!158 = distinct !{!158, !58, !59}
!159 = distinct !{!159, !58, !59}
!160 = distinct !{!160, !58, !59}
!161 = distinct !{!161, !58, !59}
!162 = !{!163, !39, i64 0}
!163 = !{!"_OffsetInfo", !39, i64 0, !39, i64 8}
!164 = !{!163, !39, i64 8}
!165 = distinct !{!165, !58, !59}
!166 = !{i64 0, i64 4, !144, i64 4, i64 4, !144, i64 8, i64 4, !144, i64 12, i64 4, !144, i64 16, i64 4, !144}
!167 = !{i64 0, i64 4, !144, i64 4, i64 4, !144, i64 8, i64 4, !144, i64 12, i64 4, !144}
!168 = !{i64 0, i64 4, !144, i64 4, i64 4, !144, i64 8, i64 4, !144}
!169 = !{i64 0, i64 4, !144, i64 4, i64 4, !144}
!170 = !{i64 0, i64 4, !144}
!171 = distinct !{!171, !58, !59}
!172 = distinct !{!172, !58, !59}
!173 = distinct !{!173, !58, !59}
!174 = distinct !{!174, !58, !59}
!175 = !{!46, !39, i64 0}
!176 = !{!46, !39, i64 8}
!177 = distinct !{!177, !58, !59}
!178 = distinct !{!178, !58, !59}
!179 = !{!180, !39, i64 0}
!180 = !{!"_QuantizeInfo", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 32, !36, i64 40}
!181 = !{!180, !36, i64 20}
!182 = distinct !{!182, !58, !59}
!183 = !{!46, !39, i64 16}
!184 = !{!46, !39, i64 24}
!185 = !{!186, !39, i64 96}
!186 = !{!"_ImageInfo", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !39, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !43, i64 144, !43, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 188, !39, i64 192, !36, i64 200, !36, i64 204, !36, i64 208, !39, i64 216, !36, i64 224, !36, i64 228, !40, i64 232, !40, i64 240, !36, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !39, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !36, i64 16712, !40, i64 16720, !39, i64 16728, !39, i64 16736, !41, i64 16744, !39, i64 16752, !36, i64 16760, !41, i64 16764, !40, i64 16776, !36, i64 16784}
!187 = distinct !{!187, !58, !59}
!188 = !{!189, !36, i64 64}
!189 = !{!"_MontageInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !43, i64 48, !39, i64 56, !36, i64 64, !41, i64 68, !41, i64 76, !41, i64 84, !41, i64 92, !41, i64 100, !36, i64 108, !37, i64 112, !36, i64 4208, !39, i64 4216}
!190 = !{!35, !40, i64 232}
!191 = !{!35, !40, i64 240}
!192 = distinct !{!192, !58, !59}
!193 = distinct !{!193, !58, !59}
!194 = !{i64 0, i64 4, !195, i64 4, i64 4, !195, i64 8, i64 4, !195, i64 16, i64 8, !56, i64 24, i64 8, !106, i64 32, i64 4, !144, i64 36, i64 4, !144, i64 40, i64 4, !144, i64 44, i64 4, !144, i64 48, i64 4, !144}
!195 = !{!36, !36, i64 0}
!196 = !{!35, !36, i64 0}
!197 = distinct !{!197, !58, !59}
!198 = distinct !{!198, !58, !59}
!199 = distinct !{!199, !58, !59}
!200 = distinct !{!200, !58, !59}
!201 = distinct !{!201, !58, !59}
!202 = distinct !{!202, !58, !59}
!203 = distinct !{!203, !58, !59}
!204 = distinct !{!204, !58, !59}
!205 = distinct !{!205, !58, !59}
!206 = distinct !{!206, !58, !59}
!207 = distinct !{!207, !58, !59}
!208 = distinct !{!208, !58, !59}
!209 = distinct !{!209, !58, !59}
!210 = distinct !{!210, !58, !59}
!211 = distinct !{!211, !58, !59}
!212 = distinct !{!212, !58, !59}
!213 = distinct !{!213, !58, !59}
!214 = distinct !{!214, !58, !59}
!215 = distinct !{!215, !58, !59}
!216 = distinct !{!216, !58, !59}
!217 = distinct !{!217, !58, !59}
!218 = distinct !{!218, !58, !59}
!219 = distinct !{!219, !58, !59}
!220 = distinct !{!220, !58, !59}
!221 = distinct !{!221, !58, !59}
!222 = distinct !{!222, !58, !59}
!223 = distinct !{!223, !58, !59}
!224 = distinct !{!224, !58, !59}
!225 = distinct !{!225, !58, !59}
!226 = distinct !{!226, !58, !59}
!227 = distinct !{!227, !58, !59}
!228 = distinct !{!228, !58, !59}
!229 = distinct !{!229, !58, !59}
