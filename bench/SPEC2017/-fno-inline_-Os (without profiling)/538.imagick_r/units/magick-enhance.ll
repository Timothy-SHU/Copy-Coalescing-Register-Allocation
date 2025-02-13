; ModuleID = 'magick/enhance.c'
source_filename = "magick/enhance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._QuantumPixelPacket = type { i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [17 x i8] c"magick/enhance.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ColorCorrection\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SOPNode\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Slope\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Power\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"SATNode\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"  Color Correction Collection:\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"  color_correction.red.slope: %g\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"  color_correction.red.offset: %g\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"  color_correction.red.power: %g\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"  color_correction.green.slope: %g\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"  color_correction.green.offset: %g\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"  color_correction.green.power: %g\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"  color_correction.blue.slope: %g\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"  color_correction.blue.offset: %g\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"  color_correction.blue.power: %g\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"  color_correction.saturation: %g\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"ColorDecisionList/Image\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Clut/Image\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Contrast/Image\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"ContrastStretch/Image\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Enhance/Image\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Equalize/Image\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"GammaCorrect/Image\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Grayscale/Image\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Level/Image\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Levelize/Image\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"modulate:colorspace\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"Modulate/Image\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Negate/Image\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"SigmoidalContrast/Image\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AutoGammaImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @AutoGammaImageChannel(ptr noundef %0, i32 noundef 134217719) #13, !range !5
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AutoGammaImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = and i32 %1, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %9 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  %10 = load double, ptr %3, align 8, !tbaa !6
  %11 = fmul double %10, 0x3EF0001000100010
  %12 = call double @log(double noundef %11) #15
  %13 = fdiv double %12, 0xBFE62E42FEFA39EF
  %14 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %13) #13, !range !5
  br label %90

15:                                               ; preds = %2
  %16 = and i32 %1, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %19) #15
  %21 = load double, ptr %3, align 8, !tbaa !6
  %22 = fmul double %21, 0x3EF0001000100010
  %23 = call double @log(double noundef %22) #15
  %24 = fdiv double %23, 0xBFE62E42FEFA39EF
  %25 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 1, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %24) #13, !range !5
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i32 [ %25, %18 ], [ 1, %15 ]
  %28 = and i32 %1, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %32 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %31) #15
  %33 = load double, ptr %3, align 8, !tbaa !6
  %34 = fmul double %33, 0x3EF0001000100010
  %35 = call double @log(double noundef %34) #15
  %36 = fdiv double %35, 0xBFE62E42FEFA39EF
  %37 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 2, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %36) #13, !range !5
  %38 = and i32 %37, %27
  br label %39

39:                                               ; preds = %30, %26
  %40 = phi i32 [ %38, %30 ], [ %27, %26 ]
  %41 = and i32 %1, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %45 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %44) #15
  %46 = load double, ptr %3, align 8, !tbaa !6
  %47 = fmul double %46, 0x3EF0001000100010
  %48 = call double @log(double noundef %47) #15
  %49 = fdiv double %48, 0xBFE62E42FEFA39EF
  %50 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 4, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %49) #13, !range !5
  %51 = and i32 %50, %40
  br label %52

52:                                               ; preds = %43, %39
  %53 = phi i32 [ %51, %43 ], [ %40, %39 ]
  %54 = and i32 %1, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %62 = call i32 @GetImageChannelMean(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %61) #15
  %63 = load double, ptr %3, align 8, !tbaa !6
  %64 = fmul double %63, 0x3EF0001000100010
  %65 = call double @log(double noundef %64) #15
  %66 = fdiv double %65, 0xBFE62E42FEFA39EF
  %67 = call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %66) #13, !range !5
  %68 = and i32 %67, %53
  br label %69

69:                                               ; preds = %60, %56, %52
  %70 = phi i32 [ %68, %60 ], [ %53, %56 ], [ %53, %52 ]
  %71 = and i32 %1, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !26
  %76 = icmp eq i32 %75, 12
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %79 = call i32 @GetImageChannelMean(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %78) #15
  %80 = load double, ptr %3, align 8, !tbaa !6
  %81 = fmul double %80, 0x3EF0001000100010
  %82 = call double @log(double noundef %81) #15
  %83 = fdiv double %82, 0xBFE62E42FEFA39EF
  %84 = call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 32, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %83) #13, !range !5
  %85 = and i32 %84, %70
  br label %86

86:                                               ; preds = %77, %73, %69
  %87 = phi i32 [ %85, %77 ], [ %70, %73 ], [ %70, %69 ]
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %86, %7
  %91 = phi i32 [ %14, %7 ], [ %89, %86 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImageChannelMean(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2961, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = load i32, ptr %0, align 8, !tbaa !28
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %80

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %17 = load i64, ptr %16, align 8, !tbaa !29
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %15
  %20 = and i32 %1, 1
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = and i32 %1, 2
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %1, 8
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %19, %76
  %30 = phi i64 [ 0, %19 ], [ %77, %76 ]
  br i1 %21, label %41, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %22, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %32, i64 %30, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !31
  %35 = uitofp i16 %34 to float
  %36 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %35) #13
  %37 = fptrunc double %36 to float
  %38 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %37) #13
  %39 = load ptr, ptr %22, align 8, !tbaa !30
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %30, i32 2
  store i16 %38, ptr %40, align 2, !tbaa !31
  br label %41

41:                                               ; preds = %31, %29
  br i1 %24, label %52, label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %22, align 8, !tbaa !30
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %43, i64 %30, i32 1
  %45 = load i16, ptr %44, align 2, !tbaa !32
  %46 = uitofp i16 %45 to float
  %47 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %46) #13
  %48 = fptrunc double %47 to float
  %49 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %48) #13
  %50 = load ptr, ptr %22, align 8, !tbaa !30
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %30, i32 1
  store i16 %49, ptr %51, align 2, !tbaa !32
  br label %52

52:                                               ; preds = %42, %41
  br i1 %26, label %63, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %22, align 8, !tbaa !30
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 %30
  %56 = load i16, ptr %55, align 2, !tbaa !33
  %57 = uitofp i16 %56 to float
  %58 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %57) #13
  %59 = fptrunc double %58 to float
  %60 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %59) #13
  %61 = load ptr, ptr %22, align 8, !tbaa !30
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %30
  store i16 %60, ptr %62, align 2, !tbaa !33
  br label %63

63:                                               ; preds = %53, %52
  br i1 %28, label %76, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %22, align 8, !tbaa !30
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 %30, i32 3
  %67 = load i16, ptr %66, align 2, !tbaa !34
  %68 = xor i16 %67, -1
  %69 = uitofp i16 %68 to float
  %70 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %69) #13
  %71 = fptrunc double %70 to float
  %72 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %71) #13
  %73 = xor i16 %72, -1
  %74 = load ptr, ptr %22, align 8, !tbaa !30
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 %30, i32 3
  store i16 %73, ptr %75, align 2, !tbaa !34
  br label %76

76:                                               ; preds = %63, %64
  %77 = add nuw nsw i64 %30, 1
  %78 = load i64, ptr %16, align 8, !tbaa !29
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %29, label %80, !llvm.loop !35

80:                                               ; preds = %76, %15, %12
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %82 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %81) #15
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %84 = load i64, ptr %83, align 8, !tbaa !37
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %189

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %88 = and i32 %1, 1
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %1, 2
  %91 = icmp eq i32 %90, 0
  %92 = and i32 %1, 4
  %93 = icmp eq i32 %92, 0
  %94 = and i32 %1, 8
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %97 = and i32 %1, 32
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %101

101:                                              ; preds = %86, %183
  %102 = phi i32 [ 1, %86 ], [ %185, %183 ]
  %103 = phi i64 [ 0, %86 ], [ %186, %183 ]
  %104 = phi i64 [ 0, %86 ], [ %184, %183 ]
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %183, label %106

106:                                              ; preds = %101
  %107 = load i64, ptr %87, align 8, !tbaa !38
  %108 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %82, i64 noundef 0, i64 noundef %103, i64 noundef %107, i64 noundef 1, ptr noundef nonnull %81) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %183, label %110

110:                                              ; preds = %106
  %111 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %82) #15
  %112 = load i64, ptr %87, align 8, !tbaa !38
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %171

114:                                              ; preds = %110
  %115 = icmp eq ptr %111, null
  br label %116

116:                                              ; preds = %114, %166
  %117 = phi i64 [ 0, %114 ], [ %168, %166 ]
  %118 = phi ptr [ %108, %114 ], [ %167, %166 ]
  br i1 %89, label %126, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 2
  %121 = load i16, ptr %120, align 2, !tbaa !31
  %122 = uitofp i16 %121 to float
  %123 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %122) #13
  %124 = fptrunc double %123 to float
  %125 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %124) #13
  store i16 %125, ptr %120, align 2, !tbaa !31
  br label %126

126:                                              ; preds = %119, %116
  br i1 %91, label %134, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 1
  %129 = load i16, ptr %128, align 2, !tbaa !32
  %130 = uitofp i16 %129 to float
  %131 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %130) #13
  %132 = fptrunc double %131 to float
  %133 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %132) #13
  store i16 %133, ptr %128, align 2, !tbaa !32
  br label %134

134:                                              ; preds = %127, %126
  br i1 %93, label %141, label %135

135:                                              ; preds = %134
  %136 = load i16, ptr %118, align 2, !tbaa !33
  %137 = uitofp i16 %136 to float
  %138 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %137) #13
  %139 = fptrunc double %138 to float
  %140 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %139) #13
  store i16 %140, ptr %118, align 2, !tbaa !33
  br label %141

141:                                              ; preds = %135, %134
  br i1 %95, label %154, label %142

142:                                              ; preds = %141
  %143 = load i32, ptr %96, align 8, !tbaa !10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 3
  %147 = load i16, ptr %146, align 2, !tbaa !34
  %148 = xor i16 %147, -1
  %149 = uitofp i16 %148 to float
  %150 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %149) #13
  %151 = fptrunc double %150 to float
  %152 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %151) #13
  %153 = xor i16 %152, -1
  store i16 %153, ptr %146, align 2, !tbaa !34
  br label %154

154:                                              ; preds = %145, %142, %141
  br i1 %98, label %166, label %155

155:                                              ; preds = %154
  %156 = load i32, ptr %99, align 4, !tbaa !26
  %157 = icmp ne i32 %156, 12
  %158 = select i1 %157, i1 true, i1 %115
  br i1 %158, label %166, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds i16, ptr %111, i64 %117
  %161 = load i16, ptr %160, align 2, !tbaa !39
  %162 = uitofp i16 %161 to float
  %163 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %162) #13
  %164 = fptrunc double %163 to float
  %165 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %164) #13
  store i16 %165, ptr %160, align 2, !tbaa !39
  br label %166

166:                                              ; preds = %159, %155, %154
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 1
  %168 = add nuw nsw i64 %117, 1
  %169 = load i64, ptr %87, align 8, !tbaa !38
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %116, label %171, !llvm.loop !40

171:                                              ; preds = %166, %110
  %172 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %82, ptr noundef nonnull %81) #16
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = load ptr, ptr %100, align 8, !tbaa !41
  %176 = icmp eq ptr %175, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = add nsw i64 %104, 1
  %179 = load i64, ptr %83, align 8, !tbaa !37
  %180 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i64 noundef %104, i64 noundef %179) #13
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, i32 0, i32 %174
  br label %183

183:                                              ; preds = %171, %177, %106, %101
  %184 = phi i64 [ %104, %101 ], [ %104, %106 ], [ %178, %177 ], [ %104, %171 ]
  %185 = phi i32 [ 0, %101 ], [ 0, %106 ], [ %182, %177 ], [ %174, %171 ]
  %186 = add nuw nsw i64 %103, 1
  %187 = load i64, ptr %83, align 8, !tbaa !37
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %101, label %189, !llvm.loop !42

189:                                              ; preds = %183, %80
  %190 = phi i32 [ 1, %80 ], [ %185, %183 ]
  %191 = tail call ptr @DestroyCacheView(ptr noundef %82) #15
  %192 = tail call i32 @ClampImage(ptr noundef nonnull %0) #15
  ret i32 %190
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AutoLevelImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @AutoLevelImageChannel(ptr noundef %0, i32 noundef 134217719) #13
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AutoLevelImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MinMaxStretchImage(ptr noundef %0, i32 noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #15
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @MinMaxStretchImage(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BrightnessContrastImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BrightnessContrastImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BrightnessContrastImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 301, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %4
  %13 = fdiv double %3, 1.000000e+02
  %14 = fadd double %13, 1.000000e+00
  %15 = fmul double %14, 0x400921FB54442D18
  %16 = fmul double %15, 2.500000e-01
  %17 = tail call double @tan(double noundef %16) #15
  %18 = fcmp olt double %17, 0.000000e+00
  %19 = select i1 %18, double 0.000000e+00, double %17
  %20 = fdiv double %2, 1.000000e+02
  %21 = fsub double 1.000000e+02, %2
  %22 = fdiv double %21, 2.000000e+02
  %23 = fsub double 1.000000e+00, %19
  %24 = tail call double @llvm.fmuladd.f64(double %22, double %23, double %20)
  store double %19, ptr %5, align 16, !tbaa !6
  %25 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  store double %24, ptr %25, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = call i32 @FunctionImageChannel(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i64 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %26) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: optsize
declare i32 @FunctionImageChannel(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorDecisionListImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 424, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %336, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %15 = tail call ptr @NewXMLTree(ptr noundef nonnull %1, ptr noundef nonnull %14) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %336, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %15, ptr noundef nonnull @.str.3) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %15) #15
  br label %336

22:                                               ; preds = %17
  %23 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %18, ptr noundef nonnull @.str.4) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %121, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %23, ptr noundef nonnull @.str.5) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %26) #15
  store ptr %29, ptr %4, align 8, !tbaa !43
  %30 = load i8, ptr %29, align 1, !tbaa !44
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %28, %48
  %33 = phi ptr [ %52, %48 ], [ %29, %28 ]
  %34 = phi double [ %50, %48 ], [ 1.000000e+00, %28 ]
  %35 = phi i64 [ %51, %48 ], [ 0, %28 ]
  %36 = phi double [ %49, %48 ], [ 1.000000e+00, %28 ]
  call void @GetMagickToken(ptr noundef nonnull %33, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %37 = load i8, ptr %3, align 16, !tbaa !44
  %38 = icmp eq i8 %37, 44
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load ptr, ptr %4, align 8, !tbaa !43
  call void @GetMagickToken(ptr noundef %40, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  br label %41

41:                                               ; preds = %39, %32
  switch i64 %35, label %55 [
    i64 0, label %42
    i64 1, label %44
    i64 2, label %46
  ]

42:                                               ; preds = %41
  %43 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %48

44:                                               ; preds = %41
  %45 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %48

46:                                               ; preds = %41
  %47 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %55

48:                                               ; preds = %42, %44
  %49 = phi double [ %36, %44 ], [ %43, %42 ]
  %50 = phi double [ %45, %44 ], [ %34, %42 ]
  %51 = add nuw nsw i64 %35, 1
  %52 = load ptr, ptr %4, align 8, !tbaa !43
  %53 = load i8, ptr %52, align 1, !tbaa !44
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %32, !llvm.loop !45

55:                                               ; preds = %41, %48, %46, %28, %25
  %56 = phi double [ 1.000000e+00, %25 ], [ 1.000000e+00, %28 ], [ %36, %46 ], [ %36, %41 ], [ %49, %48 ]
  %57 = phi double [ 1.000000e+00, %25 ], [ 1.000000e+00, %28 ], [ %34, %46 ], [ %34, %41 ], [ %50, %48 ]
  %58 = phi double [ 1.000000e+00, %25 ], [ 1.000000e+00, %28 ], [ %47, %46 ], [ 1.000000e+00, %48 ], [ 1.000000e+00, %41 ]
  %59 = call ptr @GetXMLTreeChild(ptr noundef nonnull %23, ptr noundef nonnull @.str.6) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %88, label %61

61:                                               ; preds = %55
  %62 = call ptr @GetXMLTreeContent(ptr noundef nonnull %59) #15
  store ptr %62, ptr %4, align 8, !tbaa !43
  %63 = load i8, ptr %62, align 1, !tbaa !44
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %61, %81
  %66 = phi ptr [ %85, %81 ], [ %62, %61 ]
  %67 = phi double [ %83, %81 ], [ 0.000000e+00, %61 ]
  %68 = phi i64 [ %84, %81 ], [ 0, %61 ]
  %69 = phi double [ %82, %81 ], [ 0.000000e+00, %61 ]
  call void @GetMagickToken(ptr noundef nonnull %66, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %70 = load i8, ptr %3, align 16, !tbaa !44
  %71 = icmp eq i8 %70, 44
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load ptr, ptr %4, align 8, !tbaa !43
  call void @GetMagickToken(ptr noundef %73, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  br label %74

74:                                               ; preds = %72, %65
  switch i64 %68, label %88 [
    i64 0, label %75
    i64 1, label %77
    i64 2, label %79
  ]

75:                                               ; preds = %74
  %76 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %81

77:                                               ; preds = %74
  %78 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %81

79:                                               ; preds = %74
  %80 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %88

81:                                               ; preds = %75, %77
  %82 = phi double [ %69, %77 ], [ %76, %75 ]
  %83 = phi double [ %78, %77 ], [ %67, %75 ]
  %84 = add nuw nsw i64 %68, 1
  %85 = load ptr, ptr %4, align 8, !tbaa !43
  %86 = load i8, ptr %85, align 1, !tbaa !44
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %65, !llvm.loop !46

88:                                               ; preds = %74, %81, %79, %61, %55
  %89 = phi double [ 0.000000e+00, %55 ], [ 0.000000e+00, %61 ], [ %69, %79 ], [ %69, %74 ], [ %82, %81 ]
  %90 = phi double [ 0.000000e+00, %55 ], [ 0.000000e+00, %61 ], [ %67, %79 ], [ %67, %74 ], [ %83, %81 ]
  %91 = phi double [ 0.000000e+00, %55 ], [ 0.000000e+00, %61 ], [ %80, %79 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %74 ]
  %92 = call ptr @GetXMLTreeChild(ptr noundef nonnull %23, ptr noundef nonnull @.str.7) #15
  %93 = icmp eq ptr %92, null
  br i1 %93, label %121, label %94

94:                                               ; preds = %88
  %95 = call ptr @GetXMLTreeContent(ptr noundef nonnull %92) #15
  store ptr %95, ptr %4, align 8, !tbaa !43
  %96 = load i8, ptr %95, align 1, !tbaa !44
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %94, %114
  %99 = phi ptr [ %118, %114 ], [ %95, %94 ]
  %100 = phi double [ %116, %114 ], [ 1.000000e+00, %94 ]
  %101 = phi double [ %115, %114 ], [ 1.000000e+00, %94 ]
  %102 = phi i64 [ %117, %114 ], [ 0, %94 ]
  call void @GetMagickToken(ptr noundef nonnull %99, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %103 = load i8, ptr %3, align 16, !tbaa !44
  %104 = icmp eq i8 %103, 44
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load ptr, ptr %4, align 8, !tbaa !43
  call void @GetMagickToken(ptr noundef %106, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  br label %107

107:                                              ; preds = %105, %98
  switch i64 %102, label %121 [
    i64 0, label %108
    i64 1, label %110
    i64 2, label %112
  ]

108:                                              ; preds = %107
  %109 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %114

110:                                              ; preds = %107
  %111 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %114

112:                                              ; preds = %107
  %113 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %121

114:                                              ; preds = %108, %110
  %115 = phi double [ %101, %110 ], [ %109, %108 ]
  %116 = phi double [ %111, %110 ], [ %100, %108 ]
  %117 = add nuw nsw i64 %102, 1
  %118 = load ptr, ptr %4, align 8, !tbaa !43
  %119 = load i8, ptr %118, align 1, !tbaa !44
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %98, !llvm.loop !47

121:                                              ; preds = %107, %114, %112, %94, %88, %22
  %122 = phi double [ 1.000000e+00, %22 ], [ %56, %88 ], [ %56, %94 ], [ %56, %112 ], [ %56, %114 ], [ %56, %107 ]
  %123 = phi double [ 0.000000e+00, %22 ], [ %89, %88 ], [ %89, %94 ], [ %89, %112 ], [ %89, %114 ], [ %89, %107 ]
  %124 = phi double [ 1.000000e+00, %22 ], [ 1.000000e+00, %88 ], [ 1.000000e+00, %94 ], [ %101, %112 ], [ %101, %107 ], [ %115, %114 ]
  %125 = phi double [ 1.000000e+00, %22 ], [ %57, %88 ], [ %57, %94 ], [ %57, %112 ], [ %57, %114 ], [ %57, %107 ]
  %126 = phi double [ 0.000000e+00, %22 ], [ %90, %88 ], [ %90, %94 ], [ %90, %112 ], [ %90, %114 ], [ %90, %107 ]
  %127 = phi double [ 1.000000e+00, %22 ], [ 1.000000e+00, %88 ], [ 1.000000e+00, %94 ], [ %100, %112 ], [ %100, %107 ], [ %116, %114 ]
  %128 = phi double [ 1.000000e+00, %22 ], [ %58, %88 ], [ %58, %94 ], [ %58, %112 ], [ %58, %114 ], [ %58, %107 ]
  %129 = phi double [ 0.000000e+00, %22 ], [ %91, %88 ], [ %91, %94 ], [ %91, %112 ], [ %91, %114 ], [ %91, %107 ]
  %130 = phi double [ 1.000000e+00, %22 ], [ 1.000000e+00, %88 ], [ 1.000000e+00, %94 ], [ %113, %112 ], [ 1.000000e+00, %114 ], [ 1.000000e+00, %107 ]
  %131 = call ptr @GetXMLTreeChild(ptr noundef nonnull %18, ptr noundef nonnull @.str.8) #15
  %132 = icmp eq ptr %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %121
  %134 = call ptr @GetXMLTreeChild(ptr noundef nonnull %131, ptr noundef nonnull @.str.9) #15
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = call ptr @GetXMLTreeContent(ptr noundef nonnull %134) #15
  store ptr %137, ptr %4, align 8, !tbaa !43
  call void @GetMagickToken(ptr noundef %137, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %138 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #13
  br label %139

139:                                              ; preds = %133, %136, %121
  %140 = phi double [ 0.000000e+00, %121 ], [ %138, %136 ], [ 0.000000e+00, %133 ]
  %141 = call ptr @DestroyXMLTree(ptr noundef nonnull %15) #15
  %142 = load i32, ptr %5, align 8, !tbaa !27
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %139
  %145 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 570, ptr noundef nonnull @.str.10) #15
  %146 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 572, ptr noundef nonnull @.str.11, double noundef %122) #15
  %147 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 574, ptr noundef nonnull @.str.12, double noundef %123) #15
  %148 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 576, ptr noundef nonnull @.str.13, double noundef %124) #15
  %149 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 578, ptr noundef nonnull @.str.14, double noundef %125) #15
  %150 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 580, ptr noundef nonnull @.str.15, double noundef %126) #15
  %151 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 582, ptr noundef nonnull @.str.16, double noundef %127) #15
  %152 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 584, ptr noundef nonnull @.str.17, double noundef %128) #15
  %153 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 586, ptr noundef nonnull @.str.18, double noundef %129) #15
  %154 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 588, ptr noundef nonnull @.str.19, double noundef %130) #15
  %155 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 590, ptr noundef nonnull @.str.20, double noundef %140) #15
  br label %156

156:                                              ; preds = %144, %139
  %157 = call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #17
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %161 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 596, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %160) #15
  br label %336

162:                                              ; preds = %156, %162
  %163 = phi i64 [ %195, %162 ], [ 0, %156 ]
  %164 = sitofp i64 %163 to double
  %165 = fmul double %122, %164
  %166 = fdiv double %165, 6.553500e+04
  %167 = fadd double %123, %166
  %168 = call double @pow(double noundef %167, double noundef %124) #15
  %169 = fmul double %168, 6.553500e+04
  %170 = fptrunc double %169 to float
  %171 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %170) #13
  %172 = uitofp i16 %171 to float
  %173 = call fastcc zeroext i16 @ClampToQuantum(float noundef %172) #13
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %163
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %163, i32 2
  store i16 %173, ptr %175, align 2, !tbaa !31
  %176 = fmul double %125, %164
  %177 = fdiv double %176, 6.553500e+04
  %178 = fadd double %126, %177
  %179 = call double @pow(double noundef %178, double noundef %127) #15
  %180 = fmul double %179, 6.553500e+04
  %181 = fptrunc double %180 to float
  %182 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %181) #13
  %183 = uitofp i16 %182 to float
  %184 = call fastcc zeroext i16 @ClampToQuantum(float noundef %183) #13
  %185 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %163, i32 1
  store i16 %184, ptr %185, align 2, !tbaa !32
  %186 = fmul double %128, %164
  %187 = fdiv double %186, 6.553500e+04
  %188 = fadd double %129, %187
  %189 = call double @pow(double noundef %188, double noundef %130) #15
  %190 = fmul double %189, 6.553500e+04
  %191 = fptrunc double %190 to float
  %192 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %191) #13
  %193 = uitofp i16 %192 to float
  %194 = call fastcc zeroext i16 @ClampToQuantum(float noundef %193) #13
  store i16 %194, ptr %174, align 2, !tbaa !33
  %195 = add nuw nsw i64 %163, 1
  %196 = icmp eq i64 %195, 65536
  br i1 %196, label %197, label %162, !llvm.loop !48

197:                                              ; preds = %162
  %198 = load i32, ptr %0, align 8, !tbaa !28
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %250

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %202 = load i64, ptr %201, align 8, !tbaa !29
  %203 = icmp sgt i64 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %206 = load ptr, ptr %205, align 8, !tbaa !30
  br label %207

207:                                              ; preds = %204, %207
  %208 = phi i64 [ 0, %204 ], [ %248, %207 ]
  %209 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 %208
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 %208, i32 2
  %211 = load i16, ptr %210, align 2, !tbaa !31
  %212 = uitofp i16 %211 to double
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %206, i64 %208, i32 1
  %214 = load i16, ptr %213, align 2, !tbaa !32
  %215 = uitofp i16 %214 to double
  %216 = fmul double %215, 0x3FE6E29307AF20EA
  %217 = call double @llvm.fmuladd.f64(double %212, double 2.126560e-01, double %216)
  %218 = load i16, ptr %209, align 2, !tbaa !33
  %219 = uitofp i16 %218 to double
  %220 = call double @llvm.fmuladd.f64(double %219, double 7.218600e-02, double %217)
  %221 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %211) #13, !range !49
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %222, i32 2
  %224 = load i16, ptr %223, align 2, !tbaa !31
  %225 = uitofp i16 %224 to double
  %226 = call double @llvm.fmuladd.f64(double %140, double %225, double %220)
  %227 = fsub double %226, %220
  %228 = fptrunc double %227 to float
  %229 = call fastcc zeroext i16 @ClampToQuantum(float noundef %228) #13
  store i16 %229, ptr %210, align 2, !tbaa !31
  %230 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %214) #13, !range !49
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %231, i32 1
  %233 = load i16, ptr %232, align 2, !tbaa !32
  %234 = uitofp i16 %233 to double
  %235 = call double @llvm.fmuladd.f64(double %140, double %234, double %220)
  %236 = fsub double %235, %220
  %237 = fptrunc double %236 to float
  %238 = call fastcc zeroext i16 @ClampToQuantum(float noundef %237) #13
  store i16 %238, ptr %213, align 2, !tbaa !32
  %239 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %218) #13, !range !49
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !33
  %243 = uitofp i16 %242 to double
  %244 = call double @llvm.fmuladd.f64(double %140, double %243, double %220)
  %245 = fsub double %244, %220
  %246 = fptrunc double %245 to float
  %247 = call fastcc zeroext i16 @ClampToQuantum(float noundef %246) #13
  store i16 %247, ptr %209, align 2, !tbaa !33
  %248 = add nuw nsw i64 %208, 1
  %249 = icmp eq i64 %248, %202
  br i1 %249, label %250, label %207, !llvm.loop !50

250:                                              ; preds = %207, %200, %197
  %251 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %14) #15
  %252 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %253 = load i64, ptr %252, align 8, !tbaa !37
  %254 = icmp sgt i64 %253, 0
  br i1 %254, label %255, label %332

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %257 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %258

258:                                              ; preds = %255, %326
  %259 = phi i64 [ 0, %255 ], [ %329, %326 ]
  %260 = phi i64 [ 0, %255 ], [ %328, %326 ]
  %261 = phi i32 [ 1, %255 ], [ %327, %326 ]
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %326, label %263

263:                                              ; preds = %258
  %264 = load i64, ptr %256, align 8, !tbaa !38
  %265 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %251, i64 noundef 0, i64 noundef %259, i64 noundef %264, i64 noundef 1, ptr noundef nonnull %14) #16
  %266 = icmp eq ptr %265, null
  br i1 %266, label %326, label %267

267:                                              ; preds = %263
  %268 = load i64, ptr %256, align 8, !tbaa !38
  %269 = icmp sgt i64 %268, 0
  br i1 %269, label %270, label %314

270:                                              ; preds = %267, %270
  %271 = phi i64 [ %312, %270 ], [ 0, %267 ]
  %272 = phi ptr [ %311, %270 ], [ %265, %267 ]
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %272, i64 0, i32 2
  %274 = load i16, ptr %273, align 2, !tbaa !31
  %275 = uitofp i16 %274 to double
  %276 = getelementptr inbounds %struct._PixelPacket, ptr %272, i64 0, i32 1
  %277 = load i16, ptr %276, align 2, !tbaa !32
  %278 = uitofp i16 %277 to double
  %279 = fmul double %278, 0x3FE6E29307AF20EA
  %280 = call double @llvm.fmuladd.f64(double %275, double 2.126560e-01, double %279)
  %281 = load i16, ptr %272, align 2, !tbaa !33
  %282 = uitofp i16 %281 to double
  %283 = call double @llvm.fmuladd.f64(double %282, double 7.218600e-02, double %280)
  %284 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %274) #13, !range !49
  %285 = zext nneg i32 %284 to i64
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %285, i32 2
  %287 = load i16, ptr %286, align 2, !tbaa !31
  %288 = uitofp i16 %287 to double
  %289 = fsub double %288, %283
  %290 = call double @llvm.fmuladd.f64(double %140, double %289, double %283)
  %291 = fptrunc double %290 to float
  %292 = call fastcc zeroext i16 @ClampToQuantum(float noundef %291) #13
  store i16 %292, ptr %273, align 2, !tbaa !31
  %293 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %277) #13, !range !49
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %294, i32 1
  %296 = load i16, ptr %295, align 2, !tbaa !32
  %297 = uitofp i16 %296 to double
  %298 = fsub double %297, %283
  %299 = call double @llvm.fmuladd.f64(double %140, double %298, double %283)
  %300 = fptrunc double %299 to float
  %301 = call fastcc zeroext i16 @ClampToQuantum(float noundef %300) #13
  store i16 %301, ptr %276, align 2, !tbaa !32
  %302 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %281) #13, !range !49
  %303 = zext nneg i32 %302 to i64
  %304 = getelementptr inbounds %struct._PixelPacket, ptr %157, i64 %303
  %305 = load i16, ptr %304, align 2, !tbaa !33
  %306 = uitofp i16 %305 to double
  %307 = fsub double %306, %283
  %308 = call double @llvm.fmuladd.f64(double %140, double %307, double %283)
  %309 = fptrunc double %308 to float
  %310 = call fastcc zeroext i16 @ClampToQuantum(float noundef %309) #13
  store i16 %310, ptr %272, align 2, !tbaa !33
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %272, i64 1
  %312 = add nuw nsw i64 %271, 1
  %313 = icmp eq i64 %312, %268
  br i1 %313, label %314, label %270, !llvm.loop !51

314:                                              ; preds = %270, %267
  %315 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %251, ptr noundef nonnull %14) #16
  %316 = icmp ne i32 %315, 0
  %317 = zext i1 %316 to i32
  %318 = load ptr, ptr %257, align 8, !tbaa !41
  %319 = icmp eq ptr %318, null
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = add nsw i64 %260, 1
  %322 = load i64, ptr %252, align 8, !tbaa !37
  %323 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, i64 noundef %260, i64 noundef %322) #13
  %324 = icmp eq i32 %323, 0
  %325 = select i1 %324, i32 0, i32 %317
  br label %326

326:                                              ; preds = %314, %320, %263, %258
  %327 = phi i32 [ 0, %258 ], [ 0, %263 ], [ %325, %320 ], [ %317, %314 ]
  %328 = phi i64 [ %260, %258 ], [ %260, %263 ], [ %321, %320 ], [ %260, %314 ]
  %329 = add nuw nsw i64 %259, 1
  %330 = load i64, ptr %252, align 8, !tbaa !37
  %331 = icmp slt i64 %329, %330
  br i1 %331, label %258, label %332, !llvm.loop !52

332:                                              ; preds = %326, %250
  %333 = phi i32 [ 1, %250 ], [ %327, %326 ]
  %334 = call ptr @DestroyCacheView(ptr noundef %251) #15
  %335 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %157) #15
  br label %336

336:                                              ; preds = %159, %13, %11, %332, %20
  %337 = phi i32 [ 0, %20 ], [ %333, %332 ], [ 0, %11 ], [ 0, %13 ], [ 0, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #14
  ret i32 %337
}

; Function Attrs: optsize
declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #15
  ret double %2
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #6 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleMapToQuantum(float noundef %0) unnamed_addr #6 {
  %2 = fpext float %0 to double
  %3 = fcmp ugt float %0, 0.000000e+00
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = fcmp ult float %0, 6.553500e+04
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = fadd double %2, 5.000000e-01
  %8 = fptoui double %7 to i16
  br label %9

9:                                                ; preds = %4, %1, %6
  %10 = phi i16 [ %8, %6 ], [ 0, %1 ], [ -1, %4 ]
  ret i16 %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ScaleQuantumToMap(i16 noundef zeroext %0) unnamed_addr #6 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef %1, ptr noundef nonnull %10) #15
  %12 = load ptr, ptr %6, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #14
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClutImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ClutImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #13, !range !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClutImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 774, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %203, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !26
  %17 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %16) #13, !range !5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !26
  %22 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %21) #13, !range !5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #15
  br label %26

26:                                               ; preds = %24, %19, %14
  %27 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 786, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %31) #15
  br label %203

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 70
  %35 = load i32, ptr %34, align 8, !tbaa !54
  %36 = icmp ne i32 %35, 5
  %37 = zext i1 %36 to i64
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef nonnull %38) #15
  %40 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %41 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  br label %42

42:                                               ; preds = %33, %42
  %43 = phi i64 [ 0, %33 ], [ %56, %42 ]
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %43
  tail call void @GetMagickPixelPacket(ptr noundef nonnull %2, ptr noundef nonnull %44) #15
  %45 = sitofp i64 %43 to double
  %46 = fmul double %45, 0x3EF0001000100010
  %47 = load i64, ptr %40, align 8, !tbaa !38
  %48 = sub i64 %47, %37
  %49 = uitofp i64 %48 to double
  %50 = fmul double %46, %49
  %51 = load i64, ptr %41, align 8, !tbaa !37
  %52 = sub i64 %51, %37
  %53 = uitofp i64 %52 to double
  %54 = fmul double %46, %53
  %55 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %2, ptr noundef %39, i32 noundef 0, double noundef %50, double noundef %54, ptr noundef nonnull %44, ptr noundef nonnull %38) #15
  %56 = add nuw nsw i64 %43, 1
  %57 = icmp eq i64 %56, 65536
  br i1 %57, label %58, label %42, !llvm.loop !55

58:                                               ; preds = %42
  %59 = tail call ptr @DestroyCacheView(ptr noundef %39) #15
  %60 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %38) #15
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %62 = load i64, ptr %61, align 8, !tbaa !37
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = and i32 %1, 8
  br label %191

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %68 = and i32 %1, 1
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %1, 2
  %71 = icmp eq i32 %70, 0
  %72 = and i32 %1, 4
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %1, 8
  %75 = icmp eq i32 %74, 0
  %76 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 6
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %78 = and i32 %1, 32
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %81

81:                                               ; preds = %66, %185
  %82 = phi i64 [ 0, %66 ], [ %188, %185 ]
  %83 = phi i64 [ 0, %66 ], [ %187, %185 ]
  %84 = phi i32 [ 1, %66 ], [ %186, %185 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %185, label %86

86:                                               ; preds = %81
  %87 = load i64, ptr %67, align 8, !tbaa !38
  %88 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %60, i64 noundef 0, i64 noundef %82, i64 noundef %87, i64 noundef 1, ptr noundef nonnull %38) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %185, label %90

