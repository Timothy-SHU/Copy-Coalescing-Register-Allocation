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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveBlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AdaptiveBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #13
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 195, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #15
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !54
  %18 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %15, i64 noundef %17, i32 noundef 1, ptr noundef %4) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %398, label %20

20:                                               ; preds = %13
  %21 = tail call double @llvm.fabs.f64(double %3)
  %22 = fcmp ugt double %21, 1.000000e-15
  br i1 %22, label %23, label %398

23:                                               ; preds = %20
  %24 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %18, i32 noundef 1) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %27) #15
  %28 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #15
  br label %398

29:                                               ; preds = %23
  %30 = tail call ptr @EdgeImage(ptr noundef nonnull %0, double noundef %2, ptr noundef %4) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #15
  br label %398

34:                                               ; preds = %29
  %35 = tail call i32 @LevelImage(ptr noundef nonnull %30, ptr noundef nonnull @.str.3) #15
  %36 = tail call ptr @BlurImage(ptr noundef nonnull %30, double noundef %2, double noundef %3, ptr noundef %4) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #15
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi ptr [ %36, %38 ], [ %30, %34 ]
  %42 = tail call i32 @LevelImage(ptr noundef nonnull %41, ptr noundef nonnull @.str.4) #15
  %43 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #15
  %44 = tail call ptr @AcquireAlignedMemory(i64 noundef %43, i64 noundef 8) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = tail call ptr @DestroyImage(ptr noundef nonnull %41) #15
  %48 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #15
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %50 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 236, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %49) #15
  br label %398

51:                                               ; preds = %40
  %52 = shl i64 %43, 3
  %53 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %44, i32 noundef 0, i64 noundef %52) #15
  %54 = icmp sgt i64 %43, 0
  br i1 %54, label %55, label %128

55:                                               ; preds = %51
  %56 = fcmp olt double %21, 1.000000e-15
  %57 = select i1 %56, double 1.000000e-15, double %3
  %58 = fmul double %57, 2.000000e+00
  %59 = fmul double %57, %58
  %60 = fmul double %57, 0x401921FB54442D18
  %61 = fmul double %57, %60
  %62 = fcmp olt double %3, 1.000000e-15
  br label %63

63:                                               ; preds = %55, %103
  %64 = phi i64 [ 0, %55 ], [ %113, %103 ]
  %65 = sub nsw i64 %43, %64
  %66 = shl i64 %65, 3
  %67 = tail call ptr @AcquireAlignedMemory(i64 noundef %65, i64 noundef %66) #16
  %68 = getelementptr inbounds ptr, ptr %44, i64 %64
  store ptr %67, ptr %68, align 8, !tbaa !55
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = icmp eq i64 %64, 0
  br i1 %71, label %122, label %115

72:                                               ; preds = %63
  %73 = sdiv i64 %65, 2
  %74 = sub nsw i64 0, %73
  %75 = icmp slt i64 %65, -1
  br i1 %75, label %103, label %76

76:                                               ; preds = %72
  %77 = tail call i64 @llvm.abs.i64(i64 %73, i1 true)
  br label %78

78:                                               ; preds = %76, %100
  %79 = phi i64 [ %101, %100 ], [ %74, %76 ]
  %80 = phi i64 [ %97, %100 ], [ 0, %76 ]
  %81 = phi double [ %96, %100 ], [ 0.000000e+00, %76 ]
  %82 = mul nsw i64 %79, %79
  %83 = sitofp i64 %82 to double
  br label %84

84:                                               ; preds = %78, %84
  %85 = phi i64 [ %74, %78 ], [ %98, %84 ]
  %86 = phi i64 [ %80, %78 ], [ %97, %84 ]
  %87 = phi double [ %81, %78 ], [ %96, %84 ]
  %88 = sitofp i64 %85 to double
  %89 = tail call double @llvm.fmuladd.f64(double %88, double %88, double %83)
  %90 = fneg double %89
  %91 = fdiv double %90, %59
  %92 = tail call double @exp(double noundef %91) #15
  %93 = fdiv double %92, %61
  %94 = load ptr, ptr %68, align 8, !tbaa !55
  %95 = getelementptr inbounds double, ptr %94, i64 %86
  store double %93, ptr %95, align 8, !tbaa !56
  %96 = fadd double %87, %93
  %97 = add nsw i64 %86, 1
  %98 = add i64 %85, 1
  %99 = icmp eq i64 %85, %77
  br i1 %99, label %100, label %84, !llvm.loop !57

100:                                              ; preds = %84
  %101 = add i64 %79, 1
  %102 = icmp eq i64 %79, %77
  br i1 %102, label %103, label %78, !llvm.loop !59

103:                                              ; preds = %100, %72
  %104 = phi ptr [ %67, %72 ], [ %94, %100 ]
  %105 = phi double [ 0.000000e+00, %72 ], [ %96, %100 ]
  %106 = phi i64 [ -1, %72 ], [ %86, %100 ]
  %107 = fsub double 1.000000e+00, %105
  %108 = sdiv i64 %106, 2
  %109 = getelementptr inbounds double, ptr %104, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !56
  %111 = fadd double %107, %110
  %112 = select i1 %62, double 1.000000e+00, double %111
  store double %112, ptr %109, align 8, !tbaa !56
  %113 = add nuw nsw i64 %64, 2
  %114 = icmp slt i64 %113, %43
  br i1 %114, label %63, label %128, !llvm.loop !60

115:                                              ; preds = %70, %115
  %116 = phi i64 [ %117, %115 ], [ %64, %70 ]
  %117 = add nsw i64 %116, -2
  %118 = getelementptr inbounds ptr, ptr %44, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !55
  %120 = tail call ptr @RelinquishAlignedMemory(ptr noundef %119) #15
  store ptr %120, ptr %118, align 8, !tbaa !55
  %121 = icmp sgt i64 %116, 3
  br i1 %121, label %115, label %122, !llvm.loop !61

122:                                              ; preds = %115, %70
  %123 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %44) #15
  %124 = tail call ptr @DestroyImage(ptr noundef nonnull %41) #15
  %125 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #15
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %127 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 269, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %126) #15
  br label %398

128:                                              ; preds = %103, %51
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #15
  call fastcc void @SetMagickPixelPacketBias(ptr noundef %0, ptr noundef nonnull %6) #13
  %129 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #15
  %130 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %41, ptr noundef %4) #15
  %131 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %18, ptr noundef %4) #15
  %132 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %133 = load i64, ptr %132, align 8, !tbaa !54
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %378

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %137 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %138 = uitofp i64 %43 to double
  %139 = fmul double %138, 0x3EF0001000100010
  %140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %143 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %145 = and i32 %1, 8
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %148 = and i32 %1, 1
  %149 = icmp eq i32 %148, 0
  %150 = and i32 %1, 2
  %151 = icmp eq i32 %150, 0
  %152 = and i32 %1, 4
  %153 = icmp eq i32 %152, 0
  %154 = and i32 %1, 32
  %155 = icmp eq i32 %154, 0
  %156 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %157 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %158

158:                                              ; preds = %135, %370
  %159 = phi i64 [ 0, %135 ], [ %373, %370 ]
  %160 = phi i64 [ 0, %135 ], [ %372, %370 ]
  %161 = phi i32 [ 1, %135 ], [ %371, %370 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %370, label %163

163:                                              ; preds = %158
  %164 = load i64, ptr %136, align 8, !tbaa !53
  %165 = call ptr @GetCacheViewVirtualPixels(ptr noundef %130, i64 noundef 0, i64 noundef %159, i64 noundef %164, i64 noundef 1, ptr noundef %4) #17
  %166 = load i64, ptr %137, align 8, !tbaa !53
  %167 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %131, i64 noundef 0, i64 noundef %159, i64 noundef %166, i64 noundef 1, ptr noundef %4) #17
  %168 = icmp eq ptr %165, null
  %169 = icmp eq ptr %167, null
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %370, label %171

171:                                              ; preds = %163
  %172 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %131) #15
  %173 = load i64, ptr %137, align 8, !tbaa !53
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %358

175:                                              ; preds = %171
  %176 = icmp eq ptr %172, null
  br label %177

177:                                              ; preds = %175, %352
  %178 = phi i64 [ 0, %175 ], [ %355, %352 ]
  %179 = phi ptr [ %167, %175 ], [ %353, %352 ]
  %180 = phi ptr [ %165, %175 ], [ %354, %352 ]
  %181 = call float @GetPixelIntensity(ptr noundef nonnull %41, ptr noundef nonnull %180) #17
  %182 = fpext float %181 to double
  %183 = call double @llvm.fmuladd.f64(double %139, double %182, double -5.000000e-01)
  %184 = call double @llvm.ceil.f64(double %183)
  %185 = fptosi double %184 to i64
  %186 = icmp slt i64 %185, 0
  %187 = call i64 @llvm.smin.i64(i64 %43, i64 %185)
  %188 = and i64 %187, -2
  %189 = select i1 %186, i64 0, i64 %188
  %190 = sub i64 %43, %189
  %191 = sdiv i64 %190, -2
  %192 = add i64 %191, %178
  %193 = lshr i64 %190, 1
  %194 = sub nsw i64 %159, %193
  %195 = call ptr @GetCacheViewVirtualPixels(ptr noundef %129, i64 noundef %192, i64 noundef %194, i64 noundef %190, i64 noundef %190, ptr noundef %4) #17
  %196 = icmp eq ptr %195, null
  br i1 %196, label %358, label %197

197:                                              ; preds = %177
  %198 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %129) #15
  %199 = load float, ptr %140, align 8, !tbaa !62
  %200 = fpext float %199 to double
  %201 = load float, ptr %141, align 4, !tbaa !65
  %202 = fpext float %201 to double
  %203 = load float, ptr %142, align 8, !tbaa !66
  %204 = fpext float %203 to double
  %205 = load float, ptr %143, align 4, !tbaa !67
  %206 = fpext float %205 to double
  %207 = load float, ptr %144, align 8, !tbaa !68
  %208 = fpext float %207 to double
  %209 = icmp sgt i64 %190, 0
  br i1 %209, label %210, label %311

210:                                              ; preds = %197
  %211 = getelementptr inbounds ptr, ptr %44, i64 %189
  %212 = load ptr, ptr %211, align 8, !tbaa !55
  %213 = icmp eq ptr %198, null
  %214 = getelementptr inbounds i16, ptr %198, i64 %178
  br label %215

215:                                              ; preds = %210, %308
  %216 = phi i64 [ 0, %210 ], [ %309, %308 ]
  %217 = phi ptr [ %212, %210 ], [ %304, %308 ]
  %218 = phi double [ %200, %210 ], [ %258, %308 ]
  %219 = phi double [ %202, %210 ], [ %267, %308 ]
  %220 = phi double [ %204, %210 ], [ %275, %308 ]
  %221 = phi double [ %206, %210 ], [ %283, %308 ]
  %222 = phi double [ %208, %210 ], [ %302, %308 ]
  %223 = phi double [ 0.000000e+00, %210 ], [ %303, %308 ]
  %224 = phi ptr [ %195, %210 ], [ %305, %308 ]
  %225 = mul i64 %216, %190
  %226 = getelementptr inbounds i16, ptr %214, i64 %225
  br label %227

227:                                              ; preds = %215, %300
  %228 = phi i64 [ 0, %215 ], [ %306, %300 ]
  %229 = phi ptr [ %217, %215 ], [ %304, %300 ]
  %230 = phi double [ %218, %215 ], [ %258, %300 ]
  %231 = phi double [ %219, %215 ], [ %267, %300 ]
  %232 = phi double [ %220, %215 ], [ %275, %300 ]
  %233 = phi double [ %221, %215 ], [ %283, %300 ]
  %234 = phi double [ %222, %215 ], [ %302, %300 ]
  %235 = phi double [ %223, %215 ], [ %303, %300 ]
  %236 = phi ptr [ %224, %215 ], [ %305, %300 ]
  br i1 %146, label %248, label %237

237:                                              ; preds = %227
  %238 = load i32, ptr %147, align 8, !tbaa !69
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %236, i64 0, i32 3
  %242 = load i16, ptr %241, align 2, !tbaa !70
  %243 = xor i16 %242, -1
  %244 = uitofp i16 %243 to double
  %245 = fmul double %244, 0x3EF0001000100010
  %246 = fptrunc double %245 to float
  %247 = fpext float %246 to double
  br label %248

248:                                              ; preds = %240, %237, %227
  %249 = phi double [ %247, %240 ], [ 1.000000e+00, %237 ], [ 1.000000e+00, %227 ]
  br i1 %149, label %257, label %250

250:                                              ; preds = %248
  %251 = load double, ptr %229, align 8, !tbaa !56
  %252 = fmul double %249, %251
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %236, i64 0, i32 2
  %254 = load i16, ptr %253, align 2, !tbaa !71
  %255 = uitofp i16 %254 to double
  %256 = call double @llvm.fmuladd.f64(double %252, double %255, double %230)
  br label %257

257:                                              ; preds = %250, %248
  %258 = phi double [ %256, %250 ], [ %230, %248 ]
  br i1 %151, label %266, label %259

259:                                              ; preds = %257
  %260 = load double, ptr %229, align 8, !tbaa !56
  %261 = fmul double %249, %260
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %236, i64 0, i32 1
  %263 = load i16, ptr %262, align 2, !tbaa !72
  %264 = uitofp i16 %263 to double
  %265 = call double @llvm.fmuladd.f64(double %261, double %264, double %231)
  br label %266

266:                                              ; preds = %259, %257
  %267 = phi double [ %265, %259 ], [ %231, %257 ]
  br i1 %153, label %274, label %268

268:                                              ; preds = %266
  %269 = load double, ptr %229, align 8, !tbaa !56
  %270 = fmul double %249, %269
  %271 = load i16, ptr %236, align 2, !tbaa !73
  %272 = uitofp i16 %271 to double
  %273 = call double @llvm.fmuladd.f64(double %270, double %272, double %232)
  br label %274

274:                                              ; preds = %268, %266
  %275 = phi double [ %273, %268 ], [ %232, %266 ]
  br i1 %146, label %282, label %276

276:                                              ; preds = %274
  %277 = load double, ptr %229, align 8, !tbaa !56
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %236, i64 0, i32 3
  %279 = load i16, ptr %278, align 2, !tbaa !70
  %280 = uitofp i16 %279 to double
  %281 = call double @llvm.fmuladd.f64(double %277, double %280, double %233)
  br label %282

282:                                              ; preds = %276, %274
  %283 = phi double [ %281, %276 ], [ %233, %274 ]
  br i1 %155, label %284, label %286

284:                                              ; preds = %282
  %285 = load double, ptr %229, align 8, !tbaa !56
  br label %300

286:                                              ; preds = %282
  %287 = load i32, ptr %156, align 4, !tbaa !74
  %288 = icmp eq i32 %287, 12
  %289 = load double, ptr %229, align 8, !tbaa !56
  br i1 %288, label %290, label %300

290:                                              ; preds = %286
  %291 = fmul double %249, %289
  br i1 %213, label %296, label %292

292:                                              ; preds = %290
  %293 = getelementptr inbounds i16, ptr %226, i64 %228
  %294 = load i16, ptr %293, align 2, !tbaa !75
  %295 = zext i16 %294 to i32
  br label %296

296:                                              ; preds = %290, %292
  %297 = phi i32 [ %295, %292 ], [ 0, %290 ]
  %298 = sitofp i32 %297 to double
  %299 = call double @llvm.fmuladd.f64(double %291, double %298, double %234)
  br label %300

300:                                              ; preds = %284, %296, %286
  %301 = phi double [ %289, %296 ], [ %289, %286 ], [ %285, %284 ]
  %302 = phi double [ %299, %296 ], [ %234, %286 ], [ %234, %284 ]
  %303 = call double @llvm.fmuladd.f64(double %301, double %249, double %235)
  %304 = getelementptr inbounds double, ptr %229, i64 1
  %305 = getelementptr inbounds %struct._PixelPacket, ptr %236, i64 1
  %306 = add nuw nsw i64 %228, 1
  %307 = icmp eq i64 %306, %190
  br i1 %307, label %308, label %227, !llvm.loop !76

308:                                              ; preds = %300
  %309 = add nuw nsw i64 %216, 1
  %310 = icmp eq i64 %309, %190
  br i1 %310, label %311, label %215, !llvm.loop !77

311:                                              ; preds = %308, %197
  %312 = phi double [ 0.000000e+00, %197 ], [ %303, %308 ]
  %313 = phi double [ %208, %197 ], [ %302, %308 ]
  %314 = phi double [ %206, %197 ], [ %283, %308 ]
  %315 = phi double [ %204, %197 ], [ %275, %308 ]
  %316 = phi double [ %202, %197 ], [ %267, %308 ]
  %317 = phi double [ %200, %197 ], [ %258, %308 ]
  %318 = fcmp olt double %312, 0.000000e+00
  %319 = select i1 %318, double 0.000000e+00, double %312
  %320 = call fastcc double @PerceptibleReciprocal(double noundef %319) #13
  br i1 %149, label %326, label %321

321:                                              ; preds = %311
  %322 = fmul double %317, %320
  %323 = fptrunc double %322 to float
  %324 = call fastcc zeroext i16 @ClampToQuantum(float noundef %323) #13
  %325 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 0, i32 2
  store i16 %324, ptr %325, align 2, !tbaa !71
  br label %326

326:                                              ; preds = %321, %311
  br i1 %151, label %332, label %327

327:                                              ; preds = %326
  %328 = fmul double %316, %320
  %329 = fptrunc double %328 to float
  %330 = call fastcc zeroext i16 @ClampToQuantum(float noundef %329) #13
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 0, i32 1
  store i16 %330, ptr %331, align 2, !tbaa !72
  br label %332

332:                                              ; preds = %327, %326
  br i1 %153, label %337, label %333

333:                                              ; preds = %332
  %334 = fmul double %315, %320
  %335 = fptrunc double %334 to float
  %336 = call fastcc zeroext i16 @ClampToQuantum(float noundef %335) #13
  store i16 %336, ptr %179, align 2, !tbaa !73
  br label %337

337:                                              ; preds = %333, %332
  br i1 %146, label %342, label %338

338:                                              ; preds = %337
  %339 = fptrunc double %314 to float
  %340 = call fastcc zeroext i16 @ClampToQuantum(float noundef %339) #13
  %341 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 0, i32 3
  store i16 %340, ptr %341, align 2, !tbaa !70
  br label %342

342:                                              ; preds = %338, %337
  br i1 %155, label %352, label %343

343:                                              ; preds = %342
  %344 = load i32, ptr %156, align 4, !tbaa !74
  %345 = icmp ne i32 %344, 12
  %346 = select i1 %345, i1 true, i1 %176
  br i1 %346, label %352, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds i16, ptr %172, i64 %178
  %349 = fmul double %313, %320
  %350 = fptrunc double %349 to float
  %351 = call fastcc zeroext i16 @ClampToQuantum(float noundef %350) #13
  store i16 %351, ptr %348, align 2, !tbaa !75
  br label %352

352:                                              ; preds = %342, %343, %347
  %353 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 1
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 1
  %355 = add nuw nsw i64 %178, 1
  %356 = load i64, ptr %137, align 8, !tbaa !53
  %357 = icmp slt i64 %355, %356
  br i1 %357, label %177, label %358, !llvm.loop !78

358:                                              ; preds = %352, %177, %171
  %359 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %131, ptr noundef %4) #17
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i32
  %362 = load ptr, ptr %157, align 8, !tbaa !79
  %363 = icmp eq ptr %362, null
  br i1 %363, label %370, label %364

364:                                              ; preds = %358
  %365 = add nsw i64 %160, 1
  %366 = load i64, ptr %16, align 8, !tbaa !54
  %367 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %160, i64 noundef %366) #13
  %368 = icmp eq i32 %367, 0
  %369 = select i1 %368, i32 0, i32 %361
  br label %370

370:                                              ; preds = %358, %364, %163, %158
  %371 = phi i32 [ 0, %158 ], [ 0, %163 ], [ %369, %364 ], [ %361, %358 ]
  %372 = phi i64 [ %160, %158 ], [ %160, %163 ], [ %365, %364 ], [ %160, %358 ]
  %373 = add nuw nsw i64 %159, 1
  %374 = load i64, ptr %132, align 8, !tbaa !54
  %375 = icmp slt i64 %373, %374
  br i1 %375, label %158, label %376, !llvm.loop !80

376:                                              ; preds = %370
  %377 = icmp eq i32 %371, 0
  br label %378

378:                                              ; preds = %376, %128
  %379 = phi i1 [ false, %128 ], [ %377, %376 ]
  %380 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %381 = load i32, ptr %380, align 8, !tbaa !81
  %382 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 77
  store i32 %381, ptr %382, align 8, !tbaa !81
  %383 = call ptr @DestroyCacheView(ptr noundef %131) #15
  %384 = call ptr @DestroyCacheView(ptr noundef %130) #15
  %385 = call ptr @DestroyCacheView(ptr noundef %129) #15
  %386 = call ptr @DestroyImage(ptr noundef nonnull %41) #15
  br i1 %54, label %387, label %394

387:                                              ; preds = %378, %387
  %388 = phi i64 [ %392, %387 ], [ 0, %378 ]
  %389 = getelementptr inbounds ptr, ptr %44, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !55
  %391 = call ptr @RelinquishAlignedMemory(ptr noundef %390) #15
  store ptr %391, ptr %389, align 8, !tbaa !55
  %392 = add nuw nsw i64 %388, 2
  %393 = icmp slt i64 %392, %43
  br i1 %393, label %387, label %394, !llvm.loop !82

394:                                              ; preds = %387, %378
  %395 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %44) #15
  br i1 %379, label %396, label %398

396:                                              ; preds = %394
  %397 = call ptr @DestroyImage(ptr noundef nonnull %18) #15
  br label %398

398:                                              ; preds = %394, %396, %20, %13, %122, %46, %32, %26
  %399 = phi ptr [ null, %26 ], [ null, %32 ], [ null, %46 ], [ null, %122 ], [ null, %13 ], [ %18, %20 ], [ %397, %396 ], [ %18, %394 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  ret ptr %399
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
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1285, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef 5.000000e-01) #15
  %12 = tail call ptr @AcquireKernelInfo(ptr noundef null) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1291, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %15) #15
  br label %76

17:                                               ; preds = %10
  %18 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 104) #15
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 1
  store i64 %11, ptr %19, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 2
  store i64 %11, ptr %20, align 8, !tbaa !85
  %21 = add i64 %11, -1
  %22 = sdiv i64 %21, 2
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 3
  store i64 %22, ptr %23, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 4
  store i64 %22, ptr %24, align 8, !tbaa !87
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 12
  store i64 2880220587, ptr %25, align 8, !tbaa !88
  %26 = shl i64 %11, 3
  %27 = tail call ptr @AcquireAlignedMemory(i64 noundef %11, i64 noundef %26) #16
  %28 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 5
  store ptr %27, ptr %28, align 8, !tbaa !89
  %29 = icmp eq ptr %27, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %17
  %31 = load i64, ptr %19, align 8, !tbaa !83
  %32 = load i64, ptr %20, align 8, !tbaa !85
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
  store double -1.000000e+00, ptr %47, align 8, !tbaa !56
  br label %48

48:                                               ; preds = %46, %41
  %49 = extractelement <2 x i1> %44, i64 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = or disjoint i64 %42, 1
  %52 = getelementptr inbounds double, ptr %27, i64 %51
  store double -1.000000e+00, ptr %52, align 8, !tbaa !56
  br label %53

53:                                               ; preds = %50, %48
  %54 = add i64 %42, 2
  %55 = add <2 x i64> %43, <i64 2, i64 2>
  %56 = icmp eq i64 %54, %37
  br i1 %56, label %61, label %41, !llvm.loop !90

57:                                               ; preds = %17
  %58 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %12) #15
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %60 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1303, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %59) #15
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
  store double %67, ptr %68, align 8, !tbaa !56
  %69 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %12, ptr noundef %2) #15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %12, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %2) #15
  br label %73

73:                                               ; preds = %71, %63
  %74 = phi ptr [ %72, %71 ], [ %69, %63 ]
  %75 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %12) #15
  br label %76

76:                                               ; preds = %73, %57, %14
  %77 = phi ptr [ null, %14 ], [ null, %57 ], [ %74, %73 ]
  ret ptr %77
}

; Function Attrs: optsize
declare i32 @LevelImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #13
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
define internal fastcc void @SetMagickPixelPacketBias(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 !PGOFuncName !93 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %4 = load double, ptr %3, align 8, !tbaa !94
  %5 = fptrunc double %4 to float
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %7 = insertelement <4 x float> poison, float %5, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %8, ptr %6, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %5, ptr %9, align 8, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #8 !PGOFuncName !96 {
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
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #8 !PGOFuncName !97 {
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
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !PGOFuncName !98 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef %1, ptr noundef nonnull %10) #15
  %12 = load ptr, ptr %6, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #14
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveSharpenImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @AdaptiveSharpenImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveSharpenImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 520, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #15
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %395, label %16

16:                                               ; preds = %13
  %17 = tail call double @llvm.fabs.f64(double %3)
  %18 = fcmp ugt double %17, 1.000000e-15
  br i1 %18, label %19, label %395

19:                                               ; preds = %16
  %20 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %14, i32 noundef 1) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %23) #15
  %24 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #15
  br label %395

25:                                               ; preds = %19
  %26 = tail call ptr @EdgeImage(ptr noundef nonnull %0, double noundef %2, ptr noundef %4) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #15
  br label %395

30:                                               ; preds = %25
  %31 = tail call i32 @LevelImage(ptr noundef nonnull %26, ptr noundef nonnull @.str.3) #15
  %32 = tail call ptr @BlurImage(ptr noundef nonnull %26, double noundef %2, double noundef %3, ptr noundef %4) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %26) #15
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %32, %34 ], [ %26, %30 ]
  %38 = tail call i32 @LevelImage(ptr noundef nonnull %37, ptr noundef nonnull @.str.4) #15
  %39 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #15
  %40 = tail call ptr @AcquireAlignedMemory(i64 noundef %39, i64 noundef 8) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = tail call ptr @DestroyImage(ptr noundef nonnull %37) #15
  %44 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #15
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %46 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 561, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %45) #15
  br label %395

47:                                               ; preds = %36
  %48 = shl i64 %39, 3
  %49 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %40, i32 noundef 0, i64 noundef %48) #15
  %50 = icmp sgt i64 %39, 0
  br i1 %50, label %51, label %124

51:                                               ; preds = %47
  %52 = fcmp olt double %17, 1.000000e-15
  %53 = select i1 %52, double 1.000000e-15, double %3
  %54 = fmul double %53, 2.000000e+00
  %55 = fmul double %53, %54
  %56 = fmul double %53, 0x401921FB54442D18
  %57 = fmul double %53, %56
  %58 = fcmp olt double %3, 1.000000e-15
  br label %59

59:                                               ; preds = %51, %101
  %60 = phi i64 [ 0, %51 ], [ %109, %101 ]
  %61 = sub nsw i64 %39, %60
  %62 = shl i64 %61, 3
  %63 = tail call ptr @AcquireAlignedMemory(i64 noundef %61, i64 noundef %62) #16
  %64 = getelementptr inbounds ptr, ptr %40, i64 %60
  store ptr %63, ptr %64, align 8, !tbaa !55
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = icmp eq i64 %60, 0
  br i1 %67, label %118, label %111

68:                                               ; preds = %59
  %69 = add i64 %61, -1
  %70 = sdiv i64 %69, 2
  %71 = sub nsw i64 0, %70
  %72 = icmp ugt i64 %61, -9223372036854775808
  br i1 %72, label %101, label %73

73:                                               ; preds = %68
  %74 = tail call i64 @llvm.abs.i64(i64 %70, i1 true)
  br label %75

75:                                               ; preds = %73, %98
  %76 = phi i64 [ %99, %98 ], [ %71, %73 ]
  %77 = phi i64 [ %95, %98 ], [ 0, %73 ]
  %78 = phi double [ %94, %98 ], [ 0.000000e+00, %73 ]
  %79 = mul nsw i64 %76, %76
  %80 = sitofp i64 %79 to double
  br label %81

81:                                               ; preds = %75, %81
  %82 = phi i64 [ %71, %75 ], [ %96, %81 ]
  %83 = phi i64 [ %77, %75 ], [ %95, %81 ]
  %84 = phi double [ %78, %75 ], [ %94, %81 ]
  %85 = sitofp i64 %82 to double
  %86 = tail call double @llvm.fmuladd.f64(double %85, double %85, double %80)
  %87 = fneg double %86
  %88 = fdiv double %87, %55
  %89 = tail call double @exp(double noundef %88) #15
  %90 = fneg double %89
  %91 = fdiv double %90, %57
  %92 = load ptr, ptr %64, align 8, !tbaa !55
  %93 = getelementptr inbounds double, ptr %92, i64 %83
  store double %91, ptr %93, align 8, !tbaa !56
  %94 = fadd double %84, %91
  %95 = add nsw i64 %83, 1
  %96 = add i64 %82, 1
  %97 = icmp eq i64 %82, %74
  br i1 %97, label %98, label %81, !llvm.loop !100

98:                                               ; preds = %81
  %99 = add i64 %76, 1
  %100 = icmp eq i64 %76, %74
  br i1 %100, label %101, label %75, !llvm.loop !101

101:                                              ; preds = %98, %68
  %102 = phi ptr [ %63, %68 ], [ %92, %98 ]
  %103 = phi double [ 0.000000e+00, %68 ], [ %94, %98 ]
  %104 = phi i64 [ -1, %68 ], [ %83, %98 ]
  %105 = fmul double %103, -2.000000e+00
  %106 = sdiv i64 %104, 2
  %107 = getelementptr inbounds double, ptr %102, i64 %106
  %108 = select i1 %58, double 1.000000e+00, double %105
  store double %108, ptr %107, align 8, !tbaa !56
  %109 = add nuw nsw i64 %60, 2
  %110 = icmp slt i64 %109, %39
  br i1 %110, label %59, label %124, !llvm.loop !102