90:                                               ; preds = %86
  %91 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %60) #15
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #15
  %92 = load i64, ptr %67, align 8, !tbaa !38
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %173

94:                                               ; preds = %90
  %95 = icmp eq ptr %91, null
  br label %96

96:                                               ; preds = %94, %169
  %97 = phi i64 [ 0, %94 ], [ %171, %169 ]
  %98 = phi ptr [ %88, %94 ], [ %170, %169 ]
  %99 = getelementptr inbounds i16, ptr %91, i64 %97
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %98, ptr noundef %99, ptr noundef nonnull %4) #13
  br i1 %69, label %108, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !31
  %103 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %102) #13, !range !49
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %104, i32 5
  %106 = load float, ptr %105, align 8, !tbaa !56
  %107 = call fastcc zeroext i16 @ClampToQuantum(float noundef %106) #13
  store i16 %107, ptr %101, align 2, !tbaa !31
  br label %108

108:                                              ; preds = %100, %96
  br i1 %71, label %117, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 1
  %111 = load i16, ptr %110, align 2, !tbaa !32
  %112 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %111) #13, !range !49
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %113, i32 6
  %115 = load float, ptr %114, align 4, !tbaa !59
  %116 = call fastcc zeroext i16 @ClampToQuantum(float noundef %115) #13
  store i16 %116, ptr %110, align 2, !tbaa !32
  br label %117

117:                                              ; preds = %109, %108
  br i1 %73, label %125, label %118

118:                                              ; preds = %117
  %119 = load i16, ptr %98, align 2, !tbaa !33
  %120 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %119) #13, !range !49
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %121, i32 7
  %123 = load float, ptr %122, align 8, !tbaa !60
  %124 = call fastcc zeroext i16 @ClampToQuantum(float noundef %123) #13
  store i16 %124, ptr %98, align 2, !tbaa !33
  br label %125

125:                                              ; preds = %118, %117
  br i1 %75, label %158, label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %76, align 8, !tbaa !10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  %131 = load i16, ptr %130, align 2, !tbaa !34
  %132 = xor i16 %131, -1
  %133 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %132) #13, !range !49
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %134
  %136 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %135) #13
  %137 = xor i16 %136, -1
  store i16 %137, ptr %130, align 2, !tbaa !34
  br label %158

138:                                              ; preds = %126
  %139 = load i32, ptr %77, align 8, !tbaa !10
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = call fastcc float @MagickPixelIntensity(ptr noundef nonnull %4) #13
  %143 = fptoui float %142 to i16
  %144 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %143) #13, !range !49
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %145, i32 8
  %147 = load float, ptr %146, align 4, !tbaa !61
  %148 = call fastcc zeroext i16 @ClampToQuantum(float noundef %147) #13
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  store i16 %148, ptr %149, align 2, !tbaa !34
  br label %158

150:                                              ; preds = %138
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  %152 = load i16, ptr %151, align 2, !tbaa !34
  %153 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %152) #13, !range !49
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %154, i32 8
  %156 = load float, ptr %155, align 4, !tbaa !61
  %157 = call fastcc zeroext i16 @ClampToQuantum(float noundef %156) #13
  store i16 %157, ptr %151, align 2, !tbaa !34
  br label %158

158:                                              ; preds = %129, %150, %141, %125
  br i1 %79, label %169, label %159

159:                                              ; preds = %158
  %160 = load i32, ptr %15, align 4, !tbaa !26
  %161 = icmp ne i32 %160, 12
  %162 = select i1 %161, i1 true, i1 %95
  br i1 %162, label %169, label %163

163:                                              ; preds = %159
  %164 = load i16, ptr %99, align 2, !tbaa !39
  %165 = zext i16 %164 to i64
  %166 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %165, i32 9
  %167 = load float, ptr %166, align 8, !tbaa !62
  %168 = call fastcc zeroext i16 @ClampToQuantum(float noundef %167) #13
  store i16 %168, ptr %99, align 2, !tbaa !39
  br label %169

169:                                              ; preds = %163, %159, %158
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 1
  %171 = add nuw nsw i64 %97, 1
  %172 = icmp eq i64 %171, %92
  br i1 %172, label %173, label %96, !llvm.loop !63

173:                                              ; preds = %169, %90
  %174 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %60, ptr noundef nonnull %38) #16
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = load ptr, ptr %80, align 8, !tbaa !41
  %178 = icmp eq ptr %177, null
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = add nsw i64 %83, 1
  %181 = load i64, ptr %61, align 8, !tbaa !37
  %182 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef %83, i64 noundef %181) #13
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %183, i32 0, i32 %176
  br label %185

185:                                              ; preds = %173, %179, %86, %81
  %186 = phi i32 [ 0, %81 ], [ 0, %86 ], [ %184, %179 ], [ %176, %173 ]
  %187 = phi i64 [ %83, %81 ], [ %83, %86 ], [ %180, %179 ], [ %83, %173 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  %188 = add nuw nsw i64 %82, 1
  %189 = load i64, ptr %61, align 8, !tbaa !37
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %81, label %191, !llvm.loop !64

191:                                              ; preds = %185, %64
  %192 = phi i32 [ %65, %64 ], [ %74, %185 ]
  %193 = phi i32 [ 1, %64 ], [ %186, %185 ]
  %194 = call ptr @DestroyCacheView(ptr noundef %60) #15
  %195 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %27) #15
  %196 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 6
  %197 = load i32, ptr %196, align 8, !tbaa !10
  %198 = icmp eq i32 %197, 0
  %199 = icmp eq i32 %192, 0
  %200 = or i1 %199, %198
  br i1 %200, label %203, label %201

201:                                              ; preds = %191
  %202 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 1) #15
  br label %203

203:                                              ; preds = %191, %201, %29, %11
  %204 = phi i32 [ 0, %11 ], [ 0, %29 ], [ %193, %201 ], [ %193, %191 ]
  ret i32 %204
}

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #6 {
  switch i32 %0, label %2 [
    i32 19, label %3
    i32 17, label %3
    i32 2, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !39
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !39
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !62
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !56
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !60
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  %21 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %20) #13
  ret i16 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @MagickPixelIntensity(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !56
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !60
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  ret float %20
}

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ContrastImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 968, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %2
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 -1, i32 1
  %15 = load i32, ptr %0, align 8, !tbaa !28
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %19 = load i64, ptr %18, align 8, !tbaa !29
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %29, %23 ]
  %25 = load ptr, ptr %22, align 8, !tbaa !30
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 %24
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 %24, i32 2
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 %24, i32 1
  tail call fastcc void @Contrast(i32 noundef %14, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef %26) #13
  %29 = add nuw nsw i64 %24, 1
  %30 = load i64, ptr %18, align 8, !tbaa !29
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %23, label %32, !llvm.loop !67

32:                                               ; preds = %23, %17, %12
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %34 = tail call i32 @AccelerateContrastImage(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %33) #15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %92

36:                                               ; preds = %32
  %37 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %33) #15
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %39 = load i64, ptr %38, align 8, !tbaa !37
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %44

44:                                               ; preds = %41, %83
  %45 = phi i64 [ 0, %41 ], [ %86, %83 ]
  %46 = phi i64 [ 0, %41 ], [ %85, %83 ]
  %47 = phi i32 [ 1, %41 ], [ %84, %83 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %44
  %50 = load i64, ptr %42, align 8, !tbaa !38
  %51 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %37, i64 noundef 0, i64 noundef %45, i64 noundef %50, i64 noundef 1, ptr noundef nonnull %33) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %83, label %53

53:                                               ; preds = %49
  %54 = load i64, ptr %42, align 8, !tbaa !38
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53, %56
  %57 = phi i64 [ %68, %56 ], [ 0, %53 ]
  %58 = phi ptr [ %67, %56 ], [ %51, %53 ]
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !31
  store i16 %60, ptr %5, align 2, !tbaa !39
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  %62 = load i16, ptr %61, align 2, !tbaa !32
  store i16 %62, ptr %4, align 2, !tbaa !39
  %63 = load i16, ptr %58, align 2, !tbaa !33
  store i16 %63, ptr %3, align 2, !tbaa !39
  call fastcc void @Contrast(i32 noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3) #13
  %64 = load i16, ptr %5, align 2, !tbaa !39
  store i16 %64, ptr %59, align 2, !tbaa !31
  %65 = load i16, ptr %4, align 2, !tbaa !39
  store i16 %65, ptr %61, align 2, !tbaa !32
  %66 = load i16, ptr %3, align 2, !tbaa !39
  store i16 %66, ptr %58, align 2, !tbaa !33
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %68 = add nuw nsw i64 %57, 1
  %69 = load i64, ptr %42, align 8, !tbaa !38
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %56, label %71, !llvm.loop !68

71:                                               ; preds = %56, %53
  %72 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %37, ptr noundef nonnull %33) #16
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load ptr, ptr %43, align 8, !tbaa !41
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = add nsw i64 %46, 1
  %79 = load i64, ptr %38, align 8, !tbaa !37
  %80 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, i64 noundef %46, i64 noundef %79) #13
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 0, i32 %74
  br label %83

83:                                               ; preds = %71, %77, %49, %44
  %84 = phi i32 [ 0, %44 ], [ 0, %49 ], [ %82, %77 ], [ %74, %71 ]
  %85 = phi i64 [ %46, %44 ], [ %46, %49 ], [ %78, %77 ], [ %46, %71 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  %86 = add nuw nsw i64 %45, 1
  %87 = load i64, ptr %38, align 8, !tbaa !37
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %44, label %89, !llvm.loop !69

89:                                               ; preds = %83, %36
  %90 = phi i32 [ 1, %36 ], [ %84, %83 ]
  %91 = call ptr @DestroyCacheView(ptr noundef %37) #15
  br label %92

92:                                               ; preds = %32, %89
  %93 = phi i32 [ %90, %89 ], [ %34, %32 ]
  ret i32 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Contrast(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store double 0.000000e+00, ptr %6, align 8, !tbaa !6
  store double 0.000000e+00, ptr %7, align 8, !tbaa !6
  store double 0.000000e+00, ptr %5, align 8, !tbaa !6
  %8 = load i16, ptr %1, align 2, !tbaa !39
  %9 = load i16, ptr %2, align 2, !tbaa !39
  %10 = load i16, ptr %3, align 2, !tbaa !39
  call void @ConvertRGBToHSB(i16 noundef zeroext %8, i16 noundef zeroext %9, i16 noundef zeroext %10, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #15
  %11 = sitofp i32 %0 to double
  %12 = fmul double %11, 5.000000e-01
  %13 = load double, ptr %5, align 8, !tbaa !6
  %14 = fadd double %13, -5.000000e-01
  %15 = fmul double %14, 0x400921FB54442D18
  %16 = call double @sin(double noundef %15) #15
  %17 = fadd double %16, 1.000000e+00
  %18 = load double, ptr %5, align 8, !tbaa !6
  %19 = fneg double %18
  %20 = call double @llvm.fmuladd.f64(double %17, double 5.000000e-01, double %19)
  %21 = call double @llvm.fmuladd.f64(double %12, double %20, double %18)
  store double %21, ptr %5, align 8, !tbaa !6
  %22 = fcmp ogt double %21, 1.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store double 1.000000e+00, ptr %5, align 8, !tbaa !6
  br label %27

24:                                               ; preds = %4
  %25 = fcmp olt double %21, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store double 0.000000e+00, ptr %5, align 8, !tbaa !6
  br label %27

27:                                               ; preds = %24, %26, %23
  %28 = phi double [ %21, %24 ], [ 0.000000e+00, %26 ], [ 1.000000e+00, %23 ]
  %29 = load double, ptr %6, align 8, !tbaa !6
  %30 = load double, ptr %7, align 8, !tbaa !6
  call void @ConvertHSBToRGB(double noundef %29, double noundef %30, double noundef %28, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare i32 @AccelerateContrastImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ContrastStretchImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #15
  %7 = load double, ptr %3, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !72
  %10 = uitofp <2 x i64> %9 to <2 x double>
  %11 = extractelement <2 x double> %10, i64 0
  %12 = extractelement <2 x double> %10, i64 1
  %13 = fmul double %11, %12
  %14 = and i32 %6, 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %17 = load double, ptr %16, align 8
  %18 = select i1 %15, double %13, double %17
  %19 = and i32 %6, 4096
  %20 = icmp eq i32 %19, 0
  %21 = fmul double %7, 6.553500e+02
  %22 = fmul double %18, 6.553500e+02
  %23 = select i1 %20, double %18, double %22
  %24 = select i1 %20, double %7, double %21
  %25 = fneg double %24
  %26 = call double @llvm.fmuladd.f64(double %11, double %12, double %25)
  %27 = select i1 %15, double %26, double %23
  %28 = call i32 @ContrastStretchImageChannel(ptr noundef nonnull %0, i32 noundef 134217719, double noundef %24, double noundef %27) #13, !range !5
  br label %29

29:                                               ; preds = %2, %5
  %30 = phi i32 [ %28, %5 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ContrastStretchImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1166, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %13 = tail call i32 @AccelerateContrastStretchImageChannel(ptr noundef nonnull %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %12) #15
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %604, label %15

15:                                               ; preds = %11
  %16 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #17
  %17 = tail call dereferenceable_or_null(655360) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 10) #17
  %18 = icmp eq ptr %16, null
  %19 = icmp eq ptr %17, null
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1180, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %22) #15
  br label %604

24:                                               ; preds = %15
  %25 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %12) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #15
  br label %29

29:                                               ; preds = %27, %24
  %30 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %16, i32 noundef 0, i64 noundef 3670016) #15
  %31 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %12) #15
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !37
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = and i32 %1, 1
  br label %149

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %39 = and i32 %1, 256
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %1, 1
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %1, 2
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %1, 4
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %1, 8
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %1, 32
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %52

52:                                               ; preds = %37, %144
  %53 = phi i32 [ 1, %37 ], [ %145, %144 ]
  %54 = phi i64 [ 0, %37 ], [ %146, %144 ]
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %144, label %56

56:                                               ; preds = %52
  %57 = load i64, ptr %38, align 8, !tbaa !38
  %58 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %31, i64 noundef 0, i64 noundef %54, i64 noundef %57, i64 noundef 1, ptr noundef nonnull %12) #16
  %59 = icmp eq ptr %58, null
  br i1 %59, label %144, label %60

60:                                               ; preds = %56
  %61 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %31) #15
  %62 = load i64, ptr %38, align 8, !tbaa !38
  %63 = icmp sgt i64 %62, 0
  br i1 %40, label %65, label %64

64:                                               ; preds = %60
  br i1 %63, label %68, label %144

65:                                               ; preds = %60
  br i1 %63, label %66, label %144

66:                                               ; preds = %65
  %67 = icmp eq ptr %61, null
  br label %88

68:                                               ; preds = %64, %68
  %69 = phi i64 [ %85, %68 ], [ 0, %64 ]
  %70 = phi ptr [ %84, %68 ], [ %58, %64 ]
  %71 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %70) #16
  %72 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %71) #13
  %73 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %72) #13, !range !49
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %74, i32 5
  %76 = load <2 x float>, ptr %75, align 8, !tbaa !65
  %77 = fadd <2 x float> %76, <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %77, ptr %75, align 8, !tbaa !65
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %74, i32 7
  %79 = load float, ptr %78, align 8, !tbaa !60
  %80 = fadd float %79, 1.000000e+00
  store float %80, ptr %78, align 8, !tbaa !60
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %74, i32 9
  %82 = load float, ptr %81, align 8, !tbaa !62
  %83 = fadd float %82, 1.000000e+00
  store float %83, ptr %81, align 8, !tbaa !62
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 1
  %85 = add nuw nsw i64 %69, 1
  %86 = load i64, ptr %38, align 8, !tbaa !38
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %68, label %144, !llvm.loop !73

88:                                               ; preds = %66, %140
  %89 = phi i64 [ 0, %66 ], [ %142, %140 ]
  %90 = phi ptr [ %58, %66 ], [ %141, %140 ]
  br i1 %42, label %99, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 2
  %93 = load i16, ptr %92, align 2, !tbaa !31
  %94 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %93) #13, !range !49
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %95, i32 5
  %97 = load float, ptr %96, align 8, !tbaa !56
  %98 = fadd float %97, 1.000000e+00
  store float %98, ptr %96, align 8, !tbaa !56
  br label %99

99:                                               ; preds = %91, %88
  br i1 %44, label %108, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 1
  %102 = load i16, ptr %101, align 2, !tbaa !32
  %103 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %102) #13, !range !49
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %104, i32 6
  %106 = load float, ptr %105, align 4, !tbaa !59
  %107 = fadd float %106, 1.000000e+00
  store float %107, ptr %105, align 4, !tbaa !59
  br label %108

108:                                              ; preds = %100, %99
  br i1 %46, label %116, label %109

109:                                              ; preds = %108
  %110 = load i16, ptr %90, align 2, !tbaa !33
  %111 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %110) #13, !range !49
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %112, i32 7
  %114 = load float, ptr %113, align 8, !tbaa !60
  %115 = fadd float %114, 1.000000e+00
  store float %115, ptr %113, align 8, !tbaa !60
  br label %116

116:                                              ; preds = %109, %108
  br i1 %48, label %125, label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 3
  %119 = load i16, ptr %118, align 2, !tbaa !34
  %120 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %119) #13, !range !49
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %121, i32 8
  %123 = load float, ptr %122, align 4, !tbaa !61
  %124 = fadd float %123, 1.000000e+00
  store float %124, ptr %122, align 4, !tbaa !61
  br label %125

125:                                              ; preds = %117, %116
  br i1 %50, label %140, label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %51, align 4, !tbaa !26
  %128 = icmp eq i32 %127, 12
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  br i1 %67, label %133, label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds i16, ptr %61, i64 %89
  %132 = load i16, ptr %131, align 2, !tbaa !39
  br label %133

133:                                              ; preds = %129, %130
  %134 = phi i16 [ %132, %130 ], [ 0, %129 ]
  %135 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %134) #13, !range !49
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %136, i32 9
  %138 = load float, ptr %137, align 8, !tbaa !62
  %139 = fadd float %138, 1.000000e+00
  store float %139, ptr %137, align 8, !tbaa !62
  br label %140

140:                                              ; preds = %133, %126, %125
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 1
  %142 = add nuw nsw i64 %89, 1
  %143 = icmp eq i64 %142, %62
  br i1 %143, label %144, label %88, !llvm.loop !74

144:                                              ; preds = %68, %140, %64, %65, %56, %52
  %145 = phi i32 [ 0, %52 ], [ 0, %56 ], [ 1, %65 ], [ 1, %64 ], [ 1, %140 ], [ 1, %68 ]
  %146 = add nuw nsw i64 %54, 1
  %147 = load i64, ptr %32, align 8, !tbaa !37
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %52, label %149, !llvm.loop !75

149:                                              ; preds = %144, %35
  %150 = phi i32 [ %36, %35 ], [ %41, %144 ]
  %151 = phi i64 [ %33, %35 ], [ %147, %144 ]
  %152 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext -1) #13, !range !49
  %153 = uitofp i32 %152 to float
  %154 = icmp ne i32 %150, 0
  br i1 %154, label %155, label %189

155:                                              ; preds = %149, %163
  %156 = phi double [ %161, %163 ], [ 0.000000e+00, %149 ]
  %157 = phi i64 [ %164, %163 ], [ 0, %149 ]
  %158 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %157, i32 5
  %159 = load float, ptr %158, align 8, !tbaa !56
  %160 = fpext float %159 to double
  %161 = fadd double %156, %160
  %162 = fcmp ogt double %161, %2
  br i1 %162, label %166, label %163

163:                                              ; preds = %155
  %164 = add nuw nsw i64 %157, 1
  %165 = icmp eq i64 %164, 65536
  br i1 %165, label %166, label %155, !llvm.loop !76

166:                                              ; preds = %155, %163
  %167 = phi i64 [ %157, %155 ], [ 65536, %163 ]
  %168 = sitofp i64 %167 to float
  %169 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %170 = load i64, ptr %169, align 8, !tbaa !38
  %171 = uitofp i64 %170 to double
  %172 = uitofp i64 %151 to double
  %173 = fneg double %3
  %174 = tail call double @llvm.fmuladd.f64(double %171, double %172, double %173)
  br label %175

175:                                              ; preds = %166, %183
  %176 = phi double [ 0.000000e+00, %166 ], [ %181, %183 ]
  %177 = phi i64 [ 65535, %166 ], [ %184, %183 ]
  %178 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %177, i32 5
  %179 = load float, ptr %178, align 8, !tbaa !56
  %180 = fpext float %179 to double
  %181 = fadd double %176, %180
  %182 = fcmp ogt double %181, %174
  br i1 %182, label %186, label %183

183:                                              ; preds = %175
  %184 = add nsw i64 %177, -1
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %175, !llvm.loop !77

186:                                              ; preds = %175, %183
  %187 = phi i64 [ %177, %175 ], [ 0, %183 ]
  %188 = sitofp i64 %187 to float
  br label %189

189:                                              ; preds = %186, %149
  %190 = phi float [ %168, %186 ], [ 0.000000e+00, %149 ]
  %191 = phi float [ %188, %186 ], [ %153, %149 ]
  %192 = and i32 %1, 2
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %228

194:                                              ; preds = %189, %202
  %195 = phi double [ %200, %202 ], [ 0.000000e+00, %189 ]
  %196 = phi i64 [ %203, %202 ], [ 0, %189 ]
  %197 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %196, i32 6
  %198 = load float, ptr %197, align 4, !tbaa !59
  %199 = fpext float %198 to double
  %200 = fadd double %195, %199
  %201 = fcmp ogt double %200, %2
  br i1 %201, label %205, label %202

202:                                              ; preds = %194
  %203 = add nuw nsw i64 %196, 1
  %204 = icmp eq i64 %203, 65536
  br i1 %204, label %205, label %194, !llvm.loop !78

205:                                              ; preds = %194, %202
  %206 = phi i64 [ %196, %194 ], [ 65536, %202 ]
  %207 = sitofp i64 %206 to float
  %208 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %209 = load i64, ptr %208, align 8, !tbaa !38
  %210 = uitofp i64 %209 to double
  %211 = uitofp i64 %151 to double
  %212 = fneg double %3
  %213 = tail call double @llvm.fmuladd.f64(double %210, double %211, double %212)
  br label %214

214:                                              ; preds = %205, %222
  %215 = phi double [ 0.000000e+00, %205 ], [ %220, %222 ]
  %216 = phi i64 [ 65535, %205 ], [ %223, %222 ]
  %217 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %216, i32 6
  %218 = load float, ptr %217, align 4, !tbaa !59
  %219 = fpext float %218 to double
  %220 = fadd double %215, %219
  %221 = fcmp ogt double %220, %213
  br i1 %221, label %225, label %222

222:                                              ; preds = %214
  %223 = add nsw i64 %216, -1
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %214, !llvm.loop !79

225:                                              ; preds = %214, %222
  %226 = phi i64 [ %216, %214 ], [ 0, %222 ]
  %227 = sitofp i64 %226 to float
  br label %228

228:                                              ; preds = %225, %189
  %229 = phi float [ %207, %225 ], [ 0.000000e+00, %189 ]
  %230 = phi float [ %227, %225 ], [ %153, %189 ]
  %231 = and i32 %1, 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %267

233:                                              ; preds = %228, %241
  %234 = phi double [ %239, %241 ], [ 0.000000e+00, %228 ]
  %235 = phi i64 [ %242, %241 ], [ 0, %228 ]
  %236 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %235, i32 7
  %237 = load float, ptr %236, align 8, !tbaa !60
  %238 = fpext float %237 to double
  %239 = fadd double %234, %238
  %240 = fcmp ogt double %239, %2
  br i1 %240, label %244, label %241

241:                                              ; preds = %233
  %242 = add nuw nsw i64 %235, 1
  %243 = icmp eq i64 %242, 65536
  br i1 %243, label %244, label %233, !llvm.loop !80

244:                                              ; preds = %233, %241
  %245 = phi i64 [ %235, %233 ], [ 65536, %241 ]
  %246 = sitofp i64 %245 to float
  %247 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %248 = load i64, ptr %247, align 8, !tbaa !38
  %249 = uitofp i64 %248 to double
  %250 = uitofp i64 %151 to double
  %251 = fneg double %3
  %252 = tail call double @llvm.fmuladd.f64(double %249, double %250, double %251)
  br label %253

253:                                              ; preds = %244, %261
  %254 = phi double [ 0.000000e+00, %244 ], [ %259, %261 ]
  %255 = phi i64 [ 65535, %244 ], [ %262, %261 ]
  %256 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %255, i32 7
  %257 = load float, ptr %256, align 8, !tbaa !60
  %258 = fpext float %257 to double
  %259 = fadd double %254, %258
  %260 = fcmp ogt double %259, %252
  br i1 %260, label %264, label %261

261:                                              ; preds = %253
  %262 = add nsw i64 %255, -1
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %253, !llvm.loop !81

264:                                              ; preds = %253, %261
  %265 = phi i64 [ %255, %253 ], [ 0, %261 ]
  %266 = sitofp i64 %265 to float
  br label %267

267:                                              ; preds = %264, %228
  %268 = phi float [ %246, %264 ], [ 0.000000e+00, %228 ]
  %269 = phi float [ %266, %264 ], [ %153, %228 ]
  %270 = and i32 %1, 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %306

272:                                              ; preds = %267, %280
  %273 = phi double [ %278, %280 ], [ 0.000000e+00, %267 ]
  %274 = phi i64 [ %281, %280 ], [ 0, %267 ]
  %275 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %274, i32 8
  %276 = load float, ptr %275, align 4, !tbaa !61
  %277 = fpext float %276 to double
  %278 = fadd double %273, %277
  %279 = fcmp ogt double %278, %2
  br i1 %279, label %283, label %280

280:                                              ; preds = %272
  %281 = add nuw nsw i64 %274, 1
  %282 = icmp eq i64 %281, 65536
  br i1 %282, label %283, label %272, !llvm.loop !82

283:                                              ; preds = %272, %280
  %284 = phi i64 [ %274, %272 ], [ 65536, %280 ]
  %285 = sitofp i64 %284 to float
  %286 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %287 = load i64, ptr %286, align 8, !tbaa !38
  %288 = uitofp i64 %287 to double
  %289 = uitofp i64 %151 to double
  %290 = fneg double %3
  %291 = tail call double @llvm.fmuladd.f64(double %288, double %289, double %290)
  br label %292

292:                                              ; preds = %283, %300
  %293 = phi double [ 0.000000e+00, %283 ], [ %298, %300 ]
  %294 = phi i64 [ 65535, %283 ], [ %301, %300 ]
  %295 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %294, i32 8
  %296 = load float, ptr %295, align 4, !tbaa !61
  %297 = fpext float %296 to double
  %298 = fadd double %293, %297
  %299 = fcmp ogt double %298, %291
  br i1 %299, label %303, label %300

300:                                              ; preds = %292
  %301 = add nsw i64 %294, -1
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %292, !llvm.loop !83

303:                                              ; preds = %292, %300
  %304 = phi i64 [ %294, %292 ], [ 0, %300 ]
  %305 = sitofp i64 %304 to float
  br label %306

306:                                              ; preds = %303, %267
  %307 = phi float [ %285, %303 ], [ 0.000000e+00, %267 ]
  %308 = phi float [ %305, %303 ], [ %153, %267 ]
  %309 = and i32 %1, 32
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %349, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %313 = load i32, ptr %312, align 4, !tbaa !26
  %314 = icmp eq i32 %313, 12
  br i1 %314, label %315, label %349

315:                                              ; preds = %311, %323
  %316 = phi double [ %321, %323 ], [ 0.000000e+00, %311 ]
  %317 = phi i64 [ %324, %323 ], [ 0, %311 ]
  %318 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %317, i32 9
  %319 = load float, ptr %318, align 8, !tbaa !62
  %320 = fpext float %319 to double
  %321 = fadd double %316, %320
  %322 = fcmp ogt double %321, %2
  br i1 %322, label %326, label %323

323:                                              ; preds = %315
  %324 = add nuw nsw i64 %317, 1
  %325 = icmp eq i64 %324, 65536
  br i1 %325, label %326, label %315, !llvm.loop !84

326:                                              ; preds = %315, %323
  %327 = phi i64 [ %317, %315 ], [ 65536, %323 ]
  %328 = sitofp i64 %327 to float
  %329 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %330 = load i64, ptr %329, align 8, !tbaa !38
  %331 = uitofp i64 %330 to double
  %332 = uitofp i64 %151 to double
  %333 = fneg double %3
  %334 = tail call double @llvm.fmuladd.f64(double %331, double %332, double %333)
  br label %335

335:                                              ; preds = %326, %343
  %336 = phi double [ 0.000000e+00, %326 ], [ %341, %343 ]
  %337 = phi i64 [ 65535, %326 ], [ %344, %343 ]
  %338 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %337, i32 9
  %339 = load float, ptr %338, align 8, !tbaa !62
  %340 = fpext float %339 to double
  %341 = fadd double %336, %340
  %342 = fcmp ogt double %341, %334
  br i1 %342, label %346, label %343

343:                                              ; preds = %335
  %344 = add nsw i64 %337, -1
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %335, !llvm.loop !85

346:                                              ; preds = %335, %343
  %347 = phi i64 [ %337, %335 ], [ 0, %343 ]
  %348 = sitofp i64 %347 to float
  br label %349

349:                                              ; preds = %346, %311, %306
  %350 = phi float [ %328, %346 ], [ 0.000000e+00, %311 ], [ 0.000000e+00, %306 ]
  %351 = phi float [ %348, %346 ], [ %153, %311 ], [ %153, %306 ]
  %352 = tail call ptr @RelinquishMagickMemory(ptr noundef %16) #15
  %353 = tail call ptr @ResetMagickMemory(ptr noundef %17, i32 noundef 0, i64 noundef 655360) #15
  %354 = fptosi float %190 to i64
  %355 = fptosi float %191 to i64
  %356 = fcmp une float %190, %191
  %357 = fsub float %191, %190
  %358 = fptosi float %229 to i64
  %359 = fptosi float %230 to i64
  %360 = fcmp une float %229, %230
  %361 = fsub float %230, %229
  %362 = fptosi float %268 to i64
  %363 = fptosi float %269 to i64
  %364 = fcmp une float %268, %269
  %365 = fsub float %269, %268
  %366 = fptosi float %307 to i64
  %367 = fptosi float %308 to i64
  %368 = fcmp une float %307, %308
  %369 = fsub float %308, %307
  %370 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %371 = fptosi float %350 to i64
  %372 = fptosi float %351 to i64
  %373 = fcmp une float %350, %351
  %374 = fsub float %351, %350
  br label %375

375:                                              ; preds = %349, %454
  %376 = phi i64 [ 0, %349 ], [ %455, %454 ]
  br i1 %154, label %377, label %391

377:                                              ; preds = %375
  %378 = icmp slt i64 %376, %354
  br i1 %378, label %388, label %379

379:                                              ; preds = %377
  %380 = icmp sgt i64 %376, %355
  br i1 %380, label %388, label %381

381:                                              ; preds = %379
  br i1 %356, label %382, label %391

382:                                              ; preds = %381
  %383 = sitofp i64 %376 to float
  %384 = fsub float %383, %190
  %385 = fmul float %384, 6.553500e+04
  %386 = fdiv float %385, %357
  %387 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %386) #13
  br label %388

388:                                              ; preds = %379, %377, %382
  %389 = phi i16 [ %387, %382 ], [ 0, %377 ], [ -1, %379 ]
  %390 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %376
  store i16 %389, ptr %390, align 2, !tbaa !86
  br label %391

391:                                              ; preds = %388, %381, %375
  br i1 %193, label %392, label %406

392:                                              ; preds = %391
  %393 = icmp slt i64 %376, %358
  br i1 %393, label %403, label %394

394:                                              ; preds = %392
  %395 = icmp sgt i64 %376, %359
  br i1 %395, label %403, label %396

396:                                              ; preds = %394
  br i1 %360, label %397, label %406

397:                                              ; preds = %396
  %398 = sitofp i64 %376 to float
  %399 = fsub float %398, %229
  %400 = fmul float %399, 6.553500e+04
  %401 = fdiv float %400, %361
  %402 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %401) #13
  br label %403

403:                                              ; preds = %394, %392, %397
  %404 = phi i16 [ %402, %397 ], [ 0, %392 ], [ -1, %394 ]
  %405 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %376, i32 1
  store i16 %404, ptr %405, align 2, !tbaa !88
  br label %406

406:                                              ; preds = %403, %396, %391
  br i1 %232, label %407, label %421

407:                                              ; preds = %406
  %408 = icmp slt i64 %376, %362
  br i1 %408, label %418, label %409

409:                                              ; preds = %407
  %410 = icmp sgt i64 %376, %363
  br i1 %410, label %418, label %411

411:                                              ; preds = %409
  br i1 %364, label %412, label %421

412:                                              ; preds = %411
  %413 = sitofp i64 %376 to float
  %414 = fsub float %413, %268
  %415 = fmul float %414, 6.553500e+04
  %416 = fdiv float %415, %365
  %417 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %416) #13
  br label %418

418:                                              ; preds = %409, %407, %412
  %419 = phi i16 [ %417, %412 ], [ 0, %407 ], [ -1, %409 ]
  %420 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %376, i32 2
  store i16 %419, ptr %420, align 2, !tbaa !89
  br label %421

421:                                              ; preds = %418, %411, %406
  br i1 %271, label %422, label %436

422:                                              ; preds = %421
  %423 = icmp slt i64 %376, %366
  br i1 %423, label %433, label %424

424:                                              ; preds = %422
  %425 = icmp sgt i64 %376, %367
  br i1 %425, label %433, label %426

426:                                              ; preds = %424
  br i1 %368, label %427, label %436

427:                                              ; preds = %426
  %428 = sitofp i64 %376 to float
  %429 = fsub float %428, %307
  %430 = fmul float %429, 6.553500e+04
  %431 = fdiv float %430, %369
  %432 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %431) #13
  br label %433

433:                                              ; preds = %424, %422, %427
  %434 = phi i16 [ %432, %427 ], [ 0, %422 ], [ -1, %424 ]
  %435 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %376, i32 3
  store i16 %434, ptr %435, align 2, !tbaa !90
  br label %436

436:                                              ; preds = %433, %426, %421
  br i1 %310, label %454, label %437

437:                                              ; preds = %436
  %438 = load i32, ptr %370, align 4, !tbaa !26
  %439 = icmp eq i32 %438, 12
  br i1 %439, label %440, label %454

440:                                              ; preds = %437
  %441 = icmp slt i64 %376, %371
  br i1 %441, label %451, label %442

442:                                              ; preds = %440
  %443 = icmp sgt i64 %376, %372
  br i1 %443, label %451, label %444

444:                                              ; preds = %442
  br i1 %373, label %445, label %454

445:                                              ; preds = %444
  %446 = sitofp i64 %376 to float
  %447 = fsub float %446, %350
  %448 = fmul float %447, 6.553500e+04
  %449 = fdiv float %448, %374
  %450 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %449) #13
  br label %451

451:                                              ; preds = %442, %440, %445
  %452 = phi i16 [ %450, %445 ], [ 0, %440 ], [ -1, %442 ]
  %453 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %376, i32 4
  store i16 %452, ptr %453, align 2, !tbaa !91
  br label %454

454:                                              ; preds = %451, %436, %437, %444
  %455 = add nuw nsw i64 %376, 1
  %456 = icmp eq i64 %455, 65536
  br i1 %456, label %457, label %375, !llvm.loop !92

457:                                              ; preds = %454
  br i1 %271, label %462, label %458

458:                                              ; preds = %457
  br i1 %310, label %463, label %459

459:                                              ; preds = %458
  %460 = load i32, ptr %370, align 4, !tbaa !26
  %461 = icmp eq i32 %460, 12
  br i1 %461, label %462, label %463

462:                                              ; preds = %457, %459
  store i32 1, ptr %0, align 8, !tbaa !28
  br label %506

463:                                              ; preds = %459, %458
  %464 = load i32, ptr %0, align 8, !tbaa !28
  %465 = icmp eq i32 %464, 2
  br i1 %465, label %466, label %506

466:                                              ; preds = %463
  %467 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %468 = load i64, ptr %467, align 8, !tbaa !29
  %469 = icmp sgt i64 %468, 0
  br i1 %469, label %470, label %506

470:                                              ; preds = %466
  %471 = and i1 %154, %356
  %472 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %473 = and i1 %193, %360
  %474 = and i1 %232, %364
  br label %475

475:                                              ; preds = %470, %503
  %476 = phi i64 [ 0, %470 ], [ %504, %503 ]
  br i1 %471, label %477, label %485