111:                                              ; preds = %66, %111
  %112 = phi i64 [ %113, %111 ], [ %60, %66 ]
  %113 = add nsw i64 %112, -2
  %114 = getelementptr inbounds ptr, ptr %40, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !55
  %116 = tail call ptr @RelinquishAlignedMemory(ptr noundef %115) #15
  store ptr %116, ptr %114, align 8, !tbaa !55
  %117 = icmp sgt i64 %112, 3
  br i1 %117, label %111, label %118, !llvm.loop !103

118:                                              ; preds = %111, %66
  %119 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %40) #15
  %120 = tail call ptr @DestroyImage(ptr noundef nonnull %37) #15
  %121 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #15
  %122 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %123 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 594, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %122) #15
  br label %395

124:                                              ; preds = %101, %47
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #15
  call fastcc void @SetMagickPixelPacketBias(ptr noundef %0, ptr noundef nonnull %6) #13
  %125 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #15
  %126 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %37, ptr noundef %4) #15
  %127 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %4) #15
  %128 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %129 = load i64, ptr %128, align 8, !tbaa !54
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %375

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %133 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %134 = uitofp i64 %39 to double
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %140 = and i32 %1, 8
  %141 = icmp eq i32 %140, 0
  %142 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %143 = and i32 %1, 1
  %144 = icmp eq i32 %143, 0
  %145 = and i32 %1, 2
  %146 = icmp eq i32 %145, 0
  %147 = and i32 %1, 4
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %1, 32
  %150 = icmp eq i32 %149, 0
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %152 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %153 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %154

154:                                              ; preds = %131, %367
  %155 = phi i64 [ 0, %131 ], [ %370, %367 ]
  %156 = phi i64 [ 0, %131 ], [ %369, %367 ]
  %157 = phi i32 [ 1, %131 ], [ %368, %367 ]
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %367, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %132, align 8, !tbaa !53
  %161 = call ptr @GetCacheViewVirtualPixels(ptr noundef %126, i64 noundef 0, i64 noundef %155, i64 noundef %160, i64 noundef 1, ptr noundef %4) #17
  %162 = load i64, ptr %133, align 8, !tbaa !53
  %163 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %127, i64 noundef 0, i64 noundef %155, i64 noundef %162, i64 noundef 1, ptr noundef %4) #17
  %164 = icmp eq ptr %161, null
  %165 = icmp eq ptr %163, null
  %166 = select i1 %164, i1 true, i1 %165
  br i1 %166, label %367, label %167

167:                                              ; preds = %159
  %168 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %127) #15
  %169 = load i64, ptr %133, align 8, !tbaa !53
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %355

171:                                              ; preds = %167
  %172 = icmp eq ptr %168, null
  br label %173

173:                                              ; preds = %171, %349
  %174 = phi i64 [ 0, %171 ], [ %352, %349 ]
  %175 = phi ptr [ %163, %171 ], [ %350, %349 ]
  %176 = phi ptr [ %161, %171 ], [ %351, %349 ]
  %177 = call float @GetPixelIntensity(ptr noundef nonnull %37, ptr noundef nonnull %176) #17
  %178 = fpext float %177 to double
  %179 = call double @llvm.fmuladd.f64(double %178, double 0xBEF0001000100010, double 1.000000e+00)
  %180 = call double @llvm.fmuladd.f64(double %134, double %179, double -5.000000e-01)
  %181 = call double @llvm.ceil.f64(double %180)
  %182 = fptosi double %181 to i64
  %183 = icmp slt i64 %182, 0
  %184 = call i64 @llvm.smin.i64(i64 %39, i64 %182)
  %185 = and i64 %184, -2
  %186 = select i1 %183, i64 0, i64 %185
  %187 = sub i64 %39, %186
  %188 = sdiv i64 %187, -2
  %189 = add i64 %188, %174
  %190 = lshr i64 %187, 1
  %191 = sub nsw i64 %155, %190
  %192 = call ptr @GetCacheViewVirtualPixels(ptr noundef %125, i64 noundef %189, i64 noundef %191, i64 noundef %187, i64 noundef %187, ptr noundef %4) #17
  %193 = icmp eq ptr %192, null
  br i1 %193, label %355, label %194

194:                                              ; preds = %173
  %195 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %125) #15
  %196 = load float, ptr %135, align 8, !tbaa !62
  %197 = fpext float %196 to double
  %198 = load float, ptr %136, align 4, !tbaa !65
  %199 = fpext float %198 to double
  %200 = load float, ptr %137, align 8, !tbaa !66
  %201 = fpext float %200 to double
  %202 = load float, ptr %138, align 4, !tbaa !67
  %203 = fpext float %202 to double
  %204 = load float, ptr %139, align 8, !tbaa !68
  %205 = fpext float %204 to double
  %206 = icmp sgt i64 %187, 0
  br i1 %206, label %207, label %308

207:                                              ; preds = %194
  %208 = getelementptr inbounds ptr, ptr %40, i64 %186
  %209 = load ptr, ptr %208, align 8, !tbaa !55
  %210 = icmp eq ptr %195, null
  %211 = getelementptr inbounds i16, ptr %195, i64 %174
  br label %212

212:                                              ; preds = %207, %305
  %213 = phi i64 [ 0, %207 ], [ %306, %305 ]
  %214 = phi ptr [ %209, %207 ], [ %301, %305 ]
  %215 = phi double [ %197, %207 ], [ %255, %305 ]
  %216 = phi double [ %199, %207 ], [ %264, %305 ]
  %217 = phi double [ %201, %207 ], [ %272, %305 ]
  %218 = phi double [ %203, %207 ], [ %280, %305 ]
  %219 = phi double [ %205, %207 ], [ %299, %305 ]
  %220 = phi double [ 0.000000e+00, %207 ], [ %300, %305 ]
  %221 = phi ptr [ %192, %207 ], [ %302, %305 ]
  %222 = mul i64 %213, %187
  %223 = getelementptr inbounds i16, ptr %211, i64 %222
  br label %224

224:                                              ; preds = %212, %297
  %225 = phi i64 [ 0, %212 ], [ %303, %297 ]
  %226 = phi ptr [ %214, %212 ], [ %301, %297 ]
  %227 = phi double [ %215, %212 ], [ %255, %297 ]
  %228 = phi double [ %216, %212 ], [ %264, %297 ]
  %229 = phi double [ %217, %212 ], [ %272, %297 ]
  %230 = phi double [ %218, %212 ], [ %280, %297 ]
  %231 = phi double [ %219, %212 ], [ %299, %297 ]
  %232 = phi double [ %220, %212 ], [ %300, %297 ]
  %233 = phi ptr [ %221, %212 ], [ %302, %297 ]
  br i1 %141, label %245, label %234

234:                                              ; preds = %224
  %235 = load i32, ptr %142, align 8, !tbaa !69
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %233, i64 0, i32 3
  %239 = load i16, ptr %238, align 2, !tbaa !70
  %240 = xor i16 %239, -1
  %241 = uitofp i16 %240 to double
  %242 = fmul double %241, 0x3EF0001000100010
  %243 = fptrunc double %242 to float
  %244 = fpext float %243 to double
  br label %245

245:                                              ; preds = %237, %234, %224
  %246 = phi double [ %244, %237 ], [ 1.000000e+00, %234 ], [ 1.000000e+00, %224 ]
  br i1 %144, label %254, label %247

247:                                              ; preds = %245
  %248 = load double, ptr %226, align 8, !tbaa !56
  %249 = fmul double %246, %248
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %233, i64 0, i32 2
  %251 = load i16, ptr %250, align 2, !tbaa !71
  %252 = uitofp i16 %251 to double
  %253 = call double @llvm.fmuladd.f64(double %249, double %252, double %227)
  br label %254

254:                                              ; preds = %247, %245
  %255 = phi double [ %253, %247 ], [ %227, %245 ]
  br i1 %146, label %263, label %256

256:                                              ; preds = %254
  %257 = load double, ptr %226, align 8, !tbaa !56
  %258 = fmul double %246, %257
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %233, i64 0, i32 1
  %260 = load i16, ptr %259, align 2, !tbaa !72
  %261 = uitofp i16 %260 to double
  %262 = call double @llvm.fmuladd.f64(double %258, double %261, double %228)
  br label %263

263:                                              ; preds = %256, %254
  %264 = phi double [ %262, %256 ], [ %228, %254 ]
  br i1 %148, label %271, label %265

265:                                              ; preds = %263
  %266 = load double, ptr %226, align 8, !tbaa !56
  %267 = fmul double %246, %266
  %268 = load i16, ptr %233, align 2, !tbaa !73
  %269 = uitofp i16 %268 to double
  %270 = call double @llvm.fmuladd.f64(double %267, double %269, double %229)
  br label %271

271:                                              ; preds = %265, %263
  %272 = phi double [ %270, %265 ], [ %229, %263 ]
  br i1 %141, label %279, label %273

273:                                              ; preds = %271
  %274 = load double, ptr %226, align 8, !tbaa !56
  %275 = getelementptr inbounds %struct._PixelPacket, ptr %233, i64 0, i32 3
  %276 = load i16, ptr %275, align 2, !tbaa !70
  %277 = uitofp i16 %276 to double
  %278 = call double @llvm.fmuladd.f64(double %274, double %277, double %230)
  br label %279

279:                                              ; preds = %273, %271
  %280 = phi double [ %278, %273 ], [ %230, %271 ]
  br i1 %150, label %281, label %283

281:                                              ; preds = %279
  %282 = load double, ptr %226, align 8, !tbaa !56
  br label %297

283:                                              ; preds = %279
  %284 = load i32, ptr %151, align 4, !tbaa !74
  %285 = icmp eq i32 %284, 12
  %286 = load double, ptr %226, align 8, !tbaa !56
  br i1 %285, label %287, label %297

287:                                              ; preds = %283
  %288 = fmul double %246, %286
  br i1 %210, label %293, label %289

289:                                              ; preds = %287
  %290 = getelementptr inbounds i16, ptr %223, i64 %225
  %291 = load i16, ptr %290, align 2, !tbaa !75
  %292 = zext i16 %291 to i32
  br label %293

293:                                              ; preds = %287, %289
  %294 = phi i32 [ %292, %289 ], [ 0, %287 ]
  %295 = sitofp i32 %294 to double
  %296 = call double @llvm.fmuladd.f64(double %288, double %295, double %231)
  br label %297

297:                                              ; preds = %281, %293, %283
  %298 = phi double [ %286, %293 ], [ %286, %283 ], [ %282, %281 ]
  %299 = phi double [ %296, %293 ], [ %231, %283 ], [ %231, %281 ]
  %300 = call double @llvm.fmuladd.f64(double %298, double %246, double %232)
  %301 = getelementptr inbounds double, ptr %226, i64 1
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %233, i64 1
  %303 = add nuw nsw i64 %225, 1
  %304 = icmp eq i64 %303, %187
  br i1 %304, label %305, label %224, !llvm.loop !104

305:                                              ; preds = %297
  %306 = add nuw nsw i64 %213, 1
  %307 = icmp eq i64 %306, %187
  br i1 %307, label %308, label %212, !llvm.loop !105

308:                                              ; preds = %305, %194
  %309 = phi double [ 0.000000e+00, %194 ], [ %300, %305 ]
  %310 = phi double [ %205, %194 ], [ %299, %305 ]
  %311 = phi double [ %203, %194 ], [ %280, %305 ]
  %312 = phi double [ %201, %194 ], [ %272, %305 ]
  %313 = phi double [ %199, %194 ], [ %264, %305 ]
  %314 = phi double [ %197, %194 ], [ %255, %305 ]
  %315 = fcmp olt double %309, 0.000000e+00
  %316 = select i1 %315, double 0.000000e+00, double %309
  %317 = call fastcc double @PerceptibleReciprocal(double noundef %316) #13
  br i1 %144, label %323, label %318

318:                                              ; preds = %308
  %319 = fmul double %314, %317
  %320 = fptrunc double %319 to float
  %321 = call fastcc zeroext i16 @ClampToQuantum(float noundef %320) #13
  %322 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 2
  store i16 %321, ptr %322, align 2, !tbaa !71
  br label %323

323:                                              ; preds = %318, %308
  br i1 %146, label %329, label %324

324:                                              ; preds = %323
  %325 = fmul double %313, %317
  %326 = fptrunc double %325 to float
  %327 = call fastcc zeroext i16 @ClampToQuantum(float noundef %326) #13
  %328 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 1
  store i16 %327, ptr %328, align 2, !tbaa !72
  br label %329

329:                                              ; preds = %324, %323
  br i1 %148, label %334, label %330

330:                                              ; preds = %329
  %331 = fmul double %312, %317
  %332 = fptrunc double %331 to float
  %333 = call fastcc zeroext i16 @ClampToQuantum(float noundef %332) #13
  store i16 %333, ptr %175, align 2, !tbaa !73
  br label %334

334:                                              ; preds = %330, %329
  br i1 %141, label %339, label %335

335:                                              ; preds = %334
  %336 = fptrunc double %311 to float
  %337 = call fastcc zeroext i16 @ClampToQuantum(float noundef %336) #13
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 0, i32 3
  store i16 %337, ptr %338, align 2, !tbaa !70
  br label %339

339:                                              ; preds = %335, %334
  br i1 %150, label %349, label %340

340:                                              ; preds = %339
  %341 = load i32, ptr %151, align 4, !tbaa !74
  %342 = icmp ne i32 %341, 12
  %343 = select i1 %342, i1 true, i1 %172
  br i1 %343, label %349, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds i16, ptr %168, i64 %174
  %346 = fmul double %310, %317
  %347 = fptrunc double %346 to float
  %348 = call fastcc zeroext i16 @ClampToQuantum(float noundef %347) #13
  store i16 %348, ptr %345, align 2, !tbaa !75
  br label %349

349:                                              ; preds = %339, %340, %344
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %175, i64 1
  %351 = getelementptr inbounds %struct._PixelPacket, ptr %176, i64 1
  %352 = add nuw nsw i64 %174, 1
  %353 = load i64, ptr %133, align 8, !tbaa !53
  %354 = icmp slt i64 %352, %353
  br i1 %354, label %173, label %355, !llvm.loop !106

355:                                              ; preds = %349, %173, %167
  %356 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %127, ptr noundef %4) #17
  %357 = icmp ne i32 %356, 0
  %358 = zext i1 %357 to i32
  %359 = load ptr, ptr %152, align 8, !tbaa !79
  %360 = icmp eq ptr %359, null
  br i1 %360, label %367, label %361

361:                                              ; preds = %355
  %362 = add nsw i64 %156, 1
  %363 = load i64, ptr %153, align 8, !tbaa !54
  %364 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %156, i64 noundef %363) #13
  %365 = icmp eq i32 %364, 0
  %366 = select i1 %365, i32 0, i32 %358
  br label %367

367:                                              ; preds = %355, %361, %159, %154
  %368 = phi i32 [ 0, %154 ], [ 0, %159 ], [ %366, %361 ], [ %358, %355 ]
  %369 = phi i64 [ %156, %154 ], [ %156, %159 ], [ %362, %361 ], [ %156, %355 ]
  %370 = add nuw nsw i64 %155, 1
  %371 = load i64, ptr %128, align 8, !tbaa !54
  %372 = icmp slt i64 %370, %371
  br i1 %372, label %154, label %373, !llvm.loop !107

373:                                              ; preds = %367
  %374 = icmp eq i32 %368, 0
  br label %375

375:                                              ; preds = %373, %124
  %376 = phi i1 [ false, %124 ], [ %374, %373 ]
  %377 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %378 = load i32, ptr %377, align 8, !tbaa !81
  %379 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 77
  store i32 %378, ptr %379, align 8, !tbaa !81
  %380 = call ptr @DestroyCacheView(ptr noundef %127) #15
  %381 = call ptr @DestroyCacheView(ptr noundef %126) #15
  %382 = call ptr @DestroyCacheView(ptr noundef %125) #15
  %383 = call ptr @DestroyImage(ptr noundef nonnull %37) #15
  br i1 %50, label %384, label %391

384:                                              ; preds = %375, %384
  %385 = phi i64 [ %389, %384 ], [ 0, %375 ]
  %386 = getelementptr inbounds ptr, ptr %40, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !55
  %388 = call ptr @RelinquishAlignedMemory(ptr noundef %387) #15
  store ptr %388, ptr %386, align 8, !tbaa !55
  %389 = add nuw nsw i64 %385, 2
  %390 = icmp slt i64 %389, %39
  br i1 %390, label %384, label %391, !llvm.loop !108

391:                                              ; preds = %384, %375
  %392 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %40) #15
  br i1 %376, label %393, label %395

393:                                              ; preds = %391
  %394 = call ptr @DestroyImage(ptr noundef nonnull %14) #15
  br label %395

395:                                              ; preds = %391, %393, %16, %13, %118, %42, %28, %22
  %396 = phi ptr [ null, %22 ], [ null, %28 ], [ null, %42 ], [ null, %118 ], [ null, %13 ], [ %14, %16 ], [ %394, %393 ], [ %14, %391 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  ret ptr %396
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #15
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call ptr @AccelerateBlurImage(ptr noundef nonnull %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %2, double noundef %3, double noundef %2, double noundef %3) #15
  %18 = call ptr @AcquireKernelInfo(ptr noundef nonnull %6) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 822, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %21) #15
  br label %26

23:                                               ; preds = %16
  %24 = call ptr @MorphologyApply(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %18, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #15
  %25 = call ptr @DestroyKernelInfo(ptr noundef nonnull %18) #15
  br label %26

26:                                               ; preds = %13, %23, %20
  %27 = phi ptr [ null, %20 ], [ %24, %23 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @AccelerateBlurImage(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireKernelInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @MorphologyApply(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyKernelInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ConvolveImage(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @ConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ConvolveImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @AcquireKernelInfo(ptr noundef null) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 897, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #15
  br label %45

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %2, ptr %12, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %2, ptr %13, align 8, !tbaa !85
  %14 = add i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 4
  store i64 %15, ptr %17, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %18, align 8, !tbaa !88
  %19 = shl i64 %2, 3
  %20 = tail call ptr @AcquireAlignedMemory(i64 noundef %2, i64 noundef %19) #16
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !89
  %22 = icmp eq ptr %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = mul i64 %2, %2
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %30, label %37

26:                                               ; preds = %11
  %27 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #15
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 908, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %28) #15
  br label %45

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %35, %30 ], [ 0, %23 ]
  %32 = getelementptr inbounds double, ptr %3, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !56
  %34 = getelementptr inbounds double, ptr %20, i64 %31
  store double %33, ptr %34, align 8, !tbaa !56
  %35 = add nuw nsw i64 %31, 1
  %36 = icmp eq i64 %35, %24
  br i1 %36, label %37, label %30, !llvm.loop !109

37:                                               ; preds = %30, %23
  %38 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %4) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %6, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #15
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ %38, %37 ]
  %44 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #15
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
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1083, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @AccelerateDespeckleImage(ptr noundef nonnull %0, ptr noundef %1) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %212

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !54
  %17 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %14, i64 noundef %16, i32 noundef 1, ptr noundef %1) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %212, label %19

19:                                               ; preds = %12
  %20 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %17, i32 noundef 1) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 58
  tail call void @InheritException(ptr noundef %1, ptr noundef nonnull %23) #15
  %24 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #15
  br label %212

25:                                               ; preds = %19
  %26 = load i64, ptr %13, align 8, !tbaa !53
  %27 = add i64 %26, 2
  %28 = load i64, ptr %15, align 8, !tbaa !54
  %29 = add i64 %28, 2
  %30 = mul i64 %29, %27
  %31 = tail call ptr @AcquireVirtualMemory(i64 noundef %30, i64 noundef 2) #16
  %32 = tail call ptr @AcquireVirtualMemory(i64 noundef %30, i64 noundef 2) #16
  %33 = icmp eq ptr %31, null
  %34 = icmp eq ptr %32, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  br i1 %34, label %39, label %37

37:                                               ; preds = %36
  %38 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %32) #15
  br label %39

39:                                               ; preds = %37, %36
  br i1 %33, label %42, label %40

40:                                               ; preds = %39
  %41 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %31) #15
  br label %42

42:                                               ; preds = %40, %39
  %43 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #15
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %45 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1113, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %44) #15
  br label %212

46:                                               ; preds = %25
  %47 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %31) #15
  %48 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %32) #15
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !74
  %51 = icmp eq i32 %50, 12
  %52 = select i1 %51, i64 5, i64 4
  %53 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #15
  %54 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %17, ptr noundef %1) #15
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
  %64 = load i32, ptr %55, align 8, !tbaa !69
  %65 = icmp eq i32 %64, 0
  %66 = icmp eq i64 %61, 3
  %67 = and i1 %66, %65
  br i1 %67, label %197, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @ResetMagickMemory(ptr noundef %47, i32 noundef 0, i64 noundef %56) #15
  %70 = load i64, ptr %15, align 8, !tbaa !54
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %68
  %73 = load i64, ptr %13, align 8, !tbaa !53
  br label %74

74:                                               ; preds = %72, %108
  %75 = phi i64 [ %83, %108 ], [ %73, %72 ]
  %76 = phi i64 [ %109, %108 ], [ %73, %72 ]
  %77 = phi i64 [ %110, %108 ], [ 0, %72 ]
  %78 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %53, i64 noundef 0, i64 noundef %77, i64 noundef %75, i64 noundef 1, ptr noundef %1) #17
  %79 = icmp eq ptr %78, null
  br i1 %79, label %113, label %80

80:                                               ; preds = %74
  %81 = add nsw i64 %76, 2
  %82 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %53) #15
  %83 = load i64, ptr %13, align 8, !tbaa !53
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
  %101 = load i16, ptr %100, align 2, !tbaa !75
  %102 = getelementptr inbounds i16, ptr %47, i64 %88
  store i16 %101, ptr %102, align 2, !tbaa !75
  br label %103

103:                                              ; preds = %99, %87
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %105 = add nuw nsw i64 %90, 1
  %106 = add nsw i64 %88, 1
  %107 = icmp eq i64 %105, %83
  br i1 %107, label %108, label %87, !llvm.loop !110

108:                                              ; preds = %103, %80
  %109 = phi i64 [ %81, %80 ], [ %88, %103 ]
  %110 = add nuw nsw i64 %77, 1
  %111 = load i64, ptr %15, align 8, !tbaa !54
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %74, label %113, !llvm.loop !111

113:                                              ; preds = %108, %74, %68
  %114 = tail call ptr @ResetMagickMemory(ptr noundef %48, i32 noundef 0, i64 noundef %56) #15
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ 0, %113 ], [ %131, %115 ]
  %117 = getelementptr inbounds [4 x i64], ptr @DespeckleImage.X, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !112
  %119 = getelementptr inbounds [4 x i64], ptr @DespeckleImage.Y, i64 0, i64 %116
  %120 = load i64, ptr %119, align 8, !tbaa !112
  %121 = load i64, ptr %13, align 8, !tbaa !53
  %122 = load i64, ptr %15, align 8, !tbaa !54
  tail call fastcc void @Hull(i64 noundef %118, i64 noundef %120, i64 noundef %121, i64 noundef %122, i32 noundef 1, ptr noundef %47, ptr noundef %48) #13
  %123 = sub nsw i64 0, %118
  %124 = sub nsw i64 0, %120
  %125 = load i64, ptr %13, align 8, !tbaa !53
  %126 = load i64, ptr %15, align 8, !tbaa !54
  tail call fastcc void @Hull(i64 noundef %123, i64 noundef %124, i64 noundef %125, i64 noundef %126, i32 noundef 1, ptr noundef %47, ptr noundef %48) #13
  %127 = load i64, ptr %13, align 8, !tbaa !53
  %128 = load i64, ptr %15, align 8, !tbaa !54
  tail call fastcc void @Hull(i64 noundef %123, i64 noundef %124, i64 noundef %127, i64 noundef %128, i32 noundef -1, ptr noundef %47, ptr noundef %48) #13
  %129 = load i64, ptr %13, align 8, !tbaa !53
  %130 = load i64, ptr %15, align 8, !tbaa !54
  tail call fastcc void @Hull(i64 noundef %118, i64 noundef %120, i64 noundef %129, i64 noundef %130, i32 noundef -1, ptr noundef %47, ptr noundef %48) #13
  %131 = add nuw nsw i64 %116, 1
  %132 = icmp eq i64 %131, 4
  br i1 %132, label %133, label %115, !llvm.loop !113

133:                                              ; preds = %115
  %134 = load i64, ptr %15, align 8, !tbaa !54
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %189

136:                                              ; preds = %133
  %137 = load i64, ptr %13, align 8, !tbaa !53
  br label %142

138:                                              ; preds = %185
  %139 = add nuw nsw i64 %144, 1
  %140 = load i64, ptr %15, align 8, !tbaa !54
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %189, !llvm.loop !114

142:                                              ; preds = %136, %138
  %143 = phi i64 [ %186, %138 ], [ %137, %136 ]
  %144 = phi i64 [ %139, %138 ], [ 0, %136 ]
  %145 = load i64, ptr %57, align 8, !tbaa !53
  %146 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %54, i64 noundef 0, i64 noundef %144, i64 noundef %145, i64 noundef 1, ptr noundef %1) #17
  %147 = icmp eq ptr %146, null
  br i1 %147, label %189, label %148

148:                                              ; preds = %142
  %149 = add nsw i64 %143, 2
  %150 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #15
  %151 = load i64, ptr %13, align 8, !tbaa !53
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
  %162 = load i16, ptr %161, align 2, !tbaa !75
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 2
  store i16 %162, ptr %163, align 2, !tbaa !71
  br label %180

164:                                              ; preds = %156
  %165 = getelementptr inbounds i16, ptr %47, i64 %157
  %166 = load i16, ptr %165, align 2, !tbaa !75
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 1
  store i16 %166, ptr %167, align 2, !tbaa !72
  br label %180

168:                                              ; preds = %156
  %169 = getelementptr inbounds i16, ptr %47, i64 %157
  %170 = load i16, ptr %169, align 2, !tbaa !75
  store i16 %170, ptr %158, align 2, !tbaa !73
  br label %180

171:                                              ; preds = %156
  %172 = getelementptr inbounds i16, ptr %47, i64 %157
  %173 = load i16, ptr %172, align 2, !tbaa !75
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 3
  store i16 %173, ptr %174, align 2, !tbaa !70
  br label %180

175:                                              ; preds = %156
  br i1 %155, label %180, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds i16, ptr %150, i64 %159
  %178 = getelementptr inbounds i16, ptr %47, i64 %157
  %179 = load i16, ptr %178, align 2, !tbaa !75
  store i16 %179, ptr %177, align 2, !tbaa !75
  br label %180

180:                                              ; preds = %156, %175, %176, %171, %168, %164, %160
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 1
  %182 = add nuw nsw i64 %159, 1
  %183 = add nsw i64 %157, 1
  %184 = icmp eq i64 %182, %151
  br i1 %184, label %185, label %156, !llvm.loop !115

185:                                              ; preds = %180, %148
  %186 = phi i64 [ %149, %148 ], [ %157, %180 ]
  %187 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %54, ptr noundef %1) #17
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %138

189:                                              ; preds = %138, %142, %185, %133
  %190 = phi i32 [ 1, %133 ], [ 0, %185 ], [ 1, %142 ], [ 1, %138 ]
  %191 = load ptr, ptr %58, align 8, !tbaa !79
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %61, i64 noundef %52) #13
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, i32 0, i32 %190
  br label %197

197:                                              ; preds = %189, %193, %63, %59
  %198 = phi i32 [ 0, %59 ], [ 1, %63 ], [ %196, %193 ], [ %190, %189 ]
  %199 = add nuw nsw i64 %61, 1
  %200 = icmp eq i64 %199, %52
  br i1 %200, label %201, label %59, !llvm.loop !116

201:                                              ; preds = %197
  %202 = tail call ptr @DestroyCacheView(ptr noundef %54) #15
  %203 = tail call ptr @DestroyCacheView(ptr noundef %53) #15
  %204 = tail call ptr @RelinquishVirtualMemory(ptr noundef %32) #15
  %205 = tail call ptr @RelinquishVirtualMemory(ptr noundef %31) #15
  %206 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %207 = load i32, ptr %206, align 8, !tbaa !81
  %208 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 77
  store i32 %207, ptr %208, align 8, !tbaa !81
  %209 = icmp eq i32 %198, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #15
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @Hull(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noalias nocapture noundef %5, ptr noalias nocapture noundef %6) unnamed_addr #9 !PGOFuncName !117 {
  %8 = add i64 %2, 2
  %9 = getelementptr inbounds i16, ptr %5, i64 %8
  %10 = getelementptr inbounds i16, ptr %6, i64 %8
  %11 = mul i64 %8, %1
  %12 = add i64 %11, %0
  %13 = getelementptr inbounds i16, ptr %9, i64 %12
  %14 = icmp sgt i64 %3, 0
  br i1 %14, label %15, label %147

15:                                               ; preds = %7
  %16 = icmp sgt i32 %4, 0
  %17 = icmp sgt i64 %2, 0
  br label %18

18:                                               ; preds = %15, %72
  %19 = phi i64 [ 0, %15 ], [ %73, %72 ]
  %20 = shl nuw nsw i64 %19, 1
  %21 = or disjoint i64 %20, 1
  %22 = mul i64 %19, %2
  %23 = add i64 %21, %22
  br i1 %16, label %28, label %24

24:                                               ; preds = %18
  br i1 %17, label %25, label %72

25:                                               ; preds = %24
  %26 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 2) #13, !range !118
  %27 = zext nneg i16 %26 to i64
  br label %52

28:                                               ; preds = %18
  br i1 %17, label %29, label %72

29:                                               ; preds = %28
  %30 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 2) #13, !range !118
  %31 = zext nneg i16 %30 to i64
  br label %32

32:                                               ; preds = %29, %46
  %33 = phi i64 [ 0, %29 ], [ %50, %46 ]
  %34 = phi i64 [ %23, %29 ], [ %49, %46 ]
  %35 = getelementptr inbounds i16, ptr %9, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !75
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds i16, ptr %13, i64 %34
  %39 = load i16, ptr %38, align 2, !tbaa !75
  %40 = zext i16 %39 to i64
  %41 = add nuw nsw i64 %31, %37
  %42 = icmp ugt i64 %41, %40
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #13, !range !118
  %45 = add i16 %44, %36
  br label %46