477:                                              ; preds = %475
  %478 = load ptr, ptr %472, align 8, !tbaa !30
  %479 = getelementptr inbounds %struct._PixelPacket, ptr %478, i64 %476, i32 2
  %480 = load i16, ptr %479, align 2, !tbaa !31
  %481 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %480) #13, !range !49
  %482 = zext nneg i32 %481 to i64
  %483 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %482
  %484 = load i16, ptr %483, align 2, !tbaa !86
  store i16 %484, ptr %479, align 2, !tbaa !31
  br label %485

485:                                              ; preds = %477, %475
  br i1 %473, label %486, label %494

486:                                              ; preds = %485
  %487 = load ptr, ptr %472, align 8, !tbaa !30
  %488 = getelementptr inbounds %struct._PixelPacket, ptr %487, i64 %476, i32 1
  %489 = load i16, ptr %488, align 2, !tbaa !32
  %490 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %489) #13, !range !49
  %491 = zext nneg i32 %490 to i64
  %492 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %491, i32 1
  %493 = load i16, ptr %492, align 2, !tbaa !88
  store i16 %493, ptr %488, align 2, !tbaa !32
  br label %494

494:                                              ; preds = %486, %485
  br i1 %474, label %495, label %503

495:                                              ; preds = %494
  %496 = load ptr, ptr %472, align 8, !tbaa !30
  %497 = getelementptr inbounds %struct._PixelPacket, ptr %496, i64 %476
  %498 = load i16, ptr %497, align 2, !tbaa !33
  %499 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %498) #13, !range !49
  %500 = zext nneg i32 %499 to i64
  %501 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %500, i32 2
  %502 = load i16, ptr %501, align 2, !tbaa !89
  store i16 %502, ptr %497, align 2, !tbaa !33
  br label %503

503:                                              ; preds = %495, %494
  %504 = add nuw nsw i64 %476, 1
  %505 = icmp eq i64 %504, %468
  br i1 %505, label %506, label %475, !llvm.loop !93

506:                                              ; preds = %503, %466, %462, %463
  %507 = load i64, ptr %32, align 8, !tbaa !37
  %508 = icmp sgt i64 %507, 0
  br i1 %508, label %509, label %600

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %511 = and i1 %154, %356
  %512 = and i1 %193, %360
  %513 = and i1 %232, %364
  %514 = and i1 %271, %368
  %515 = fcmp oeq float %350, %351
  %516 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %517

517:                                              ; preds = %509, %594
  %518 = phi i32 [ 1, %509 ], [ %596, %594 ]
  %519 = phi i64 [ 0, %509 ], [ %597, %594 ]
  %520 = phi i64 [ 0, %509 ], [ %595, %594 ]
  %521 = icmp eq i32 %518, 0
  br i1 %521, label %594, label %522

522:                                              ; preds = %517
  %523 = load i64, ptr %510, align 8, !tbaa !38
  %524 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %31, i64 noundef 0, i64 noundef %519, i64 noundef %523, i64 noundef 1, ptr noundef nonnull %12) #16
  %525 = icmp eq ptr %524, null
  br i1 %525, label %594, label %526

526:                                              ; preds = %522
  %527 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %31) #15
  %528 = load i64, ptr %510, align 8, !tbaa !38
  %529 = icmp sgt i64 %528, 0
  br i1 %529, label %530, label %582

530:                                              ; preds = %526
  %531 = icmp eq ptr %527, null
  br label %532

532:                                              ; preds = %530, %578
  %533 = phi i64 [ 0, %530 ], [ %580, %578 ]
  %534 = phi ptr [ %524, %530 ], [ %579, %578 ]
  br i1 %511, label %535, label %542

535:                                              ; preds = %532
  %536 = getelementptr inbounds %struct._PixelPacket, ptr %534, i64 0, i32 2
  %537 = load i16, ptr %536, align 2, !tbaa !31
  %538 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %537) #13, !range !49
  %539 = zext nneg i32 %538 to i64
  %540 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %539
  %541 = load i16, ptr %540, align 2, !tbaa !86
  store i16 %541, ptr %536, align 2, !tbaa !31
  br label %542

542:                                              ; preds = %535, %532
  br i1 %512, label %543, label %550

543:                                              ; preds = %542
  %544 = getelementptr inbounds %struct._PixelPacket, ptr %534, i64 0, i32 1
  %545 = load i16, ptr %544, align 2, !tbaa !32
  %546 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %545) #13, !range !49
  %547 = zext nneg i32 %546 to i64
  %548 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %547, i32 1
  %549 = load i16, ptr %548, align 2, !tbaa !88
  store i16 %549, ptr %544, align 2, !tbaa !32
  br label %550

550:                                              ; preds = %543, %542
  br i1 %513, label %551, label %557

551:                                              ; preds = %550
  %552 = load i16, ptr %534, align 2, !tbaa !33
  %553 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %552) #13, !range !49
  %554 = zext nneg i32 %553 to i64
  %555 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %554, i32 2
  %556 = load i16, ptr %555, align 2, !tbaa !89
  store i16 %556, ptr %534, align 2, !tbaa !33
  br label %557

557:                                              ; preds = %551, %550
  br i1 %514, label %558, label %565

558:                                              ; preds = %557
  %559 = getelementptr inbounds %struct._PixelPacket, ptr %534, i64 0, i32 3
  %560 = load i16, ptr %559, align 2, !tbaa !34
  %561 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %560) #13, !range !49
  %562 = zext nneg i32 %561 to i64
  %563 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %562, i32 3
  %564 = load i16, ptr %563, align 2, !tbaa !90
  store i16 %564, ptr %559, align 2, !tbaa !34
  br label %565

565:                                              ; preds = %558, %557
  br i1 %310, label %578, label %566

566:                                              ; preds = %565
  %567 = load i32, ptr %370, align 4, !tbaa !26
  %568 = icmp ne i32 %567, 12
  %569 = or i1 %515, %568
  %570 = select i1 %569, i1 true, i1 %531
  br i1 %570, label %578, label %571

571:                                              ; preds = %566
  %572 = getelementptr inbounds i16, ptr %527, i64 %533
  %573 = load i16, ptr %572, align 2, !tbaa !39
  %574 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %573) #13, !range !49
  %575 = zext nneg i32 %574 to i64
  %576 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %17, i64 %575, i32 4
  %577 = load i16, ptr %576, align 2, !tbaa !91
  store i16 %577, ptr %572, align 2, !tbaa !39
  br label %578

578:                                              ; preds = %571, %566, %565
  %579 = getelementptr inbounds %struct._PixelPacket, ptr %534, i64 1
  %580 = add nuw nsw i64 %533, 1
  %581 = icmp eq i64 %580, %528
  br i1 %581, label %582, label %532, !llvm.loop !94

582:                                              ; preds = %578, %526
  %583 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %31, ptr noundef nonnull %12) #16
  %584 = icmp ne i32 %583, 0
  %585 = zext i1 %584 to i32
  %586 = load ptr, ptr %516, align 8, !tbaa !41
  %587 = icmp eq ptr %586, null
  br i1 %587, label %594, label %588

588:                                              ; preds = %582
  %589 = add nsw i64 %520, 1
  %590 = load i64, ptr %32, align 8, !tbaa !37
  %591 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, i64 noundef %520, i64 noundef %590) #13
  %592 = icmp eq i32 %591, 0
  %593 = select i1 %592, i32 0, i32 %585
  br label %594

594:                                              ; preds = %582, %588, %522, %517
  %595 = phi i64 [ %520, %517 ], [ %520, %522 ], [ %589, %588 ], [ %520, %582 ]
  %596 = phi i32 [ 0, %517 ], [ 0, %522 ], [ %593, %588 ], [ %585, %582 ]
  %597 = add nuw nsw i64 %519, 1
  %598 = load i64, ptr %32, align 8, !tbaa !37
  %599 = icmp slt i64 %597, %598
  br i1 %599, label %517, label %600, !llvm.loop !95

600:                                              ; preds = %594, %506
  %601 = phi i32 [ 1, %506 ], [ %596, %594 ]
  %602 = tail call ptr @DestroyCacheView(ptr noundef %31) #15
  %603 = tail call ptr @RelinquishMagickMemory(ptr noundef %17) #15
  br label %604

604:                                              ; preds = %21, %11, %600
  %605 = phi i32 [ %601, %600 ], [ 1, %11 ], [ 0, %21 ]
  ret i32 %605
}

; Function Attrs: optsize
declare i32 @AccelerateContrastStretchImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EnhanceImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !27
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1621, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !38
  %13 = icmp ult i64 %12, 5
  br i1 %13, label %1556, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !37
  %17 = icmp ult i64 %16, 5
  br i1 %17, label %1556, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %12, i64 noundef %16, i32 noundef 1, ptr noundef %1) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %1556, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %19, i32 noundef 1) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 58
  tail call void @InheritException(ptr noundef %1, ptr noundef nonnull %25) #15
  %26 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #15
  br label %1556

27:                                               ; preds = %21
  %28 = call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 56) #15
  %29 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %1) #15
  %30 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %19, ptr noundef %1) #15
  %31 = load i64, ptr %15, align 8, !tbaa !37
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %1553

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %35 = getelementptr inbounds i8, ptr %3, i64 32
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %37

37:                                               ; preds = %33, %1541
  %38 = phi i32 [ 1, %33 ], [ %1543, %1541 ]
  %39 = phi i64 [ 0, %33 ], [ %1542, %1541 ]
  %40 = phi i64 [ 0, %33 ], [ %1544, %1541 ]
  %41 = icmp eq i32 %38, 0
  br i1 %41, label %1541, label %42

42:                                               ; preds = %37
  %43 = add nsw i64 %40, -2
  %44 = load i64, ptr %11, align 8, !tbaa !38
  %45 = add i64 %44, 4
  %46 = call ptr @GetCacheViewVirtualPixels(ptr noundef %29, i64 noundef -2, i64 noundef %43, i64 noundef %45, i64 noundef 5, ptr noundef %1) #16
  %47 = load i64, ptr %34, align 8, !tbaa !38
  %48 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %30, i64 noundef 0, i64 noundef %40, i64 noundef %47, i64 noundef 1, ptr noundef %1) #16
  %49 = icmp eq ptr %46, null
  %50 = icmp eq ptr %48, null
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %1541, label %52

52:                                               ; preds = %42
  %53 = load i64, ptr %11, align 8, !tbaa !38
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %1529

55:                                               ; preds = %52
  %56 = shl nuw i64 %53, 1
  %57 = add i64 %56, 8
  %58 = add nuw i64 %53, 4
  %59 = mul i64 %53, 3
  %60 = add i64 %59, 12
  %61 = shl i64 %53, 2
  %62 = add i64 %61, 16
  br label %63

63:                                               ; preds = %55, %1514
  %64 = phi i64 [ 0, %55 ], [ %1527, %1514 ]
  %65 = phi ptr [ %48, %55 ], [ %1526, %1514 ]
  %66 = phi ptr [ %46, %55 ], [ %136, %1514 ]
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 %57
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 2
  %69 = load <4 x i16>, ptr %68, align 2
  %70 = extractelement <4 x i16> %69, i64 2
  %71 = uitofp i16 %70 to float
  %72 = load <4 x float>, ptr %35, align 8
  %73 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %74 = load <4 x i16>, ptr %66, align 2, !tbaa !39
  %75 = extractelement <4 x i16> %74, i64 2
  %76 = uitofp i16 %75 to float
  %77 = fadd float %71, %76
  %78 = fmul float %77, 5.000000e-01
  %79 = fsub float %76, %71
  %80 = fpext float %78 to double
  %81 = fadd double %80, 1.310720e+05
  %82 = fmul double %81, 0x3EF0001000100010
  %83 = fpext float %79 to double
  %84 = fmul double %82, %83
  %85 = fmul double %84, %83
  %86 = fptrunc double %85 to float
  %87 = shufflevector <4 x i16> %74, <4 x i16> %69, <2 x i32> <i32 1, i32 5>
  %88 = uitofp <2 x i16> %87 to <2 x float>
  %89 = extractelement <2 x float> %88, i64 0
  %90 = extractelement <2 x float> %88, i64 1
  %91 = fsub float %89, %90
  %92 = fpext float %91 to double
  %93 = fmul double %92, 4.000000e+00
  %94 = fpext float %86 to double
  %95 = call double @llvm.fmuladd.f64(double %93, double %92, double %94)
  %96 = fptrunc double %95 to float
  %97 = shufflevector <4 x i16> %74, <4 x i16> %69, <2 x i32> <i32 0, i32 4>
  %98 = uitofp <2 x i16> %97 to <2 x float>
  %99 = extractelement <2 x float> %98, i64 0
  %100 = extractelement <2 x float> %98, i64 1
  %101 = fadd float %100, %99
  %102 = fmul float %101, 5.000000e-01
  %103 = fsub float %99, %100
  %104 = fpext float %102 to double
  %105 = fsub double 1.966070e+05, %104
  %106 = fmul double %105, 0x3EF0001000100010
  %107 = fpext float %103 to double
  %108 = fmul double %106, %107
  %109 = fpext float %96 to double
  %110 = call double @llvm.fmuladd.f64(double %108, double %107, double %109)
  %111 = fptrunc double %110 to float
  %112 = shufflevector <4 x i16> %74, <4 x i16> %69, <2 x i32> <i32 3, i32 7>
  %113 = uitofp <2 x i16> %112 to <2 x float>
  %114 = extractelement <2 x float> %113, i64 0
  %115 = extractelement <2 x float> %113, i64 1
  %116 = fadd float %115, %114
  %117 = fmul float %116, 5.000000e-01
  %118 = fsub float %114, %115
  %119 = fpext float %117 to double
  %120 = fsub double 1.966070e+05, %119
  %121 = fmul double %120, 0x3EF0001000100010
  %122 = fpext float %118 to double
  %123 = fmul double %121, %122
  %124 = fpext float %111 to double
  %125 = call double @llvm.fmuladd.f64(double %123, double %122, double %124)
  %126 = fptrunc double %125 to float
  %127 = fcmp olt float %126, 0x41A47AB860000000
  br i1 %127, label %128, label %133

128:                                              ; preds = %63
  %129 = uitofp <4 x i16> %74 to <4 x double>
  %130 = fpext <4 x float> %73 to <4 x double>
  %131 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %129, <4 x double> <double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00>, <4 x double> %130)
  %132 = fptrunc <4 x double> %131 to <4 x float>
  br label %133

133:                                              ; preds = %128, %63
  %134 = phi float [ 5.000000e+00, %128 ], [ 0.000000e+00, %63 ]
  %135 = phi <4 x float> [ %132, %128 ], [ %73, %63 ]
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %137 = load <4 x i16>, ptr %136, align 2, !tbaa !39
  %138 = extractelement <4 x i16> %137, i64 2
  %139 = uitofp i16 %138 to float
  %140 = fadd float %71, %139
  %141 = fmul float %140, 5.000000e-01
  %142 = fsub float %139, %71
  %143 = fpext float %141 to double
  %144 = fadd double %143, 1.310720e+05
  %145 = fmul double %144, 0x3EF0001000100010
  %146 = fpext float %142 to double
  %147 = fmul double %145, %146
  %148 = fmul double %147, %146
  %149 = fptrunc double %148 to float
  %150 = extractelement <4 x i16> %137, i64 1
  %151 = uitofp i16 %150 to float
  %152 = fsub float %151, %90
  %153 = fpext float %152 to double
  %154 = fmul double %153, 4.000000e+00
  %155 = fpext float %149 to double
  %156 = call double @llvm.fmuladd.f64(double %154, double %153, double %155)
  %157 = fptrunc double %156 to float
  %158 = extractelement <4 x i16> %137, i64 0
  %159 = uitofp i16 %158 to float
  %160 = fadd float %100, %159
  %161 = fmul float %160, 5.000000e-01
  %162 = fsub float %159, %100
  %163 = fpext float %161 to double
  %164 = fsub double 1.966070e+05, %163
  %165 = fmul double %164, 0x3EF0001000100010
  %166 = fpext float %162 to double
  %167 = fmul double %165, %166
  %168 = fpext float %157 to double
  %169 = call double @llvm.fmuladd.f64(double %167, double %166, double %168)
  %170 = fptrunc double %169 to float
  %171 = extractelement <4 x i16> %137, i64 3
  %172 = uitofp i16 %171 to float
  %173 = fadd float %115, %172
  %174 = fmul float %173, 5.000000e-01
  %175 = fsub float %172, %115
  %176 = fpext float %174 to double
  %177 = fsub double 1.966070e+05, %176
  %178 = fmul double %177, 0x3EF0001000100010
  %179 = fpext float %175 to double
  %180 = fmul double %178, %179
  %181 = fpext float %170 to double
  %182 = call double @llvm.fmuladd.f64(double %180, double %179, double %181)
  %183 = fptrunc double %182 to float
  %184 = fcmp olt float %183, 0x41A47AB860000000
  br i1 %184, label %185, label %191

185:                                              ; preds = %133
  %186 = uitofp <4 x i16> %137 to <4 x double>
  %187 = fpext <4 x float> %135 to <4 x double>
  %188 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %186, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %187)
  %189 = fptrunc <4 x double> %188 to <4 x float>
  %190 = fadd float %134, 8.000000e+00
  br label %191

191:                                              ; preds = %185, %133
  %192 = phi float [ %190, %185 ], [ %134, %133 ]
  %193 = phi <4 x float> [ %189, %185 ], [ %135, %133 ]
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 2
  %195 = load <4 x i16>, ptr %194, align 2, !tbaa !39
  %196 = extractelement <4 x i16> %195, i64 2
  %197 = uitofp i16 %196 to float
  %198 = fadd float %71, %197
  %199 = fmul float %198, 5.000000e-01
  %200 = fsub float %197, %71
  %201 = fpext float %199 to double
  %202 = fadd double %201, 1.310720e+05
  %203 = fmul double %202, 0x3EF0001000100010
  %204 = fpext float %200 to double
  %205 = fmul double %203, %204
  %206 = fmul double %205, %204
  %207 = fptrunc double %206 to float
  %208 = extractelement <4 x i16> %195, i64 1
  %209 = uitofp i16 %208 to float
  %210 = fsub float %209, %90
  %211 = fpext float %210 to double
  %212 = fmul double %211, 4.000000e+00
  %213 = fpext float %207 to double
  %214 = call double @llvm.fmuladd.f64(double %212, double %211, double %213)
  %215 = fptrunc double %214 to float
  %216 = extractelement <4 x i16> %195, i64 0
  %217 = uitofp i16 %216 to float
  %218 = fadd float %100, %217
  %219 = fmul float %218, 5.000000e-01
  %220 = fsub float %217, %100
  %221 = fpext float %219 to double
  %222 = fsub double 1.966070e+05, %221
  %223 = fmul double %222, 0x3EF0001000100010
  %224 = fpext float %220 to double
  %225 = fmul double %223, %224
  %226 = fpext float %215 to double
  %227 = call double @llvm.fmuladd.f64(double %225, double %224, double %226)
  %228 = fptrunc double %227 to float
  %229 = extractelement <4 x i16> %195, i64 3
  %230 = uitofp i16 %229 to float
  %231 = fadd float %115, %230
  %232 = fmul float %231, 5.000000e-01
  %233 = fsub float %230, %115
  %234 = fpext float %232 to double
  %235 = fsub double 1.966070e+05, %234
  %236 = fmul double %235, 0x3EF0001000100010
  %237 = fpext float %233 to double
  %238 = fmul double %236, %237
  %239 = fpext float %228 to double
  %240 = call double @llvm.fmuladd.f64(double %238, double %237, double %239)
  %241 = fptrunc double %240 to float
  %242 = fcmp olt float %241, 0x41A47AB860000000
  br i1 %242, label %243, label %249

243:                                              ; preds = %191
  %244 = uitofp <4 x i16> %195 to <4 x double>
  %245 = fpext <4 x float> %193 to <4 x double>
  %246 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %244, <4 x double> <double 1.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01>, <4 x double> %245)
  %247 = fptrunc <4 x double> %246 to <4 x float>
  %248 = fadd float %192, 1.000000e+01
  br label %249

249:                                              ; preds = %243, %191
  %250 = phi float [ %248, %243 ], [ %192, %191 ]
  %251 = phi <4 x float> [ %247, %243 ], [ %193, %191 ]
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 3
  %253 = load <4 x i16>, ptr %252, align 2, !tbaa !39
  %254 = extractelement <4 x i16> %253, i64 2
  %255 = uitofp i16 %254 to float
  %256 = fadd float %71, %255
  %257 = fmul float %256, 5.000000e-01
  %258 = fsub float %255, %71
  %259 = fpext float %257 to double
  %260 = fadd double %259, 1.310720e+05
  %261 = fmul double %260, 0x3EF0001000100010
  %262 = fpext float %258 to double
  %263 = fmul double %261, %262
  %264 = fmul double %263, %262
  %265 = fptrunc double %264 to float
  %266 = extractelement <4 x i16> %253, i64 1
  %267 = uitofp i16 %266 to float
  %268 = fsub float %267, %90
  %269 = fpext float %268 to double
  %270 = fmul double %269, 4.000000e+00
  %271 = fpext float %265 to double
  %272 = call double @llvm.fmuladd.f64(double %270, double %269, double %271)
  %273 = fptrunc double %272 to float
  %274 = extractelement <4 x i16> %253, i64 0
  %275 = uitofp i16 %274 to float
  %276 = fadd float %100, %275
  %277 = fmul float %276, 5.000000e-01
  %278 = fsub float %275, %100
  %279 = fpext float %277 to double
  %280 = fsub double 1.966070e+05, %279
  %281 = fmul double %280, 0x3EF0001000100010
  %282 = fpext float %278 to double
  %283 = fmul double %281, %282
  %284 = fpext float %273 to double
  %285 = call double @llvm.fmuladd.f64(double %283, double %282, double %284)
  %286 = fptrunc double %285 to float
  %287 = extractelement <4 x i16> %253, i64 3
  %288 = uitofp i16 %287 to float
  %289 = fadd float %115, %288
  %290 = fmul float %289, 5.000000e-01
  %291 = fsub float %288, %115
  %292 = fpext float %290 to double
  %293 = fsub double 1.966070e+05, %292
  %294 = fmul double %293, 0x3EF0001000100010
  %295 = fpext float %291 to double
  %296 = fmul double %294, %295
  %297 = fpext float %286 to double
  %298 = call double @llvm.fmuladd.f64(double %296, double %295, double %297)
  %299 = fptrunc double %298 to float
  %300 = fcmp olt float %299, 0x41A47AB860000000
  br i1 %300, label %301, label %307

301:                                              ; preds = %249
  %302 = uitofp <4 x i16> %253 to <4 x double>
  %303 = fpext <4 x float> %251 to <4 x double>
  %304 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %302, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %303)
  %305 = fptrunc <4 x double> %304 to <4 x float>
  %306 = fadd float %250, 8.000000e+00
  br label %307

307:                                              ; preds = %301, %249
  %308 = phi float [ %306, %301 ], [ %250, %249 ]
  %309 = phi <4 x float> [ %305, %301 ], [ %251, %249 ]
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 4
  %311 = load <4 x i16>, ptr %310, align 2, !tbaa !39
  %312 = extractelement <4 x i16> %311, i64 2
  %313 = uitofp i16 %312 to float
  %314 = fadd float %71, %313
  %315 = fmul float %314, 5.000000e-01
  %316 = fsub float %313, %71
  %317 = fpext float %315 to double
  %318 = fadd double %317, 1.310720e+05
  %319 = fmul double %318, 0x3EF0001000100010
  %320 = fpext float %316 to double
  %321 = fmul double %319, %320
  %322 = fmul double %321, %320
  %323 = fptrunc double %322 to float
  %324 = extractelement <4 x i16> %311, i64 1
  %325 = uitofp i16 %324 to float
  %326 = fsub float %325, %90
  %327 = fpext float %326 to double
  %328 = fmul double %327, 4.000000e+00
  %329 = fpext float %323 to double
  %330 = call double @llvm.fmuladd.f64(double %328, double %327, double %329)
  %331 = fptrunc double %330 to float
  %332 = extractelement <4 x i16> %311, i64 0
  %333 = uitofp i16 %332 to float
  %334 = fadd float %100, %333
  %335 = fmul float %334, 5.000000e-01
  %336 = fsub float %333, %100
  %337 = fpext float %335 to double
  %338 = fsub double 1.966070e+05, %337
  %339 = fmul double %338, 0x3EF0001000100010
  %340 = fpext float %336 to double
  %341 = fmul double %339, %340
  %342 = fpext float %331 to double
  %343 = call double @llvm.fmuladd.f64(double %341, double %340, double %342)
  %344 = fptrunc double %343 to float
  %345 = extractelement <4 x i16> %311, i64 3
  %346 = uitofp i16 %345 to float
  %347 = fadd float %115, %346
  %348 = fmul float %347, 5.000000e-01
  %349 = fsub float %346, %115
  %350 = fpext float %348 to double
  %351 = fsub double 1.966070e+05, %350
  %352 = fmul double %351, 0x3EF0001000100010
  %353 = fpext float %349 to double
  %354 = fmul double %352, %353
  %355 = fpext float %344 to double
  %356 = call double @llvm.fmuladd.f64(double %354, double %353, double %355)
  %357 = fptrunc double %356 to float
  %358 = fcmp olt float %357, 0x41A47AB860000000
  br i1 %358, label %359, label %365

359:                                              ; preds = %307
  %360 = uitofp <4 x i16> %311 to <4 x double>
  %361 = fpext <4 x float> %309 to <4 x double>
  %362 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %360, <4 x double> <double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00>, <4 x double> %361)
  %363 = fptrunc <4 x double> %362 to <4 x float>
  %364 = fadd float %308, 5.000000e+00
  br label %365

365:                                              ; preds = %359, %307
  %366 = phi float [ %364, %359 ], [ %308, %307 ]
  %367 = phi <4 x float> [ %363, %359 ], [ %309, %307 ]
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 %58
  %369 = load <4 x i16>, ptr %368, align 2, !tbaa !39
  %370 = extractelement <4 x i16> %369, i64 2
  %371 = uitofp i16 %370 to float
  %372 = fadd float %71, %371
  %373 = fmul float %372, 5.000000e-01
  %374 = fsub float %371, %71
  %375 = fpext float %373 to double
  %376 = fadd double %375, 1.310720e+05
  %377 = fmul double %376, 0x3EF0001000100010
  %378 = fpext float %374 to double
  %379 = fmul double %377, %378
  %380 = fmul double %379, %378
  %381 = fptrunc double %380 to float
  %382 = extractelement <4 x i16> %369, i64 1
  %383 = uitofp i16 %382 to float
  %384 = fsub float %383, %90
  %385 = fpext float %384 to double
  %386 = fmul double %385, 4.000000e+00
  %387 = fpext float %381 to double
  %388 = call double @llvm.fmuladd.f64(double %386, double %385, double %387)
  %389 = fptrunc double %388 to float
  %390 = extractelement <4 x i16> %369, i64 0
  %391 = uitofp i16 %390 to float
  %392 = fadd float %100, %391
  %393 = fmul float %392, 5.000000e-01
  %394 = fsub float %391, %100
  %395 = fpext float %393 to double
  %396 = fsub double 1.966070e+05, %395
  %397 = fmul double %396, 0x3EF0001000100010
  %398 = fpext float %394 to double
  %399 = fmul double %397, %398
  %400 = fpext float %389 to double
  %401 = call double @llvm.fmuladd.f64(double %399, double %398, double %400)
  %402 = fptrunc double %401 to float
  %403 = extractelement <4 x i16> %369, i64 3
  %404 = uitofp i16 %403 to float
  %405 = fadd float %115, %404
  %406 = fmul float %405, 5.000000e-01
  %407 = fsub float %404, %115
  %408 = fpext float %406 to double
  %409 = fsub double 1.966070e+05, %408
  %410 = fmul double %409, 0x3EF0001000100010
  %411 = fpext float %407 to double
  %412 = fmul double %410, %411
  %413 = fpext float %402 to double
  %414 = call double @llvm.fmuladd.f64(double %412, double %411, double %413)
  %415 = fptrunc double %414 to float
  %416 = fcmp olt float %415, 0x41A47AB860000000
  br i1 %416, label %417, label %423

417:                                              ; preds = %365
  %418 = uitofp <4 x i16> %369 to <4 x double>
  %419 = fpext <4 x float> %367 to <4 x double>
  %420 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %418, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %419)
  %421 = fptrunc <4 x double> %420 to <4 x float>
  %422 = fadd float %366, 8.000000e+00
  br label %423

423:                                              ; preds = %417, %365
  %424 = phi float [ %422, %417 ], [ %366, %365 ]
  %425 = phi <4 x float> [ %421, %417 ], [ %367, %365 ]
  %426 = getelementptr inbounds %struct._PixelPacket, ptr %368, i64 1
  %427 = load <4 x i16>, ptr %426, align 2, !tbaa !39
  %428 = extractelement <4 x i16> %427, i64 2
  %429 = uitofp i16 %428 to float
  %430 = fadd float %71, %429
  %431 = fmul float %430, 5.000000e-01
  %432 = fsub float %429, %71
  %433 = fpext float %431 to double
  %434 = fadd double %433, 1.310720e+05
  %435 = fmul double %434, 0x3EF0001000100010
  %436 = fpext float %432 to double
  %437 = fmul double %435, %436
  %438 = fmul double %437, %436
  %439 = fptrunc double %438 to float
  %440 = extractelement <4 x i16> %427, i64 1
  %441 = uitofp i16 %440 to float
  %442 = fsub float %441, %90
  %443 = fpext float %442 to double
  %444 = fmul double %443, 4.000000e+00
  %445 = fpext float %439 to double
  %446 = call double @llvm.fmuladd.f64(double %444, double %443, double %445)
  %447 = fptrunc double %446 to float
  %448 = extractelement <4 x i16> %427, i64 0
  %449 = uitofp i16 %448 to float
  %450 = fadd float %100, %449
  %451 = fmul float %450, 5.000000e-01
  %452 = fsub float %449, %100
  %453 = fpext float %451 to double
  %454 = fsub double 1.966070e+05, %453
  %455 = fmul double %454, 0x3EF0001000100010
  %456 = fpext float %452 to double
  %457 = fmul double %455, %456
  %458 = fpext float %447 to double
  %459 = call double @llvm.fmuladd.f64(double %457, double %456, double %458)
  %460 = fptrunc double %459 to float
  %461 = extractelement <4 x i16> %427, i64 3
  %462 = uitofp i16 %461 to float
  %463 = fadd float %115, %462
  %464 = fmul float %463, 5.000000e-01
  %465 = fsub float %462, %115
  %466 = fpext float %464 to double
  %467 = fsub double 1.966070e+05, %466
  %468 = fmul double %467, 0x3EF0001000100010
  %469 = fpext float %465 to double
  %470 = fmul double %468, %469
  %471 = fpext float %460 to double
  %472 = call double @llvm.fmuladd.f64(double %470, double %469, double %471)
  %473 = fptrunc double %472 to float
  %474 = fcmp olt float %473, 0x41A47AB860000000
  br i1 %474, label %475, label %481

475:                                              ; preds = %423
  %476 = uitofp <4 x i16> %427 to <4 x double>
  %477 = fpext <4 x float> %425 to <4 x double>
  %478 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %476, <4 x double> <double 2.000000e+01, double 2.000000e+01, double 2.000000e+01, double 2.000000e+01>, <4 x double> %477)
  %479 = fptrunc <4 x double> %478 to <4 x float>
  %480 = fadd float %424, 2.000000e+01
  br label %481

481:                                              ; preds = %475, %423
  %482 = phi float [ %480, %475 ], [ %424, %423 ]
  %483 = phi <4 x float> [ %479, %475 ], [ %425, %423 ]
  %484 = getelementptr inbounds %struct._PixelPacket, ptr %368, i64 2
  %485 = load <4 x i16>, ptr %484, align 2, !tbaa !39
  %486 = extractelement <4 x i16> %485, i64 2
  %487 = uitofp i16 %486 to float
  %488 = fadd float %71, %487
  %489 = fmul float %488, 5.000000e-01
  %490 = fsub float %487, %71
  %491 = fpext float %489 to double
  %492 = fadd double %491, 1.310720e+05
  %493 = fmul double %492, 0x3EF0001000100010
  %494 = fpext float %490 to double
  %495 = fmul double %493, %494
  %496 = fmul double %495, %494
  %497 = fptrunc double %496 to float
  %498 = extractelement <4 x i16> %485, i64 1
  %499 = uitofp i16 %498 to float
  %500 = fsub float %499, %90
  %501 = fpext float %500 to double
  %502 = fmul double %501, 4.000000e+00
  %503 = fpext float %497 to double
  %504 = call double @llvm.fmuladd.f64(double %502, double %501, double %503)
  %505 = fptrunc double %504 to float
  %506 = extractelement <4 x i16> %485, i64 0
  %507 = uitofp i16 %506 to float
  %508 = fadd float %100, %507
  %509 = fmul float %508, 5.000000e-01
  %510 = fsub float %507, %100
  %511 = fpext float %509 to double
  %512 = fsub double 1.966070e+05, %511
  %513 = fmul double %512, 0x3EF0001000100010
  %514 = fpext float %510 to double
  %515 = fmul double %513, %514
  %516 = fpext float %505 to double
  %517 = call double @llvm.fmuladd.f64(double %515, double %514, double %516)
  %518 = fptrunc double %517 to float
  %519 = extractelement <4 x i16> %485, i64 3
  %520 = uitofp i16 %519 to float
  %521 = fadd float %115, %520
  %522 = fmul float %521, 5.000000e-01
  %523 = fsub float %520, %115
  %524 = fpext float %522 to double
  %525 = fsub double 1.966070e+05, %524
  %526 = fmul double %525, 0x3EF0001000100010
  %527 = fpext float %523 to double
  %528 = fmul double %526, %527
  %529 = fpext float %518 to double
  %530 = call double @llvm.fmuladd.f64(double %528, double %527, double %529)
  %531 = fptrunc double %530 to float
  %532 = fcmp olt float %531, 0x41A47AB860000000
  br i1 %532, label %533, label %539

533:                                              ; preds = %481
  %534 = uitofp <4 x i16> %485 to <4 x double>
  %535 = fpext <4 x float> %483 to <4 x double>
  %536 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %534, <4 x double> <double 4.000000e+01, double 4.000000e+01, double 4.000000e+01, double 4.000000e+01>, <4 x double> %535)
  %537 = fptrunc <4 x double> %536 to <4 x float>
  %538 = fadd float %482, 4.000000e+01
  br label %539

539:                                              ; preds = %533, %481
  %540 = phi float [ %538, %533 ], [ %482, %481 ]
  %541 = phi <4 x float> [ %537, %533 ], [ %483, %481 ]
  %542 = getelementptr inbounds %struct._PixelPacket, ptr %368, i64 3
  %543 = load <4 x i16>, ptr %542, align 2, !tbaa !39
  %544 = extractelement <4 x i16> %543, i64 2
  %545 = uitofp i16 %544 to float
  %546 = fadd float %71, %545
  %547 = fmul float %546, 5.000000e-01
  %548 = fsub float %545, %71
  %549 = fpext float %547 to double
  %550 = fadd double %549, 1.310720e+05
  %551 = fmul double %550, 0x3EF0001000100010
  %552 = fpext float %548 to double
  %553 = fmul double %551, %552
  %554 = fmul double %553, %552
  %555 = fptrunc double %554 to float
  %556 = extractelement <4 x i16> %543, i64 1
  %557 = uitofp i16 %556 to float
  %558 = fsub float %557, %90
  %559 = fpext float %558 to double
  %560 = fmul double %559, 4.000000e+00
  %561 = fpext float %555 to double
  %562 = call double @llvm.fmuladd.f64(double %560, double %559, double %561)
  %563 = fptrunc double %562 to float
  %564 = extractelement <4 x i16> %543, i64 0
  %565 = uitofp i16 %564 to float
  %566 = fadd float %100, %565
  %567 = fmul float %566, 5.000000e-01
  %568 = fsub float %565, %100
  %569 = fpext float %567 to double
  %570 = fsub double 1.966070e+05, %569
  %571 = fmul double %570, 0x3EF0001000100010
  %572 = fpext float %568 to double
  %573 = fmul double %571, %572
  %574 = fpext float %563 to double
  %575 = call double @llvm.fmuladd.f64(double %573, double %572, double %574)
  %576 = fptrunc double %575 to float
  %577 = extractelement <4 x i16> %543, i64 3
  %578 = uitofp i16 %577 to float
  %579 = fadd float %115, %578
  %580 = fmul float %579, 5.000000e-01
  %581 = fsub float %578, %115
  %582 = fpext float %580 to double
  %583 = fsub double 1.966070e+05, %582
  %584 = fmul double %583, 0x3EF0001000100010
  %585 = fpext float %581 to double
  %586 = fmul double %584, %585
  %587 = fpext float %576 to double
  %588 = call double @llvm.fmuladd.f64(double %586, double %585, double %587)
  %589 = fptrunc double %588 to float
  %590 = fcmp olt float %589, 0x41A47AB860000000
  br i1 %590, label %591, label %597