46:                                               ; preds = %43, %32
  %47 = phi i16 [ %45, %43 ], [ %36, %32 ]
  %48 = getelementptr inbounds i16, ptr %10, i64 %34
  store i16 %47, ptr %48, align 2, !tbaa !75
  %49 = add nsw i64 %34, 1
  %50 = add nuw nsw i64 %33, 1
  %51 = icmp eq i64 %50, %2
  br i1 %51, label %72, label %32, !llvm.loop !119

52:                                               ; preds = %25, %66
  %53 = phi i64 [ 0, %25 ], [ %70, %66 ]
  %54 = phi i64 [ %23, %25 ], [ %69, %66 ]
  %55 = getelementptr inbounds i16, ptr %9, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !75
  %57 = zext i16 %56 to i64
  %58 = getelementptr inbounds i16, ptr %13, i64 %54
  %59 = load i16, ptr %58, align 2, !tbaa !75
  %60 = zext i16 %59 to i64
  %61 = sub nsw i64 %57, %27
  %62 = icmp slt i64 %61, %60
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #13, !range !118
  %65 = sub i16 %56, %64
  br label %66

66:                                               ; preds = %63, %52
  %67 = phi i16 [ %65, %63 ], [ %56, %52 ]
  %68 = getelementptr inbounds i16, ptr %10, i64 %54
  store i16 %67, ptr %68, align 2, !tbaa !75
  %69 = add nsw i64 %54, 1
  %70 = add nuw nsw i64 %53, 1
  %71 = icmp eq i64 %70, %2
  br i1 %71, label %72, label %52, !llvm.loop !120

72:                                               ; preds = %66, %46, %24, %28
  %73 = add nuw nsw i64 %19, 1
  %74 = icmp eq i64 %73, %3
  br i1 %74, label %75, label %18, !llvm.loop !121

75:                                               ; preds = %72
  %76 = getelementptr inbounds i16, ptr %10, i64 %12
  %77 = sub i64 0, %12
  %78 = getelementptr inbounds i16, ptr %10, i64 %77
  br i1 %14, label %79, label %147

79:                                               ; preds = %75
  %80 = icmp sgt i32 %4, 0
  %81 = icmp sgt i64 %2, 0
  br label %82

82:                                               ; preds = %79, %144
  %83 = phi i64 [ 0, %79 ], [ %145, %144 ]
  %84 = shl nuw nsw i64 %83, 1
  %85 = or disjoint i64 %84, 1
  %86 = mul i64 %83, %2
  %87 = add i64 %85, %86
  br i1 %80, label %92, label %88

88:                                               ; preds = %82
  br i1 %81, label %89, label %144

89:                                               ; preds = %88
  %90 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 2) #13, !range !118
  %91 = zext nneg i16 %90 to i64
  br label %120

92:                                               ; preds = %82
  br i1 %81, label %93, label %144

93:                                               ; preds = %92
  %94 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 2) #13, !range !118
  %95 = zext nneg i16 %94 to i64
  br label %96

96:                                               ; preds = %93, %114
  %97 = phi i64 [ 0, %93 ], [ %118, %114 ]
  %98 = phi i64 [ %87, %93 ], [ %117, %114 ]
  %99 = getelementptr inbounds i16, ptr %10, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !75
  %101 = zext i16 %100 to i64
  %102 = getelementptr inbounds i16, ptr %78, i64 %98
  %103 = load i16, ptr %102, align 2, !tbaa !75
  %104 = zext i16 %103 to i64
  %105 = add nuw nsw i64 %95, %101
  %106 = icmp ugt i64 %105, %104
  br i1 %106, label %114, label %107

107:                                              ; preds = %96
  %108 = getelementptr inbounds i16, ptr %76, i64 %98
  %109 = load i16, ptr %108, align 2, !tbaa !75
  %110 = icmp ugt i16 %109, %100
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #13, !range !118
  %113 = add i16 %112, %100
  br label %114

114:                                              ; preds = %111, %107, %96
  %115 = phi i16 [ %113, %111 ], [ %100, %107 ], [ %100, %96 ]
  %116 = getelementptr inbounds i16, ptr %9, i64 %98
  store i16 %115, ptr %116, align 2, !tbaa !75
  %117 = add nsw i64 %98, 1
  %118 = add nuw nsw i64 %97, 1
  %119 = icmp eq i64 %118, %2
  br i1 %119, label %144, label %96, !llvm.loop !122

120:                                              ; preds = %89, %138
  %121 = phi i64 [ 0, %89 ], [ %142, %138 ]
  %122 = phi i64 [ %87, %89 ], [ %141, %138 ]
  %123 = getelementptr inbounds i16, ptr %10, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !75
  %125 = zext i16 %124 to i64
  %126 = getelementptr inbounds i16, ptr %78, i64 %122
  %127 = load i16, ptr %126, align 2, !tbaa !75
  %128 = zext i16 %127 to i64
  %129 = sub nsw i64 %125, %91
  %130 = icmp slt i64 %129, %128
  br i1 %130, label %138, label %131

131:                                              ; preds = %120
  %132 = getelementptr inbounds i16, ptr %76, i64 %122
  %133 = load i16, ptr %132, align 2, !tbaa !75
  %134 = icmp ult i16 %133, %124
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #13, !range !118
  %137 = sub i16 %124, %136
  br label %138

138:                                              ; preds = %135, %131, %120
  %139 = phi i16 [ %137, %135 ], [ %124, %131 ], [ %124, %120 ]
  %140 = getelementptr inbounds i16, ptr %9, i64 %122
  store i16 %139, ptr %140, align 2, !tbaa !75
  %141 = add nsw i64 %122, 1
  %142 = add nuw nsw i64 %121, 1
  %143 = icmp eq i64 %142, %2
  br i1 %143, label %144, label %120, !llvm.loop !123

144:                                              ; preds = %138, %114, %88, %92
  %145 = add nuw nsw i64 %83, 1
  %146 = icmp eq i64 %145, %3
  br i1 %146, label %147, label %82, !llvm.loop !124

147:                                              ; preds = %144, %7, %75
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth1D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @EmbossImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1378, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef %2) #15
  %13 = tail call ptr @AcquireKernelInfo(ptr noundef null) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1384, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %16) #15
  br label %120

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 1
  store i64 %12, ptr %19, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 2
  store i64 %12, ptr %20, align 8, !tbaa !85
  %21 = add i64 %12, -1
  %22 = sdiv i64 %21, 2
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 3
  store i64 %22, ptr %23, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 4
  store i64 %22, ptr %24, align 8, !tbaa !87
  %25 = shl i64 %12, 3
  %26 = tail call ptr @AcquireAlignedMemory(i64 noundef %12, i64 noundef %25) #16
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %13, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !89
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %13) #15
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1394, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %31) #15
  br label %120

33:                                               ; preds = %18
  %34 = load i64, ptr %19, align 8, !tbaa !83
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
  %55 = load i64, ptr %19, align 8, !tbaa !83
  br label %56

56:                                               ; preds = %54, %33
  %57 = phi i64 [ %55, %54 ], [ %34, %33 ]
  %58 = load i64, ptr %20, align 8, !tbaa !85
  %59 = mul i64 %58, %57
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %56
  %62 = load ptr, ptr %27, align 8, !tbaa !89
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
  %73 = tail call double @exp(double noundef %72) #15
  %74 = fmul double %68, %73
  %75 = fdiv double %74, %46
  %76 = load ptr, ptr %27, align 8, !tbaa !89
  %77 = getelementptr inbounds double, ptr %76, i64 %65
  %78 = icmp eq i64 %64, %50
  %79 = select i1 %78, double %75, double 0.000000e+00
  store double %79, ptr %77, align 8
  %80 = add nsw i64 %65, 1
  %81 = add i64 %64, 1
  %82 = icmp eq i64 %64, %47
  br i1 %82, label %83, label %63, !llvm.loop !125

83:                                               ; preds = %63
  %84 = add nsw i64 %50, -1
  %85 = add i64 %49, 1
  %86 = icmp eq i64 %49, %47
  br i1 %86, label %54, label %48, !llvm.loop !126

87:                                               ; preds = %61, %87
  %88 = phi double [ 0.000000e+00, %61 ], [ %92, %87 ]
  %89 = phi i64 [ 0, %61 ], [ %93, %87 ]
  %90 = getelementptr inbounds double, ptr %62, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !56
  %92 = fadd double %88, %91
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp eq i64 %93, %59
  br i1 %94, label %95, label %87, !llvm.loop !127

95:                                               ; preds = %87
  %96 = fcmp olt double %92, 0.000000e+00
  %97 = select i1 %96, double 0.000000e+00, double %92
  %98 = tail call fastcc double @PerceptibleReciprocal(double noundef %97) #13
  br i1 %60, label %99, label %108

99:                                               ; preds = %95
  %100 = load ptr, ptr %27, align 8, !tbaa !89
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi i64 [ 0, %99 ], [ %106, %101 ]
  %103 = getelementptr inbounds double, ptr %100, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !56
  %105 = fmul double %98, %104
  store double %105, ptr %103, align 8, !tbaa !56
  %106 = add nuw nsw i64 %102, 1
  %107 = icmp eq i64 %106, %59
  br i1 %107, label %108, label %101, !llvm.loop !128

108:                                              ; preds = %101, %56, %95
  %109 = tail call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %13, ptr noundef %3) #15
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %13) #15
  br label %117

113:                                              ; preds = %108
  %114 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %13, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %3) #15
  %115 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %13) #15
  %116 = icmp eq ptr %114, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %111, %113
  %118 = phi ptr [ %109, %111 ], [ %114, %113 ]
  %119 = tail call i32 @EqualizeImageChannel(ptr noundef nonnull %118, i32 noundef 134217471) #15
  br label %120

120:                                              ; preds = %113, %117, %29, %15
  %121 = phi ptr [ null, %15 ], [ null, %29 ], [ %118, %117 ], [ null, %113 ]
  ret ptr %121
}

; Function Attrs: optsize
declare i32 @EqualizeImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FilterImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @FilterImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FilterImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1514, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !83
  %17 = and i64 %16, 1
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1518, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, ptr noundef nonnull %20) #15
  br label %545

22:                                               ; preds = %14
  %23 = load i32, ptr %8, align 8, !tbaa !34
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %68, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %26 = uitofp i64 %16 to double
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !85
  %29 = uitofp i64 %28 to double
  %30 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, ptr noundef nonnull @.str.11, double noundef %26, double noundef %29) #15
  %31 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #15
  store ptr %31, ptr %7, align 8, !tbaa !55
  %32 = load i64, ptr %27, align 8, !tbaa !85
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  br label %37

37:                                               ; preds = %34, %56
  %38 = phi i64 [ %60, %56 ], [ 0, %34 ]
  %39 = phi ptr [ %57, %56 ], [ %36, %34 ]
  %40 = load ptr, ptr %7, align 8, !tbaa !55
  store i8 0, ptr %40, align 1, !tbaa !129
  %41 = sitofp i64 %38 to double
  %42 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %41) #15
  %43 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef nonnull %6) #15
  %44 = load i64, ptr %15, align 8, !tbaa !83
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %37, %46
  %47 = phi i64 [ %53, %46 ], [ 0, %37 ]
  %48 = phi ptr [ %49, %46 ], [ %39, %37 ]
  %49 = getelementptr inbounds double, ptr %48, i64 1
  %50 = load double, ptr %48, align 8, !tbaa !56
  %51 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.13, double noundef %50) #15
  %52 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef nonnull %6) #15
  %53 = add nuw nsw i64 %47, 1
  %54 = load i64, ptr %15, align 8, !tbaa !83
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %46, label %56, !llvm.loop !130

56:                                               ; preds = %46, %37
  %57 = phi ptr [ %39, %37 ], [ %49, %46 ]
  %58 = load ptr, ptr %7, align 8, !tbaa !55
  %59 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1550, ptr noundef nonnull @.str.2, ptr noundef %58) #15
  %60 = add nuw nsw i64 %38, 1
  %61 = load i64, ptr %27, align 8, !tbaa !85
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %37, label %63, !llvm.loop !131

63:                                               ; preds = %56
  %64 = load ptr, ptr %7, align 8, !tbaa !55
  br label %65

65:                                               ; preds = %63, %25
  %66 = phi ptr [ %64, %63 ], [ %31, %25 ]
  %67 = call ptr @DestroyString(ptr noundef %66) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  br label %68

68:                                               ; preds = %65, %22
  %69 = call ptr @AccelerateConvolveImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) #15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %545

71:                                               ; preds = %68
  %72 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #15
  %73 = icmp eq ptr %72, null
  br i1 %73, label %545, label %74

74:                                               ; preds = %71
  %75 = call i32 @SetImageStorageClass(ptr noundef nonnull %72, i32 noundef 1) #15
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._Image, ptr %72, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %78) #15
  %79 = call ptr @DestroyImage(ptr noundef nonnull %72) #15
  br label %545

80:                                               ; preds = %74
  %81 = load i64, ptr %15, align 8, !tbaa !83
  %82 = shl i64 %81, 2
  %83 = call ptr @AcquireAlignedMemory(i64 noundef %81, i64 noundef %82) #16
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = load i64, ptr %15, align 8, !tbaa !83
  %87 = mul i64 %86, %86
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !89
  br label %96

92:                                               ; preds = %80
  %93 = call ptr @DestroyImage(ptr noundef nonnull %72) #15
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %95 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1580, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %94) #15
  br label %545

96:                                               ; preds = %89, %96
  %97 = phi i64 [ 0, %89 ], [ %102, %96 ]
  %98 = getelementptr inbounds double, ptr %91, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !56
  %100 = fptrunc double %99 to float
  %101 = getelementptr inbounds float, ptr %83, i64 %97
  store float %100, ptr %101, align 4, !tbaa !95
  %102 = add nuw nsw i64 %97, 1
  %103 = icmp eq i64 %102, %87
  br i1 %103, label %104, label %96, !llvm.loop !132

104:                                              ; preds = %96, %85
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %5) #15
  call fastcc void @SetMagickPixelPacketBias(ptr noundef %0, ptr noundef nonnull %5) #13
  %105 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #15
  %106 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %72, ptr noundef %3) #15
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %108 = load i64, ptr %107, align 8, !tbaa !54
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %538

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 2
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %113 = getelementptr inbounds %struct._Image, ptr %72, i64 0, i32 7
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %118 = and i32 %1, 8
  %119 = icmp eq i32 %118, 0
  %120 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %121 = and i32 %1, 1
  %122 = icmp eq i32 %121, 0
  %123 = and i32 %1, 2
  %124 = icmp eq i32 %123, 0
  %125 = and i32 %1, 4
  %126 = icmp eq i32 %125, 0
  %127 = and i32 %1, 32
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %131

131:                                              ; preds = %110, %522
  %132 = phi i64 [ 0, %110 ], [ %525, %522 ]
  %133 = phi i64 [ 0, %110 ], [ %524, %522 ]
  %134 = phi i32 [ 1, %110 ], [ %523, %522 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %522, label %136

136:                                              ; preds = %131
  %137 = load i64, ptr %15, align 8, !tbaa !83
  %138 = add i64 %137, -1
  %139 = sdiv i64 %138, -2
  %140 = load i64, ptr %111, align 8, !tbaa !85
  %141 = add i64 %140, -1
  %142 = lshr i64 %141, 1
  %143 = sub nsw i64 %132, %142
  %144 = load i64, ptr %112, align 8, !tbaa !53
  %145 = add i64 %144, %137
  %146 = call ptr @GetCacheViewVirtualPixels(ptr noundef %105, i64 noundef %139, i64 noundef %143, i64 noundef %145, i64 noundef %140, ptr noundef %3) #17
  %147 = load i64, ptr %113, align 8, !tbaa !53
  %148 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %106, i64 noundef 0, i64 noundef %132, i64 noundef %147, i64 noundef 1, ptr noundef %3) #17
  %149 = icmp eq ptr %146, null
  %150 = icmp eq ptr %148, null
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %522, label %152

152:                                              ; preds = %136
  %153 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %105) #15
  %154 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %106) #15
  %155 = load i64, ptr %112, align 8, !tbaa !53
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %510

157:                                              ; preds = %152
  %158 = load <2 x float>, ptr %114, align 8, !tbaa !95
  %159 = fpext <2 x float> %158 to <2 x double>
  %160 = shufflevector <2 x double> %159, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %161 = load float, ptr %115, align 8, !tbaa !66
  %162 = fpext float %161 to double
  %163 = load float, ptr %116, align 4, !tbaa !67
  %164 = fpext float %163 to double
  %165 = load float, ptr %117, align 8, !tbaa !68
  %166 = fpext float %165 to double
  %167 = icmp eq ptr %154, null
  br label %168

168:                                              ; preds = %157, %504
  %169 = phi i64 [ 0, %157 ], [ %508, %504 ]
  %170 = phi ptr [ %148, %157 ], [ %507, %504 ]
  %171 = phi ptr [ %146, %157 ], [ %506, %504 ]
  %172 = phi ptr [ %153, %157 ], [ %505, %504 ]
  br i1 %119, label %173, label %175

173:                                              ; preds = %168
  %174 = load i64, ptr %15, align 8, !tbaa !83
  br label %186

175:                                              ; preds = %168
  %176 = load i32, ptr %120, align 8, !tbaa !69
  %177 = icmp eq i32 %176, 0
  %178 = load i64, ptr %15, align 8, !tbaa !83
  br i1 %177, label %186, label %179

179:                                              ; preds = %175
  %180 = icmp sgt i64 %178, 0
  br i1 %180, label %181, label %381

181:                                              ; preds = %179
  %182 = load i64, ptr %111, align 8, !tbaa !85
  %183 = icmp sgt i64 %182, 0
  %184 = add nuw i64 %178, %155
  %185 = shl i64 %182, 2
  br label %334

186:                                              ; preds = %173, %175
  %187 = phi i64 [ %174, %173 ], [ %178, %175 ]
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %232

189:                                              ; preds = %186
  %190 = load i64, ptr %111, align 8, !tbaa !85
  %191 = icmp sgt i64 %190, 0
  %192 = add nuw i64 %187, %155
  %193 = shl i64 %190, 2
  br label %194

194:                                              ; preds = %189, %225
  %195 = phi i64 [ 0, %189 ], [ %230, %225 ]
  %196 = phi ptr [ %171, %189 ], [ %229, %225 ]
  %197 = phi ptr [ %83, %189 ], [ %227, %225 ]
  %198 = phi double [ %162, %189 ], [ %226, %225 ]
  %199 = phi <2 x double> [ %160, %189 ], [ %228, %225 ]
  br i1 %191, label %200, label %225

200:                                              ; preds = %194, %200
  %201 = phi i64 [ %221, %200 ], [ 0, %194 ]
  %202 = phi ptr [ %220, %200 ], [ %197, %194 ]
  %203 = phi double [ %219, %200 ], [ %198, %194 ]
  %204 = phi <2 x double> [ %214, %200 ], [ %199, %194 ]
  %205 = load float, ptr %202, align 4, !tbaa !95
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 %201
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 %201, i32 1
  %208 = load <2 x i16>, ptr %207, align 2, !tbaa !75
  %209 = uitofp <2 x i16> %208 to <2 x float>
  %210 = insertelement <2 x float> poison, float %205, i64 0
  %211 = shufflevector <2 x float> %210, <2 x float> poison, <2 x i32> zeroinitializer
  %212 = fmul <2 x float> %211, %209
  %213 = fpext <2 x float> %212 to <2 x double>
  %214 = fadd <2 x double> %204, %213
  %215 = load i16, ptr %206, align 2, !tbaa !73
  %216 = uitofp i16 %215 to float
  %217 = fmul float %205, %216
  %218 = fpext float %217 to double
  %219 = fadd double %203, %218
  %220 = getelementptr inbounds float, ptr %202, i64 1
  %221 = add nuw nsw i64 %201, 1
  %222 = icmp eq i64 %221, %190
  br i1 %222, label %223, label %200, !llvm.loop !133

223:                                              ; preds = %200
  %224 = getelementptr i8, ptr %197, i64 %193
  br label %225

225:                                              ; preds = %223, %194
  %226 = phi double [ %198, %194 ], [ %219, %223 ]
  %227 = phi ptr [ %197, %194 ], [ %224, %223 ]
  %228 = phi <2 x double> [ %199, %194 ], [ %214, %223 ]
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %196, i64 %192
  %230 = add nuw nsw i64 %195, 1
  %231 = icmp eq i64 %230, %187
  br i1 %231, label %232, label %194, !llvm.loop !134

232:                                              ; preds = %225, %186
  %233 = phi double [ %162, %186 ], [ %226, %225 ]
  %234 = phi <2 x double> [ %160, %186 ], [ %228, %225 ]
  br i1 %122, label %240, label %235

235:                                              ; preds = %232
  %236 = extractelement <2 x double> %234, i64 1
  %237 = fptrunc double %236 to float
  %238 = call fastcc zeroext i16 @ClampToQuantum(float noundef %237) #13
  %239 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 2
  store i16 %238, ptr %239, align 2, !tbaa !71
  br label %240

240:                                              ; preds = %235, %232
  br i1 %124, label %246, label %241

241:                                              ; preds = %240
  %242 = extractelement <2 x double> %234, i64 0
  %243 = fptrunc double %242 to float
  %244 = call fastcc zeroext i16 @ClampToQuantum(float noundef %243) #13
  %245 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 1
  store i16 %244, ptr %245, align 2, !tbaa !72
  br label %246

246:                                              ; preds = %241, %240
  br i1 %126, label %250, label %247

247:                                              ; preds = %246
  %248 = fptrunc double %233 to float
  %249 = call fastcc zeroext i16 @ClampToQuantum(float noundef %248) #13
  store i16 %249, ptr %170, align 2, !tbaa !73
  br label %250

250:                                              ; preds = %247, %246
  br i1 %119, label %289, label %251

251:                                              ; preds = %250
  br i1 %188, label %252, label %284

252:                                              ; preds = %251
  %253 = load i64, ptr %111, align 8, !tbaa !85
  %254 = icmp sgt i64 %253, 0
  %255 = add nuw i64 %187, %155
  %256 = shl i64 %253, 2
  br label %257

257:                                              ; preds = %252, %278
  %258 = phi i64 [ 0, %252 ], [ %282, %278 ]
  %259 = phi ptr [ %171, %252 ], [ %281, %278 ]
  %260 = phi ptr [ %83, %252 ], [ %280, %278 ]
  %261 = phi double [ %164, %252 ], [ %279, %278 ]
  br i1 %254, label %262, label %278

262:                                              ; preds = %257, %262
  %263 = phi i64 [ %274, %262 ], [ 0, %257 ]
  %264 = phi ptr [ %273, %262 ], [ %260, %257 ]
  %265 = phi double [ %272, %262 ], [ %261, %257 ]
  %266 = load float, ptr %264, align 4, !tbaa !95
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 %263, i32 3
  %268 = load i16, ptr %267, align 2, !tbaa !70
  %269 = uitofp i16 %268 to float
  %270 = fmul float %266, %269
  %271 = fpext float %270 to double
  %272 = fadd double %265, %271
  %273 = getelementptr inbounds float, ptr %264, i64 1
  %274 = add nuw nsw i64 %263, 1
  %275 = icmp eq i64 %274, %253
  br i1 %275, label %276, label %262, !llvm.loop !135

276:                                              ; preds = %262
  %277 = getelementptr i8, ptr %260, i64 %256
  br label %278

278:                                              ; preds = %276, %257
  %279 = phi double [ %261, %257 ], [ %272, %276 ]
  %280 = phi ptr [ %260, %257 ], [ %277, %276 ]
  %281 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 %255
  %282 = add nuw nsw i64 %258, 1
  %283 = icmp eq i64 %282, %187
  br i1 %283, label %284, label %257, !llvm.loop !136

284:                                              ; preds = %278, %251
  %285 = phi double [ %164, %251 ], [ %279, %278 ]
  %286 = fptrunc double %285 to float
  %287 = call fastcc zeroext i16 @ClampToQuantum(float noundef %286) #13
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 3
  store i16 %287, ptr %288, align 2, !tbaa !70
  br label %289

289:                                              ; preds = %284, %250
  br i1 %128, label %504, label %290

290:                                              ; preds = %289
  %291 = load i32, ptr %129, align 4, !tbaa !74
  %292 = icmp eq i32 %291, 12
  br i1 %292, label %293, label %504

293:                                              ; preds = %290
  br i1 %188, label %294, label %332

294:                                              ; preds = %293
  %295 = load i64, ptr %111, align 8, !tbaa !85
  %296 = icmp sgt i64 %295, 0
  %297 = add nuw i64 %187, %155
  %298 = shl i64 %295, 2
  br label %299

299:                                              ; preds = %294, %326
  %300 = phi ptr [ %172, %294 ], [ %329, %326 ]
  %301 = phi i64 [ 0, %294 ], [ %330, %326 ]
  %302 = phi ptr [ %83, %294 ], [ %328, %326 ]
  %303 = phi double [ %166, %294 ], [ %327, %326 ]
  br i1 %296, label %304, label %326

304:                                              ; preds = %299
  %305 = icmp eq ptr %300, null
  br label %306

306:                                              ; preds = %304, %315
  %307 = phi i64 [ 0, %304 ], [ %322, %315 ]
  %308 = phi ptr [ %302, %304 ], [ %321, %315 ]
  %309 = phi double [ %303, %304 ], [ %320, %315 ]
  %310 = load float, ptr %308, align 4, !tbaa !95
  br i1 %305, label %315, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds i16, ptr %300, i64 %307
  %313 = load i16, ptr %312, align 2, !tbaa !75
  %314 = zext i16 %313 to i32
  br label %315

315:                                              ; preds = %306, %311
  %316 = phi i32 [ %314, %311 ], [ 0, %306 ]
  %317 = sitofp i32 %316 to float
  %318 = fmul float %310, %317
  %319 = fpext float %318 to double
  %320 = fadd double %309, %319
  %321 = getelementptr inbounds float, ptr %308, i64 1
  %322 = add nuw nsw i64 %307, 1
  %323 = icmp eq i64 %322, %295
  br i1 %323, label %324, label %306, !llvm.loop !137

324:                                              ; preds = %315
  %325 = getelementptr i8, ptr %302, i64 %298
  br label %326

326:                                              ; preds = %324, %299
  %327 = phi double [ %303, %299 ], [ %320, %324 ]
  %328 = phi ptr [ %302, %299 ], [ %325, %324 ]
  %329 = getelementptr inbounds i16, ptr %300, i64 %297
  %330 = add nuw nsw i64 %301, 1
  %331 = icmp eq i64 %330, %187
  br i1 %331, label %332, label %299, !llvm.loop !138

332:                                              ; preds = %326, %293
  %333 = phi double [ %166, %293 ], [ %327, %326 ]
  br i1 %167, label %504, label %499

334:                                              ; preds = %181, %373
  %335 = phi double [ 0.000000e+00, %181 ], [ %376, %373 ]
  %336 = phi i64 [ 0, %181 ], [ %379, %373 ]
  %337 = phi ptr [ %171, %181 ], [ %378, %373 ]
  %338 = phi ptr [ %83, %181 ], [ %375, %373 ]
  %339 = phi double [ %162, %181 ], [ %374, %373 ]
  %340 = phi <2 x double> [ %160, %181 ], [ %377, %373 ]
  br i1 %183, label %341, label %373

341:                                              ; preds = %334, %341
  %342 = phi double [ %367, %341 ], [ %335, %334 ]
  %343 = phi i64 [ %369, %341 ], [ 0, %334 ]
  %344 = phi ptr [ %368, %341 ], [ %338, %334 ]
  %345 = phi double [ %366, %341 ], [ %339, %334 ]
  %346 = phi <2 x double> [ %363, %341 ], [ %340, %334 ]
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %337, i64 %343
  %348 = getelementptr inbounds %struct._PixelPacket, ptr %337, i64 %343, i32 3
  %349 = load i16, ptr %348, align 2, !tbaa !70
  %350 = xor i16 %349, -1
  %351 = uitofp i16 %350 to double
  %352 = fmul double %351, 0x3EF0001000100010
  %353 = fptrunc double %352 to float
  %354 = fpext float %353 to double
  %355 = load float, ptr %344, align 4, !tbaa !95
  %356 = fpext float %355 to double
  %357 = fmul double %356, %354
  %358 = getelementptr inbounds %struct._PixelPacket, ptr %337, i64 %343, i32 1
  %359 = load <2 x i16>, ptr %358, align 2, !tbaa !75
  %360 = uitofp <2 x i16> %359 to <2 x double>
  %361 = insertelement <2 x double> poison, double %357, i64 0
  %362 = shufflevector <2 x double> %361, <2 x double> poison, <2 x i32> zeroinitializer
  %363 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %362, <2 x double> %360, <2 x double> %346)
  %364 = load i16, ptr %347, align 2, !tbaa !73
  %365 = uitofp i16 %364 to double
  %366 = call double @llvm.fmuladd.f64(double %357, double %365, double %345)
  %367 = call double @llvm.fmuladd.f64(double %356, double %354, double %342)
  %368 = getelementptr inbounds float, ptr %344, i64 1
  %369 = add nuw nsw i64 %343, 1
  %370 = icmp eq i64 %369, %182
  br i1 %370, label %371, label %341, !llvm.loop !139

371:                                              ; preds = %341
  %372 = getelementptr i8, ptr %338, i64 %185
  br label %373

373:                                              ; preds = %371, %334
  %374 = phi double [ %339, %334 ], [ %366, %371 ]
  %375 = phi ptr [ %338, %334 ], [ %372, %371 ]
  %376 = phi double [ %335, %334 ], [ %367, %371 ]
  %377 = phi <2 x double> [ %340, %334 ], [ %363, %371 ]
  %378 = getelementptr inbounds %struct._PixelPacket, ptr %337, i64 %184
  %379 = add nuw nsw i64 %336, 1
  %380 = icmp eq i64 %379, %178
  br i1 %380, label %381, label %334, !llvm.loop !140

381:                                              ; preds = %373, %179
  %382 = phi double [ %162, %179 ], [ %374, %373 ]
  %383 = phi double [ 0.000000e+00, %179 ], [ %376, %373 ]
  %384 = phi <2 x double> [ %160, %179 ], [ %377, %373 ]
  %385 = fcmp olt double %383, 0.000000e+00
  %386 = select i1 %385, double 0.000000e+00, double %383
  %387 = call fastcc double @PerceptibleReciprocal(double noundef %386) #13
  br i1 %122, label %394, label %388

388:                                              ; preds = %381
  %389 = extractelement <2 x double> %384, i64 1
  %390 = fmul double %389, %387
  %391 = fptrunc double %390 to float
  %392 = call fastcc zeroext i16 @ClampToQuantum(float noundef %391) #13
  %393 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 2
  store i16 %392, ptr %393, align 2, !tbaa !71
  br label %394

394:                                              ; preds = %388, %381
  br i1 %124, label %401, label %395

395:                                              ; preds = %394
  %396 = extractelement <2 x double> %384, i64 0
  %397 = fmul double %396, %387
  %398 = fptrunc double %397 to float
  %399 = call fastcc zeroext i16 @ClampToQuantum(float noundef %398) #13
  %400 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 1
  store i16 %399, ptr %400, align 2, !tbaa !72
  br label %401

401:                                              ; preds = %395, %394
  br i1 %126, label %406, label %402

402:                                              ; preds = %401
  %403 = fmul double %382, %387
  %404 = fptrunc double %403 to float
  %405 = call fastcc zeroext i16 @ClampToQuantum(float noundef %404) #13
  store i16 %405, ptr %170, align 2, !tbaa !73
  br label %406

406:                                              ; preds = %401, %402
  br i1 %180, label %407, label %439

407:                                              ; preds = %406
  %408 = load i64, ptr %111, align 8, !tbaa !85
  %409 = icmp sgt i64 %408, 0
  %410 = add nuw i64 %178, %155
  %411 = shl i64 %408, 2
  br label %412

412:                                              ; preds = %407, %433
  %413 = phi i64 [ 0, %407 ], [ %437, %433 ]
  %414 = phi ptr [ %171, %407 ], [ %436, %433 ]
  %415 = phi ptr [ %83, %407 ], [ %435, %433 ]
  %416 = phi double [ %164, %407 ], [ %434, %433 ]
  br i1 %409, label %417, label %433

417:                                              ; preds = %412, %417
  %418 = phi i64 [ %429, %417 ], [ 0, %412 ]
  %419 = phi ptr [ %428, %417 ], [ %415, %412 ]
  %420 = phi double [ %427, %417 ], [ %416, %412 ]
  %421 = load float, ptr %419, align 4, !tbaa !95
  %422 = getelementptr inbounds %struct._PixelPacket, ptr %414, i64 %418, i32 3
  %423 = load i16, ptr %422, align 2, !tbaa !70
  %424 = uitofp i16 %423 to float
  %425 = fmul float %421, %424
  %426 = fpext float %425 to double
  %427 = fadd double %420, %426
  %428 = getelementptr inbounds float, ptr %419, i64 1
  %429 = add nuw nsw i64 %418, 1
  %430 = icmp eq i64 %429, %408
  br i1 %430, label %431, label %417, !llvm.loop !141

431:                                              ; preds = %417
  %432 = getelementptr i8, ptr %415, i64 %411
  br label %433

433:                                              ; preds = %431, %412
  %434 = phi double [ %416, %412 ], [ %427, %431 ]
  %435 = phi ptr [ %415, %412 ], [ %432, %431 ]
  %436 = getelementptr inbounds %struct._PixelPacket, ptr %414, i64 %410
  %437 = add nuw nsw i64 %413, 1
  %438 = icmp eq i64 %437, %178
  br i1 %438, label %439, label %412, !llvm.loop !142

439:                                              ; preds = %433, %406
  %440 = phi double [ %164, %406 ], [ %434, %433 ]
  %441 = fptrunc double %440 to float
  %442 = call fastcc zeroext i16 @ClampToQuantum(float noundef %441) #13
  %443 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 3
  store i16 %442, ptr %443, align 2, !tbaa !70
  br i1 %128, label %504, label %444

444:                                              ; preds = %439
  %445 = load i32, ptr %129, align 4, !tbaa !74
  %446 = icmp eq i32 %445, 12
  br i1 %446, label %447, label %504

447:                                              ; preds = %444
  br i1 %180, label %448, label %495

448:                                              ; preds = %447
  %449 = load i64, ptr %111, align 8, !tbaa !85
  %450 = icmp sgt i64 %449, 0
  %451 = add nuw i64 %178, %155
  %452 = shl i64 %449, 2
  br label %453

453:                                              ; preds = %448, %488
  %454 = phi ptr [ %172, %448 ], [ %492, %488 ]
  %455 = phi i64 [ 0, %448 ], [ %493, %488 ]
  %456 = phi ptr [ %171, %448 ], [ %491, %488 ]
  %457 = phi ptr [ %83, %448 ], [ %490, %488 ]
  %458 = phi double [ %166, %448 ], [ %489, %488 ]
  br i1 %450, label %459, label %488

459:                                              ; preds = %453
  %460 = icmp eq ptr %454, null
  br label %461

461:                                              ; preds = %459, %479
  %462 = phi i64 [ 0, %459 ], [ %484, %479 ]
  %463 = phi ptr [ %457, %459 ], [ %483, %479 ]
  %464 = phi double [ %458, %459 ], [ %482, %479 ]
  %465 = getelementptr inbounds %struct._PixelPacket, ptr %456, i64 %462, i32 3
  %466 = load i16, ptr %465, align 2, !tbaa !70
  %467 = xor i16 %466, -1
  %468 = uitofp i16 %467 to double
  %469 = fmul double %468, 0x3EF0001000100010
  %470 = fptrunc double %469 to float
  %471 = fpext float %470 to double
  %472 = load float, ptr %463, align 4, !tbaa !95
  %473 = fpext float %472 to double
  %474 = fmul double %473, %471
  br i1 %460, label %479, label %475

475:                                              ; preds = %461
  %476 = getelementptr inbounds i16, ptr %454, i64 %462
  %477 = load i16, ptr %476, align 2, !tbaa !75
  %478 = zext i16 %477 to i32
  br label %479

479:                                              ; preds = %461, %475
  %480 = phi i32 [ %478, %475 ], [ 0, %461 ]
  %481 = sitofp i32 %480 to double
  %482 = call double @llvm.fmuladd.f64(double %474, double %481, double %464)
  %483 = getelementptr inbounds float, ptr %463, i64 1
  %484 = add nuw nsw i64 %462, 1
  %485 = icmp eq i64 %484, %449
  br i1 %485, label %486, label %461, !llvm.loop !143

486:                                              ; preds = %479
  %487 = getelementptr i8, ptr %457, i64 %452
  br label %488

488:                                              ; preds = %486, %453
  %489 = phi double [ %458, %453 ], [ %482, %486 ]
  %490 = phi ptr [ %457, %453 ], [ %487, %486 ]
  %491 = getelementptr inbounds %struct._PixelPacket, ptr %456, i64 %451
  %492 = getelementptr inbounds i16, ptr %454, i64 %451
  %493 = add nuw nsw i64 %455, 1
  %494 = icmp eq i64 %493, %178
  br i1 %494, label %495, label %453, !llvm.loop !144

495:                                              ; preds = %488, %447
  %496 = phi double [ %166, %447 ], [ %489, %488 ]
  br i1 %167, label %504, label %497

497:                                              ; preds = %495
  %498 = fmul double %387, %496
  br label %499

499:                                              ; preds = %332, %497
  %500 = phi double [ %498, %497 ], [ %333, %332 ]
  %501 = getelementptr inbounds i16, ptr %154, i64 %169
  %502 = fptrunc double %500 to float
  %503 = call fastcc zeroext i16 @ClampToQuantum(float noundef %502) #13
  store i16 %503, ptr %501, align 2, !tbaa !75
  br label %504

504:                                              ; preds = %499, %439, %444, %495, %332, %289, %290
  %505 = getelementptr inbounds i16, ptr %172, i64 1
  %506 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 1
  %507 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 1
  %508 = add nuw nsw i64 %169, 1
  %509 = icmp eq i64 %508, %155
  br i1 %509, label %510, label %168, !llvm.loop !145

510:                                              ; preds = %504, %152
  %511 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %106, ptr noundef %3) #17
  %512 = icmp ne i32 %511, 0
  %513 = zext i1 %512 to i32
  %514 = load ptr, ptr %130, align 8, !tbaa !79
  %515 = icmp eq ptr %514, null
  br i1 %515, label %522, label %516

516:                                              ; preds = %510
  %517 = add nsw i64 %133, 1
  %518 = load i64, ptr %107, align 8, !tbaa !54
  %519 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef %133, i64 noundef %518) #13
  %520 = icmp eq i32 %519, 0
  %521 = select i1 %520, i32 0, i32 %513
  br label %522

522:                                              ; preds = %510, %516, %136, %131
  %523 = phi i32 [ 0, %131 ], [ 0, %136 ], [ %521, %516 ], [ %513, %510 ]
  %524 = phi i64 [ %133, %131 ], [ %133, %136 ], [ %517, %516 ], [ %133, %510 ]
  %525 = add nuw nsw i64 %132, 1
  %526 = load i64, ptr %107, align 8, !tbaa !54
  %527 = icmp slt i64 %525, %526
  br i1 %527, label %131, label %528, !llvm.loop !146

528:                                              ; preds = %522
  %529 = icmp eq i32 %523, 0
  %530 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %531 = load i32, ptr %530, align 8, !tbaa !81
  %532 = getelementptr inbounds %struct._Image, ptr %72, i64 0, i32 77
  store i32 %531, ptr %532, align 8, !tbaa !81
  %533 = call ptr @DestroyCacheView(ptr noundef %106) #15
  %534 = call ptr @DestroyCacheView(ptr noundef %105) #15
  %535 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %83) #15
  br i1 %529, label %536, label %545

536:                                              ; preds = %528
  %537 = call ptr @DestroyImage(ptr noundef nonnull %72) #15
  br label %545

538:                                              ; preds = %104
  %539 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %540 = load i32, ptr %539, align 8, !tbaa !81
  %541 = getelementptr inbounds %struct._Image, ptr %72, i64 0, i32 77
  store i32 %540, ptr %541, align 8, !tbaa !81
  %542 = call ptr @DestroyCacheView(ptr noundef %106) #15
  %543 = call ptr @DestroyCacheView(ptr noundef %105) #15
  %544 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %83) #15
  br label %545

545:                                              ; preds = %538, %528, %536, %71, %68, %92, %77, %19
  %546 = phi ptr [ null, %19 ], [ null, %77 ], [ null, %92 ], [ %69, %68 ], [ null, %71 ], [ %537, %536 ], [ %72, %528 ], [ %72, %538 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  ret ptr %546
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GaussianBlurImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @GaussianBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GaussianBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1878, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #15
  br label %13

13:                                               ; preds = %10, %5
  %14 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %2, double noundef %3) #15
  %15 = call ptr @AcquireKernelInfo(ptr noundef nonnull %6) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1885, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %18) #15
  br label %28

20:                                               ; preds = %13
  %21 = call ptr @AccelerateConvolveImageChannel(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %15, ptr noundef %4) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call ptr @MorphologyApply(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %15, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #15
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi ptr [ %24, %23 ], [ %21, %20 ]
  %27 = call ptr @DestroyKernelInfo(ptr noundef nonnull %15) #15
  br label %28

28:                                               ; preds = %25, %17
  %29 = phi ptr [ null, %17 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MotionBlurImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @MotionBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MotionBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #14
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2022, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #15
  br label %15

15:                                               ; preds = %12, %6
  %16 = tail call i64 @GetOptimalKernelWidth1D(double noundef %2, double noundef %3) #15
  %17 = tail call fastcc ptr @GetMotionBlurKernel(i64 noundef %16, double noundef %3) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2027, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %20) #15
  br label %318

22:                                               ; preds = %15
  %23 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 16) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %17) #15
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2032, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %27) #15
  br label %318

29:                                               ; preds = %22
  %30 = uitofp i64 %16 to double
  %31 = tail call fastcc double @DegreesToRadians(double noundef %4) #13
  %32 = tail call double @sin(double noundef %31) #15
  %33 = fmul double %32, %30
  %34 = tail call double @cos(double noundef %31) #15
  %35 = fmul double %34, %30
  %36 = icmp sgt i64 %16, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %54, %37 ], [ 0, %29 ]
  %39 = sitofp i64 %38 to double
  %40 = fmul double %35, %39
  %41 = tail call double @hypot(double noundef %33, double noundef %35) #15
  %42 = fdiv double %40, %41
  %43 = fadd double %42, -5.000000e-01
  %44 = tail call double @llvm.ceil.f64(double %43)
  %45 = fptosi double %44 to i64
  %46 = getelementptr inbounds %struct._OffsetInfo, ptr %23, i64 %38
  store i64 %45, ptr %46, align 8, !tbaa !147
  %47 = fmul double %33, %39
  %48 = tail call double @hypot(double noundef %33, double noundef %35) #15
  %49 = fdiv double %47, %48
  %50 = fadd double %49, -5.000000e-01
  %51 = tail call double @llvm.ceil.f64(double %50)
  %52 = fptosi double %51 to i64
  %53 = getelementptr inbounds %struct._OffsetInfo, ptr %23, i64 %38, i32 1
  store i64 %52, ptr %53, align 8, !tbaa !149
  %54 = add nuw nsw i64 %38, 1
  %55 = icmp eq i64 %54, %16
  br i1 %55, label %56, label %37, !llvm.loop !150

56:                                               ; preds = %37, %29
  %57 = tail call ptr @AccelerateMotionBlurImage(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %17, i64 noundef %16, ptr noundef nonnull %23, ptr noundef %5) #15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %318

59:                                               ; preds = %56
  %60 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %17) #15
  %64 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #15
  br label %318

65:                                               ; preds = %59
  %66 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %60, i32 noundef 1) #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %17) #15
  %70 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #15
  %71 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %71) #15
  %72 = tail call ptr @DestroyImage(ptr noundef nonnull %60) #15
  br label %318

73:                                               ; preds = %65
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #15
  %74 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %5) #15
  %75 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %60, ptr noundef %5) #15
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %77 = load i64, ptr %76, align 8, !tbaa !54
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %313

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 7
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %82 = getelementptr inbounds i8, ptr %7, i64 32
  %83 = getelementptr inbounds i8, ptr %7, i64 48
  %84 = and i32 %1, 8
  %85 = icmp eq i32 %84, 0
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %88 = and i32 %1, 1
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %1, 2
  %91 = icmp eq i32 %90, 0
  %92 = and i32 %1, 4
  %93 = icmp eq i32 %92, 0
  %94 = and i32 %1, 32
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %97

97:                                               ; preds = %79, %299
  %98 = phi i64 [ 0, %79 ], [ %302, %299 ]
  %99 = phi i32 [ 1, %79 ], [ %301, %299 ]
  %100 = phi i64 [ 0, %79 ], [ %300, %299 ]
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %299, label %102

102:                                              ; preds = %97
  %103 = load i64, ptr %80, align 8, !tbaa !53
  %104 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %75, i64 noundef 0, i64 noundef %98, i64 noundef %103, i64 noundef 1, ptr noundef %5) #17
  %105 = icmp eq ptr %104, null
  br i1 %105, label %299, label %106

106:                                              ; preds = %102
  %107 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %75) #15
  %108 = load i64, ptr %81, align 8, !tbaa !53
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %287

110:                                              ; preds = %106
  %111 = icmp eq ptr %107, null
  br label %112

112:                                              ; preds = %110, %282
  %113 = phi i64 [ 0, %110 ], [ %284, %282 ]
  %114 = phi ptr [ %104, %110 ], [ %283, %282 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %115 = load <4 x float>, ptr %82, align 8
  %116 = load float, ptr %83, align 8, !tbaa.struct !151
  br i1 %85, label %121, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %86, align 8, !tbaa !69
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  br i1 %36, label %184, label %237

121:                                              ; preds = %117, %112
  br i1 %36, label %122, label %158

122:                                              ; preds = %121, %153
  %123 = phi i64 [ %156, %153 ], [ 0, %121 ]
  %124 = phi ptr [ %155, %153 ], [ %17, %121 ]
  %125 = phi float [ %154, %153 ], [ %116, %121 ]
  %126 = phi <4 x float> [ %142, %153 ], [ %115, %121 ]
  %127 = getelementptr inbounds %struct._OffsetInfo, ptr %23, i64 %123
  %128 = load i64, ptr %127, align 8, !tbaa !147
  %129 = add nsw i64 %128, %113
  %130 = getelementptr inbounds %struct._OffsetInfo, ptr %23, i64 %123, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !149
  %132 = add nsw i64 %131, %98
  %133 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %74, i64 noundef %129, i64 noundef %132, ptr noundef nonnull %8, ptr noundef %5) #15
  %134 = load double, ptr %124, align 8, !tbaa !56
  %135 = fpext <4 x float> %126 to <4 x double>
  %136 = load <4 x i16>, ptr %8, align 8, !tbaa !75
  %137 = uitofp <4 x i16> %136 to <4 x double>
  %138 = shufflevector <4 x double> %137, <4 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %139 = insertelement <4 x double> poison, double %134, i64 0
  %140 = shufflevector <4 x double> %139, <4 x double> poison, <4 x i32> zeroinitializer
  %141 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %140, <4 x double> %138, <4 x double> %135)
  %142 = fptrunc <4 x double> %141 to <4 x float>
  %143 = load i32, ptr %87, align 4, !tbaa !74
  %144 = icmp eq i32 %143, 12
  br i1 %144, label %145, label %153

145:                                              ; preds = %122
  %146 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %74) #15
  %147 = load double, ptr %124, align 8, !tbaa !56
  %148 = load i16, ptr %146, align 2, !tbaa !75
  %149 = uitofp i16 %148 to double
  %150 = fpext float %125 to double
  %151 = call double @llvm.fmuladd.f64(double %147, double %149, double %150)
  %152 = fptrunc double %151 to float
  br label %153

153:                                              ; preds = %145, %122
  %154 = phi float [ %152, %145 ], [ %125, %122 ]
  %155 = getelementptr inbounds double, ptr %124, i64 1
  %156 = add nuw nsw i64 %123, 1
  %157 = icmp eq i64 %156, %16
  br i1 %157, label %158, label %122, !llvm.loop !152

158:                                              ; preds = %153, %121
  %159 = phi float [ %116, %121 ], [ %154, %153 ]
  %160 = phi <4 x float> [ %115, %121 ], [ %142, %153 ]
  br i1 %89, label %165, label %161

161:                                              ; preds = %158
  %162 = extractelement <4 x float> %160, i64 0
  %163 = call fastcc zeroext i16 @ClampToQuantum(float noundef %162) #13
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %163, ptr %164, align 2, !tbaa !71
  br label %165

165:                                              ; preds = %161, %158
  br i1 %91, label %170, label %166

166:                                              ; preds = %165
  %167 = extractelement <4 x float> %160, i64 1
  %168 = call fastcc zeroext i16 @ClampToQuantum(float noundef %167) #13
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %168, ptr %169, align 2, !tbaa !72
  br label %170

170:                                              ; preds = %166, %165
  br i1 %93, label %174, label %171

171:                                              ; preds = %170
  %172 = extractelement <4 x float> %160, i64 2
  %173 = call fastcc zeroext i16 @ClampToQuantum(float noundef %172) #13
  store i16 %173, ptr %114, align 2, !tbaa !73
  br label %174

174:                                              ; preds = %171, %170
  br i1 %85, label %179, label %175

175:                                              ; preds = %174
  %176 = extractelement <4 x float> %160, i64 3
  %177 = call fastcc zeroext i16 @ClampToQuantum(float noundef %176) #13
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 3
  store i16 %177, ptr %178, align 2, !tbaa !70
  br label %179

179:                                              ; preds = %175, %174
  br i1 %95, label %282, label %180

180:                                              ; preds = %179
  %181 = load i32, ptr %87, align 4, !tbaa !74
  %182 = icmp ne i32 %181, 12
  %183 = select i1 %182, i1 true, i1 %111
  br i1 %183, label %282, label %278

184:                                              ; preds = %120, %230
  %185 = phi double [ %233, %230 ], [ 0.000000e+00, %120 ]
  %186 = phi i64 [ %235, %230 ], [ 0, %120 ]
  %187 = phi ptr [ %234, %230 ], [ %17, %120 ]
  %188 = phi float [ %232, %230 ], [ %116, %120 ]
  %189 = phi <4 x float> [ %213, %230 ], [ %115, %120 ]
  %190 = getelementptr inbounds %struct._OffsetInfo, ptr %23, i64 %186
  %191 = load i64, ptr %190, align 8, !tbaa !147
  %192 = add nsw i64 %191, %113
  %193 = getelementptr inbounds %struct._OffsetInfo, ptr %23, i64 %186, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !149
  %195 = add nsw i64 %194, %98
  %196 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %74, i64 noundef %192, i64 noundef %195, ptr noundef nonnull %8, ptr noundef %5) #15
  %197 = load double, ptr %187, align 8, !tbaa !56
  %198 = fpext <4 x float> %189 to <4 x double>
  %199 = load <4 x i16>, ptr %8, align 8, !tbaa !75
  %200 = extractelement <4 x i16> %199, i64 3
  %201 = xor i16 %200, -1
  %202 = uitofp i16 %201 to double
  %203 = fmul double %202, 0x3EF0001000100010
  %204 = fptrunc double %203 to float
  %205 = fpext float %204 to double
  %206 = fmul double %197, %205
  %207 = uitofp <4 x i16> %199 to <4 x double>
  %208 = shufflevector <4 x double> %207, <4 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %209 = insertelement <4 x double> poison, double %197, i64 0
  %210 = insertelement <4 x double> %209, double %206, i64 1
  %211 = shufflevector <4 x double> %210, <4 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %212 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %211, <4 x double> %208, <4 x double> %198)
  %213 = fptrunc <4 x double> %212 to <4 x float>
  %214 = load i32, ptr %87, align 4, !tbaa !74
  %215 = icmp eq i32 %214, 12
  br i1 %215, label %216, label %230

216:                                              ; preds = %184
  %217 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %74) #15
  %218 = load double, ptr %187, align 8, !tbaa !56
  %219 = fmul double %218, %205
  %220 = icmp eq ptr %217, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %216
  %222 = load i16, ptr %217, align 2, !tbaa !75
  %223 = zext i16 %222 to i32
  br label %224

224:                                              ; preds = %216, %221
  %225 = phi i32 [ %223, %221 ], [ 0, %216 ]
  %226 = sitofp i32 %225 to double
  %227 = fpext float %188 to double
  %228 = call double @llvm.fmuladd.f64(double %219, double %226, double %227)
  %229 = fptrunc double %228 to float
  br label %230

230:                                              ; preds = %224, %184
  %231 = phi double [ %218, %224 ], [ %197, %184 ]
  %232 = phi float [ %229, %224 ], [ %188, %184 ]
  %233 = call double @llvm.fmuladd.f64(double %231, double %205, double %185)
  %234 = getelementptr inbounds double, ptr %187, i64 1
  %235 = add nuw nsw i64 %186, 1
  %236 = icmp eq i64 %235, %16
  br i1 %236, label %237, label %184, !llvm.loop !153

237:                                              ; preds = %230, %120
  %238 = phi float [ %116, %120 ], [ %232, %230 ]
  %239 = phi double [ 0.000000e+00, %120 ], [ %233, %230 ]
  %240 = phi <4 x float> [ %115, %120 ], [ %213, %230 ]
  %241 = fcmp olt double %239, 0.000000e+00
  %242 = select i1 %241, double 0.000000e+00, double %239
  %243 = call fastcc double @PerceptibleReciprocal(double noundef %242) #13
  br i1 %89, label %251, label %244

244:                                              ; preds = %237
  %245 = extractelement <4 x float> %240, i64 0
  %246 = fpext float %245 to double
  %247 = fmul double %243, %246
  %248 = fptrunc double %247 to float
  %249 = call fastcc zeroext i16 @ClampToQuantum(float noundef %248) #13
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %249, ptr %250, align 2, !tbaa !71
  br label %251

251:                                              ; preds = %244, %237
  br i1 %91, label %259, label %252

252:                                              ; preds = %251
  %253 = extractelement <4 x float> %240, i64 1
  %254 = fpext float %253 to double
  %255 = fmul double %243, %254
  %256 = fptrunc double %255 to float
  %257 = call fastcc zeroext i16 @ClampToQuantum(float noundef %256) #13
  %258 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %257, ptr %258, align 2, !tbaa !72
  br label %259

259:                                              ; preds = %252, %251
  br i1 %93, label %266, label %260

260:                                              ; preds = %259
  %261 = extractelement <4 x float> %240, i64 2
  %262 = fpext float %261 to double
  %263 = fmul double %243, %262
  %264 = fptrunc double %263 to float
  %265 = call fastcc zeroext i16 @ClampToQuantum(float noundef %264) #13
  store i16 %265, ptr %114, align 2, !tbaa !73
  br label %266

266:                                              ; preds = %259, %260
  %267 = extractelement <4 x float> %240, i64 3
  %268 = call fastcc zeroext i16 @ClampToQuantum(float noundef %267) #13
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 3
  store i16 %268, ptr %269, align 2, !tbaa !70
  br i1 %95, label %282, label %270

270:                                              ; preds = %266
  %271 = load i32, ptr %87, align 4, !tbaa !74
  %272 = icmp ne i32 %271, 12
  %273 = select i1 %272, i1 true, i1 %111
  br i1 %273, label %282, label %274

274:                                              ; preds = %270
  %275 = fpext float %238 to double
  %276 = fmul double %243, %275
  %277 = fptrunc double %276 to float
  br label %278

278:                                              ; preds = %180, %274
  %279 = phi float [ %277, %274 ], [ %159, %180 ]
  %280 = getelementptr inbounds i16, ptr %107, i64 %113
  %281 = call fastcc zeroext i16 @ClampToQuantum(float noundef %279) #13
  store i16 %281, ptr %280, align 2, !tbaa !75
  br label %282

282:                                              ; preds = %278, %266, %270, %179, %180
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  %284 = add nuw nsw i64 %113, 1
  %285 = load i64, ptr %81, align 8, !tbaa !53
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %112, label %287, !llvm.loop !154

287:                                              ; preds = %282, %106
  %288 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %75, ptr noundef %5) #17
  %289 = icmp ne i32 %288, 0
  %290 = zext i1 %289 to i32
  %291 = load ptr, ptr %96, align 8, !tbaa !79
  %292 = icmp eq ptr %291, null
  br i1 %292, label %299, label %293

293:                                              ; preds = %287
  %294 = add nsw i64 %100, 1
  %295 = load i64, ptr %76, align 8, !tbaa !54
  %296 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i64 noundef %100, i64 noundef %295) #13
  %297 = icmp eq i32 %296, 0
  %298 = select i1 %297, i32 0, i32 %290
  br label %299

299:                                              ; preds = %287, %293, %102, %97
  %300 = phi i64 [ %100, %97 ], [ %100, %102 ], [ %294, %293 ], [ %100, %287 ]
  %301 = phi i32 [ 0, %97 ], [ 0, %102 ], [ %298, %293 ], [ %290, %287 ]
  %302 = add nuw nsw i64 %98, 1
  %303 = load i64, ptr %76, align 8, !tbaa !54
  %304 = icmp slt i64 %302, %303
  br i1 %304, label %97, label %305, !llvm.loop !155

305:                                              ; preds = %299
  %306 = icmp eq i32 %301, 0
  %307 = call ptr @DestroyCacheView(ptr noundef %75) #15
  %308 = call ptr @DestroyCacheView(ptr noundef %74) #15
  %309 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %17) #15
  %310 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #15
  br i1 %306, label %311, label %318

311:                                              ; preds = %305
  %312 = call ptr @DestroyImage(ptr noundef nonnull %60) #15
  br label %318

313:                                              ; preds = %73
  %314 = call ptr @DestroyCacheView(ptr noundef %75) #15
  %315 = call ptr @DestroyCacheView(ptr noundef %74) #15
  %316 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %17) #15
  %317 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #15
  br label %318

318:                                              ; preds = %313, %305, %311, %56, %68, %62, %25, %19
  %319 = phi ptr [ null, %19 ], [ null, %25 ], [ null, %62 ], [ null, %68 ], [ %57, %56 ], [ %312, %311 ], [ %60, %305 ], [ %60, %313 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #14
  ret ptr %319
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GetMotionBlurKernel(i64 noundef %0, double noundef %1) unnamed_addr #0 !PGOFuncName !156 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1951, ptr noundef nonnull @.str.70) #15
  %4 = tail call ptr @AcquireAlignedMemory(i64 noundef %0, i64 noundef 8) #16
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
  %23 = tail call double @exp(double noundef %22) #15
  %24 = fdiv double %23, %14
  %25 = getelementptr inbounds double, ptr %4, i64 %17
  store double %24, ptr %25, align 8, !tbaa !56
  %26 = fadd double %18, %24
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, %0
  br i1 %28, label %15, label %16, !llvm.loop !157

29:                                               ; preds = %15, %29
  %30 = phi i64 [ %34, %29 ], [ 0, %15 ]
  %31 = getelementptr inbounds double, ptr %4, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !56
  %33 = fdiv double %32, %26
  store double %33, ptr %31, align 8, !tbaa !56
  %34 = add nuw nsw i64 %30, 1
  %35 = icmp eq i64 %34, %0
  br i1 %35, label %36, label %29, !llvm.loop !158

36:                                               ; preds = %29, %6, %15, %2
  ret ptr %4
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #8 !PGOFuncName !159 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @AccelerateMotionBlurImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #14
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2299, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %3
  %17 = tail call ptr @AcquireImageInfo() #15
  call void @SetGeometry(ptr noundef nonnull %0, ptr noundef nonnull %8) #15
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 3
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 1
  %21 = call i32 @ParseMetaGeometry(ptr noundef nonnull @.str.17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %8, ptr noundef nonnull %20) #15
  %22 = call ptr @NewImageList() #15
  store ptr %22, ptr %6, align 8, !tbaa !55
  call void @GetQuantizeInfo(ptr noundef nonnull %7) #15
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
  %35 = load i64, ptr %8, align 8, !tbaa !160
  %36 = load i64, ptr %20, align 8, !tbaa !161
  %37 = call ptr @ThumbnailImage(ptr noundef %0, i64 noundef %35, i64 noundef %36, ptr noundef %2) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %362, label %39

39:                                               ; preds = %26
  %40 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %37, ptr noundef null, ptr noundef null) #15
  %41 = call i32 @SetImageProperty(ptr noundef nonnull %37, ptr noundef nonnull @.str.18, ptr noundef nonnull @DefaultTileLabel) #15
  %42 = icmp eq i64 %30, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 14
  %45 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.19, ptr noundef nonnull %44, ptr noundef %2) #15
  call void @AppendImageToList(ptr noundef nonnull %6, ptr noundef nonnull %37) #15
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
  %51 = call ptr @RotateImage(ptr noundef nonnull %37, double noundef %50, ptr noundef %2) #15
  %52 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.20, double noundef %50) #15
  br label %335