591:                                              ; preds = %539
  %592 = uitofp <4 x i16> %543 to <4 x double>
  %593 = fpext <4 x float> %541 to <4 x double>
  %594 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %592, <4 x double> <double 2.000000e+01, double 2.000000e+01, double 2.000000e+01, double 2.000000e+01>, <4 x double> %593)
  %595 = fptrunc <4 x double> %594 to <4 x float>
  %596 = fadd float %540, 2.000000e+01
  br label %597

597:                                              ; preds = %591, %539
  %598 = phi float [ %596, %591 ], [ %540, %539 ]
  %599 = phi <4 x float> [ %595, %591 ], [ %541, %539 ]
  %600 = getelementptr inbounds %struct._PixelPacket, ptr %368, i64 4
  %601 = load <4 x i16>, ptr %600, align 2, !tbaa !39
  %602 = extractelement <4 x i16> %601, i64 2
  %603 = uitofp i16 %602 to float
  %604 = fadd float %71, %603
  %605 = fmul float %604, 5.000000e-01
  %606 = fsub float %603, %71
  %607 = fpext float %605 to double
  %608 = fadd double %607, 1.310720e+05
  %609 = fmul double %608, 0x3EF0001000100010
  %610 = fpext float %606 to double
  %611 = fmul double %609, %610
  %612 = fmul double %611, %610
  %613 = fptrunc double %612 to float
  %614 = extractelement <4 x i16> %601, i64 1
  %615 = uitofp i16 %614 to float
  %616 = fsub float %615, %90
  %617 = fpext float %616 to double
  %618 = fmul double %617, 4.000000e+00
  %619 = fpext float %613 to double
  %620 = call double @llvm.fmuladd.f64(double %618, double %617, double %619)
  %621 = fptrunc double %620 to float
  %622 = extractelement <4 x i16> %601, i64 0
  %623 = uitofp i16 %622 to float
  %624 = fadd float %100, %623
  %625 = fmul float %624, 5.000000e-01
  %626 = fsub float %623, %100
  %627 = fpext float %625 to double
  %628 = fsub double 1.966070e+05, %627
  %629 = fmul double %628, 0x3EF0001000100010
  %630 = fpext float %626 to double
  %631 = fmul double %629, %630
  %632 = fpext float %621 to double
  %633 = call double @llvm.fmuladd.f64(double %631, double %630, double %632)
  %634 = fptrunc double %633 to float
  %635 = extractelement <4 x i16> %601, i64 3
  %636 = uitofp i16 %635 to float
  %637 = fadd float %115, %636
  %638 = fmul float %637, 5.000000e-01
  %639 = fsub float %636, %115
  %640 = fpext float %638 to double
  %641 = fsub double 1.966070e+05, %640
  %642 = fmul double %641, 0x3EF0001000100010
  %643 = fpext float %639 to double
  %644 = fmul double %642, %643
  %645 = fpext float %634 to double
  %646 = call double @llvm.fmuladd.f64(double %644, double %643, double %645)
  %647 = fptrunc double %646 to float
  %648 = fcmp olt float %647, 0x41A47AB860000000
  br i1 %648, label %649, label %655

649:                                              ; preds = %597
  %650 = uitofp <4 x i16> %601 to <4 x double>
  %651 = fpext <4 x float> %599 to <4 x double>
  %652 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %650, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %651)
  %653 = fptrunc <4 x double> %652 to <4 x float>
  %654 = fadd float %598, 8.000000e+00
  br label %655

655:                                              ; preds = %649, %597
  %656 = phi float [ %654, %649 ], [ %598, %597 ]
  %657 = phi <4 x float> [ %653, %649 ], [ %599, %597 ]
  %658 = load <4 x i16>, ptr %67, align 2, !tbaa !39
  %659 = extractelement <4 x i16> %658, i64 2
  %660 = uitofp i16 %659 to float
  %661 = fadd float %71, %660
  %662 = fmul float %661, 5.000000e-01
  %663 = fsub float %660, %71
  %664 = fpext float %662 to double
  %665 = fadd double %664, 1.310720e+05
  %666 = fmul double %665, 0x3EF0001000100010
  %667 = fpext float %663 to double
  %668 = fmul double %666, %667
  %669 = fmul double %668, %667
  %670 = fptrunc double %669 to float
  %671 = extractelement <4 x i16> %658, i64 1
  %672 = uitofp i16 %671 to float
  %673 = fsub float %672, %90
  %674 = fpext float %673 to double
  %675 = fmul double %674, 4.000000e+00
  %676 = fpext float %670 to double
  %677 = call double @llvm.fmuladd.f64(double %675, double %674, double %676)
  %678 = fptrunc double %677 to float
  %679 = extractelement <4 x i16> %658, i64 0
  %680 = uitofp i16 %679 to float
  %681 = fadd float %100, %680
  %682 = fmul float %681, 5.000000e-01
  %683 = fsub float %680, %100
  %684 = fpext float %682 to double
  %685 = fsub double 1.966070e+05, %684
  %686 = fmul double %685, 0x3EF0001000100010
  %687 = fpext float %683 to double
  %688 = fmul double %686, %687
  %689 = fpext float %678 to double
  %690 = call double @llvm.fmuladd.f64(double %688, double %687, double %689)
  %691 = fptrunc double %690 to float
  %692 = extractelement <4 x i16> %658, i64 3
  %693 = uitofp i16 %692 to float
  %694 = fadd float %115, %693
  %695 = fmul float %694, 5.000000e-01
  %696 = fsub float %693, %115
  %697 = fpext float %695 to double
  %698 = fsub double 1.966070e+05, %697
  %699 = fmul double %698, 0x3EF0001000100010
  %700 = fpext float %696 to double
  %701 = fmul double %699, %700
  %702 = fpext float %691 to double
  %703 = call double @llvm.fmuladd.f64(double %701, double %700, double %702)
  %704 = fptrunc double %703 to float
  %705 = fcmp olt float %704, 0x41A47AB860000000
  br i1 %705, label %706, label %712

706:                                              ; preds = %655
  %707 = uitofp <4 x i16> %658 to <4 x double>
  %708 = fpext <4 x float> %657 to <4 x double>
  %709 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %707, <4 x double> <double 1.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01>, <4 x double> %708)
  %710 = fptrunc <4 x double> %709 to <4 x float>
  %711 = fadd float %656, 1.000000e+01
  br label %712

712:                                              ; preds = %706, %655
  %713 = phi float [ %711, %706 ], [ %656, %655 ]
  %714 = phi <4 x float> [ %710, %706 ], [ %657, %655 ]
  %715 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %716 = load <4 x i16>, ptr %715, align 2, !tbaa !39
  %717 = extractelement <4 x i16> %716, i64 2
  %718 = uitofp i16 %717 to float
  %719 = fadd float %71, %718
  %720 = fmul float %719, 5.000000e-01
  %721 = fsub float %718, %71
  %722 = fpext float %720 to double
  %723 = fadd double %722, 1.310720e+05
  %724 = fmul double %723, 0x3EF0001000100010
  %725 = fpext float %721 to double
  %726 = fmul double %724, %725
  %727 = fmul double %726, %725
  %728 = fptrunc double %727 to float
  %729 = extractelement <4 x i16> %716, i64 1
  %730 = uitofp i16 %729 to float
  %731 = fsub float %730, %90
  %732 = fpext float %731 to double
  %733 = fmul double %732, 4.000000e+00
  %734 = fpext float %728 to double
  %735 = call double @llvm.fmuladd.f64(double %733, double %732, double %734)
  %736 = fptrunc double %735 to float
  %737 = extractelement <4 x i16> %716, i64 0
  %738 = uitofp i16 %737 to float
  %739 = fadd float %100, %738
  %740 = fmul float %739, 5.000000e-01
  %741 = fsub float %738, %100
  %742 = fpext float %740 to double
  %743 = fsub double 1.966070e+05, %742
  %744 = fmul double %743, 0x3EF0001000100010
  %745 = fpext float %741 to double
  %746 = fmul double %744, %745
  %747 = fpext float %736 to double
  %748 = call double @llvm.fmuladd.f64(double %746, double %745, double %747)
  %749 = fptrunc double %748 to float
  %750 = extractelement <4 x i16> %716, i64 3
  %751 = uitofp i16 %750 to float
  %752 = fadd float %115, %751
  %753 = fmul float %752, 5.000000e-01
  %754 = fsub float %751, %115
  %755 = fpext float %753 to double
  %756 = fsub double 1.966070e+05, %755
  %757 = fmul double %756, 0x3EF0001000100010
  %758 = fpext float %754 to double
  %759 = fmul double %757, %758
  %760 = fpext float %749 to double
  %761 = call double @llvm.fmuladd.f64(double %759, double %758, double %760)
  %762 = fptrunc double %761 to float
  %763 = fcmp olt float %762, 0x41A47AB860000000
  br i1 %763, label %764, label %770

764:                                              ; preds = %712
  %765 = uitofp <4 x i16> %716 to <4 x double>
  %766 = fpext <4 x float> %714 to <4 x double>
  %767 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %765, <4 x double> <double 4.000000e+01, double 4.000000e+01, double 4.000000e+01, double 4.000000e+01>, <4 x double> %766)
  %768 = fptrunc <4 x double> %767 to <4 x float>
  %769 = fadd float %713, 4.000000e+01
  br label %770

770:                                              ; preds = %764, %712
  %771 = phi float [ %769, %764 ], [ %713, %712 ]
  %772 = phi <4 x float> [ %768, %764 ], [ %714, %712 ]
  %773 = fadd float %71, %71
  %774 = fmul float %773, 5.000000e-01
  %775 = fsub float %71, %71
  %776 = fpext float %774 to double
  %777 = fadd double %776, 1.310720e+05
  %778 = fmul double %777, 0x3EF0001000100010
  %779 = fpext float %775 to double
  %780 = fmul double %778, %779
  %781 = fmul double %780, %779
  %782 = fptrunc double %781 to float
  %783 = fsub float %90, %90
  %784 = fpext float %783 to double
  %785 = fmul double %784, 4.000000e+00
  %786 = fpext float %782 to double
  %787 = call double @llvm.fmuladd.f64(double %785, double %784, double %786)
  %788 = fptrunc double %787 to float
  %789 = fadd float %100, %100
  %790 = fmul float %789, 5.000000e-01
  %791 = fsub float %100, %100
  %792 = fpext float %790 to double
  %793 = fsub double 1.966070e+05, %792
  %794 = fmul double %793, 0x3EF0001000100010
  %795 = fpext float %791 to double
  %796 = fmul double %794, %795
  %797 = fpext float %788 to double
  %798 = call double @llvm.fmuladd.f64(double %796, double %795, double %797)
  %799 = fptrunc double %798 to float
  %800 = fadd float %115, %115
  %801 = fmul float %800, 5.000000e-01
  %802 = fsub float %115, %115
  %803 = fpext float %801 to double
  %804 = fsub double 1.966070e+05, %803
  %805 = fmul double %804, 0x3EF0001000100010
  %806 = fpext float %802 to double
  %807 = fmul double %805, %806
  %808 = fpext float %799 to double
  %809 = call double @llvm.fmuladd.f64(double %807, double %806, double %808)
  %810 = fptrunc double %809 to float
  %811 = fcmp olt float %810, 0x41A47AB860000000
  br i1 %811, label %812, label %818

812:                                              ; preds = %770
  %813 = uitofp <4 x i16> %69 to <4 x double>
  %814 = fpext <4 x float> %772 to <4 x double>
  %815 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %813, <4 x double> <double 8.000000e+01, double 8.000000e+01, double 8.000000e+01, double 8.000000e+01>, <4 x double> %814)
  %816 = fptrunc <4 x double> %815 to <4 x float>
  %817 = fadd float %771, 8.000000e+01
  br label %818

818:                                              ; preds = %812, %770
  %819 = phi float [ %817, %812 ], [ %771, %770 ]
  %820 = phi <4 x float> [ %816, %812 ], [ %772, %770 ]
  %821 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 3
  %822 = load <4 x i16>, ptr %821, align 2, !tbaa !39
  %823 = extractelement <4 x i16> %822, i64 2
  %824 = uitofp i16 %823 to float
  %825 = fadd float %71, %824
  %826 = fmul float %825, 5.000000e-01
  %827 = fsub float %824, %71
  %828 = fpext float %826 to double
  %829 = fadd double %828, 1.310720e+05
  %830 = fmul double %829, 0x3EF0001000100010
  %831 = fpext float %827 to double
  %832 = fmul double %830, %831
  %833 = fmul double %832, %831
  %834 = fptrunc double %833 to float
  %835 = extractelement <4 x i16> %822, i64 1
  %836 = uitofp i16 %835 to float
  %837 = fsub float %836, %90
  %838 = fpext float %837 to double
  %839 = fmul double %838, 4.000000e+00
  %840 = fpext float %834 to double
  %841 = call double @llvm.fmuladd.f64(double %839, double %838, double %840)
  %842 = fptrunc double %841 to float
  %843 = extractelement <4 x i16> %822, i64 0
  %844 = uitofp i16 %843 to float
  %845 = fadd float %100, %844
  %846 = fmul float %845, 5.000000e-01
  %847 = fsub float %844, %100
  %848 = fpext float %846 to double
  %849 = fsub double 1.966070e+05, %848
  %850 = fmul double %849, 0x3EF0001000100010
  %851 = fpext float %847 to double
  %852 = fmul double %850, %851
  %853 = fpext float %842 to double
  %854 = call double @llvm.fmuladd.f64(double %852, double %851, double %853)
  %855 = fptrunc double %854 to float
  %856 = extractelement <4 x i16> %822, i64 3
  %857 = uitofp i16 %856 to float
  %858 = fadd float %115, %857
  %859 = fmul float %858, 5.000000e-01
  %860 = fsub float %857, %115
  %861 = fpext float %859 to double
  %862 = fsub double 1.966070e+05, %861
  %863 = fmul double %862, 0x3EF0001000100010
  %864 = fpext float %860 to double
  %865 = fmul double %863, %864
  %866 = fpext float %855 to double
  %867 = call double @llvm.fmuladd.f64(double %865, double %864, double %866)
  %868 = fptrunc double %867 to float
  %869 = fcmp olt float %868, 0x41A47AB860000000
  br i1 %869, label %870, label %876

870:                                              ; preds = %818
  %871 = uitofp <4 x i16> %822 to <4 x double>
  %872 = fpext <4 x float> %820 to <4 x double>
  %873 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %871, <4 x double> <double 4.000000e+01, double 4.000000e+01, double 4.000000e+01, double 4.000000e+01>, <4 x double> %872)
  %874 = fptrunc <4 x double> %873 to <4 x float>
  %875 = fadd float %819, 4.000000e+01
  br label %876

876:                                              ; preds = %870, %818
  %877 = phi float [ %875, %870 ], [ %819, %818 ]
  %878 = phi <4 x float> [ %874, %870 ], [ %820, %818 ]
  %879 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 4
  %880 = load <4 x i16>, ptr %879, align 2, !tbaa !39
  %881 = extractelement <4 x i16> %880, i64 2
  %882 = uitofp i16 %881 to float
  %883 = fadd float %71, %882
  %884 = fmul float %883, 5.000000e-01
  %885 = fsub float %882, %71
  %886 = fpext float %884 to double
  %887 = fadd double %886, 1.310720e+05
  %888 = fmul double %887, 0x3EF0001000100010
  %889 = fpext float %885 to double
  %890 = fmul double %888, %889
  %891 = fmul double %890, %889
  %892 = fptrunc double %891 to float
  %893 = extractelement <4 x i16> %880, i64 1
  %894 = uitofp i16 %893 to float
  %895 = fsub float %894, %90
  %896 = fpext float %895 to double
  %897 = fmul double %896, 4.000000e+00
  %898 = fpext float %892 to double
  %899 = call double @llvm.fmuladd.f64(double %897, double %896, double %898)
  %900 = fptrunc double %899 to float
  %901 = extractelement <4 x i16> %880, i64 0
  %902 = uitofp i16 %901 to float
  %903 = fadd float %100, %902
  %904 = fmul float %903, 5.000000e-01
  %905 = fsub float %902, %100
  %906 = fpext float %904 to double
  %907 = fsub double 1.966070e+05, %906
  %908 = fmul double %907, 0x3EF0001000100010
  %909 = fpext float %905 to double
  %910 = fmul double %908, %909
  %911 = fpext float %900 to double
  %912 = call double @llvm.fmuladd.f64(double %910, double %909, double %911)
  %913 = fptrunc double %912 to float
  %914 = extractelement <4 x i16> %880, i64 3
  %915 = uitofp i16 %914 to float
  %916 = fadd float %115, %915
  %917 = fmul float %916, 5.000000e-01
  %918 = fsub float %915, %115
  %919 = fpext float %917 to double
  %920 = fsub double 1.966070e+05, %919
  %921 = fmul double %920, 0x3EF0001000100010
  %922 = fpext float %918 to double
  %923 = fmul double %921, %922
  %924 = fpext float %913 to double
  %925 = call double @llvm.fmuladd.f64(double %923, double %922, double %924)
  %926 = fptrunc double %925 to float
  %927 = fcmp olt float %926, 0x41A47AB860000000
  br i1 %927, label %928, label %934

928:                                              ; preds = %876
  %929 = uitofp <4 x i16> %880 to <4 x double>
  %930 = fpext <4 x float> %878 to <4 x double>
  %931 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %929, <4 x double> <double 1.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01>, <4 x double> %930)
  %932 = fptrunc <4 x double> %931 to <4 x float>
  %933 = fadd float %877, 1.000000e+01
  br label %934

934:                                              ; preds = %928, %876
  %935 = phi float [ %933, %928 ], [ %877, %876 ]
  %936 = phi <4 x float> [ %932, %928 ], [ %878, %876 ]
  %937 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 %60
  %938 = load <4 x i16>, ptr %937, align 2, !tbaa !39
  %939 = extractelement <4 x i16> %938, i64 2
  %940 = uitofp i16 %939 to float
  %941 = fadd float %71, %940
  %942 = fmul float %941, 5.000000e-01
  %943 = fsub float %940, %71
  %944 = fpext float %942 to double
  %945 = fadd double %944, 1.310720e+05
  %946 = fmul double %945, 0x3EF0001000100010
  %947 = fpext float %943 to double
  %948 = fmul double %946, %947
  %949 = fmul double %948, %947
  %950 = fptrunc double %949 to float
  %951 = extractelement <4 x i16> %938, i64 1
  %952 = uitofp i16 %951 to float
  %953 = fsub float %952, %90
  %954 = fpext float %953 to double
  %955 = fmul double %954, 4.000000e+00
  %956 = fpext float %950 to double
  %957 = call double @llvm.fmuladd.f64(double %955, double %954, double %956)
  %958 = fptrunc double %957 to float
  %959 = extractelement <4 x i16> %938, i64 0
  %960 = uitofp i16 %959 to float
  %961 = fadd float %100, %960
  %962 = fmul float %961, 5.000000e-01
  %963 = fsub float %960, %100
  %964 = fpext float %962 to double
  %965 = fsub double 1.966070e+05, %964
  %966 = fmul double %965, 0x3EF0001000100010
  %967 = fpext float %963 to double
  %968 = fmul double %966, %967
  %969 = fpext float %958 to double
  %970 = call double @llvm.fmuladd.f64(double %968, double %967, double %969)
  %971 = fptrunc double %970 to float
  %972 = extractelement <4 x i16> %938, i64 3
  %973 = uitofp i16 %972 to float
  %974 = fadd float %115, %973
  %975 = fmul float %974, 5.000000e-01
  %976 = fsub float %973, %115
  %977 = fpext float %975 to double
  %978 = fsub double 1.966070e+05, %977
  %979 = fmul double %978, 0x3EF0001000100010
  %980 = fpext float %976 to double
  %981 = fmul double %979, %980
  %982 = fpext float %971 to double
  %983 = call double @llvm.fmuladd.f64(double %981, double %980, double %982)
  %984 = fptrunc double %983 to float
  %985 = fcmp olt float %984, 0x41A47AB860000000
  br i1 %985, label %986, label %992

986:                                              ; preds = %934
  %987 = uitofp <4 x i16> %938 to <4 x double>
  %988 = fpext <4 x float> %936 to <4 x double>
  %989 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %987, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %988)
  %990 = fptrunc <4 x double> %989 to <4 x float>
  %991 = fadd float %935, 8.000000e+00
  br label %992

992:                                              ; preds = %986, %934
  %993 = phi float [ %991, %986 ], [ %935, %934 ]
  %994 = phi <4 x float> [ %990, %986 ], [ %936, %934 ]
  %995 = getelementptr inbounds %struct._PixelPacket, ptr %937, i64 1
  %996 = load <4 x i16>, ptr %995, align 2, !tbaa !39
  %997 = extractelement <4 x i16> %996, i64 2
  %998 = uitofp i16 %997 to float
  %999 = fadd float %71, %998
  %1000 = fmul float %999, 5.000000e-01
  %1001 = fsub float %998, %71
  %1002 = fpext float %1000 to double
  %1003 = fadd double %1002, 1.310720e+05
  %1004 = fmul double %1003, 0x3EF0001000100010
  %1005 = fpext float %1001 to double
  %1006 = fmul double %1004, %1005
  %1007 = fmul double %1006, %1005
  %1008 = fptrunc double %1007 to float
  %1009 = extractelement <4 x i16> %996, i64 1
  %1010 = uitofp i16 %1009 to float
  %1011 = fsub float %1010, %90
  %1012 = fpext float %1011 to double
  %1013 = fmul double %1012, 4.000000e+00
  %1014 = fpext float %1008 to double
  %1015 = call double @llvm.fmuladd.f64(double %1013, double %1012, double %1014)
  %1016 = fptrunc double %1015 to float
  %1017 = extractelement <4 x i16> %996, i64 0
  %1018 = uitofp i16 %1017 to float
  %1019 = fadd float %100, %1018
  %1020 = fmul float %1019, 5.000000e-01
  %1021 = fsub float %1018, %100
  %1022 = fpext float %1020 to double
  %1023 = fsub double 1.966070e+05, %1022
  %1024 = fmul double %1023, 0x3EF0001000100010
  %1025 = fpext float %1021 to double
  %1026 = fmul double %1024, %1025
  %1027 = fpext float %1016 to double
  %1028 = call double @llvm.fmuladd.f64(double %1026, double %1025, double %1027)
  %1029 = fptrunc double %1028 to float
  %1030 = extractelement <4 x i16> %996, i64 3
  %1031 = uitofp i16 %1030 to float
  %1032 = fadd float %115, %1031
  %1033 = fmul float %1032, 5.000000e-01
  %1034 = fsub float %1031, %115
  %1035 = fpext float %1033 to double
  %1036 = fsub double 1.966070e+05, %1035
  %1037 = fmul double %1036, 0x3EF0001000100010
  %1038 = fpext float %1034 to double
  %1039 = fmul double %1037, %1038
  %1040 = fpext float %1029 to double
  %1041 = call double @llvm.fmuladd.f64(double %1039, double %1038, double %1040)
  %1042 = fptrunc double %1041 to float
  %1043 = fcmp olt float %1042, 0x41A47AB860000000
  br i1 %1043, label %1044, label %1050

1044:                                             ; preds = %992
  %1045 = uitofp <4 x i16> %996 to <4 x double>
  %1046 = fpext <4 x float> %994 to <4 x double>
  %1047 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1045, <4 x double> <double 2.000000e+01, double 2.000000e+01, double 2.000000e+01, double 2.000000e+01>, <4 x double> %1046)
  %1048 = fptrunc <4 x double> %1047 to <4 x float>
  %1049 = fadd float %993, 2.000000e+01
  br label %1050

1050:                                             ; preds = %1044, %992
  %1051 = phi float [ %1049, %1044 ], [ %993, %992 ]
  %1052 = phi <4 x float> [ %1048, %1044 ], [ %994, %992 ]
  %1053 = getelementptr inbounds %struct._PixelPacket, ptr %937, i64 2
  %1054 = load <4 x i16>, ptr %1053, align 2, !tbaa !39
  %1055 = extractelement <4 x i16> %1054, i64 2
  %1056 = uitofp i16 %1055 to float
  %1057 = fadd float %71, %1056
  %1058 = fmul float %1057, 5.000000e-01
  %1059 = fsub float %1056, %71
  %1060 = fpext float %1058 to double
  %1061 = fadd double %1060, 1.310720e+05
  %1062 = fmul double %1061, 0x3EF0001000100010
  %1063 = fpext float %1059 to double
  %1064 = fmul double %1062, %1063
  %1065 = fmul double %1064, %1063
  %1066 = fptrunc double %1065 to float
  %1067 = extractelement <4 x i16> %1054, i64 1
  %1068 = uitofp i16 %1067 to float
  %1069 = fsub float %1068, %90
  %1070 = fpext float %1069 to double
  %1071 = fmul double %1070, 4.000000e+00
  %1072 = fpext float %1066 to double
  %1073 = call double @llvm.fmuladd.f64(double %1071, double %1070, double %1072)
  %1074 = fptrunc double %1073 to float
  %1075 = extractelement <4 x i16> %1054, i64 0
  %1076 = uitofp i16 %1075 to float
  %1077 = fadd float %100, %1076
  %1078 = fmul float %1077, 5.000000e-01
  %1079 = fsub float %1076, %100
  %1080 = fpext float %1078 to double
  %1081 = fsub double 1.966070e+05, %1080
  %1082 = fmul double %1081, 0x3EF0001000100010
  %1083 = fpext float %1079 to double
  %1084 = fmul double %1082, %1083
  %1085 = fpext float %1074 to double
  %1086 = call double @llvm.fmuladd.f64(double %1084, double %1083, double %1085)
  %1087 = fptrunc double %1086 to float
  %1088 = extractelement <4 x i16> %1054, i64 3
  %1089 = uitofp i16 %1088 to float
  %1090 = fadd float %115, %1089
  %1091 = fmul float %1090, 5.000000e-01
  %1092 = fsub float %1089, %115
  %1093 = fpext float %1091 to double
  %1094 = fsub double 1.966070e+05, %1093
  %1095 = fmul double %1094, 0x3EF0001000100010
  %1096 = fpext float %1092 to double
  %1097 = fmul double %1095, %1096
  %1098 = fpext float %1087 to double
  %1099 = call double @llvm.fmuladd.f64(double %1097, double %1096, double %1098)
  %1100 = fptrunc double %1099 to float
  %1101 = fcmp olt float %1100, 0x41A47AB860000000
  br i1 %1101, label %1102, label %1108

1102:                                             ; preds = %1050
  %1103 = uitofp <4 x i16> %1054 to <4 x double>
  %1104 = fpext <4 x float> %1052 to <4 x double>
  %1105 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1103, <4 x double> <double 4.000000e+01, double 4.000000e+01, double 4.000000e+01, double 4.000000e+01>, <4 x double> %1104)
  %1106 = fptrunc <4 x double> %1105 to <4 x float>
  %1107 = fadd float %1051, 4.000000e+01
  br label %1108

1108:                                             ; preds = %1102, %1050
  %1109 = phi float [ %1107, %1102 ], [ %1051, %1050 ]
  %1110 = phi <4 x float> [ %1106, %1102 ], [ %1052, %1050 ]
  %1111 = getelementptr inbounds %struct._PixelPacket, ptr %937, i64 3
  %1112 = load <4 x i16>, ptr %1111, align 2, !tbaa !39
  %1113 = extractelement <4 x i16> %1112, i64 2
  %1114 = uitofp i16 %1113 to float
  %1115 = fadd float %71, %1114
  %1116 = fmul float %1115, 5.000000e-01
  %1117 = fsub float %1114, %71
  %1118 = fpext float %1116 to double
  %1119 = fadd double %1118, 1.310720e+05
  %1120 = fmul double %1119, 0x3EF0001000100010
  %1121 = fpext float %1117 to double
  %1122 = fmul double %1120, %1121
  %1123 = fmul double %1122, %1121
  %1124 = fptrunc double %1123 to float
  %1125 = extractelement <4 x i16> %1112, i64 1
  %1126 = uitofp i16 %1125 to float
  %1127 = fsub float %1126, %90
  %1128 = fpext float %1127 to double
  %1129 = fmul double %1128, 4.000000e+00
  %1130 = fpext float %1124 to double
  %1131 = call double @llvm.fmuladd.f64(double %1129, double %1128, double %1130)
  %1132 = fptrunc double %1131 to float
  %1133 = extractelement <4 x i16> %1112, i64 0
  %1134 = uitofp i16 %1133 to float
  %1135 = fadd float %100, %1134
  %1136 = fmul float %1135, 5.000000e-01
  %1137 = fsub float %1134, %100
  %1138 = fpext float %1136 to double
  %1139 = fsub double 1.966070e+05, %1138
  %1140 = fmul double %1139, 0x3EF0001000100010
  %1141 = fpext float %1137 to double
  %1142 = fmul double %1140, %1141
  %1143 = fpext float %1132 to double
  %1144 = call double @llvm.fmuladd.f64(double %1142, double %1141, double %1143)
  %1145 = fptrunc double %1144 to float
  %1146 = extractelement <4 x i16> %1112, i64 3
  %1147 = uitofp i16 %1146 to float
  %1148 = fadd float %115, %1147
  %1149 = fmul float %1148, 5.000000e-01
  %1150 = fsub float %1147, %115
  %1151 = fpext float %1149 to double
  %1152 = fsub double 1.966070e+05, %1151
  %1153 = fmul double %1152, 0x3EF0001000100010
  %1154 = fpext float %1150 to double
  %1155 = fmul double %1153, %1154
  %1156 = fpext float %1145 to double
  %1157 = call double @llvm.fmuladd.f64(double %1155, double %1154, double %1156)
  %1158 = fptrunc double %1157 to float
  %1159 = fcmp olt float %1158, 0x41A47AB860000000
  br i1 %1159, label %1160, label %1166

1160:                                             ; preds = %1108
  %1161 = uitofp <4 x i16> %1112 to <4 x double>
  %1162 = fpext <4 x float> %1110 to <4 x double>
  %1163 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1161, <4 x double> <double 2.000000e+01, double 2.000000e+01, double 2.000000e+01, double 2.000000e+01>, <4 x double> %1162)
  %1164 = fptrunc <4 x double> %1163 to <4 x float>
  %1165 = fadd float %1109, 2.000000e+01
  br label %1166

1166:                                             ; preds = %1160, %1108
  %1167 = phi float [ %1165, %1160 ], [ %1109, %1108 ]
  %1168 = phi <4 x float> [ %1164, %1160 ], [ %1110, %1108 ]
  %1169 = getelementptr inbounds %struct._PixelPacket, ptr %937, i64 4
  %1170 = load <4 x i16>, ptr %1169, align 2, !tbaa !39
  %1171 = extractelement <4 x i16> %1170, i64 2
  %1172 = uitofp i16 %1171 to float
  %1173 = fadd float %71, %1172
  %1174 = fmul float %1173, 5.000000e-01
  %1175 = fsub float %1172, %71
  %1176 = fpext float %1174 to double
  %1177 = fadd double %1176, 1.310720e+05
  %1178 = fmul double %1177, 0x3EF0001000100010
  %1179 = fpext float %1175 to double
  %1180 = fmul double %1178, %1179
  %1181 = fmul double %1180, %1179
  %1182 = fptrunc double %1181 to float
  %1183 = extractelement <4 x i16> %1170, i64 1
  %1184 = uitofp i16 %1183 to float
  %1185 = fsub float %1184, %90
  %1186 = fpext float %1185 to double
  %1187 = fmul double %1186, 4.000000e+00
  %1188 = fpext float %1182 to double
  %1189 = call double @llvm.fmuladd.f64(double %1187, double %1186, double %1188)
  %1190 = fptrunc double %1189 to float
  %1191 = extractelement <4 x i16> %1170, i64 0
  %1192 = uitofp i16 %1191 to float
  %1193 = fadd float %100, %1192
  %1194 = fmul float %1193, 5.000000e-01
  %1195 = fsub float %1192, %100
  %1196 = fpext float %1194 to double
  %1197 = fsub double 1.966070e+05, %1196
  %1198 = fmul double %1197, 0x3EF0001000100010
  %1199 = fpext float %1195 to double
  %1200 = fmul double %1198, %1199
  %1201 = fpext float %1190 to double
  %1202 = call double @llvm.fmuladd.f64(double %1200, double %1199, double %1201)
  %1203 = fptrunc double %1202 to float
  %1204 = extractelement <4 x i16> %1170, i64 3
  %1205 = uitofp i16 %1204 to float
  %1206 = fadd float %115, %1205
  %1207 = fmul float %1206, 5.000000e-01
  %1208 = fsub float %1205, %115
  %1209 = fpext float %1207 to double
  %1210 = fsub double 1.966070e+05, %1209
  %1211 = fmul double %1210, 0x3EF0001000100010
  %1212 = fpext float %1208 to double
  %1213 = fmul double %1211, %1212
  %1214 = fpext float %1203 to double
  %1215 = call double @llvm.fmuladd.f64(double %1213, double %1212, double %1214)
  %1216 = fptrunc double %1215 to float
  %1217 = fcmp olt float %1216, 0x41A47AB860000000
  br i1 %1217, label %1218, label %1224

1218:                                             ; preds = %1166
  %1219 = uitofp <4 x i16> %1170 to <4 x double>
  %1220 = fpext <4 x float> %1168 to <4 x double>
  %1221 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1219, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %1220)
  %1222 = fptrunc <4 x double> %1221 to <4 x float>
  %1223 = fadd float %1167, 8.000000e+00
  br label %1224

1224:                                             ; preds = %1218, %1166
  %1225 = phi float [ %1223, %1218 ], [ %1167, %1166 ]
  %1226 = phi <4 x float> [ %1222, %1218 ], [ %1168, %1166 ]
  %1227 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 %62
  %1228 = load <4 x i16>, ptr %1227, align 2, !tbaa !39
  %1229 = extractelement <4 x i16> %1228, i64 2
  %1230 = uitofp i16 %1229 to float
  %1231 = fadd float %71, %1230
  %1232 = fmul float %1231, 5.000000e-01
  %1233 = fsub float %1230, %71
  %1234 = fpext float %1232 to double
  %1235 = fadd double %1234, 1.310720e+05
  %1236 = fmul double %1235, 0x3EF0001000100010
  %1237 = fpext float %1233 to double
  %1238 = fmul double %1236, %1237
  %1239 = fmul double %1238, %1237
  %1240 = fptrunc double %1239 to float
  %1241 = extractelement <4 x i16> %1228, i64 1
  %1242 = uitofp i16 %1241 to float
  %1243 = fsub float %1242, %90
  %1244 = fpext float %1243 to double
  %1245 = fmul double %1244, 4.000000e+00
  %1246 = fpext float %1240 to double
  %1247 = call double @llvm.fmuladd.f64(double %1245, double %1244, double %1246)
  %1248 = fptrunc double %1247 to float
  %1249 = extractelement <4 x i16> %1228, i64 0
  %1250 = uitofp i16 %1249 to float
  %1251 = fadd float %100, %1250
  %1252 = fmul float %1251, 5.000000e-01
  %1253 = fsub float %1250, %100
  %1254 = fpext float %1252 to double
  %1255 = fsub double 1.966070e+05, %1254
  %1256 = fmul double %1255, 0x3EF0001000100010
  %1257 = fpext float %1253 to double
  %1258 = fmul double %1256, %1257
  %1259 = fpext float %1248 to double
  %1260 = call double @llvm.fmuladd.f64(double %1258, double %1257, double %1259)
  %1261 = fptrunc double %1260 to float
  %1262 = extractelement <4 x i16> %1228, i64 3
  %1263 = uitofp i16 %1262 to float
  %1264 = fadd float %115, %1263
  %1265 = fmul float %1264, 5.000000e-01
  %1266 = fsub float %1263, %115
  %1267 = fpext float %1265 to double
  %1268 = fsub double 1.966070e+05, %1267
  %1269 = fmul double %1268, 0x3EF0001000100010
  %1270 = fpext float %1266 to double
  %1271 = fmul double %1269, %1270
  %1272 = fpext float %1261 to double
  %1273 = call double @llvm.fmuladd.f64(double %1271, double %1270, double %1272)
  %1274 = fptrunc double %1273 to float
  %1275 = fcmp olt float %1274, 0x41A47AB860000000
  br i1 %1275, label %1276, label %1282