53:                                               ; preds = %46
  %54 = fadd double %28, 5.000000e+00
  %55 = call ptr @ShearImage(ptr noundef nonnull %37, double noundef %54, double noundef %54, ptr noundef %2) #15
  %56 = fmul double %54, 2.000000e+00
  %57 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.21, double noundef %54, double noundef %56) #15
  br label %335

58:                                               ; preds = %46
  %59 = add nuw nsw i64 %30, 1
  %60 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %61 = load i64, ptr %60, align 8, !tbaa !53
  %62 = mul i64 %61, %59
  %63 = sdiv i64 %62, 9
  %64 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !54
  %66 = mul i64 %65, %59
  %67 = sdiv i64 %66, 9
  %68 = call ptr @RollImage(ptr noundef nonnull %37, i64 noundef %63, i64 noundef %67, ptr noundef %2) #15
  %69 = sitofp i64 %63 to double
  %70 = sitofp i64 %67 to double
  %71 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.22, double noundef %69, double noundef %70) #15
  br label %335

72:                                               ; preds = %46
  %73 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %74 = icmp eq ptr %73, null
  br i1 %74, label %325, label %75

75:                                               ; preds = %72
  %76 = fmul double %32, 2.000000e+00
  %77 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.23, double noundef %76) #15
  %78 = call i32 @ModulateImage(ptr noundef nonnull %73, ptr noundef nonnull %4) #15
  %79 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #15
  br label %328

80:                                               ; preds = %46
  %81 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %82 = icmp eq ptr %81, null
  br i1 %82, label %325, label %83

83:                                               ; preds = %80
  %84 = fmul double %32, 2.000000e+00
  %85 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.25, double noundef %84) #15
  %86 = call i32 @ModulateImage(ptr noundef nonnull %81, ptr noundef nonnull %4) #15
  %87 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #15
  br label %328

88:                                               ; preds = %46
  %89 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %90 = icmp eq ptr %89, null
  br i1 %90, label %325, label %91

91:                                               ; preds = %88
  %92 = fmul double %32, 2.000000e+00
  %93 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.26, double noundef %92) #15
  %94 = call i32 @ModulateImage(ptr noundef nonnull %89, ptr noundef nonnull %4) #15
  %95 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #15
  br label %328

96:                                               ; preds = %46
  %97 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %98 = icmp eq ptr %97, null
  br i1 %98, label %325, label %99

99:                                               ; preds = %96
  %100 = fadd double %31, 0x3FD99999A0000000
  %101 = call i32 @GammaImageChannel(ptr noundef nonnull %97, i32 noundef 134217719, double noundef %100) #15
  %102 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.27, double noundef %100) #15
  br label %328

103:                                              ; preds = %46
  %104 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %105 = icmp ne ptr %104, null
  %106 = icmp ne i64 %30, 0
  %107 = and i1 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %103, %108
  %109 = phi i64 [ %111, %108 ], [ 0, %103 ]
  %110 = call i32 @ContrastImage(ptr noundef nonnull %104, i32 noundef 1) #15
  %111 = add nuw nsw i64 %109, 1
  %112 = icmp eq i64 %111, %30
  br i1 %112, label %113, label %108, !llvm.loop !162

113:                                              ; preds = %108, %103
  %114 = sitofp i64 %30 to double
  %115 = fadd double %114, 1.000000e+00
  %116 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.28, double noundef %115) #15
  br label %335

117:                                              ; preds = %46
  %118 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %119 = icmp eq ptr %118, null
  br i1 %119, label %325, label %120

120:                                              ; preds = %117
  %121 = icmp eq i64 %30, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ %125, %122 ], [ 0, %120 ]
  %124 = call i32 @ContrastImage(ptr noundef nonnull %118, i32 noundef 0) #15
  %125 = add nuw nsw i64 %123, 1
  %126 = icmp eq i64 %125, %30
  br i1 %126, label %127, label %122, !llvm.loop !163

127:                                              ; preds = %122, %120
  %128 = sitofp i64 %30 to double
  %129 = fadd double %128, 1.000000e+00
  %130 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %129) #15
  br label %335

131:                                              ; preds = %46
  %132 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %133 = icmp eq ptr %132, null
  br i1 %133, label %325, label %134

134:                                              ; preds = %131
  %135 = shl i64 %29, 1
  store i64 %135, ptr %7, align 8, !tbaa !164
  store i32 2, ptr %23, align 4, !tbaa !166
  %136 = call i32 @QuantizeImage(ptr noundef nonnull %7, ptr noundef nonnull %132) #15
  %137 = uitofp i64 %135 to double
  %138 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.30, double noundef %137) #15
  br label %328

139:                                              ; preds = %46
  %140 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %141 = icmp eq ptr %140, null
  br i1 %141, label %325, label %142

142:                                              ; preds = %139
  %143 = shl i64 %29, 1
  store i64 %143, ptr %7, align 8, !tbaa !164
  %144 = call i32 @QuantizeImage(ptr noundef nonnull %7, ptr noundef nonnull %140) #15
  %145 = uitofp i64 %143 to double
  %146 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.31, double noundef %145) #15
  br label %328

147:                                              ; preds = %47, %152
  %148 = phi i64 [ %154, %152 ], [ 0, %47 ]
  %149 = phi ptr [ %150, %152 ], [ %37, %47 ]
  %150 = call ptr @DespeckleImage(ptr noundef nonnull %149, ptr noundef %2) #13
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = call ptr @DestroyImage(ptr noundef nonnull %149) #15
  %154 = add nuw nsw i64 %148, 1
  %155 = icmp eq i64 %154, %27
  br i1 %155, label %156, label %147, !llvm.loop !167

156:                                              ; preds = %152, %147, %47
  %157 = phi ptr [ %37, %47 ], [ %149, %147 ], [ %150, %152 ]
  %158 = call ptr @DespeckleImage(ptr noundef nonnull %157, ptr noundef %2) #13
  %159 = icmp eq ptr %158, null
  br i1 %159, label %325, label %160

160:                                              ; preds = %156
  %161 = sitofp i64 %30 to double
  %162 = fadd double %161, 1.000000e+00
  %163 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.32, double noundef %162) #15
  br label %328

164:                                              ; preds = %46
  %165 = extractelement <2 x double> %34, i64 1
  %166 = fptoui double %165 to i64
  %167 = call ptr @StatisticImage(ptr noundef nonnull %37, i32 noundef 7, i64 noundef %166, i64 noundef %166, ptr noundef %2) #15
  %168 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.33, double noundef %165) #15
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
  %172 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i64 noundef 4096) #15
  br label %186

173:                                              ; preds = %169
  %174 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i64 noundef 4096) #15
  br label %186

175:                                              ; preds = %169
  %176 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.36, i64 noundef 4096) #15
  br label %186

177:                                              ; preds = %169
  %178 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.37, i64 noundef 4096) #15
  br label %186

179:                                              ; preds = %169
  %180 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.38, i64 noundef 4096) #15
  br label %186

181:                                              ; preds = %169
  %182 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.39, i64 noundef 4096) #15
  br label %186

183:                                              ; preds = %169
  %184 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 55
  %185 = call i64 @CopyMagickString(ptr noundef nonnull %184, ptr noundef nonnull @.str.40, i64 noundef 4096) #15
  br label %186

186:                                              ; preds = %183, %181, %179, %177, %175, %173, %171
  %187 = call ptr @StatisticImage(ptr noundef nonnull %37, i32 noundef 7, i64 noundef %30, i64 noundef %30, ptr noundef %2) #15
  %188 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.41, ptr noundef nonnull %4) #15
  br label %335

189:                                              ; preds = %46
  %190 = extractelement <2 x double> %34, i64 0
  %191 = extractelement <2 x double> %34, i64 1
  %192 = call ptr @SharpenImage(ptr noundef nonnull %37, double noundef %191, double noundef %190, ptr noundef %2) #13
  %193 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.42, double noundef %191, double noundef %190) #15
  br label %335

194:                                              ; preds = %46
  %195 = extractelement <2 x double> %34, i64 0
  %196 = extractelement <2 x double> %34, i64 1
  %197 = call ptr @BlurImage(ptr noundef nonnull %37, double noundef %196, double noundef %195, ptr noundef %2) #13
  %198 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.43, double noundef %196, double noundef %195) #15
  br label %335

199:                                              ; preds = %46
  %200 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %201 = icmp eq ptr %200, null
  br i1 %201, label %325, label %202

202:                                              ; preds = %199
  %203 = fmul double %32, 6.553600e+04
  %204 = fdiv double %203, 1.000000e+02
  %205 = call i32 @BilevelImage(ptr noundef nonnull %37, double noundef %204) #15
  %206 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.44, double noundef %204) #15
  br label %328

207:                                              ; preds = %46
  %208 = extractelement <2 x double> %34, i64 1
  %209 = call ptr @EdgeImage(ptr noundef nonnull %37, double noundef %208, ptr noundef %2) #13
  %210 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %208) #15
  br label %335

211:                                              ; preds = %46
  %212 = extractelement <2 x double> %34, i64 1
  %213 = call ptr @SpreadImage(ptr noundef nonnull %37, double noundef %212, ptr noundef %2) #13
  %214 = fadd double %212, 5.000000e-01
  %215 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, double noundef %214) #15
  br label %335

216:                                              ; preds = %46
  %217 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %218 = icmp eq ptr %217, null
  br i1 %218, label %325, label %219

219:                                              ; preds = %216
  %220 = fmul double %32, 6.553500e+04
  %221 = fdiv double %220, 1.000000e+02
  %222 = call i32 @SolarizeImage(ptr noundef nonnull %217, double noundef %221) #15
  %223 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.47, double noundef %221) #15
  br label %328

224:                                              ; preds = %46
  %225 = fadd double %28, 1.000000e+01
  %226 = call ptr @ShadeImage(ptr noundef nonnull %37, i32 noundef 1, double noundef %225, double noundef %225, ptr noundef %2) #13
  %227 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.48, double noundef %225, double noundef %225) #15
  br label %335

228:                                              ; preds = %46
  %229 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %230 = icmp eq ptr %229, null
  br i1 %230, label %325, label %231

231:                                              ; preds = %228
  %232 = shl nuw nsw i64 %30, 1
  %233 = add nuw nsw i64 %232, 2
  store i64 %233, ptr %8, align 8, !tbaa !160
  store i64 %233, ptr %20, align 8, !tbaa !161
  %234 = trunc i64 %30 to i8
  %235 = add nsw i8 %234, -1
  %236 = sdiv i8 %235, 2
  %237 = sext i8 %236 to i64
  store i64 %237, ptr %18, align 8, !tbaa !168
  store i64 %237, ptr %19, align 8, !tbaa !169
  %238 = call i32 @RaiseImage(ptr noundef nonnull %229, ptr noundef nonnull %8, i32 noundef 1) #15
  %239 = load i64, ptr %8, align 8, !tbaa !160
  %240 = uitofp i64 %239 to double
  %241 = load i64, ptr %20, align 8, !tbaa !161
  %242 = uitofp i64 %241 to double
  %243 = load i64, ptr %18, align 8, !tbaa !168
  %244 = sitofp i64 %243 to double
  %245 = load i64, ptr %19, align 8, !tbaa !169
  %246 = sitofp i64 %245 to double
  %247 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.49, double noundef %240, double noundef %242, double noundef %244, double noundef %246) #15
  br label %328

248:                                              ; preds = %46
  %249 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %250 = icmp eq ptr %249, null
  br i1 %250, label %325, label %251

251:                                              ; preds = %248
  %252 = fadd double %33, 0x3FD99999A0000000
  %253 = call i32 @SegmentImage(ptr noundef nonnull %249, i32 noundef 13, i32 noundef 0, double noundef %252, double noundef %252) #15
  %254 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.50, double noundef %252, double noundef %252) #15
  br label %328

255:                                              ; preds = %46
  %256 = call ptr @SwirlImage(ptr noundef nonnull %37, double noundef %28, ptr noundef %2) #15
  %257 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.51, double noundef %28) #15
  %258 = fadd double %28, 4.500000e+01
  br label %335

259:                                              ; preds = %46
  %260 = fadd double %28, 0x3FB99999A0000000
  %261 = call ptr @ImplodeImage(ptr noundef nonnull %37, double noundef %260, ptr noundef %2) #15
  %262 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.52, double noundef %260) #15
  br label %335

263:                                              ; preds = %46
  %264 = fadd double %28, 5.000000e+00
  %265 = fmul double %264, 5.000000e-01
  %266 = fmul double %264, 2.000000e+00
  %267 = call ptr @WaveImage(ptr noundef nonnull %37, double noundef %265, double noundef %266, ptr noundef %2) #15
  %268 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, double noundef %265, double noundef %266) #15
  br label %335

269:                                              ; preds = %46
  %270 = extractelement <2 x double> %34, i64 1
  %271 = call ptr @OilPaintImage(ptr noundef nonnull %37, double noundef %270, ptr noundef %2) #15
  %272 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.54, double noundef %270) #15
  br label %335

273:                                              ; preds = %46
  %274 = extractelement <2 x double> %34, i64 0
  %275 = extractelement <2 x double> %34, i64 1
  %276 = call ptr @CharcoalImage(ptr noundef nonnull %37, double noundef %275, double noundef %274, ptr noundef %2) #15
  %277 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.55, double noundef %275, double noundef %274) #15
  br label %335

278:                                              ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #14
  %279 = call ptr @CloneImage(ptr noundef nonnull %37, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %280 = icmp eq ptr %279, null
  br i1 %280, label %323, label %281

281:                                              ; preds = %278
  %282 = fptoui double %32 to i64
  store i64 %282, ptr %24, align 8, !tbaa !170
  %283 = uitofp i64 %282 to double
  %284 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.56, double noundef %283) #15
  %285 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %9) #15
  %286 = icmp eq i32 %285, -1
  br i1 %286, label %289, label %287

287:                                              ; preds = %281
  %288 = call i32 @close(i32 noundef %285) #15
  br label %289

289:                                              ; preds = %287, %281
  %290 = getelementptr inbounds %struct._Image, ptr %279, i64 0, i32 53
  %291 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %290, i64 noundef 4096, ptr noundef nonnull @.str.57, ptr noundef nonnull %9) #15
  %292 = call i32 @WriteImage(ptr noundef nonnull %17, ptr noundef nonnull %279) #15
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %289
  %295 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %290, i64 noundef 4096) #15
  %296 = call ptr @ReadImage(ptr noundef nonnull %17, ptr noundef %2) #15
  %297 = icmp eq ptr %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %294
  %299 = call ptr @DestroyImage(ptr noundef nonnull %279) #15
  br label %300

300:                                              ; preds = %294, %298, %289
  %301 = phi ptr [ %279, %289 ], [ %296, %298 ], [ %279, %294 ]
  %302 = getelementptr inbounds %struct._Image, ptr %301, i64 0, i32 53
  %303 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %302) #15
  %304 = call i64 @GetBlobSize(ptr noundef nonnull %301) #15
  %305 = icmp ugt i64 %304, 1048575
  %306 = call i64 @GetBlobSize(ptr noundef nonnull %301) #15
  br i1 %305, label %307, label %312

307:                                              ; preds = %300
  %308 = sitofp i64 %306 to double
  %309 = fmul double %308, 0x3F50000000000000
  %310 = fmul double %309, 0x3F50000000000000
  %311 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.58, ptr noundef nonnull %4, double noundef %310) #15
  br label %323

312:                                              ; preds = %300
  %313 = icmp ugt i64 %306, 1023
  br i1 %313, label %314, label %319

314:                                              ; preds = %312
  %315 = call i64 @GetBlobSize(ptr noundef nonnull %301) #15
  %316 = sitofp i64 %315 to double
  %317 = fmul double %316, 0x3F50000000000000
  %318 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.59, ptr noundef nonnull %4, double noundef %317) #15
  br label %323

319:                                              ; preds = %312
  %320 = call i64 @GetBlobSize(ptr noundef nonnull %37) #15
  %321 = sitofp i64 %320 to double
  %322 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.60, ptr noundef nonnull %4, double noundef %321) #15
  br label %323

323:                                              ; preds = %307, %319, %314, %278
  %324 = phi ptr [ null, %278 ], [ %301, %314 ], [ %301, %319 ], [ %301, %307 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #14
  br label %335

325:                                              ; preds = %96, %248, %228, %216, %199, %156, %139, %131, %117, %88, %80, %72
  %326 = phi ptr [ %37, %72 ], [ %37, %80 ], [ %37, %88 ], [ %37, %117 ], [ %37, %131 ], [ %37, %139 ], [ %157, %156 ], [ %37, %199 ], [ %37, %216 ], [ %37, %228 ], [ %37, %248 ], [ %37, %96 ]
  %327 = call ptr @DestroyImage(ptr noundef nonnull %326) #15
  br label %362

328:                                              ; preds = %99, %251, %231, %219, %202, %160, %142, %134, %91, %83, %75
  %329 = phi double [ %33, %75 ], [ %33, %83 ], [ %33, %91 ], [ %33, %134 ], [ %33, %142 ], [ %33, %160 ], [ %33, %202 ], [ %33, %219 ], [ %33, %231 ], [ %252, %251 ], [ %33, %99 ]
  %330 = phi ptr [ %73, %75 ], [ %81, %83 ], [ %89, %91 ], [ %132, %134 ], [ %140, %142 ], [ %158, %160 ], [ %200, %202 ], [ %217, %219 ], [ %229, %231 ], [ %249, %251 ], [ %97, %99 ]
  %331 = phi ptr [ %37, %75 ], [ %37, %83 ], [ %37, %91 ], [ %37, %134 ], [ %37, %142 ], [ %157, %160 ], [ %37, %202 ], [ %37, %219 ], [ %37, %231 ], [ %37, %251 ], [ %37, %99 ]
  %332 = phi double [ %31, %75 ], [ %31, %83 ], [ %31, %91 ], [ %31, %134 ], [ %31, %142 ], [ %31, %160 ], [ %31, %202 ], [ %31, %219 ], [ %31, %231 ], [ %31, %251 ], [ %100, %99 ]
  %333 = phi i64 [ %29, %75 ], [ %29, %83 ], [ %29, %91 ], [ %135, %134 ], [ %143, %142 ], [ %29, %160 ], [ %29, %202 ], [ %29, %219 ], [ %29, %231 ], [ %29, %251 ], [ %29, %99 ]
  %334 = call ptr @DestroyImage(ptr noundef nonnull %331) #15
  br label %340

335:                                              ; preds = %323, %273, %269, %263, %259, %255, %224, %211, %207, %194, %189, %186, %164, %127, %113, %58, %53, %49
  %336 = phi ptr [ %276, %273 ], [ %271, %269 ], [ %267, %263 ], [ %261, %259 ], [ %256, %255 ], [ %226, %224 ], [ %213, %211 ], [ %209, %207 ], [ %197, %194 ], [ %192, %189 ], [ %187, %186 ], [ %167, %164 ], [ %118, %127 ], [ %104, %113 ], [ %324, %323 ], [ %68, %58 ], [ %55, %53 ], [ %51, %49 ]
  %337 = phi double [ %28, %273 ], [ %28, %269 ], [ %264, %263 ], [ %260, %259 ], [ %258, %255 ], [ %225, %224 ], [ %28, %211 ], [ %28, %207 ], [ %28, %194 ], [ %28, %189 ], [ %28, %186 ], [ %28, %164 ], [ %28, %127 ], [ %28, %113 ], [ %28, %323 ], [ %28, %58 ], [ %54, %53 ], [ %50, %49 ]
  %338 = call ptr @DestroyImage(ptr noundef %37) #15
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
  %348 = call i32 @DeleteImageProperty(ptr noundef nonnull %344, ptr noundef nonnull @.str.18) #15
  %349 = call i32 @SetImageProperty(ptr noundef nonnull %344, ptr noundef nonnull @.str.18, ptr noundef nonnull %5) #15
  call void @AppendImageToList(ptr noundef nonnull %6, ptr noundef nonnull %344) #15
  %350 = call fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef nonnull @.str.61, i64 noundef %30, i64 noundef 9) #13
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
  br i1 %361, label %362, label %26, !llvm.loop !172

362:                                              ; preds = %340, %335, %26, %352, %325
  %363 = load ptr, ptr %6, align 8, !tbaa !55
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %367

365:                                              ; preds = %362
  %366 = call ptr @DestroyImageInfo(ptr noundef %17) #15
  br label %401

367:                                              ; preds = %362
  %368 = call ptr @CloneMontageInfo(ptr noundef %17, ptr noundef null) #15
  %369 = getelementptr inbounds %struct._MontageInfo, ptr %368, i64 0, i32 15
  %370 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %371 = call i64 @CopyMagickString(ptr noundef nonnull %369, ptr noundef nonnull %370, i64 noundef 4096) #15
  %372 = getelementptr inbounds %struct._MontageInfo, ptr %368, i64 0, i32 8
  store i32 1, ptr %372, align 8, !tbaa !173
  %373 = getelementptr inbounds %struct._MontageInfo, ptr %368, i64 0, i32 1
  %374 = call ptr @CloneString(ptr noundef nonnull %373, ptr noundef nonnull @.str.62) #15
  %375 = call ptr @CloneString(ptr noundef %368, ptr noundef nonnull @.str.17) #15
  %376 = getelementptr inbounds %struct._MontageInfo, ptr %368, i64 0, i32 3
  %377 = call ptr @CloneString(ptr noundef nonnull %376, ptr noundef nonnull @DefaultTileFrame) #15
  %378 = load ptr, ptr %6, align 8, !tbaa !55
  %379 = call ptr @MontageImages(ptr noundef %378, ptr noundef %368, ptr noundef %2) #15
  %380 = call ptr @DestroyMontageInfo(ptr noundef %368) #15
  %381 = load ptr, ptr %6, align 8, !tbaa !55
  %382 = call ptr @DestroyImageList(ptr noundef %381) #15
  store ptr %382, ptr %6, align 8, !tbaa !55
  %383 = icmp eq ptr %379, null
  br i1 %383, label %384, label %386

384:                                              ; preds = %367
  %385 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2718, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %370) #15
  br label %401

386:                                              ; preds = %367
  %387 = getelementptr inbounds %struct._Image, ptr %379, i64 0, i32 20
  %388 = load ptr, ptr %387, align 8, !tbaa !175
  %389 = icmp eq ptr %388, null
  br i1 %389, label %399, label %390

390:                                              ; preds = %386
  %391 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %388) #15
  store ptr %391, ptr %387, align 8, !tbaa !175
  %392 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %393 = load ptr, ptr %392, align 8, !tbaa !176
  %394 = icmp eq ptr %393, null
  br i1 %394, label %399, label %395

395:                                              ; preds = %390
  %396 = getelementptr inbounds %struct._Image, ptr %379, i64 0, i32 21
  %397 = load ptr, ptr %396, align 8, !tbaa !176
  %398 = call ptr @RelinquishMagickMemory(ptr noundef %397) #15
  store ptr %398, ptr %396, align 8, !tbaa !176
  br label %399

399:                                              ; preds = %390, %395, %386
  %400 = call ptr @DestroyImageInfo(ptr noundef %17) #15
  br label %401

401:                                              ; preds = %399, %384, %365
  %402 = phi ptr [ null, %365 ], [ null, %384 ], [ %379, %399 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
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
  %5 = tail call ptr @SharpenImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, ptr noundef %3) #13
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @BilevelImage(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SpreadImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3912, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !54
  %17 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %14, i64 noundef %16, i32 noundef 1, ptr noundef %2) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %99, label %19

19:                                               ; preds = %12
  %20 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %17, i32 noundef 1) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %23) #15
  %24 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #15
  br label %99

25:                                               ; preds = %19
  call void @GetMagickPixelPacket(ptr noundef nonnull %17, ptr noundef nonnull %4) #15
  %26 = call i64 @GetOptimalKernelWidth1D(double noundef %1, double noundef 5.000000e-01) #15
  %27 = call fastcc ptr @AcquireRandomInfoThreadSet() #13
  %28 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #15
  %29 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %17, ptr noundef %2) #15
  %30 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !54
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %35 = uitofp i64 %26 to double
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %37

37:                                               ; preds = %33, %82
  %38 = phi i64 [ 0, %33 ], [ %85, %82 ]
  %39 = phi i64 [ 0, %33 ], [ %84, %82 ]
  %40 = phi i32 [ 1, %33 ], [ %83, %82 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %82, label %42

42:                                               ; preds = %37
  %43 = load i64, ptr %34, align 8, !tbaa !53
  %44 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %29, i64 noundef 0, i64 noundef %38, i64 noundef %43, i64 noundef 1, ptr noundef %2) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %82, label %46

46:                                               ; preds = %42
  %47 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %29) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !177
  %48 = load i64, ptr %34, align 8, !tbaa !53
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = sitofp i64 %38 to double
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %67, %52 ]
  %54 = phi ptr [ %44, %50 ], [ %66, %52 ]
  %55 = sitofp i64 %53 to double
  %56 = load ptr, ptr %27, align 8, !tbaa !55
  %57 = call double @GetPseudoRandomValue(ptr noundef %56) #15
  %58 = fadd double %57, -5.000000e-01
  %59 = call double @llvm.fmuladd.f64(double %35, double %58, double %55)
  %60 = load ptr, ptr %27, align 8, !tbaa !55
  %61 = call double @GetPseudoRandomValue(ptr noundef %60) #15
  %62 = fadd double %61, -5.000000e-01
  %63 = call double @llvm.fmuladd.f64(double %35, double %62, double %51)
  %64 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %28, i32 noundef 0, double noundef %59, double noundef %63, ptr noundef nonnull %5, ptr noundef %2) #15
  %65 = getelementptr inbounds i16, ptr %47, i64 %53
  call fastcc void @SetPixelPacket(ptr noundef nonnull %17, ptr noundef nonnull %5, ptr noundef nonnull %54, ptr noundef %65) #13
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %67 = add nuw nsw i64 %53, 1
  %68 = load i64, ptr %34, align 8, !tbaa !53
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %52, label %70, !llvm.loop !179

70:                                               ; preds = %52, %46
  %71 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %29, ptr noundef %2) #17
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load ptr, ptr %36, align 8, !tbaa !79
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = add nsw i64 %39, 1
  %78 = load i64, ptr %15, align 8, !tbaa !54
  %79 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.67, i64 noundef %39, i64 noundef %78) #13
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 0, i32 %73
  br label %82

82:                                               ; preds = %70, %76, %42, %37
  %83 = phi i32 [ 0, %37 ], [ 0, %42 ], [ %81, %76 ], [ %73, %70 ]
  %84 = phi i64 [ %39, %37 ], [ %39, %42 ], [ %77, %76 ], [ %39, %70 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  %85 = add nuw nsw i64 %38, 1
  %86 = load i64, ptr %30, align 8, !tbaa !54
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %37, label %88, !llvm.loop !180

88:                                               ; preds = %82
  %89 = icmp eq i32 %83, 0
  %90 = call ptr @DestroyCacheView(ptr noundef %29) #15
  %91 = call ptr @DestroyCacheView(ptr noundef %28) #15
  %92 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %27) #13
  br i1 %89, label %93, label %99

93:                                               ; preds = %88
  %94 = call ptr @DestroyImage(ptr noundef nonnull %17) #15
  br label %99

95:                                               ; preds = %25
  %96 = call ptr @DestroyCacheView(ptr noundef %29) #15
  %97 = call ptr @DestroyCacheView(ptr noundef %28) #15
  %98 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %27) #13
  br label %99

99:                                               ; preds = %95, %88, %93, %12, %22
  %100 = phi ptr [ null, %22 ], [ null, %12 ], [ %94, %93 ], [ %17, %88 ], [ %17, %95 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret ptr %100
}

; Function Attrs: optsize
declare i32 @SolarizeImage(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShadeImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3562, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #15
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !54
  %18 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %15, i64 noundef %17, i32 noundef 1, ptr noundef %4) #15
  %19 = icmp eq ptr %13, null
  %20 = icmp eq ptr %18, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  br i1 %19, label %25, label %23

23:                                               ; preds = %22
  %24 = tail call ptr @DestroyImage(ptr noundef nonnull %13) #15
  br label %25

25:                                               ; preds = %23, %22
  br i1 %20, label %217, label %26

26:                                               ; preds = %25
  %27 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #15
  br label %217

28:                                               ; preds = %12
  %29 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %18, i32 noundef 1) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %32) #15
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %13) #15
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #15
  br label %217

35:                                               ; preds = %28
  %36 = tail call fastcc double @DegreesToRadians(double noundef %2) #13
  %37 = tail call double @cos(double noundef %36) #15
  %38 = fmul double %37, 6.553500e+04
  %39 = tail call fastcc double @DegreesToRadians(double noundef %3) #13
  %40 = tail call double @cos(double noundef %39) #15
  %41 = fmul double %38, %40
  %42 = tail call double @sin(double noundef %36) #15
  %43 = fmul double %42, 6.553500e+04
  %44 = tail call double @cos(double noundef %39) #15
  %45 = fmul double %43, %44
  %46 = tail call double @sin(double noundef %39) #15
  %47 = fmul double %46, 6.553500e+04
  %48 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %13, ptr noundef %4) #15
  %49 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %18, ptr noundef %4) #15
  %50 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !54
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %213

53:                                               ; preds = %35
  %54 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 7
  %55 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %56 = fptrunc double %47 to float
  %57 = icmp eq i32 %1, 0
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %59

59:                                               ; preds = %53, %200
  %60 = phi i32 [ 1, %53 ], [ %202, %200 ]
  %61 = phi i64 [ 0, %53 ], [ %201, %200 ]
  %62 = phi i64 [ 0, %53 ], [ %203, %200 ]
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %200, label %64

64:                                               ; preds = %59
  %65 = add nsw i64 %62, -1
  %66 = load i64, ptr %54, align 8, !tbaa !53
  %67 = add i64 %66, 2
  %68 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %48, i64 noundef -1, i64 noundef %65, i64 noundef %67, i64 noundef 3, ptr noundef %4) #17
  %69 = load i64, ptr %55, align 8, !tbaa !53
  %70 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %49, i64 noundef 0, i64 noundef %62, i64 noundef %69, i64 noundef 1, ptr noundef %4) #17
  %71 = icmp eq ptr %68, null
  %72 = icmp eq ptr %70, null
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %200, label %74

74:                                               ; preds = %64
  %75 = load i64, ptr %54, align 8, !tbaa !53
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %188

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 1
  %79 = load i64, ptr %14, align 8, !tbaa !53
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 %79
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 2
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 %79
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 2
  br label %84

84:                                               ; preds = %77, %175
  %85 = phi i64 [ %185, %175 ], [ 0, %77 ]
  %86 = phi ptr [ %184, %175 ], [ %70, %77 ]
  %87 = phi ptr [ %100, %175 ], [ %83, %77 ]
  %88 = phi ptr [ %98, %175 ], [ %81, %77 ]
  %89 = phi ptr [ %96, %175 ], [ %78, %77 ]
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 -1
  %91 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %90) #17
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 -1
  %93 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %92) #17
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 -1
  %95 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %94) #17
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %97 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %96) #17
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1
  %99 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %98) #17
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 1
  %101 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %100) #17
  %102 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %94) #17
  %103 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %87) #17
  %104 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %100) #17
  %105 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %90) #17
  %106 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %89) #17
  %107 = tail call float @GetPixelIntensity(ptr noundef nonnull %13, ptr noundef nonnull %96) #17
  %108 = insertelement <2 x float> poison, float %102, i64 0
  %109 = insertelement <2 x float> %108, float %91, i64 1
  %110 = insertelement <2 x float> poison, float %103, i64 0
  %111 = insertelement <2 x float> %110, float %93, i64 1
  %112 = fadd <2 x float> %109, %111
  %113 = insertelement <2 x float> poison, float %104, i64 0
  %114 = insertelement <2 x float> %113, float %95, i64 1
  %115 = fadd <2 x float> %112, %114
  %116 = insertelement <2 x float> poison, float %105, i64 0
  %117 = insertelement <2 x float> %116, float %97, i64 1
  %118 = fsub <2 x float> %115, %117
  %119 = insertelement <2 x float> poison, float %106, i64 0
  %120 = insertelement <2 x float> %119, float %99, i64 1
  %121 = fsub <2 x float> %118, %120
  %122 = insertelement <2 x float> poison, float %107, i64 0
  %123 = insertelement <2 x float> %122, float %101, i64 1
  %124 = fsub <2 x float> %121, %123
  %125 = extractelement <2 x float> %124, i64 1
  %126 = fpext float %125 to double
  %127 = extractelement <2 x float> %124, i64 0
  %128 = fpext float %127 to double
  %129 = fcmp oeq <2 x float> %124, zeroinitializer
  %130 = extractelement <2 x i1> %129, i64 0
  %131 = extractelement <2 x i1> %129, i64 1
  %132 = select i1 %131, i1 %130, i1 false
  br i1 %132, label %151, label %133

133:                                              ; preds = %84
  %134 = fmul double %45, %128
  %135 = tail call double @llvm.fmuladd.f64(double %126, double %41, double %134)
  %136 = tail call double @llvm.fmuladd.f64(double %47, double 1.310700e+05, double %135)
  %137 = fptrunc double %136 to float
  %138 = fpext float %137 to double
  %139 = fcmp ogt double %138, 1.000000e-15
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = fmul double %128, %128
  %142 = tail call double @llvm.fmuladd.f64(double %126, double %126, double %141)
  %143 = fadd double %142, 0x420FFFC000200000
  %144 = fptrunc double %143 to float
  %145 = fpext float %144 to double
  %146 = fcmp ogt double %145, 1.000000e-30
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = tail call double @llvm.sqrt.f64(double %145)
  %149 = fdiv double %138, %148
  %150 = fptrunc double %149 to float
  br label %151

151:                                              ; preds = %84, %133, %147, %140
  %152 = phi float [ %150, %147 ], [ 0.000000e+00, %140 ], [ 0.000000e+00, %133 ], [ %56, %84 ]
  br i1 %57, label %155, label %153

153:                                              ; preds = %151
  %154 = fptoui float %152 to i16
  br label %175

155:                                              ; preds = %151
  %156 = fpext float %152 to double
  %157 = fmul double %156, 0x3EF0001000100010
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 2
  %159 = load i16, ptr %158, align 2, !tbaa !71
  %160 = uitofp i16 %159 to double
  %161 = fmul double %157, %160
  %162 = fptrunc double %161 to float
  %163 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %162) #13
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 1
  %165 = load i16, ptr %164, align 2, !tbaa !72
  %166 = uitofp i16 %165 to double
  %167 = fmul double %157, %166
  %168 = fptrunc double %167 to float
  %169 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %168) #13
  %170 = load i16, ptr %88, align 2, !tbaa !73
  %171 = uitofp i16 %170 to double
  %172 = fmul double %157, %171
  %173 = fptrunc double %172 to float
  %174 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %173) #13
  br label %175

175:                                              ; preds = %155, %153
  %176 = phi i16 [ %163, %155 ], [ %154, %153 ]
  %177 = phi i16 [ %169, %155 ], [ %154, %153 ]
  %178 = phi i16 [ %174, %155 ], [ %154, %153 ]
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 2
  store i16 %176, ptr %179, align 2
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 1
  store i16 %177, ptr %180, align 2
  store i16 %178, ptr %86, align 2, !tbaa !73
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 3
  %182 = load i16, ptr %181, align 2, !tbaa !70
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 3
  store i16 %182, ptr %183, align 2, !tbaa !70
  %184 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 1
  %185 = add nuw nsw i64 %85, 1
  %186 = load i64, ptr %54, align 8, !tbaa !53
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %84, label %188, !llvm.loop !181

188:                                              ; preds = %175, %74
  %189 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %49, ptr noundef %4) #17
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = load ptr, ptr %58, align 8, !tbaa !79
  %193 = icmp eq ptr %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = add nsw i64 %61, 1
  %196 = load i64, ptr %16, align 8, !tbaa !54
  %197 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.66, i64 noundef %61, i64 noundef %196) #13
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i32 0, i32 %191
  br label %200

200:                                              ; preds = %188, %194, %64, %59
  %201 = phi i64 [ %61, %59 ], [ %61, %64 ], [ %195, %194 ], [ %61, %188 ]
  %202 = phi i32 [ 0, %59 ], [ 0, %64 ], [ %199, %194 ], [ %191, %188 ]
  %203 = add nuw nsw i64 %62, 1
  %204 = load i64, ptr %50, align 8, !tbaa !54
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %59, label %206, !llvm.loop !182

206:                                              ; preds = %200
  %207 = icmp eq i32 %202, 0
  %208 = tail call ptr @DestroyCacheView(ptr noundef %49) #15
  %209 = tail call ptr @DestroyCacheView(ptr noundef %48) #15
  %210 = tail call ptr @DestroyImage(ptr noundef nonnull %13) #15
  br i1 %207, label %211, label %217

211:                                              ; preds = %206
  %212 = tail call ptr @DestroyImage(ptr noundef %18) #15
  br label %217

213:                                              ; preds = %35
  %214 = tail call ptr @DestroyCacheView(ptr noundef %49) #15
  %215 = tail call ptr @DestroyCacheView(ptr noundef %48) #15
  %216 = tail call ptr @DestroyImage(ptr noundef nonnull %13) #15
  br label %217

217:                                              ; preds = %213, %206, %211, %25, %26, %31
  %218 = phi ptr [ null, %31 ], [ null, %26 ], [ null, %25 ], [ %212, %211 ], [ %18, %206 ], [ %18, %213 ]
  ret ptr %218
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
  %4 = tail call ptr @RotationalBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RotationalBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2822, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #15
  br label %13

13:                                               ; preds = %10, %4
  %14 = tail call ptr @AccelerateRadialBlurImage(ptr noundef nonnull %0, i32 noundef %1, double noundef %2, ptr noundef %3) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %368

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !53
  %19 = add i64 %18, -1
  %20 = uitofp i64 %19 to double
  %21 = fmul double %20, 5.000000e-01
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !54
  %24 = add i64 %23, -1
  %25 = uitofp i64 %24 to double
  %26 = fmul double %25, 5.000000e-01
  %27 = tail call double @hypot(double noundef %21, double noundef %26) #15
  %28 = fptrunc double %27 to float
  %29 = tail call fastcc double @DegreesToRadians(double noundef %2) #13
  %30 = fmul double %29, 4.000000e+00
  %31 = fpext float %28 to double
  %32 = tail call double @sqrt(double noundef %31) #15
  %33 = tail call double @llvm.fmuladd.f64(double %30, double %32, double 2.000000e+00)
  %34 = tail call double @llvm.fabs.f64(double %33)
  %35 = fptoui double %34 to i64
  %36 = add i64 %35, -1
  %37 = uitofp i64 %36 to float
  %38 = fpext float %37 to double
  %39 = fdiv double %29, %38
  %40 = fptrunc double %39 to float
  %41 = tail call ptr @AcquireQuantumMemory(i64 noundef %35, i64 noundef 4) #16
  %42 = tail call ptr @AcquireQuantumMemory(i64 noundef %35, i64 noundef 4) #16
  %43 = icmp eq ptr %41, null
  %44 = icmp eq ptr %42, null
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %16
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2840, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %47) #15
  br label %368

49:                                               ; preds = %16
  %50 = icmp sgt i64 %35, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %49
  %52 = fmul float %37, %40
  %53 = fmul float %52, -5.000000e-01
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ 0, %51 ], [ %65, %54 ]
  %56 = sitofp i64 %55 to float
  %57 = tail call float @llvm.fmuladd.f32(float %40, float %56, float %53)
  %58 = fpext float %57 to double
  %59 = tail call double @cos(double noundef %58) #15
  %60 = fptrunc double %59 to float
  %61 = getelementptr inbounds float, ptr %41, i64 %55
  store float %60, ptr %61, align 4, !tbaa !95
  %62 = tail call double @sin(double noundef %58) #15
  %63 = fptrunc double %62 to float
  %64 = getelementptr inbounds float, ptr %42, i64 %55
  store float %63, ptr %64, align 4, !tbaa !95
  %65 = add nuw nsw i64 %55, 1
  %66 = icmp eq i64 %65, %35
  br i1 %66, label %67, label %54, !llvm.loop !183

67:                                               ; preds = %54, %49
  %68 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #15
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %41) #15
  %72 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %42) #15
  br label %368

73:                                               ; preds = %67
  %74 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %68, i32 noundef 1) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %41) #15
  %78 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %42) #15
  %79 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %79) #15
  %80 = tail call ptr @DestroyImage(ptr noundef nonnull %68) #15
  br label %368

81:                                               ; preds = %73
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %5) #15
  %82 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #15
  %83 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %68, ptr noundef %3) #15
  %84 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 8
  %85 = load i64, ptr %84, align 8, !tbaa !54
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %363

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 7
  %89 = getelementptr inbounds i8, ptr %5, i64 32
  %90 = getelementptr inbounds i8, ptr %5, i64 48
  %91 = and i32 %1, 8
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %6, i64 0, i32 3
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %6, i64 0, i32 1
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %97 = and i32 %1, 1
  %98 = icmp eq i32 %97, 0
  %99 = and i32 %1, 2
  %100 = icmp eq i32 %99, 0
  %101 = and i32 %1, 4
  %102 = icmp eq i32 %101, 0
  %103 = and i32 %1, 32
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %106

106:                                              ; preds = %87, %349
  %107 = phi i32 [ 1, %87 ], [ %351, %349 ]
  %108 = phi i64 [ 0, %87 ], [ %350, %349 ]
  %109 = phi i64 [ 0, %87 ], [ %352, %349 ]
  %110 = icmp eq i32 %107, 0
  br i1 %110, label %349, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %88, align 8, !tbaa !53
  %113 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %83, i64 noundef 0, i64 noundef %109, i64 noundef %112, i64 noundef 1, ptr noundef %3) #17
  %114 = icmp eq ptr %113, null
  br i1 %114, label %349, label %115

115:                                              ; preds = %111
  %116 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %83) #15
  %117 = load i64, ptr %88, align 8, !tbaa !53
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %337

119:                                              ; preds = %115
  %120 = sitofp i64 %109 to double
  %121 = fsub double %120, %26
  %122 = fneg double %121
  %123 = icmp eq ptr %116, null
  br label %124

124:                                              ; preds = %119, %332
  %125 = phi i64 [ 0, %119 ], [ %334, %332 ]
  %126 = phi ptr [ %113, %119 ], [ %333, %332 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %127 = sitofp i64 %125 to double
  %128 = fsub double %127, %21
  %129 = call double @hypot(double noundef %128, double noundef %121) #15
  %130 = fptrunc double %129 to float
  %131 = fcmp oeq float %130, 0.000000e+00
  br i1 %131, label %139, label %132

132:                                              ; preds = %124
  %133 = fdiv float %28, %130
  %134 = fptoui float %133 to i64
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = icmp ult i64 %134, %35
  %138 = select i1 %137, i64 %134, i64 %36
  br label %139

139:                                              ; preds = %136, %132, %124
  %140 = phi i64 [ 1, %124 ], [ 1, %132 ], [ %138, %136 ]
  %141 = load <4 x float>, ptr %89, align 8
  %142 = load float, ptr %90, align 8, !tbaa.struct !151
  br i1 %92, label %150, label %143

143:                                              ; preds = %139
  %144 = load i32, ptr %93, align 8, !tbaa !69
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = extractelement <4 x float> %141, i64 2
  %148 = extractelement <4 x float> %141, i64 3
  %149 = shufflevector <4 x float> %141, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br i1 %50, label %223, label %282

150:                                              ; preds = %143, %139
  br i1 %50, label %151, label %187

151:                                              ; preds = %150, %182
  %152 = phi i64 [ %185, %182 ], [ 0, %150 ]
  %153 = phi float [ %184, %182 ], [ 0.000000e+00, %150 ]
  %154 = phi float [ %183, %182 ], [ %142, %150 ]
  %155 = phi <4 x float> [ %174, %182 ], [ %141, %150 ]
  %156 = getelementptr inbounds float, ptr %41, i64 %152
  %157 = load float, ptr %156, align 4, !tbaa !95
  %158 = fpext float %157 to double
  %159 = call double @llvm.fmuladd.f64(double %128, double %158, double %21)
  %160 = getelementptr inbounds float, ptr %42, i64 %152
  %161 = load float, ptr %160, align 4, !tbaa !95
  %162 = fpext float %161 to double
  %163 = call double @llvm.fmuladd.f64(double %122, double %162, double %159)
  %164 = fadd double %163, 5.000000e-01
  %165 = fptosi double %164 to i64
  %166 = call double @llvm.fmuladd.f64(double %128, double %162, double %26)
  %167 = call double @llvm.fmuladd.f64(double %121, double %158, double %166)
  %168 = fadd double %167, 5.000000e-01
  %169 = fptosi double %168 to i64
  %170 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %82, i64 noundef %165, i64 noundef %169, ptr noundef nonnull %6, ptr noundef %3) #15
  %171 = load <4 x i16>, ptr %6, align 8, !tbaa !75
  %172 = uitofp <4 x i16> %171 to <4 x float>
  %173 = shufflevector <4 x float> %172, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %174 = fadd <4 x float> %155, %173
  %175 = load i32, ptr %96, align 4, !tbaa !74
  %176 = icmp eq i32 %175, 12
  br i1 %176, label %177, label %182

177:                                              ; preds = %151
  %178 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %82) #15
  %179 = load i16, ptr %178, align 2, !tbaa !75
  %180 = uitofp i16 %179 to float
  %181 = fadd float %154, %180
  br label %182

182:                                              ; preds = %177, %151
  %183 = phi float [ %181, %177 ], [ %154, %151 ]
  %184 = fadd float %153, 1.000000e+00
  %185 = add nsw i64 %152, %140
  %186 = icmp slt i64 %185, %35
  br i1 %186, label %151, label %187, !llvm.loop !184

187:                                              ; preds = %182, %150
  %188 = phi float [ %142, %150 ], [ %183, %182 ]
  %189 = phi float [ 0.000000e+00, %150 ], [ %184, %182 ]
  %190 = phi <4 x float> [ %141, %150 ], [ %174, %182 ]
  %191 = fpext float %189 to double
  %192 = call fastcc double @PerceptibleReciprocal(double noundef %191) #13
  %193 = fptrunc double %192 to float
  br i1 %98, label %199, label %194

194:                                              ; preds = %187
  %195 = extractelement <4 x float> %190, i64 0
  %196 = fmul float %195, %193
  %197 = call fastcc zeroext i16 @ClampToQuantum(float noundef %196) #13
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 2
  store i16 %197, ptr %198, align 2, !tbaa !71
  br label %199

199:                                              ; preds = %194, %187
  br i1 %100, label %205, label %200

200:                                              ; preds = %199
  %201 = extractelement <4 x float> %190, i64 1
  %202 = fmul float %201, %193
  %203 = call fastcc zeroext i16 @ClampToQuantum(float noundef %202) #13
  %204 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 1
  store i16 %203, ptr %204, align 2, !tbaa !72
  br label %205

205:                                              ; preds = %200, %199
  br i1 %102, label %210, label %206

206:                                              ; preds = %205
  %207 = extractelement <4 x float> %190, i64 2
  %208 = fmul float %207, %193
  %209 = call fastcc zeroext i16 @ClampToQuantum(float noundef %208) #13
  store i16 %209, ptr %126, align 2, !tbaa !73
  br label %210

210:                                              ; preds = %206, %205
  br i1 %92, label %216, label %211

211:                                              ; preds = %210
  %212 = extractelement <4 x float> %190, i64 3
  %213 = fmul float %212, %193
  %214 = call fastcc zeroext i16 @ClampToQuantum(float noundef %213) #13
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 3
  store i16 %214, ptr %215, align 2, !tbaa !70
  br label %216

216:                                              ; preds = %211, %210
  br i1 %104, label %332, label %217

217:                                              ; preds = %216
  %218 = load i32, ptr %96, align 4, !tbaa !74
  %219 = icmp ne i32 %218, 12
  %220 = select i1 %219, i1 true, i1 %123
  br i1 %220, label %332, label %221

221:                                              ; preds = %217
  %222 = fmul float %188, %193
  br label %328

223:                                              ; preds = %146, %276
  %224 = phi double [ %278, %276 ], [ 0.000000e+00, %146 ]
  %225 = phi i64 [ %280, %276 ], [ 0, %146 ]
  %226 = phi float [ %279, %276 ], [ 0.000000e+00, %146 ]
  %227 = phi float [ %264, %276 ], [ %147, %146 ]
  %228 = phi float [ %266, %276 ], [ %148, %146 ]
  %229 = phi float [ %277, %276 ], [ %142, %146 ]
  %230 = phi <2 x float> [ %259, %276 ], [ %149, %146 ]
  %231 = getelementptr inbounds float, ptr %41, i64 %225
  %232 = load float, ptr %231, align 4, !tbaa !95
  %233 = fpext float %232 to double
  %234 = call double @llvm.fmuladd.f64(double %128, double %233, double %21)
  %235 = getelementptr inbounds float, ptr %42, i64 %225
  %236 = load float, ptr %235, align 4, !tbaa !95
  %237 = fpext float %236 to double
  %238 = call double @llvm.fmuladd.f64(double %122, double %237, double %234)
  %239 = fadd double %238, 5.000000e-01
  %240 = fptosi double %239 to i64
  %241 = call double @llvm.fmuladd.f64(double %128, double %237, double %26)
  %242 = call double @llvm.fmuladd.f64(double %121, double %233, double %241)
  %243 = fadd double %242, 5.000000e-01
  %244 = fptosi double %243 to i64
  %245 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %82, i64 noundef %240, i64 noundef %244, ptr noundef nonnull %6, ptr noundef %3) #15
  %246 = load i16, ptr %94, align 2, !tbaa !70
  %247 = xor i16 %246, -1
  %248 = uitofp i16 %247 to double
  %249 = fmul double %248, 0x3EF0001000100010
  %250 = fptrunc double %249 to float
  %251 = fpext float %250 to double
  %252 = fpext <2 x float> %230 to <2 x double>
  %253 = load <2 x i16>, ptr %95, align 2, !tbaa !75
  %254 = uitofp <2 x i16> %253 to <2 x double>
  %255 = shufflevector <2 x double> %254, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %256 = insertelement <2 x double> poison, double %251, i64 0
  %257 = shufflevector <2 x double> %256, <2 x double> poison, <2 x i32> zeroinitializer
  %258 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %257, <2 x double> %255, <2 x double> %252)
  %259 = fptrunc <2 x double> %258 to <2 x float>
  %260 = load i16, ptr %6, align 8, !tbaa !73
  %261 = uitofp i16 %260 to double
  %262 = fpext float %227 to double
  %263 = call double @llvm.fmuladd.f64(double %251, double %261, double %262)
  %264 = fptrunc double %263 to float
  %265 = uitofp i16 %246 to float
  %266 = fadd float %228, %265
  %267 = load i32, ptr %96, align 4, !tbaa !74
  %268 = icmp eq i32 %267, 12
  br i1 %268, label %269, label %276

269:                                              ; preds = %223
  %270 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %82) #15
  %271 = load i16, ptr %270, align 2, !tbaa !75
  %272 = uitofp i16 %271 to double
  %273 = fpext float %229 to double
  %274 = call double @llvm.fmuladd.f64(double %251, double %272, double %273)
  %275 = fptrunc double %274 to float
  br label %276

276:                                              ; preds = %269, %223
  %277 = phi float [ %275, %269 ], [ %229, %223 ]
  %278 = fadd double %224, %251
  %279 = fadd float %226, 1.000000e+00
  %280 = add nsw i64 %225, %140
  %281 = icmp slt i64 %280, %35
  br i1 %281, label %223, label %282, !llvm.loop !185

282:                                              ; preds = %276, %146
  %283 = phi float [ %142, %146 ], [ %277, %276 ]
  %284 = phi float [ %148, %146 ], [ %266, %276 ]
  %285 = phi float [ %147, %146 ], [ %264, %276 ]
  %286 = phi float [ 0.000000e+00, %146 ], [ %279, %276 ]
  %287 = phi double [ 0.000000e+00, %146 ], [ %278, %276 ]
  %288 = phi <2 x float> [ %149, %146 ], [ %259, %276 ]
  %289 = fcmp olt double %287, 0.000000e+00
  %290 = select i1 %289, double 0.000000e+00, double %287
  %291 = call fastcc double @PerceptibleReciprocal(double noundef %290) #13
  %292 = fpext float %286 to double
  %293 = call fastcc double @PerceptibleReciprocal(double noundef %292) #13
  %294 = fptrunc double %293 to float
  br i1 %98, label %302, label %295

295:                                              ; preds = %282
  %296 = extractelement <2 x float> %288, i64 0
  %297 = fpext float %296 to double
  %298 = fmul double %291, %297
  %299 = fptrunc double %298 to float
  %300 = call fastcc zeroext i16 @ClampToQuantum(float noundef %299) #13
  %301 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 2
  store i16 %300, ptr %301, align 2, !tbaa !71
  br label %302

302:                                              ; preds = %295, %282
  br i1 %100, label %310, label %303

303:                                              ; preds = %302
  %304 = extractelement <2 x float> %288, i64 1
  %305 = fpext float %304 to double
  %306 = fmul double %291, %305
  %307 = fptrunc double %306 to float
  %308 = call fastcc zeroext i16 @ClampToQuantum(float noundef %307) #13
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 1
  store i16 %308, ptr %309, align 2, !tbaa !72
  br label %310

310:                                              ; preds = %303, %302
  br i1 %102, label %316, label %311

311:                                              ; preds = %310
  %312 = fpext float %285 to double
  %313 = fmul double %291, %312
  %314 = fptrunc double %313 to float
  %315 = call fastcc zeroext i16 @ClampToQuantum(float noundef %314) #13
  store i16 %315, ptr %126, align 2, !tbaa !73
  br label %316

316:                                              ; preds = %310, %311
  %317 = fmul float %284, %294
  %318 = call fastcc zeroext i16 @ClampToQuantum(float noundef %317) #13
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 3
  store i16 %318, ptr %319, align 2, !tbaa !70
  br i1 %104, label %332, label %320

320:                                              ; preds = %316
  %321 = load i32, ptr %96, align 4, !tbaa !74
  %322 = icmp ne i32 %321, 12
  %323 = select i1 %322, i1 true, i1 %123
  br i1 %323, label %332, label %324

324:                                              ; preds = %320
  %325 = fpext float %283 to double
  %326 = fmul double %291, %325
  %327 = fptrunc double %326 to float
  br label %328

328:                                              ; preds = %221, %324
  %329 = phi float [ %327, %324 ], [ %222, %221 ]
  %330 = getelementptr inbounds i16, ptr %116, i64 %125
  %331 = call fastcc zeroext i16 @ClampToQuantum(float noundef %329) #13
  store i16 %331, ptr %330, align 2, !tbaa !75
  br label %332

332:                                              ; preds = %328, %316, %320, %216, %217
  %333 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  %334 = add nuw nsw i64 %125, 1
  %335 = load i64, ptr %88, align 8, !tbaa !53
  %336 = icmp slt i64 %334, %335
  br i1 %336, label %124, label %337, !llvm.loop !186

337:                                              ; preds = %332, %115
  %338 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %83, ptr noundef %3) #17
  %339 = icmp ne i32 %338, 0
  %340 = zext i1 %339 to i32
  %341 = load ptr, ptr %105, align 8, !tbaa !79
  %342 = icmp eq ptr %341, null
  br i1 %342, label %349, label %343

343:                                              ; preds = %337
  %344 = add nsw i64 %108, 1
  %345 = load i64, ptr %22, align 8, !tbaa !54
  %346 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i64 noundef %108, i64 noundef %345) #13
  %347 = icmp eq i32 %346, 0
  %348 = select i1 %347, i32 0, i32 %340
  br label %349

349:                                              ; preds = %337, %343, %111, %106
  %350 = phi i64 [ %108, %106 ], [ %108, %111 ], [ %344, %343 ], [ %108, %337 ]
  %351 = phi i32 [ 0, %106 ], [ 0, %111 ], [ %348, %343 ], [ %340, %337 ]
  %352 = add nuw nsw i64 %109, 1
  %353 = load i64, ptr %84, align 8, !tbaa !54
  %354 = icmp slt i64 %352, %353
  br i1 %354, label %106, label %355, !llvm.loop !187

355:                                              ; preds = %349
  %356 = icmp eq i32 %351, 0
  %357 = call ptr @DestroyCacheView(ptr noundef %83) #15
  %358 = call ptr @DestroyCacheView(ptr noundef %82) #15
  %359 = call ptr @RelinquishMagickMemory(ptr noundef %41) #15
  %360 = call ptr @RelinquishMagickMemory(ptr noundef %42) #15
  br i1 %356, label %361, label %368

361:                                              ; preds = %355
  %362 = call ptr @DestroyImage(ptr noundef nonnull %68) #15
  br label %368

363:                                              ; preds = %81
  %364 = call ptr @DestroyCacheView(ptr noundef %83) #15
  %365 = call ptr @DestroyCacheView(ptr noundef %82) #15
  %366 = call ptr @RelinquishMagickMemory(ptr noundef %41) #15
  %367 = call ptr @RelinquishMagickMemory(ptr noundef %42) #15
  br label %368

368:                                              ; preds = %363, %355, %361, %13, %76, %70, %46
  %369 = phi ptr [ null, %46 ], [ null, %70 ], [ null, %76 ], [ %14, %13 ], [ %362, %361 ], [ %68, %355 ], [ %68, %363 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  ret ptr %369
}

; Function Attrs: optsize
declare ptr @AccelerateRadialBlurImage(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SelectiveBlurImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @SelectiveBlurImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SelectiveBlurImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #14
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3136, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %6
  %17 = tail call i64 @GetOptimalKernelWidth1D(double noundef %2, double noundef %3) #15
  %18 = shl i64 %17, 3
  %19 = tail call ptr @AcquireAlignedMemory(i64 noundef %17, i64 noundef %18) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3143, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %22) #15
  br label %632

24:                                               ; preds = %16
  %25 = add i64 %17, -1
  %26 = sdiv i64 %25, 2
  %27 = sub nsw i64 0, %26
  %28 = icmp ugt i64 %17, -9223372036854775808
  br i1 %28, label %59, label %29

29:                                               ; preds = %24
  %30 = tail call double @llvm.fabs.f64(double %3)
  %31 = fcmp olt double %30, 1.000000e-15
  %32 = select i1 %31, double 1.000000e-15, double %3
  %33 = fmul double %32, 2.000000e+00
  %34 = fmul double %32, %33
  %35 = fmul double %32, 0x401921FB54442D18
  %36 = fmul double %32, %35
  %37 = tail call i64 @llvm.abs.i64(i64 %26, i1 true)
  br label %38