1276:                                             ; preds = %1224
  %1277 = uitofp <4 x i16> %1228 to <4 x double>
  %1278 = fpext <4 x float> %1226 to <4 x double>
  %1279 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1277, <4 x double> <double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00>, <4 x double> %1278)
  %1280 = fptrunc <4 x double> %1279 to <4 x float>
  %1281 = fadd float %1225, 5.000000e+00
  br label %1282

1282:                                             ; preds = %1276, %1224
  %1283 = phi float [ %1281, %1276 ], [ %1225, %1224 ]
  %1284 = phi <4 x float> [ %1280, %1276 ], [ %1226, %1224 ]
  %1285 = getelementptr inbounds %struct._PixelPacket, ptr %1227, i64 1
  %1286 = load <4 x i16>, ptr %1285, align 2, !tbaa !39
  %1287 = extractelement <4 x i16> %1286, i64 2
  %1288 = uitofp i16 %1287 to float
  %1289 = fadd float %71, %1288
  %1290 = fmul float %1289, 5.000000e-01
  %1291 = fsub float %1288, %71
  %1292 = fpext float %1290 to double
  %1293 = fadd double %1292, 1.310720e+05
  %1294 = fmul double %1293, 0x3EF0001000100010
  %1295 = fpext float %1291 to double
  %1296 = fmul double %1294, %1295
  %1297 = fmul double %1296, %1295
  %1298 = fptrunc double %1297 to float
  %1299 = extractelement <4 x i16> %1286, i64 1
  %1300 = uitofp i16 %1299 to float
  %1301 = fsub float %1300, %90
  %1302 = fpext float %1301 to double
  %1303 = fmul double %1302, 4.000000e+00
  %1304 = fpext float %1298 to double
  %1305 = call double @llvm.fmuladd.f64(double %1303, double %1302, double %1304)
  %1306 = fptrunc double %1305 to float
  %1307 = extractelement <4 x i16> %1286, i64 0
  %1308 = uitofp i16 %1307 to float
  %1309 = fadd float %100, %1308
  %1310 = fmul float %1309, 5.000000e-01
  %1311 = fsub float %1308, %100
  %1312 = fpext float %1310 to double
  %1313 = fsub double 1.966070e+05, %1312
  %1314 = fmul double %1313, 0x3EF0001000100010
  %1315 = fpext float %1311 to double
  %1316 = fmul double %1314, %1315
  %1317 = fpext float %1306 to double
  %1318 = call double @llvm.fmuladd.f64(double %1316, double %1315, double %1317)
  %1319 = fptrunc double %1318 to float
  %1320 = extractelement <4 x i16> %1286, i64 3
  %1321 = uitofp i16 %1320 to float
  %1322 = fadd float %115, %1321
  %1323 = fmul float %1322, 5.000000e-01
  %1324 = fsub float %1321, %115
  %1325 = fpext float %1323 to double
  %1326 = fsub double 1.966070e+05, %1325
  %1327 = fmul double %1326, 0x3EF0001000100010
  %1328 = fpext float %1324 to double
  %1329 = fmul double %1327, %1328
  %1330 = fpext float %1319 to double
  %1331 = call double @llvm.fmuladd.f64(double %1329, double %1328, double %1330)
  %1332 = fptrunc double %1331 to float
  %1333 = fcmp olt float %1332, 0x41A47AB860000000
  br i1 %1333, label %1334, label %1340

1334:                                             ; preds = %1282
  %1335 = uitofp <4 x i16> %1286 to <4 x double>
  %1336 = fpext <4 x float> %1284 to <4 x double>
  %1337 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1335, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %1336)
  %1338 = fptrunc <4 x double> %1337 to <4 x float>
  %1339 = fadd float %1283, 8.000000e+00
  br label %1340

1340:                                             ; preds = %1334, %1282
  %1341 = phi float [ %1339, %1334 ], [ %1283, %1282 ]
  %1342 = phi <4 x float> [ %1338, %1334 ], [ %1284, %1282 ]
  %1343 = getelementptr inbounds %struct._PixelPacket, ptr %1227, i64 2
  %1344 = load <4 x i16>, ptr %1343, align 2, !tbaa !39
  %1345 = extractelement <4 x i16> %1344, i64 2
  %1346 = uitofp i16 %1345 to float
  %1347 = fadd float %71, %1346
  %1348 = fmul float %1347, 5.000000e-01
  %1349 = fsub float %1346, %71
  %1350 = fpext float %1348 to double
  %1351 = fadd double %1350, 1.310720e+05
  %1352 = fmul double %1351, 0x3EF0001000100010
  %1353 = fpext float %1349 to double
  %1354 = fmul double %1352, %1353
  %1355 = fmul double %1354, %1353
  %1356 = fptrunc double %1355 to float
  %1357 = extractelement <4 x i16> %1344, i64 1
  %1358 = uitofp i16 %1357 to float
  %1359 = fsub float %1358, %90
  %1360 = fpext float %1359 to double
  %1361 = fmul double %1360, 4.000000e+00
  %1362 = fpext float %1356 to double
  %1363 = call double @llvm.fmuladd.f64(double %1361, double %1360, double %1362)
  %1364 = fptrunc double %1363 to float
  %1365 = extractelement <4 x i16> %1344, i64 0
  %1366 = uitofp i16 %1365 to float
  %1367 = fadd float %100, %1366
  %1368 = fmul float %1367, 5.000000e-01
  %1369 = fsub float %1366, %100
  %1370 = fpext float %1368 to double
  %1371 = fsub double 1.966070e+05, %1370
  %1372 = fmul double %1371, 0x3EF0001000100010
  %1373 = fpext float %1369 to double
  %1374 = fmul double %1372, %1373
  %1375 = fpext float %1364 to double
  %1376 = call double @llvm.fmuladd.f64(double %1374, double %1373, double %1375)
  %1377 = fptrunc double %1376 to float
  %1378 = extractelement <4 x i16> %1344, i64 3
  %1379 = uitofp i16 %1378 to float
  %1380 = fadd float %115, %1379
  %1381 = fmul float %1380, 5.000000e-01
  %1382 = fsub float %1379, %115
  %1383 = fpext float %1381 to double
  %1384 = fsub double 1.966070e+05, %1383
  %1385 = fmul double %1384, 0x3EF0001000100010
  %1386 = fpext float %1382 to double
  %1387 = fmul double %1385, %1386
  %1388 = fpext float %1377 to double
  %1389 = call double @llvm.fmuladd.f64(double %1387, double %1386, double %1388)
  %1390 = fptrunc double %1389 to float
  %1391 = fcmp olt float %1390, 0x41A47AB860000000
  br i1 %1391, label %1392, label %1398

1392:                                             ; preds = %1340
  %1393 = uitofp <4 x i16> %1344 to <4 x double>
  %1394 = fpext <4 x float> %1342 to <4 x double>
  %1395 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1393, <4 x double> <double 1.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01>, <4 x double> %1394)
  %1396 = fptrunc <4 x double> %1395 to <4 x float>
  %1397 = fadd float %1341, 1.000000e+01
  br label %1398

1398:                                             ; preds = %1392, %1340
  %1399 = phi float [ %1397, %1392 ], [ %1341, %1340 ]
  %1400 = phi <4 x float> [ %1396, %1392 ], [ %1342, %1340 ]
  %1401 = getelementptr inbounds %struct._PixelPacket, ptr %1227, i64 3
  %1402 = load <4 x i16>, ptr %1401, align 2, !tbaa !39
  %1403 = extractelement <4 x i16> %1402, i64 2
  %1404 = uitofp i16 %1403 to float
  %1405 = fadd float %71, %1404
  %1406 = fmul float %1405, 5.000000e-01
  %1407 = fsub float %1404, %71
  %1408 = fpext float %1406 to double
  %1409 = fadd double %1408, 1.310720e+05
  %1410 = fmul double %1409, 0x3EF0001000100010
  %1411 = fpext float %1407 to double
  %1412 = fmul double %1410, %1411
  %1413 = fmul double %1412, %1411
  %1414 = fptrunc double %1413 to float
  %1415 = extractelement <4 x i16> %1402, i64 1
  %1416 = uitofp i16 %1415 to float
  %1417 = fsub float %1416, %90
  %1418 = fpext float %1417 to double
  %1419 = fmul double %1418, 4.000000e+00
  %1420 = fpext float %1414 to double
  %1421 = call double @llvm.fmuladd.f64(double %1419, double %1418, double %1420)
  %1422 = fptrunc double %1421 to float
  %1423 = extractelement <4 x i16> %1402, i64 0
  %1424 = uitofp i16 %1423 to float
  %1425 = fadd float %100, %1424
  %1426 = fmul float %1425, 5.000000e-01
  %1427 = fsub float %1424, %100
  %1428 = fpext float %1426 to double
  %1429 = fsub double 1.966070e+05, %1428
  %1430 = fmul double %1429, 0x3EF0001000100010
  %1431 = fpext float %1427 to double
  %1432 = fmul double %1430, %1431
  %1433 = fpext float %1422 to double
  %1434 = call double @llvm.fmuladd.f64(double %1432, double %1431, double %1433)
  %1435 = fptrunc double %1434 to float
  %1436 = extractelement <4 x i16> %1402, i64 3
  %1437 = uitofp i16 %1436 to float
  %1438 = fadd float %115, %1437
  %1439 = fmul float %1438, 5.000000e-01
  %1440 = fsub float %1437, %115
  %1441 = fpext float %1439 to double
  %1442 = fsub double 1.966070e+05, %1441
  %1443 = fmul double %1442, 0x3EF0001000100010
  %1444 = fpext float %1440 to double
  %1445 = fmul double %1443, %1444
  %1446 = fpext float %1435 to double
  %1447 = call double @llvm.fmuladd.f64(double %1445, double %1444, double %1446)
  %1448 = fptrunc double %1447 to float
  %1449 = fcmp olt float %1448, 0x41A47AB860000000
  br i1 %1449, label %1450, label %1456

1450:                                             ; preds = %1398
  %1451 = uitofp <4 x i16> %1402 to <4 x double>
  %1452 = fpext <4 x float> %1400 to <4 x double>
  %1453 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1451, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %1452)
  %1454 = fptrunc <4 x double> %1453 to <4 x float>
  %1455 = fadd float %1399, 8.000000e+00
  br label %1456

1456:                                             ; preds = %1450, %1398
  %1457 = phi float [ %1455, %1450 ], [ %1399, %1398 ]
  %1458 = phi <4 x float> [ %1454, %1450 ], [ %1400, %1398 ]
  %1459 = getelementptr inbounds %struct._PixelPacket, ptr %1227, i64 4
  %1460 = load <4 x i16>, ptr %1459, align 2, !tbaa !39
  %1461 = extractelement <4 x i16> %1460, i64 2
  %1462 = uitofp i16 %1461 to float
  %1463 = fadd float %71, %1462
  %1464 = fmul float %1463, 5.000000e-01
  %1465 = fsub float %1462, %71
  %1466 = fpext float %1464 to double
  %1467 = fadd double %1466, 1.310720e+05
  %1468 = fmul double %1467, 0x3EF0001000100010
  %1469 = fpext float %1465 to double
  %1470 = fmul double %1468, %1469
  %1471 = fmul double %1470, %1469
  %1472 = fptrunc double %1471 to float
  %1473 = extractelement <4 x i16> %1460, i64 1
  %1474 = uitofp i16 %1473 to float
  %1475 = fsub float %1474, %90
  %1476 = fpext float %1475 to double
  %1477 = fmul double %1476, 4.000000e+00
  %1478 = fpext float %1472 to double
  %1479 = call double @llvm.fmuladd.f64(double %1477, double %1476, double %1478)
  %1480 = fptrunc double %1479 to float
  %1481 = extractelement <4 x i16> %1460, i64 0
  %1482 = uitofp i16 %1481 to float
  %1483 = fadd float %100, %1482
  %1484 = fmul float %1483, 5.000000e-01
  %1485 = fsub float %1482, %100
  %1486 = fpext float %1484 to double
  %1487 = fsub double 1.966070e+05, %1486
  %1488 = fmul double %1487, 0x3EF0001000100010
  %1489 = fpext float %1485 to double
  %1490 = fmul double %1488, %1489
  %1491 = fpext float %1480 to double
  %1492 = call double @llvm.fmuladd.f64(double %1490, double %1489, double %1491)
  %1493 = fptrunc double %1492 to float
  %1494 = extractelement <4 x i16> %1460, i64 3
  %1495 = uitofp i16 %1494 to float
  %1496 = fadd float %115, %1495
  %1497 = fmul float %1496, 5.000000e-01
  %1498 = fsub float %1495, %115
  %1499 = fpext float %1497 to double
  %1500 = fsub double 1.966070e+05, %1499
  %1501 = fmul double %1500, 0x3EF0001000100010
  %1502 = fpext float %1498 to double
  %1503 = fmul double %1501, %1502
  %1504 = fpext float %1493 to double
  %1505 = call double @llvm.fmuladd.f64(double %1503, double %1502, double %1504)
  %1506 = fptrunc double %1505 to float
  %1507 = fcmp olt float %1506, 0x41A47AB860000000
  br i1 %1507, label %1508, label %1514

1508:                                             ; preds = %1456
  %1509 = uitofp <4 x i16> %1460 to <4 x double>
  %1510 = fpext <4 x float> %1458 to <4 x double>
  %1511 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1509, <4 x double> <double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00>, <4 x double> %1510)
  %1512 = fptrunc <4 x double> %1511 to <4 x float>
  %1513 = fadd float %1457, 5.000000e+00
  br label %1514

1514:                                             ; preds = %1508, %1456
  %1515 = phi float [ %1513, %1508 ], [ %1457, %1456 ]
  %1516 = phi <4 x float> [ %1512, %1508 ], [ %1458, %1456 ]
  %1517 = fmul float %1515, 5.000000e-01
  %1518 = insertelement <4 x float> poison, float %1517, i64 0
  %1519 = shufflevector <4 x float> %1518, <4 x float> poison, <4 x i32> zeroinitializer
  %1520 = fadd <4 x float> %1516, %1519
  %1521 = fadd <4 x float> %1520, <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>
  %1522 = insertelement <4 x float> poison, float %1515, i64 0
  %1523 = shufflevector <4 x float> %1522, <4 x float> poison, <4 x i32> zeroinitializer
  %1524 = fdiv <4 x float> %1521, %1523
  %1525 = fptoui <4 x float> %1524 to <4 x i16>
  store <4 x i16> %1525, ptr %65, align 2, !tbaa !39
  %1526 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 1
  %1527 = add nuw nsw i64 %64, 1
  %1528 = icmp eq i64 %1527, %53
  br i1 %1528, label %1529, label %63, !llvm.loop !96

1529:                                             ; preds = %1514, %52
  %1530 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %30, ptr noundef %1) #16
  %1531 = icmp ne i32 %1530, 0
  %1532 = zext i1 %1531 to i32
  %1533 = load ptr, ptr %36, align 8, !tbaa !41
  %1534 = icmp eq ptr %1533, null
  br i1 %1534, label %1541, label %1535

1535:                                             ; preds = %1529
  %1536 = add nsw i64 %39, 1
  %1537 = load i64, ptr %15, align 8, !tbaa !37
  %1538 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef %39, i64 noundef %1537) #13
  %1539 = icmp eq i32 %1538, 0
  %1540 = select i1 %1539, i32 0, i32 %1532
  br label %1541

1541:                                             ; preds = %1529, %1535, %42, %37
  %1542 = phi i64 [ %39, %37 ], [ %39, %42 ], [ %1536, %1535 ], [ %39, %1529 ]
  %1543 = phi i32 [ 0, %37 ], [ 0, %42 ], [ %1540, %1535 ], [ %1532, %1529 ]
  %1544 = add nuw nsw i64 %40, 1
  %1545 = load i64, ptr %15, align 8, !tbaa !37
  %1546 = icmp slt i64 %1544, %1545
  br i1 %1546, label %37, label %1547, !llvm.loop !97

1547:                                             ; preds = %1541
  %1548 = icmp eq i32 %1543, 0
  %1549 = call ptr @DestroyCacheView(ptr noundef %30) #15
  %1550 = call ptr @DestroyCacheView(ptr noundef %29) #15
  br i1 %1548, label %1551, label %1556

1551:                                             ; preds = %1547
  %1552 = call ptr @DestroyImage(ptr noundef nonnull %19) #15
  br label %1556

1553:                                             ; preds = %27
  %1554 = call ptr @DestroyCacheView(ptr noundef %30) #15
  %1555 = call ptr @DestroyCacheView(ptr noundef %29) #15
  br label %1556

1556:                                             ; preds = %1553, %1547, %1551, %18, %10, %14, %24
  %1557 = phi ptr [ null, %24 ], [ null, %14 ], [ null, %10 ], [ null, %18 ], [ %1552, %1551 ], [ %19, %1547 ], [ %19, %1553 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  ret ptr %1557
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EqualizeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @EqualizeImageChannel(ptr noundef %0, i32 noundef 134217719) #13
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EqualizeImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !27
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1805, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = tail call i32 @AccelerateEqualizeImage(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %544

14:                                               ; preds = %10
  %15 = tail call dereferenceable_or_null(655360) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 10) #17
  %16 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #17
  %17 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #17
  %18 = icmp eq ptr %15, null
  %19 = icmp eq ptr %16, null
  %20 = or i1 %18, %19
  %21 = icmp eq ptr %17, null
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  br i1 %21, label %26, label %24

24:                                               ; preds = %23
  %25 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #15
  br label %26

26:                                               ; preds = %24, %23
  br i1 %19, label %29, label %27

27:                                               ; preds = %26
  %28 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %16) #15
  br label %29

29:                                               ; preds = %27, %26
  br i1 %18, label %32, label %30

30:                                               ; preds = %29
  %31 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #15
  br label %32

32:                                               ; preds = %29, %30
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1832, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %33) #15
  br label %544

35:                                               ; preds = %14
  %36 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %16, i32 noundef 0, i64 noundef 3670016) #15
  %37 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %11) #15
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !37
  %41 = icmp sgt i64 %40, 0
  %42 = and i32 %1, 256
  br i1 %41, label %49, label %43

43:                                               ; preds = %35
  %44 = and i32 %1, 1
  %45 = and i32 %1, 2
  %46 = and i32 %1, 4
  %47 = and i32 %1, 8
  %48 = and i32 %1, 32
  br label %151

49:                                               ; preds = %35
  %50 = icmp eq i32 %42, 0
  %51 = and i32 %1, 1
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %1, 2
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %1, 4
  %56 = icmp eq i32 %55, 0
  %57 = and i32 %1, 8
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %1, 32
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %62 = load i64, ptr %38, align 8, !tbaa !38
  br label %63

63:                                               ; preds = %49, %146
  %64 = phi i64 [ %62, %49 ], [ %147, %146 ]
  %65 = phi i64 [ 0, %49 ], [ %148, %146 ]
  %66 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %37, i64 noundef 0, i64 noundef %65, i64 noundef %64, i64 noundef 1, ptr noundef nonnull %11) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %151, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %37) #15
  %70 = load i64, ptr %38, align 8, !tbaa !38
  %71 = icmp sgt i64 %70, 0
  br i1 %50, label %73, label %72

72:                                               ; preds = %68
  br i1 %71, label %76, label %146

73:                                               ; preds = %68
  br i1 %71, label %74, label %146

74:                                               ; preds = %73
  %75 = icmp eq ptr %69, null
  br label %90

76:                                               ; preds = %72, %76
  %77 = phi i64 [ %87, %76 ], [ 0, %72 ]
  %78 = phi ptr [ %86, %76 ], [ %66, %72 ]
  %79 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %78) #16
  %80 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %79) #13
  %81 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %80) #13, !range !49
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %82, i32 5
  %84 = load float, ptr %83, align 8, !tbaa !56
  %85 = fadd float %84, 1.000000e+00
  store float %85, ptr %83, align 8, !tbaa !56
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %87 = add nuw nsw i64 %77, 1
  %88 = load i64, ptr %38, align 8, !tbaa !38
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %76, label %146, !llvm.loop !98

90:                                               ; preds = %74, %142
  %91 = phi i64 [ 0, %74 ], [ %144, %142 ]
  %92 = phi ptr [ %66, %74 ], [ %143, %142 ]
  br i1 %52, label %101, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 2
  %95 = load i16, ptr %94, align 2, !tbaa !31
  %96 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %95) #13, !range !49
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %97, i32 5
  %99 = load float, ptr %98, align 8, !tbaa !56
  %100 = fadd float %99, 1.000000e+00
  store float %100, ptr %98, align 8, !tbaa !56
  br label %101

101:                                              ; preds = %93, %90
  br i1 %54, label %110, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 1
  %104 = load i16, ptr %103, align 2, !tbaa !32
  %105 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %104) #13, !range !49
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %106, i32 6
  %108 = load float, ptr %107, align 4, !tbaa !59
  %109 = fadd float %108, 1.000000e+00
  store float %109, ptr %107, align 4, !tbaa !59
  br label %110

110:                                              ; preds = %102, %101
  br i1 %56, label %118, label %111

111:                                              ; preds = %110
  %112 = load i16, ptr %92, align 2, !tbaa !33
  %113 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %112) #13, !range !49
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %114, i32 7
  %116 = load float, ptr %115, align 8, !tbaa !60
  %117 = fadd float %116, 1.000000e+00
  store float %117, ptr %115, align 8, !tbaa !60
  br label %118

118:                                              ; preds = %111, %110
  br i1 %58, label %127, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 3
  %121 = load i16, ptr %120, align 2, !tbaa !34
  %122 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %121) #13, !range !49
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %123, i32 8
  %125 = load float, ptr %124, align 4, !tbaa !61
  %126 = fadd float %125, 1.000000e+00
  store float %126, ptr %124, align 4, !tbaa !61
  br label %127

127:                                              ; preds = %119, %118
  br i1 %60, label %142, label %128

128:                                              ; preds = %127
  %129 = load i32, ptr %61, align 4, !tbaa !26
  %130 = icmp eq i32 %129, 12
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  br i1 %75, label %135, label %132

132:                                              ; preds = %131
  %133 = getelementptr inbounds i16, ptr %69, i64 %91
  %134 = load i16, ptr %133, align 2, !tbaa !39
  br label %135

135:                                              ; preds = %131, %132
  %136 = phi i16 [ %134, %132 ], [ 0, %131 ]
  %137 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %136) #13, !range !49
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %138, i32 9
  %140 = load float, ptr %139, align 8, !tbaa !62
  %141 = fadd float %140, 1.000000e+00
  store float %141, ptr %139, align 8, !tbaa !62
  br label %142

142:                                              ; preds = %135, %128, %127
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %144 = add nuw nsw i64 %91, 1
  %145 = icmp eq i64 %144, %70
  br i1 %145, label %146, label %90, !llvm.loop !99

146:                                              ; preds = %76, %142, %72, %73
  %147 = phi i64 [ %70, %72 ], [ %70, %73 ], [ %70, %142 ], [ %88, %76 ]
  %148 = add nuw nsw i64 %65, 1
  %149 = load i64, ptr %39, align 8, !tbaa !37
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %63, label %151, !llvm.loop !100

151:                                              ; preds = %146, %63, %43
  %152 = phi i32 [ %48, %43 ], [ %59, %63 ], [ %59, %146 ]
  %153 = phi i32 [ %47, %43 ], [ %57, %63 ], [ %57, %146 ]
  %154 = phi i32 [ %46, %43 ], [ %55, %63 ], [ %55, %146 ]
  %155 = phi i32 [ %45, %43 ], [ %53, %63 ], [ %53, %146 ]
  %156 = phi i32 [ %44, %43 ], [ %51, %63 ], [ %51, %146 ]
  %157 = tail call ptr @DestroyCacheView(ptr noundef %37) #15
  %158 = call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 56) #15
  %159 = icmp eq i32 %42, 0
  %160 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %161 = icmp eq i32 %156, 0
  %162 = icmp eq i32 %155, 0
  %163 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %164 = icmp eq i32 %154, 0
  %165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %166 = icmp eq i32 %153, 0
  %167 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %168 = icmp eq i32 %152, 0
  %169 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %171 = load float, ptr %160, align 8, !tbaa !56
  %172 = load float, ptr %163, align 4, !tbaa !59
  %173 = load float, ptr %165, align 8, !tbaa !60
  %174 = load float, ptr %167, align 4, !tbaa !61
  %175 = load float, ptr %170, align 8, !tbaa !62
  br label %176

176:                                              ; preds = %151, %219
  %177 = phi float [ %175, %151 ], [ %220, %219 ]
  %178 = phi float [ %174, %151 ], [ %221, %219 ]
  %179 = phi float [ %173, %151 ], [ %222, %219 ]
  %180 = phi float [ %172, %151 ], [ %223, %219 ]
  %181 = phi float [ %171, %151 ], [ %224, %219 ]
  %182 = phi i64 [ 0, %151 ], [ %226, %219 ]
  br i1 %159, label %187, label %183

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %182, i32 5
  %185 = load float, ptr %184, align 8, !tbaa !56
  %186 = fadd float %185, %181
  store float %186, ptr %160, align 8, !tbaa !56
  br label %219

187:                                              ; preds = %176
  br i1 %161, label %192, label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %182, i32 5
  %190 = load float, ptr %189, align 8, !tbaa !56
  %191 = fadd float %190, %181
  store float %191, ptr %160, align 8, !tbaa !56
  br label %192

192:                                              ; preds = %188, %187
  %193 = phi float [ %191, %188 ], [ %181, %187 ]
  br i1 %162, label %198, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %182, i32 6
  %196 = load float, ptr %195, align 4, !tbaa !59
  %197 = fadd float %196, %180
  store float %197, ptr %163, align 4, !tbaa !59
  br label %198

198:                                              ; preds = %194, %192
  %199 = phi float [ %197, %194 ], [ %180, %192 ]
  br i1 %164, label %204, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %182, i32 7
  %202 = load float, ptr %201, align 8, !tbaa !60
  %203 = fadd float %202, %179
  store float %203, ptr %165, align 8, !tbaa !60
  br label %204

204:                                              ; preds = %200, %198
  %205 = phi float [ %203, %200 ], [ %179, %198 ]
  br i1 %166, label %210, label %206

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %182, i32 8
  %208 = load float, ptr %207, align 4, !tbaa !61
  %209 = fadd float %208, %178
  store float %209, ptr %167, align 4, !tbaa !61
  br label %210

210:                                              ; preds = %206, %204
  %211 = phi float [ %209, %206 ], [ %178, %204 ]
  br i1 %168, label %219, label %212

212:                                              ; preds = %210
  %213 = load i32, ptr %169, align 4, !tbaa !26
  %214 = icmp eq i32 %213, 12
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 %182, i32 9
  %217 = load float, ptr %216, align 8, !tbaa !62
  %218 = fadd float %217, %177
  store float %218, ptr %170, align 8, !tbaa !62
  br label %219

219:                                              ; preds = %210, %212, %215, %183
  %220 = phi float [ %177, %183 ], [ %218, %215 ], [ %177, %212 ], [ %177, %210 ]
  %221 = phi float [ %178, %183 ], [ %211, %215 ], [ %211, %212 ], [ %211, %210 ]
  %222 = phi float [ %179, %183 ], [ %205, %215 ], [ %205, %212 ], [ %205, %210 ]
  %223 = phi float [ %180, %183 ], [ %199, %215 ], [ %199, %212 ], [ %199, %210 ]
  %224 = phi float [ %186, %183 ], [ %193, %215 ], [ %193, %212 ], [ %193, %210 ]
  %225 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %225, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %226 = add nuw nsw i64 %182, 1
  %227 = icmp eq i64 %226, 65536
  br i1 %227, label %228, label %176, !llvm.loop !101

228:                                              ; preds = %219
  %229 = getelementptr inbounds i8, ptr %17, i64 32
  %230 = load float, ptr %229, align 8, !tbaa.struct !102
  %231 = getelementptr inbounds i8, ptr %17, i64 36
  %232 = load float, ptr %231, align 4, !tbaa.struct !103
  %233 = getelementptr inbounds i8, ptr %17, i64 40
  %234 = load float, ptr %233, align 8, !tbaa.struct !104
  %235 = getelementptr inbounds i8, ptr %17, i64 44
  %236 = load float, ptr %235, align 4, !tbaa.struct !105
  %237 = getelementptr inbounds i8, ptr %17, i64 48
  %238 = load float, ptr %237, align 8, !tbaa.struct !106
  %239 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 65535, i32 5
  %240 = load float, ptr %239, align 8, !tbaa.struct !102
  %241 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 65535, i32 6
  %242 = load float, ptr %241, align 4, !tbaa.struct !103
  %243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 65535, i32 7
  %244 = load float, ptr %243, align 8, !tbaa.struct !104
  %245 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 65535, i32 8
  %246 = load float, ptr %245, align 4, !tbaa.struct !105
  %247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 65535, i32 9
  %248 = load float, ptr %247, align 8, !tbaa.struct !106
  %249 = call ptr @ResetMagickMemory(ptr noundef %15, i32 noundef 0, i64 noundef 655360) #15
  %250 = fcmp une float %240, %230
  %251 = fsub float %240, %230
  %252 = icmp ne i32 %156, 0
  %253 = select i1 %252, i1 %250, i1 false
  %254 = icmp ne i32 %155, 0
  %255 = fcmp une float %242, %232
  %256 = select i1 %254, i1 %255, i1 false
  %257 = fsub float %242, %232
  %258 = icmp ne i32 %154, 0
  %259 = fcmp une float %244, %234
  %260 = select i1 %258, i1 %259, i1 false
  %261 = fsub float %244, %234
  %262 = icmp ne i32 %153, 0
  %263 = fcmp une float %246, %236
  %264 = select i1 %262, i1 %263, i1 false
  %265 = fsub float %246, %236
  %266 = fcmp une float %248, %238
  %267 = fsub float %248, %238
  br label %268

268:                                              ; preds = %228, %328
  %269 = phi i64 [ 0, %228 ], [ %329, %328 ]
  br i1 %159, label %279, label %270

270:                                              ; preds = %268
  br i1 %250, label %271, label %328

271:                                              ; preds = %270
  %272 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %269, i32 5
  %273 = load float, ptr %272, align 8, !tbaa !56
  %274 = fsub float %273, %230
  %275 = fmul float %274, 6.553500e+04
  %276 = fdiv float %275, %251
  %277 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %276) #13
  %278 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %269
  store i16 %277, ptr %278, align 2, !tbaa !86
  br label %328

279:                                              ; preds = %268
  br i1 %253, label %280, label %288

280:                                              ; preds = %279
  %281 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %269, i32 5
  %282 = load float, ptr %281, align 8, !tbaa !56
  %283 = fsub float %282, %230
  %284 = fmul float %283, 6.553500e+04
  %285 = fdiv float %284, %251
  %286 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %285) #13
  %287 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %269
  store i16 %286, ptr %287, align 2, !tbaa !86
  br label %288

288:                                              ; preds = %280, %279
  br i1 %256, label %289, label %297

289:                                              ; preds = %288
  %290 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %269, i32 6
  %291 = load float, ptr %290, align 4, !tbaa !59
  %292 = fsub float %291, %232
  %293 = fmul float %292, 6.553500e+04
  %294 = fdiv float %293, %257
  %295 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %294) #13
  %296 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %269, i32 1
  store i16 %295, ptr %296, align 2, !tbaa !88
  br label %297

297:                                              ; preds = %289, %288
  br i1 %260, label %298, label %306

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %269, i32 7
  %300 = load float, ptr %299, align 8, !tbaa !60
  %301 = fsub float %300, %234
  %302 = fmul float %301, 6.553500e+04
  %303 = fdiv float %302, %261
  %304 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %303) #13
  %305 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %269, i32 2
  store i16 %304, ptr %305, align 2, !tbaa !89
  br label %306

306:                                              ; preds = %298, %297
  br i1 %264, label %307, label %315

307:                                              ; preds = %306
  %308 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %269, i32 8
  %309 = load float, ptr %308, align 4, !tbaa !61
  %310 = fsub float %309, %236
  %311 = fmul float %310, 6.553500e+04
  %312 = fdiv float %311, %265
  %313 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %312) #13
  %314 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %269, i32 3
  store i16 %313, ptr %314, align 2, !tbaa !90
  br label %315

315:                                              ; preds = %307, %306
  br i1 %168, label %328, label %316

316:                                              ; preds = %315
  %317 = load i32, ptr %169, align 4, !tbaa !26
  %318 = icmp eq i32 %317, 12
  %319 = select i1 %318, i1 %266, i1 false
  br i1 %319, label %320, label %328

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %269, i32 9
  %322 = load float, ptr %321, align 8, !tbaa !62
  %323 = fsub float %322, %238
  %324 = fmul float %323, 6.553500e+04
  %325 = fdiv float %324, %267
  %326 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %325) #13
  %327 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %269, i32 4
  store i16 %326, ptr %327, align 2, !tbaa !91
  br label %328

328:                                              ; preds = %315, %316, %320, %270, %271
  %329 = add nuw nsw i64 %269, 1
  %330 = icmp eq i64 %329, 65536
  br i1 %330, label %331, label %268, !llvm.loop !107

331:                                              ; preds = %328
  %332 = call ptr @RelinquishMagickMemory(ptr noundef %16) #15
  %333 = call ptr @RelinquishMagickMemory(ptr noundef %17) #15
  %334 = load i32, ptr %0, align 8, !tbaa !28
  %335 = icmp eq i32 %334, 2
  br i1 %335, label %336, label %412

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %338 = load i64, ptr %337, align 8, !tbaa !29
  %339 = icmp sgt i64 %338, 0
  br i1 %339, label %340, label %412

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %342

342:                                              ; preds = %340, %409
  %343 = phi i64 [ 0, %340 ], [ %410, %409 ]
  br i1 %159, label %370, label %344

344:                                              ; preds = %342
  br i1 %250, label %345, label %409

345:                                              ; preds = %344
  %346 = load ptr, ptr %341, align 8, !tbaa !30
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 %343, i32 2
  %348 = load i16, ptr %347, align 2, !tbaa !31
  %349 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %348) #13, !range !49
  %350 = zext nneg i32 %349 to i64
  %351 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !86
  store i16 %352, ptr %347, align 2, !tbaa !31
  %353 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 %343, i32 1
  %354 = load i16, ptr %353, align 2, !tbaa !32
  %355 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %354) #13, !range !49
  %356 = zext nneg i32 %355 to i64
  %357 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %356
  %358 = load i16, ptr %357, align 2, !tbaa !86
  store i16 %358, ptr %353, align 2, !tbaa !32
  %359 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 %343
  %360 = load i16, ptr %359, align 2, !tbaa !33
  %361 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %360) #13, !range !49
  %362 = zext nneg i32 %361 to i64
  %363 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %362
  %364 = load i16, ptr %363, align 2, !tbaa !86
  store i16 %364, ptr %359, align 2, !tbaa !33
  %365 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 %343, i32 3
  %366 = load i16, ptr %365, align 2, !tbaa !34
  %367 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %366) #13, !range !49
  %368 = zext nneg i32 %367 to i64
  %369 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %368
  br label %405

370:                                              ; preds = %342
  br i1 %253, label %371, label %379

371:                                              ; preds = %370
  %372 = load ptr, ptr %341, align 8, !tbaa !30
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %372, i64 %343, i32 2
  %374 = load i16, ptr %373, align 2, !tbaa !31
  %375 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %374) #13, !range !49
  %376 = zext nneg i32 %375 to i64
  %377 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %376
  %378 = load i16, ptr %377, align 2, !tbaa !86
  store i16 %378, ptr %373, align 2, !tbaa !31
  br label %379

379:                                              ; preds = %371, %370
  br i1 %256, label %380, label %388

380:                                              ; preds = %379
  %381 = load ptr, ptr %341, align 8, !tbaa !30
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %381, i64 %343, i32 1
  %383 = load i16, ptr %382, align 2, !tbaa !32
  %384 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %383) #13, !range !49
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %385, i32 1
  %387 = load i16, ptr %386, align 2, !tbaa !88
  store i16 %387, ptr %382, align 2, !tbaa !32
  br label %388

388:                                              ; preds = %380, %379
  br i1 %260, label %389, label %397

389:                                              ; preds = %388
  %390 = load ptr, ptr %341, align 8, !tbaa !30
  %391 = getelementptr inbounds %struct._PixelPacket, ptr %390, i64 %343
  %392 = load i16, ptr %391, align 2, !tbaa !33
  %393 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %392) #13, !range !49
  %394 = zext nneg i32 %393 to i64
  %395 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %394, i32 2
  %396 = load i16, ptr %395, align 2, !tbaa !89
  store i16 %396, ptr %391, align 2, !tbaa !33
  br label %397

397:                                              ; preds = %389, %388
  br i1 %264, label %398, label %409

398:                                              ; preds = %397
  %399 = load ptr, ptr %341, align 8, !tbaa !30
  %400 = getelementptr inbounds %struct._PixelPacket, ptr %399, i64 %343, i32 3
  %401 = load i16, ptr %400, align 2, !tbaa !34
  %402 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %401) #13, !range !49
  %403 = zext nneg i32 %402 to i64
  %404 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %403, i32 3
  br label %405

405:                                              ; preds = %345, %398
  %406 = phi ptr [ %404, %398 ], [ %369, %345 ]
  %407 = phi ptr [ %400, %398 ], [ %365, %345 ]
  %408 = load i16, ptr %406, align 2, !tbaa !39
  store i16 %408, ptr %407, align 2, !tbaa !34
  br label %409

409:                                              ; preds = %405, %397, %344
  %410 = add nuw nsw i64 %343, 1
  %411 = icmp eq i64 %410, %338
  br i1 %411, label %412, label %342, !llvm.loop !108

412:                                              ; preds = %409, %336, %331
  %413 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %11) #15
  %414 = load i64, ptr %39, align 8, !tbaa !37
  %415 = icmp sgt i64 %414, 0
  br i1 %415, label %416, label %540

416:                                              ; preds = %412
  %417 = fcmp oeq float %248, %238
  %418 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %419

419:                                              ; preds = %416, %534
  %420 = phi i32 [ 1, %416 ], [ %536, %534 ]
  %421 = phi i64 [ 0, %416 ], [ %535, %534 ]
  %422 = phi i64 [ 0, %416 ], [ %537, %534 ]
  %423 = icmp eq i32 %420, 0
  br i1 %423, label %534, label %424

424:                                              ; preds = %419
  %425 = load i64, ptr %38, align 8, !tbaa !38
  %426 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %413, i64 noundef 0, i64 noundef %422, i64 noundef %425, i64 noundef 1, ptr noundef nonnull %11) #16
  %427 = icmp eq ptr %426, null
  br i1 %427, label %534, label %428

428:                                              ; preds = %424
  %429 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %413) #15
  %430 = load i64, ptr %38, align 8, !tbaa !38
  %431 = icmp sgt i64 %430, 0
  br i1 %431, label %432, label %522

432:                                              ; preds = %428
  %433 = icmp eq ptr %429, null
  br label %434

434:                                              ; preds = %432, %518
  %435 = phi i64 [ 0, %432 ], [ %520, %518 ]
  %436 = phi ptr [ %426, %432 ], [ %519, %518 ]
  br i1 %159, label %471, label %437

437:                                              ; preds = %434
  br i1 %250, label %438, label %518

438:                                              ; preds = %437
  %439 = getelementptr inbounds %struct._PixelPacket, ptr %436, i64 0, i32 2
  %440 = load i16, ptr %439, align 2, !tbaa !31
  %441 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %440) #13, !range !49
  %442 = zext nneg i32 %441 to i64
  %443 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %442
  %444 = load i16, ptr %443, align 2, !tbaa !86
  store i16 %444, ptr %439, align 2, !tbaa !31
  %445 = getelementptr inbounds %struct._PixelPacket, ptr %436, i64 0, i32 1
  %446 = load i16, ptr %445, align 2, !tbaa !32
  %447 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %446) #13, !range !49
  %448 = zext nneg i32 %447 to i64
  %449 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %448
  %450 = load i16, ptr %449, align 2, !tbaa !86
  store i16 %450, ptr %445, align 2, !tbaa !32
  %451 = load i16, ptr %436, align 2, !tbaa !33
  %452 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %451) #13, !range !49
  %453 = zext nneg i32 %452 to i64
  %454 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %453
  %455 = load i16, ptr %454, align 2, !tbaa !86
  store i16 %455, ptr %436, align 2, !tbaa !33
  %456 = getelementptr inbounds %struct._PixelPacket, ptr %436, i64 0, i32 3
  %457 = load i16, ptr %456, align 2, !tbaa !34
  %458 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %457) #13, !range !49
  %459 = zext nneg i32 %458 to i64
  %460 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %459
  %461 = load i16, ptr %460, align 2, !tbaa !86
  store i16 %461, ptr %456, align 2, !tbaa !34
  %462 = load i32, ptr %169, align 4, !tbaa !26
  %463 = icmp ne i32 %462, 12
  %464 = select i1 %463, i1 true, i1 %433
  br i1 %464, label %518, label %465

465:                                              ; preds = %438
  %466 = getelementptr inbounds i16, ptr %429, i64 %435
  %467 = load i16, ptr %466, align 2, !tbaa !39
  %468 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %467) #13, !range !49
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %469
  br label %514

471:                                              ; preds = %434
  br i1 %253, label %472, label %479

472:                                              ; preds = %471
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %436, i64 0, i32 2
  %474 = load i16, ptr %473, align 2, !tbaa !31
  %475 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %474) #13, !range !49
  %476 = zext nneg i32 %475 to i64
  %477 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %476
  %478 = load i16, ptr %477, align 2, !tbaa !86
  store i16 %478, ptr %473, align 2, !tbaa !31
  br label %479

479:                                              ; preds = %472, %471
  br i1 %256, label %480, label %487

480:                                              ; preds = %479
  %481 = getelementptr inbounds %struct._PixelPacket, ptr %436, i64 0, i32 1
  %482 = load i16, ptr %481, align 2, !tbaa !32
  %483 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %482) #13, !range !49
  %484 = zext nneg i32 %483 to i64
  %485 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %484, i32 1
  %486 = load i16, ptr %485, align 2, !tbaa !88
  store i16 %486, ptr %481, align 2, !tbaa !32
  br label %487

487:                                              ; preds = %480, %479
  br i1 %260, label %488, label %494

488:                                              ; preds = %487
  %489 = load i16, ptr %436, align 2, !tbaa !33
  %490 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %489) #13, !range !49
  %491 = zext nneg i32 %490 to i64
  %492 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %491, i32 2
  %493 = load i16, ptr %492, align 2, !tbaa !89
  store i16 %493, ptr %436, align 2, !tbaa !33
  br label %494

494:                                              ; preds = %488, %487
  br i1 %264, label %495, label %502

495:                                              ; preds = %494
  %496 = getelementptr inbounds %struct._PixelPacket, ptr %436, i64 0, i32 3
  %497 = load i16, ptr %496, align 2, !tbaa !34
  %498 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %497) #13, !range !49
  %499 = zext nneg i32 %498 to i64
  %500 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %499, i32 3
  %501 = load i16, ptr %500, align 2, !tbaa !90
  store i16 %501, ptr %496, align 2, !tbaa !34
  br label %502

502:                                              ; preds = %495, %494
  br i1 %168, label %518, label %503

503:                                              ; preds = %502
  %504 = load i32, ptr %169, align 4, !tbaa !26
  %505 = icmp ne i32 %504, 12
  %506 = select i1 %505, i1 true, i1 %417
  %507 = select i1 %506, i1 true, i1 %433
  br i1 %507, label %518, label %508

508:                                              ; preds = %503
  %509 = getelementptr inbounds i16, ptr %429, i64 %435
  %510 = load i16, ptr %509, align 2, !tbaa !39
  %511 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %510) #13, !range !49
  %512 = zext nneg i32 %511 to i64
  %513 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %15, i64 %512, i32 4
  br label %514

514:                                              ; preds = %465, %508
  %515 = phi ptr [ %513, %508 ], [ %470, %465 ]
  %516 = phi ptr [ %509, %508 ], [ %466, %465 ]
  %517 = load i16, ptr %515, align 2, !tbaa !39
  store i16 %517, ptr %516, align 2, !tbaa !39
  br label %518

518:                                              ; preds = %514, %502, %503, %437, %438
  %519 = getelementptr inbounds %struct._PixelPacket, ptr %436, i64 1
  %520 = add nuw nsw i64 %435, 1
  %521 = icmp eq i64 %520, %430
  br i1 %521, label %522, label %434, !llvm.loop !109

522:                                              ; preds = %518, %428
  %523 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %413, ptr noundef nonnull %11) #16
  %524 = icmp ne i32 %523, 0
  %525 = zext i1 %524 to i32
  %526 = load ptr, ptr %418, align 8, !tbaa !41
  %527 = icmp eq ptr %526, null
  br i1 %527, label %534, label %528

528:                                              ; preds = %522
  %529 = add nsw i64 %421, 1
  %530 = load i64, ptr %39, align 8, !tbaa !37
  %531 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef %421, i64 noundef %530) #13
  %532 = icmp eq i32 %531, 0
  %533 = select i1 %532, i32 0, i32 %525
  br label %534

534:                                              ; preds = %522, %528, %424, %419
  %535 = phi i64 [ %421, %419 ], [ %421, %424 ], [ %529, %528 ], [ %421, %522 ]
  %536 = phi i32 [ 0, %419 ], [ 0, %424 ], [ %533, %528 ], [ %525, %522 ]
  %537 = add nuw nsw i64 %422, 1
  %538 = load i64, ptr %39, align 8, !tbaa !37
  %539 = icmp slt i64 %537, %538
  br i1 %539, label %419, label %540, !llvm.loop !110

540:                                              ; preds = %534, %412
  %541 = phi i32 [ 1, %412 ], [ %536, %534 ]
  %542 = call ptr @DestroyCacheView(ptr noundef %413) #15
  %543 = call ptr @RelinquishMagickMemory(ptr noundef %15) #15
  br label %544

544:                                              ; preds = %32, %10, %540
  %545 = phi i32 [ %541, %540 ], [ %12, %10 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  ret i32 %545
}

; Function Attrs: optsize
declare i32 @AccelerateEqualizeImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GammaImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !27
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2122, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %10
  %13 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #15
  %14 = load double, ptr %3, align 8, !tbaa !70
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !111
  %18 = fptrunc double %17 to float
  %19 = and i32 %13, 8
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, float %15, float %18
  %22 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !112
  %24 = fptrunc double %23 to float
  %25 = and i32 %13, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, float %15, float %24
  %28 = fpext float %15 to double
  %29 = fcmp oeq float %15, 1.000000e+00
  %30 = fcmp oeq float %21, 1.000000e+00
  %31 = select i1 %29, i1 %30, i1 false
  %32 = fcmp oeq float %27, 1.000000e+00
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %52, label %34

34:                                               ; preds = %12
  %35 = fcmp oeq float %21, %15
  %36 = fcmp oeq float %21, %27
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @GammaImageChannel(ptr noundef nonnull %0, i32 noundef 7, double noundef %28) #13, !range !5
  br label %48

40:                                               ; preds = %34
  %41 = call i32 @GammaImageChannel(ptr noundef nonnull %0, i32 noundef 1, double noundef %28) #13, !range !5
  %42 = fpext float %21 to double
  %43 = call i32 @GammaImageChannel(ptr noundef nonnull %0, i32 noundef 2, double noundef %42) #13, !range !5
  %44 = and i32 %43, %41
  %45 = fpext float %27 to double
  %46 = call i32 @GammaImageChannel(ptr noundef nonnull %0, i32 noundef 4, double noundef %45) #13, !range !5
  %47 = and i32 %44, %46
  br label %48

48:                                               ; preds = %40, %38
  %49 = phi i32 [ %39, %38 ], [ %47, %40 ]
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %12, %10, %48
  %53 = phi i32 [ %51, %48 ], [ 0, %10 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GammaImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !27
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2179, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = fcmp oeq double %2, 1.000000e+00
  br i1 %11, label %255, label %12

12:                                               ; preds = %10
  %13 = tail call dereferenceable_or_null(131072) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 2) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2185, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %17) #15
  br label %255

19:                                               ; preds = %12
  %20 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 131072) #15
  %21 = fcmp une double %2, 0.000000e+00
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = fdiv double 1.000000e+00, %2
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %35, %24 ]
  %26 = sitofp i64 %25 to double
  %27 = fdiv double %26, 6.553500e+04
  %28 = tail call double @pow(double noundef %27, double noundef %23) #15
  %29 = fmul double %28, 6.553500e+04
  %30 = fptrunc double %29 to float
  %31 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %30) #13
  %32 = uitofp i16 %31 to float
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #13
  %34 = getelementptr inbounds i16, ptr %13, i64 %25
  store i16 %33, ptr %34, align 2, !tbaa !39
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, 65536
  br i1 %36, label %37, label %24, !llvm.loop !113

37:                                               ; preds = %24, %19
  %38 = load i32, ptr %0, align 8, !tbaa !28
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %107

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %42 = load i64, ptr %41, align 8, !tbaa !29
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %107

44:                                               ; preds = %40
  %45 = and i32 %1, 1
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %48 = and i32 %1, 2
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %1, 4
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %1, 8
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %55

55:                                               ; preds = %44, %104
  %56 = phi i64 [ 0, %44 ], [ %105, %104 ]
  br i1 %46, label %65, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %47, align 8, !tbaa !30
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 %56, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !31
  %61 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %60) #13, !range !49
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds i16, ptr %13, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !39
  store i16 %64, ptr %59, align 2, !tbaa !31
  br label %65

65:                                               ; preds = %57, %55
  br i1 %49, label %74, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr %47, align 8, !tbaa !30
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 %56, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !32
  %70 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %69) #13, !range !49
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds i16, ptr %13, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !39
  store i16 %73, ptr %68, align 2, !tbaa !32
  br label %74

74:                                               ; preds = %66, %65
  br i1 %51, label %83, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %47, align 8, !tbaa !30
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 %56
  %78 = load i16, ptr %77, align 2, !tbaa !33
  %79 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %78) #13, !range !49
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds i16, ptr %13, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !39
  store i16 %82, ptr %77, align 2, !tbaa !33
  br label %83

83:                                               ; preds = %75, %74
  br i1 %53, label %104, label %84

84:                                               ; preds = %83
  %85 = load i32, ptr %54, align 8, !tbaa !10
  %86 = icmp eq i32 %85, 0
  %87 = load ptr, ptr %47, align 8, !tbaa !30
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 %56, i32 3
  %89 = load i16, ptr %88, align 2, !tbaa !34
  br i1 %86, label %90, label %95

90:                                               ; preds = %84
  %91 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %89) #13, !range !49
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds i16, ptr %13, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !39
  br label %102

95:                                               ; preds = %84
  %96 = xor i16 %89, -1
  %97 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %96) #13, !range !49
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds i16, ptr %13, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !39
  %101 = xor i16 %100, -1
  br label %102

102:                                              ; preds = %90, %95
  %103 = phi i16 [ %101, %95 ], [ %94, %90 ]
  store i16 %103, ptr %88, align 2, !tbaa !34
  br label %104

104:                                              ; preds = %102, %83
  %105 = add nuw nsw i64 %56, 1
  %106 = icmp eq i64 %105, %42
  br i1 %106, label %107, label %55, !llvm.loop !114

107:                                              ; preds = %104, %40, %37
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %109 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %108) #15
  %110 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %111 = load i64, ptr %110, align 8, !tbaa !37
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %246

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %115 = and i32 %1, 256
  %116 = icmp eq i32 %115, 0
  %117 = and i32 %1, 1
  %118 = icmp eq i32 %117, 0
  %119 = and i32 %1, 2
  %120 = icmp eq i32 %119, 0
  %121 = and i32 %1, 4
  %122 = icmp eq i32 %121, 0
  %123 = and i32 %1, 8
  %124 = icmp eq i32 %123, 0
  %125 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %126 = and i32 %1, 32
  %127 = icmp eq i32 %126, 0
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %129 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %130

130:                                              ; preds = %113, %240
  %131 = phi i64 [ 0, %113 ], [ %243, %240 ]
  %132 = phi i64 [ 0, %113 ], [ %242, %240 ]
  %133 = phi i32 [ 1, %113 ], [ %241, %240 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %240, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %114, align 8, !tbaa !38
  %137 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %109, i64 noundef 0, i64 noundef %131, i64 noundef %136, i64 noundef 1, ptr noundef nonnull %108) #16
  %138 = icmp eq ptr %137, null
  br i1 %138, label %240, label %139

139:                                              ; preds = %135
  %140 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %109) #15
  %141 = load i64, ptr %114, align 8, !tbaa !38
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %209

143:                                              ; preds = %139, %205
  %144 = phi i64 [ %207, %205 ], [ 0, %139 ]
  %145 = phi ptr [ %206, %205 ], [ %137, %139 ]
  br i1 %116, label %164, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 2
  %148 = load i16, ptr %147, align 2, !tbaa !31
  %149 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %148) #13, !range !49
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds i16, ptr %13, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !39
  store i16 %152, ptr %147, align 2, !tbaa !31
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 1
  %154 = load i16, ptr %153, align 2, !tbaa !32
  %155 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %154) #13, !range !49
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds i16, ptr %13, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !39
  store i16 %158, ptr %153, align 2, !tbaa !32
  %159 = load i16, ptr %145, align 2, !tbaa !33
  %160 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %159) #13, !range !49
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds i16, ptr %13, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !39
  store i16 %163, ptr %145, align 2, !tbaa !33
  br label %205

164:                                              ; preds = %143
  br i1 %118, label %172, label %165

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 2
  %167 = load i16, ptr %166, align 2, !tbaa !31
  %168 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %167) #13, !range !49
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds i16, ptr %13, i64 %169
  %171 = load i16, ptr %170, align 2, !tbaa !39
  store i16 %171, ptr %166, align 2, !tbaa !31
  br label %172

172:                                              ; preds = %165, %164
  br i1 %120, label %180, label %173

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 1
  %175 = load i16, ptr %174, align 2, !tbaa !32
  %176 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %175) #13, !range !49
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds i16, ptr %13, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !39
  store i16 %179, ptr %174, align 2, !tbaa !32
  br label %180

180:                                              ; preds = %173, %172
  br i1 %122, label %187, label %181

181:                                              ; preds = %180
  %182 = load i16, ptr %145, align 2, !tbaa !33
  %183 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %182) #13, !range !49
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds i16, ptr %13, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !39
  store i16 %186, ptr %145, align 2, !tbaa !33
  br label %187

187:                                              ; preds = %181, %180
  br i1 %124, label %205, label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %125, align 8, !tbaa !10
  %190 = icmp eq i32 %189, 0
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 3
  %192 = load i16, ptr %191, align 2, !tbaa !34
  br i1 %190, label %193, label %198

193:                                              ; preds = %188
  %194 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %192) #13, !range !49
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds i16, ptr %13, i64 %195
  %197 = load i16, ptr %196, align 2, !tbaa !39
  store i16 %197, ptr %191, align 2, !tbaa !34
  br label %205

198:                                              ; preds = %188
  %199 = xor i16 %192, -1
  %200 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %199) #13, !range !49
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds i16, ptr %13, i64 %201
  %203 = load i16, ptr %202, align 2, !tbaa !39
  %204 = xor i16 %203, -1
  store i16 %204, ptr %191, align 2, !tbaa !34
  br label %205

205:                                              ; preds = %187, %198, %193, %146
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 1
  %207 = add nuw nsw i64 %144, 1
  %208 = icmp eq i64 %207, %141
  br i1 %208, label %209, label %143, !llvm.loop !115

209:                                              ; preds = %205, %139
  br i1 %127, label %228, label %210

210:                                              ; preds = %209
  %211 = load i32, ptr %128, align 4, !tbaa !26
  %212 = icmp eq i32 %211, 12
  %213 = and i1 %212, %142
  br i1 %213, label %214, label %228

214:                                              ; preds = %210
  %215 = icmp eq ptr %140, null
  br label %216

216:                                              ; preds = %214, %225
  %217 = phi i64 [ 0, %214 ], [ %226, %225 ]
  br i1 %215, label %225, label %218

218:                                              ; preds = %216
  %219 = getelementptr inbounds i16, ptr %140, i64 %217
  %220 = load i16, ptr %219, align 2, !tbaa !39
  %221 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %220) #13, !range !49
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds i16, ptr %13, i64 %222
  %224 = load i16, ptr %223, align 2, !tbaa !39
  store i16 %224, ptr %219, align 2, !tbaa !39
  br label %225

225:                                              ; preds = %216, %218
  %226 = add nuw nsw i64 %217, 1
  %227 = icmp eq i64 %226, %141
  br i1 %227, label %228, label %216, !llvm.loop !116

228:                                              ; preds = %225, %210, %209
  %229 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %109, ptr noundef nonnull %108) #16
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = load ptr, ptr %129, align 8, !tbaa !41
  %233 = icmp eq ptr %232, null
  br i1 %233, label %240, label %234

234:                                              ; preds = %228
  %235 = add nsw i64 %132, 1
  %236 = load i64, ptr %110, align 8, !tbaa !37
  %237 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i64 noundef %132, i64 noundef %236) #13
  %238 = icmp eq i32 %237, 0
  %239 = select i1 %238, i32 0, i32 %231
  br label %240

240:                                              ; preds = %228, %234, %135, %130
  %241 = phi i32 [ 0, %130 ], [ 0, %135 ], [ %239, %234 ], [ %231, %228 ]
  %242 = phi i64 [ %132, %130 ], [ %132, %135 ], [ %235, %234 ], [ %132, %228 ]
  %243 = add nuw nsw i64 %131, 1
  %244 = load i64, ptr %110, align 8, !tbaa !37
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %130, label %246, !llvm.loop !117

246:                                              ; preds = %240, %107
  %247 = phi i32 [ 1, %107 ], [ %241, %240 ]
  %248 = tail call ptr @DestroyCacheView(ptr noundef %109) #15
  %249 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #15
  %250 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 15
  %251 = load double, ptr %250, align 8, !tbaa !118
  %252 = fcmp une double %251, 0.000000e+00
  br i1 %252, label %253, label %255

253:                                              ; preds = %246
  %254 = fmul double %251, %2
  store double %254, ptr %250, align 8, !tbaa !118
  br label %255

255:                                              ; preds = %246, %253, %15, %10
  %256 = phi i32 [ 1, %10 ], [ 0, %15 ], [ %247, %253 ], [ %247, %246 ]
  ret i32 %256
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GrayscaleImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2426, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %0, align 8, !tbaa !28
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = tail call i32 @SyncImage(ptr noundef nonnull %0) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %191, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %191, label %18

18:                                               ; preds = %15, %9
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = tail call i32 @AccelerateGrayscaleImage(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %19) #15
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %191, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %19) #15
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !37
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %186

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %31

31:                                               ; preds = %27, %180
  %32 = phi i64 [ 0, %27 ], [ %183, %180 ]
  %33 = phi i64 [ 0, %27 ], [ %182, %180 ]
  %34 = phi i32 [ 1, %27 ], [ %181, %180 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %180, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %28, align 8, !tbaa !38
  %38 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %23, i64 noundef 0, i64 noundef %32, i64 noundef %37, i64 noundef 1, ptr noundef nonnull %19) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %180, label %40

40:                                               ; preds = %36
  %41 = load i64, ptr %28, align 8, !tbaa !38
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %168

43:                                               ; preds = %40, %161
  %44 = phi i64 [ %165, %161 ], [ 0, %40 ]
  %45 = phi ptr [ %164, %161 ], [ %38, %40 ]
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 0, i32 2
  %47 = load i16, ptr %46, align 2, !tbaa !31
  %48 = uitofp i16 %47 to float
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 0, i32 1
  %50 = load i16, ptr %49, align 2, !tbaa !32
  %51 = uitofp i16 %50 to float
  %52 = load i16, ptr %45, align 2, !tbaa !33
  %53 = uitofp i16 %52 to float
  switch i32 %1, label %114 [
    i32 1, label %54
    i32 2, label %58
    i32 3, label %61
    i32 9, label %68
    i32 4, label %78
    i32 5, label %96
    i32 8, label %150
    i32 7, label %132
  ]

54:                                               ; preds = %43
  %55 = fadd float %48, %51
  %56 = fadd float %55, %53
  %57 = fdiv float %56, 3.000000e+00
  br label %161

58:                                               ; preds = %43
  %59 = tail call fastcc float @MagickMax(float noundef %48, float noundef %51) #13
  %60 = tail call fastcc float @MagickMax(float noundef %59, float noundef %53) #13
  br label %161

61:                                               ; preds = %43
  %62 = tail call fastcc float @MagickMin(float noundef %48, float noundef %51) #13
  %63 = tail call fastcc float @MagickMin(float noundef %62, float noundef %53) #13
  %64 = tail call fastcc float @MagickMax(float noundef %48, float noundef %51) #13
  %65 = tail call fastcc float @MagickMax(float noundef %64, float noundef %53) #13
  %66 = fadd float %63, %65
  %67 = fmul float %66, 5.000000e-01
  br label %161

68:                                               ; preds = %43
  %69 = uitofp i16 %47 to double
  %70 = fmul float %51, %51
  %71 = fpext float %70 to double
  %72 = tail call double @llvm.fmuladd.f64(double %69, double %69, double %71)
  %73 = fmul float %53, %53
  %74 = fpext float %73 to double
  %75 = fadd double %72, %74
  %76 = fdiv double %75, 1.966050e+05
  %77 = fptrunc double %76 to float
  br label %161

78:                                               ; preds = %43
  %79 = load i32, ptr %29, align 4, !tbaa !26
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = tail call float @EncodePixelGamma(float noundef %48) #16
  %83 = tail call float @EncodePixelGamma(float noundef %51) #16
  %84 = tail call float @EncodePixelGamma(float noundef %53) #16
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi float [ %84, %81 ], [ %53, %78 ]
  %87 = phi float [ %83, %81 ], [ %51, %78 ]
  %88 = phi float [ %82, %81 ], [ %48, %78 ]
  %89 = fpext float %88 to double
  %90 = fpext float %87 to double
  %91 = fmul double %90, 5.868110e-01
  %92 = tail call double @llvm.fmuladd.f64(double %89, double 2.988390e-01, double %91)
  %93 = fpext float %86 to double
  %94 = tail call double @llvm.fmuladd.f64(double %93, double 1.143500e-01, double %92)
  %95 = fptrunc double %94 to float
  br label %161

96:                                               ; preds = %43
  %97 = load i32, ptr %29, align 4, !tbaa !26
  %98 = icmp eq i32 %97, 13
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = tail call float @DecodePixelGamma(float noundef %48) #16
  %101 = tail call float @DecodePixelGamma(float noundef %51) #16
  %102 = tail call float @DecodePixelGamma(float noundef %53) #16
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi float [ %102, %99 ], [ %53, %96 ]
  %105 = phi float [ %101, %99 ], [ %51, %96 ]
  %106 = phi float [ %100, %99 ], [ %48, %96 ]
  %107 = fpext float %106 to double
  %108 = fpext float %105 to double
  %109 = fmul double %108, 5.868110e-01
  %110 = tail call double @llvm.fmuladd.f64(double %107, double 2.988390e-01, double %109)
  %111 = fpext float %104 to double
  %112 = tail call double @llvm.fmuladd.f64(double %111, double 1.143500e-01, double %110)
  %113 = fptrunc double %112 to float
  br label %161

114:                                              ; preds = %43
  %115 = load i32, ptr %29, align 4, !tbaa !26
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = tail call float @EncodePixelGamma(float noundef %48) #16
  %119 = tail call float @EncodePixelGamma(float noundef %51) #16
  %120 = tail call float @EncodePixelGamma(float noundef %53) #16
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi float [ %120, %117 ], [ %53, %114 ]
  %123 = phi float [ %119, %117 ], [ %51, %114 ]
  %124 = phi float [ %118, %117 ], [ %48, %114 ]
  %125 = fpext float %124 to double
  %126 = fpext float %123 to double
  %127 = fmul double %126, 0x3FE6E29307AF20EA
  %128 = tail call double @llvm.fmuladd.f64(double %125, double 2.126560e-01, double %127)
  %129 = fpext float %122 to double
  %130 = tail call double @llvm.fmuladd.f64(double %129, double 7.218600e-02, double %128)
  %131 = fptrunc double %130 to float
  br label %161

132:                                              ; preds = %43
  %133 = load i32, ptr %29, align 4, !tbaa !26
  %134 = icmp eq i32 %133, 13
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = tail call float @DecodePixelGamma(float noundef %48) #16
  %137 = tail call float @DecodePixelGamma(float noundef %51) #16
  %138 = tail call float @DecodePixelGamma(float noundef %53) #16
  br label %139

139:                                              ; preds = %135, %132
  %140 = phi float [ %138, %135 ], [ %53, %132 ]
  %141 = phi float [ %137, %135 ], [ %51, %132 ]
  %142 = phi float [ %136, %135 ], [ %48, %132 ]
  %143 = fpext float %142 to double
  %144 = fpext float %141 to double
  %145 = fmul double %144, 0x3FE6E29307AF20EA
  %146 = tail call double @llvm.fmuladd.f64(double %143, double 2.126560e-01, double %145)
  %147 = fpext float %140 to double
  %148 = tail call double @llvm.fmuladd.f64(double %147, double 7.218600e-02, double %146)
  %149 = fptrunc double %148 to float
  br label %161

150:                                              ; preds = %43
  %151 = uitofp i16 %47 to double
  %152 = fmul float %51, %51
  %153 = fpext float %152 to double
  %154 = tail call double @llvm.fmuladd.f64(double %151, double %151, double %153)
  %155 = fmul float %53, %53
  %156 = fpext float %155 to double
  %157 = fadd double %154, %156
  %158 = tail call double @llvm.sqrt.f64(double %157)
  %159 = fdiv double %158, 0x3FFBB67AE8584CAA
  %160 = fptrunc double %159 to float
  br label %161

161:                                              ; preds = %150, %139, %121, %103, %85, %68, %61, %58, %54
  %162 = phi float [ %131, %121 ], [ %149, %139 ], [ %160, %150 ], [ %113, %103 ], [ %95, %85 ], [ %77, %68 ], [ %67, %61 ], [ %60, %58 ], [ %57, %54 ]
  %163 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %162) #13
  store i16 %163, ptr %45, align 2, !tbaa !33
  store i16 %163, ptr %49, align 2, !tbaa !32
  store i16 %163, ptr %46, align 2, !tbaa !31
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 1
  %165 = add nuw nsw i64 %44, 1
  %166 = load i64, ptr %28, align 8, !tbaa !38
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %43, label %168, !llvm.loop !119

168:                                              ; preds = %161, %40
  %169 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %23, ptr noundef nonnull %19) #16
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = load ptr, ptr %30, align 8, !tbaa !41
  %173 = icmp eq ptr %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = add nsw i64 %33, 1
  %176 = load i64, ptr %24, align 8, !tbaa !37
  %177 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i64 noundef %33, i64 noundef %176) #13
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 0, i32 %171
  br label %180

180:                                              ; preds = %168, %174, %36, %31
  %181 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %179, %174 ], [ %171, %168 ]
  %182 = phi i64 [ %33, %31 ], [ %33, %36 ], [ %175, %174 ], [ %33, %168 ]
  %183 = add nuw nsw i64 %32, 1
  %184 = load i64, ptr %24, align 8, !tbaa !37
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %31, label %186, !llvm.loop !120

186:                                              ; preds = %180, %22
  %187 = tail call ptr @DestroyCacheView(ptr noundef %23) #15
  %188 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  store i32 %1, ptr %188, align 8, !tbaa !121
  %189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 2, ptr %189, align 8, !tbaa !122
  %190 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #15
  br label %191

191:                                              ; preds = %18, %15, %12, %186
  %192 = phi i32 [ %190, %186 ], [ 0, %12 ], [ 0, %15 ], [ 1, %18 ]
  ret i32 %192
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AccelerateGrayscaleImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @MagickMax(float noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @MagickMin(float noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: hot optsize
declare float @EncodePixelGamma(float noundef) local_unnamed_addr #7

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @HaldClutImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @HaldClutImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #13, !range !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @HaldClutImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2663, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %3
  %17 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %205, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !26
  %22 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %21) #13, !range !5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #15
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #15
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !38
  %35 = uitofp i64 %34 to float
  %36 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !37
  %38 = uitofp i64 %37 to float
  %39 = tail call fastcc float @MagickMin(float noundef %35, float noundef %38) #13
  %40 = fptoui float %39 to i64
  br label %41

41:                                               ; preds = %41, %32
  %42 = phi i64 [ 2, %32 ], [ %46, %41 ]
  %43 = mul i64 %42, %42
  %44 = mul i64 %43, %42
  %45 = icmp ult i64 %44, %40
  %46 = add i64 %42, 1
  br i1 %45, label %41, label %47, !llvm.loop !123

47:                                               ; preds = %41
  %48 = uitofp i64 %34 to double
  call void @GetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %4) #15
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %50 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %49) #15
  %51 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef nonnull %49) #15
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %53 = load i64, ptr %52, align 8, !tbaa !37
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %201

55:                                               ; preds = %47
  %56 = mul i64 %43, %43
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %58 = uitofp i64 %43 to double
  %59 = fadd double %58, -1.000000e+00
  %60 = fmul double %59, 0x3EF0001000100010
  %61 = uitofp i64 %56 to double
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %66 = and i32 %1, 1
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %69 = and i32 %1, 2
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %72 = and i32 %1, 4
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %75 = and i32 %1, 8
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %78 = and i32 %1, 32
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %82

82:                                               ; preds = %55, %195
  %83 = phi i32 [ 1, %55 ], [ %197, %195 ]
  %84 = phi i64 [ 0, %55 ], [ %196, %195 ]
  %85 = phi i64 [ 0, %55 ], [ %198, %195 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #14
  %86 = icmp eq i32 %83, 0
  br i1 %86, label %195, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %57, align 8, !tbaa !38
  %89 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %50, i64 noundef 0, i64 noundef %85, i64 noundef %88, i64 noundef 1, ptr noundef nonnull %49) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %195, label %91

91:                                               ; preds = %87
  %92 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %51) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !124
  %93 = load i64, ptr %57, align 8, !tbaa !38
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %183

95:                                               ; preds = %91
  %96 = icmp eq ptr %92, null
  br label %97

97:                                               ; preds = %95, %178
  %98 = phi i64 [ 0, %95 ], [ %180, %178 ]
  %99 = phi ptr [ %89, %95 ], [ %179, %178 ]
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %101 = load i16, ptr %100, align 2, !tbaa !31
  %102 = uitofp i16 %101 to double
  %103 = fmul double %60, %102
  %104 = fptrunc double %103 to float
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  %106 = load i16, ptr %105, align 2, !tbaa !32
  %107 = uitofp i16 %106 to double
  %108 = fmul double %60, %107
  %109 = fptrunc double %108 to float
  %110 = load i16, ptr %99, align 2, !tbaa !33
  %111 = uitofp i16 %110 to double
  %112 = fmul double %60, %111
  %113 = fptrunc double %112 to float
  %114 = fpext float %104 to double
  %115 = fpext float %109 to double
  %116 = call double @llvm.floor.f64(double %115)
  %117 = call double @llvm.fmuladd.f64(double %58, double %116, double %114)
  %118 = fpext float %113 to double
  %119 = call double @llvm.floor.f64(double %118)
  %120 = call double @llvm.fmuladd.f64(double %61, double %119, double %117)
  %121 = fsub double %115, %116
  %122 = fptrunc double %121 to float
  %123 = fsub double %118, %119
  %124 = fptrunc double %123 to float
  %125 = call double @fmod(double noundef %120, double noundef %48) #15
  %126 = fdiv double %120, %48
  %127 = call double @llvm.floor.f64(double %126)
  %128 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %51, i32 noundef 0, double noundef %125, double noundef %127, ptr noundef nonnull %6, ptr noundef nonnull %49) #15
  %129 = fadd double %120, %58
  %130 = call double @fmod(double noundef %129, double noundef %48) #15
  %131 = fdiv double %129, %48
  %132 = call double @llvm.floor.f64(double %131)
  %133 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %51, i32 noundef 0, double noundef %130, double noundef %132, ptr noundef nonnull %7, ptr noundef nonnull %49) #15
  %134 = load float, ptr %62, align 4, !tbaa !61
  %135 = load float, ptr %63, align 4, !tbaa !61
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %6, float noundef %134, ptr noundef nonnull %7, float noundef %135, float noundef %122, ptr noundef nonnull %8) #13
  %136 = fadd double %120, %61
  %137 = call double @fmod(double noundef %136, double noundef %48) #15
  %138 = fdiv double %136, %48
  %139 = call double @llvm.floor.f64(double %138)
  %140 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %51, i32 noundef 0, double noundef %137, double noundef %139, ptr noundef nonnull %6, ptr noundef nonnull %49) #15
  %141 = fadd double %136, %58
  %142 = call double @fmod(double noundef %141, double noundef %48) #15
  %143 = fdiv double %141, %48
  %144 = call double @llvm.floor.f64(double %143)
  %145 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %51, i32 noundef 0, double noundef %142, double noundef %144, ptr noundef nonnull %7, ptr noundef nonnull %49) #15
  %146 = load float, ptr %62, align 4, !tbaa !61
  %147 = load float, ptr %63, align 4, !tbaa !61
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %6, float noundef %146, ptr noundef nonnull %7, float noundef %147, float noundef %122, ptr noundef nonnull %9) #13
  %148 = load float, ptr %64, align 4, !tbaa !61
  %149 = load float, ptr %65, align 4, !tbaa !61
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %8, float noundef %148, ptr noundef nonnull %9, float noundef %149, float noundef %124, ptr noundef nonnull %5) #13
  br i1 %67, label %153, label %150