38:                                               ; preds = %56, %29
  %39 = phi i64 [ %27, %29 ], [ %57, %56 ]
  %40 = phi i64 [ 0, %29 ], [ %52, %56 ]
  %41 = mul nsw i64 %39, %39
  %42 = sitofp i64 %41 to double
  br label %43

43:                                               ; preds = %38, %43
  %44 = phi i64 [ %27, %38 ], [ %54, %43 ]
  %45 = phi i64 [ %40, %38 ], [ %52, %43 ]
  %46 = sitofp i64 %44 to double
  %47 = tail call double @llvm.fmuladd.f64(double %46, double %46, double %42)
  %48 = fneg double %47
  %49 = fdiv double %48, %34
  %50 = tail call double @exp(double noundef %49) #15
  %51 = fdiv double %50, %36
  %52 = add nsw i64 %45, 1
  %53 = getelementptr inbounds double, ptr %19, i64 %45
  store double %51, ptr %53, align 8, !tbaa !56
  %54 = add i64 %44, 1
  %55 = icmp eq i64 %44, %37
  br i1 %55, label %56, label %43, !llvm.loop !188

56:                                               ; preds = %43
  %57 = add i64 %39, 1
  %58 = icmp eq i64 %39, %37
  br i1 %58, label %59, label %38, !llvm.loop !189

59:                                               ; preds = %56, %24
  %60 = load i32, ptr %10, align 8, !tbaa !34
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %63 = uitofp i64 %17 to double
  %64 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3165, ptr noundef nonnull @.str.63, double noundef %63, double noundef %63) #15
  %65 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #15
  store ptr %65, ptr %9, align 8, !tbaa !55
  %66 = icmp sgt i64 %17, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %62, %83
  %68 = phi i64 [ %86, %83 ], [ 0, %62 ]
  %69 = phi ptr [ %77, %83 ], [ %19, %62 ]
  %70 = load ptr, ptr %9, align 8, !tbaa !55
  store i8 0, ptr %70, align 1, !tbaa !129
  %71 = sitofp i64 %68 to double
  %72 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %71) #15
  %73 = call i32 @ConcatenateString(ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  br label %74

74:                                               ; preds = %67, %74
  %75 = phi i64 [ %81, %74 ], [ 0, %67 ]
  %76 = phi ptr [ %77, %74 ], [ %69, %67 ]
  %77 = getelementptr inbounds double, ptr %76, i64 1
  %78 = load double, ptr %76, align 8, !tbaa !56
  %79 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.64, double noundef %78) #15
  %80 = call i32 @ConcatenateString(ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  %81 = add nuw nsw i64 %75, 1
  %82 = icmp eq i64 %81, %17
  br i1 %82, label %83, label %74, !llvm.loop !190

83:                                               ; preds = %74
  %84 = load ptr, ptr %9, align 8, !tbaa !55
  %85 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3180, ptr noundef nonnull @.str.2, ptr noundef %84) #15
  %86 = add nuw nsw i64 %68, 1
  %87 = icmp eq i64 %86, %17
  br i1 %87, label %88, label %67, !llvm.loop !191

88:                                               ; preds = %83
  %89 = load ptr, ptr %9, align 8, !tbaa !55
  br label %90

90:                                               ; preds = %88, %62
  %91 = phi ptr [ %89, %88 ], [ %65, %62 ]
  %92 = call ptr @DestroyString(ptr noundef %91) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #14
  br label %93

93:                                               ; preds = %90, %59
  %94 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #15
  br label %632

98:                                               ; preds = %93
  %99 = call i32 @SetImageStorageClass(ptr noundef nonnull %94, i32 noundef 1) #15
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #15
  %103 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %103) #15
  %104 = call ptr @DestroyImage(ptr noundef nonnull %94) #15
  br label %632

105:                                              ; preds = %98
  %106 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #15
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #15
  %110 = call ptr @DestroyImage(ptr noundef nonnull %94) #15
  br label %632

111:                                              ; preds = %105
  %112 = call i32 @TransformImageColorspace(ptr noundef nonnull %106, i32 noundef 2) #15
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct._Image, ptr %106, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %115) #15
  %116 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #15
  %117 = call ptr @DestroyImage(ptr noundef nonnull %94) #15
  %118 = call ptr @DestroyImage(ptr noundef nonnull %106) #15
  br label %632

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %121 = load i64, ptr %120, align 8, !tbaa !53
  %122 = lshr i64 %25, 1
  %123 = add i64 %17, 1
  %124 = add i64 %123, %121
  %125 = mul i64 %124, %122
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #15
  call fastcc void @SetMagickPixelPacketBias(ptr noundef %0, ptr noundef nonnull %7) #13
  %126 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %5) #15
  %127 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %106, ptr noundef %5) #15
  %128 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %94, ptr noundef %5) #15
  %129 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %130 = load i64, ptr %129, align 8, !tbaa !54
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %623

132:                                              ; preds = %119
  %133 = getelementptr inbounds %struct._Image, ptr %106, i64 0, i32 7
  %134 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 7
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %139 = and i32 %1, 8
  %140 = icmp eq i32 %139, 0
  %141 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %142 = icmp sgt i64 %17, 0
  %143 = and i32 %1, 1
  %144 = icmp eq i32 %143, 0
  %145 = and i32 %1, 2
  %146 = icmp eq i32 %145, 0
  %147 = and i32 %1, 4
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %1, 32
  %150 = icmp eq i32 %149, 0
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %152 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %153

153:                                              ; preds = %132, %605
  %154 = phi i64 [ 0, %132 ], [ %608, %605 ]
  %155 = phi i32 [ 1, %132 ], [ %607, %605 ]
  %156 = phi i64 [ 0, %132 ], [ %606, %605 ]
  %157 = icmp eq i32 %155, 0
  br i1 %157, label %605, label %158

158:                                              ; preds = %153
  %159 = sub nsw i64 %154, %122
  %160 = load i64, ptr %120, align 8, !tbaa !53
  %161 = add i64 %160, %17
  %162 = call ptr @GetCacheViewVirtualPixels(ptr noundef %126, i64 noundef %27, i64 noundef %159, i64 noundef %161, i64 noundef %17, ptr noundef %5) #17
  %163 = load i64, ptr %133, align 8, !tbaa !53
  %164 = add i64 %163, %17
  %165 = call ptr @GetCacheViewVirtualPixels(ptr noundef %127, i64 noundef %27, i64 noundef %159, i64 noundef %164, i64 noundef %17, ptr noundef %5) #17
  %166 = load i64, ptr %134, align 8, !tbaa !53
  %167 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %128, i64 noundef 0, i64 noundef %154, i64 noundef %166, i64 noundef 1, ptr noundef %5) #17
  %168 = icmp eq ptr %162, null
  %169 = icmp eq ptr %165, null
  %170 = select i1 %168, i1 true, i1 %169
  %171 = icmp eq ptr %167, null
  %172 = select i1 %170, i1 true, i1 %171
  br i1 %172, label %605, label %173

173:                                              ; preds = %158
  %174 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %126) #15
  %175 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %128) #15
  %176 = load i64, ptr %120, align 8, !tbaa !53
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %593

178:                                              ; preds = %173
  %179 = icmp eq ptr %174, null
  %180 = icmp eq ptr %175, null
  br label %181

181:                                              ; preds = %178, %586
  %182 = phi i64 [ 0, %178 ], [ %590, %586 ]
  %183 = phi ptr [ %167, %178 ], [ %589, %586 ]
  %184 = phi ptr [ %162, %178 ], [ %587, %586 ]
  %185 = phi ptr [ %165, %178 ], [ %588, %586 ]
  %186 = load <4 x float>, ptr %135, align 8
  %187 = shufflevector <4 x float> %186, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %188 = load <2 x float>, ptr %136, align 4, !tbaa !95
  %189 = fpext <2 x float> %188 to <2 x double>
  %190 = shufflevector <2 x double> %189, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %191 = load float, ptr %137, align 4, !tbaa !67
  %192 = insertelement <2 x float> %187, float %191, i64 1
  %193 = fpext <2 x float> %192 to <2 x double>
  %194 = load float, ptr %138, align 8, !tbaa !68
  %195 = fpext float %194 to double
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 %125
  %197 = call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef %196) #17
  br i1 %140, label %202, label %198

198:                                              ; preds = %181
  %199 = load i32, ptr %141, align 8, !tbaa !69
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  br i1 %142, label %387, label %443

202:                                              ; preds = %198, %181
  %203 = extractelement <2 x double> %193, i64 0
  br i1 %142, label %204, label %252

204:                                              ; preds = %202, %245
  %205 = phi i64 [ %250, %245 ], [ 0, %202 ]
  %206 = phi i64 [ %249, %245 ], [ 0, %202 ]
  %207 = phi ptr [ %246, %245 ], [ %19, %202 ]
  %208 = phi double [ %240, %245 ], [ %203, %202 ]
  %209 = phi double [ %239, %245 ], [ 0.000000e+00, %202 ]
  %210 = phi <2 x double> [ %241, %245 ], [ %190, %202 ]
  %211 = getelementptr %struct._PixelPacket, ptr %185, i64 %206
  br label %212

212:                                              ; preds = %204, %238
  %213 = phi i64 [ 0, %204 ], [ %243, %238 ]
  %214 = phi ptr [ %207, %204 ], [ %242, %238 ]
  %215 = phi double [ %208, %204 ], [ %240, %238 ]
  %216 = phi double [ %209, %204 ], [ %239, %238 ]
  %217 = phi <2 x double> [ %210, %204 ], [ %241, %238 ]
  %218 = getelementptr %struct._PixelPacket, ptr %211, i64 %213
  %219 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %218) #17
  %220 = fsub float %219, %197
  %221 = call float @llvm.fabs.f32(float %220)
  %222 = fpext float %221 to double
  %223 = fcmp olt double %222, %4
  br i1 %223, label %224, label %238

224:                                              ; preds = %212
  %225 = load double, ptr %214, align 8, !tbaa !56
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 %213
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 %206
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 %206, i32 2
  %229 = load i16, ptr %228, align 2, !tbaa !71
  %230 = uitofp i16 %229 to double
  %231 = call double @llvm.fmuladd.f64(double %225, double %230, double %215)
  %232 = load <2 x i16>, ptr %227, align 2, !tbaa !75
  %233 = uitofp <2 x i16> %232 to <2 x double>
  %234 = insertelement <2 x double> poison, double %225, i64 0
  %235 = shufflevector <2 x double> %234, <2 x double> poison, <2 x i32> zeroinitializer
  %236 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %235, <2 x double> %233, <2 x double> %217)
  %237 = fadd double %216, %225
  br label %238

238:                                              ; preds = %224, %212
  %239 = phi double [ %237, %224 ], [ %216, %212 ]
  %240 = phi double [ %231, %224 ], [ %215, %212 ]
  %241 = phi <2 x double> [ %236, %224 ], [ %217, %212 ]
  %242 = getelementptr inbounds double, ptr %214, i64 1
  %243 = add nuw nsw i64 %213, 1
  %244 = icmp eq i64 %243, %17
  br i1 %244, label %245, label %212, !llvm.loop !192

245:                                              ; preds = %238
  %246 = getelementptr i8, ptr %207, i64 %18
  %247 = load i64, ptr %120, align 8, !tbaa !53
  %248 = add i64 %206, %17
  %249 = add i64 %248, %247
  %250 = add nuw nsw i64 %205, 1
  %251 = icmp eq i64 %250, %17
  br i1 %251, label %252, label %204, !llvm.loop !193

252:                                              ; preds = %245, %202
  %253 = phi double [ 0.000000e+00, %202 ], [ %239, %245 ]
  %254 = phi double [ %203, %202 ], [ %240, %245 ]
  %255 = phi ptr [ %19, %202 ], [ %246, %245 ]
  %256 = phi <2 x double> [ %190, %202 ], [ %241, %245 ]
  %257 = fcmp olt double %253, 0.000000e+00
  %258 = select i1 %257, double 0.000000e+00, double %253
  %259 = fcmp une double %258, 0.000000e+00
  br i1 %259, label %260, label %280

260:                                              ; preds = %252
  %261 = call fastcc double @PerceptibleReciprocal(double noundef %258) #13
  br i1 %144, label %267, label %262

262:                                              ; preds = %260
  %263 = fmul double %254, %261
  %264 = fptrunc double %263 to float
  %265 = call fastcc zeroext i16 @ClampToQuantum(float noundef %264) #13
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 0, i32 2
  store i16 %265, ptr %266, align 2, !tbaa !71
  br label %267

267:                                              ; preds = %262, %260
  br i1 %146, label %274, label %268

268:                                              ; preds = %267
  %269 = extractelement <2 x double> %256, i64 1
  %270 = fmul double %269, %261
  %271 = fptrunc double %270 to float
  %272 = call fastcc zeroext i16 @ClampToQuantum(float noundef %271) #13
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 0, i32 1
  store i16 %272, ptr %273, align 2, !tbaa !72
  br label %274

274:                                              ; preds = %268, %267
  br i1 %148, label %280, label %275

275:                                              ; preds = %274
  %276 = extractelement <2 x double> %256, i64 0
  %277 = fmul double %276, %261
  %278 = fptrunc double %277 to float
  %279 = call fastcc zeroext i16 @ClampToQuantum(float noundef %278) #13
  store i16 %279, ptr %183, align 2, !tbaa !73
  br label %280

280:                                              ; preds = %274, %275, %252
  br i1 %140, label %333, label %281

281:                                              ; preds = %280
  %282 = extractelement <2 x double> %193, i64 1
  br i1 %142, label %283, label %322

283:                                              ; preds = %281, %315
  %284 = phi i64 [ %320, %315 ], [ 0, %281 ]
  %285 = phi i64 [ %319, %315 ], [ 0, %281 ]
  %286 = phi ptr [ %316, %315 ], [ %255, %281 ]
  %287 = phi double [ %311, %315 ], [ %282, %281 ]
  %288 = phi double [ %310, %315 ], [ 0.000000e+00, %281 ]
  %289 = getelementptr %struct._PixelPacket, ptr %185, i64 %285
  %290 = getelementptr %struct._PixelPacket, ptr %184, i64 %285, i32 3
  br label %291

291:                                              ; preds = %283, %309
  %292 = phi i64 [ 0, %283 ], [ %313, %309 ]
  %293 = phi ptr [ %286, %283 ], [ %312, %309 ]
  %294 = phi double [ %287, %283 ], [ %311, %309 ]
  %295 = phi double [ %288, %283 ], [ %310, %309 ]
  %296 = getelementptr %struct._PixelPacket, ptr %289, i64 %292
  %297 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %296) #17
  %298 = fsub float %297, %197
  %299 = call float @llvm.fabs.f32(float %298)
  %300 = fpext float %299 to double
  %301 = fcmp olt double %300, %4
  br i1 %301, label %302, label %309

302:                                              ; preds = %291
  %303 = load double, ptr %293, align 8, !tbaa !56
  %304 = getelementptr %struct._PixelPacket, ptr %290, i64 %292
  %305 = load i16, ptr %304, align 2, !tbaa !70
  %306 = uitofp i16 %305 to double
  %307 = call double @llvm.fmuladd.f64(double %303, double %306, double %294)
  %308 = fadd double %295, %303
  br label %309

309:                                              ; preds = %302, %291
  %310 = phi double [ %308, %302 ], [ %295, %291 ]
  %311 = phi double [ %307, %302 ], [ %294, %291 ]
  %312 = getelementptr inbounds double, ptr %293, i64 1
  %313 = add nuw nsw i64 %292, 1
  %314 = icmp eq i64 %313, %17
  br i1 %314, label %315, label %291, !llvm.loop !194

315:                                              ; preds = %309
  %316 = getelementptr i8, ptr %286, i64 %18
  %317 = load i64, ptr %120, align 8, !tbaa !53
  %318 = add i64 %285, %17
  %319 = add i64 %318, %317
  %320 = add nuw nsw i64 %284, 1
  %321 = icmp eq i64 %320, %17
  br i1 %321, label %322, label %283, !llvm.loop !195

322:                                              ; preds = %315, %281
  %323 = phi double [ 0.000000e+00, %281 ], [ %310, %315 ]
  %324 = phi double [ %282, %281 ], [ %311, %315 ]
  %325 = phi ptr [ %255, %281 ], [ %316, %315 ]
  %326 = fcmp olt double %323, 0.000000e+00
  %327 = select i1 %326, double 0.000000e+00, double %323
  %328 = call fastcc double @PerceptibleReciprocal(double noundef %327) #13
  %329 = fmul double %324, %328
  %330 = fptrunc double %329 to float
  %331 = call fastcc zeroext i16 @ClampToQuantum(float noundef %330) #13
  %332 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 0, i32 3
  store i16 %331, ptr %332, align 2, !tbaa !70
  br label %333

333:                                              ; preds = %322, %280
  %334 = phi ptr [ %325, %322 ], [ %255, %280 ]
  br i1 %150, label %586, label %335

335:                                              ; preds = %333
  %336 = load i32, ptr %151, align 4, !tbaa !74
  %337 = icmp eq i32 %336, 12
  br i1 %337, label %338, label %586

338:                                              ; preds = %335
  br i1 %142, label %339, label %384

339:                                              ; preds = %338
  %340 = getelementptr inbounds i16, ptr %174, i64 %182
  br label %341

341:                                              ; preds = %339, %377
  %342 = phi i64 [ 0, %339 ], [ %382, %377 ]
  %343 = phi i64 [ 0, %339 ], [ %381, %377 ]
  %344 = phi ptr [ %334, %339 ], [ %378, %377 ]
  %345 = phi double [ %195, %339 ], [ %373, %377 ]
  %346 = phi double [ 0.000000e+00, %339 ], [ %372, %377 ]
  %347 = getelementptr %struct._PixelPacket, ptr %185, i64 %343
  %348 = getelementptr i16, ptr %340, i64 %343
  br label %349

349:                                              ; preds = %341, %371
  %350 = phi i64 [ 0, %341 ], [ %375, %371 ]
  %351 = phi ptr [ %344, %341 ], [ %374, %371 ]
  %352 = phi double [ %345, %341 ], [ %373, %371 ]
  %353 = phi double [ %346, %341 ], [ %372, %371 ]
  %354 = getelementptr %struct._PixelPacket, ptr %347, i64 %350
  %355 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %354) #17
  %356 = fsub float %355, %197
  %357 = call float @llvm.fabs.f32(float %356)
  %358 = fpext float %357 to double
  %359 = fcmp olt double %358, %4
  br i1 %359, label %360, label %371

360:                                              ; preds = %349
  %361 = load double, ptr %351, align 8, !tbaa !56
  br i1 %179, label %366, label %362

362:                                              ; preds = %360
  %363 = getelementptr i16, ptr %348, i64 %350
  %364 = load i16, ptr %363, align 2, !tbaa !75
  %365 = zext i16 %364 to i32
  br label %366

366:                                              ; preds = %360, %362
  %367 = phi i32 [ %365, %362 ], [ 0, %360 ]
  %368 = sitofp i32 %367 to double
  %369 = call double @llvm.fmuladd.f64(double %361, double %368, double %352)
  %370 = fadd double %353, %361
  br label %371

371:                                              ; preds = %366, %349
  %372 = phi double [ %370, %366 ], [ %353, %349 ]
  %373 = phi double [ %369, %366 ], [ %352, %349 ]
  %374 = getelementptr inbounds double, ptr %351, i64 1
  %375 = add nuw nsw i64 %350, 1
  %376 = icmp eq i64 %375, %17
  br i1 %376, label %377, label %349, !llvm.loop !196

377:                                              ; preds = %371
  %378 = getelementptr i8, ptr %344, i64 %18
  %379 = load i64, ptr %120, align 8, !tbaa !53
  %380 = add i64 %343, %17
  %381 = add i64 %380, %379
  %382 = add nuw nsw i64 %342, 1
  %383 = icmp eq i64 %382, %17
  br i1 %383, label %384, label %341, !llvm.loop !197

384:                                              ; preds = %377, %338
  %385 = phi double [ 0.000000e+00, %338 ], [ %372, %377 ]
  %386 = phi double [ %195, %338 ], [ %373, %377 ]
  br i1 %180, label %586, label %576

387:                                              ; preds = %201, %436
  %388 = phi i64 [ %441, %436 ], [ 0, %201 ]
  %389 = phi i64 [ %440, %436 ], [ 0, %201 ]
  %390 = phi ptr [ %437, %436 ], [ %19, %201 ]
  %391 = phi double [ %430, %436 ], [ 0.000000e+00, %201 ]
  %392 = phi <2 x double> [ %431, %436 ], [ %193, %201 ]
  %393 = phi <2 x double> [ %432, %436 ], [ %190, %201 ]
  %394 = getelementptr %struct._PixelPacket, ptr %185, i64 %389
  br label %395

395:                                              ; preds = %387, %429
  %396 = phi i64 [ 0, %387 ], [ %434, %429 ]
  %397 = phi ptr [ %390, %387 ], [ %433, %429 ]
  %398 = phi double [ %391, %387 ], [ %430, %429 ]
  %399 = phi <2 x double> [ %392, %387 ], [ %431, %429 ]
  %400 = phi <2 x double> [ %393, %387 ], [ %432, %429 ]
  %401 = getelementptr %struct._PixelPacket, ptr %394, i64 %396
  %402 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %401) #17
  %403 = fsub float %402, %197
  %404 = call float @llvm.fabs.f32(float %403)
  %405 = fpext float %404 to double
  %406 = fcmp olt double %405, %4
  br i1 %406, label %407, label %429

407:                                              ; preds = %395
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 %396
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %408, i64 %389
  %410 = load double, ptr %397, align 8, !tbaa !56
  %411 = getelementptr inbounds %struct._PixelPacket, ptr %408, i64 %389, i32 2
  %412 = load <2 x i16>, ptr %409, align 2, !tbaa !75
  %413 = uitofp <2 x i16> %412 to <2 x double>
  %414 = load <2 x i16>, ptr %411, align 2, !tbaa !75
  %415 = extractelement <2 x i16> %414, i64 1
  %416 = xor i16 %415, -1
  %417 = uitofp i16 %416 to double
  %418 = fmul double %417, 0x3EF0001000100010
  %419 = fptrunc double %418 to float
  %420 = fpext float %419 to double
  %421 = fmul double %410, %420
  %422 = uitofp <2 x i16> %414 to <2 x double>
  %423 = insertelement <2 x double> poison, double %421, i64 0
  %424 = shufflevector <2 x double> %423, <2 x double> poison, <2 x i32> zeroinitializer
  %425 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %424, <2 x double> %413, <2 x double> %400)
  %426 = insertelement <2 x double> %423, double %410, i64 1
  %427 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %426, <2 x double> %422, <2 x double> %399)
  %428 = call double @llvm.fmuladd.f64(double %410, double %420, double %398)
  br label %429

429:                                              ; preds = %407, %395
  %430 = phi double [ %428, %407 ], [ %398, %395 ]
  %431 = phi <2 x double> [ %427, %407 ], [ %399, %395 ]
  %432 = phi <2 x double> [ %425, %407 ], [ %400, %395 ]
  %433 = getelementptr inbounds double, ptr %397, i64 1
  %434 = add nuw nsw i64 %396, 1
  %435 = icmp eq i64 %434, %17
  br i1 %435, label %436, label %395, !llvm.loop !198

436:                                              ; preds = %429
  %437 = getelementptr i8, ptr %390, i64 %18
  %438 = load i64, ptr %120, align 8, !tbaa !53
  %439 = add i64 %389, %17
  %440 = add i64 %439, %438
  %441 = add nuw nsw i64 %388, 1
  %442 = icmp eq i64 %441, %17
  br i1 %442, label %443, label %387, !llvm.loop !199

443:                                              ; preds = %436, %201
  %444 = phi double [ 0.000000e+00, %201 ], [ %430, %436 ]
  %445 = phi ptr [ %19, %201 ], [ %437, %436 ]
  %446 = phi <2 x double> [ %193, %201 ], [ %431, %436 ]
  %447 = phi <2 x double> [ %190, %201 ], [ %432, %436 ]
  %448 = fcmp olt double %444, 0.000000e+00
  %449 = select i1 %448, double 0.000000e+00, double %444
  %450 = fcmp une double %449, 0.000000e+00
  br i1 %450, label %451, label %472

451:                                              ; preds = %443
  %452 = call fastcc double @PerceptibleReciprocal(double noundef %449) #13
  br i1 %144, label %459, label %453

453:                                              ; preds = %451
  %454 = extractelement <2 x double> %446, i64 0
  %455 = fmul double %454, %452
  %456 = fptrunc double %455 to float
  %457 = call fastcc zeroext i16 @ClampToQuantum(float noundef %456) #13
  %458 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 0, i32 2
  store i16 %457, ptr %458, align 2, !tbaa !71
  br label %459

459:                                              ; preds = %453, %451
  br i1 %146, label %466, label %460

460:                                              ; preds = %459
  %461 = extractelement <2 x double> %447, i64 1
  %462 = fmul double %461, %452
  %463 = fptrunc double %462 to float
  %464 = call fastcc zeroext i16 @ClampToQuantum(float noundef %463) #13
  %465 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 0, i32 1
  store i16 %464, ptr %465, align 2, !tbaa !72
  br label %466

466:                                              ; preds = %460, %459
  br i1 %148, label %472, label %467

467:                                              ; preds = %466
  %468 = extractelement <2 x double> %447, i64 0
  %469 = fmul double %468, %452
  %470 = fptrunc double %469 to float
  %471 = call fastcc zeroext i16 @ClampToQuantum(float noundef %470) #13
  store i16 %471, ptr %183, align 2, !tbaa !73
  br label %472

472:                                              ; preds = %443, %467, %466
  %473 = extractelement <2 x double> %446, i64 1
  br i1 %142, label %474, label %509

474:                                              ; preds = %472, %502
  %475 = phi i64 [ %507, %502 ], [ 0, %472 ]
  %476 = phi i64 [ %506, %502 ], [ 0, %472 ]
  %477 = phi ptr [ %503, %502 ], [ %445, %472 ]
  %478 = phi double [ %498, %502 ], [ %473, %472 ]
  %479 = getelementptr %struct._PixelPacket, ptr %185, i64 %476
  %480 = getelementptr %struct._PixelPacket, ptr %184, i64 %476, i32 3
  br label %481

481:                                              ; preds = %474, %497
  %482 = phi i64 [ 0, %474 ], [ %500, %497 ]
  %483 = phi ptr [ %477, %474 ], [ %499, %497 ]
  %484 = phi double [ %478, %474 ], [ %498, %497 ]
  %485 = getelementptr %struct._PixelPacket, ptr %479, i64 %482
  %486 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %485) #17
  %487 = fsub float %486, %197
  %488 = call float @llvm.fabs.f32(float %487)
  %489 = fpext float %488 to double
  %490 = fcmp olt double %489, %4
  br i1 %490, label %491, label %497

491:                                              ; preds = %481
  %492 = load double, ptr %483, align 8, !tbaa !56
  %493 = getelementptr %struct._PixelPacket, ptr %480, i64 %482
  %494 = load i16, ptr %493, align 2, !tbaa !70
  %495 = uitofp i16 %494 to double
  %496 = call double @llvm.fmuladd.f64(double %492, double %495, double %484)
  br label %497

497:                                              ; preds = %491, %481
  %498 = phi double [ %496, %491 ], [ %484, %481 ]
  %499 = getelementptr inbounds double, ptr %483, i64 1
  %500 = add nuw nsw i64 %482, 1
  %501 = icmp eq i64 %500, %17
  br i1 %501, label %502, label %481, !llvm.loop !200

502:                                              ; preds = %497
  %503 = getelementptr i8, ptr %477, i64 %18
  %504 = load i64, ptr %120, align 8, !tbaa !53
  %505 = add i64 %476, %17
  %506 = add i64 %505, %504
  %507 = add nuw nsw i64 %475, 1
  %508 = icmp eq i64 %507, %17
  br i1 %508, label %509, label %474, !llvm.loop !201

509:                                              ; preds = %502, %472
  %510 = phi double [ %473, %472 ], [ %498, %502 ]
  %511 = phi ptr [ %445, %472 ], [ %503, %502 ]
  %512 = fptrunc double %510 to float
  %513 = call fastcc zeroext i16 @ClampToQuantum(float noundef %512) #13
  %514 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 0, i32 3
  store i16 %513, ptr %514, align 2, !tbaa !70
  br i1 %150, label %586, label %515

515:                                              ; preds = %509
  %516 = load i32, ptr %151, align 4, !tbaa !74
  %517 = icmp eq i32 %516, 12
  br i1 %517, label %518, label %586

518:                                              ; preds = %515
  br i1 %142, label %519, label %573

519:                                              ; preds = %518
  %520 = getelementptr inbounds i16, ptr %174, i64 %182
  br label %521

521:                                              ; preds = %519, %566
  %522 = phi i64 [ 0, %519 ], [ %571, %566 ]
  %523 = phi i64 [ 0, %519 ], [ %570, %566 ]
  %524 = phi ptr [ %511, %519 ], [ %567, %566 ]
  %525 = phi double [ %195, %519 ], [ %562, %566 ]
  %526 = phi double [ 0.000000e+00, %519 ], [ %561, %566 ]
  %527 = getelementptr %struct._PixelPacket, ptr %185, i64 %523
  %528 = getelementptr %struct._PixelPacket, ptr %184, i64 %523, i32 3
  %529 = getelementptr i16, ptr %520, i64 %523
  br label %530

530:                                              ; preds = %521, %560
  %531 = phi i64 [ 0, %521 ], [ %564, %560 ]
  %532 = phi ptr [ %524, %521 ], [ %563, %560 ]
  %533 = phi double [ %525, %521 ], [ %562, %560 ]
  %534 = phi double [ %526, %521 ], [ %561, %560 ]
  %535 = getelementptr %struct._PixelPacket, ptr %527, i64 %531
  %536 = call float @GetPixelIntensity(ptr noundef nonnull %106, ptr noundef %535) #17
  %537 = fsub float %536, %197
  %538 = call float @llvm.fabs.f32(float %537)
  %539 = fpext float %538 to double
  %540 = fcmp olt double %539, %4
  br i1 %540, label %541, label %560