150:                                              ; preds = %97
  %151 = load float, ptr %68, align 8, !tbaa !56
  %152 = call fastcc zeroext i16 @ClampToQuantum(float noundef %151) #13
  store i16 %152, ptr %100, align 2, !tbaa !31
  br label %153

153:                                              ; preds = %150, %97
  br i1 %70, label %157, label %154

154:                                              ; preds = %153
  %155 = load float, ptr %71, align 4, !tbaa !59
  %156 = call fastcc zeroext i16 @ClampToQuantum(float noundef %155) #13
  store i16 %156, ptr %105, align 2, !tbaa !32
  br label %157

157:                                              ; preds = %154, %153
  br i1 %73, label %161, label %158

158:                                              ; preds = %157
  %159 = load float, ptr %74, align 8, !tbaa !60
  %160 = call fastcc zeroext i16 @ClampToQuantum(float noundef %159) #13
  store i16 %160, ptr %99, align 2, !tbaa !33
  br label %161

161:                                              ; preds = %158, %157
  br i1 %76, label %169, label %162

162:                                              ; preds = %161
  %163 = load i32, ptr %27, align 8, !tbaa !10
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = load float, ptr %77, align 4, !tbaa !61
  %167 = call fastcc zeroext i16 @ClampToQuantum(float noundef %166) #13
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  store i16 %167, ptr %168, align 2, !tbaa !34
  br label %169

169:                                              ; preds = %165, %162, %161
  br i1 %79, label %178, label %170

170:                                              ; preds = %169
  %171 = load i32, ptr %20, align 4, !tbaa !26
  %172 = icmp ne i32 %171, 12
  %173 = select i1 %172, i1 true, i1 %96
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds i16, ptr %92, i64 %98
  %176 = load float, ptr %80, align 8, !tbaa !62
  %177 = call fastcc zeroext i16 @ClampToQuantum(float noundef %176) #13
  store i16 %177, ptr %175, align 2, !tbaa !39
  br label %178

178:                                              ; preds = %174, %170, %169
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %180 = add nuw nsw i64 %98, 1
  %181 = load i64, ptr %57, align 8, !tbaa !38
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %97, label %183, !llvm.loop !126

183:                                              ; preds = %178, %91
  %184 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %50, ptr noundef nonnull %49) #16
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = load ptr, ptr %81, align 8, !tbaa !41
  %188 = icmp eq ptr %187, null
  br i1 %188, label %195, label %189

189:                                              ; preds = %183
  %190 = add nsw i64 %84, 1
  %191 = load i64, ptr %52, align 8, !tbaa !37
  %192 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef %84, i64 noundef %191) #13
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i32 0, i32 %186
  br label %195

195:                                              ; preds = %183, %189, %87, %82
  %196 = phi i64 [ %84, %82 ], [ %84, %87 ], [ %190, %189 ], [ %84, %183 ]
  %197 = phi i32 [ 0, %82 ], [ 0, %87 ], [ %194, %189 ], [ %186, %183 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  %198 = add nuw nsw i64 %85, 1
  %199 = load i64, ptr %52, align 8, !tbaa !37
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %82, label %201, !llvm.loop !127

201:                                              ; preds = %195, %47
  %202 = phi i32 [ 1, %47 ], [ %197, %195 ]
  %203 = call ptr @DestroyCacheView(ptr noundef %51) #15
  %204 = call ptr @DestroyCacheView(ptr noundef %50) #15
  br label %205

205:                                              ; preds = %16, %201
  %206 = phi i32 [ %202, %201 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret i32 %206
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeAreaBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #8 {
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
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %13, ptr noundef %2, float noundef %16, ptr noundef %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #15
  %7 = load double, ptr %3, align 8, !tbaa !70
  %8 = and i32 %6, 8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %11 = load double, ptr %10, align 8
  %12 = select i1 %9, double 6.553500e+04, double %11
  %13 = and i32 %6, 1
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 2
  %16 = load double, ptr %15, align 8
  %17 = select i1 %14, double 1.000000e+00, double %16
  %18 = and i32 %6, 4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load <2 x i64>, ptr %21, align 8, !tbaa !72
  %23 = uitofp <2 x i64> %22 to <2 x double>
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %25 = fmul <2 x double> %24, %23
  %26 = extractelement <2 x double> %25, i64 0
  %27 = fdiv double %26, 1.000000e+02
  %28 = fmul double %7, %27
  %29 = fmul double %12, %27
  br label %30

30:                                               ; preds = %20, %5
  %31 = phi double [ %28, %20 ], [ %7, %5 ]
  %32 = phi double [ %29, %20 ], [ %12, %5 ]
  %33 = fsub double 6.553500e+04, %31
  %34 = select i1 %9, double %33, double %32
  %35 = and i32 %6, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %31, double noundef %34, double noundef %17) #13, !range !5
  br label %41

39:                                               ; preds = %30
  %40 = call i32 @LevelizeImage(ptr noundef %0, double noundef %31, double noundef %34, double noundef %17) #13, !range !5
  br label %41

41:                                               ; preds = %37, %39, %2
  %42 = phi i32 [ 0, %2 ], [ %38, %37 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelizeImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3) #13, !range !5
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @LevelPixel(double noundef %0, double noundef %1, double noundef %2, float noundef %3) unnamed_addr #11 {
  %5 = fcmp une double %1, %0
  %6 = fsub double %1, %0
  %7 = fdiv double 1.000000e+00, %6
  %8 = select i1 %5, double %7, double 1.000000e+00
  %9 = fpext float %3 to double
  %10 = fsub double %9, %0
  %11 = fmul double %8, %10
  %12 = fdiv double 1.000000e+00, %2
  %13 = tail call fastcc double @gamma_pow(double noundef %11, double noundef %12) #13
  %14 = fmul double %13, 6.553500e+04
  ret double %14
}

; Function Attrs: optsize
declare i32 @ClampImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3141, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = load i32, ptr %0, align 8, !tbaa !28
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %97

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %17 = load i64, ptr %16, align 8, !tbaa !29
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = and i32 %1, 1
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %23 = fsub double %3, %2
  %24 = and i32 %1, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %1, 4
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %1, 8
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %19, %93
  %31 = phi i64 [ 0, %19 ], [ %94, %93 ]
  br i1 %21, label %46, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %22, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 %31, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !31
  %36 = uitofp i16 %35 to double
  %37 = fmul double %36, 0x3EF0001000100010
  %38 = tail call fastcc double @gamma_pow(double noundef %37, double noundef %4) #13
  %39 = fptrunc double %38 to float
  %40 = fpext float %39 to double
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %23, double %2)
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %42) #13
  %44 = load ptr, ptr %22, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %44, i64 %31, i32 2
  store i16 %43, ptr %45, align 2, !tbaa !31
  br label %46

46:                                               ; preds = %32, %30
  br i1 %25, label %61, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %22, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 %31, i32 1
  %50 = load i16, ptr %49, align 2, !tbaa !32
  %51 = uitofp i16 %50 to double
  %52 = fmul double %51, 0x3EF0001000100010
  %53 = tail call fastcc double @gamma_pow(double noundef %52, double noundef %4) #13
  %54 = fptrunc double %53 to float
  %55 = fpext float %54 to double
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %23, double %2)
  %57 = fptrunc double %56 to float
  %58 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %57) #13
  %59 = load ptr, ptr %22, align 8, !tbaa !30
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 %31, i32 1
  store i16 %58, ptr %60, align 2, !tbaa !32
  br label %61

61:                                               ; preds = %47, %46
  br i1 %27, label %76, label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %22, align 8, !tbaa !30
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 %31
  %65 = load i16, ptr %64, align 2, !tbaa !33
  %66 = uitofp i16 %65 to double
  %67 = fmul double %66, 0x3EF0001000100010
  %68 = tail call fastcc double @gamma_pow(double noundef %67, double noundef %4) #13
  %69 = fptrunc double %68 to float
  %70 = fpext float %69 to double
  %71 = tail call double @llvm.fmuladd.f64(double %70, double %23, double %2)
  %72 = fptrunc double %71 to float
  %73 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %72) #13
  %74 = load ptr, ptr %22, align 8, !tbaa !30
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 %31
  store i16 %73, ptr %75, align 2, !tbaa !33
  br label %76

76:                                               ; preds = %62, %61
  br i1 %29, label %93, label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %22, align 8, !tbaa !30
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 %31, i32 3
  %80 = load i16, ptr %79, align 2, !tbaa !34
  %81 = xor i16 %80, -1
  %82 = uitofp i16 %81 to double
  %83 = fmul double %82, 0x3EF0001000100010
  %84 = tail call fastcc double @gamma_pow(double noundef %83, double noundef %4) #13
  %85 = fptrunc double %84 to float
  %86 = fpext float %85 to double
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %23, double %2)
  %88 = fptrunc double %87 to float
  %89 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %88) #13
  %90 = xor i16 %89, -1
  %91 = load ptr, ptr %22, align 8, !tbaa !30
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %31, i32 3
  store i16 %90, ptr %92, align 2, !tbaa !34
  br label %93

93:                                               ; preds = %76, %77
  %94 = add nuw nsw i64 %31, 1
  %95 = load i64, ptr %16, align 8, !tbaa !29
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %30, label %97, !llvm.loop !128

97:                                               ; preds = %93, %15, %12
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %99 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %98) #15
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %101 = load i64, ptr %100, align 8, !tbaa !37
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %227

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %105 = and i32 %1, 1
  %106 = icmp eq i32 %105, 0
  %107 = fsub double %3, %2
  %108 = and i32 %1, 2
  %109 = icmp eq i32 %108, 0
  %110 = and i32 %1, 4
  %111 = icmp eq i32 %110, 0
  %112 = and i32 %1, 8
  %113 = icmp eq i32 %112, 0
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %115 = and i32 %1, 32
  %116 = icmp eq i32 %115, 0
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %119

119:                                              ; preds = %103, %221
  %120 = phi i32 [ 1, %103 ], [ %223, %221 ]
  %121 = phi i64 [ 0, %103 ], [ %224, %221 ]
  %122 = phi i64 [ 0, %103 ], [ %222, %221 ]
  %123 = icmp eq i32 %120, 0
  br i1 %123, label %221, label %124

124:                                              ; preds = %119
  %125 = load i64, ptr %104, align 8, !tbaa !38
  %126 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %99, i64 noundef 0, i64 noundef %121, i64 noundef %125, i64 noundef 1, ptr noundef nonnull %98) #16
  %127 = icmp eq ptr %126, null
  br i1 %127, label %221, label %128

128:                                              ; preds = %124
  %129 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %99) #15
  %130 = load i64, ptr %104, align 8, !tbaa !38
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %209

132:                                              ; preds = %128
  %133 = icmp eq ptr %129, null
  br label %134

134:                                              ; preds = %132, %204
  %135 = phi i64 [ 0, %132 ], [ %206, %204 ]
  %136 = phi ptr [ %126, %132 ], [ %205, %204 ]
  br i1 %106, label %148, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 2
  %139 = load i16, ptr %138, align 2, !tbaa !31
  %140 = uitofp i16 %139 to double
  %141 = fmul double %140, 0x3EF0001000100010
  %142 = tail call fastcc double @gamma_pow(double noundef %141, double noundef %4) #13
  %143 = fptrunc double %142 to float
  %144 = fpext float %143 to double
  %145 = tail call double @llvm.fmuladd.f64(double %144, double %107, double %2)
  %146 = fptrunc double %145 to float
  %147 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %146) #13
  store i16 %147, ptr %138, align 2, !tbaa !31
  br label %148

148:                                              ; preds = %137, %134
  br i1 %109, label %160, label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 1
  %151 = load i16, ptr %150, align 2, !tbaa !32
  %152 = uitofp i16 %151 to double
  %153 = fmul double %152, 0x3EF0001000100010
  %154 = tail call fastcc double @gamma_pow(double noundef %153, double noundef %4) #13
  %155 = fptrunc double %154 to float
  %156 = fpext float %155 to double
  %157 = tail call double @llvm.fmuladd.f64(double %156, double %107, double %2)
  %158 = fptrunc double %157 to float
  %159 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %158) #13
  store i16 %159, ptr %150, align 2, !tbaa !32
  br label %160

160:                                              ; preds = %149, %148
  br i1 %111, label %171, label %161

161:                                              ; preds = %160
  %162 = load i16, ptr %136, align 2, !tbaa !33
  %163 = uitofp i16 %162 to double
  %164 = fmul double %163, 0x3EF0001000100010
  %165 = tail call fastcc double @gamma_pow(double noundef %164, double noundef %4) #13
  %166 = fptrunc double %165 to float
  %167 = fpext float %166 to double
  %168 = tail call double @llvm.fmuladd.f64(double %167, double %107, double %2)
  %169 = fptrunc double %168 to float
  %170 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %169) #13
  store i16 %170, ptr %136, align 2, !tbaa !33
  br label %171

171:                                              ; preds = %161, %160
  br i1 %113, label %188, label %172

172:                                              ; preds = %171
  %173 = load i32, ptr %114, align 8, !tbaa !10
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %188, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 3
  %177 = load i16, ptr %176, align 2, !tbaa !34
  %178 = xor i16 %177, -1
  %179 = uitofp i16 %178 to double
  %180 = fmul double %179, 0x3EF0001000100010
  %181 = tail call fastcc double @gamma_pow(double noundef %180, double noundef %4) #13
  %182 = fptrunc double %181 to float
  %183 = fpext float %182 to double
  %184 = tail call double @llvm.fmuladd.f64(double %183, double %107, double %2)
  %185 = fptrunc double %184 to float
  %186 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %185) #13
  %187 = xor i16 %186, -1
  store i16 %187, ptr %176, align 2, !tbaa !34
  br label %188

188:                                              ; preds = %175, %172, %171
  br i1 %116, label %204, label %189

189:                                              ; preds = %188
  %190 = load i32, ptr %117, align 4, !tbaa !26
  %191 = icmp ne i32 %190, 12
  %192 = select i1 %191, i1 true, i1 %133
  br i1 %192, label %204, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds i16, ptr %129, i64 %135
  %195 = load i16, ptr %194, align 2, !tbaa !39
  %196 = uitofp i16 %195 to double
  %197 = fmul double %196, 0x3EF0001000100010
  %198 = tail call fastcc double @gamma_pow(double noundef %197, double noundef %4) #13
  %199 = fptrunc double %198 to float
  %200 = fpext float %199 to double
  %201 = tail call double @llvm.fmuladd.f64(double %200, double %107, double %2)
  %202 = fptrunc double %201 to float
  %203 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %202) #13
  store i16 %203, ptr %194, align 2, !tbaa !39
  br label %204

204:                                              ; preds = %193, %189, %188
  %205 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 1
  %206 = add nuw nsw i64 %135, 1
  %207 = load i64, ptr %104, align 8, !tbaa !38
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %134, label %209, !llvm.loop !129

209:                                              ; preds = %204, %128
  %210 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %99, ptr noundef nonnull %98) #16
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i32
  %213 = load ptr, ptr %118, align 8, !tbaa !41
  %214 = icmp eq ptr %213, null
  br i1 %214, label %221, label %215

215:                                              ; preds = %209
  %216 = add nsw i64 %122, 1
  %217 = load i64, ptr %100, align 8, !tbaa !37
  %218 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, i64 noundef %122, i64 noundef %217) #13
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %219, i32 0, i32 %212
  br label %221

221:                                              ; preds = %209, %215, %124, %119
  %222 = phi i64 [ %122, %119 ], [ %122, %124 ], [ %216, %215 ], [ %122, %209 ]
  %223 = phi i32 [ 0, %119 ], [ 0, %124 ], [ %220, %215 ], [ %212, %209 ]
  %224 = add nuw nsw i64 %121, 1
  %225 = load i64, ptr %100, align 8, !tbaa !37
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %119, label %227, !llvm.loop !130

227:                                              ; preds = %221, %97
  %228 = phi i32 [ 1, %97 ], [ %223, %221 ]
  %229 = tail call ptr @DestroyCacheView(ptr noundef %99) #15
  ret i32 %228
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @gamma_pow(double noundef %0, double noundef %1) unnamed_addr #11 {
  %3 = fcmp olt double %0, 0.000000e+00
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call double @pow(double noundef %0, double noundef %1) #15
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi double [ %5, %4 ], [ %0, %2 ]
  ret double %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelColorsImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @LevelColorsImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13, !range !5
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelColorsImageChannel(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3294, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !26
  %15 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %14) #13, !range !5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !66
  %20 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %19) #13, !range !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !66
  %25 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %24) #13, !range !5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %17
  %28 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #15
  br label %29

29:                                               ; preds = %27, %22, %12
  %30 = icmp eq i32 %4, 0
  %31 = and i32 %1, 1
  %32 = icmp eq i32 %31, 0
  br i1 %30, label %33, label %101

33:                                               ; preds = %29
  br i1 %32, label %42, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %36 = load float, ptr %35, align 8, !tbaa !56
  %37 = fpext float %36 to double
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %39 = load float, ptr %38, align 8, !tbaa !56
  %40 = fpext float %39 to double
  %41 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 1, double noundef %37, double noundef %40, double noundef 1.000000e+00) #13, !range !5
  br label %42

42:                                               ; preds = %34, %33
  %43 = phi i32 [ %41, %34 ], [ 1, %33 ]
  %44 = and i32 %1, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %48 = load float, ptr %47, align 4, !tbaa !59
  %49 = fpext float %48 to double
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %51 = load float, ptr %50, align 4, !tbaa !59
  %52 = fpext float %51 to double
  %53 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 2, double noundef %49, double noundef %52, double noundef 1.000000e+00) #13, !range !5
  %54 = and i32 %53, %43
  br label %55

55:                                               ; preds = %46, %42
  %56 = phi i32 [ %54, %46 ], [ %43, %42 ]
  %57 = and i32 %1, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %61 = load float, ptr %60, align 8, !tbaa !60
  %62 = fpext float %61 to double
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 4, double noundef %62, double noundef %65, double noundef 1.000000e+00) #13, !range !5
  %67 = and i32 %66, %56
  br label %68

68:                                               ; preds = %59, %55
  %69 = phi i32 [ %67, %59 ], [ %56, %55 ]
  %70 = and i32 %1, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %78 = load float, ptr %77, align 4, !tbaa !61
  %79 = fpext float %78 to double
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %81 = load float, ptr %80, align 4, !tbaa !61
  %82 = fpext float %81 to double
  %83 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef %79, double noundef %82, double noundef 1.000000e+00) #13, !range !5
  %84 = and i32 %83, %69
  br label %85

85:                                               ; preds = %76, %72, %68
  %86 = phi i32 [ %84, %76 ], [ %69, %72 ], [ %69, %68 ]
  %87 = and i32 %1, 32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %169, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %13, align 4, !tbaa !26
  %91 = icmp eq i32 %90, 12
  br i1 %91, label %92, label %169

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %94 = load float, ptr %93, align 8, !tbaa !62
  %95 = fpext float %94 to double
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %97 = load float, ptr %96, align 8, !tbaa !62
  %98 = fpext float %97 to double
  %99 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 32, double noundef %95, double noundef %98, double noundef 1.000000e+00) #13, !range !5
  %100 = and i32 %99, %86
  br label %169

101:                                              ; preds = %29
  br i1 %32, label %110, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %104 = load float, ptr %103, align 8, !tbaa !56
  %105 = fpext float %104 to double
  %106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %107 = load float, ptr %106, align 8, !tbaa !56
  %108 = fpext float %107 to double
  %109 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 1, double noundef %105, double noundef %108, double noundef 1.000000e+00) #13, !range !5
  br label %110

110:                                              ; preds = %102, %101
  %111 = phi i32 [ %109, %102 ], [ 1, %101 ]
  %112 = and i32 %1, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %116 = load float, ptr %115, align 4, !tbaa !59
  %117 = fpext float %116 to double
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %119 = load float, ptr %118, align 4, !tbaa !59
  %120 = fpext float %119 to double
  %121 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 2, double noundef %117, double noundef %120, double noundef 1.000000e+00) #13, !range !5
  %122 = and i32 %121, %111
  br label %123

123:                                              ; preds = %114, %110
  %124 = phi i32 [ %122, %114 ], [ %111, %110 ]
  %125 = and i32 %1, 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %129 = load float, ptr %128, align 8, !tbaa !60
  %130 = fpext float %129 to double
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %132 = load float, ptr %131, align 8, !tbaa !60
  %133 = fpext float %132 to double
  %134 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 4, double noundef %130, double noundef %133, double noundef 1.000000e+00) #13, !range !5
  %135 = and i32 %134, %124
  br label %136

136:                                              ; preds = %127, %123
  %137 = phi i32 [ %135, %127 ], [ %124, %123 ]
  %138 = and i32 %1, 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !10
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %146 = load float, ptr %145, align 4, !tbaa !61
  %147 = fpext float %146 to double
  %148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %149 = load float, ptr %148, align 4, !tbaa !61
  %150 = fpext float %149 to double
  %151 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef %147, double noundef %150, double noundef 1.000000e+00) #13, !range !5
  %152 = and i32 %151, %137
  br label %153

153:                                              ; preds = %144, %140, %136
  %154 = phi i32 [ %152, %144 ], [ %137, %140 ], [ %137, %136 ]
  %155 = and i32 %1, 32
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %13, align 4, !tbaa !26
  %159 = icmp eq i32 %158, 12
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %162 = load float, ptr %161, align 8, !tbaa !62
  %163 = fpext float %162 to double
  %164 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %165 = load float, ptr %164, align 8, !tbaa !62
  %166 = fpext float %165 to double
  %167 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 32, double noundef %163, double noundef %166, double noundef 1.000000e+00) #13, !range !5
  %168 = and i32 %167, %154
  br label %169

169:                                              ; preds = %153, %157, %160, %85, %89, %92
  %170 = phi i32 [ %100, %92 ], [ %86, %89 ], [ %86, %85 ], [ %168, %160 ], [ %154, %157 ], [ %154, %153 ]
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i32
  ret i32 %172
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LinearStretchImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call dereferenceable_or_null(262144) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 4) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %75, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3400, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #15
  br label %75

12:                                               ; preds = %3
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 262144) #15
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !37
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %12, %40
  %20 = phi i64 [ %41, %40 ], [ 0, %12 ]
  %21 = load i64, ptr %15, align 8, !tbaa !38
  %22 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %20, i64 noundef %21, i64 noundef 1, ptr noundef nonnull %14) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = load i64, ptr %15, align 8, !tbaa !38
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24, %27
  %28 = phi i64 [ %30, %27 ], [ %25, %24 ]
  %29 = phi ptr [ %38, %27 ], [ %22, %24 ]
  %30 = add nsw i64 %28, -1
  %31 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %29) #16
  %32 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %31) #13
  %33 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %32) #13, !range !49
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %4, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !65
  %37 = fadd float %36, 1.000000e+00
  store float %37, ptr %35, align 4, !tbaa !65
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 1
  %39 = icmp ugt i64 %28, 1
  br i1 %39, label %27, label %40, !llvm.loop !131

40:                                               ; preds = %27, %24
  %41 = add nuw nsw i64 %20, 1
  %42 = load i64, ptr %16, align 8, !tbaa !37
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %19, label %44, !llvm.loop !132

44:                                               ; preds = %40, %19, %12
  br label %45

45:                                               ; preds = %44, %53
  %46 = phi i64 [ %54, %53 ], [ 0, %44 ]
  %47 = phi float [ %50, %53 ], [ 0.000000e+00, %44 ]
  %48 = getelementptr inbounds float, ptr %4, i64 %46
  %49 = load float, ptr %48, align 4, !tbaa !65
  %50 = fadd float %47, %49
  %51 = fpext float %50 to double
  %52 = fcmp ult double %51, %1
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = add nuw nsw i64 %46, 1
  %55 = icmp eq i64 %54, 65535
  br i1 %55, label %56, label %45, !llvm.loop !133

56:                                               ; preds = %45, %53
  %57 = phi i64 [ %46, %45 ], [ 65535, %53 ]
  br label %58

58:                                               ; preds = %56, %66
  %59 = phi i64 [ 65535, %56 ], [ %67, %66 ]
  %60 = phi float [ 0.000000e+00, %56 ], [ %63, %66 ]
  %61 = getelementptr inbounds float, ptr %4, i64 %59
  %62 = load float, ptr %61, align 4, !tbaa !65
  %63 = fadd float %60, %62
  %64 = fpext float %63 to double
  %65 = fcmp ult double %64, %2
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = add nsw i64 %59, -1
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %58, !llvm.loop !134

69:                                               ; preds = %58, %66
  %70 = phi i64 [ %59, %58 ], [ 0, %66 ]
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #15
  %72 = sitofp i64 %57 to double
  %73 = sitofp i64 %70 to double
  %74 = tail call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %72, double noundef %73, double noundef 1.000000e+00) #13, !range !5
  br label %75

75:                                               ; preds = %6, %8, %69
  %76 = phi i32 [ %74, %69 ], [ 0, %8 ], [ 0, %6 ]
  ret i32 %76
}

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ModulateImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3728, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %152, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !26
  %21 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %20) #13, !range !5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #15
  br label %25

25:                                               ; preds = %23, %18
  %26 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #15
  %27 = load double, ptr %3, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !111
  %30 = and i32 %26, 8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, double 1.000000e+02, double %29
  %33 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 2
  %34 = load double, ptr %33, align 8, !tbaa !112
  %35 = and i32 %26, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, double 1.000000e+02, double %34
  %38 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = call i64 @ParseCommandOption(i32 noundef 9, i32 noundef 0, ptr noundef nonnull %38) #15
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %40, %25
  %44 = phi i32 [ %42, %40 ], [ 0, %25 ]
  %45 = load i32, ptr %0, align 8, !tbaa !28
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %49 = load i64, ptr %48, align 8, !tbaa !29
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !30
  br label %54