541:                                              ; preds = %530
  %542 = getelementptr %struct._PixelPacket, ptr %528, i64 %531
  %543 = load i16, ptr %542, align 2, !tbaa !70
  %544 = xor i16 %543, -1
  %545 = uitofp i16 %544 to double
  %546 = fmul double %545, 0x3EF0001000100010
  %547 = fptrunc double %546 to float
  %548 = load double, ptr %532, align 8, !tbaa !56
  %549 = fpext float %547 to double
  %550 = fmul double %548, %549
  br i1 %179, label %555, label %551

551:                                              ; preds = %541
  %552 = getelementptr i16, ptr %529, i64 %531
  %553 = load i16, ptr %552, align 2, !tbaa !75
  %554 = zext i16 %553 to i32
  br label %555

555:                                              ; preds = %541, %551
  %556 = phi i32 [ %554, %551 ], [ 0, %541 ]
  %557 = sitofp i32 %556 to double
  %558 = call double @llvm.fmuladd.f64(double %550, double %557, double %533)
  %559 = fadd double %534, %548
  br label %560

560:                                              ; preds = %555, %530
  %561 = phi double [ %559, %555 ], [ %534, %530 ]
  %562 = phi double [ %558, %555 ], [ %533, %530 ]
  %563 = getelementptr inbounds double, ptr %532, i64 1
  %564 = add nuw nsw i64 %531, 1
  %565 = icmp eq i64 %564, %17
  br i1 %565, label %566, label %530, !llvm.loop !202

566:                                              ; preds = %560
  %567 = getelementptr i8, ptr %524, i64 %18
  %568 = load i64, ptr %120, align 8, !tbaa !53
  %569 = add i64 %523, %17
  %570 = add i64 %569, %568
  %571 = add nuw nsw i64 %522, 1
  %572 = icmp eq i64 %571, %17
  br i1 %572, label %573, label %521, !llvm.loop !203

573:                                              ; preds = %566, %518
  %574 = phi double [ 0.000000e+00, %518 ], [ %561, %566 ]
  %575 = phi double [ %195, %518 ], [ %562, %566 ]
  br i1 %180, label %586, label %576

576:                                              ; preds = %573, %384
  %577 = phi double [ %385, %384 ], [ %574, %573 ]
  %578 = phi double [ %386, %384 ], [ %575, %573 ]
  %579 = fcmp olt double %577, 0.000000e+00
  %580 = select i1 %579, double 0.000000e+00, double %577
  %581 = call fastcc double @PerceptibleReciprocal(double noundef %580) #13
  %582 = getelementptr inbounds i16, ptr %175, i64 %182
  %583 = fmul double %578, %581
  %584 = fptrunc double %583 to float
  %585 = call fastcc zeroext i16 @ClampToQuantum(float noundef %584) #13
  store i16 %585, ptr %582, align 2, !tbaa !75
  br label %586

586:                                              ; preds = %576, %509, %515, %573, %333, %335, %384
  %587 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 1
  %588 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 1
  %589 = getelementptr inbounds %struct._PixelPacket, ptr %183, i64 1
  %590 = add nuw nsw i64 %182, 1
  %591 = load i64, ptr %120, align 8, !tbaa !53
  %592 = icmp slt i64 %590, %591
  br i1 %592, label %181, label %593, !llvm.loop !204

593:                                              ; preds = %586, %173
  %594 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %128, ptr noundef %5) #17
  %595 = icmp ne i32 %594, 0
  %596 = zext i1 %595 to i32
  %597 = load ptr, ptr %152, align 8, !tbaa !79
  %598 = icmp eq ptr %597, null
  br i1 %598, label %605, label %599

599:                                              ; preds = %593
  %600 = add nsw i64 %156, 1
  %601 = load i64, ptr %129, align 8, !tbaa !54
  %602 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.65, i64 noundef %156, i64 noundef %601) #13
  %603 = icmp eq i32 %602, 0
  %604 = select i1 %603, i32 0, i32 %596
  br label %605

605:                                              ; preds = %593, %599, %158, %153
  %606 = phi i64 [ %156, %153 ], [ %156, %158 ], [ %600, %599 ], [ %156, %593 ]
  %607 = phi i32 [ 0, %153 ], [ 0, %158 ], [ %604, %599 ], [ %596, %593 ]
  %608 = add nuw nsw i64 %154, 1
  %609 = load i64, ptr %129, align 8, !tbaa !54
  %610 = icmp slt i64 %608, %609
  br i1 %610, label %153, label %611, !llvm.loop !205

611:                                              ; preds = %605
  %612 = icmp eq i32 %607, 0
  %613 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %614 = load i32, ptr %613, align 8, !tbaa !81
  %615 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 77
  store i32 %614, ptr %615, align 8, !tbaa !81
  %616 = call ptr @DestroyCacheView(ptr noundef %128) #15
  %617 = call ptr @DestroyCacheView(ptr noundef %127) #15
  %618 = call ptr @DestroyCacheView(ptr noundef %126) #15
  %619 = call ptr @DestroyImage(ptr noundef nonnull %106) #15
  %620 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #15
  br i1 %612, label %621, label %632

621:                                              ; preds = %611
  %622 = call ptr @DestroyImage(ptr noundef nonnull %94) #15
  br label %632

623:                                              ; preds = %119
  %624 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %625 = load i32, ptr %624, align 8, !tbaa !81
  %626 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 77
  store i32 %625, ptr %626, align 8, !tbaa !81
  %627 = call ptr @DestroyCacheView(ptr noundef %128) #15
  %628 = call ptr @DestroyCacheView(ptr noundef %127) #15
  %629 = call ptr @DestroyCacheView(ptr noundef %126) #15
  %630 = call ptr @DestroyImage(ptr noundef nonnull %106) #15
  %631 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %19) #15
  br label %632

632:                                              ; preds = %623, %611, %621, %114, %108, %101, %96, %21
  %633 = phi ptr [ null, %21 ], [ null, %96 ], [ null, %101 ], [ null, %108 ], [ null, %114 ], [ %622, %621 ], [ %94, %611 ], [ %94, %623 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #14
  ret ptr %633
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SharpenImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3794, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call i64 @GetOptimalKernelWidth2D(double noundef %2, double noundef %3) #15
  %14 = tail call ptr @AcquireKernelInfo(ptr noundef null) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3800, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %17) #15
  br label %112

19:                                               ; preds = %12
  %20 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 104) #15
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 1
  store i64 %13, ptr %21, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 2
  store i64 %13, ptr %22, align 8, !tbaa !85
  %23 = add i64 %13, -1
  %24 = sdiv i64 %23, 2
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 3
  store i64 %24, ptr %25, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 4
  store i64 %24, ptr %26, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 12
  store i64 2880220587, ptr %27, align 8, !tbaa !88
  %28 = shl i64 %13, 3
  %29 = tail call ptr @AcquireAlignedMemory(i64 noundef %13, i64 noundef %28) #16
  %30 = getelementptr inbounds %struct.KernelInfo, ptr %14, i64 0, i32 5
  store ptr %29, ptr %30, align 8, !tbaa !89
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %14) #15
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3812, i32 noundef 400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %34) #15
  br label %112

36:                                               ; preds = %19
  %37 = load i64, ptr %21, align 8, !tbaa !83
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
  %65 = tail call double @exp(double noundef %64) #15
  %66 = fneg double %65
  %67 = fdiv double %66, %49
  %68 = load ptr, ptr %30, align 8, !tbaa !89
  %69 = getelementptr inbounds double, ptr %68, i64 %60
  store double %67, ptr %69, align 8, !tbaa !56
  %70 = fadd double %59, %67
  %71 = add nsw i64 %60, 1
  %72 = add i64 %58, 1
  %73 = icmp eq i64 %58, %50
  br i1 %73, label %74, label %57, !llvm.loop !206

74:                                               ; preds = %57
  %75 = add i64 %52, 1
  %76 = icmp eq i64 %52, %50
  br i1 %76, label %77, label %51, !llvm.loop !207

77:                                               ; preds = %74
  %78 = load i64, ptr %21, align 8, !tbaa !83
  %79 = fmul double %70, -2.000000e+00
  %80 = sdiv i64 %71, 2
  br label %81

81:                                               ; preds = %77, %36
  %82 = phi i64 [ %37, %36 ], [ %78, %77 ]
  %83 = phi ptr [ %29, %36 ], [ %68, %77 ]
  %84 = phi i64 [ 0, %36 ], [ %80, %77 ]
  %85 = phi double [ -0.000000e+00, %36 ], [ %79, %77 ]
  %86 = getelementptr inbounds double, ptr %83, i64 %84
  store double %85, ptr %86, align 8, !tbaa !56
  %87 = load i64, ptr %22, align 8, !tbaa !85
  %88 = mul i64 %87, %82
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %81, %90
  %91 = phi double [ %95, %90 ], [ 0.000000e+00, %81 ]
  %92 = phi i64 [ %96, %90 ], [ 0, %81 ]
  %93 = getelementptr inbounds double, ptr %83, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !56
  %95 = fadd double %91, %94
  %96 = add nuw nsw i64 %92, 1
  %97 = icmp eq i64 %96, %88
  br i1 %97, label %98, label %90, !llvm.loop !208

98:                                               ; preds = %90
  %99 = fcmp olt double %95, 0.000000e+00
  %100 = select i1 %99, double 0.000000e+00, double %95
  %101 = tail call fastcc double @PerceptibleReciprocal(double noundef %100) #13
  br i1 %89, label %102, label %109

102:                                              ; preds = %98, %102
  %103 = phi i64 [ %107, %102 ], [ 0, %98 ]
  %104 = getelementptr inbounds double, ptr %83, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !56
  %106 = fmul double %101, %105
  store double %106, ptr %104, align 8, !tbaa !56
  %107 = add nuw nsw i64 %103, 1
  %108 = icmp eq i64 %107, %88
  br i1 %108, label %109, label %102, !llvm.loop !209

109:                                              ; preds = %102, %81, %98
  %110 = tail call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %14, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %4) #15
  %111 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %14) #15
  br label %112

112:                                              ; preds = %109, %32, %16
  %113 = phi ptr [ null, %16 ], [ null, %32 ], [ %110, %109 ]
  ret ptr %113
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireRandomInfoThreadSet() unnamed_addr #0 !PGOFuncName !210 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %2 = tail call ptr @AcquireAlignedMemory(i64 noundef %1, i64 noundef 8) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #15
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !211

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call ptr @AcquireRandomInfo() #15
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !55
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef nonnull %2) #13
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #6 !PGOFuncName !212 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !62
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #13
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !71
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #13
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !72
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !66
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #13
  store i16 %15, ptr %2, align 2, !tbaa !73
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !67
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #13
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !70
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !74
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !213
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !68
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #13
  store i16 %33, ptr %3, align 2, !tbaa !75
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %0) unnamed_addr #0 !PGOFuncName !214 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %7) #15
  store ptr %10, ptr %6, align 8, !tbaa !55
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !215

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #15
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UnsharpMaskImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @UnsharpMaskImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) #13
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UnsharpMaskImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #14
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4090, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #15
  br label %15

15:                                               ; preds = %12, %7
  %16 = tail call ptr @AccelerateUnsharpMaskImage(ptr noundef nonnull %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %222

18:                                               ; preds = %15
  %19 = and i32 %1, -257
  %20 = tail call ptr @BlurImageChannel(ptr noundef nonnull %0, i32 noundef %19, double noundef %2, double noundef %3, ptr noundef %6) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %222, label %22

22:                                               ; preds = %18
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8) #15
  %23 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %6) #15
  %24 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %20, ptr noundef %6) #15
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !54
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %216

28:                                               ; preds = %22
  %29 = fmul double %5, 6.553500e+04
  %30 = fptrunc double %29 to float
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %32 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 7
  %33 = and i32 %1, 1
  %34 = icmp eq i32 %33, 0
  %35 = fpext float %30 to double
  %36 = and i32 %1, 2
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %1, 4
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %1, 8
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %1, 32
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %46

46:                                               ; preds = %28, %201
  %47 = phi i64 [ 0, %28 ], [ %204, %201 ]
  %48 = phi i64 [ 0, %28 ], [ %203, %201 ]
  %49 = phi i32 [ 1, %28 ], [ %202, %201 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %201, label %51

51:                                               ; preds = %46
  %52 = load i64, ptr %31, align 8, !tbaa !53
  %53 = call ptr @GetCacheViewVirtualPixels(ptr noundef %23, i64 noundef 0, i64 noundef %47, i64 noundef %52, i64 noundef 1, ptr noundef %6) #17
  %54 = load i64, ptr %32, align 8, !tbaa !53
  %55 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %24, i64 noundef 0, i64 noundef %47, i64 noundef %54, i64 noundef 1, ptr noundef %6) #17
  %56 = icmp eq ptr %53, null
  %57 = icmp eq ptr %55, null
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %201, label %59

59:                                               ; preds = %51
  %60 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %23) #15
  %61 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %24) #15
  %62 = load i64, ptr %31, align 8, !tbaa !53
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %189

64:                                               ; preds = %59
  %65 = icmp eq ptr %60, null
  %66 = icmp eq ptr %61, null
  br label %67

67:                                               ; preds = %64, %184
  %68 = phi i64 [ 0, %64 ], [ %187, %184 ]
  %69 = phi ptr [ %55, %64 ], [ %186, %184 ]
  %70 = phi ptr [ %53, %64 ], [ %185, %184 ]
  br i1 %34, label %88, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 2
  %73 = load i16, ptr %72, align 2, !tbaa !71
  %74 = uitofp i16 %73 to float
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 2
  %76 = load i16, ptr %75, align 2, !tbaa !71
  %77 = uitofp i16 %76 to float
  %78 = fsub float %74, %77
  %79 = fpext float %78 to double
  %80 = fmul double %79, 2.000000e+00
  %81 = call double @llvm.fabs.f64(double %80)
  %82 = fcmp olt double %81, %35
  %83 = uitofp i16 %73 to double
  %84 = call double @llvm.fmuladd.f64(double %79, double %4, double %83)
  %85 = select i1 %82, double %83, double %84
  %86 = fptrunc double %85 to float
  %87 = call fastcc zeroext i16 @ClampToQuantum(float noundef %86) #13
  store i16 %87, ptr %75, align 2, !tbaa !71
  br label %88

88:                                               ; preds = %71, %67
  br i1 %37, label %106, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 1
  %91 = load i16, ptr %90, align 2, !tbaa !72
  %92 = uitofp i16 %91 to float
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 1
  %94 = load i16, ptr %93, align 2, !tbaa !72
  %95 = uitofp i16 %94 to float
  %96 = fsub float %92, %95
  %97 = fpext float %96 to double
  %98 = fmul double %97, 2.000000e+00
  %99 = call double @llvm.fabs.f64(double %98)
  %100 = fcmp olt double %99, %35
  %101 = uitofp i16 %91 to double
  %102 = call double @llvm.fmuladd.f64(double %97, double %4, double %101)
  %103 = select i1 %100, double %101, double %102
  %104 = fptrunc double %103 to float
  %105 = call fastcc zeroext i16 @ClampToQuantum(float noundef %104) #13
  store i16 %105, ptr %93, align 2, !tbaa !72
  br label %106

106:                                              ; preds = %89, %88
  br i1 %39, label %122, label %107

107:                                              ; preds = %106
  %108 = load i16, ptr %70, align 2, !tbaa !73
  %109 = uitofp i16 %108 to float
  %110 = load i16, ptr %69, align 2, !tbaa !73
  %111 = uitofp i16 %110 to float
  %112 = fsub float %109, %111
  %113 = fpext float %112 to double
  %114 = fmul double %113, 2.000000e+00
  %115 = call double @llvm.fabs.f64(double %114)
  %116 = fcmp olt double %115, %35
  %117 = uitofp i16 %108 to double
  %118 = call double @llvm.fmuladd.f64(double %113, double %4, double %117)
  %119 = select i1 %116, double %117, double %118
  %120 = fptrunc double %119 to float
  %121 = call fastcc zeroext i16 @ClampToQuantum(float noundef %120) #13
  store i16 %121, ptr %69, align 2, !tbaa !73
  br label %122

122:                                              ; preds = %107, %106
  br i1 %41, label %140, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 3
  %125 = load i16, ptr %124, align 2, !tbaa !70
  %126 = uitofp i16 %125 to float
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 3
  %128 = load i16, ptr %127, align 2, !tbaa !70
  %129 = uitofp i16 %128 to float
  %130 = fsub float %126, %129
  %131 = fpext float %130 to double
  %132 = fmul double %131, 2.000000e+00
  %133 = call double @llvm.fabs.f64(double %132)
  %134 = fcmp olt double %133, %35
  %135 = uitofp i16 %125 to double
  %136 = call double @llvm.fmuladd.f64(double %131, double %4, double %135)
  %137 = select i1 %134, double %135, double %136
  %138 = fptrunc double %137 to float
  %139 = call fastcc zeroext i16 @ClampToQuantum(float noundef %138) #13
  store i16 %139, ptr %127, align 2, !tbaa !70
  br label %140

140:                                              ; preds = %123, %122
  br i1 %43, label %184, label %141

141:                                              ; preds = %140
  %142 = load i32, ptr %44, align 4, !tbaa !74
  %143 = icmp eq i32 %142, 12
  br i1 %143, label %144, label %184

144:                                              ; preds = %141
  %145 = getelementptr inbounds i16, ptr %60, i64 %68
  br i1 %65, label %149, label %146

146:                                              ; preds = %144
  %147 = load i16, ptr %145, align 2, !tbaa !75
  %148 = zext i16 %147 to i32
  br label %149

149:                                              ; preds = %144, %146
  %150 = phi i32 [ %148, %146 ], [ 0, %144 ]
  %151 = sitofp i32 %150 to float
  %152 = getelementptr inbounds i16, ptr %61, i64 %68
  br i1 %66, label %156, label %153

153:                                              ; preds = %149
  %154 = load i16, ptr %152, align 2, !tbaa !75
  %155 = zext i16 %154 to i32
  br label %156

156:                                              ; preds = %149, %153
  %157 = phi i32 [ %155, %153 ], [ 0, %149 ]
  %158 = sitofp i32 %157 to float
  %159 = fsub float %151, %158
  %160 = fpext float %159 to double
  %161 = fmul double %160, 2.000000e+00
  %162 = call double @llvm.fabs.f64(double %161)
  %163 = fcmp olt double %162, %35
  br i1 %163, label %164, label %171

164:                                              ; preds = %156
  br i1 %65, label %168, label %165

165:                                              ; preds = %164
  %166 = load i16, ptr %145, align 2, !tbaa !75
  %167 = zext i16 %166 to i32
  br label %168

168:                                              ; preds = %164, %165
  %169 = phi i32 [ %167, %165 ], [ 0, %164 ]
  %170 = sitofp i32 %169 to double
  br label %179

171:                                              ; preds = %156
  br i1 %65, label %175, label %172

172:                                              ; preds = %171
  %173 = load i16, ptr %145, align 2, !tbaa !75
  %174 = zext i16 %173 to i32
  br label %175

175:                                              ; preds = %171, %172
  %176 = phi i32 [ %174, %172 ], [ 0, %171 ]
  %177 = sitofp i32 %176 to double
  %178 = call double @llvm.fmuladd.f64(double %160, double %4, double %177)
  br label %179

179:                                              ; preds = %175, %168
  %180 = phi double [ %170, %168 ], [ %178, %175 ]
  br i1 %66, label %184, label %181

181:                                              ; preds = %179
  %182 = fptrunc double %180 to float
  %183 = call fastcc zeroext i16 @ClampToQuantum(float noundef %182) #13
  store i16 %183, ptr %152, align 2, !tbaa !75
  br label %184

184:                                              ; preds = %179, %181, %141, %140
  %185 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 1
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 1
  %187 = add nuw nsw i64 %68, 1
  %188 = icmp eq i64 %187, %62
  br i1 %188, label %189, label %67, !llvm.loop !216

189:                                              ; preds = %184, %59
  %190 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %24, ptr noundef %6) #17
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = load ptr, ptr %45, align 8, !tbaa !79
  %194 = icmp eq ptr %193, null
  br i1 %194, label %201, label %195

195:                                              ; preds = %189
  %196 = add nsw i64 %48, 1
  %197 = load i64, ptr %25, align 8, !tbaa !54
  %198 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.68, i64 noundef %48, i64 noundef %197) #13
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i32 0, i32 %192
  br label %201

201:                                              ; preds = %189, %195, %51, %46
  %202 = phi i32 [ 0, %46 ], [ 0, %51 ], [ %200, %195 ], [ %192, %189 ]
  %203 = phi i64 [ %48, %46 ], [ %48, %51 ], [ %196, %195 ], [ %48, %189 ]
  %204 = add nuw nsw i64 %47, 1
  %205 = load i64, ptr %25, align 8, !tbaa !54
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %46, label %207, !llvm.loop !217

207:                                              ; preds = %201
  %208 = icmp eq i32 %202, 0
  %209 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %210 = load i32, ptr %209, align 8, !tbaa !81
  %211 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 77
  store i32 %210, ptr %211, align 8, !tbaa !81
  %212 = call ptr @DestroyCacheView(ptr noundef %24) #15
  %213 = call ptr @DestroyCacheView(ptr noundef %23) #15
  br i1 %208, label %214, label %222

214:                                              ; preds = %207
  %215 = call ptr @DestroyImage(ptr noundef nonnull %20) #15
  br label %222

216:                                              ; preds = %22
  %217 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %218 = load i32, ptr %217, align 8, !tbaa !81
  %219 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 77
  store i32 %218, ptr %219, align 8, !tbaa !81
  %220 = call ptr @DestroyCacheView(ptr noundef %24) #15
  %221 = call ptr @DestroyCacheView(ptr noundef %23) #15
  br label %222

222:                                              ; preds = %216, %207, %214, %18, %15
  %223 = phi ptr [ %16, %15 ], [ null, %18 ], [ %215, %214 ], [ %20, %207 ], [ %20, %216 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #14
  ret ptr %223
}

; Function Attrs: optsize
declare ptr @AccelerateUnsharpMaskImage(ptr noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #8 !PGOFuncName !218 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize allocsize(0,1) }
attributes #17 = { hot nounwind optsize }

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
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !58}
!62 = !{!63, !64, i64 32}
!63 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !64, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !64, i64 48}
!64 = !{!"float", !37, i64 0}
!65 = !{!63, !64, i64 36}
!66 = !{!63, !64, i64 40}
!67 = !{!63, !64, i64 44}
!68 = !{!63, !64, i64 48}
!69 = !{!35, !36, i64 32}
!70 = !{!41, !42, i64 6}
!71 = !{!41, !42, i64 4}
!72 = !{!41, !42, i64 2}
!73 = !{!41, !42, i64 0}
!74 = !{!35, !36, i64 4}
!75 = !{!42, !42, i64 0}
!76 = distinct !{!76, !58}
!77 = distinct !{!77, !58}
!78 = distinct !{!78, !58}
!79 = !{!35, !40, i64 568}
!80 = distinct !{!80, !58}
!81 = !{!35, !36, i64 13184}
!82 = distinct !{!82, !58}
!83 = !{!84, !39, i64 8}
!84 = !{!"KernelInfo", !36, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !40, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !40, i64 88, !39, i64 96}
!85 = !{!84, !39, i64 16}
!86 = !{!84, !39, i64 24}
!87 = !{!84, !39, i64 32}
!88 = !{!84, !39, i64 96}
!89 = !{!84, !40, i64 40}
!90 = distinct !{!90, !58, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!"effect.c:SetMagickPixelPacketBias"}
!94 = !{!35, !43, i64 376}
!95 = !{!64, !64, i64 0}
!96 = !{!"effect.c:PerceptibleReciprocal"}
!97 = !{!"effect.c:ClampToQuantum"}
!98 = !{!"effect.c:SetImageProgress"}
!99 = !{!35, !40, i64 576}
!100 = distinct !{!100, !58}
!101 = distinct !{!101, !58}
!102 = distinct !{!102, !58}
!103 = distinct !{!103, !58}
!104 = distinct !{!104, !58}
!105 = distinct !{!105, !58}
!106 = distinct !{!106, !58}
!107 = distinct !{!107, !58}
!108 = distinct !{!108, !58}
!109 = distinct !{!109, !58}
!110 = distinct !{!110, !58}
!111 = distinct !{!111, !58}
!112 = !{!39, !39, i64 0}
!113 = distinct !{!113, !58}
!114 = distinct !{!114, !58}
!115 = distinct !{!115, !58}
!116 = distinct !{!116, !58}
!117 = !{!"effect.c:Hull"}
!118 = !{i16 257, i16 515}
!119 = distinct !{!119, !58}
!120 = distinct !{!120, !58}
!121 = distinct !{!121, !58}
!122 = distinct !{!122, !58}
!123 = distinct !{!123, !58}
!124 = distinct !{!124, !58}
!125 = distinct !{!125, !58}
!126 = distinct !{!126, !58}
!127 = distinct !{!127, !58}
!128 = distinct !{!128, !58}
!129 = !{!37, !37, i64 0}
!130 = distinct !{!130, !58}
!131 = distinct !{!131, !58}
!132 = distinct !{!132, !58}
!133 = distinct !{!133, !58}
!134 = distinct !{!134, !58}
!135 = distinct !{!135, !58}
!136 = distinct !{!136, !58}
!137 = distinct !{!137, !58}
!138 = distinct !{!138, !58}
!139 = distinct !{!139, !58}
!140 = distinct !{!140, !58}
!141 = distinct !{!141, !58}
!142 = distinct !{!142, !58}
!143 = distinct !{!143, !58}
!144 = distinct !{!144, !58}
!145 = distinct !{!145, !58}
!146 = distinct !{!146, !58}
!147 = !{!148, !39, i64 0}
!148 = !{!"_OffsetInfo", !39, i64 0, !39, i64 8}
!149 = !{!148, !39, i64 8}
!150 = distinct !{!150, !58}
!151 = !{i64 0, i64 4, !95}
!152 = distinct !{!152, !58}
!153 = distinct !{!153, !58}
!154 = distinct !{!154, !58}
!155 = distinct !{!155, !58}
!156 = !{!"effect.c:GetMotionBlurKernel"}
!157 = distinct !{!157, !58}
!158 = distinct !{!158, !58}
!159 = !{!"effect.c:DegreesToRadians"}
!160 = !{!46, !39, i64 0}
!161 = !{!46, !39, i64 8}
!162 = distinct !{!162, !58}
!163 = distinct !{!163, !58}
!164 = !{!165, !39, i64 0}
!165 = !{!"_QuantizeInfo", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 32, !36, i64 40}
!166 = !{!165, !36, i64 20}
!167 = distinct !{!167, !58}
!168 = !{!46, !39, i64 16}
!169 = !{!46, !39, i64 24}
!170 = !{!171, !39, i64 96}
!171 = !{!"_ImageInfo", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !39, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !43, i64 144, !43, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 188, !39, i64 192, !36, i64 200, !36, i64 204, !36, i64 208, !39, i64 216, !36, i64 224, !36, i64 228, !40, i64 232, !40, i64 240, !36, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !39, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !36, i64 16712, !40, i64 16720, !39, i64 16728, !39, i64 16736, !41, i64 16744, !39, i64 16752, !36, i64 16760, !41, i64 16764, !40, i64 16776, !36, i64 16784}
!172 = distinct !{!172, !58}
!173 = !{!174, !36, i64 64}
!174 = !{!"_MontageInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !43, i64 48, !39, i64 56, !36, i64 64, !41, i64 68, !41, i64 76, !41, i64 84, !41, i64 92, !41, i64 100, !36, i64 108, !37, i64 112, !36, i64 4208, !39, i64 4216}
!175 = !{!35, !40, i64 232}
!176 = !{!35, !40, i64 240}
!177 = !{i64 0, i64 4, !178, i64 4, i64 4, !178, i64 8, i64 4, !178, i64 16, i64 8, !56, i64 24, i64 8, !112, i64 32, i64 4, !95, i64 36, i64 4, !95, i64 40, i64 4, !95, i64 44, i64 4, !95, i64 48, i64 4, !95}
!178 = !{!36, !36, i64 0}
!179 = distinct !{!179, !58}
!180 = distinct !{!180, !58}
!181 = distinct !{!181, !58}
!182 = distinct !{!182, !58}
!183 = distinct !{!183, !58}
!184 = distinct !{!184, !58}
!185 = distinct !{!185, !58}
!186 = distinct !{!186, !58}
!187 = distinct !{!187, !58}
!188 = distinct !{!188, !58}
!189 = distinct !{!189, !58}
!190 = distinct !{!190, !58}
!191 = distinct !{!191, !58}
!192 = distinct !{!192, !58}
!193 = distinct !{!193, !58}
!194 = distinct !{!194, !58}
!195 = distinct !{!195, !58}
!196 = distinct !{!196, !58}
!197 = distinct !{!197, !58}
!198 = distinct !{!198, !58}
!199 = distinct !{!199, !58}
!200 = distinct !{!200, !58}
!201 = distinct !{!201, !58}
!202 = distinct !{!202, !58}
!203 = distinct !{!203, !58}
!204 = distinct !{!204, !58}
!205 = distinct !{!205, !58}
!206 = distinct !{!206, !58}
!207 = distinct !{!207, !58}
!208 = distinct !{!208, !58}
!209 = distinct !{!209, !58}
!210 = !{!"effect.c:AcquireRandomInfoThreadSet"}
!211 = distinct !{!211, !58}
!212 = !{!"effect.c:SetPixelPacket"}
!213 = !{!35, !36, i64 0}
!214 = !{!"effect.c:DestroyRandomInfoThreadSet"}
!215 = distinct !{!215, !58}
!216 = distinct !{!216, !58}
!217 = distinct !{!217, !58}
!218 = !{!"effect.c:ScaleCharToQuantum"}