54:                                               ; preds = %51, %72
  %55 = phi ptr [ %53, %51 ], [ %74, %72 ]
  %56 = phi i64 [ 0, %51 ], [ %80, %72 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %56, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !31
  store i16 %58, ptr %6, align 2, !tbaa !39
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %56, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !32
  store i16 %60, ptr %5, align 2, !tbaa !39
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %56
  %62 = load i16, ptr %61, align 2, !tbaa !33
  store i16 %62, ptr %4, align 2, !tbaa !39
  switch i32 %44, label %67 [
    i32 24, label %63
    i32 32, label %64
    i32 14, label %65
    i32 30, label %66
    i32 28, label %71
    i32 31, label %68
    i32 16, label %69
    i32 27, label %70
    i32 25, label %70
  ]

63:                                               ; preds = %54
  call fastcc void @ModulateHCL(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

64:                                               ; preds = %54
  call fastcc void @ModulateHCLp(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

65:                                               ; preds = %54
  call fastcc void @ModulateHSB(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

66:                                               ; preds = %54
  call fastcc void @ModulateHSI(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

67:                                               ; preds = %54
  call fastcc void @ModulateHSL(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

68:                                               ; preds = %54
  call fastcc void @ModulateHSV(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

69:                                               ; preds = %54
  call fastcc void @ModulateHWB(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

70:                                               ; preds = %54, %54
  call fastcc void @ModulateLCHab(double noundef %27, double noundef %32, double noundef %37, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

71:                                               ; preds = %54
  call fastcc void @ModulateLCHuv(double noundef %27, double noundef %32, double noundef %37, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %72

72:                                               ; preds = %71, %70, %69, %68, %67, %66, %65, %64, %63
  %73 = load i16, ptr %6, align 2, !tbaa !39
  %74 = load ptr, ptr %52, align 8, !tbaa !30
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 %56, i32 2
  store i16 %73, ptr %75, align 2, !tbaa !31
  %76 = load i16, ptr %5, align 2, !tbaa !39
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 %56, i32 1
  store i16 %76, ptr %77, align 2, !tbaa !32
  %78 = load i16, ptr %4, align 2, !tbaa !39
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 %56
  store i16 %78, ptr %79, align 2, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  %80 = add nuw nsw i64 %56, 1
  %81 = load i64, ptr %48, align 8, !tbaa !29
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %54, label %83, !llvm.loop !135

83:                                               ; preds = %72, %47, %43
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %85 = call i32 @AccelerateModulateImage(ptr noundef nonnull %0, double noundef %27, double noundef %37, double noundef %32, i32 noundef %44, ptr noundef nonnull %84) #15
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %152

87:                                               ; preds = %83
  %88 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %84) #15
  %89 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %90 = load i64, ptr %89, align 8, !tbaa !37
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %149

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %95

95:                                               ; preds = %92, %143
  %96 = phi i64 [ 0, %92 ], [ %146, %143 ]
  %97 = phi i64 [ 0, %92 ], [ %145, %143 ]
  %98 = phi i32 [ 1, %92 ], [ %144, %143 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %143, label %100

100:                                              ; preds = %95
  %101 = load i64, ptr %93, align 8, !tbaa !38
  %102 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %88, i64 noundef 0, i64 noundef %96, i64 noundef %101, i64 noundef 1, ptr noundef nonnull %84) #16
  %103 = icmp eq ptr %102, null
  br i1 %103, label %143, label %104

104:                                              ; preds = %100
  %105 = load i64, ptr %93, align 8, !tbaa !38
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %104, %123
  %108 = phi i64 [ %128, %123 ], [ 0, %104 ]
  %109 = phi ptr [ %127, %123 ], [ %102, %104 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #14
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 2
  %111 = load i16, ptr %110, align 2, !tbaa !31
  store i16 %111, ptr %9, align 2, !tbaa !39
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 1
  %113 = load i16, ptr %112, align 2, !tbaa !32
  store i16 %113, ptr %8, align 2, !tbaa !39
  %114 = load i16, ptr %109, align 2, !tbaa !33
  store i16 %114, ptr %7, align 2, !tbaa !39
  switch i32 %44, label %118 [
    i32 24, label %115
    i32 32, label %116
    i32 14, label %117
    i32 28, label %122
    i32 31, label %119
    i32 16, label %120
    i32 27, label %121
    i32 25, label %122
  ]

115:                                              ; preds = %107
  call fastcc void @ModulateHCL(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br label %123

116:                                              ; preds = %107
  call fastcc void @ModulateHCLp(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br label %123

117:                                              ; preds = %107
  call fastcc void @ModulateHSB(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br label %123

118:                                              ; preds = %107
  call fastcc void @ModulateHSL(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br label %123

119:                                              ; preds = %107
  call fastcc void @ModulateHSV(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br label %123

120:                                              ; preds = %107
  call fastcc void @ModulateHWB(double noundef %37, double noundef %32, double noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br label %123

121:                                              ; preds = %107
  call fastcc void @ModulateLCHab(double noundef %27, double noundef %32, double noundef %37, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br label %123

122:                                              ; preds = %107, %107
  call fastcc void @ModulateLCHuv(double noundef %27, double noundef %32, double noundef %37, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  br label %123

123:                                              ; preds = %122, %121, %120, %119, %118, %117, %116, %115
  %124 = load i16, ptr %9, align 2, !tbaa !39
  store i16 %124, ptr %110, align 2, !tbaa !31
  %125 = load i16, ptr %8, align 2, !tbaa !39
  store i16 %125, ptr %112, align 2, !tbaa !32
  %126 = load i16, ptr %7, align 2, !tbaa !39
  store i16 %126, ptr %109, align 2, !tbaa !33
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  %128 = add nuw nsw i64 %108, 1
  %129 = load i64, ptr %93, align 8, !tbaa !38
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %107, label %131, !llvm.loop !136

131:                                              ; preds = %123, %104
  %132 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %88, ptr noundef nonnull %84) #16
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = load ptr, ptr %94, align 8, !tbaa !41
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = add nsw i64 %97, 1
  %139 = load i64, ptr %89, align 8, !tbaa !37
  %140 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, i64 noundef %97, i64 noundef %139) #13
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 0, i32 %134
  br label %143

143:                                              ; preds = %131, %137, %100, %95
  %144 = phi i32 [ 0, %95 ], [ 0, %100 ], [ %142, %137 ], [ %134, %131 ]
  %145 = phi i64 [ %97, %95 ], [ %97, %100 ], [ %138, %137 ], [ %97, %131 ]
  %146 = add nuw nsw i64 %96, 1
  %147 = load i64, ptr %89, align 8, !tbaa !37
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %95, label %149, !llvm.loop !137

149:                                              ; preds = %143, %87
  %150 = phi i32 [ 1, %87 ], [ %144, %143 ]
  %151 = call ptr @DestroyCacheView(ptr noundef %88) #15
  br label %152

152:                                              ; preds = %83, %16, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %16 ], [ %85, %83 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret i32 %153
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IssRGBCompatibleColorspace(i32 noundef %0) unnamed_addr #6 {
  switch i32 %0, label %2 [
    i32 29, label %4
    i32 13, label %4
    i32 3, label %4
    i32 1, label %4
  ]

2:                                                ; preds = %1
  %3 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %0) #13, !range !5
  br label %4

4:                                                ; preds = %2, %1, %1, %1, %1
  %5 = phi i32 [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ %3, %2 ]
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHCL(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToHCL(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %7, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %7, align 8, !tbaa !6
  %19 = fcmp ogt double %18, 1.000000e+00
  br i1 %19, label %24, label %29

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !138

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ogt double %26, 1.000000e+00
  br i1 %27, label %24, label %28, !llvm.loop !139

28:                                               ; preds = %24
  store double %26, ptr %7, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %8, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %8, align 8, !tbaa !6
  call void @ConvertHCLToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHCLp(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToHCLp(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %7, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %7, align 8, !tbaa !6
  %19 = fcmp ogt double %18, 1.000000e+00
  br i1 %19, label %24, label %29

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !140

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ogt double %26, 1.000000e+00
  br i1 %27, label %24, label %28, !llvm.loop !141

28:                                               ; preds = %24
  store double %26, ptr %7, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %8, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %8, align 8, !tbaa !6
  call void @ConvertHCLpToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHSB(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToHSB(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #15
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %8, align 8, !tbaa !6
  %19 = fcmp ogt double %18, 1.000000e+00
  br i1 %19, label %24, label %29

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !142

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ogt double %26, 1.000000e+00
  br i1 %27, label %24, label %28, !llvm.loop !143

28:                                               ; preds = %24
  store double %26, ptr %8, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %7, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %7, align 8, !tbaa !6
  call void @ConvertHSBToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHSI(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToHSI(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #15
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %8, align 8, !tbaa !6
  %19 = fcmp ogt double %18, 1.000000e+00
  br i1 %19, label %24, label %29

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !144

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ogt double %26, 1.000000e+00
  br i1 %27, label %24, label %28, !llvm.loop !145

28:                                               ; preds = %24
  store double %26, ptr %8, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %7, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %7, align 8, !tbaa !6
  call void @ConvertHSIToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHSL(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToHSL(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %7, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %7, align 8, !tbaa !6
  %19 = fcmp ult double %18, 1.000000e+00
  br i1 %19, label %29, label %24

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !146

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ult double %26, 1.000000e+00
  br i1 %27, label %28, label %24, !llvm.loop !147

28:                                               ; preds = %24
  store double %26, ptr %7, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %8, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %8, align 8, !tbaa !6
  call void @ConvertHSLToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHSV(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToHSV(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %7, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %7, align 8, !tbaa !6
  %19 = fcmp ult double %18, 1.000000e+00
  br i1 %19, label %29, label %24

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !148

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ult double %26, 1.000000e+00
  br i1 %27, label %28, label %24, !llvm.loop !149

28:                                               ; preds = %24
  store double %26, ptr %7, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %8, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %8, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %9, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %9, align 8, !tbaa !6
  call void @ConvertHSVToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHWB(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToHWB(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #15
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %8, align 8, !tbaa !6
  %19 = fcmp ult double %18, 1.000000e+00
  br i1 %19, label %29, label %24

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !150

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ult double %26, 1.000000e+00
  br i1 %27, label %28, label %24, !llvm.loop !151

28:                                               ; preds = %24
  store double %26, ptr %8, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %2, 1.000000e-02
  %32 = load double, ptr %7, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %7, align 8, !tbaa !6
  %34 = fmul double %1, 1.000000e-02
  %35 = load double, ptr %9, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %9, align 8, !tbaa !6
  call void @ConvertHWBToRGB(double noundef %30, double noundef %36, double noundef %33, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateLCHab(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToLCHab(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #15
  %13 = fmul double %0, 1.000000e-02
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = fmul double %13, %14
  store double %15, ptr %8, align 8, !tbaa !6
  %16 = fmul double %1, 1.000000e-02
  %17 = load double, ptr %9, align 8, !tbaa !6
  %18 = fmul double %16, %17
  store double %18, ptr %9, align 8, !tbaa !6
  %19 = call double @llvm.fmuladd.f64(double %2, double 1.000000e-02, double -1.000000e+00)
  %20 = load double, ptr %7, align 8, !tbaa !6
  %21 = call double @llvm.fmuladd.f64(double %19, double 5.000000e-01, double %20)
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %26, %6
  %24 = phi double [ %21, %6 ], [ %28, %26 ]
  store double %24, ptr %7, align 8, !tbaa !6
  %25 = fcmp ult double %24, 1.000000e+00
  br i1 %25, label %35, label %30

26:                                               ; preds = %6, %26
  %27 = phi double [ %28, %26 ], [ %21, %6 ]
  %28 = fadd double %27, 1.000000e+00
  %29 = fcmp olt double %28, 0.000000e+00
  br i1 %29, label %26, label %23, !llvm.loop !152

30:                                               ; preds = %23, %30
  %31 = phi double [ %32, %30 ], [ %24, %23 ]
  %32 = fadd double %31, -1.000000e+00
  %33 = fcmp ult double %32, 1.000000e+00
  br i1 %33, label %34, label %30, !llvm.loop !153

34:                                               ; preds = %30
  store double %32, ptr %7, align 8, !tbaa !6
  br label %35

35:                                               ; preds = %34, %23
  %36 = phi double [ %32, %34 ], [ %24, %23 ]
  call void @ConvertLCHabToRGB(double noundef %15, double noundef %18, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateLCHuv(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !39
  %11 = load i16, ptr %4, align 2, !tbaa !39
  %12 = load i16, ptr %5, align 2, !tbaa !39
  call void @ConvertRGBToLCHuv(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #15
  %13 = fmul double %0, 1.000000e-02
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = fmul double %13, %14
  store double %15, ptr %8, align 8, !tbaa !6
  %16 = fmul double %1, 1.000000e-02
  %17 = load double, ptr %9, align 8, !tbaa !6
  %18 = fmul double %16, %17
  store double %18, ptr %9, align 8, !tbaa !6
  %19 = call double @llvm.fmuladd.f64(double %2, double 1.000000e-02, double -1.000000e+00)
  %20 = load double, ptr %7, align 8, !tbaa !6
  %21 = call double @llvm.fmuladd.f64(double %19, double 5.000000e-01, double %20)
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %26, %6
  %24 = phi double [ %21, %6 ], [ %28, %26 ]
  store double %24, ptr %7, align 8, !tbaa !6
  %25 = fcmp ult double %24, 1.000000e+00
  br i1 %25, label %35, label %30

26:                                               ; preds = %6, %26
  %27 = phi double [ %28, %26 ], [ %21, %6 ]
  %28 = fadd double %27, 1.000000e+00
  %29 = fcmp olt double %28, 0.000000e+00
  br i1 %29, label %26, label %23, !llvm.loop !154

30:                                               ; preds = %23, %30
  %31 = phi double [ %32, %30 ], [ %24, %23 ]
  %32 = fadd double %31, -1.000000e+00
  %33 = fcmp ult double %32, 1.000000e+00
  br i1 %33, label %34, label %30, !llvm.loop !155

34:                                               ; preds = %30
  store double %32, ptr %7, align 8, !tbaa !6
  br label %35

35:                                               ; preds = %34, %23
  %36 = phi double [ %32, %34 ], [ %24, %23 ]
  call void @ConvertLCHuvToRGB(double noundef %15, double noundef %18, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: optsize
declare i32 @AccelerateModulateImage(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NegateImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @NegateImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1) #13, !range !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NegateImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !27
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4011, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i32, ptr %0, align 8, !tbaa !28
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = icmp eq i32 %2, 0
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %20 = and i32 %1, 1
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %1, 2
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %1, 4
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %17, %57
  %27 = phi i64 [ 0, %17 ], [ %58, %57 ]
  br i1 %18, label %39, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %19, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 %27, i32 2
  %31 = load i16, ptr %30, align 2, !tbaa !31
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 %27, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !32
  %34 = icmp eq i16 %31, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 %27
  %37 = load i16, ptr %36, align 2, !tbaa !33
  %38 = icmp eq i16 %31, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35, %26
  br i1 %21, label %45, label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %19, align 8, !tbaa !30
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 %27, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !31
  %44 = xor i16 %43, -1
  store i16 %44, ptr %42, align 2, !tbaa !31
  br label %45

45:                                               ; preds = %40, %39
  br i1 %23, label %51, label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr %19, align 8, !tbaa !30
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 %27, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !32
  %50 = xor i16 %49, -1
  store i16 %50, ptr %48, align 2, !tbaa !32
  br label %51

51:                                               ; preds = %46, %45
  br i1 %25, label %57, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %19, align 8, !tbaa !30
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %27
  %55 = load i16, ptr %54, align 2, !tbaa !33
  %56 = xor i16 %55, -1
  store i16 %56, ptr %54, align 2, !tbaa !33
  br label %57

57:                                               ; preds = %51, %52, %28, %35
  %58 = add nuw nsw i64 %27, 1
  %59 = icmp eq i64 %58, %15
  br i1 %59, label %60, label %26, !llvm.loop !156

60:                                               ; preds = %57, %13, %10
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %62 = tail call i32 @AccelerateNegateImageChannel(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %61) #15
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %259, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %61) #15
  %66 = icmp eq i32 %2, 0
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %68 = load i64, ptr %67, align 8, !tbaa !37
  %69 = icmp sgt i64 %68, 0
  br i1 %66, label %85, label %70

70:                                               ; preds = %64
  br i1 %69, label %71, label %256

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %73 = and i32 %1, 1
  %74 = icmp eq i32 %73, 0
  %75 = and i32 %1, 2
  %76 = icmp eq i32 %75, 0
  %77 = and i32 %1, 4
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %1, 8
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %1, 32
  %82 = icmp eq i32 %81, 0
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %101

85:                                               ; preds = %64
  br i1 %69, label %86, label %256

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %88 = icmp eq i32 %1, 134217719
  %89 = and i32 %1, 1
  %90 = icmp eq i32 %89, 0
  %91 = and i32 %1, 2
  %92 = icmp eq i32 %91, 0
  %93 = and i32 %1, 4
  %94 = icmp eq i32 %93, 0
  %95 = and i32 %1, 8
  %96 = icmp eq i32 %95, 0
  %97 = and i32 %1, 32
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %172

101:                                              ; preds = %71, %166
  %102 = phi i32 [ 1, %71 ], [ %168, %166 ]
  %103 = phi i64 [ 0, %71 ], [ %167, %166 ]
  %104 = phi i64 [ 0, %71 ], [ %169, %166 ]
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %166, label %106

106:                                              ; preds = %101
  %107 = load i64, ptr %72, align 8, !tbaa !38
  %108 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %65, i64 noundef 0, i64 noundef %104, i64 noundef %107, i64 noundef 1, ptr noundef nonnull %61) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %166, label %110

110:                                              ; preds = %106
  %111 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #15
  %112 = load i64, ptr %72, align 8, !tbaa !38
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %110
  %115 = icmp eq ptr %111, null
  br label %116

116:                                              ; preds = %114, %150
  %117 = phi i64 [ 0, %114 ], [ %152, %150 ]
  %118 = phi ptr [ %108, %114 ], [ %151, %150 ]
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 2
  %120 = load i16, ptr %119, align 2, !tbaa !31
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 1
  %122 = load i16, ptr %121, align 2, !tbaa !32
  %123 = icmp eq i16 %120, %122
  br i1 %123, label %124, label %150

124:                                              ; preds = %116
  %125 = load i16, ptr %118, align 2, !tbaa !33
  %126 = icmp eq i16 %120, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %124
  br i1 %74, label %130, label %128

128:                                              ; preds = %127
  %129 = xor i16 %120, -1
  store i16 %129, ptr %119, align 2, !tbaa !31
  br label %130

130:                                              ; preds = %128, %127
  br i1 %76, label %133, label %131

131:                                              ; preds = %130
  %132 = xor i16 %120, -1
  store i16 %132, ptr %121, align 2, !tbaa !32
  br label %133

133:                                              ; preds = %131, %130
  br i1 %78, label %136, label %134

134:                                              ; preds = %133
  %135 = xor i16 %120, -1
  store i16 %135, ptr %118, align 2, !tbaa !33
  br label %136

136:                                              ; preds = %134, %133
  br i1 %80, label %141, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 3
  %139 = load i16, ptr %138, align 2, !tbaa !34
  %140 = xor i16 %139, -1
  store i16 %140, ptr %138, align 2, !tbaa !34
  br label %141

141:                                              ; preds = %137, %136
  br i1 %82, label %150, label %142

142:                                              ; preds = %141
  %143 = load i32, ptr %83, align 4, !tbaa !26
  %144 = icmp ne i32 %143, 12
  %145 = select i1 %144, i1 true, i1 %115
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds i16, ptr %111, i64 %117
  %148 = load i16, ptr %147, align 2, !tbaa !39
  %149 = xor i16 %148, -1
  store i16 %149, ptr %147, align 2, !tbaa !39
  br label %150

150:                                              ; preds = %141, %142, %146, %116, %124
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 1
  %152 = add nuw nsw i64 %117, 1
  %153 = icmp eq i64 %152, %112
  br i1 %153, label %154, label %116, !llvm.loop !157

154:                                              ; preds = %150, %110
  %155 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %65, ptr noundef nonnull %61) #16
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = load ptr, ptr %84, align 8, !tbaa !41
  %159 = icmp eq ptr %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = add nsw i64 %103, 1
  %162 = load i64, ptr %67, align 8, !tbaa !37
  %163 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, i64 noundef %103, i64 noundef %162) #13
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %164, i32 0, i32 %157
  br label %166

166:                                              ; preds = %154, %160, %106, %101
  %167 = phi i64 [ %103, %101 ], [ %103, %106 ], [ %161, %160 ], [ %103, %154 ]
  %168 = phi i32 [ 0, %101 ], [ 0, %106 ], [ %165, %160 ], [ %157, %154 ]
  %169 = add nuw nsw i64 %104, 1
  %170 = load i64, ptr %67, align 8, !tbaa !37
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %101, label %256, !llvm.loop !158

172:                                              ; preds = %86, %250
  %173 = phi i32 [ 1, %86 ], [ %252, %250 ]
  %174 = phi i64 [ 0, %86 ], [ %251, %250 ]
  %175 = phi i64 [ 0, %86 ], [ %253, %250 ]
  %176 = icmp eq i32 %173, 0
  br i1 %176, label %250, label %177

177:                                              ; preds = %172
  %178 = load i64, ptr %87, align 8, !tbaa !38
  %179 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %65, i64 noundef 0, i64 noundef %175, i64 noundef %178, i64 noundef 1, ptr noundef nonnull %61) #16
  %180 = icmp eq ptr %179, null
  br i1 %180, label %250, label %181

181:                                              ; preds = %177
  %182 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #15
  %183 = load i64, ptr %87, align 8, !tbaa !38
  %184 = icmp sgt i64 %183, 0
  br i1 %88, label %186, label %185

185:                                              ; preds = %181
  br i1 %184, label %197, label %221

186:                                              ; preds = %181
  br i1 %184, label %187, label %222

187:                                              ; preds = %186, %187
  %188 = phi i64 [ %195, %187 ], [ 0, %186 ]
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 %188
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 %188, i32 2
  %191 = load i16, ptr %190, align 2, !tbaa !31
  %192 = xor i16 %191, -1
  store i16 %192, ptr %190, align 2, !tbaa !31
  %193 = load <2 x i16>, ptr %189, align 2, !tbaa !39
  %194 = xor <2 x i16> %193, <i16 -1, i16 -1>
  store <2 x i16> %194, ptr %189, align 2, !tbaa !39
  %195 = add nuw nsw i64 %188, 1
  %196 = icmp eq i64 %195, %183
  br i1 %196, label %221, label %187, !llvm.loop !159

197:                                              ; preds = %185, %218
  %198 = phi i64 [ %219, %218 ], [ 0, %185 ]
  br i1 %90, label %203, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 %198, i32 2
  %201 = load i16, ptr %200, align 2, !tbaa !31
  %202 = xor i16 %201, -1
  store i16 %202, ptr %200, align 2, !tbaa !31
  br label %203

203:                                              ; preds = %199, %197
  br i1 %92, label %208, label %204

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 %198, i32 1
  %206 = load i16, ptr %205, align 2, !tbaa !32
  %207 = xor i16 %206, -1
  store i16 %207, ptr %205, align 2, !tbaa !32
  br label %208

208:                                              ; preds = %204, %203
  br i1 %94, label %213, label %209

209:                                              ; preds = %208
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 %198
  %211 = load i16, ptr %210, align 2, !tbaa !33
  %212 = xor i16 %211, -1
  store i16 %212, ptr %210, align 2, !tbaa !33
  br label %213

213:                                              ; preds = %209, %208
  br i1 %96, label %218, label %214

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 %198, i32 3
  %216 = load i16, ptr %215, align 2, !tbaa !34
  %217 = xor i16 %216, -1
  store i16 %217, ptr %215, align 2, !tbaa !34
  br label %218

218:                                              ; preds = %213, %214
  %219 = add nuw nsw i64 %198, 1
  %220 = icmp eq i64 %219, %183
  br i1 %220, label %221, label %197, !llvm.loop !160

221:                                              ; preds = %218, %187, %185
  br i1 %98, label %238, label %222

222:                                              ; preds = %186, %221
  %223 = load i32, ptr %99, align 4, !tbaa !26
  %224 = icmp eq i32 %223, 12
  %225 = icmp sgt i64 %183, 0
  %226 = select i1 %224, i1 %225, i1 false
  br i1 %226, label %227, label %238

227:                                              ; preds = %222
  %228 = icmp eq ptr %182, null
  br label %229

229:                                              ; preds = %227, %235
  %230 = phi i64 [ 0, %227 ], [ %236, %235 ]
  br i1 %228, label %235, label %231

231:                                              ; preds = %229
  %232 = getelementptr inbounds i16, ptr %182, i64 %230
  %233 = load i16, ptr %232, align 2, !tbaa !39
  %234 = xor i16 %233, -1
  store i16 %234, ptr %232, align 2, !tbaa !39
  br label %235

235:                                              ; preds = %229, %231
  %236 = add nuw nsw i64 %230, 1
  %237 = icmp eq i64 %236, %183
  br i1 %237, label %238, label %229, !llvm.loop !161

238:                                              ; preds = %235, %222, %221
  %239 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %65, ptr noundef nonnull %61) #16
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = load ptr, ptr %100, align 8, !tbaa !41
  %243 = icmp eq ptr %242, null
  br i1 %243, label %250, label %244

244:                                              ; preds = %238
  %245 = add nsw i64 %174, 1
  %246 = load i64, ptr %67, align 8, !tbaa !37
  %247 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, i64 noundef %174, i64 noundef %246) #13
  %248 = icmp eq i32 %247, 0
  %249 = select i1 %248, i32 0, i32 %241
  br label %250

250:                                              ; preds = %238, %244, %177, %172
  %251 = phi i64 [ %174, %172 ], [ %174, %177 ], [ %245, %244 ], [ %174, %238 ]
  %252 = phi i32 [ 0, %172 ], [ 0, %177 ], [ %249, %244 ], [ %241, %238 ]
  %253 = add nuw nsw i64 %175, 1
  %254 = load i64, ptr %67, align 8, !tbaa !37
  %255 = icmp slt i64 %253, %254
  br i1 %255, label %172, label %256, !llvm.loop !162

256:                                              ; preds = %166, %250, %85, %70
  %257 = phi i32 [ 1, %70 ], [ 1, %85 ], [ %252, %250 ], [ 1, %166 ]
  %258 = tail call ptr @DestroyCacheView(ptr noundef %65) #15
  br label %259

259:                                              ; preds = %256, %60
  %260 = phi i32 [ 1, %60 ], [ %257, %256 ]
  ret i32 %260
}

; Function Attrs: optsize
declare i32 @AccelerateNegateImageChannel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NormalizeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @NormalizeImageChannel(ptr noundef %0, i32 noundef 134217719) #13, !range !5
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NormalizeImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %4 = load <2 x i64>, ptr %3, align 8, !tbaa !72
  %5 = uitofp <2 x i64> %4 to <2 x double>
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %7 = fmul <2 x double> %6, %5
  %8 = extractelement <2 x double> %7, i64 0
  %9 = fmul double %8, 1.500000e-03
  %10 = fmul double %8, 9.995000e-01
  %11 = tail call i32 @ContrastStretchImageChannel(ptr noundef %0, i32 noundef %1, double noundef %9, double noundef %10) #13, !range !5
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SigmoidalContrastImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  %5 = call i32 @ParseGeometry(ptr noundef %2, ptr noundef nonnull %4) #15
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  store double 3.276750e+04, ptr %9, align 8, !tbaa !111
  br label %10

10:                                               ; preds = %8, %3
  %11 = and i32 %5, 4096
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !111
  br i1 %12, label %18, label %15

15:                                               ; preds = %10
  %16 = fmul double %14, 6.553500e+04
  %17 = fdiv double %16, 1.000000e+02
  store double %17, ptr %13, align 8, !tbaa !111
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi double [ %17, %15 ], [ %14, %10 ]
  %20 = load double, ptr %4, align 8, !tbaa !70
  %21 = call i32 @SigmoidalContrastImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, double noundef %20, double noundef %19) #13, !range !5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SigmoidalContrastImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = fcmp olt double %3, 1.000000e-15
  br i1 %6, label %236, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4423, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %11, %7
  %15 = tail call dereferenceable_or_null(262144) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 4) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4428, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %19) #15
  br label %236

21:                                               ; preds = %14
  %22 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 262144) #15
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = fmul double %3, 5.000000e-01
  %26 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double 0.000000e+00)
  %27 = fmul double %25, %26
  %28 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double 1.000000e+00)
  %29 = fmul double %25, %28
  br label %32

30:                                               ; preds = %21
  %31 = fmul double %4, 0x3EF0001000100010
  br label %52

32:                                               ; preds = %24, %32
  %33 = phi i64 [ 0, %24 ], [ %50, %32 ]
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 6.553500e+04
  %36 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double %35)
  %37 = fmul double %25, %36
  %38 = tail call double @tanh(double noundef %37) #15
  %39 = tail call double @tanh(double noundef %27) #15
  %40 = fsub double %38, %39
  %41 = tail call double @tanh(double noundef %29) #15
  %42 = tail call double @tanh(double noundef %27) #15
  %43 = fsub double %41, %42
  %44 = fdiv double %40, %43
  %45 = fmul double %44, 6.553500e+04
  %46 = fptrunc double %45 to float
  %47 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %46) #13
  %48 = uitofp i16 %47 to float
  %49 = getelementptr inbounds float, ptr %15, i64 %33
  store float %48, ptr %49, align 4, !tbaa !65
  %50 = add nuw nsw i64 %33, 1
  %51 = icmp eq i64 %50, 65536
  br i1 %51, label %64, label %32, !llvm.loop !163

52:                                               ; preds = %30, %52
  %53 = phi i64 [ 0, %30 ], [ %62, %52 ]
  %54 = sitofp i64 %53 to double
  %55 = fdiv double %54, 6.553500e+04
  %56 = tail call fastcc double @InverseScaledSigmoidal(double noundef %3, double noundef %31, double noundef %55) #13
  %57 = fmul double %56, 6.553500e+04
  %58 = fptrunc double %57 to float
  %59 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %58) #13
  %60 = uitofp i16 %59 to float
  %61 = getelementptr inbounds float, ptr %15, i64 %53
  store float %60, ptr %61, align 4, !tbaa !65
  %62 = add nuw nsw i64 %53, 1
  %63 = icmp eq i64 %62, 65536
  br i1 %63, label %64, label %52, !llvm.loop !164

64:                                               ; preds = %32, %52
  %65 = load i32, ptr %0, align 8, !tbaa !28
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %125

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %69 = load i64, ptr %68, align 8, !tbaa !29
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %125

71:                                               ; preds = %67
  %72 = and i32 %1, 1
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %75 = and i32 %1, 2
  %76 = icmp eq i32 %75, 0
  %77 = and i32 %1, 4
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %1, 8
  %80 = icmp eq i32 %79, 0
  br label %81

81:                                               ; preds = %71, %122
  %82 = phi i64 [ 0, %71 ], [ %123, %122 ]
  br i1 %73, label %92, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %74, align 8, !tbaa !30
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 %82, i32 2
  %86 = load i16, ptr %85, align 2, !tbaa !31
  %87 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %86) #13, !range !49
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds float, ptr %15, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !65
  %91 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %90) #13
  store i16 %91, ptr %85, align 2, !tbaa !31
  br label %92

92:                                               ; preds = %83, %81
  br i1 %76, label %102, label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %74, align 8, !tbaa !30
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 %82, i32 1
  %96 = load i16, ptr %95, align 2, !tbaa !32
  %97 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %96) #13, !range !49
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds float, ptr %15, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !65
  %101 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %100) #13
  store i16 %101, ptr %95, align 2, !tbaa !32
  br label %102

102:                                              ; preds = %93, %92
  br i1 %78, label %112, label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %74, align 8, !tbaa !30
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 %82
  %106 = load i16, ptr %105, align 2, !tbaa !33
  %107 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %106) #13, !range !49
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds float, ptr %15, i64 %108
  %110 = load float, ptr %109, align 4, !tbaa !65
  %111 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %110) #13
  store i16 %111, ptr %105, align 2, !tbaa !33
  br label %112

112:                                              ; preds = %103, %102
  br i1 %80, label %122, label %113

113:                                              ; preds = %112
  %114 = load ptr, ptr %74, align 8, !tbaa !30
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 %82, i32 3
  %116 = load i16, ptr %115, align 2, !tbaa !34
  %117 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %116) #13, !range !49
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds float, ptr %15, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !65
  %121 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %120) #13
  store i16 %121, ptr %115, align 2, !tbaa !34
  br label %122

122:                                              ; preds = %112, %113
  %123 = add nuw nsw i64 %82, 1
  %124 = icmp eq i64 %123, %69
  br i1 %124, label %125, label %81, !llvm.loop !165

125:                                              ; preds = %122, %67, %64
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %127 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %126) #15
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %129 = load i64, ptr %128, align 8, !tbaa !37
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %232

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %133 = and i32 %1, 1
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %1, 2
  %136 = icmp eq i32 %135, 0
  %137 = and i32 %1, 4
  %138 = icmp eq i32 %137, 0
  %139 = and i32 %1, 8
  %140 = icmp eq i32 %139, 0
  %141 = and i32 %1, 32
  %142 = icmp eq i32 %141, 0
  %143 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %144 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %145

145:                                              ; preds = %131, %226
  %146 = phi i64 [ 0, %131 ], [ %229, %226 ]
  %147 = phi i64 [ 0, %131 ], [ %228, %226 ]
  %148 = phi i32 [ 1, %131 ], [ %227, %226 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %226, label %150

150:                                              ; preds = %145
  %151 = load i64, ptr %132, align 8, !tbaa !38
  %152 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %127, i64 noundef 0, i64 noundef %146, i64 noundef %151, i64 noundef 1, ptr noundef nonnull %126) #16
  %153 = icmp eq ptr %152, null
  br i1 %153, label %226, label %154

154:                                              ; preds = %150
  %155 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %127) #15
  %156 = load i64, ptr %132, align 8, !tbaa !38
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %214

158:                                              ; preds = %154
  %159 = icmp eq ptr %155, null
  br label %160

160:                                              ; preds = %158, %210
  %161 = phi i64 [ 0, %158 ], [ %212, %210 ]
  %162 = phi ptr [ %152, %158 ], [ %211, %210 ]
  br i1 %134, label %171, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %162, i64 0, i32 2
  %165 = load i16, ptr %164, align 2, !tbaa !31
  %166 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %165) #13, !range !49
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds float, ptr %15, i64 %167
  %169 = load float, ptr %168, align 4, !tbaa !65
  %170 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %169) #13
  store i16 %170, ptr %164, align 2, !tbaa !31
  br label %171

171:                                              ; preds = %163, %160
  br i1 %136, label %180, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %162, i64 0, i32 1
  %174 = load i16, ptr %173, align 2, !tbaa !32
  %175 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %174) #13, !range !49
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds float, ptr %15, i64 %176
  %178 = load float, ptr %177, align 4, !tbaa !65
  %179 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %178) #13
  store i16 %179, ptr %173, align 2, !tbaa !32
  br label %180

180:                                              ; preds = %172, %171
  br i1 %138, label %188, label %181

181:                                              ; preds = %180
  %182 = load i16, ptr %162, align 2, !tbaa !33
  %183 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %182) #13, !range !49
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds float, ptr %15, i64 %184
  %186 = load float, ptr %185, align 4, !tbaa !65
  %187 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %186) #13
  store i16 %187, ptr %162, align 2, !tbaa !33
  br label %188

188:                                              ; preds = %181, %180
  br i1 %140, label %197, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %162, i64 0, i32 3
  %191 = load i16, ptr %190, align 2, !tbaa !34
  %192 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %191) #13, !range !49
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds float, ptr %15, i64 %193
  %195 = load float, ptr %194, align 4, !tbaa !65
  %196 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %195) #13
  store i16 %196, ptr %190, align 2, !tbaa !34
  br label %197

197:                                              ; preds = %189, %188
  br i1 %142, label %210, label %198

198:                                              ; preds = %197
  %199 = load i32, ptr %143, align 4, !tbaa !26
  %200 = icmp ne i32 %199, 12
  %201 = select i1 %200, i1 true, i1 %159
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds i16, ptr %155, i64 %161
  %204 = load i16, ptr %203, align 2, !tbaa !39
  %205 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %204) #13, !range !49
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds float, ptr %15, i64 %206
  %208 = load float, ptr %207, align 4, !tbaa !65
  %209 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %208) #13
  store i16 %209, ptr %203, align 2, !tbaa !39
  br label %210

210:                                              ; preds = %202, %198, %197
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %162, i64 1
  %212 = add nuw nsw i64 %161, 1
  %213 = icmp eq i64 %212, %156
  br i1 %213, label %214, label %160, !llvm.loop !166

214:                                              ; preds = %210, %154
  %215 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %127, ptr noundef nonnull %126) #16
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = load ptr, ptr %144, align 8, !tbaa !41
  %219 = icmp eq ptr %218, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %214
  %221 = add nsw i64 %147, 1
  %222 = load i64, ptr %128, align 8, !tbaa !37
  %223 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, i64 noundef %147, i64 noundef %222) #13
  %224 = icmp eq i32 %223, 0
  %225 = select i1 %224, i32 0, i32 %217
  br label %226

226:                                              ; preds = %214, %220, %150, %145
  %227 = phi i32 [ 0, %145 ], [ 0, %150 ], [ %225, %220 ], [ %217, %214 ]
  %228 = phi i64 [ %147, %145 ], [ %147, %150 ], [ %221, %220 ], [ %147, %214 ]
  %229 = add nuw nsw i64 %146, 1
  %230 = load i64, ptr %128, align 8, !tbaa !37
  %231 = icmp slt i64 %229, %230
  br i1 %231, label %145, label %232, !llvm.loop !167

232:                                              ; preds = %226, %125
  %233 = phi i32 [ 1, %125 ], [ %227, %226 ]
  %234 = tail call ptr @DestroyCacheView(ptr noundef %127) #15
  %235 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #15
  br label %236

236:                                              ; preds = %17, %5, %232
  %237 = phi i32 [ %233, %232 ], [ 1, %5 ], [ 0, %17 ]
  ret i32 %237
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @InverseScaledSigmoidal(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #11 {
  %4 = fmul double %0, 5.000000e-01
  %5 = fsub double 0.000000e+00, %1
  %6 = fmul double %4, %5
  %7 = tail call double @tanh(double noundef %6) #15
  %8 = fsub double 1.000000e+00, %1
  %9 = fmul double %4, %8
  %10 = tail call double @tanh(double noundef %9) #15
  %11 = fsub double %10, %7
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %2, double %7)
  %13 = fcmp olt double %12, 0xBFEFFFFFFFFFFFF7
  %14 = fcmp ogt double %12, 0x3FEFFFFFFFFFFFF7
  %15 = select i1 %14, double 0x3FEFFFFFFFFFFFF7, double %12
  %16 = select i1 %13, double 0xBFEFFFFFFFFFFFF7, double %15
  %17 = fdiv double 2.000000e+00, %0
  %18 = tail call double @atanh(double noundef %16) #15
  %19 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %1)
  ret double %19
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHSB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ConvertHSBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositePlus(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #8 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fadd float %11, %12
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #13
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #13
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !65
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !65
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
  store <4 x float> %42, ptr %20, align 8, !tbaa !65
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !66
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !62
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !62
  br label %57

57:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RoundToUnity(float noundef %0) unnamed_addr #6 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fcmp ogt float %0, 1.000000e+00
  %4 = select i1 %3, float 1.000000e+00, float %0
  %5 = select i1 %2, float 0.000000e+00, float %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #6 {
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
declare void @ConvertRGBToHCL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHCLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHCLp(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHCLpToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHSI(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHSIToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHSL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHSV(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHSVToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHWB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHWBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToLCHab(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertLCHabToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToLCHuv(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertLCHuvToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atanh(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { hot nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 32}
!11 = !{!"_Image", !12, i64 0, !12, i64 4, !12, i64 8, !13, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !7, i64 104, !17, i64 112, !12, i64 208, !14, i64 216, !12, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !13, i64 256, !7, i64 264, !7, i64 272, !19, i64 280, !19, i64 312, !19, i64 344, !7, i64 376, !7, i64 384, !7, i64 392, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !12, i64 420, !14, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !20, i64 480, !21, i64 504, !14, i64 568, !14, i64 576, !14, i64 584, !14, i64 592, !14, i64 600, !14, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !13, i64 12904, !13, i64 12912, !23, i64 12920, !12, i64 12976, !13, i64 12984, !14, i64 12992, !24, i64 13000, !24, i64 13032, !14, i64 13064, !13, i64 13072, !13, i64 13080, !14, i64 13088, !14, i64 13096, !14, i64 13104, !12, i64 13112, !12, i64 13116, !15, i64 13120, !14, i64 13128, !19, i64 13136, !14, i64 13168, !14, i64 13176, !12, i64 13184, !12, i64 13188, !25, i64 13192, !12, i64 13200, !13, i64 13208, !13, i64 13216, !12, i64 13224, !13, i64 13232}
!12 = !{!"int", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !8, i64 0}
!17 = !{!"_ChromaticityInfo", !18, i64 0, !18, i64 24, !18, i64 48, !18, i64 72}
!18 = !{!"_PrimaryInfo", !7, i64 0, !7, i64 8, !7, i64 16}
!19 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!20 = !{!"_ErrorInfo", !7, i64 0, !7, i64 8, !7, i64 16}
!21 = !{!"_TimerInfo", !22, i64 0, !22, i64 24, !12, i64 48, !13, i64 56}
!22 = !{!"_Timer", !7, i64 0, !7, i64 8, !7, i64 16}
!23 = !{!"_ExceptionInfo", !12, i64 0, !12, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !12, i64 32, !14, i64 40, !13, i64 48}
!24 = !{!"_ProfileInfo", !14, i64 0, !13, i64 8, !14, i64 16, !13, i64 24}
!25 = !{!"long long", !8, i64 0}
!26 = !{!11, !12, i64 4}
!27 = !{!11, !12, i64 12976}
!28 = !{!11, !12, i64 0}
!29 = !{!11, !13, i64 64}
!30 = !{!11, !14, i64 72}
!31 = !{!15, !16, i64 4}
!32 = !{!15, !16, i64 2}
!33 = !{!15, !16, i64 0}
!34 = !{!15, !16, i64 6}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!11, !13, i64 48}
!38 = !{!11, !13, i64 40}
!39 = !{!16, !16, i64 0}
!40 = distinct !{!40, !36}
!41 = !{!11, !14, i64 568}
!42 = distinct !{!42, !36}
!43 = !{!14, !14, i64 0}
!44 = !{!8, !8, i64 0}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36}
!47 = distinct !{!47, !36}
!48 = distinct !{!48, !36}
!49 = !{i32 0, i32 65536}
!50 = distinct !{!50, !36}
!51 = distinct !{!51, !36}
!52 = distinct !{!52, !36}
!53 = !{!11, !14, i64 576}
!54 = !{!11, !12, i64 13112}
!55 = distinct !{!55, !36}
!56 = !{!57, !58, i64 32}
!57 = !{!"_MagickPixelPacket", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 16, !13, i64 24, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48}
!58 = !{!"float", !8, i64 0}
!59 = !{!57, !58, i64 36}
!60 = !{!57, !58, i64 40}
!61 = !{!57, !58, i64 44}
!62 = !{!57, !58, i64 48}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = !{!58, !58, i64 0}
!66 = !{!57, !12, i64 4}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !36}
!69 = distinct !{!69, !36}
!70 = !{!71, !7, i64 0}
!71 = !{!"_GeometryInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!72 = !{!13, !13, i64 0}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = distinct !{!81, !36}
!82 = distinct !{!82, !36}
!83 = distinct !{!83, !36}
!84 = distinct !{!84, !36}
!85 = distinct !{!85, !36}
!86 = !{!87, !16, i64 0}
!87 = !{!"_QuantumPixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8}
!88 = !{!87, !16, i64 2}
!89 = !{!87, !16, i64 4}
!90 = !{!87, !16, i64 6}
!91 = !{!87, !16, i64 8}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !36}
!102 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !65, i64 12, i64 4, !65, i64 16, i64 4, !65}
!103 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !65, i64 12, i64 4, !65}
!104 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !65}
!105 = !{i64 0, i64 4, !65, i64 4, i64 4, !65}
!106 = !{i64 0, i64 4, !65}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = distinct !{!109, !36}
!110 = distinct !{!110, !36}
!111 = !{!71, !7, i64 8}
!112 = !{!71, !7, i64 16}
!113 = distinct !{!113, !36}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !36}
!116 = distinct !{!116, !36}
!117 = distinct !{!117, !36}
!118 = !{!11, !7, i64 104}
!119 = distinct !{!119, !36}
!120 = distinct !{!120, !36}
!121 = !{!11, !12, i64 13224}
!122 = !{!11, !12, i64 13184}
!123 = distinct !{!123, !36}
!124 = !{i64 0, i64 4, !125, i64 4, i64 4, !125, i64 8, i64 4, !125, i64 16, i64 8, !6, i64 24, i64 8, !72, i64 32, i64 4, !65, i64 36, i64 4, !65, i64 40, i64 4, !65, i64 44, i64 4, !65, i64 48, i64 4, !65}
!125 = !{!12, !12, i64 0}
!126 = distinct !{!126, !36}
!127 = distinct !{!127, !36}
!128 = distinct !{!128, !36}
!129 = distinct !{!129, !36}
!130 = distinct !{!130, !36}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36}
!133 = distinct !{!133, !36}
!134 = distinct !{!134, !36}
!135 = distinct !{!135, !36}
!136 = distinct !{!136, !36}
!137 = distinct !{!137, !36}
!138 = distinct !{!138, !36}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !36}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !36}
!143 = distinct !{!143, !36}
!144 = distinct !{!144, !36}
!145 = distinct !{!145, !36}
!146 = distinct !{!146, !36}
!147 = distinct !{!147, !36}
!148 = distinct !{!148, !36}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !36}
!151 = distinct !{!151, !36}
!152 = distinct !{!152, !36}
!153 = distinct !{!153, !36}
!154 = distinct !{!154, !36}
!155 = distinct !{!155, !36}
!156 = distinct !{!156, !36}
!157 = distinct !{!157, !36}
!158 = distinct !{!158, !36}
!159 = distinct !{!159, !36}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = distinct !{!164, !36}
!165 = distinct !{!165, !36}
!166 = distinct !{!166, !36}
!167 = distinct !{!167, !36}
