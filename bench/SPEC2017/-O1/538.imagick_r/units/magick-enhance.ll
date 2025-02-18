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

; Function Attrs: nounwind uwtable
define dso_local i32 @AutoGammaImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %5 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %6 = load double, ptr %2, align 8, !tbaa !34
  %7 = fmul double %6, 0x3EF0001000100010
  %8 = call double @log(double noundef %7) #8
  %9 = fdiv double %8, 0xBFE62E42FEFA39EF
  %10 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %9), !range !38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AutoGammaImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = and i32 %1, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %9 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %8) #8
  %10 = load double, ptr %3, align 8, !tbaa !34
  %11 = fmul double %10, 0x3EF0001000100010
  %12 = call double @log(double noundef %11) #8
  %13 = fdiv double %12, 0xBFE62E42FEFA39EF
  %14 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %13), !range !38
  br label %90

15:                                               ; preds = %2
  %16 = and i32 %1, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %19) #8
  %21 = load double, ptr %3, align 8, !tbaa !34
  %22 = fmul double %21, 0x3EF0001000100010
  %23 = call double @log(double noundef %22) #8
  %24 = fdiv double %23, 0xBFE62E42FEFA39EF
  %25 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 1, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %24), !range !38
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i32 [ %25, %18 ], [ 1, %15 ]
  %28 = and i32 %1, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %32 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %31) #8
  %33 = load double, ptr %3, align 8, !tbaa !34
  %34 = fmul double %33, 0x3EF0001000100010
  %35 = call double @log(double noundef %34) #8
  %36 = fdiv double %35, 0xBFE62E42FEFA39EF
  %37 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 2, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %36), !range !38
  %38 = and i32 %37, %27
  br label %39

39:                                               ; preds = %30, %26
  %40 = phi i32 [ %38, %30 ], [ %27, %26 ]
  %41 = and i32 %1, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %45 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %44) #8
  %46 = load double, ptr %3, align 8, !tbaa !34
  %47 = fmul double %46, 0x3EF0001000100010
  %48 = call double @log(double noundef %47) #8
  %49 = fdiv double %48, 0xBFE62E42FEFA39EF
  %50 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 4, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %49), !range !38
  %51 = and i32 %50, %40
  br label %52

52:                                               ; preds = %43, %39
  %53 = phi i32 [ %51, %43 ], [ %40, %39 ]
  %54 = and i32 %1, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !39
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %62 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %61) #8
  %63 = load double, ptr %3, align 8, !tbaa !34
  %64 = fmul double %63, 0x3EF0001000100010
  %65 = call double @log(double noundef %64) #8
  %66 = fdiv double %65, 0xBFE62E42FEFA39EF
  %67 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 8, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %66), !range !38
  %68 = and i32 %67, %53
  br label %69

69:                                               ; preds = %60, %56, %52
  %70 = phi i32 [ %68, %60 ], [ %53, %56 ], [ %53, %52 ]
  %71 = and i32 %1, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !55
  %76 = icmp eq i32 %75, 12
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %79 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %78) #8
  %80 = load double, ptr %3, align 8, !tbaa !34
  %81 = fmul double %80, 0x3EF0001000100010
  %82 = call double @log(double noundef %81) #8
  %83 = fdiv double %82, 0xBFE62E42FEFA39EF
  %84 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 32, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %83), !range !38
  %85 = and i32 %84, %70
  br label %86

86:                                               ; preds = %77, %73, %69
  %87 = phi i32 [ %85, %77 ], [ %70, %73 ], [ %70, %69 ]
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %86, %7
  %91 = phi i32 [ %14, %7 ], [ %89, %86 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #2

declare i32 @GetImageChannelMean(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @LevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2961, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #8
  br label %13

13:                                               ; preds = %10, %5
  %14 = load i32, ptr %0, align 8, !tbaa !57
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %160

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %18 = load i64, ptr %17, align 8, !tbaa !58
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %160

20:                                               ; preds = %16
  %21 = and i32 %1, 1
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %24 = fcmp une double %3, %2
  %25 = fsub double %3, %2
  %26 = fdiv double 1.000000e+00, %25
  %27 = select i1 %24, double %26, double 1.000000e+00
  %28 = fdiv double 1.000000e+00, %4
  %29 = and i32 %1, 2
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %32 = fcmp une double %3, %2
  %33 = fsub double %3, %2
  %34 = fdiv double 1.000000e+00, %33
  %35 = select i1 %32, double %34, double 1.000000e+00
  %36 = fdiv double 1.000000e+00, %4
  %37 = and i32 %1, 4
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %40 = fcmp une double %3, %2
  %41 = fsub double %3, %2
  %42 = fdiv double 1.000000e+00, %41
  %43 = select i1 %40, double %42, double 1.000000e+00
  %44 = fdiv double 1.000000e+00, %4
  %45 = and i32 %1, 8
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %48 = fcmp une double %3, %2
  %49 = fsub double %3, %2
  %50 = fdiv double 1.000000e+00, %49
  %51 = select i1 %48, double %50, double 1.000000e+00
  %52 = fdiv double 1.000000e+00, %4
  br label %53

53:                                               ; preds = %20, %156
  %54 = phi i64 [ 0, %20 ], [ %157, %156 ]
  br i1 %22, label %79, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %23, align 8, !tbaa !59
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 %54, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !60
  %59 = uitofp i16 %58 to double
  %60 = fsub double %59, %2
  %61 = fmul double %27, %60
  %62 = fcmp olt double %61, 0.000000e+00
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = tail call double @pow(double noundef %61, double noundef %28) #8
  br label %65

65:                                               ; preds = %55, %63
  %66 = phi double [ %64, %63 ], [ %61, %55 ]
  %67 = fmul double %66, 6.553500e+04
  %68 = fptrunc double %67 to float
  %69 = fcmp ugt float %68, 0.000000e+00
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = fcmp ult float %68, 6.553500e+04
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = fadd float %68, 5.000000e-01
  %74 = fptoui float %73 to i16
  br label %75

75:                                               ; preds = %65, %70, %72
  %76 = phi i16 [ %74, %72 ], [ 0, %65 ], [ -1, %70 ]
  %77 = load ptr, ptr %23, align 8, !tbaa !59
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 %54, i32 2
  store i16 %76, ptr %78, align 2, !tbaa !60
  br label %79

79:                                               ; preds = %75, %53
  br i1 %30, label %104, label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr %31, align 8, !tbaa !59
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 %54, i32 1
  %83 = load i16, ptr %82, align 2, !tbaa !61
  %84 = uitofp i16 %83 to double
  %85 = fsub double %84, %2
  %86 = fmul double %35, %85
  %87 = fcmp olt double %86, 0.000000e+00
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = tail call double @pow(double noundef %86, double noundef %36) #8
  br label %90

90:                                               ; preds = %80, %88
  %91 = phi double [ %89, %88 ], [ %86, %80 ]
  %92 = fmul double %91, 6.553500e+04
  %93 = fptrunc double %92 to float
  %94 = fcmp ugt float %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = fcmp ult float %93, 6.553500e+04
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = fadd float %93, 5.000000e-01
  %99 = fptoui float %98 to i16
  br label %100

100:                                              ; preds = %90, %95, %97
  %101 = phi i16 [ %99, %97 ], [ 0, %90 ], [ -1, %95 ]
  %102 = load ptr, ptr %31, align 8, !tbaa !59
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 %54, i32 1
  store i16 %101, ptr %103, align 2, !tbaa !61
  br label %104

104:                                              ; preds = %100, %79
  br i1 %38, label %129, label %105

105:                                              ; preds = %104
  %106 = load ptr, ptr %39, align 8, !tbaa !59
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 %54
  %108 = load i16, ptr %107, align 2, !tbaa !62
  %109 = uitofp i16 %108 to double
  %110 = fsub double %109, %2
  %111 = fmul double %43, %110
  %112 = fcmp olt double %111, 0.000000e+00
  br i1 %112, label %115, label %113

113:                                              ; preds = %105
  %114 = tail call double @pow(double noundef %111, double noundef %44) #8
  br label %115

115:                                              ; preds = %105, %113
  %116 = phi double [ %114, %113 ], [ %111, %105 ]
  %117 = fmul double %116, 6.553500e+04
  %118 = fptrunc double %117 to float
  %119 = fcmp ugt float %118, 0.000000e+00
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = fcmp ult float %118, 6.553500e+04
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = fadd float %118, 5.000000e-01
  %124 = fptoui float %123 to i16
  br label %125

125:                                              ; preds = %115, %120, %122
  %126 = phi i16 [ %124, %122 ], [ 0, %115 ], [ -1, %120 ]
  %127 = load ptr, ptr %39, align 8, !tbaa !59
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 %54
  store i16 %126, ptr %128, align 2, !tbaa !62
  br label %129

129:                                              ; preds = %125, %104
  br i1 %46, label %156, label %130

130:                                              ; preds = %129
  %131 = load ptr, ptr %47, align 8, !tbaa !59
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 %54, i32 3
  %133 = load i16, ptr %132, align 2, !tbaa !63
  %134 = xor i16 %133, -1
  %135 = uitofp i16 %134 to double
  %136 = fsub double %135, %2
  %137 = fmul double %51, %136
  %138 = fcmp olt double %137, 0.000000e+00
  br i1 %138, label %141, label %139

139:                                              ; preds = %130
  %140 = tail call double @pow(double noundef %137, double noundef %52) #8
  br label %141

141:                                              ; preds = %130, %139
  %142 = phi double [ %140, %139 ], [ %137, %130 ]
  %143 = fmul double %142, 6.553500e+04
  %144 = fptrunc double %143 to float
  %145 = fcmp ugt float %144, 0.000000e+00
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = fcmp ult float %144, 6.553500e+04
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = fadd float %144, 5.000000e-01
  %150 = fptoui float %149 to i16
  br label %151

151:                                              ; preds = %141, %146, %148
  %152 = phi i16 [ %150, %148 ], [ 0, %141 ], [ -1, %146 ]
  %153 = xor i16 %152, -1
  %154 = load ptr, ptr %47, align 8, !tbaa !59
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %154, i64 %54, i32 3
  store i16 %153, ptr %155, align 2, !tbaa !63
  br label %156

156:                                              ; preds = %129, %151
  %157 = add nuw nsw i64 %54, 1
  %158 = load i64, ptr %17, align 8, !tbaa !58
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %53, label %160, !llvm.loop !64

160:                                              ; preds = %156, %16, %13
  %161 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %162 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %161) #8
  %163 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %164 = load i64, ptr %163, align 8, !tbaa !67
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %369

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %168 = and i32 %1, 1
  %169 = icmp eq i32 %168, 0
  %170 = fcmp une double %3, %2
  %171 = fsub double %3, %2
  %172 = fdiv double 1.000000e+00, %171
  %173 = select i1 %170, double %172, double 1.000000e+00
  %174 = fdiv double 1.000000e+00, %4
  %175 = and i32 %1, 2
  %176 = icmp eq i32 %175, 0
  %177 = fcmp une double %3, %2
  %178 = fsub double %3, %2
  %179 = fdiv double 1.000000e+00, %178
  %180 = select i1 %177, double %179, double 1.000000e+00
  %181 = fdiv double 1.000000e+00, %4
  %182 = and i32 %1, 4
  %183 = icmp eq i32 %182, 0
  %184 = fcmp une double %3, %2
  %185 = fsub double %3, %2
  %186 = fdiv double 1.000000e+00, %185
  %187 = select i1 %184, double %186, double 1.000000e+00
  %188 = fdiv double 1.000000e+00, %4
  %189 = and i32 %1, 8
  %190 = icmp eq i32 %189, 0
  %191 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %192 = fcmp une double %3, %2
  %193 = fsub double %3, %2
  %194 = fdiv double 1.000000e+00, %193
  %195 = select i1 %192, double %194, double 1.000000e+00
  %196 = fdiv double 1.000000e+00, %4
  %197 = and i32 %1, 32
  %198 = icmp eq i32 %197, 0
  %199 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %200 = fcmp une double %3, %2
  %201 = fsub double %3, %2
  %202 = fdiv double 1.000000e+00, %201
  %203 = select i1 %200, double %202, double 1.000000e+00
  %204 = fdiv double 1.000000e+00, %4
  %205 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %206 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %207 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %208

208:                                              ; preds = %166, %363
  %209 = phi i32 [ 1, %166 ], [ %365, %363 ]
  %210 = phi i64 [ 0, %166 ], [ %366, %363 ]
  %211 = phi i64 [ 0, %166 ], [ %364, %363 ]
  %212 = icmp eq i32 %209, 0
  br i1 %212, label %363, label %213

213:                                              ; preds = %208
  %214 = load i64, ptr %167, align 8, !tbaa !68
  %215 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %162, i64 noundef 0, i64 noundef %210, i64 noundef %214, i64 noundef 1, ptr noundef nonnull %161) #9
  %216 = icmp eq ptr %215, null
  br i1 %216, label %363, label %217

217:                                              ; preds = %213
  %218 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %162) #8
  %219 = load i64, ptr %167, align 8, !tbaa !68
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %348

221:                                              ; preds = %217
  %222 = icmp eq ptr %218, null
  br label %223

223:                                              ; preds = %221, %343
  %224 = phi i64 [ 0, %221 ], [ %345, %343 ]
  %225 = phi ptr [ %215, %221 ], [ %344, %343 ]
  br i1 %169, label %247, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 0, i32 2
  %228 = load i16, ptr %227, align 2, !tbaa !60
  %229 = uitofp i16 %228 to double
  %230 = fsub double %229, %2
  %231 = fmul double %173, %230
  %232 = fcmp olt double %231, 0.000000e+00
  br i1 %232, label %235, label %233

233:                                              ; preds = %226
  %234 = call double @pow(double noundef %231, double noundef %174) #8
  br label %235

235:                                              ; preds = %226, %233
  %236 = phi double [ %234, %233 ], [ %231, %226 ]
  %237 = fmul double %236, 6.553500e+04
  %238 = fptrunc double %237 to float
  %239 = fcmp ugt float %238, 0.000000e+00
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = fcmp ult float %238, 6.553500e+04
  br i1 %241, label %242, label %245

242:                                              ; preds = %240
  %243 = fadd float %238, 5.000000e-01
  %244 = fptoui float %243 to i16
  br label %245

245:                                              ; preds = %235, %240, %242
  %246 = phi i16 [ %244, %242 ], [ 0, %235 ], [ -1, %240 ]
  store i16 %246, ptr %227, align 2, !tbaa !60
  br label %247

247:                                              ; preds = %245, %223
  br i1 %176, label %269, label %248

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 0, i32 1
  %250 = load i16, ptr %249, align 2, !tbaa !61
  %251 = uitofp i16 %250 to double
  %252 = fsub double %251, %2
  %253 = fmul double %180, %252
  %254 = fcmp olt double %253, 0.000000e+00
  br i1 %254, label %257, label %255

255:                                              ; preds = %248
  %256 = call double @pow(double noundef %253, double noundef %181) #8
  br label %257

257:                                              ; preds = %248, %255
  %258 = phi double [ %256, %255 ], [ %253, %248 ]
  %259 = fmul double %258, 6.553500e+04
  %260 = fptrunc double %259 to float
  %261 = fcmp ugt float %260, 0.000000e+00
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = fcmp ult float %260, 6.553500e+04
  br i1 %263, label %264, label %267

264:                                              ; preds = %262
  %265 = fadd float %260, 5.000000e-01
  %266 = fptoui float %265 to i16
  br label %267

267:                                              ; preds = %257, %262, %264
  %268 = phi i16 [ %266, %264 ], [ 0, %257 ], [ -1, %262 ]
  store i16 %268, ptr %249, align 2, !tbaa !61
  br label %269

269:                                              ; preds = %267, %247
  br i1 %183, label %290, label %270

270:                                              ; preds = %269
  %271 = load i16, ptr %225, align 2, !tbaa !62
  %272 = uitofp i16 %271 to double
  %273 = fsub double %272, %2
  %274 = fmul double %187, %273
  %275 = fcmp olt double %274, 0.000000e+00
  br i1 %275, label %278, label %276

276:                                              ; preds = %270
  %277 = call double @pow(double noundef %274, double noundef %188) #8
  br label %278

278:                                              ; preds = %270, %276
  %279 = phi double [ %277, %276 ], [ %274, %270 ]
  %280 = fmul double %279, 6.553500e+04
  %281 = fptrunc double %280 to float
  %282 = fcmp ugt float %281, 0.000000e+00
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = fcmp ult float %281, 6.553500e+04
  br i1 %284, label %285, label %288

285:                                              ; preds = %283
  %286 = fadd float %281, 5.000000e-01
  %287 = fptoui float %286 to i16
  br label %288

288:                                              ; preds = %278, %283, %285
  %289 = phi i16 [ %287, %285 ], [ 0, %278 ], [ -1, %283 ]
  store i16 %289, ptr %225, align 2, !tbaa !62
  br label %290

290:                                              ; preds = %288, %269
  br i1 %190, label %317, label %291

291:                                              ; preds = %290
  %292 = load i32, ptr %191, align 8, !tbaa !39
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %317, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 0, i32 3
  %296 = load i16, ptr %295, align 2, !tbaa !63
  %297 = xor i16 %296, -1
  %298 = uitofp i16 %297 to double
  %299 = fsub double %298, %2
  %300 = fmul double %195, %299
  %301 = fcmp olt double %300, 0.000000e+00
  br i1 %301, label %304, label %302

302:                                              ; preds = %294
  %303 = call double @pow(double noundef %300, double noundef %196) #8
  br label %304

304:                                              ; preds = %294, %302
  %305 = phi double [ %303, %302 ], [ %300, %294 ]
  %306 = fmul double %305, 6.553500e+04
  %307 = fptrunc double %306 to float
  %308 = fcmp ugt float %307, 0.000000e+00
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = fcmp ult float %307, 6.553500e+04
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = fadd float %307, 5.000000e-01
  %313 = fptoui float %312 to i16
  br label %314

314:                                              ; preds = %304, %309, %311
  %315 = phi i16 [ %313, %311 ], [ 0, %304 ], [ -1, %309 ]
  %316 = xor i16 %315, -1
  store i16 %316, ptr %295, align 2, !tbaa !63
  br label %317

317:                                              ; preds = %314, %291, %290
  br i1 %198, label %343, label %318

318:                                              ; preds = %317
  %319 = load i32, ptr %199, align 4, !tbaa !55
  %320 = icmp eq i32 %319, 12
  br i1 %320, label %321, label %343

321:                                              ; preds = %318
  %322 = getelementptr inbounds i16, ptr %218, i64 %224
  br i1 %222, label %343, label %323

323:                                              ; preds = %321
  %324 = load i16, ptr %322, align 2, !tbaa !69
  %325 = uitofp i16 %324 to double
  %326 = fsub double %325, %2
  %327 = fmul double %203, %326
  %328 = fcmp olt double %327, 0.000000e+00
  br i1 %328, label %331, label %329

329:                                              ; preds = %323
  %330 = call double @pow(double noundef %327, double noundef %204) #8
  br label %331

331:                                              ; preds = %323, %329
  %332 = phi double [ %330, %329 ], [ %327, %323 ]
  %333 = fmul double %332, 6.553500e+04
  %334 = fptrunc double %333 to float
  %335 = fcmp ugt float %334, 0.000000e+00
  br i1 %335, label %336, label %341

336:                                              ; preds = %331
  %337 = fcmp ult float %334, 6.553500e+04
  br i1 %337, label %338, label %341

338:                                              ; preds = %336
  %339 = fadd float %334, 5.000000e-01
  %340 = fptoui float %339 to i16
  br label %341

341:                                              ; preds = %331, %336, %338
  %342 = phi i16 [ %340, %338 ], [ 0, %331 ], [ -1, %336 ]
  store i16 %342, ptr %322, align 2, !tbaa !69
  br label %343

343:                                              ; preds = %321, %341, %318, %317
  %344 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 1
  %345 = add nuw nsw i64 %224, 1
  %346 = load i64, ptr %167, align 8, !tbaa !68
  %347 = icmp slt i64 %345, %346
  br i1 %347, label %223, label %348, !llvm.loop !70

348:                                              ; preds = %343, %217
  %349 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %162, ptr noundef nonnull %161) #9
  %350 = icmp ne i32 %349, 0
  %351 = zext i1 %350 to i32
  %352 = load ptr, ptr %205, align 8, !tbaa !71
  %353 = icmp eq ptr %352, null
  br i1 %353, label %363, label %354

354:                                              ; preds = %348
  %355 = add nsw i64 %211, 1
  %356 = load i64, ptr %163, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  %357 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.31, ptr noundef nonnull %206) #8
  %358 = load ptr, ptr %205, align 8, !tbaa !71
  %359 = load ptr, ptr %207, align 8, !tbaa !72
  %360 = call i32 %358(ptr noundef nonnull %6, i64 noundef %211, i64 noundef %356, ptr noundef %359) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  %361 = icmp eq i32 %360, 0
  %362 = select i1 %361, i32 0, i32 %351
  br label %363

363:                                              ; preds = %348, %354, %213, %208
  %364 = phi i64 [ %211, %208 ], [ %211, %213 ], [ %355, %354 ], [ %211, %348 ]
  %365 = phi i32 [ 0, %208 ], [ 0, %213 ], [ %362, %354 ], [ %351, %348 ]
  %366 = add nuw nsw i64 %210, 1
  %367 = load i64, ptr %163, align 8, !tbaa !67
  %368 = icmp slt i64 %366, %367
  br i1 %368, label %208, label %369, !llvm.loop !73

369:                                              ; preds = %363, %160
  %370 = phi i32 [ 1, %160 ], [ %365, %363 ]
  %371 = call ptr @DestroyCacheView(ptr noundef %162) #8
  %372 = call i32 @ClampImage(ptr noundef nonnull %0) #8
  ret i32 %370
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @AutoLevelImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @MinMaxStretchImage(ptr noundef %0, i32 noundef 134217719, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AutoLevelImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MinMaxStretchImage(ptr noundef %0, i32 noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  ret i32 %3
}

declare i32 @MinMaxStretchImage(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BrightnessContrastImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 301, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %3, %8
  %12 = fdiv double %2, 1.000000e+02
  %13 = fadd double %12, 1.000000e+00
  %14 = fmul double %13, 0x400921FB54442D18
  %15 = fmul double %14, 2.500000e-01
  %16 = tail call double @tan(double noundef %15) #8
  %17 = fcmp olt double %16, 0.000000e+00
  %18 = select i1 %17, double 0.000000e+00, double %16
  %19 = fdiv double %1, 1.000000e+02
  %20 = fsub double 1.000000e+02, %1
  %21 = fdiv double %20, 2.000000e+02
  %22 = fsub double 1.000000e+00, %18
  %23 = tail call double @llvm.fmuladd.f64(double %21, double %22, double %19)
  store double %18, ptr %4, align 16, !tbaa !34
  %24 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 1
  store double %23, ptr %24, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %26 = call i32 @FunctionImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 2, ptr noundef nonnull %4, ptr noundef nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BrightnessContrastImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 301, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %9, %4
  %13 = fdiv double %3, 1.000000e+02
  %14 = fadd double %13, 1.000000e+00
  %15 = fmul double %14, 0x400921FB54442D18
  %16 = fmul double %15, 2.500000e-01
  %17 = tail call double @tan(double noundef %16) #8
  %18 = fcmp olt double %17, 0.000000e+00
  %19 = select i1 %18, double 0.000000e+00, double %17
  %20 = fdiv double %2, 1.000000e+02
  %21 = fsub double 1.000000e+02, %2
  %22 = fdiv double %21, 2.000000e+02
  %23 = fsub double 1.000000e+00, %19
  %24 = tail call double @llvm.fmuladd.f64(double %22, double %23, double %20)
  store double %19, ptr %5, align 16, !tbaa !34
  %25 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  store double %24, ptr %25, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = call i32 @FunctionImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef 1, i64 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %26) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i32 %27
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @FunctionImageChannel(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorDecisionListImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 424, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %9, %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %431, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %16 = tail call ptr @NewXMLTree(ptr noundef nonnull %1, ptr noundef nonnull %15) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %431, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %16, ptr noundef nonnull @.str.3) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %16) #8
  br label %431

23:                                               ; preds = %18
  %24 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %19, ptr noundef nonnull @.str.4) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %134, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %24, ptr noundef nonnull @.str.5) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %60, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %27) #8
  store ptr %30, ptr %5, align 8, !tbaa !74
  %31 = load i8, ptr %30, align 1, !tbaa !75
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %29, %50
  %34 = phi ptr [ %55, %50 ], [ %30, %29 ]
  %35 = phi double [ %53, %50 ], [ 1.000000e+00, %29 ]
  %36 = phi double [ %52, %50 ], [ 1.000000e+00, %29 ]
  %37 = phi i64 [ %54, %50 ], [ 0, %29 ]
  %38 = phi double [ %51, %50 ], [ 1.000000e+00, %29 ]
  call void @GetMagickToken(ptr noundef nonnull %34, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %39 = load i8, ptr %4, align 16, !tbaa !75
  %40 = icmp eq i8 %39, 44
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load ptr, ptr %5, align 8, !tbaa !74
  call void @GetMagickToken(ptr noundef %42, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  br label %43

43:                                               ; preds = %41, %33
  switch i64 %37, label %50 [
    i64 0, label %44
    i64 1, label %46
    i64 2, label %48
  ]

44:                                               ; preds = %43
  %45 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %50

46:                                               ; preds = %43
  %47 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %50

48:                                               ; preds = %43
  %49 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %50

50:                                               ; preds = %44, %46, %48, %43
  %51 = phi double [ %38, %43 ], [ %38, %48 ], [ %38, %46 ], [ %45, %44 ]
  %52 = phi double [ %36, %43 ], [ %36, %48 ], [ %47, %46 ], [ %36, %44 ]
  %53 = phi double [ %35, %43 ], [ %49, %48 ], [ %35, %46 ], [ %35, %44 ]
  %54 = add nuw nsw i64 %37, 1
  %55 = load ptr, ptr %5, align 8, !tbaa !74
  %56 = load i8, ptr %55, align 1, !tbaa !75
  %57 = icmp ne i8 %56, 0
  %58 = icmp ult i64 %37, 2
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %33, label %60, !llvm.loop !76

60:                                               ; preds = %50, %29, %26
  %61 = phi double [ 1.000000e+00, %26 ], [ 1.000000e+00, %29 ], [ %51, %50 ]
  %62 = phi double [ 1.000000e+00, %26 ], [ 1.000000e+00, %29 ], [ %52, %50 ]
  %63 = phi double [ 1.000000e+00, %26 ], [ 1.000000e+00, %29 ], [ %53, %50 ]
  %64 = call ptr @GetXMLTreeChild(ptr noundef nonnull %24, ptr noundef nonnull @.str.6) #8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %97, label %66

66:                                               ; preds = %60
  %67 = call ptr @GetXMLTreeContent(ptr noundef nonnull %64) #8
  store ptr %67, ptr %5, align 8, !tbaa !74
  %68 = load i8, ptr %67, align 1, !tbaa !75
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %97, label %70

70:                                               ; preds = %66, %87
  %71 = phi ptr [ %92, %87 ], [ %67, %66 ]
  %72 = phi double [ %90, %87 ], [ 0.000000e+00, %66 ]
  %73 = phi double [ %89, %87 ], [ 0.000000e+00, %66 ]
  %74 = phi i64 [ %91, %87 ], [ 0, %66 ]
  %75 = phi double [ %88, %87 ], [ 0.000000e+00, %66 ]
  call void @GetMagickToken(ptr noundef nonnull %71, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %76 = load i8, ptr %4, align 16, !tbaa !75
  %77 = icmp eq i8 %76, 44
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load ptr, ptr %5, align 8, !tbaa !74
  call void @GetMagickToken(ptr noundef %79, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  br label %80

80:                                               ; preds = %78, %70
  switch i64 %74, label %87 [
    i64 0, label %81
    i64 1, label %83
    i64 2, label %85
  ]

81:                                               ; preds = %80
  %82 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %87

83:                                               ; preds = %80
  %84 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %87

85:                                               ; preds = %80
  %86 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %87

87:                                               ; preds = %81, %83, %85, %80
  %88 = phi double [ %75, %80 ], [ %75, %85 ], [ %75, %83 ], [ %82, %81 ]
  %89 = phi double [ %73, %80 ], [ %73, %85 ], [ %84, %83 ], [ %73, %81 ]
  %90 = phi double [ %72, %80 ], [ %86, %85 ], [ %72, %83 ], [ %72, %81 ]
  %91 = add nuw nsw i64 %74, 1
  %92 = load ptr, ptr %5, align 8, !tbaa !74
  %93 = load i8, ptr %92, align 1, !tbaa !75
  %94 = icmp ne i8 %93, 0
  %95 = icmp ult i64 %74, 2
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %70, label %97, !llvm.loop !77

97:                                               ; preds = %87, %66, %60
  %98 = phi double [ 0.000000e+00, %60 ], [ 0.000000e+00, %66 ], [ %88, %87 ]
  %99 = phi double [ 0.000000e+00, %60 ], [ 0.000000e+00, %66 ], [ %89, %87 ]
  %100 = phi double [ 0.000000e+00, %60 ], [ 0.000000e+00, %66 ], [ %90, %87 ]
  %101 = call ptr @GetXMLTreeChild(ptr noundef nonnull %24, ptr noundef nonnull @.str.7) #8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %134, label %103

103:                                              ; preds = %97
  %104 = call ptr @GetXMLTreeContent(ptr noundef nonnull %101) #8
  store ptr %104, ptr %5, align 8, !tbaa !74
  %105 = load i8, ptr %104, align 1, !tbaa !75
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %134, label %107

107:                                              ; preds = %103, %124
  %108 = phi ptr [ %129, %124 ], [ %104, %103 ]
  %109 = phi double [ %127, %124 ], [ 1.000000e+00, %103 ]
  %110 = phi double [ %126, %124 ], [ 1.000000e+00, %103 ]
  %111 = phi double [ %125, %124 ], [ 1.000000e+00, %103 ]
  %112 = phi i64 [ %128, %124 ], [ 0, %103 ]
  call void @GetMagickToken(ptr noundef nonnull %108, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %113 = load i8, ptr %4, align 16, !tbaa !75
  %114 = icmp eq i8 %113, 44
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load ptr, ptr %5, align 8, !tbaa !74
  call void @GetMagickToken(ptr noundef %116, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  br label %117

117:                                              ; preds = %115, %107
  switch i64 %112, label %124 [
    i64 0, label %118
    i64 1, label %120
    i64 2, label %122
  ]

118:                                              ; preds = %117
  %119 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %124

120:                                              ; preds = %117
  %121 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %124

122:                                              ; preds = %117
  %123 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %124

124:                                              ; preds = %118, %120, %122, %117
  %125 = phi double [ %111, %117 ], [ %111, %122 ], [ %111, %120 ], [ %119, %118 ]
  %126 = phi double [ %110, %117 ], [ %110, %122 ], [ %121, %120 ], [ %110, %118 ]
  %127 = phi double [ %109, %117 ], [ %123, %122 ], [ %109, %120 ], [ %109, %118 ]
  %128 = add nuw nsw i64 %112, 1
  %129 = load ptr, ptr %5, align 8, !tbaa !74
  %130 = load i8, ptr %129, align 1, !tbaa !75
  %131 = icmp ne i8 %130, 0
  %132 = icmp ult i64 %112, 2
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %107, label %134, !llvm.loop !78

134:                                              ; preds = %124, %103, %97, %23
  %135 = phi double [ 1.000000e+00, %23 ], [ %61, %97 ], [ %61, %103 ], [ %61, %124 ]
  %136 = phi double [ 0.000000e+00, %23 ], [ %98, %97 ], [ %98, %103 ], [ %98, %124 ]
  %137 = phi double [ 1.000000e+00, %23 ], [ 1.000000e+00, %97 ], [ 1.000000e+00, %103 ], [ %125, %124 ]
  %138 = phi double [ 1.000000e+00, %23 ], [ %62, %97 ], [ %62, %103 ], [ %62, %124 ]
  %139 = phi double [ 0.000000e+00, %23 ], [ %99, %97 ], [ %99, %103 ], [ %99, %124 ]
  %140 = phi double [ 1.000000e+00, %23 ], [ 1.000000e+00, %97 ], [ 1.000000e+00, %103 ], [ %126, %124 ]
  %141 = phi double [ 1.000000e+00, %23 ], [ %63, %97 ], [ %63, %103 ], [ %63, %124 ]
  %142 = phi double [ 0.000000e+00, %23 ], [ %100, %97 ], [ %100, %103 ], [ %100, %124 ]
  %143 = phi double [ 1.000000e+00, %23 ], [ 1.000000e+00, %97 ], [ 1.000000e+00, %103 ], [ %127, %124 ]
  %144 = call ptr @GetXMLTreeChild(ptr noundef nonnull %19, ptr noundef nonnull @.str.8) #8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %134
  %147 = call ptr @GetXMLTreeChild(ptr noundef nonnull %144, ptr noundef nonnull @.str.9) #8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = call ptr @GetXMLTreeContent(ptr noundef nonnull %147) #8
  store ptr %150, ptr %5, align 8, !tbaa !74
  call void @GetMagickToken(ptr noundef %150, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %151 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #8
  br label %152

152:                                              ; preds = %146, %149, %134
  %153 = phi double [ 0.000000e+00, %134 ], [ %151, %149 ], [ 0.000000e+00, %146 ]
  %154 = call ptr @DestroyXMLTree(ptr noundef nonnull %16) #8
  %155 = load i32, ptr %6, align 8, !tbaa !56
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %152
  %158 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 570, ptr noundef nonnull @.str.10) #8
  %159 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 572, ptr noundef nonnull @.str.11, double noundef %135) #8
  %160 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 574, ptr noundef nonnull @.str.12, double noundef %136) #8
  %161 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 576, ptr noundef nonnull @.str.13, double noundef %137) #8
  %162 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 578, ptr noundef nonnull @.str.14, double noundef %138) #8
  %163 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 580, ptr noundef nonnull @.str.15, double noundef %139) #8
  %164 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 582, ptr noundef nonnull @.str.16, double noundef %140) #8
  %165 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 584, ptr noundef nonnull @.str.17, double noundef %141) #8
  %166 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 586, ptr noundef nonnull @.str.18, double noundef %142) #8
  %167 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 588, ptr noundef nonnull @.str.19, double noundef %143) #8
  %168 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 590, ptr noundef nonnull @.str.20, double noundef %153) #8
  br label %169

169:                                              ; preds = %157, %152
  %170 = call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #10
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = icmp eq ptr %0, null
  br i1 %173, label %431, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %176 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 596, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %175) #8
  br label %431

177:                                              ; preds = %169, %247
  %178 = phi i64 [ %249, %247 ], [ 0, %169 ]
  %179 = sitofp i64 %178 to double
  %180 = fmul double %135, %179
  %181 = fdiv double %180, 6.553500e+04
  %182 = fadd double %136, %181
  %183 = call double @pow(double noundef %182, double noundef %137) #8
  %184 = fmul double %183, 6.553500e+04
  %185 = fptrunc double %184 to float
  %186 = fpext float %185 to double
  %187 = fcmp ugt float %185, 0.000000e+00
  br i1 %187, label %188, label %193

188:                                              ; preds = %177
  %189 = fcmp ult float %185, 6.553500e+04
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = fadd double %186, 5.000000e-01
  %192 = fptoui double %191 to i16
  br label %193

193:                                              ; preds = %177, %188, %190
  %194 = phi i16 [ %192, %190 ], [ 0, %177 ], [ -1, %188 ]
  switch i16 %194, label %195 [
    i16 0, label %200
    i16 -1, label %199
  ]

195:                                              ; preds = %193
  %196 = uitofp i16 %194 to float
  %197 = fadd float %196, 5.000000e-01
  %198 = fptoui float %197 to i16
  br label %200

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %193, %199, %195
  %201 = phi i16 [ %198, %195 ], [ %194, %193 ], [ -1, %199 ]
  %202 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %178
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %178, i32 2
  store i16 %201, ptr %203, align 2, !tbaa !60
  %204 = fmul double %138, %179
  %205 = fdiv double %204, 6.553500e+04
  %206 = fadd double %139, %205
  %207 = call double @pow(double noundef %206, double noundef %140) #8
  %208 = fmul double %207, 6.553500e+04
  %209 = fptrunc double %208 to float
  %210 = fpext float %209 to double
  %211 = fcmp ugt float %209, 0.000000e+00
  br i1 %211, label %212, label %217

212:                                              ; preds = %200
  %213 = fcmp ult float %209, 6.553500e+04
  br i1 %213, label %214, label %217

214:                                              ; preds = %212
  %215 = fadd double %210, 5.000000e-01
  %216 = fptoui double %215 to i16
  br label %217

217:                                              ; preds = %200, %212, %214
  %218 = phi i16 [ %216, %214 ], [ 0, %200 ], [ -1, %212 ]
  switch i16 %218, label %219 [
    i16 0, label %224
    i16 -1, label %223
  ]

219:                                              ; preds = %217
  %220 = uitofp i16 %218 to float
  %221 = fadd float %220, 5.000000e-01
  %222 = fptoui float %221 to i16
  br label %224

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %217, %223, %219
  %225 = phi i16 [ %222, %219 ], [ %218, %217 ], [ -1, %223 ]
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %178, i32 1
  store i16 %225, ptr %226, align 2, !tbaa !61
  %227 = fmul double %141, %179
  %228 = fdiv double %227, 6.553500e+04
  %229 = fadd double %142, %228
  %230 = call double @pow(double noundef %229, double noundef %143) #8
  %231 = fmul double %230, 6.553500e+04
  %232 = fptrunc double %231 to float
  %233 = fpext float %232 to double
  %234 = fcmp ugt float %232, 0.000000e+00
  br i1 %234, label %235, label %240

235:                                              ; preds = %224
  %236 = fcmp ult float %232, 6.553500e+04
  br i1 %236, label %237, label %240

237:                                              ; preds = %235
  %238 = fadd double %233, 5.000000e-01
  %239 = fptoui double %238 to i16
  br label %240

240:                                              ; preds = %224, %235, %237
  %241 = phi i16 [ %239, %237 ], [ 0, %224 ], [ -1, %235 ]
  switch i16 %241, label %242 [
    i16 0, label %247
    i16 -1, label %246
  ]

242:                                              ; preds = %240
  %243 = uitofp i16 %241 to float
  %244 = fadd float %243, 5.000000e-01
  %245 = fptoui float %244 to i16
  br label %247

246:                                              ; preds = %240
  br label %247

247:                                              ; preds = %240, %246, %242
  %248 = phi i16 [ %245, %242 ], [ %241, %240 ], [ -1, %246 ]
  store i16 %248, ptr %202, align 2, !tbaa !62
  %249 = add nuw nsw i64 %178, 1
  %250 = icmp eq i64 %249, 65536
  br i1 %250, label %251, label %177, !llvm.loop !79

251:                                              ; preds = %247
  %252 = load i32, ptr %0, align 8, !tbaa !57
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %254, label %322

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %256 = load i64, ptr %255, align 8, !tbaa !58
  %257 = icmp sgt i64 %256, 0
  br i1 %257, label %258, label %322

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %260 = load ptr, ptr %259, align 8, !tbaa !59
  br label %261

261:                                              ; preds = %258, %318
  %262 = phi i64 [ 0, %258 ], [ %320, %318 ]
  %263 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 %262
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 %262, i32 2
  %265 = load i16, ptr %264, align 2, !tbaa !60
  %266 = uitofp i16 %265 to double
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 %262, i32 1
  %268 = load i16, ptr %267, align 2, !tbaa !61
  %269 = uitofp i16 %268 to double
  %270 = fmul double %269, 0x3FE6E29307AF20EA
  %271 = call double @llvm.fmuladd.f64(double %266, double 2.126560e-01, double %270)
  %272 = load i16, ptr %263, align 2, !tbaa !62
  %273 = uitofp i16 %272 to double
  %274 = call double @llvm.fmuladd.f64(double %273, double 7.218600e-02, double %271)
  %275 = zext i16 %265 to i64
  %276 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %275, i32 2
  %277 = load i16, ptr %276, align 2, !tbaa !60
  %278 = uitofp i16 %277 to double
  %279 = call double @llvm.fmuladd.f64(double %153, double %278, double %274)
  %280 = fsub double %279, %274
  %281 = fptrunc double %280 to float
  %282 = fcmp ugt float %281, 0.000000e+00
  br i1 %282, label %283, label %288

283:                                              ; preds = %261
  %284 = fcmp ult float %281, 6.553500e+04
  br i1 %284, label %285, label %288

285:                                              ; preds = %283
  %286 = fadd float %281, 5.000000e-01
  %287 = fptoui float %286 to i16
  br label %288

288:                                              ; preds = %261, %283, %285
  %289 = phi i16 [ %287, %285 ], [ 0, %261 ], [ -1, %283 ]
  store i16 %289, ptr %264, align 2, !tbaa !60
  %290 = zext i16 %268 to i64
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %290, i32 1
  %292 = load i16, ptr %291, align 2, !tbaa !61
  %293 = uitofp i16 %292 to double
  %294 = call double @llvm.fmuladd.f64(double %153, double %293, double %274)
  %295 = fsub double %294, %274
  %296 = fptrunc double %295 to float
  %297 = fcmp ugt float %296, 0.000000e+00
  br i1 %297, label %298, label %303

298:                                              ; preds = %288
  %299 = fcmp ult float %296, 6.553500e+04
  br i1 %299, label %300, label %303

300:                                              ; preds = %298
  %301 = fadd float %296, 5.000000e-01
  %302 = fptoui float %301 to i16
  br label %303

303:                                              ; preds = %288, %298, %300
  %304 = phi i16 [ %302, %300 ], [ 0, %288 ], [ -1, %298 ]
  store i16 %304, ptr %267, align 2, !tbaa !61
  %305 = zext i16 %272 to i64
  %306 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %305
  %307 = load i16, ptr %306, align 2, !tbaa !62
  %308 = uitofp i16 %307 to double
  %309 = call double @llvm.fmuladd.f64(double %153, double %308, double %274)
  %310 = fsub double %309, %274
  %311 = fptrunc double %310 to float
  %312 = fcmp ugt float %311, 0.000000e+00
  br i1 %312, label %313, label %318

313:                                              ; preds = %303
  %314 = fcmp ult float %311, 6.553500e+04
  br i1 %314, label %315, label %318

315:                                              ; preds = %313
  %316 = fadd float %311, 5.000000e-01
  %317 = fptoui float %316 to i16
  br label %318

318:                                              ; preds = %303, %313, %315
  %319 = phi i16 [ %317, %315 ], [ 0, %303 ], [ -1, %313 ]
  store i16 %319, ptr %263, align 2, !tbaa !62
  %320 = add nuw nsw i64 %262, 1
  %321 = icmp eq i64 %320, %256
  br i1 %321, label %322, label %261, !llvm.loop !80

322:                                              ; preds = %318, %254, %251
  %323 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %15) #8
  %324 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %325 = load i64, ptr %324, align 8, !tbaa !67
  %326 = icmp sgt i64 %325, 0
  br i1 %326, label %327, label %427

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %329 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %330 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %331 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %332

332:                                              ; preds = %327, %421
  %333 = phi i64 [ 0, %327 ], [ %424, %421 ]
  %334 = phi i64 [ 0, %327 ], [ %423, %421 ]
  %335 = phi i32 [ 1, %327 ], [ %422, %421 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %421, label %337

337:                                              ; preds = %332
  %338 = load i64, ptr %328, align 8, !tbaa !68
  %339 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %323, i64 noundef 0, i64 noundef %333, i64 noundef %338, i64 noundef 1, ptr noundef nonnull %15) #9
  %340 = icmp eq ptr %339, null
  br i1 %340, label %421, label %341

341:                                              ; preds = %337
  %342 = load i64, ptr %328, align 8, !tbaa !68
  %343 = icmp sgt i64 %342, 0
  br i1 %343, label %344, label %406

344:                                              ; preds = %341, %401
  %345 = phi i64 [ %404, %401 ], [ 0, %341 ]
  %346 = phi ptr [ %403, %401 ], [ %339, %341 ]
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 0, i32 2
  %348 = load i16, ptr %347, align 2, !tbaa !60
  %349 = uitofp i16 %348 to double
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 0, i32 1
  %351 = load i16, ptr %350, align 2, !tbaa !61
  %352 = uitofp i16 %351 to double
  %353 = fmul double %352, 0x3FE6E29307AF20EA
  %354 = call double @llvm.fmuladd.f64(double %349, double 2.126560e-01, double %353)
  %355 = load i16, ptr %346, align 2, !tbaa !62
  %356 = uitofp i16 %355 to double
  %357 = call double @llvm.fmuladd.f64(double %356, double 7.218600e-02, double %354)
  %358 = zext i16 %348 to i64
  %359 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %358, i32 2
  %360 = load i16, ptr %359, align 2, !tbaa !60
  %361 = uitofp i16 %360 to double
  %362 = fsub double %361, %357
  %363 = call double @llvm.fmuladd.f64(double %153, double %362, double %357)
  %364 = fptrunc double %363 to float
  %365 = fcmp ugt float %364, 0.000000e+00
  br i1 %365, label %366, label %371

366:                                              ; preds = %344
  %367 = fcmp ult float %364, 6.553500e+04
  br i1 %367, label %368, label %371

368:                                              ; preds = %366
  %369 = fadd float %364, 5.000000e-01
  %370 = fptoui float %369 to i16
  br label %371

371:                                              ; preds = %344, %366, %368
  %372 = phi i16 [ %370, %368 ], [ 0, %344 ], [ -1, %366 ]
  store i16 %372, ptr %347, align 2, !tbaa !60
  %373 = zext i16 %351 to i64
  %374 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %373, i32 1
  %375 = load i16, ptr %374, align 2, !tbaa !61
  %376 = uitofp i16 %375 to double
  %377 = fsub double %376, %357
  %378 = call double @llvm.fmuladd.f64(double %153, double %377, double %357)
  %379 = fptrunc double %378 to float
  %380 = fcmp ugt float %379, 0.000000e+00
  br i1 %380, label %381, label %386

381:                                              ; preds = %371
  %382 = fcmp ult float %379, 6.553500e+04
  br i1 %382, label %383, label %386

383:                                              ; preds = %381
  %384 = fadd float %379, 5.000000e-01
  %385 = fptoui float %384 to i16
  br label %386

386:                                              ; preds = %371, %381, %383
  %387 = phi i16 [ %385, %383 ], [ 0, %371 ], [ -1, %381 ]
  store i16 %387, ptr %350, align 2, !tbaa !61
  %388 = zext i16 %355 to i64
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 %388
  %390 = load i16, ptr %389, align 2, !tbaa !62
  %391 = uitofp i16 %390 to double
  %392 = fsub double %391, %357
  %393 = call double @llvm.fmuladd.f64(double %153, double %392, double %357)
  %394 = fptrunc double %393 to float
  %395 = fcmp ugt float %394, 0.000000e+00
  br i1 %395, label %396, label %401

396:                                              ; preds = %386
  %397 = fcmp ult float %394, 6.553500e+04
  br i1 %397, label %398, label %401

398:                                              ; preds = %396
  %399 = fadd float %394, 5.000000e-01
  %400 = fptoui float %399 to i16
  br label %401

401:                                              ; preds = %386, %396, %398
  %402 = phi i16 [ %400, %398 ], [ 0, %386 ], [ -1, %396 ]
  store i16 %402, ptr %346, align 2, !tbaa !62
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 1
  %404 = add nuw nsw i64 %345, 1
  %405 = icmp eq i64 %404, %342
  br i1 %405, label %406, label %344, !llvm.loop !81

406:                                              ; preds = %401, %341
  %407 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %323, ptr noundef nonnull %15) #9
  %408 = icmp ne i32 %407, 0
  %409 = zext i1 %408 to i32
  %410 = load ptr, ptr %329, align 8, !tbaa !71
  %411 = icmp eq ptr %410, null
  br i1 %411, label %421, label %412

412:                                              ; preds = %406
  %413 = add nsw i64 %334, 1
  %414 = load i64, ptr %324, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #8
  %415 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.23, ptr noundef nonnull %330) #8
  %416 = load ptr, ptr %329, align 8, !tbaa !71
  %417 = load ptr, ptr %331, align 8, !tbaa !72
  %418 = call i32 %416(ptr noundef nonnull %3, i64 noundef %334, i64 noundef %414, ptr noundef %417) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #8
  %419 = icmp eq i32 %418, 0
  %420 = select i1 %419, i32 0, i32 %409
  br label %421

421:                                              ; preds = %406, %412, %337, %332
  %422 = phi i32 [ 0, %332 ], [ 0, %337 ], [ %420, %412 ], [ %409, %406 ]
  %423 = phi i64 [ %334, %332 ], [ %334, %337 ], [ %413, %412 ], [ %334, %406 ]
  %424 = add nuw nsw i64 %333, 1
  %425 = load i64, ptr %324, align 8, !tbaa !67
  %426 = icmp slt i64 %424, %425
  br i1 %426, label %332, label %427, !llvm.loop !82

427:                                              ; preds = %421, %322
  %428 = phi i32 [ 1, %322 ], [ %422, %421 ]
  %429 = call ptr @DestroyCacheView(ptr noundef %323) #8
  %430 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %170) #8
  br label %431

431:                                              ; preds = %172, %174, %14, %12, %427, %21
  %432 = phi i32 [ 0, %21 ], [ %428, %427 ], [ 0, %12 ], [ 0, %14 ], [ 0, %174 ], [ 0, %172 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  ret i32 %432
}

declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #3

declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #3

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ClutImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ClutImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1), !range !38
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ClutImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 774, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %295, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !55
  switch i32 %17, label %23 [
    i32 19, label %18
    i32 17, label %18
    i32 2, label %18
  ]

18:                                               ; preds = %15, %15, %15
  %19 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !55
  switch i32 %20, label %21 [
    i32 19, label %23
    i32 17, label %23
    i32 2, label %23
  ]

21:                                               ; preds = %18
  %22 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #8
  br label %23

23:                                               ; preds = %15, %18, %18, %18, %21
  %24 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = icmp eq ptr %0, null
  br i1 %27, label %295, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 786, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %30) #8
  br label %295

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 70
  %34 = load i32, ptr %33, align 8, !tbaa !83
  %35 = icmp ne i32 %34, 5
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %38 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef nonnull %37) #8
  %39 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %40 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  br label %41

41:                                               ; preds = %32, %41
  %42 = phi i64 [ 0, %32 ], [ %55, %41 ]
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %42
  tail call void @GetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %43) #8
  %44 = sitofp i64 %42 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = load i64, ptr %39, align 8, !tbaa !68
  %47 = sub i64 %46, %36
  %48 = uitofp i64 %47 to double
  %49 = fmul double %45, %48
  %50 = load i64, ptr %40, align 8, !tbaa !67
  %51 = sub i64 %50, %36
  %52 = uitofp i64 %51 to double
  %53 = fmul double %45, %52
  %54 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %2, ptr noundef %38, i32 noundef 0, double noundef %49, double noundef %53, ptr noundef nonnull %43, ptr noundef nonnull %37) #8
  %55 = add nuw nsw i64 %42, 1
  %56 = icmp eq i64 %55, 65536
  br i1 %56, label %57, label %41, !llvm.loop !84

57:                                               ; preds = %41
  %58 = tail call ptr @DestroyCacheView(ptr noundef %38) #8
  %59 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %37) #8
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %61 = load i64, ptr %60, align 8, !tbaa !67
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %283

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %70 = and i32 %1, 1
  %71 = icmp eq i32 %70, 0
  %72 = and i32 %1, 2
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %1, 4
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %1, 8
  %77 = icmp eq i32 %76, 0
  %78 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 6
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  %81 = and i32 %1, 32
  %82 = icmp eq i32 %81, 0
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %86

86:                                               ; preds = %63, %277
  %87 = phi i64 [ 0, %63 ], [ %280, %277 ]
  %88 = phi i64 [ 0, %63 ], [ %279, %277 ]
  %89 = phi i32 [ 1, %63 ], [ %278, %277 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %277, label %91

91:                                               ; preds = %86
  %92 = load i64, ptr %64, align 8, !tbaa !68
  %93 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %59, i64 noundef 0, i64 noundef %87, i64 noundef %92, i64 noundef 1, ptr noundef nonnull %37) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %277, label %95

95:                                               ; preds = %91
  %96 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %59) #8
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %5) #8
  %97 = load i64, ptr %64, align 8, !tbaa !68
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %262

99:                                               ; preds = %95
  %100 = load i32, ptr %16, align 4, !tbaa !55
  %101 = icmp eq i32 %100, 12
  %102 = icmp ne ptr %96, null
  %103 = and i1 %102, %101
  %104 = load i32, ptr %80, align 4
  %105 = icmp eq i32 %104, 2
  %106 = icmp ne i32 %100, 12
  %107 = icmp eq ptr %96, null
  %108 = or i1 %82, %106
  %109 = select i1 %108, i1 true, i1 %107
  br label %110

110:                                              ; preds = %99, %254
  %111 = phi i64 [ 0, %99 ], [ %256, %254 ]
  %112 = phi ptr [ %93, %99 ], [ %255, %254 ]
  %113 = getelementptr inbounds i16, ptr %96, i64 %111
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 0, i32 2
  %115 = load i16, ptr %114, align 2, !tbaa !60
  %116 = uitofp i16 %115 to float
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 0, i32 1
  %118 = load i16, ptr %117, align 2, !tbaa !61
  %119 = load i16, ptr %112, align 2, !tbaa !62
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 0, i32 3
  %121 = load i16, ptr %120, align 2, !tbaa !63
  br i1 %103, label %122, label %125

122:                                              ; preds = %110
  %123 = load i16, ptr %113, align 2, !tbaa !69
  %124 = uitofp i16 %123 to float
  store float %124, ptr %69, align 8, !tbaa !85
  br label %125

125:                                              ; preds = %110, %122
  br i1 %71, label %138, label %126

126:                                              ; preds = %125
  %127 = zext i16 %115 to i64
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %127, i32 5
  %129 = load float, ptr %128, align 8, !tbaa !88
  %130 = fcmp ugt float %129, 0.000000e+00
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = fcmp ult float %129, 6.553500e+04
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = fadd float %129, 5.000000e-01
  %135 = fptoui float %134 to i16
  br label %136

136:                                              ; preds = %126, %131, %133
  %137 = phi i16 [ %135, %133 ], [ 0, %126 ], [ -1, %131 ]
  store i16 %137, ptr %114, align 2, !tbaa !60
  br label %138

138:                                              ; preds = %136, %125
  br i1 %73, label %151, label %139

139:                                              ; preds = %138
  %140 = zext i16 %118 to i64
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %140, i32 6
  %142 = load float, ptr %141, align 4, !tbaa !89
  %143 = fcmp ugt float %142, 0.000000e+00
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = fcmp ult float %142, 6.553500e+04
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = fadd float %142, 5.000000e-01
  %148 = fptoui float %147 to i16
  br label %149

149:                                              ; preds = %139, %144, %146
  %150 = phi i16 [ %148, %146 ], [ 0, %139 ], [ -1, %144 ]
  store i16 %150, ptr %117, align 2, !tbaa !61
  br label %151

151:                                              ; preds = %149, %138
  br i1 %75, label %164, label %152

152:                                              ; preds = %151
  %153 = zext i16 %119 to i64
  %154 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %153, i32 7
  %155 = load float, ptr %154, align 8, !tbaa !90
  %156 = fcmp ugt float %155, 0.000000e+00
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = fcmp ult float %155, 6.553500e+04
  br i1 %158, label %159, label %162

159:                                              ; preds = %157
  %160 = fadd float %155, 5.000000e-01
  %161 = fptoui float %160 to i16
  br label %162

162:                                              ; preds = %152, %157, %159
  %163 = phi i16 [ %161, %159 ], [ 0, %152 ], [ -1, %157 ]
  store i16 %163, ptr %112, align 2, !tbaa !62
  br label %164

164:                                              ; preds = %162, %151
  br i1 %77, label %240, label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %78, align 8, !tbaa !39
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %204

168:                                              ; preds = %165
  %169 = xor i16 %121, -1
  %170 = zext i16 %169 to i64
  %171 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %170, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !91
  %173 = icmp eq i32 %172, 2
  %174 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %170, i32 5
  %175 = load float, ptr %174, align 8, !tbaa !88
  br i1 %173, label %176, label %183

176:                                              ; preds = %168
  %177 = fcmp ugt float %175, 0.000000e+00
  br i1 %177, label %178, label %201

178:                                              ; preds = %176
  %179 = fcmp ult float %175, 6.553500e+04
  br i1 %179, label %180, label %201

180:                                              ; preds = %178
  %181 = fadd float %175, 5.000000e-01
  %182 = fptoui float %181 to i16
  br label %201

183:                                              ; preds = %168
  %184 = fpext float %175 to double
  %185 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %170, i32 6
  %186 = load float, ptr %185, align 4, !tbaa !89
  %187 = fpext float %186 to double
  %188 = fmul double %187, 0x3FE6E29307AF20EA
  %189 = call double @llvm.fmuladd.f64(double %184, double 2.126560e-01, double %188)
  %190 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %170, i32 7
  %191 = load float, ptr %190, align 8, !tbaa !90
  %192 = fpext float %191 to double
  %193 = call double @llvm.fmuladd.f64(double %192, double 7.218600e-02, double %189)
  %194 = fptrunc double %193 to float
  %195 = fcmp ugt float %194, 0.000000e+00
  br i1 %195, label %196, label %201

196:                                              ; preds = %183
  %197 = fcmp ult float %194, 6.553500e+04
  br i1 %197, label %198, label %201

198:                                              ; preds = %196
  %199 = fadd float %194, 5.000000e-01
  %200 = fptoui float %199 to i16
  br label %201

201:                                              ; preds = %176, %178, %180, %183, %196, %198
  %202 = phi i16 [ %182, %180 ], [ 0, %176 ], [ -1, %178 ], [ %200, %198 ], [ 0, %183 ], [ -1, %196 ]
  %203 = xor i16 %202, -1
  br label %238

204:                                              ; preds = %165
  %205 = load i32, ptr %79, align 8, !tbaa !39
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %228

207:                                              ; preds = %204
  br i1 %105, label %216, label %208

208:                                              ; preds = %207
  %209 = uitofp i16 %115 to double
  %210 = uitofp i16 %118 to double
  %211 = fmul double %210, 0x3FE6E29307AF20EA
  %212 = call double @llvm.fmuladd.f64(double %209, double 2.126560e-01, double %211)
  %213 = uitofp i16 %119 to double
  %214 = call double @llvm.fmuladd.f64(double %213, double 7.218600e-02, double %212)
  %215 = fptrunc double %214 to float
  br label %216

216:                                              ; preds = %207, %208
  %217 = phi float [ %215, %208 ], [ %116, %207 ]
  %218 = fptoui float %217 to i16
  %219 = zext i16 %218 to i64
  %220 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %219, i32 8
  %221 = load float, ptr %220, align 4, !tbaa !92
  %222 = fcmp ugt float %221, 0.000000e+00
  br i1 %222, label %223, label %238

223:                                              ; preds = %216
  %224 = fcmp ult float %221, 6.553500e+04
  br i1 %224, label %225, label %238

225:                                              ; preds = %223
  %226 = fadd float %221, 5.000000e-01
  %227 = fptoui float %226 to i16
  br label %238

228:                                              ; preds = %204
  %229 = zext i16 %121 to i64
  %230 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %229, i32 8
  %231 = load float, ptr %230, align 4, !tbaa !92
  %232 = fcmp ugt float %231, 0.000000e+00
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = fcmp ult float %231, 6.553500e+04
  br i1 %234, label %235, label %238

235:                                              ; preds = %233
  %236 = fadd float %231, 5.000000e-01
  %237 = fptoui float %236 to i16
  br label %238

238:                                              ; preds = %235, %233, %228, %225, %223, %216, %201
  %239 = phi i16 [ %203, %201 ], [ %227, %225 ], [ 0, %216 ], [ -1, %223 ], [ %237, %235 ], [ 0, %228 ], [ -1, %233 ]
  store i16 %239, ptr %120, align 2, !tbaa !63
  br label %240

240:                                              ; preds = %238, %164
  br i1 %109, label %254, label %241

241:                                              ; preds = %240
  %242 = load i16, ptr %113, align 2, !tbaa !69
  %243 = zext i16 %242 to i64
  %244 = getelementptr inbounds %struct._MagickPixelPacket, ptr %24, i64 %243, i32 9
  %245 = load float, ptr %244, align 8, !tbaa !85
  %246 = fcmp ugt float %245, 0.000000e+00
  br i1 %246, label %247, label %252

247:                                              ; preds = %241
  %248 = fcmp ult float %245, 6.553500e+04
  br i1 %248, label %249, label %252

249:                                              ; preds = %247
  %250 = fadd float %245, 5.000000e-01
  %251 = fptoui float %250 to i16
  br label %252

252:                                              ; preds = %241, %247, %249
  %253 = phi i16 [ %251, %249 ], [ 0, %241 ], [ -1, %247 ]
  store i16 %253, ptr %113, align 2, !tbaa !69
  br label %254

254:                                              ; preds = %240, %252
  %255 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 1
  %256 = add nuw nsw i64 %111, 1
  %257 = icmp eq i64 %256, %97
  br i1 %257, label %258, label %110, !llvm.loop !93

258:                                              ; preds = %254
  %259 = uitofp i16 %118 to float
  %260 = uitofp i16 %119 to float
  %261 = uitofp i16 %121 to float
  store float %116, ptr %65, align 8, !tbaa !88
  store float %259, ptr %66, align 4, !tbaa !89
  store float %260, ptr %67, align 8, !tbaa !90
  store float %261, ptr %68, align 4, !tbaa !92
  br label %262

262:                                              ; preds = %258, %95
  %263 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %59, ptr noundef nonnull %37) #9
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i32
  %266 = load ptr, ptr %83, align 8, !tbaa !71
  %267 = icmp eq ptr %266, null
  br i1 %267, label %277, label %268

268:                                              ; preds = %262
  %269 = add nsw i64 %88, 1
  %270 = load i64, ptr %60, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %271 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.24, ptr noundef nonnull %84) #8
  %272 = load ptr, ptr %83, align 8, !tbaa !71
  %273 = load ptr, ptr %85, align 8, !tbaa !72
  %274 = call i32 %272(ptr noundef nonnull %4, i64 noundef %88, i64 noundef %270, ptr noundef %273) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, i32 0, i32 %265
  br label %277

277:                                              ; preds = %262, %268, %91, %86
  %278 = phi i32 [ 0, %86 ], [ 0, %91 ], [ %276, %268 ], [ %265, %262 ]
  %279 = phi i64 [ %88, %86 ], [ %88, %91 ], [ %269, %268 ], [ %88, %262 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #8
  %280 = add nuw nsw i64 %87, 1
  %281 = load i64, ptr %60, align 8, !tbaa !67
  %282 = icmp slt i64 %280, %281
  br i1 %282, label %86, label %283, !llvm.loop !94

283:                                              ; preds = %277, %57
  %284 = phi i32 [ 1, %57 ], [ %278, %277 ]
  %285 = call ptr @DestroyCacheView(ptr noundef %59) #8
  %286 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %24) #8
  %287 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 6
  %288 = load i32, ptr %287, align 8, !tbaa !39
  %289 = icmp eq i32 %288, 0
  %290 = and i32 %1, 8
  %291 = icmp eq i32 %290, 0
  %292 = or i1 %291, %289
  br i1 %292, label %295, label %293

293:                                              ; preds = %283
  %294 = call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 1) #8
  br label %295

295:                                              ; preds = %283, %293, %26, %28, %12
  %296 = phi i32 [ 0, %12 ], [ 0, %28 ], [ 0, %26 ], [ %284, %293 ], [ %284, %283 ]
  ret i32 %296
}

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ContrastImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !56
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 968, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #8
  br label %19

19:                                               ; preds = %16, %2
  %20 = icmp eq i32 %1, 0
  %21 = select i1 %20, i32 -1, i32 1
  %22 = load i32, ptr %0, align 8, !tbaa !57
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %62

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %26 = load i64, ptr %25, align 8, !tbaa !58
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %30 = sitofp i32 %21 to double
  %31 = fmul double %30, 5.000000e-01
  br label %32

32:                                               ; preds = %28, %55
  %33 = phi i64 [ 0, %28 ], [ %59, %55 ]
  %34 = load ptr, ptr %29, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %33
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %33, i32 2
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %33, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !34
  store double 0.000000e+00, ptr %8, align 8, !tbaa !34
  store double 0.000000e+00, ptr %6, align 8, !tbaa !34
  %38 = load i16, ptr %36, align 2, !tbaa !69
  %39 = load i16, ptr %37, align 2, !tbaa !69
  %40 = load i16, ptr %35, align 2, !tbaa !69
  call void @ConvertRGBToHSB(i16 noundef zeroext %38, i16 noundef zeroext %39, i16 noundef zeroext %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #8
  %41 = load double, ptr %6, align 8, !tbaa !34
  %42 = fadd double %41, -5.000000e-01
  %43 = fmul double %42, 0x400921FB54442D18
  %44 = call double @sin(double noundef %43) #8
  %45 = fadd double %44, 1.000000e+00
  %46 = load double, ptr %6, align 8, !tbaa !34
  %47 = fneg double %46
  %48 = call double @llvm.fmuladd.f64(double %45, double 5.000000e-01, double %47)
  %49 = call double @llvm.fmuladd.f64(double %31, double %48, double %46)
  store double %49, ptr %6, align 8, !tbaa !34
  %50 = fcmp ogt double %49, 1.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  store double 1.000000e+00, ptr %6, align 8, !tbaa !34
  br label %55

52:                                               ; preds = %32
  %53 = fcmp olt double %49, 0.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  store double 0.000000e+00, ptr %6, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %51, %52, %54
  %56 = load double, ptr %7, align 8, !tbaa !34
  %57 = load double, ptr %8, align 8, !tbaa !34
  %58 = load double, ptr %6, align 8, !tbaa !34
  call void @ConvertHSBToRGB(double noundef %56, double noundef %57, double noundef %58, ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %35) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %59 = add nuw nsw i64 %33, 1
  %60 = load i64, ptr %25, align 8, !tbaa !58
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %32, label %62, !llvm.loop !95

62:                                               ; preds = %55, %24, %19
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %64 = call i32 @AccelerateContrastImage(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %63) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %147

66:                                               ; preds = %62
  %67 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %63) #8
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %69 = load i64, ptr %68, align 8, !tbaa !67
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %144

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %73 = sitofp i32 %21 to double
  %74 = fmul double %73, 5.000000e-01
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %78

78:                                               ; preds = %71, %138
  %79 = phi i64 [ 0, %71 ], [ %141, %138 ]
  %80 = phi i64 [ 0, %71 ], [ %140, %138 ]
  %81 = phi i32 [ 1, %71 ], [ %139, %138 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %138, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %72, align 8, !tbaa !68
  %85 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %67, i64 noundef 0, i64 noundef %79, i64 noundef %84, i64 noundef 1, ptr noundef nonnull %63) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %138, label %87

87:                                               ; preds = %83
  %88 = load i64, ptr %72, align 8, !tbaa !68
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %87, %112
  %91 = phi i64 [ %120, %112 ], [ 0, %87 ]
  %92 = phi ptr [ %119, %112 ], [ %85, %87 ]
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 2
  %94 = load i16, ptr %93, align 2, !tbaa !60
  store i16 %94, ptr %12, align 2, !tbaa !69
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 1
  %96 = load i16, ptr %95, align 2, !tbaa !61
  store i16 %96, ptr %11, align 2, !tbaa !69
  %97 = load i16, ptr %92, align 2, !tbaa !62
  store i16 %97, ptr %10, align 2, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store double 0.000000e+00, ptr %4, align 8, !tbaa !34
  store double 0.000000e+00, ptr %5, align 8, !tbaa !34
  store double 0.000000e+00, ptr %3, align 8, !tbaa !34
  call void @ConvertRGBToHSB(i16 noundef zeroext %94, i16 noundef zeroext %96, i16 noundef zeroext %97, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #8
  %98 = load double, ptr %3, align 8, !tbaa !34
  %99 = fadd double %98, -5.000000e-01
  %100 = fmul double %99, 0x400921FB54442D18
  %101 = call double @sin(double noundef %100) #8
  %102 = fadd double %101, 1.000000e+00
  %103 = load double, ptr %3, align 8, !tbaa !34
  %104 = fneg double %103
  %105 = call double @llvm.fmuladd.f64(double %102, double 5.000000e-01, double %104)
  %106 = call double @llvm.fmuladd.f64(double %74, double %105, double %103)
  store double %106, ptr %3, align 8, !tbaa !34
  %107 = fcmp ogt double %106, 1.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %90
  store double 1.000000e+00, ptr %3, align 8, !tbaa !34
  br label %112

109:                                              ; preds = %90
  %110 = fcmp olt double %106, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  store double 0.000000e+00, ptr %3, align 8, !tbaa !34
  br label %112

112:                                              ; preds = %108, %109, %111
  %113 = load double, ptr %4, align 8, !tbaa !34
  %114 = load double, ptr %5, align 8, !tbaa !34
  %115 = load double, ptr %3, align 8, !tbaa !34
  call void @ConvertHSBToRGB(double noundef %113, double noundef %114, double noundef %115, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %116 = load i16, ptr %12, align 2, !tbaa !69
  store i16 %116, ptr %93, align 2, !tbaa !60
  %117 = load i16, ptr %11, align 2, !tbaa !69
  store i16 %117, ptr %95, align 2, !tbaa !61
  %118 = load i16, ptr %10, align 2, !tbaa !69
  store i16 %118, ptr %92, align 2, !tbaa !62
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %120 = add nuw nsw i64 %91, 1
  %121 = load i64, ptr %72, align 8, !tbaa !68
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %90, label %123, !llvm.loop !96

123:                                              ; preds = %112, %87
  %124 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %67, ptr noundef nonnull %63) #9
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load ptr, ptr %75, align 8, !tbaa !71
  %128 = icmp eq ptr %127, null
  br i1 %128, label %138, label %129

129:                                              ; preds = %123
  %130 = add nsw i64 %80, 1
  %131 = load i64, ptr %68, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #8
  %132 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.25, ptr noundef nonnull %76) #8
  %133 = load ptr, ptr %75, align 8, !tbaa !71
  %134 = load ptr, ptr %77, align 8, !tbaa !72
  %135 = call i32 %133(ptr noundef nonnull %9, i64 noundef %80, i64 noundef %131, ptr noundef %134) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #8
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, i32 0, i32 %126
  br label %138

138:                                              ; preds = %123, %129, %83, %78
  %139 = phi i32 [ 0, %78 ], [ 0, %83 ], [ %137, %129 ], [ %126, %123 ]
  %140 = phi i64 [ %80, %78 ], [ %80, %83 ], [ %130, %129 ], [ %80, %123 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  %141 = add nuw nsw i64 %79, 1
  %142 = load i64, ptr %68, align 8, !tbaa !67
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %78, label %144, !llvm.loop !97

144:                                              ; preds = %138, %66
  %145 = phi i32 [ 1, %66 ], [ %139, %138 ]
  %146 = call ptr @DestroyCacheView(ptr noundef %67) #8
  br label %147

147:                                              ; preds = %62, %144
  %148 = phi i32 [ %145, %144 ], [ %64, %62 ]
  ret i32 %148
}

declare i32 @AccelerateContrastImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ContrastStretchImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #8
  %7 = load double, ptr %3, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !68
  %10 = uitofp i64 %9 to double
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !67
  %13 = uitofp i64 %12 to double
  %14 = fmul double %10, %13
  %15 = and i32 %6, 8
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %18 = load double, ptr %17, align 8
  %19 = select i1 %16, double %14, double %18
  %20 = and i32 %6, 4096
  %21 = icmp eq i32 %20, 0
  %22 = fmul double %7, 6.553500e+02
  %23 = fmul double %19, 6.553500e+02
  %24 = select i1 %21, double %19, double %23
  %25 = select i1 %21, double %7, double %22
  %26 = fneg double %25
  %27 = call double @llvm.fmuladd.f64(double %10, double %13, double %26)
  %28 = select i1 %16, double %27, double %24
  %29 = call i32 @ContrastStretchImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %25, double noundef %28), !range !38
  br label %30

30:                                               ; preds = %2, %5
  %31 = phi i32 [ %29, %5 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret i32 %31
}

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ContrastStretchImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1166, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %14 = tail call i32 @AccelerateContrastStretchImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %13) #8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %657, label %16

16:                                               ; preds = %12
  %17 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #10
  %18 = tail call dereferenceable_or_null(655360) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 10) #10
  %19 = icmp eq ptr %17, null
  %20 = icmp eq ptr %18, null
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = icmp eq ptr %0, null
  br i1 %23, label %657, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1180, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %25) #8
  br label %657

27:                                               ; preds = %16
  %28 = tail call i32 @IsGrayImage(ptr noundef %0, ptr noundef nonnull %13) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 2) #8
  br label %32

32:                                               ; preds = %30, %27
  %33 = tail call ptr @ResetMagickMemory(ptr noundef %17, i32 noundef 0, i64 noundef 3670016) #8
  %34 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %13) #8
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !67
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %154

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = and i32 %1, 256
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %1, 1
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %1, 2
  %45 = icmp eq i32 %44, 0
  %46 = and i32 %1, 4
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %1, 8
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %1, 32
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %53

53:                                               ; preds = %38, %149
  %54 = phi i32 [ 1, %38 ], [ %150, %149 ]
  %55 = phi i64 [ 0, %38 ], [ %151, %149 ]
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %149, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %39, align 8, !tbaa !68
  %59 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %34, i64 noundef 0, i64 noundef %55, i64 noundef %58, i64 noundef 1, ptr noundef nonnull %13) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %149, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %34) #8
  %63 = load i64, ptr %39, align 8, !tbaa !68
  %64 = icmp sgt i64 %63, 0
  br i1 %41, label %66, label %65

65:                                               ; preds = %61
  br i1 %64, label %69, label %149

66:                                               ; preds = %61
  br i1 %64, label %67, label %149

67:                                               ; preds = %66
  %68 = icmp eq ptr %62, null
  br label %98

69:                                               ; preds = %65, %79
  %70 = phi i64 [ %95, %79 ], [ 0, %65 ]
  %71 = phi ptr [ %94, %79 ], [ %59, %65 ]
  %72 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %71) #9
  %73 = fcmp ugt float %72, 0.000000e+00
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = fcmp ult float %72, 6.553500e+04
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = fadd float %72, 5.000000e-01
  %78 = fptoui float %77 to i16
  br label %79

79:                                               ; preds = %69, %74, %76
  %80 = phi i16 [ %78, %76 ], [ 0, %69 ], [ -1, %74 ]
  %81 = zext i16 %80 to i64
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %81, i32 5
  %83 = load float, ptr %82, align 8, !tbaa !88
  %84 = fadd float %83, 1.000000e+00
  store float %84, ptr %82, align 8, !tbaa !88
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %81, i32 6
  %86 = load float, ptr %85, align 4, !tbaa !89
  %87 = fadd float %86, 1.000000e+00
  store float %87, ptr %85, align 4, !tbaa !89
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %81, i32 7
  %89 = load float, ptr %88, align 8, !tbaa !90
  %90 = fadd float %89, 1.000000e+00
  store float %90, ptr %88, align 8, !tbaa !90
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %81, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !85
  %93 = fadd float %92, 1.000000e+00
  store float %93, ptr %91, align 8, !tbaa !85
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %95 = add nuw nsw i64 %70, 1
  %96 = load i64, ptr %39, align 8, !tbaa !68
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %69, label %149, !llvm.loop !100

98:                                               ; preds = %67, %145
  %99 = phi i64 [ 0, %67 ], [ %147, %145 ]
  %100 = phi ptr [ %59, %67 ], [ %146, %145 ]
  br i1 %43, label %108, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %103 = load i16, ptr %102, align 2, !tbaa !60
  %104 = zext i16 %103 to i64
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %104, i32 5
  %106 = load float, ptr %105, align 8, !tbaa !88
  %107 = fadd float %106, 1.000000e+00
  store float %107, ptr %105, align 8, !tbaa !88
  br label %108

108:                                              ; preds = %101, %98
  br i1 %45, label %116, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %111 = load i16, ptr %110, align 2, !tbaa !61
  %112 = zext i16 %111 to i64
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %112, i32 6
  %114 = load float, ptr %113, align 4, !tbaa !89
  %115 = fadd float %114, 1.000000e+00
  store float %115, ptr %113, align 4, !tbaa !89
  br label %116

116:                                              ; preds = %109, %108
  br i1 %47, label %123, label %117

117:                                              ; preds = %116
  %118 = load i16, ptr %100, align 2, !tbaa !62
  %119 = zext i16 %118 to i64
  %120 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %119, i32 7
  %121 = load float, ptr %120, align 8, !tbaa !90
  %122 = fadd float %121, 1.000000e+00
  store float %122, ptr %120, align 8, !tbaa !90
  br label %123

123:                                              ; preds = %117, %116
  br i1 %49, label %131, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !63
  %127 = zext i16 %126 to i64
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %127, i32 8
  %129 = load float, ptr %128, align 4, !tbaa !92
  %130 = fadd float %129, 1.000000e+00
  store float %130, ptr %128, align 4, !tbaa !92
  br label %131

131:                                              ; preds = %124, %123
  br i1 %51, label %145, label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %52, align 4, !tbaa !55
  %134 = icmp eq i32 %133, 12
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  br i1 %68, label %139, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds i16, ptr %62, i64 %99
  %138 = load i16, ptr %137, align 2, !tbaa !69
  br label %139

139:                                              ; preds = %135, %136
  %140 = phi i16 [ %138, %136 ], [ 0, %135 ]
  %141 = zext i16 %140 to i64
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %141, i32 9
  %143 = load float, ptr %142, align 8, !tbaa !85
  %144 = fadd float %143, 1.000000e+00
  store float %144, ptr %142, align 8, !tbaa !85
  br label %145

145:                                              ; preds = %139, %132, %131
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 1
  %147 = add nuw nsw i64 %99, 1
  %148 = icmp eq i64 %147, %63
  br i1 %148, label %149, label %98, !llvm.loop !101

149:                                              ; preds = %79, %145, %65, %66, %57, %53
  %150 = phi i32 [ 0, %53 ], [ 0, %57 ], [ 1, %66 ], [ 1, %65 ], [ 1, %145 ], [ 1, %79 ]
  %151 = add nuw nsw i64 %55, 1
  %152 = load i64, ptr %35, align 8, !tbaa !67
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %53, label %154, !llvm.loop !102

154:                                              ; preds = %149, %32
  %155 = phi i64 [ %36, %32 ], [ %152, %149 ]
  %156 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %157 = and i32 %1, 1
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %193

159:                                              ; preds = %154, %167
  %160 = phi double [ %165, %167 ], [ 0.000000e+00, %154 ]
  %161 = phi i64 [ %168, %167 ], [ 0, %154 ]
  %162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %161, i32 5
  %163 = load float, ptr %162, align 8, !tbaa !88
  %164 = fpext float %163 to double
  %165 = fadd double %160, %164
  %166 = fcmp ogt double %165, %2
  br i1 %166, label %170, label %167

167:                                              ; preds = %159
  %168 = add nuw nsw i64 %161, 1
  %169 = icmp eq i64 %168, 65536
  br i1 %169, label %170, label %159, !llvm.loop !103

170:                                              ; preds = %159, %167
  %171 = phi i64 [ %161, %159 ], [ 65536, %167 ]
  %172 = sitofp i64 %171 to float
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %174 = load i64, ptr %173, align 8, !tbaa !68
  %175 = uitofp i64 %174 to double
  %176 = uitofp i64 %155 to double
  %177 = fneg double %3
  %178 = tail call double @llvm.fmuladd.f64(double %175, double %176, double %177)
  br label %179

179:                                              ; preds = %170, %187
  %180 = phi double [ 0.000000e+00, %170 ], [ %185, %187 ]
  %181 = phi i64 [ 65535, %170 ], [ %188, %187 ]
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %181, i32 5
  %183 = load float, ptr %182, align 8, !tbaa !88
  %184 = fpext float %183 to double
  %185 = fadd double %180, %184
  %186 = fcmp ogt double %185, %178
  br i1 %186, label %190, label %187

187:                                              ; preds = %179
  %188 = add nsw i64 %181, -1
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %179, !llvm.loop !104

190:                                              ; preds = %179, %187
  %191 = phi i64 [ %181, %179 ], [ 0, %187 ]
  %192 = sitofp i64 %191 to float
  br label %193

193:                                              ; preds = %190, %154
  %194 = phi float [ %172, %190 ], [ 0.000000e+00, %154 ]
  %195 = phi float [ %192, %190 ], [ 6.553500e+04, %154 ]
  %196 = and i32 %1, 2
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %232

198:                                              ; preds = %193, %206
  %199 = phi double [ %204, %206 ], [ 0.000000e+00, %193 ]
  %200 = phi i64 [ %207, %206 ], [ 0, %193 ]
  %201 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %200, i32 6
  %202 = load float, ptr %201, align 4, !tbaa !89
  %203 = fpext float %202 to double
  %204 = fadd double %199, %203
  %205 = fcmp ogt double %204, %2
  br i1 %205, label %209, label %206

206:                                              ; preds = %198
  %207 = add nuw nsw i64 %200, 1
  %208 = icmp eq i64 %207, 65536
  br i1 %208, label %209, label %198, !llvm.loop !105

209:                                              ; preds = %198, %206
  %210 = phi i64 [ %200, %198 ], [ 65536, %206 ]
  %211 = sitofp i64 %210 to float
  %212 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %213 = load i64, ptr %212, align 8, !tbaa !68
  %214 = uitofp i64 %213 to double
  %215 = uitofp i64 %155 to double
  %216 = fneg double %3
  %217 = tail call double @llvm.fmuladd.f64(double %214, double %215, double %216)
  br label %218

218:                                              ; preds = %209, %226
  %219 = phi double [ 0.000000e+00, %209 ], [ %224, %226 ]
  %220 = phi i64 [ 65535, %209 ], [ %227, %226 ]
  %221 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %220, i32 6
  %222 = load float, ptr %221, align 4, !tbaa !89
  %223 = fpext float %222 to double
  %224 = fadd double %219, %223
  %225 = fcmp ogt double %224, %217
  br i1 %225, label %229, label %226

226:                                              ; preds = %218
  %227 = add nsw i64 %220, -1
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %218, !llvm.loop !106

229:                                              ; preds = %218, %226
  %230 = phi i64 [ %220, %218 ], [ 0, %226 ]
  %231 = sitofp i64 %230 to float
  br label %232

232:                                              ; preds = %229, %193
  %233 = phi float [ %211, %229 ], [ 0.000000e+00, %193 ]
  %234 = phi float [ %231, %229 ], [ 6.553500e+04, %193 ]
  %235 = and i32 %1, 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %271

237:                                              ; preds = %232, %245
  %238 = phi double [ %243, %245 ], [ 0.000000e+00, %232 ]
  %239 = phi i64 [ %246, %245 ], [ 0, %232 ]
  %240 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %239, i32 7
  %241 = load float, ptr %240, align 8, !tbaa !90
  %242 = fpext float %241 to double
  %243 = fadd double %238, %242
  %244 = fcmp ogt double %243, %2
  br i1 %244, label %248, label %245

245:                                              ; preds = %237
  %246 = add nuw nsw i64 %239, 1
  %247 = icmp eq i64 %246, 65536
  br i1 %247, label %248, label %237, !llvm.loop !107

248:                                              ; preds = %237, %245
  %249 = phi i64 [ %239, %237 ], [ 65536, %245 ]
  %250 = sitofp i64 %249 to float
  %251 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %252 = load i64, ptr %251, align 8, !tbaa !68
  %253 = uitofp i64 %252 to double
  %254 = uitofp i64 %155 to double
  %255 = fneg double %3
  %256 = tail call double @llvm.fmuladd.f64(double %253, double %254, double %255)
  br label %257

257:                                              ; preds = %248, %265
  %258 = phi double [ 0.000000e+00, %248 ], [ %263, %265 ]
  %259 = phi i64 [ 65535, %248 ], [ %266, %265 ]
  %260 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %259, i32 7
  %261 = load float, ptr %260, align 8, !tbaa !90
  %262 = fpext float %261 to double
  %263 = fadd double %258, %262
  %264 = fcmp ogt double %263, %256
  br i1 %264, label %268, label %265

265:                                              ; preds = %257
  %266 = add nsw i64 %259, -1
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %257, !llvm.loop !108

268:                                              ; preds = %257, %265
  %269 = phi i64 [ %259, %257 ], [ 0, %265 ]
  %270 = sitofp i64 %269 to float
  br label %271

271:                                              ; preds = %268, %232
  %272 = phi float [ %250, %268 ], [ 0.000000e+00, %232 ]
  %273 = phi float [ %270, %268 ], [ 6.553500e+04, %232 ]
  %274 = and i32 %1, 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %310

276:                                              ; preds = %271, %284
  %277 = phi double [ %282, %284 ], [ 0.000000e+00, %271 ]
  %278 = phi i64 [ %285, %284 ], [ 0, %271 ]
  %279 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %278, i32 8
  %280 = load float, ptr %279, align 4, !tbaa !92
  %281 = fpext float %280 to double
  %282 = fadd double %277, %281
  %283 = fcmp ogt double %282, %2
  br i1 %283, label %287, label %284

284:                                              ; preds = %276
  %285 = add nuw nsw i64 %278, 1
  %286 = icmp eq i64 %285, 65536
  br i1 %286, label %287, label %276, !llvm.loop !109

287:                                              ; preds = %276, %284
  %288 = phi i64 [ %278, %276 ], [ 65536, %284 ]
  %289 = sitofp i64 %288 to float
  %290 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %291 = load i64, ptr %290, align 8, !tbaa !68
  %292 = uitofp i64 %291 to double
  %293 = uitofp i64 %155 to double
  %294 = fneg double %3
  %295 = tail call double @llvm.fmuladd.f64(double %292, double %293, double %294)
  br label %296

296:                                              ; preds = %287, %304
  %297 = phi double [ 0.000000e+00, %287 ], [ %302, %304 ]
  %298 = phi i64 [ 65535, %287 ], [ %305, %304 ]
  %299 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %298, i32 8
  %300 = load float, ptr %299, align 4, !tbaa !92
  %301 = fpext float %300 to double
  %302 = fadd double %297, %301
  %303 = fcmp ogt double %302, %295
  br i1 %303, label %307, label %304

304:                                              ; preds = %296
  %305 = add nsw i64 %298, -1
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %296, !llvm.loop !110

307:                                              ; preds = %296, %304
  %308 = phi i64 [ %298, %296 ], [ 0, %304 ]
  %309 = sitofp i64 %308 to float
  br label %310

310:                                              ; preds = %307, %271
  %311 = phi float [ %289, %307 ], [ 0.000000e+00, %271 ]
  %312 = phi float [ %309, %307 ], [ 6.553500e+04, %271 ]
  %313 = and i32 %1, 32
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %353, label %315

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %317 = load i32, ptr %316, align 4, !tbaa !55
  %318 = icmp eq i32 %317, 12
  br i1 %318, label %319, label %353

319:                                              ; preds = %315, %327
  %320 = phi double [ %325, %327 ], [ 0.000000e+00, %315 ]
  %321 = phi i64 [ %328, %327 ], [ 0, %315 ]
  %322 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %321, i32 9
  %323 = load float, ptr %322, align 8, !tbaa !85
  %324 = fpext float %323 to double
  %325 = fadd double %320, %324
  %326 = fcmp ogt double %325, %2
  br i1 %326, label %330, label %327

327:                                              ; preds = %319
  %328 = add nuw nsw i64 %321, 1
  %329 = icmp eq i64 %328, 65536
  br i1 %329, label %330, label %319, !llvm.loop !111

330:                                              ; preds = %319, %327
  %331 = phi i64 [ %321, %319 ], [ 65536, %327 ]
  %332 = sitofp i64 %331 to float
  %333 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %334 = load i64, ptr %333, align 8, !tbaa !68
  %335 = uitofp i64 %334 to double
  %336 = uitofp i64 %155 to double
  %337 = fneg double %3
  %338 = tail call double @llvm.fmuladd.f64(double %335, double %336, double %337)
  br label %339

339:                                              ; preds = %330, %347
  %340 = phi double [ 0.000000e+00, %330 ], [ %345, %347 ]
  %341 = phi i64 [ 65535, %330 ], [ %348, %347 ]
  %342 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %341, i32 9
  %343 = load float, ptr %342, align 8, !tbaa !85
  %344 = fpext float %343 to double
  %345 = fadd double %340, %344
  %346 = fcmp ogt double %345, %338
  br i1 %346, label %350, label %347

347:                                              ; preds = %339
  %348 = add nsw i64 %341, -1
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %339, !llvm.loop !112

350:                                              ; preds = %339, %347
  %351 = phi i64 [ %341, %339 ], [ 0, %347 ]
  %352 = sitofp i64 %351 to float
  br label %353

353:                                              ; preds = %350, %315, %310
  %354 = phi float [ %332, %350 ], [ 0.000000e+00, %315 ], [ 0.000000e+00, %310 ]
  %355 = phi float [ %352, %350 ], [ 6.553500e+04, %315 ], [ 6.553500e+04, %310 ]
  %356 = tail call ptr @RelinquishMagickMemory(ptr noundef %17) #8
  %357 = tail call ptr @ResetMagickMemory(ptr noundef %18, i32 noundef 0, i64 noundef 655360) #8
  %358 = fptosi float %194 to i64
  %359 = fptosi float %195 to i64
  %360 = fcmp une float %194, %195
  %361 = fsub float %195, %194
  %362 = fptosi float %233 to i64
  %363 = fptosi float %234 to i64
  %364 = fcmp une float %233, %234
  %365 = fsub float %234, %233
  %366 = fptosi float %272 to i64
  %367 = fptosi float %273 to i64
  %368 = fcmp une float %272, %273
  %369 = fsub float %273, %272
  %370 = fptosi float %311 to i64
  %371 = fptosi float %312 to i64
  %372 = fcmp une float %311, %312
  %373 = fsub float %312, %311
  %374 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %375 = fptosi float %354 to i64
  %376 = fptosi float %355 to i64
  %377 = fcmp une float %354, %355
  %378 = fsub float %355, %354
  br label %379

379:                                              ; preds = %353, %488
  %380 = phi i64 [ 0, %353 ], [ %489, %488 ]
  br i1 %158, label %381, label %401

381:                                              ; preds = %379
  %382 = icmp slt i64 %380, %358
  br i1 %382, label %398, label %383

383:                                              ; preds = %381
  %384 = icmp sgt i64 %380, %359
  br i1 %384, label %398, label %385

385:                                              ; preds = %383
  br i1 %360, label %386, label %401

386:                                              ; preds = %385
  %387 = sitofp i64 %380 to float
  %388 = fsub float %387, %194
  %389 = fmul float %388, 6.553500e+04
  %390 = fdiv float %389, %361
  %391 = fpext float %390 to double
  %392 = fcmp ugt float %390, 0.000000e+00
  br i1 %392, label %393, label %398

393:                                              ; preds = %386
  %394 = fcmp ult float %390, 6.553500e+04
  br i1 %394, label %395, label %398

395:                                              ; preds = %393
  %396 = fadd double %391, 5.000000e-01
  %397 = fptoui double %396 to i16
  br label %398

398:                                              ; preds = %395, %393, %386, %383, %381
  %399 = phi i16 [ 0, %381 ], [ -1, %383 ], [ %397, %395 ], [ 0, %386 ], [ -1, %393 ]
  %400 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %380
  store i16 %399, ptr %400, align 2, !tbaa !113
  br label %401

401:                                              ; preds = %398, %385, %379
  br i1 %197, label %402, label %422

402:                                              ; preds = %401
  %403 = icmp slt i64 %380, %362
  br i1 %403, label %419, label %404

404:                                              ; preds = %402
  %405 = icmp sgt i64 %380, %363
  br i1 %405, label %419, label %406

406:                                              ; preds = %404
  br i1 %364, label %407, label %422

407:                                              ; preds = %406
  %408 = sitofp i64 %380 to float
  %409 = fsub float %408, %233
  %410 = fmul float %409, 6.553500e+04
  %411 = fdiv float %410, %365
  %412 = fpext float %411 to double
  %413 = fcmp ugt float %411, 0.000000e+00
  br i1 %413, label %414, label %419

414:                                              ; preds = %407
  %415 = fcmp ult float %411, 6.553500e+04
  br i1 %415, label %416, label %419

416:                                              ; preds = %414
  %417 = fadd double %412, 5.000000e-01
  %418 = fptoui double %417 to i16
  br label %419

419:                                              ; preds = %416, %414, %407, %404, %402
  %420 = phi i16 [ 0, %402 ], [ -1, %404 ], [ %418, %416 ], [ 0, %407 ], [ -1, %414 ]
  %421 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %380, i32 1
  store i16 %420, ptr %421, align 2, !tbaa !115
  br label %422

422:                                              ; preds = %419, %406, %401
  br i1 %236, label %423, label %443

423:                                              ; preds = %422
  %424 = icmp slt i64 %380, %366
  br i1 %424, label %440, label %425

425:                                              ; preds = %423
  %426 = icmp sgt i64 %380, %367
  br i1 %426, label %440, label %427

427:                                              ; preds = %425
  br i1 %368, label %428, label %443

428:                                              ; preds = %427
  %429 = sitofp i64 %380 to float
  %430 = fsub float %429, %272
  %431 = fmul float %430, 6.553500e+04
  %432 = fdiv float %431, %369
  %433 = fpext float %432 to double
  %434 = fcmp ugt float %432, 0.000000e+00
  br i1 %434, label %435, label %440

435:                                              ; preds = %428
  %436 = fcmp ult float %432, 6.553500e+04
  br i1 %436, label %437, label %440

437:                                              ; preds = %435
  %438 = fadd double %433, 5.000000e-01
  %439 = fptoui double %438 to i16
  br label %440

440:                                              ; preds = %437, %435, %428, %425, %423
  %441 = phi i16 [ 0, %423 ], [ -1, %425 ], [ %439, %437 ], [ 0, %428 ], [ -1, %435 ]
  %442 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %380, i32 2
  store i16 %441, ptr %442, align 2, !tbaa !116
  br label %443

443:                                              ; preds = %440, %427, %422
  br i1 %275, label %444, label %464

444:                                              ; preds = %443
  %445 = icmp slt i64 %380, %370
  br i1 %445, label %461, label %446

446:                                              ; preds = %444
  %447 = icmp sgt i64 %380, %371
  br i1 %447, label %461, label %448

448:                                              ; preds = %446
  br i1 %372, label %449, label %464

449:                                              ; preds = %448
  %450 = sitofp i64 %380 to float
  %451 = fsub float %450, %311
  %452 = fmul float %451, 6.553500e+04
  %453 = fdiv float %452, %373
  %454 = fpext float %453 to double
  %455 = fcmp ugt float %453, 0.000000e+00
  br i1 %455, label %456, label %461

456:                                              ; preds = %449
  %457 = fcmp ult float %453, 6.553500e+04
  br i1 %457, label %458, label %461

458:                                              ; preds = %456
  %459 = fadd double %454, 5.000000e-01
  %460 = fptoui double %459 to i16
  br label %461

461:                                              ; preds = %458, %456, %449, %446, %444
  %462 = phi i16 [ 0, %444 ], [ -1, %446 ], [ %460, %458 ], [ 0, %449 ], [ -1, %456 ]
  %463 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %380, i32 3
  store i16 %462, ptr %463, align 2, !tbaa !117
  br label %464

464:                                              ; preds = %461, %448, %443
  br i1 %314, label %488, label %465

465:                                              ; preds = %464
  %466 = load i32, ptr %374, align 4, !tbaa !55
  %467 = icmp eq i32 %466, 12
  br i1 %467, label %468, label %488

468:                                              ; preds = %465
  %469 = icmp slt i64 %380, %375
  br i1 %469, label %485, label %470

470:                                              ; preds = %468
  %471 = icmp sgt i64 %380, %376
  br i1 %471, label %485, label %472

472:                                              ; preds = %470
  br i1 %377, label %473, label %488

473:                                              ; preds = %472
  %474 = sitofp i64 %380 to float
  %475 = fsub float %474, %354
  %476 = fmul float %475, 6.553500e+04
  %477 = fdiv float %476, %378
  %478 = fpext float %477 to double
  %479 = fcmp ugt float %477, 0.000000e+00
  br i1 %479, label %480, label %485

480:                                              ; preds = %473
  %481 = fcmp ult float %477, 6.553500e+04
  br i1 %481, label %482, label %485

482:                                              ; preds = %480
  %483 = fadd double %478, 5.000000e-01
  %484 = fptoui double %483 to i16
  br label %485

485:                                              ; preds = %482, %480, %473, %470, %468
  %486 = phi i16 [ 0, %468 ], [ -1, %470 ], [ %484, %482 ], [ 0, %473 ], [ -1, %480 ]
  %487 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %380, i32 4
  store i16 %486, ptr %487, align 2, !tbaa !118
  br label %488

488:                                              ; preds = %485, %464, %465, %472
  %489 = add nuw nsw i64 %380, 1
  %490 = icmp eq i64 %489, 65536
  br i1 %490, label %491, label %379, !llvm.loop !119

491:                                              ; preds = %488
  br i1 %275, label %497, label %492

492:                                              ; preds = %491
  br i1 %314, label %498, label %493

493:                                              ; preds = %492
  %494 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %495 = load i32, ptr %494, align 4, !tbaa !55
  %496 = icmp eq i32 %495, 12
  br i1 %496, label %497, label %498

497:                                              ; preds = %493, %491
  store i32 1, ptr %0, align 8, !tbaa !57
  br label %498

498:                                              ; preds = %497, %493, %492
  %499 = load i32, ptr %0, align 8, !tbaa !57
  %500 = icmp eq i32 %499, 2
  br i1 %500, label %501, label %554

501:                                              ; preds = %498
  %502 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %503 = load i64, ptr %502, align 8, !tbaa !58
  %504 = icmp sgt i64 %503, 0
  br i1 %504, label %505, label %554

505:                                              ; preds = %501
  %506 = fcmp une float %194, %195
  %507 = and i1 %158, %506
  %508 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %509 = fcmp une float %233, %234
  %510 = and i1 %197, %509
  %511 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %512 = fcmp une float %272, %273
  %513 = and i1 %236, %512
  %514 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %515 = fcmp une float %311, %312
  %516 = and i1 %275, %515
  %517 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %518

518:                                              ; preds = %505, %551
  %519 = phi i64 [ 0, %505 ], [ %552, %551 ]
  br i1 %507, label %520, label %527

520:                                              ; preds = %518
  %521 = load ptr, ptr %508, align 8, !tbaa !59
  %522 = getelementptr inbounds %struct._PixelPacket, ptr %521, i64 %519, i32 2
  %523 = load i16, ptr %522, align 2, !tbaa !60
  %524 = zext i16 %523 to i64
  %525 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %524
  %526 = load i16, ptr %525, align 2, !tbaa !113
  store i16 %526, ptr %522, align 2, !tbaa !60
  br label %527

527:                                              ; preds = %520, %518
  br i1 %510, label %528, label %535

528:                                              ; preds = %527
  %529 = load ptr, ptr %511, align 8, !tbaa !59
  %530 = getelementptr inbounds %struct._PixelPacket, ptr %529, i64 %519, i32 1
  %531 = load i16, ptr %530, align 2, !tbaa !61
  %532 = zext i16 %531 to i64
  %533 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %532, i32 1
  %534 = load i16, ptr %533, align 2, !tbaa !115
  store i16 %534, ptr %530, align 2, !tbaa !61
  br label %535

535:                                              ; preds = %528, %527
  br i1 %513, label %536, label %543

536:                                              ; preds = %535
  %537 = load ptr, ptr %514, align 8, !tbaa !59
  %538 = getelementptr inbounds %struct._PixelPacket, ptr %537, i64 %519
  %539 = load i16, ptr %538, align 2, !tbaa !62
  %540 = zext i16 %539 to i64
  %541 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %540, i32 2
  %542 = load i16, ptr %541, align 2, !tbaa !116
  store i16 %542, ptr %538, align 2, !tbaa !62
  br label %543

543:                                              ; preds = %536, %535
  br i1 %516, label %544, label %551

544:                                              ; preds = %543
  %545 = load ptr, ptr %517, align 8, !tbaa !59
  %546 = getelementptr inbounds %struct._PixelPacket, ptr %545, i64 %519, i32 3
  %547 = load i16, ptr %546, align 2, !tbaa !63
  %548 = zext i16 %547 to i64
  %549 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %548, i32 3
  %550 = load i16, ptr %549, align 2, !tbaa !117
  store i16 %550, ptr %546, align 2, !tbaa !63
  br label %551

551:                                              ; preds = %543, %544
  %552 = add nuw nsw i64 %519, 1
  %553 = icmp eq i64 %552, %503
  br i1 %553, label %554, label %518, !llvm.loop !120

554:                                              ; preds = %551, %501, %498
  %555 = load i64, ptr %156, align 8, !tbaa !67
  %556 = icmp sgt i64 %555, 0
  br i1 %556, label %557, label %653

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %559 = fcmp une float %194, %195
  %560 = and i1 %158, %559
  %561 = fcmp une float %233, %234
  %562 = and i1 %197, %561
  %563 = fcmp une float %272, %273
  %564 = and i1 %236, %563
  %565 = fcmp une float %311, %312
  %566 = and i1 %275, %565
  %567 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %568 = fcmp oeq float %354, %355
  %569 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %570 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %571 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %572

572:                                              ; preds = %557, %647
  %573 = phi i32 [ 1, %557 ], [ %649, %647 ]
  %574 = phi i64 [ 0, %557 ], [ %650, %647 ]
  %575 = phi i64 [ 0, %557 ], [ %648, %647 ]
  %576 = icmp eq i32 %573, 0
  br i1 %576, label %647, label %577

577:                                              ; preds = %572
  %578 = load i64, ptr %558, align 8, !tbaa !68
  %579 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %574, i64 noundef %578, i64 noundef 1, ptr noundef nonnull %13) #9
  %580 = icmp eq ptr %579, null
  br i1 %580, label %647, label %581

581:                                              ; preds = %577
  %582 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %34) #8
  %583 = load i64, ptr %558, align 8, !tbaa !68
  %584 = icmp sgt i64 %583, 0
  br i1 %584, label %585, label %632

585:                                              ; preds = %581
  %586 = icmp eq ptr %582, null
  br label %587

587:                                              ; preds = %585, %628
  %588 = phi i64 [ 0, %585 ], [ %630, %628 ]
  %589 = phi ptr [ %579, %585 ], [ %629, %628 ]
  br i1 %560, label %590, label %596

590:                                              ; preds = %587
  %591 = getelementptr inbounds %struct._PixelPacket, ptr %589, i64 0, i32 2
  %592 = load i16, ptr %591, align 2, !tbaa !60
  %593 = zext i16 %592 to i64
  %594 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %593
  %595 = load i16, ptr %594, align 2, !tbaa !113
  store i16 %595, ptr %591, align 2, !tbaa !60
  br label %596

596:                                              ; preds = %590, %587
  br i1 %562, label %597, label %603

597:                                              ; preds = %596
  %598 = getelementptr inbounds %struct._PixelPacket, ptr %589, i64 0, i32 1
  %599 = load i16, ptr %598, align 2, !tbaa !61
  %600 = zext i16 %599 to i64
  %601 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %600, i32 1
  %602 = load i16, ptr %601, align 2, !tbaa !115
  store i16 %602, ptr %598, align 2, !tbaa !61
  br label %603

603:                                              ; preds = %597, %596
  br i1 %564, label %604, label %609

604:                                              ; preds = %603
  %605 = load i16, ptr %589, align 2, !tbaa !62
  %606 = zext i16 %605 to i64
  %607 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %606, i32 2
  %608 = load i16, ptr %607, align 2, !tbaa !116
  store i16 %608, ptr %589, align 2, !tbaa !62
  br label %609

609:                                              ; preds = %604, %603
  br i1 %566, label %610, label %616

610:                                              ; preds = %609
  %611 = getelementptr inbounds %struct._PixelPacket, ptr %589, i64 0, i32 3
  %612 = load i16, ptr %611, align 2, !tbaa !63
  %613 = zext i16 %612 to i64
  %614 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %613, i32 3
  %615 = load i16, ptr %614, align 2, !tbaa !117
  store i16 %615, ptr %611, align 2, !tbaa !63
  br label %616

616:                                              ; preds = %610, %609
  br i1 %314, label %628, label %617

617:                                              ; preds = %616
  %618 = load i32, ptr %567, align 4, !tbaa !55
  %619 = icmp ne i32 %618, 12
  %620 = or i1 %568, %619
  %621 = select i1 %620, i1 true, i1 %586
  br i1 %621, label %628, label %622

622:                                              ; preds = %617
  %623 = getelementptr inbounds i16, ptr %582, i64 %588
  %624 = load i16, ptr %623, align 2, !tbaa !69
  %625 = zext i16 %624 to i64
  %626 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %18, i64 %625, i32 4
  %627 = load i16, ptr %626, align 2, !tbaa !118
  store i16 %627, ptr %623, align 2, !tbaa !69
  br label %628

628:                                              ; preds = %622, %617, %616
  %629 = getelementptr inbounds %struct._PixelPacket, ptr %589, i64 1
  %630 = add nuw nsw i64 %588, 1
  %631 = icmp eq i64 %630, %583
  br i1 %631, label %632, label %587, !llvm.loop !121

632:                                              ; preds = %628, %581
  %633 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %34, ptr noundef nonnull %13) #9
  %634 = icmp ne i32 %633, 0
  %635 = zext i1 %634 to i32
  %636 = load ptr, ptr %569, align 8, !tbaa !71
  %637 = icmp eq ptr %636, null
  br i1 %637, label %647, label %638

638:                                              ; preds = %632
  %639 = add nsw i64 %575, 1
  %640 = load i64, ptr %156, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  %641 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.26, ptr noundef nonnull %570) #8
  %642 = load ptr, ptr %569, align 8, !tbaa !71
  %643 = load ptr, ptr %571, align 8, !tbaa !72
  %644 = call i32 %642(ptr noundef nonnull %5, i64 noundef %575, i64 noundef %640, ptr noundef %643) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  %645 = icmp eq i32 %644, 0
  %646 = select i1 %645, i32 0, i32 %635
  br label %647

647:                                              ; preds = %632, %638, %577, %572
  %648 = phi i64 [ %575, %572 ], [ %575, %577 ], [ %639, %638 ], [ %575, %632 ]
  %649 = phi i32 [ 0, %572 ], [ 0, %577 ], [ %646, %638 ], [ %635, %632 ]
  %650 = add nuw nsw i64 %574, 1
  %651 = load i64, ptr %156, align 8, !tbaa !67
  %652 = icmp slt i64 %650, %651
  br i1 %652, label %572, label %653, !llvm.loop !122

653:                                              ; preds = %647, %554
  %654 = phi i32 [ 1, %554 ], [ %649, %647 ]
  %655 = call ptr @DestroyCacheView(ptr noundef %34) #8
  %656 = call ptr @RelinquishMagickMemory(ptr noundef %18) #8
  br label %657

657:                                              ; preds = %22, %24, %12, %653
  %658 = phi i32 [ %654, %653 ], [ 1, %12 ], [ 0, %24 ], [ 0, %22 ]
  ret i32 %658
}

declare i32 @AccelerateContrastStretchImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @EnhanceImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1621, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !68
  %14 = icmp ult i64 %13, 5
  br i1 %14, label %2003, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !67
  %18 = icmp ult i64 %17, 5
  br i1 %18, label %2003, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %13, i64 noundef %17, i32 noundef 1, ptr noundef %1) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %2003, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %20, i32 noundef 1) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 58
  tail call void @InheritException(ptr noundef %1, ptr noundef nonnull %26) #8
  %27 = tail call ptr @DestroyImage(ptr noundef nonnull %20) #8
  br label %2003

28:                                               ; preds = %22
  %29 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 56) #8
  %30 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %1) #8
  %31 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %20, ptr noundef %1) #8
  %32 = load i64, ptr %16, align 8, !tbaa !67
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %2000

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 7
  %36 = getelementptr inbounds i8, ptr %4, i64 32
  %37 = getelementptr inbounds i8, ptr %4, i64 36
  %38 = getelementptr inbounds i8, ptr %4, i64 40
  %39 = getelementptr inbounds i8, ptr %4, i64 44
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %43

43:                                               ; preds = %34, %1988
  %44 = phi i32 [ 1, %34 ], [ %1990, %1988 ]
  %45 = phi i64 [ 0, %34 ], [ %1989, %1988 ]
  %46 = phi i64 [ 0, %34 ], [ %1991, %1988 ]
  %47 = icmp eq i32 %44, 0
  br i1 %47, label %1988, label %48

48:                                               ; preds = %43
  %49 = add nsw i64 %46, -2
  %50 = load i64, ptr %12, align 8, !tbaa !68
  %51 = add i64 %50, 4
  %52 = call ptr @GetCacheViewVirtualPixels(ptr noundef %30, i64 noundef -2, i64 noundef %49, i64 noundef %51, i64 noundef 5, ptr noundef %1) #9
  %53 = load i64, ptr %35, align 8, !tbaa !68
  %54 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %31, i64 noundef 0, i64 noundef %46, i64 noundef %53, i64 noundef 1, ptr noundef %1) #9
  %55 = icmp eq ptr %52, null
  %56 = icmp eq ptr %54, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %1988, label %58

58:                                               ; preds = %48
  %59 = load i64, ptr %12, align 8, !tbaa !68
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %1973

61:                                               ; preds = %58
  %62 = shl nuw i64 %59, 1
  %63 = add i64 %62, 8
  %64 = add nuw i64 %59, 4
  %65 = mul i64 %59, 3
  %66 = add i64 %65, 12
  %67 = shl i64 %59, 2
  %68 = add i64 %67, 16
  br label %69

69:                                               ; preds = %61, %1944
  %70 = phi i64 [ 0, %61 ], [ %1971, %1944 ]
  %71 = phi ptr [ %54, %61 ], [ %1970, %1944 ]
  %72 = phi ptr [ %52, %61 ], [ %163, %1944 ]
  %73 = load float, ptr %36, align 8, !tbaa.struct !123
  %74 = load float, ptr %37, align 4, !tbaa.struct !125
  %75 = load float, ptr %38, align 8, !tbaa.struct !126
  %76 = load float, ptr %39, align 4, !tbaa.struct !127
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %63
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 2
  %79 = load i16, ptr %78, align 2
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 2, i32 1
  %81 = load i16, ptr %80, align 2
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 2, i32 2
  %83 = load i16, ptr %82, align 2
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 2, i32 3
  %85 = load i16, ptr %84, align 2
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !60
  %88 = uitofp i16 %87 to float
  %89 = uitofp i16 %83 to float
  %90 = fadd float %89, %88
  %91 = fmul float %90, 5.000000e-01
  %92 = fsub float %88, %89
  %93 = fpext float %91 to double
  %94 = fadd double %93, 1.310720e+05
  %95 = fmul double %94, 0x3EF0001000100010
  %96 = fpext float %92 to double
  %97 = fmul double %95, %96
  %98 = fmul double %97, %96
  %99 = fptrunc double %98 to float
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 1
  %101 = load i16, ptr %100, align 2, !tbaa !61
  %102 = uitofp i16 %101 to float
  %103 = uitofp i16 %81 to float
  %104 = fsub float %102, %103
  %105 = fpext float %104 to double
  %106 = fmul double %105, 4.000000e+00
  %107 = fpext float %99 to double
  %108 = call double @llvm.fmuladd.f64(double %106, double %105, double %107)
  %109 = fptrunc double %108 to float
  %110 = load i16, ptr %72, align 2, !tbaa !62
  %111 = uitofp i16 %110 to float
  %112 = uitofp i16 %79 to float
  %113 = fadd float %112, %111
  %114 = fmul float %113, 5.000000e-01
  %115 = fsub float %111, %112
  %116 = fpext float %114 to double
  %117 = fsub double 1.966070e+05, %116
  %118 = fmul double %117, 0x3EF0001000100010
  %119 = fpext float %115 to double
  %120 = fmul double %118, %119
  %121 = fpext float %109 to double
  %122 = call double @llvm.fmuladd.f64(double %120, double %119, double %121)
  %123 = fptrunc double %122 to float
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 3
  %125 = load i16, ptr %124, align 2, !tbaa !63
  %126 = uitofp i16 %125 to float
  %127 = uitofp i16 %85 to float
  %128 = fadd float %127, %126
  %129 = fmul float %128, 5.000000e-01
  %130 = fsub float %126, %127
  %131 = fpext float %129 to double
  %132 = fsub double 1.966070e+05, %131
  %133 = fmul double %132, 0x3EF0001000100010
  %134 = fpext float %130 to double
  %135 = fmul double %133, %134
  %136 = fpext float %123 to double
  %137 = call double @llvm.fmuladd.f64(double %135, double %134, double %136)
  %138 = fptrunc double %137 to float
  %139 = fcmp olt float %138, 0x41A47AB860000000
  br i1 %139, label %140, label %157

140:                                              ; preds = %69
  %141 = uitofp i16 %87 to double
  %142 = fpext float %73 to double
  %143 = call double @llvm.fmuladd.f64(double %141, double 5.000000e+00, double %142)
  %144 = fptrunc double %143 to float
  %145 = uitofp i16 %101 to double
  %146 = fpext float %74 to double
  %147 = call double @llvm.fmuladd.f64(double %145, double 5.000000e+00, double %146)
  %148 = fptrunc double %147 to float
  %149 = uitofp i16 %110 to double
  %150 = fpext float %75 to double
  %151 = call double @llvm.fmuladd.f64(double %149, double 5.000000e+00, double %150)
  %152 = fptrunc double %151 to float
  %153 = uitofp i16 %125 to double
  %154 = fpext float %76 to double
  %155 = call double @llvm.fmuladd.f64(double %153, double 5.000000e+00, double %154)
  %156 = fptrunc double %155 to float
  br label %157

157:                                              ; preds = %140, %69
  %158 = phi float [ %156, %140 ], [ %76, %69 ]
  %159 = phi float [ %152, %140 ], [ %75, %69 ]
  %160 = phi float [ %148, %140 ], [ %74, %69 ]
  %161 = phi float [ %144, %140 ], [ %73, %69 ]
  %162 = phi float [ 5.000000e+00, %140 ], [ 0.000000e+00, %69 ]
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1, i32 2
  %165 = load i16, ptr %164, align 2, !tbaa !60
  %166 = uitofp i16 %165 to float
  %167 = fadd float %89, %166
  %168 = fmul float %167, 5.000000e-01
  %169 = fsub float %166, %89
  %170 = fpext float %168 to double
  %171 = fadd double %170, 1.310720e+05
  %172 = fmul double %171, 0x3EF0001000100010
  %173 = fpext float %169 to double
  %174 = fmul double %172, %173
  %175 = fmul double %174, %173
  %176 = fptrunc double %175 to float
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1, i32 1
  %178 = load i16, ptr %177, align 2, !tbaa !61
  %179 = uitofp i16 %178 to float
  %180 = fsub float %179, %103
  %181 = fpext float %180 to double
  %182 = fmul double %181, 4.000000e+00
  %183 = fpext float %176 to double
  %184 = call double @llvm.fmuladd.f64(double %182, double %181, double %183)
  %185 = fptrunc double %184 to float
  %186 = load i16, ptr %163, align 2, !tbaa !62
  %187 = uitofp i16 %186 to float
  %188 = fadd float %112, %187
  %189 = fmul float %188, 5.000000e-01
  %190 = fsub float %187, %112
  %191 = fpext float %189 to double
  %192 = fsub double 1.966070e+05, %191
  %193 = fmul double %192, 0x3EF0001000100010
  %194 = fpext float %190 to double
  %195 = fmul double %193, %194
  %196 = fpext float %185 to double
  %197 = call double @llvm.fmuladd.f64(double %195, double %194, double %196)
  %198 = fptrunc double %197 to float
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1, i32 3
  %200 = load i16, ptr %199, align 2, !tbaa !63
  %201 = uitofp i16 %200 to float
  %202 = fadd float %127, %201
  %203 = fmul float %202, 5.000000e-01
  %204 = fsub float %201, %127
  %205 = fpext float %203 to double
  %206 = fsub double 1.966070e+05, %205
  %207 = fmul double %206, 0x3EF0001000100010
  %208 = fpext float %204 to double
  %209 = fmul double %207, %208
  %210 = fpext float %198 to double
  %211 = call double @llvm.fmuladd.f64(double %209, double %208, double %210)
  %212 = fptrunc double %211 to float
  %213 = fcmp olt float %212, 0x41A47AB860000000
  br i1 %213, label %214, label %232

214:                                              ; preds = %157
  %215 = uitofp i16 %165 to double
  %216 = fpext float %161 to double
  %217 = call double @llvm.fmuladd.f64(double %215, double 8.000000e+00, double %216)
  %218 = fptrunc double %217 to float
  %219 = uitofp i16 %178 to double
  %220 = fpext float %160 to double
  %221 = call double @llvm.fmuladd.f64(double %219, double 8.000000e+00, double %220)
  %222 = fptrunc double %221 to float
  %223 = uitofp i16 %186 to double
  %224 = fpext float %159 to double
  %225 = call double @llvm.fmuladd.f64(double %223, double 8.000000e+00, double %224)
  %226 = fptrunc double %225 to float
  %227 = uitofp i16 %200 to double
  %228 = fpext float %158 to double
  %229 = call double @llvm.fmuladd.f64(double %227, double 8.000000e+00, double %228)
  %230 = fptrunc double %229 to float
  %231 = fadd float %162, 8.000000e+00
  br label %232

232:                                              ; preds = %214, %157
  %233 = phi float [ %230, %214 ], [ %158, %157 ]
  %234 = phi float [ %226, %214 ], [ %159, %157 ]
  %235 = phi float [ %222, %214 ], [ %160, %157 ]
  %236 = phi float [ %218, %214 ], [ %161, %157 ]
  %237 = phi float [ %231, %214 ], [ %162, %157 ]
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 2
  %239 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 2, i32 2
  %240 = load i16, ptr %239, align 2, !tbaa !60
  %241 = uitofp i16 %240 to float
  %242 = fadd float %89, %241
  %243 = fmul float %242, 5.000000e-01
  %244 = fsub float %241, %89
  %245 = fpext float %243 to double
  %246 = fadd double %245, 1.310720e+05
  %247 = fmul double %246, 0x3EF0001000100010
  %248 = fpext float %244 to double
  %249 = fmul double %247, %248
  %250 = fmul double %249, %248
  %251 = fptrunc double %250 to float
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 2, i32 1
  %253 = load i16, ptr %252, align 2, !tbaa !61
  %254 = uitofp i16 %253 to float
  %255 = fsub float %254, %103
  %256 = fpext float %255 to double
  %257 = fmul double %256, 4.000000e+00
  %258 = fpext float %251 to double
  %259 = call double @llvm.fmuladd.f64(double %257, double %256, double %258)
  %260 = fptrunc double %259 to float
  %261 = load i16, ptr %238, align 2, !tbaa !62
  %262 = uitofp i16 %261 to float
  %263 = fadd float %112, %262
  %264 = fmul float %263, 5.000000e-01
  %265 = fsub float %262, %112
  %266 = fpext float %264 to double
  %267 = fsub double 1.966070e+05, %266
  %268 = fmul double %267, 0x3EF0001000100010
  %269 = fpext float %265 to double
  %270 = fmul double %268, %269
  %271 = fpext float %260 to double
  %272 = call double @llvm.fmuladd.f64(double %270, double %269, double %271)
  %273 = fptrunc double %272 to float
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 2, i32 3
  %275 = load i16, ptr %274, align 2, !tbaa !63
  %276 = uitofp i16 %275 to float
  %277 = fadd float %127, %276
  %278 = fmul float %277, 5.000000e-01
  %279 = fsub float %276, %127
  %280 = fpext float %278 to double
  %281 = fsub double 1.966070e+05, %280
  %282 = fmul double %281, 0x3EF0001000100010
  %283 = fpext float %279 to double
  %284 = fmul double %282, %283
  %285 = fpext float %273 to double
  %286 = call double @llvm.fmuladd.f64(double %284, double %283, double %285)
  %287 = fptrunc double %286 to float
  %288 = fcmp olt float %287, 0x41A47AB860000000
  br i1 %288, label %289, label %307

289:                                              ; preds = %232
  %290 = uitofp i16 %240 to double
  %291 = fpext float %236 to double
  %292 = call double @llvm.fmuladd.f64(double %290, double 1.000000e+01, double %291)
  %293 = fptrunc double %292 to float
  %294 = uitofp i16 %253 to double
  %295 = fpext float %235 to double
  %296 = call double @llvm.fmuladd.f64(double %294, double 1.000000e+01, double %295)
  %297 = fptrunc double %296 to float
  %298 = uitofp i16 %261 to double
  %299 = fpext float %234 to double
  %300 = call double @llvm.fmuladd.f64(double %298, double 1.000000e+01, double %299)
  %301 = fptrunc double %300 to float
  %302 = uitofp i16 %275 to double
  %303 = fpext float %233 to double
  %304 = call double @llvm.fmuladd.f64(double %302, double 1.000000e+01, double %303)
  %305 = fptrunc double %304 to float
  %306 = fadd float %237, 1.000000e+01
  br label %307

307:                                              ; preds = %289, %232
  %308 = phi float [ %305, %289 ], [ %233, %232 ]
  %309 = phi float [ %301, %289 ], [ %234, %232 ]
  %310 = phi float [ %297, %289 ], [ %235, %232 ]
  %311 = phi float [ %293, %289 ], [ %236, %232 ]
  %312 = phi float [ %306, %289 ], [ %237, %232 ]
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 3
  %314 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 3, i32 2
  %315 = load i16, ptr %314, align 2, !tbaa !60
  %316 = uitofp i16 %315 to float
  %317 = fadd float %89, %316
  %318 = fmul float %317, 5.000000e-01
  %319 = fsub float %316, %89
  %320 = fpext float %318 to double
  %321 = fadd double %320, 1.310720e+05
  %322 = fmul double %321, 0x3EF0001000100010
  %323 = fpext float %319 to double
  %324 = fmul double %322, %323
  %325 = fmul double %324, %323
  %326 = fptrunc double %325 to float
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 3, i32 1
  %328 = load i16, ptr %327, align 2, !tbaa !61
  %329 = uitofp i16 %328 to float
  %330 = fsub float %329, %103
  %331 = fpext float %330 to double
  %332 = fmul double %331, 4.000000e+00
  %333 = fpext float %326 to double
  %334 = call double @llvm.fmuladd.f64(double %332, double %331, double %333)
  %335 = fptrunc double %334 to float
  %336 = load i16, ptr %313, align 2, !tbaa !62
  %337 = uitofp i16 %336 to float
  %338 = fadd float %112, %337
  %339 = fmul float %338, 5.000000e-01
  %340 = fsub float %337, %112
  %341 = fpext float %339 to double
  %342 = fsub double 1.966070e+05, %341
  %343 = fmul double %342, 0x3EF0001000100010
  %344 = fpext float %340 to double
  %345 = fmul double %343, %344
  %346 = fpext float %335 to double
  %347 = call double @llvm.fmuladd.f64(double %345, double %344, double %346)
  %348 = fptrunc double %347 to float
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 3, i32 3
  %350 = load i16, ptr %349, align 2, !tbaa !63
  %351 = uitofp i16 %350 to float
  %352 = fadd float %127, %351
  %353 = fmul float %352, 5.000000e-01
  %354 = fsub float %351, %127
  %355 = fpext float %353 to double
  %356 = fsub double 1.966070e+05, %355
  %357 = fmul double %356, 0x3EF0001000100010
  %358 = fpext float %354 to double
  %359 = fmul double %357, %358
  %360 = fpext float %348 to double
  %361 = call double @llvm.fmuladd.f64(double %359, double %358, double %360)
  %362 = fptrunc double %361 to float
  %363 = fcmp olt float %362, 0x41A47AB860000000
  br i1 %363, label %364, label %382

364:                                              ; preds = %307
  %365 = uitofp i16 %315 to double
  %366 = fpext float %311 to double
  %367 = call double @llvm.fmuladd.f64(double %365, double 8.000000e+00, double %366)
  %368 = fptrunc double %367 to float
  %369 = uitofp i16 %328 to double
  %370 = fpext float %310 to double
  %371 = call double @llvm.fmuladd.f64(double %369, double 8.000000e+00, double %370)
  %372 = fptrunc double %371 to float
  %373 = uitofp i16 %336 to double
  %374 = fpext float %309 to double
  %375 = call double @llvm.fmuladd.f64(double %373, double 8.000000e+00, double %374)
  %376 = fptrunc double %375 to float
  %377 = uitofp i16 %350 to double
  %378 = fpext float %308 to double
  %379 = call double @llvm.fmuladd.f64(double %377, double 8.000000e+00, double %378)
  %380 = fptrunc double %379 to float
  %381 = fadd float %312, 8.000000e+00
  br label %382

382:                                              ; preds = %364, %307
  %383 = phi float [ %380, %364 ], [ %308, %307 ]
  %384 = phi float [ %376, %364 ], [ %309, %307 ]
  %385 = phi float [ %372, %364 ], [ %310, %307 ]
  %386 = phi float [ %368, %364 ], [ %311, %307 ]
  %387 = phi float [ %381, %364 ], [ %312, %307 ]
  %388 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 4
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 4, i32 2
  %390 = load i16, ptr %389, align 2, !tbaa !60
  %391 = uitofp i16 %390 to float
  %392 = fadd float %89, %391
  %393 = fmul float %392, 5.000000e-01
  %394 = fsub float %391, %89
  %395 = fpext float %393 to double
  %396 = fadd double %395, 1.310720e+05
  %397 = fmul double %396, 0x3EF0001000100010
  %398 = fpext float %394 to double
  %399 = fmul double %397, %398
  %400 = fmul double %399, %398
  %401 = fptrunc double %400 to float
  %402 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 4, i32 1
  %403 = load i16, ptr %402, align 2, !tbaa !61
  %404 = uitofp i16 %403 to float
  %405 = fsub float %404, %103
  %406 = fpext float %405 to double
  %407 = fmul double %406, 4.000000e+00
  %408 = fpext float %401 to double
  %409 = call double @llvm.fmuladd.f64(double %407, double %406, double %408)
  %410 = fptrunc double %409 to float
  %411 = load i16, ptr %388, align 2, !tbaa !62
  %412 = uitofp i16 %411 to float
  %413 = fadd float %112, %412
  %414 = fmul float %413, 5.000000e-01
  %415 = fsub float %412, %112
  %416 = fpext float %414 to double
  %417 = fsub double 1.966070e+05, %416
  %418 = fmul double %417, 0x3EF0001000100010
  %419 = fpext float %415 to double
  %420 = fmul double %418, %419
  %421 = fpext float %410 to double
  %422 = call double @llvm.fmuladd.f64(double %420, double %419, double %421)
  %423 = fptrunc double %422 to float
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 4, i32 3
  %425 = load i16, ptr %424, align 2, !tbaa !63
  %426 = uitofp i16 %425 to float
  %427 = fadd float %127, %426
  %428 = fmul float %427, 5.000000e-01
  %429 = fsub float %426, %127
  %430 = fpext float %428 to double
  %431 = fsub double 1.966070e+05, %430
  %432 = fmul double %431, 0x3EF0001000100010
  %433 = fpext float %429 to double
  %434 = fmul double %432, %433
  %435 = fpext float %423 to double
  %436 = call double @llvm.fmuladd.f64(double %434, double %433, double %435)
  %437 = fptrunc double %436 to float
  %438 = fcmp olt float %437, 0x41A47AB860000000
  br i1 %438, label %439, label %457

439:                                              ; preds = %382
  %440 = uitofp i16 %390 to double
  %441 = fpext float %386 to double
  %442 = call double @llvm.fmuladd.f64(double %440, double 5.000000e+00, double %441)
  %443 = fptrunc double %442 to float
  %444 = uitofp i16 %403 to double
  %445 = fpext float %385 to double
  %446 = call double @llvm.fmuladd.f64(double %444, double 5.000000e+00, double %445)
  %447 = fptrunc double %446 to float
  %448 = uitofp i16 %411 to double
  %449 = fpext float %384 to double
  %450 = call double @llvm.fmuladd.f64(double %448, double 5.000000e+00, double %449)
  %451 = fptrunc double %450 to float
  %452 = uitofp i16 %425 to double
  %453 = fpext float %383 to double
  %454 = call double @llvm.fmuladd.f64(double %452, double 5.000000e+00, double %453)
  %455 = fptrunc double %454 to float
  %456 = fadd float %387, 5.000000e+00
  br label %457

457:                                              ; preds = %439, %382
  %458 = phi float [ %455, %439 ], [ %383, %382 ]
  %459 = phi float [ %451, %439 ], [ %384, %382 ]
  %460 = phi float [ %447, %439 ], [ %385, %382 ]
  %461 = phi float [ %443, %439 ], [ %386, %382 ]
  %462 = phi float [ %456, %439 ], [ %387, %382 ]
  %463 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %64
  %464 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %64, i32 2
  %465 = load i16, ptr %464, align 2, !tbaa !60
  %466 = uitofp i16 %465 to float
  %467 = fadd float %89, %466
  %468 = fmul float %467, 5.000000e-01
  %469 = fsub float %466, %89
  %470 = fpext float %468 to double
  %471 = fadd double %470, 1.310720e+05
  %472 = fmul double %471, 0x3EF0001000100010
  %473 = fpext float %469 to double
  %474 = fmul double %472, %473
  %475 = fmul double %474, %473
  %476 = fptrunc double %475 to float
  %477 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %64, i32 1
  %478 = load i16, ptr %477, align 2, !tbaa !61
  %479 = uitofp i16 %478 to float
  %480 = fsub float %479, %103
  %481 = fpext float %480 to double
  %482 = fmul double %481, 4.000000e+00
  %483 = fpext float %476 to double
  %484 = call double @llvm.fmuladd.f64(double %482, double %481, double %483)
  %485 = fptrunc double %484 to float
  %486 = load i16, ptr %463, align 2, !tbaa !62
  %487 = uitofp i16 %486 to float
  %488 = fadd float %112, %487
  %489 = fmul float %488, 5.000000e-01
  %490 = fsub float %487, %112
  %491 = fpext float %489 to double
  %492 = fsub double 1.966070e+05, %491
  %493 = fmul double %492, 0x3EF0001000100010
  %494 = fpext float %490 to double
  %495 = fmul double %493, %494
  %496 = fpext float %485 to double
  %497 = call double @llvm.fmuladd.f64(double %495, double %494, double %496)
  %498 = fptrunc double %497 to float
  %499 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %64, i32 3
  %500 = load i16, ptr %499, align 2, !tbaa !63
  %501 = uitofp i16 %500 to float
  %502 = fadd float %127, %501
  %503 = fmul float %502, 5.000000e-01
  %504 = fsub float %501, %127
  %505 = fpext float %503 to double
  %506 = fsub double 1.966070e+05, %505
  %507 = fmul double %506, 0x3EF0001000100010
  %508 = fpext float %504 to double
  %509 = fmul double %507, %508
  %510 = fpext float %498 to double
  %511 = call double @llvm.fmuladd.f64(double %509, double %508, double %510)
  %512 = fptrunc double %511 to float
  %513 = fcmp olt float %512, 0x41A47AB860000000
  br i1 %513, label %514, label %532

514:                                              ; preds = %457
  %515 = uitofp i16 %465 to double
  %516 = fpext float %461 to double
  %517 = call double @llvm.fmuladd.f64(double %515, double 8.000000e+00, double %516)
  %518 = fptrunc double %517 to float
  %519 = uitofp i16 %478 to double
  %520 = fpext float %460 to double
  %521 = call double @llvm.fmuladd.f64(double %519, double 8.000000e+00, double %520)
  %522 = fptrunc double %521 to float
  %523 = uitofp i16 %486 to double
  %524 = fpext float %459 to double
  %525 = call double @llvm.fmuladd.f64(double %523, double 8.000000e+00, double %524)
  %526 = fptrunc double %525 to float
  %527 = uitofp i16 %500 to double
  %528 = fpext float %458 to double
  %529 = call double @llvm.fmuladd.f64(double %527, double 8.000000e+00, double %528)
  %530 = fptrunc double %529 to float
  %531 = fadd float %462, 8.000000e+00
  br label %532

532:                                              ; preds = %514, %457
  %533 = phi float [ %530, %514 ], [ %458, %457 ]
  %534 = phi float [ %526, %514 ], [ %459, %457 ]
  %535 = phi float [ %522, %514 ], [ %460, %457 ]
  %536 = phi float [ %518, %514 ], [ %461, %457 ]
  %537 = phi float [ %531, %514 ], [ %462, %457 ]
  %538 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 1
  %539 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 1, i32 2
  %540 = load i16, ptr %539, align 2, !tbaa !60
  %541 = uitofp i16 %540 to float
  %542 = fadd float %89, %541
  %543 = fmul float %542, 5.000000e-01
  %544 = fsub float %541, %89
  %545 = fpext float %543 to double
  %546 = fadd double %545, 1.310720e+05
  %547 = fmul double %546, 0x3EF0001000100010
  %548 = fpext float %544 to double
  %549 = fmul double %547, %548
  %550 = fmul double %549, %548
  %551 = fptrunc double %550 to float
  %552 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 1, i32 1
  %553 = load i16, ptr %552, align 2, !tbaa !61
  %554 = uitofp i16 %553 to float
  %555 = fsub float %554, %103
  %556 = fpext float %555 to double
  %557 = fmul double %556, 4.000000e+00
  %558 = fpext float %551 to double
  %559 = call double @llvm.fmuladd.f64(double %557, double %556, double %558)
  %560 = fptrunc double %559 to float
  %561 = load i16, ptr %538, align 2, !tbaa !62
  %562 = uitofp i16 %561 to float
  %563 = fadd float %112, %562
  %564 = fmul float %563, 5.000000e-01
  %565 = fsub float %562, %112
  %566 = fpext float %564 to double
  %567 = fsub double 1.966070e+05, %566
  %568 = fmul double %567, 0x3EF0001000100010
  %569 = fpext float %565 to double
  %570 = fmul double %568, %569
  %571 = fpext float %560 to double
  %572 = call double @llvm.fmuladd.f64(double %570, double %569, double %571)
  %573 = fptrunc double %572 to float
  %574 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 1, i32 3
  %575 = load i16, ptr %574, align 2, !tbaa !63
  %576 = uitofp i16 %575 to float
  %577 = fadd float %127, %576
  %578 = fmul float %577, 5.000000e-01
  %579 = fsub float %576, %127
  %580 = fpext float %578 to double
  %581 = fsub double 1.966070e+05, %580
  %582 = fmul double %581, 0x3EF0001000100010
  %583 = fpext float %579 to double
  %584 = fmul double %582, %583
  %585 = fpext float %573 to double
  %586 = call double @llvm.fmuladd.f64(double %584, double %583, double %585)
  %587 = fptrunc double %586 to float
  %588 = fcmp olt float %587, 0x41A47AB860000000
  br i1 %588, label %589, label %607

589:                                              ; preds = %532
  %590 = uitofp i16 %540 to double
  %591 = fpext float %536 to double
  %592 = call double @llvm.fmuladd.f64(double %590, double 2.000000e+01, double %591)
  %593 = fptrunc double %592 to float
  %594 = uitofp i16 %553 to double
  %595 = fpext float %535 to double
  %596 = call double @llvm.fmuladd.f64(double %594, double 2.000000e+01, double %595)
  %597 = fptrunc double %596 to float
  %598 = uitofp i16 %561 to double
  %599 = fpext float %534 to double
  %600 = call double @llvm.fmuladd.f64(double %598, double 2.000000e+01, double %599)
  %601 = fptrunc double %600 to float
  %602 = uitofp i16 %575 to double
  %603 = fpext float %533 to double
  %604 = call double @llvm.fmuladd.f64(double %602, double 2.000000e+01, double %603)
  %605 = fptrunc double %604 to float
  %606 = fadd float %537, 2.000000e+01
  br label %607

607:                                              ; preds = %589, %532
  %608 = phi float [ %605, %589 ], [ %533, %532 ]
  %609 = phi float [ %601, %589 ], [ %534, %532 ]
  %610 = phi float [ %597, %589 ], [ %535, %532 ]
  %611 = phi float [ %593, %589 ], [ %536, %532 ]
  %612 = phi float [ %606, %589 ], [ %537, %532 ]
  %613 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 2
  %614 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 2, i32 2
  %615 = load i16, ptr %614, align 2, !tbaa !60
  %616 = uitofp i16 %615 to float
  %617 = fadd float %89, %616
  %618 = fmul float %617, 5.000000e-01
  %619 = fsub float %616, %89
  %620 = fpext float %618 to double
  %621 = fadd double %620, 1.310720e+05
  %622 = fmul double %621, 0x3EF0001000100010
  %623 = fpext float %619 to double
  %624 = fmul double %622, %623
  %625 = fmul double %624, %623
  %626 = fptrunc double %625 to float
  %627 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 2, i32 1
  %628 = load i16, ptr %627, align 2, !tbaa !61
  %629 = uitofp i16 %628 to float
  %630 = fsub float %629, %103
  %631 = fpext float %630 to double
  %632 = fmul double %631, 4.000000e+00
  %633 = fpext float %626 to double
  %634 = call double @llvm.fmuladd.f64(double %632, double %631, double %633)
  %635 = fptrunc double %634 to float
  %636 = load i16, ptr %613, align 2, !tbaa !62
  %637 = uitofp i16 %636 to float
  %638 = fadd float %112, %637
  %639 = fmul float %638, 5.000000e-01
  %640 = fsub float %637, %112
  %641 = fpext float %639 to double
  %642 = fsub double 1.966070e+05, %641
  %643 = fmul double %642, 0x3EF0001000100010
  %644 = fpext float %640 to double
  %645 = fmul double %643, %644
  %646 = fpext float %635 to double
  %647 = call double @llvm.fmuladd.f64(double %645, double %644, double %646)
  %648 = fptrunc double %647 to float
  %649 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 2, i32 3
  %650 = load i16, ptr %649, align 2, !tbaa !63
  %651 = uitofp i16 %650 to float
  %652 = fadd float %127, %651
  %653 = fmul float %652, 5.000000e-01
  %654 = fsub float %651, %127
  %655 = fpext float %653 to double
  %656 = fsub double 1.966070e+05, %655
  %657 = fmul double %656, 0x3EF0001000100010
  %658 = fpext float %654 to double
  %659 = fmul double %657, %658
  %660 = fpext float %648 to double
  %661 = call double @llvm.fmuladd.f64(double %659, double %658, double %660)
  %662 = fptrunc double %661 to float
  %663 = fcmp olt float %662, 0x41A47AB860000000
  br i1 %663, label %664, label %682

664:                                              ; preds = %607
  %665 = uitofp i16 %615 to double
  %666 = fpext float %611 to double
  %667 = call double @llvm.fmuladd.f64(double %665, double 4.000000e+01, double %666)
  %668 = fptrunc double %667 to float
  %669 = uitofp i16 %628 to double
  %670 = fpext float %610 to double
  %671 = call double @llvm.fmuladd.f64(double %669, double 4.000000e+01, double %670)
  %672 = fptrunc double %671 to float
  %673 = uitofp i16 %636 to double
  %674 = fpext float %609 to double
  %675 = call double @llvm.fmuladd.f64(double %673, double 4.000000e+01, double %674)
  %676 = fptrunc double %675 to float
  %677 = uitofp i16 %650 to double
  %678 = fpext float %608 to double
  %679 = call double @llvm.fmuladd.f64(double %677, double 4.000000e+01, double %678)
  %680 = fptrunc double %679 to float
  %681 = fadd float %612, 4.000000e+01
  br label %682

682:                                              ; preds = %664, %607
  %683 = phi float [ %680, %664 ], [ %608, %607 ]
  %684 = phi float [ %676, %664 ], [ %609, %607 ]
  %685 = phi float [ %672, %664 ], [ %610, %607 ]
  %686 = phi float [ %668, %664 ], [ %611, %607 ]
  %687 = phi float [ %681, %664 ], [ %612, %607 ]
  %688 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 3
  %689 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 3, i32 2
  %690 = load i16, ptr %689, align 2, !tbaa !60
  %691 = uitofp i16 %690 to float
  %692 = fadd float %89, %691
  %693 = fmul float %692, 5.000000e-01
  %694 = fsub float %691, %89
  %695 = fpext float %693 to double
  %696 = fadd double %695, 1.310720e+05
  %697 = fmul double %696, 0x3EF0001000100010
  %698 = fpext float %694 to double
  %699 = fmul double %697, %698
  %700 = fmul double %699, %698
  %701 = fptrunc double %700 to float
  %702 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 3, i32 1
  %703 = load i16, ptr %702, align 2, !tbaa !61
  %704 = uitofp i16 %703 to float
  %705 = fsub float %704, %103
  %706 = fpext float %705 to double
  %707 = fmul double %706, 4.000000e+00
  %708 = fpext float %701 to double
  %709 = call double @llvm.fmuladd.f64(double %707, double %706, double %708)
  %710 = fptrunc double %709 to float
  %711 = load i16, ptr %688, align 2, !tbaa !62
  %712 = uitofp i16 %711 to float
  %713 = fadd float %112, %712
  %714 = fmul float %713, 5.000000e-01
  %715 = fsub float %712, %112
  %716 = fpext float %714 to double
  %717 = fsub double 1.966070e+05, %716
  %718 = fmul double %717, 0x3EF0001000100010
  %719 = fpext float %715 to double
  %720 = fmul double %718, %719
  %721 = fpext float %710 to double
  %722 = call double @llvm.fmuladd.f64(double %720, double %719, double %721)
  %723 = fptrunc double %722 to float
  %724 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 3, i32 3
  %725 = load i16, ptr %724, align 2, !tbaa !63
  %726 = uitofp i16 %725 to float
  %727 = fadd float %127, %726
  %728 = fmul float %727, 5.000000e-01
  %729 = fsub float %726, %127
  %730 = fpext float %728 to double
  %731 = fsub double 1.966070e+05, %730
  %732 = fmul double %731, 0x3EF0001000100010
  %733 = fpext float %729 to double
  %734 = fmul double %732, %733
  %735 = fpext float %723 to double
  %736 = call double @llvm.fmuladd.f64(double %734, double %733, double %735)
  %737 = fptrunc double %736 to float
  %738 = fcmp olt float %737, 0x41A47AB860000000
  br i1 %738, label %739, label %757

739:                                              ; preds = %682
  %740 = uitofp i16 %690 to double
  %741 = fpext float %686 to double
  %742 = call double @llvm.fmuladd.f64(double %740, double 2.000000e+01, double %741)
  %743 = fptrunc double %742 to float
  %744 = uitofp i16 %703 to double
  %745 = fpext float %685 to double
  %746 = call double @llvm.fmuladd.f64(double %744, double 2.000000e+01, double %745)
  %747 = fptrunc double %746 to float
  %748 = uitofp i16 %711 to double
  %749 = fpext float %684 to double
  %750 = call double @llvm.fmuladd.f64(double %748, double 2.000000e+01, double %749)
  %751 = fptrunc double %750 to float
  %752 = uitofp i16 %725 to double
  %753 = fpext float %683 to double
  %754 = call double @llvm.fmuladd.f64(double %752, double 2.000000e+01, double %753)
  %755 = fptrunc double %754 to float
  %756 = fadd float %687, 2.000000e+01
  br label %757

757:                                              ; preds = %739, %682
  %758 = phi float [ %755, %739 ], [ %683, %682 ]
  %759 = phi float [ %751, %739 ], [ %684, %682 ]
  %760 = phi float [ %747, %739 ], [ %685, %682 ]
  %761 = phi float [ %743, %739 ], [ %686, %682 ]
  %762 = phi float [ %756, %739 ], [ %687, %682 ]
  %763 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 4
  %764 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 4, i32 2
  %765 = load i16, ptr %764, align 2, !tbaa !60
  %766 = uitofp i16 %765 to float
  %767 = fadd float %89, %766
  %768 = fmul float %767, 5.000000e-01
  %769 = fsub float %766, %89
  %770 = fpext float %768 to double
  %771 = fadd double %770, 1.310720e+05
  %772 = fmul double %771, 0x3EF0001000100010
  %773 = fpext float %769 to double
  %774 = fmul double %772, %773
  %775 = fmul double %774, %773
  %776 = fptrunc double %775 to float
  %777 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 4, i32 1
  %778 = load i16, ptr %777, align 2, !tbaa !61
  %779 = uitofp i16 %778 to float
  %780 = fsub float %779, %103
  %781 = fpext float %780 to double
  %782 = fmul double %781, 4.000000e+00
  %783 = fpext float %776 to double
  %784 = call double @llvm.fmuladd.f64(double %782, double %781, double %783)
  %785 = fptrunc double %784 to float
  %786 = load i16, ptr %763, align 2, !tbaa !62
  %787 = uitofp i16 %786 to float
  %788 = fadd float %112, %787
  %789 = fmul float %788, 5.000000e-01
  %790 = fsub float %787, %112
  %791 = fpext float %789 to double
  %792 = fsub double 1.966070e+05, %791
  %793 = fmul double %792, 0x3EF0001000100010
  %794 = fpext float %790 to double
  %795 = fmul double %793, %794
  %796 = fpext float %785 to double
  %797 = call double @llvm.fmuladd.f64(double %795, double %794, double %796)
  %798 = fptrunc double %797 to float
  %799 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 4, i32 3
  %800 = load i16, ptr %799, align 2, !tbaa !63
  %801 = uitofp i16 %800 to float
  %802 = fadd float %127, %801
  %803 = fmul float %802, 5.000000e-01
  %804 = fsub float %801, %127
  %805 = fpext float %803 to double
  %806 = fsub double 1.966070e+05, %805
  %807 = fmul double %806, 0x3EF0001000100010
  %808 = fpext float %804 to double
  %809 = fmul double %807, %808
  %810 = fpext float %798 to double
  %811 = call double @llvm.fmuladd.f64(double %809, double %808, double %810)
  %812 = fptrunc double %811 to float
  %813 = fcmp olt float %812, 0x41A47AB860000000
  br i1 %813, label %814, label %832

814:                                              ; preds = %757
  %815 = uitofp i16 %765 to double
  %816 = fpext float %761 to double
  %817 = call double @llvm.fmuladd.f64(double %815, double 8.000000e+00, double %816)
  %818 = fptrunc double %817 to float
  %819 = uitofp i16 %778 to double
  %820 = fpext float %760 to double
  %821 = call double @llvm.fmuladd.f64(double %819, double 8.000000e+00, double %820)
  %822 = fptrunc double %821 to float
  %823 = uitofp i16 %786 to double
  %824 = fpext float %759 to double
  %825 = call double @llvm.fmuladd.f64(double %823, double 8.000000e+00, double %824)
  %826 = fptrunc double %825 to float
  %827 = uitofp i16 %800 to double
  %828 = fpext float %758 to double
  %829 = call double @llvm.fmuladd.f64(double %827, double 8.000000e+00, double %828)
  %830 = fptrunc double %829 to float
  %831 = fadd float %762, 8.000000e+00
  br label %832

832:                                              ; preds = %814, %757
  %833 = phi float [ %830, %814 ], [ %758, %757 ]
  %834 = phi float [ %826, %814 ], [ %759, %757 ]
  %835 = phi float [ %822, %814 ], [ %760, %757 ]
  %836 = phi float [ %818, %814 ], [ %761, %757 ]
  %837 = phi float [ %831, %814 ], [ %762, %757 ]
  %838 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %63, i32 2
  %839 = load i16, ptr %838, align 2, !tbaa !60
  %840 = uitofp i16 %839 to float
  %841 = fadd float %89, %840
  %842 = fmul float %841, 5.000000e-01
  %843 = fsub float %840, %89
  %844 = fpext float %842 to double
  %845 = fadd double %844, 1.310720e+05
  %846 = fmul double %845, 0x3EF0001000100010
  %847 = fpext float %843 to double
  %848 = fmul double %846, %847
  %849 = fmul double %848, %847
  %850 = fptrunc double %849 to float
  %851 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %63, i32 1
  %852 = load i16, ptr %851, align 2, !tbaa !61
  %853 = uitofp i16 %852 to float
  %854 = fsub float %853, %103
  %855 = fpext float %854 to double
  %856 = fmul double %855, 4.000000e+00
  %857 = fpext float %850 to double
  %858 = call double @llvm.fmuladd.f64(double %856, double %855, double %857)
  %859 = fptrunc double %858 to float
  %860 = load i16, ptr %77, align 2, !tbaa !62
  %861 = uitofp i16 %860 to float
  %862 = fadd float %112, %861
  %863 = fmul float %862, 5.000000e-01
  %864 = fsub float %861, %112
  %865 = fpext float %863 to double
  %866 = fsub double 1.966070e+05, %865
  %867 = fmul double %866, 0x3EF0001000100010
  %868 = fpext float %864 to double
  %869 = fmul double %867, %868
  %870 = fpext float %859 to double
  %871 = call double @llvm.fmuladd.f64(double %869, double %868, double %870)
  %872 = fptrunc double %871 to float
  %873 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %63, i32 3
  %874 = load i16, ptr %873, align 2, !tbaa !63
  %875 = uitofp i16 %874 to float
  %876 = fadd float %127, %875
  %877 = fmul float %876, 5.000000e-01
  %878 = fsub float %875, %127
  %879 = fpext float %877 to double
  %880 = fsub double 1.966070e+05, %879
  %881 = fmul double %880, 0x3EF0001000100010
  %882 = fpext float %878 to double
  %883 = fmul double %881, %882
  %884 = fpext float %872 to double
  %885 = call double @llvm.fmuladd.f64(double %883, double %882, double %884)
  %886 = fptrunc double %885 to float
  %887 = fcmp olt float %886, 0x41A47AB860000000
  br i1 %887, label %888, label %906

888:                                              ; preds = %832
  %889 = uitofp i16 %839 to double
  %890 = fpext float %836 to double
  %891 = call double @llvm.fmuladd.f64(double %889, double 1.000000e+01, double %890)
  %892 = fptrunc double %891 to float
  %893 = uitofp i16 %852 to double
  %894 = fpext float %835 to double
  %895 = call double @llvm.fmuladd.f64(double %893, double 1.000000e+01, double %894)
  %896 = fptrunc double %895 to float
  %897 = uitofp i16 %860 to double
  %898 = fpext float %834 to double
  %899 = call double @llvm.fmuladd.f64(double %897, double 1.000000e+01, double %898)
  %900 = fptrunc double %899 to float
  %901 = uitofp i16 %874 to double
  %902 = fpext float %833 to double
  %903 = call double @llvm.fmuladd.f64(double %901, double 1.000000e+01, double %902)
  %904 = fptrunc double %903 to float
  %905 = fadd float %837, 1.000000e+01
  br label %906

906:                                              ; preds = %888, %832
  %907 = phi float [ %904, %888 ], [ %833, %832 ]
  %908 = phi float [ %900, %888 ], [ %834, %832 ]
  %909 = phi float [ %896, %888 ], [ %835, %832 ]
  %910 = phi float [ %892, %888 ], [ %836, %832 ]
  %911 = phi float [ %905, %888 ], [ %837, %832 ]
  %912 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %913 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1, i32 2
  %914 = load i16, ptr %913, align 2, !tbaa !60
  %915 = uitofp i16 %914 to float
  %916 = fadd float %89, %915
  %917 = fmul float %916, 5.000000e-01
  %918 = fsub float %915, %89
  %919 = fpext float %917 to double
  %920 = fadd double %919, 1.310720e+05
  %921 = fmul double %920, 0x3EF0001000100010
  %922 = fpext float %918 to double
  %923 = fmul double %921, %922
  %924 = fmul double %923, %922
  %925 = fptrunc double %924 to float
  %926 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1, i32 1
  %927 = load i16, ptr %926, align 2, !tbaa !61
  %928 = uitofp i16 %927 to float
  %929 = fsub float %928, %103
  %930 = fpext float %929 to double
  %931 = fmul double %930, 4.000000e+00
  %932 = fpext float %925 to double
  %933 = call double @llvm.fmuladd.f64(double %931, double %930, double %932)
  %934 = fptrunc double %933 to float
  %935 = load i16, ptr %912, align 2, !tbaa !62
  %936 = uitofp i16 %935 to float
  %937 = fadd float %112, %936
  %938 = fmul float %937, 5.000000e-01
  %939 = fsub float %936, %112
  %940 = fpext float %938 to double
  %941 = fsub double 1.966070e+05, %940
  %942 = fmul double %941, 0x3EF0001000100010
  %943 = fpext float %939 to double
  %944 = fmul double %942, %943
  %945 = fpext float %934 to double
  %946 = call double @llvm.fmuladd.f64(double %944, double %943, double %945)
  %947 = fptrunc double %946 to float
  %948 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1, i32 3
  %949 = load i16, ptr %948, align 2, !tbaa !63
  %950 = uitofp i16 %949 to float
  %951 = fadd float %127, %950
  %952 = fmul float %951, 5.000000e-01
  %953 = fsub float %950, %127
  %954 = fpext float %952 to double
  %955 = fsub double 1.966070e+05, %954
  %956 = fmul double %955, 0x3EF0001000100010
  %957 = fpext float %953 to double
  %958 = fmul double %956, %957
  %959 = fpext float %947 to double
  %960 = call double @llvm.fmuladd.f64(double %958, double %957, double %959)
  %961 = fptrunc double %960 to float
  %962 = fcmp olt float %961, 0x41A47AB860000000
  br i1 %962, label %963, label %981

963:                                              ; preds = %906
  %964 = uitofp i16 %914 to double
  %965 = fpext float %910 to double
  %966 = call double @llvm.fmuladd.f64(double %964, double 4.000000e+01, double %965)
  %967 = fptrunc double %966 to float
  %968 = uitofp i16 %927 to double
  %969 = fpext float %909 to double
  %970 = call double @llvm.fmuladd.f64(double %968, double 4.000000e+01, double %969)
  %971 = fptrunc double %970 to float
  %972 = uitofp i16 %935 to double
  %973 = fpext float %908 to double
  %974 = call double @llvm.fmuladd.f64(double %972, double 4.000000e+01, double %973)
  %975 = fptrunc double %974 to float
  %976 = uitofp i16 %949 to double
  %977 = fpext float %907 to double
  %978 = call double @llvm.fmuladd.f64(double %976, double 4.000000e+01, double %977)
  %979 = fptrunc double %978 to float
  %980 = fadd float %911, 4.000000e+01
  br label %981

981:                                              ; preds = %963, %906
  %982 = phi float [ %979, %963 ], [ %907, %906 ]
  %983 = phi float [ %975, %963 ], [ %908, %906 ]
  %984 = phi float [ %971, %963 ], [ %909, %906 ]
  %985 = phi float [ %967, %963 ], [ %910, %906 ]
  %986 = phi float [ %980, %963 ], [ %911, %906 ]
  %987 = fadd float %89, %89
  %988 = fmul float %987, 5.000000e-01
  %989 = fsub float %89, %89
  %990 = fpext float %988 to double
  %991 = fadd double %990, 1.310720e+05
  %992 = fmul double %991, 0x3EF0001000100010
  %993 = fpext float %989 to double
  %994 = fmul double %992, %993
  %995 = fmul double %994, %993
  %996 = fptrunc double %995 to float
  %997 = fsub float %103, %103
  %998 = fpext float %997 to double
  %999 = fmul double %998, 4.000000e+00
  %1000 = fpext float %996 to double
  %1001 = call double @llvm.fmuladd.f64(double %999, double %998, double %1000)
  %1002 = fptrunc double %1001 to float
  %1003 = fadd float %112, %112
  %1004 = fmul float %1003, 5.000000e-01
  %1005 = fsub float %112, %112
  %1006 = fpext float %1004 to double
  %1007 = fsub double 1.966070e+05, %1006
  %1008 = fmul double %1007, 0x3EF0001000100010
  %1009 = fpext float %1005 to double
  %1010 = fmul double %1008, %1009
  %1011 = fpext float %1002 to double
  %1012 = call double @llvm.fmuladd.f64(double %1010, double %1009, double %1011)
  %1013 = fptrunc double %1012 to float
  %1014 = fadd float %127, %127
  %1015 = fmul float %1014, 5.000000e-01
  %1016 = fsub float %127, %127
  %1017 = fpext float %1015 to double
  %1018 = fsub double 1.966070e+05, %1017
  %1019 = fmul double %1018, 0x3EF0001000100010
  %1020 = fpext float %1016 to double
  %1021 = fmul double %1019, %1020
  %1022 = fpext float %1013 to double
  %1023 = call double @llvm.fmuladd.f64(double %1021, double %1020, double %1022)
  %1024 = fptrunc double %1023 to float
  %1025 = fcmp olt float %1024, 0x41A47AB860000000
  br i1 %1025, label %1026, label %1044

1026:                                             ; preds = %981
  %1027 = uitofp i16 %83 to double
  %1028 = fpext float %985 to double
  %1029 = call double @llvm.fmuladd.f64(double %1027, double 8.000000e+01, double %1028)
  %1030 = fptrunc double %1029 to float
  %1031 = uitofp i16 %81 to double
  %1032 = fpext float %984 to double
  %1033 = call double @llvm.fmuladd.f64(double %1031, double 8.000000e+01, double %1032)
  %1034 = fptrunc double %1033 to float
  %1035 = uitofp i16 %79 to double
  %1036 = fpext float %983 to double
  %1037 = call double @llvm.fmuladd.f64(double %1035, double 8.000000e+01, double %1036)
  %1038 = fptrunc double %1037 to float
  %1039 = uitofp i16 %85 to double
  %1040 = fpext float %982 to double
  %1041 = call double @llvm.fmuladd.f64(double %1039, double 8.000000e+01, double %1040)
  %1042 = fptrunc double %1041 to float
  %1043 = fadd float %986, 8.000000e+01
  br label %1044

1044:                                             ; preds = %1026, %981
  %1045 = phi float [ %1042, %1026 ], [ %982, %981 ]
  %1046 = phi float [ %1038, %1026 ], [ %983, %981 ]
  %1047 = phi float [ %1034, %1026 ], [ %984, %981 ]
  %1048 = phi float [ %1030, %1026 ], [ %985, %981 ]
  %1049 = phi float [ %1043, %1026 ], [ %986, %981 ]
  %1050 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 3
  %1051 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 3, i32 2
  %1052 = load i16, ptr %1051, align 2, !tbaa !60
  %1053 = uitofp i16 %1052 to float
  %1054 = fadd float %89, %1053
  %1055 = fmul float %1054, 5.000000e-01
  %1056 = fsub float %1053, %89
  %1057 = fpext float %1055 to double
  %1058 = fadd double %1057, 1.310720e+05
  %1059 = fmul double %1058, 0x3EF0001000100010
  %1060 = fpext float %1056 to double
  %1061 = fmul double %1059, %1060
  %1062 = fmul double %1061, %1060
  %1063 = fptrunc double %1062 to float
  %1064 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 3, i32 1
  %1065 = load i16, ptr %1064, align 2, !tbaa !61
  %1066 = uitofp i16 %1065 to float
  %1067 = fsub float %1066, %103
  %1068 = fpext float %1067 to double
  %1069 = fmul double %1068, 4.000000e+00
  %1070 = fpext float %1063 to double
  %1071 = call double @llvm.fmuladd.f64(double %1069, double %1068, double %1070)
  %1072 = fptrunc double %1071 to float
  %1073 = load i16, ptr %1050, align 2, !tbaa !62
  %1074 = uitofp i16 %1073 to float
  %1075 = fadd float %112, %1074
  %1076 = fmul float %1075, 5.000000e-01
  %1077 = fsub float %1074, %112
  %1078 = fpext float %1076 to double
  %1079 = fsub double 1.966070e+05, %1078
  %1080 = fmul double %1079, 0x3EF0001000100010
  %1081 = fpext float %1077 to double
  %1082 = fmul double %1080, %1081
  %1083 = fpext float %1072 to double
  %1084 = call double @llvm.fmuladd.f64(double %1082, double %1081, double %1083)
  %1085 = fptrunc double %1084 to float
  %1086 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 3, i32 3
  %1087 = load i16, ptr %1086, align 2, !tbaa !63
  %1088 = uitofp i16 %1087 to float
  %1089 = fadd float %127, %1088
  %1090 = fmul float %1089, 5.000000e-01
  %1091 = fsub float %1088, %127
  %1092 = fpext float %1090 to double
  %1093 = fsub double 1.966070e+05, %1092
  %1094 = fmul double %1093, 0x3EF0001000100010
  %1095 = fpext float %1091 to double
  %1096 = fmul double %1094, %1095
  %1097 = fpext float %1085 to double
  %1098 = call double @llvm.fmuladd.f64(double %1096, double %1095, double %1097)
  %1099 = fptrunc double %1098 to float
  %1100 = fcmp olt float %1099, 0x41A47AB860000000
  br i1 %1100, label %1101, label %1119

1101:                                             ; preds = %1044
  %1102 = uitofp i16 %1052 to double
  %1103 = fpext float %1048 to double
  %1104 = call double @llvm.fmuladd.f64(double %1102, double 4.000000e+01, double %1103)
  %1105 = fptrunc double %1104 to float
  %1106 = uitofp i16 %1065 to double
  %1107 = fpext float %1047 to double
  %1108 = call double @llvm.fmuladd.f64(double %1106, double 4.000000e+01, double %1107)
  %1109 = fptrunc double %1108 to float
  %1110 = uitofp i16 %1073 to double
  %1111 = fpext float %1046 to double
  %1112 = call double @llvm.fmuladd.f64(double %1110, double 4.000000e+01, double %1111)
  %1113 = fptrunc double %1112 to float
  %1114 = uitofp i16 %1087 to double
  %1115 = fpext float %1045 to double
  %1116 = call double @llvm.fmuladd.f64(double %1114, double 4.000000e+01, double %1115)
  %1117 = fptrunc double %1116 to float
  %1118 = fadd float %1049, 4.000000e+01
  br label %1119

1119:                                             ; preds = %1101, %1044
  %1120 = phi float [ %1117, %1101 ], [ %1045, %1044 ]
  %1121 = phi float [ %1113, %1101 ], [ %1046, %1044 ]
  %1122 = phi float [ %1109, %1101 ], [ %1047, %1044 ]
  %1123 = phi float [ %1105, %1101 ], [ %1048, %1044 ]
  %1124 = phi float [ %1118, %1101 ], [ %1049, %1044 ]
  %1125 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 4
  %1126 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 4, i32 2
  %1127 = load i16, ptr %1126, align 2, !tbaa !60
  %1128 = uitofp i16 %1127 to float
  %1129 = fadd float %89, %1128
  %1130 = fmul float %1129, 5.000000e-01
  %1131 = fsub float %1128, %89
  %1132 = fpext float %1130 to double
  %1133 = fadd double %1132, 1.310720e+05
  %1134 = fmul double %1133, 0x3EF0001000100010
  %1135 = fpext float %1131 to double
  %1136 = fmul double %1134, %1135
  %1137 = fmul double %1136, %1135
  %1138 = fptrunc double %1137 to float
  %1139 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 4, i32 1
  %1140 = load i16, ptr %1139, align 2, !tbaa !61
  %1141 = uitofp i16 %1140 to float
  %1142 = fsub float %1141, %103
  %1143 = fpext float %1142 to double
  %1144 = fmul double %1143, 4.000000e+00
  %1145 = fpext float %1138 to double
  %1146 = call double @llvm.fmuladd.f64(double %1144, double %1143, double %1145)
  %1147 = fptrunc double %1146 to float
  %1148 = load i16, ptr %1125, align 2, !tbaa !62
  %1149 = uitofp i16 %1148 to float
  %1150 = fadd float %112, %1149
  %1151 = fmul float %1150, 5.000000e-01
  %1152 = fsub float %1149, %112
  %1153 = fpext float %1151 to double
  %1154 = fsub double 1.966070e+05, %1153
  %1155 = fmul double %1154, 0x3EF0001000100010
  %1156 = fpext float %1152 to double
  %1157 = fmul double %1155, %1156
  %1158 = fpext float %1147 to double
  %1159 = call double @llvm.fmuladd.f64(double %1157, double %1156, double %1158)
  %1160 = fptrunc double %1159 to float
  %1161 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 4, i32 3
  %1162 = load i16, ptr %1161, align 2, !tbaa !63
  %1163 = uitofp i16 %1162 to float
  %1164 = fadd float %127, %1163
  %1165 = fmul float %1164, 5.000000e-01
  %1166 = fsub float %1163, %127
  %1167 = fpext float %1165 to double
  %1168 = fsub double 1.966070e+05, %1167
  %1169 = fmul double %1168, 0x3EF0001000100010
  %1170 = fpext float %1166 to double
  %1171 = fmul double %1169, %1170
  %1172 = fpext float %1160 to double
  %1173 = call double @llvm.fmuladd.f64(double %1171, double %1170, double %1172)
  %1174 = fptrunc double %1173 to float
  %1175 = fcmp olt float %1174, 0x41A47AB860000000
  br i1 %1175, label %1176, label %1194

1176:                                             ; preds = %1119
  %1177 = uitofp i16 %1127 to double
  %1178 = fpext float %1123 to double
  %1179 = call double @llvm.fmuladd.f64(double %1177, double 1.000000e+01, double %1178)
  %1180 = fptrunc double %1179 to float
  %1181 = uitofp i16 %1140 to double
  %1182 = fpext float %1122 to double
  %1183 = call double @llvm.fmuladd.f64(double %1181, double 1.000000e+01, double %1182)
  %1184 = fptrunc double %1183 to float
  %1185 = uitofp i16 %1148 to double
  %1186 = fpext float %1121 to double
  %1187 = call double @llvm.fmuladd.f64(double %1185, double 1.000000e+01, double %1186)
  %1188 = fptrunc double %1187 to float
  %1189 = uitofp i16 %1162 to double
  %1190 = fpext float %1120 to double
  %1191 = call double @llvm.fmuladd.f64(double %1189, double 1.000000e+01, double %1190)
  %1192 = fptrunc double %1191 to float
  %1193 = fadd float %1124, 1.000000e+01
  br label %1194

1194:                                             ; preds = %1176, %1119
  %1195 = phi float [ %1192, %1176 ], [ %1120, %1119 ]
  %1196 = phi float [ %1188, %1176 ], [ %1121, %1119 ]
  %1197 = phi float [ %1184, %1176 ], [ %1122, %1119 ]
  %1198 = phi float [ %1180, %1176 ], [ %1123, %1119 ]
  %1199 = phi float [ %1193, %1176 ], [ %1124, %1119 ]
  %1200 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %66
  %1201 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %66, i32 2
  %1202 = load i16, ptr %1201, align 2, !tbaa !60
  %1203 = uitofp i16 %1202 to float
  %1204 = fadd float %89, %1203
  %1205 = fmul float %1204, 5.000000e-01
  %1206 = fsub float %1203, %89
  %1207 = fpext float %1205 to double
  %1208 = fadd double %1207, 1.310720e+05
  %1209 = fmul double %1208, 0x3EF0001000100010
  %1210 = fpext float %1206 to double
  %1211 = fmul double %1209, %1210
  %1212 = fmul double %1211, %1210
  %1213 = fptrunc double %1212 to float
  %1214 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %66, i32 1
  %1215 = load i16, ptr %1214, align 2, !tbaa !61
  %1216 = uitofp i16 %1215 to float
  %1217 = fsub float %1216, %103
  %1218 = fpext float %1217 to double
  %1219 = fmul double %1218, 4.000000e+00
  %1220 = fpext float %1213 to double
  %1221 = call double @llvm.fmuladd.f64(double %1219, double %1218, double %1220)
  %1222 = fptrunc double %1221 to float
  %1223 = load i16, ptr %1200, align 2, !tbaa !62
  %1224 = uitofp i16 %1223 to float
  %1225 = fadd float %112, %1224
  %1226 = fmul float %1225, 5.000000e-01
  %1227 = fsub float %1224, %112
  %1228 = fpext float %1226 to double
  %1229 = fsub double 1.966070e+05, %1228
  %1230 = fmul double %1229, 0x3EF0001000100010
  %1231 = fpext float %1227 to double
  %1232 = fmul double %1230, %1231
  %1233 = fpext float %1222 to double
  %1234 = call double @llvm.fmuladd.f64(double %1232, double %1231, double %1233)
  %1235 = fptrunc double %1234 to float
  %1236 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %66, i32 3
  %1237 = load i16, ptr %1236, align 2, !tbaa !63
  %1238 = uitofp i16 %1237 to float
  %1239 = fadd float %127, %1238
  %1240 = fmul float %1239, 5.000000e-01
  %1241 = fsub float %1238, %127
  %1242 = fpext float %1240 to double
  %1243 = fsub double 1.966070e+05, %1242
  %1244 = fmul double %1243, 0x3EF0001000100010
  %1245 = fpext float %1241 to double
  %1246 = fmul double %1244, %1245
  %1247 = fpext float %1235 to double
  %1248 = call double @llvm.fmuladd.f64(double %1246, double %1245, double %1247)
  %1249 = fptrunc double %1248 to float
  %1250 = fcmp olt float %1249, 0x41A47AB860000000
  br i1 %1250, label %1251, label %1269

1251:                                             ; preds = %1194
  %1252 = uitofp i16 %1202 to double
  %1253 = fpext float %1198 to double
  %1254 = call double @llvm.fmuladd.f64(double %1252, double 8.000000e+00, double %1253)
  %1255 = fptrunc double %1254 to float
  %1256 = uitofp i16 %1215 to double
  %1257 = fpext float %1197 to double
  %1258 = call double @llvm.fmuladd.f64(double %1256, double 8.000000e+00, double %1257)
  %1259 = fptrunc double %1258 to float
  %1260 = uitofp i16 %1223 to double
  %1261 = fpext float %1196 to double
  %1262 = call double @llvm.fmuladd.f64(double %1260, double 8.000000e+00, double %1261)
  %1263 = fptrunc double %1262 to float
  %1264 = uitofp i16 %1237 to double
  %1265 = fpext float %1195 to double
  %1266 = call double @llvm.fmuladd.f64(double %1264, double 8.000000e+00, double %1265)
  %1267 = fptrunc double %1266 to float
  %1268 = fadd float %1199, 8.000000e+00
  br label %1269

1269:                                             ; preds = %1251, %1194
  %1270 = phi float [ %1267, %1251 ], [ %1195, %1194 ]
  %1271 = phi float [ %1263, %1251 ], [ %1196, %1194 ]
  %1272 = phi float [ %1259, %1251 ], [ %1197, %1194 ]
  %1273 = phi float [ %1255, %1251 ], [ %1198, %1194 ]
  %1274 = phi float [ %1268, %1251 ], [ %1199, %1194 ]
  %1275 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 1
  %1276 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 1, i32 2
  %1277 = load i16, ptr %1276, align 2, !tbaa !60
  %1278 = uitofp i16 %1277 to float
  %1279 = fadd float %89, %1278
  %1280 = fmul float %1279, 5.000000e-01
  %1281 = fsub float %1278, %89
  %1282 = fpext float %1280 to double
  %1283 = fadd double %1282, 1.310720e+05
  %1284 = fmul double %1283, 0x3EF0001000100010
  %1285 = fpext float %1281 to double
  %1286 = fmul double %1284, %1285
  %1287 = fmul double %1286, %1285
  %1288 = fptrunc double %1287 to float
  %1289 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 1, i32 1
  %1290 = load i16, ptr %1289, align 2, !tbaa !61
  %1291 = uitofp i16 %1290 to float
  %1292 = fsub float %1291, %103
  %1293 = fpext float %1292 to double
  %1294 = fmul double %1293, 4.000000e+00
  %1295 = fpext float %1288 to double
  %1296 = call double @llvm.fmuladd.f64(double %1294, double %1293, double %1295)
  %1297 = fptrunc double %1296 to float
  %1298 = load i16, ptr %1275, align 2, !tbaa !62
  %1299 = uitofp i16 %1298 to float
  %1300 = fadd float %112, %1299
  %1301 = fmul float %1300, 5.000000e-01
  %1302 = fsub float %1299, %112
  %1303 = fpext float %1301 to double
  %1304 = fsub double 1.966070e+05, %1303
  %1305 = fmul double %1304, 0x3EF0001000100010
  %1306 = fpext float %1302 to double
  %1307 = fmul double %1305, %1306
  %1308 = fpext float %1297 to double
  %1309 = call double @llvm.fmuladd.f64(double %1307, double %1306, double %1308)
  %1310 = fptrunc double %1309 to float
  %1311 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 1, i32 3
  %1312 = load i16, ptr %1311, align 2, !tbaa !63
  %1313 = uitofp i16 %1312 to float
  %1314 = fadd float %127, %1313
  %1315 = fmul float %1314, 5.000000e-01
  %1316 = fsub float %1313, %127
  %1317 = fpext float %1315 to double
  %1318 = fsub double 1.966070e+05, %1317
  %1319 = fmul double %1318, 0x3EF0001000100010
  %1320 = fpext float %1316 to double
  %1321 = fmul double %1319, %1320
  %1322 = fpext float %1310 to double
  %1323 = call double @llvm.fmuladd.f64(double %1321, double %1320, double %1322)
  %1324 = fptrunc double %1323 to float
  %1325 = fcmp olt float %1324, 0x41A47AB860000000
  br i1 %1325, label %1326, label %1344

1326:                                             ; preds = %1269
  %1327 = uitofp i16 %1277 to double
  %1328 = fpext float %1273 to double
  %1329 = call double @llvm.fmuladd.f64(double %1327, double 2.000000e+01, double %1328)
  %1330 = fptrunc double %1329 to float
  %1331 = uitofp i16 %1290 to double
  %1332 = fpext float %1272 to double
  %1333 = call double @llvm.fmuladd.f64(double %1331, double 2.000000e+01, double %1332)
  %1334 = fptrunc double %1333 to float
  %1335 = uitofp i16 %1298 to double
  %1336 = fpext float %1271 to double
  %1337 = call double @llvm.fmuladd.f64(double %1335, double 2.000000e+01, double %1336)
  %1338 = fptrunc double %1337 to float
  %1339 = uitofp i16 %1312 to double
  %1340 = fpext float %1270 to double
  %1341 = call double @llvm.fmuladd.f64(double %1339, double 2.000000e+01, double %1340)
  %1342 = fptrunc double %1341 to float
  %1343 = fadd float %1274, 2.000000e+01
  br label %1344

1344:                                             ; preds = %1326, %1269
  %1345 = phi float [ %1342, %1326 ], [ %1270, %1269 ]
  %1346 = phi float [ %1338, %1326 ], [ %1271, %1269 ]
  %1347 = phi float [ %1334, %1326 ], [ %1272, %1269 ]
  %1348 = phi float [ %1330, %1326 ], [ %1273, %1269 ]
  %1349 = phi float [ %1343, %1326 ], [ %1274, %1269 ]
  %1350 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 2
  %1351 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 2, i32 2
  %1352 = load i16, ptr %1351, align 2, !tbaa !60
  %1353 = uitofp i16 %1352 to float
  %1354 = fadd float %89, %1353
  %1355 = fmul float %1354, 5.000000e-01
  %1356 = fsub float %1353, %89
  %1357 = fpext float %1355 to double
  %1358 = fadd double %1357, 1.310720e+05
  %1359 = fmul double %1358, 0x3EF0001000100010
  %1360 = fpext float %1356 to double
  %1361 = fmul double %1359, %1360
  %1362 = fmul double %1361, %1360
  %1363 = fptrunc double %1362 to float
  %1364 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 2, i32 1
  %1365 = load i16, ptr %1364, align 2, !tbaa !61
  %1366 = uitofp i16 %1365 to float
  %1367 = fsub float %1366, %103
  %1368 = fpext float %1367 to double
  %1369 = fmul double %1368, 4.000000e+00
  %1370 = fpext float %1363 to double
  %1371 = call double @llvm.fmuladd.f64(double %1369, double %1368, double %1370)
  %1372 = fptrunc double %1371 to float
  %1373 = load i16, ptr %1350, align 2, !tbaa !62
  %1374 = uitofp i16 %1373 to float
  %1375 = fadd float %112, %1374
  %1376 = fmul float %1375, 5.000000e-01
  %1377 = fsub float %1374, %112
  %1378 = fpext float %1376 to double
  %1379 = fsub double 1.966070e+05, %1378
  %1380 = fmul double %1379, 0x3EF0001000100010
  %1381 = fpext float %1377 to double
  %1382 = fmul double %1380, %1381
  %1383 = fpext float %1372 to double
  %1384 = call double @llvm.fmuladd.f64(double %1382, double %1381, double %1383)
  %1385 = fptrunc double %1384 to float
  %1386 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 2, i32 3
  %1387 = load i16, ptr %1386, align 2, !tbaa !63
  %1388 = uitofp i16 %1387 to float
  %1389 = fadd float %127, %1388
  %1390 = fmul float %1389, 5.000000e-01
  %1391 = fsub float %1388, %127
  %1392 = fpext float %1390 to double
  %1393 = fsub double 1.966070e+05, %1392
  %1394 = fmul double %1393, 0x3EF0001000100010
  %1395 = fpext float %1391 to double
  %1396 = fmul double %1394, %1395
  %1397 = fpext float %1385 to double
  %1398 = call double @llvm.fmuladd.f64(double %1396, double %1395, double %1397)
  %1399 = fptrunc double %1398 to float
  %1400 = fcmp olt float %1399, 0x41A47AB860000000
  br i1 %1400, label %1401, label %1419

1401:                                             ; preds = %1344
  %1402 = uitofp i16 %1352 to double
  %1403 = fpext float %1348 to double
  %1404 = call double @llvm.fmuladd.f64(double %1402, double 4.000000e+01, double %1403)
  %1405 = fptrunc double %1404 to float
  %1406 = uitofp i16 %1365 to double
  %1407 = fpext float %1347 to double
  %1408 = call double @llvm.fmuladd.f64(double %1406, double 4.000000e+01, double %1407)
  %1409 = fptrunc double %1408 to float
  %1410 = uitofp i16 %1373 to double
  %1411 = fpext float %1346 to double
  %1412 = call double @llvm.fmuladd.f64(double %1410, double 4.000000e+01, double %1411)
  %1413 = fptrunc double %1412 to float
  %1414 = uitofp i16 %1387 to double
  %1415 = fpext float %1345 to double
  %1416 = call double @llvm.fmuladd.f64(double %1414, double 4.000000e+01, double %1415)
  %1417 = fptrunc double %1416 to float
  %1418 = fadd float %1349, 4.000000e+01
  br label %1419

1419:                                             ; preds = %1401, %1344
  %1420 = phi float [ %1417, %1401 ], [ %1345, %1344 ]
  %1421 = phi float [ %1413, %1401 ], [ %1346, %1344 ]
  %1422 = phi float [ %1409, %1401 ], [ %1347, %1344 ]
  %1423 = phi float [ %1405, %1401 ], [ %1348, %1344 ]
  %1424 = phi float [ %1418, %1401 ], [ %1349, %1344 ]
  %1425 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 3
  %1426 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 3, i32 2
  %1427 = load i16, ptr %1426, align 2, !tbaa !60
  %1428 = uitofp i16 %1427 to float
  %1429 = fadd float %89, %1428
  %1430 = fmul float %1429, 5.000000e-01
  %1431 = fsub float %1428, %89
  %1432 = fpext float %1430 to double
  %1433 = fadd double %1432, 1.310720e+05
  %1434 = fmul double %1433, 0x3EF0001000100010
  %1435 = fpext float %1431 to double
  %1436 = fmul double %1434, %1435
  %1437 = fmul double %1436, %1435
  %1438 = fptrunc double %1437 to float
  %1439 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 3, i32 1
  %1440 = load i16, ptr %1439, align 2, !tbaa !61
  %1441 = uitofp i16 %1440 to float
  %1442 = fsub float %1441, %103
  %1443 = fpext float %1442 to double
  %1444 = fmul double %1443, 4.000000e+00
  %1445 = fpext float %1438 to double
  %1446 = call double @llvm.fmuladd.f64(double %1444, double %1443, double %1445)
  %1447 = fptrunc double %1446 to float
  %1448 = load i16, ptr %1425, align 2, !tbaa !62
  %1449 = uitofp i16 %1448 to float
  %1450 = fadd float %112, %1449
  %1451 = fmul float %1450, 5.000000e-01
  %1452 = fsub float %1449, %112
  %1453 = fpext float %1451 to double
  %1454 = fsub double 1.966070e+05, %1453
  %1455 = fmul double %1454, 0x3EF0001000100010
  %1456 = fpext float %1452 to double
  %1457 = fmul double %1455, %1456
  %1458 = fpext float %1447 to double
  %1459 = call double @llvm.fmuladd.f64(double %1457, double %1456, double %1458)
  %1460 = fptrunc double %1459 to float
  %1461 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 3, i32 3
  %1462 = load i16, ptr %1461, align 2, !tbaa !63
  %1463 = uitofp i16 %1462 to float
  %1464 = fadd float %127, %1463
  %1465 = fmul float %1464, 5.000000e-01
  %1466 = fsub float %1463, %127
  %1467 = fpext float %1465 to double
  %1468 = fsub double 1.966070e+05, %1467
  %1469 = fmul double %1468, 0x3EF0001000100010
  %1470 = fpext float %1466 to double
  %1471 = fmul double %1469, %1470
  %1472 = fpext float %1460 to double
  %1473 = call double @llvm.fmuladd.f64(double %1471, double %1470, double %1472)
  %1474 = fptrunc double %1473 to float
  %1475 = fcmp olt float %1474, 0x41A47AB860000000
  br i1 %1475, label %1476, label %1494

1476:                                             ; preds = %1419
  %1477 = uitofp i16 %1427 to double
  %1478 = fpext float %1423 to double
  %1479 = call double @llvm.fmuladd.f64(double %1477, double 2.000000e+01, double %1478)
  %1480 = fptrunc double %1479 to float
  %1481 = uitofp i16 %1440 to double
  %1482 = fpext float %1422 to double
  %1483 = call double @llvm.fmuladd.f64(double %1481, double 2.000000e+01, double %1482)
  %1484 = fptrunc double %1483 to float
  %1485 = uitofp i16 %1448 to double
  %1486 = fpext float %1421 to double
  %1487 = call double @llvm.fmuladd.f64(double %1485, double 2.000000e+01, double %1486)
  %1488 = fptrunc double %1487 to float
  %1489 = uitofp i16 %1462 to double
  %1490 = fpext float %1420 to double
  %1491 = call double @llvm.fmuladd.f64(double %1489, double 2.000000e+01, double %1490)
  %1492 = fptrunc double %1491 to float
  %1493 = fadd float %1424, 2.000000e+01
  br label %1494

1494:                                             ; preds = %1476, %1419
  %1495 = phi float [ %1492, %1476 ], [ %1420, %1419 ]
  %1496 = phi float [ %1488, %1476 ], [ %1421, %1419 ]
  %1497 = phi float [ %1484, %1476 ], [ %1422, %1419 ]
  %1498 = phi float [ %1480, %1476 ], [ %1423, %1419 ]
  %1499 = phi float [ %1493, %1476 ], [ %1424, %1419 ]
  %1500 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 4
  %1501 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 4, i32 2
  %1502 = load i16, ptr %1501, align 2, !tbaa !60
  %1503 = uitofp i16 %1502 to float
  %1504 = fadd float %89, %1503
  %1505 = fmul float %1504, 5.000000e-01
  %1506 = fsub float %1503, %89
  %1507 = fpext float %1505 to double
  %1508 = fadd double %1507, 1.310720e+05
  %1509 = fmul double %1508, 0x3EF0001000100010
  %1510 = fpext float %1506 to double
  %1511 = fmul double %1509, %1510
  %1512 = fmul double %1511, %1510
  %1513 = fptrunc double %1512 to float
  %1514 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 4, i32 1
  %1515 = load i16, ptr %1514, align 2, !tbaa !61
  %1516 = uitofp i16 %1515 to float
  %1517 = fsub float %1516, %103
  %1518 = fpext float %1517 to double
  %1519 = fmul double %1518, 4.000000e+00
  %1520 = fpext float %1513 to double
  %1521 = call double @llvm.fmuladd.f64(double %1519, double %1518, double %1520)
  %1522 = fptrunc double %1521 to float
  %1523 = load i16, ptr %1500, align 2, !tbaa !62
  %1524 = uitofp i16 %1523 to float
  %1525 = fadd float %112, %1524
  %1526 = fmul float %1525, 5.000000e-01
  %1527 = fsub float %1524, %112
  %1528 = fpext float %1526 to double
  %1529 = fsub double 1.966070e+05, %1528
  %1530 = fmul double %1529, 0x3EF0001000100010
  %1531 = fpext float %1527 to double
  %1532 = fmul double %1530, %1531
  %1533 = fpext float %1522 to double
  %1534 = call double @llvm.fmuladd.f64(double %1532, double %1531, double %1533)
  %1535 = fptrunc double %1534 to float
  %1536 = getelementptr inbounds %struct._PixelPacket, ptr %1200, i64 4, i32 3
  %1537 = load i16, ptr %1536, align 2, !tbaa !63
  %1538 = uitofp i16 %1537 to float
  %1539 = fadd float %127, %1538
  %1540 = fmul float %1539, 5.000000e-01
  %1541 = fsub float %1538, %127
  %1542 = fpext float %1540 to double
  %1543 = fsub double 1.966070e+05, %1542
  %1544 = fmul double %1543, 0x3EF0001000100010
  %1545 = fpext float %1541 to double
  %1546 = fmul double %1544, %1545
  %1547 = fpext float %1535 to double
  %1548 = call double @llvm.fmuladd.f64(double %1546, double %1545, double %1547)
  %1549 = fptrunc double %1548 to float
  %1550 = fcmp olt float %1549, 0x41A47AB860000000
  br i1 %1550, label %1551, label %1569

1551:                                             ; preds = %1494
  %1552 = uitofp i16 %1502 to double
  %1553 = fpext float %1498 to double
  %1554 = call double @llvm.fmuladd.f64(double %1552, double 8.000000e+00, double %1553)
  %1555 = fptrunc double %1554 to float
  %1556 = uitofp i16 %1515 to double
  %1557 = fpext float %1497 to double
  %1558 = call double @llvm.fmuladd.f64(double %1556, double 8.000000e+00, double %1557)
  %1559 = fptrunc double %1558 to float
  %1560 = uitofp i16 %1523 to double
  %1561 = fpext float %1496 to double
  %1562 = call double @llvm.fmuladd.f64(double %1560, double 8.000000e+00, double %1561)
  %1563 = fptrunc double %1562 to float
  %1564 = uitofp i16 %1537 to double
  %1565 = fpext float %1495 to double
  %1566 = call double @llvm.fmuladd.f64(double %1564, double 8.000000e+00, double %1565)
  %1567 = fptrunc double %1566 to float
  %1568 = fadd float %1499, 8.000000e+00
  br label %1569

1569:                                             ; preds = %1551, %1494
  %1570 = phi float [ %1567, %1551 ], [ %1495, %1494 ]
  %1571 = phi float [ %1563, %1551 ], [ %1496, %1494 ]
  %1572 = phi float [ %1559, %1551 ], [ %1497, %1494 ]
  %1573 = phi float [ %1555, %1551 ], [ %1498, %1494 ]
  %1574 = phi float [ %1568, %1551 ], [ %1499, %1494 ]
  %1575 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %68
  %1576 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %68, i32 2
  %1577 = load i16, ptr %1576, align 2, !tbaa !60
  %1578 = uitofp i16 %1577 to float
  %1579 = fadd float %89, %1578
  %1580 = fmul float %1579, 5.000000e-01
  %1581 = fsub float %1578, %89
  %1582 = fpext float %1580 to double
  %1583 = fadd double %1582, 1.310720e+05
  %1584 = fmul double %1583, 0x3EF0001000100010
  %1585 = fpext float %1581 to double
  %1586 = fmul double %1584, %1585
  %1587 = fmul double %1586, %1585
  %1588 = fptrunc double %1587 to float
  %1589 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %68, i32 1
  %1590 = load i16, ptr %1589, align 2, !tbaa !61
  %1591 = uitofp i16 %1590 to float
  %1592 = fsub float %1591, %103
  %1593 = fpext float %1592 to double
  %1594 = fmul double %1593, 4.000000e+00
  %1595 = fpext float %1588 to double
  %1596 = call double @llvm.fmuladd.f64(double %1594, double %1593, double %1595)
  %1597 = fptrunc double %1596 to float
  %1598 = load i16, ptr %1575, align 2, !tbaa !62
  %1599 = uitofp i16 %1598 to float
  %1600 = fadd float %112, %1599
  %1601 = fmul float %1600, 5.000000e-01
  %1602 = fsub float %1599, %112
  %1603 = fpext float %1601 to double
  %1604 = fsub double 1.966070e+05, %1603
  %1605 = fmul double %1604, 0x3EF0001000100010
  %1606 = fpext float %1602 to double
  %1607 = fmul double %1605, %1606
  %1608 = fpext float %1597 to double
  %1609 = call double @llvm.fmuladd.f64(double %1607, double %1606, double %1608)
  %1610 = fptrunc double %1609 to float
  %1611 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %68, i32 3
  %1612 = load i16, ptr %1611, align 2, !tbaa !63
  %1613 = uitofp i16 %1612 to float
  %1614 = fadd float %127, %1613
  %1615 = fmul float %1614, 5.000000e-01
  %1616 = fsub float %1613, %127
  %1617 = fpext float %1615 to double
  %1618 = fsub double 1.966070e+05, %1617
  %1619 = fmul double %1618, 0x3EF0001000100010
  %1620 = fpext float %1616 to double
  %1621 = fmul double %1619, %1620
  %1622 = fpext float %1610 to double
  %1623 = call double @llvm.fmuladd.f64(double %1621, double %1620, double %1622)
  %1624 = fptrunc double %1623 to float
  %1625 = fcmp olt float %1624, 0x41A47AB860000000
  br i1 %1625, label %1626, label %1644

1626:                                             ; preds = %1569
  %1627 = uitofp i16 %1577 to double
  %1628 = fpext float %1573 to double
  %1629 = call double @llvm.fmuladd.f64(double %1627, double 5.000000e+00, double %1628)
  %1630 = fptrunc double %1629 to float
  %1631 = uitofp i16 %1590 to double
  %1632 = fpext float %1572 to double
  %1633 = call double @llvm.fmuladd.f64(double %1631, double 5.000000e+00, double %1632)
  %1634 = fptrunc double %1633 to float
  %1635 = uitofp i16 %1598 to double
  %1636 = fpext float %1571 to double
  %1637 = call double @llvm.fmuladd.f64(double %1635, double 5.000000e+00, double %1636)
  %1638 = fptrunc double %1637 to float
  %1639 = uitofp i16 %1612 to double
  %1640 = fpext float %1570 to double
  %1641 = call double @llvm.fmuladd.f64(double %1639, double 5.000000e+00, double %1640)
  %1642 = fptrunc double %1641 to float
  %1643 = fadd float %1574, 5.000000e+00
  br label %1644

1644:                                             ; preds = %1626, %1569
  %1645 = phi float [ %1642, %1626 ], [ %1570, %1569 ]
  %1646 = phi float [ %1638, %1626 ], [ %1571, %1569 ]
  %1647 = phi float [ %1634, %1626 ], [ %1572, %1569 ]
  %1648 = phi float [ %1630, %1626 ], [ %1573, %1569 ]
  %1649 = phi float [ %1643, %1626 ], [ %1574, %1569 ]
  %1650 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 1
  %1651 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 1, i32 2
  %1652 = load i16, ptr %1651, align 2, !tbaa !60
  %1653 = uitofp i16 %1652 to float
  %1654 = fadd float %89, %1653
  %1655 = fmul float %1654, 5.000000e-01
  %1656 = fsub float %1653, %89
  %1657 = fpext float %1655 to double
  %1658 = fadd double %1657, 1.310720e+05
  %1659 = fmul double %1658, 0x3EF0001000100010
  %1660 = fpext float %1656 to double
  %1661 = fmul double %1659, %1660
  %1662 = fmul double %1661, %1660
  %1663 = fptrunc double %1662 to float
  %1664 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 1, i32 1
  %1665 = load i16, ptr %1664, align 2, !tbaa !61
  %1666 = uitofp i16 %1665 to float
  %1667 = fsub float %1666, %103
  %1668 = fpext float %1667 to double
  %1669 = fmul double %1668, 4.000000e+00
  %1670 = fpext float %1663 to double
  %1671 = call double @llvm.fmuladd.f64(double %1669, double %1668, double %1670)
  %1672 = fptrunc double %1671 to float
  %1673 = load i16, ptr %1650, align 2, !tbaa !62
  %1674 = uitofp i16 %1673 to float
  %1675 = fadd float %112, %1674
  %1676 = fmul float %1675, 5.000000e-01
  %1677 = fsub float %1674, %112
  %1678 = fpext float %1676 to double
  %1679 = fsub double 1.966070e+05, %1678
  %1680 = fmul double %1679, 0x3EF0001000100010
  %1681 = fpext float %1677 to double
  %1682 = fmul double %1680, %1681
  %1683 = fpext float %1672 to double
  %1684 = call double @llvm.fmuladd.f64(double %1682, double %1681, double %1683)
  %1685 = fptrunc double %1684 to float
  %1686 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 1, i32 3
  %1687 = load i16, ptr %1686, align 2, !tbaa !63
  %1688 = uitofp i16 %1687 to float
  %1689 = fadd float %127, %1688
  %1690 = fmul float %1689, 5.000000e-01
  %1691 = fsub float %1688, %127
  %1692 = fpext float %1690 to double
  %1693 = fsub double 1.966070e+05, %1692
  %1694 = fmul double %1693, 0x3EF0001000100010
  %1695 = fpext float %1691 to double
  %1696 = fmul double %1694, %1695
  %1697 = fpext float %1685 to double
  %1698 = call double @llvm.fmuladd.f64(double %1696, double %1695, double %1697)
  %1699 = fptrunc double %1698 to float
  %1700 = fcmp olt float %1699, 0x41A47AB860000000
  br i1 %1700, label %1701, label %1719

1701:                                             ; preds = %1644
  %1702 = uitofp i16 %1652 to double
  %1703 = fpext float %1648 to double
  %1704 = call double @llvm.fmuladd.f64(double %1702, double 8.000000e+00, double %1703)
  %1705 = fptrunc double %1704 to float
  %1706 = uitofp i16 %1665 to double
  %1707 = fpext float %1647 to double
  %1708 = call double @llvm.fmuladd.f64(double %1706, double 8.000000e+00, double %1707)
  %1709 = fptrunc double %1708 to float
  %1710 = uitofp i16 %1673 to double
  %1711 = fpext float %1646 to double
  %1712 = call double @llvm.fmuladd.f64(double %1710, double 8.000000e+00, double %1711)
  %1713 = fptrunc double %1712 to float
  %1714 = uitofp i16 %1687 to double
  %1715 = fpext float %1645 to double
  %1716 = call double @llvm.fmuladd.f64(double %1714, double 8.000000e+00, double %1715)
  %1717 = fptrunc double %1716 to float
  %1718 = fadd float %1649, 8.000000e+00
  br label %1719

1719:                                             ; preds = %1701, %1644
  %1720 = phi float [ %1717, %1701 ], [ %1645, %1644 ]
  %1721 = phi float [ %1713, %1701 ], [ %1646, %1644 ]
  %1722 = phi float [ %1709, %1701 ], [ %1647, %1644 ]
  %1723 = phi float [ %1705, %1701 ], [ %1648, %1644 ]
  %1724 = phi float [ %1718, %1701 ], [ %1649, %1644 ]
  %1725 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 2
  %1726 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 2, i32 2
  %1727 = load i16, ptr %1726, align 2, !tbaa !60
  %1728 = uitofp i16 %1727 to float
  %1729 = fadd float %89, %1728
  %1730 = fmul float %1729, 5.000000e-01
  %1731 = fsub float %1728, %89
  %1732 = fpext float %1730 to double
  %1733 = fadd double %1732, 1.310720e+05
  %1734 = fmul double %1733, 0x3EF0001000100010
  %1735 = fpext float %1731 to double
  %1736 = fmul double %1734, %1735
  %1737 = fmul double %1736, %1735
  %1738 = fptrunc double %1737 to float
  %1739 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 2, i32 1
  %1740 = load i16, ptr %1739, align 2, !tbaa !61
  %1741 = uitofp i16 %1740 to float
  %1742 = fsub float %1741, %103
  %1743 = fpext float %1742 to double
  %1744 = fmul double %1743, 4.000000e+00
  %1745 = fpext float %1738 to double
  %1746 = call double @llvm.fmuladd.f64(double %1744, double %1743, double %1745)
  %1747 = fptrunc double %1746 to float
  %1748 = load i16, ptr %1725, align 2, !tbaa !62
  %1749 = uitofp i16 %1748 to float
  %1750 = fadd float %112, %1749
  %1751 = fmul float %1750, 5.000000e-01
  %1752 = fsub float %1749, %112
  %1753 = fpext float %1751 to double
  %1754 = fsub double 1.966070e+05, %1753
  %1755 = fmul double %1754, 0x3EF0001000100010
  %1756 = fpext float %1752 to double
  %1757 = fmul double %1755, %1756
  %1758 = fpext float %1747 to double
  %1759 = call double @llvm.fmuladd.f64(double %1757, double %1756, double %1758)
  %1760 = fptrunc double %1759 to float
  %1761 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 2, i32 3
  %1762 = load i16, ptr %1761, align 2, !tbaa !63
  %1763 = uitofp i16 %1762 to float
  %1764 = fadd float %127, %1763
  %1765 = fmul float %1764, 5.000000e-01
  %1766 = fsub float %1763, %127
  %1767 = fpext float %1765 to double
  %1768 = fsub double 1.966070e+05, %1767
  %1769 = fmul double %1768, 0x3EF0001000100010
  %1770 = fpext float %1766 to double
  %1771 = fmul double %1769, %1770
  %1772 = fpext float %1760 to double
  %1773 = call double @llvm.fmuladd.f64(double %1771, double %1770, double %1772)
  %1774 = fptrunc double %1773 to float
  %1775 = fcmp olt float %1774, 0x41A47AB860000000
  br i1 %1775, label %1776, label %1794

1776:                                             ; preds = %1719
  %1777 = uitofp i16 %1727 to double
  %1778 = fpext float %1723 to double
  %1779 = call double @llvm.fmuladd.f64(double %1777, double 1.000000e+01, double %1778)
  %1780 = fptrunc double %1779 to float
  %1781 = uitofp i16 %1740 to double
  %1782 = fpext float %1722 to double
  %1783 = call double @llvm.fmuladd.f64(double %1781, double 1.000000e+01, double %1782)
  %1784 = fptrunc double %1783 to float
  %1785 = uitofp i16 %1748 to double
  %1786 = fpext float %1721 to double
  %1787 = call double @llvm.fmuladd.f64(double %1785, double 1.000000e+01, double %1786)
  %1788 = fptrunc double %1787 to float
  %1789 = uitofp i16 %1762 to double
  %1790 = fpext float %1720 to double
  %1791 = call double @llvm.fmuladd.f64(double %1789, double 1.000000e+01, double %1790)
  %1792 = fptrunc double %1791 to float
  %1793 = fadd float %1724, 1.000000e+01
  br label %1794

1794:                                             ; preds = %1776, %1719
  %1795 = phi float [ %1792, %1776 ], [ %1720, %1719 ]
  %1796 = phi float [ %1788, %1776 ], [ %1721, %1719 ]
  %1797 = phi float [ %1784, %1776 ], [ %1722, %1719 ]
  %1798 = phi float [ %1780, %1776 ], [ %1723, %1719 ]
  %1799 = phi float [ %1793, %1776 ], [ %1724, %1719 ]
  %1800 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 3
  %1801 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 3, i32 2
  %1802 = load i16, ptr %1801, align 2, !tbaa !60
  %1803 = uitofp i16 %1802 to float
  %1804 = fadd float %89, %1803
  %1805 = fmul float %1804, 5.000000e-01
  %1806 = fsub float %1803, %89
  %1807 = fpext float %1805 to double
  %1808 = fadd double %1807, 1.310720e+05
  %1809 = fmul double %1808, 0x3EF0001000100010
  %1810 = fpext float %1806 to double
  %1811 = fmul double %1809, %1810
  %1812 = fmul double %1811, %1810
  %1813 = fptrunc double %1812 to float
  %1814 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 3, i32 1
  %1815 = load i16, ptr %1814, align 2, !tbaa !61
  %1816 = uitofp i16 %1815 to float
  %1817 = fsub float %1816, %103
  %1818 = fpext float %1817 to double
  %1819 = fmul double %1818, 4.000000e+00
  %1820 = fpext float %1813 to double
  %1821 = call double @llvm.fmuladd.f64(double %1819, double %1818, double %1820)
  %1822 = fptrunc double %1821 to float
  %1823 = load i16, ptr %1800, align 2, !tbaa !62
  %1824 = uitofp i16 %1823 to float
  %1825 = fadd float %112, %1824
  %1826 = fmul float %1825, 5.000000e-01
  %1827 = fsub float %1824, %112
  %1828 = fpext float %1826 to double
  %1829 = fsub double 1.966070e+05, %1828
  %1830 = fmul double %1829, 0x3EF0001000100010
  %1831 = fpext float %1827 to double
  %1832 = fmul double %1830, %1831
  %1833 = fpext float %1822 to double
  %1834 = call double @llvm.fmuladd.f64(double %1832, double %1831, double %1833)
  %1835 = fptrunc double %1834 to float
  %1836 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 3, i32 3
  %1837 = load i16, ptr %1836, align 2, !tbaa !63
  %1838 = uitofp i16 %1837 to float
  %1839 = fadd float %127, %1838
  %1840 = fmul float %1839, 5.000000e-01
  %1841 = fsub float %1838, %127
  %1842 = fpext float %1840 to double
  %1843 = fsub double 1.966070e+05, %1842
  %1844 = fmul double %1843, 0x3EF0001000100010
  %1845 = fpext float %1841 to double
  %1846 = fmul double %1844, %1845
  %1847 = fpext float %1835 to double
  %1848 = call double @llvm.fmuladd.f64(double %1846, double %1845, double %1847)
  %1849 = fptrunc double %1848 to float
  %1850 = fcmp olt float %1849, 0x41A47AB860000000
  br i1 %1850, label %1851, label %1869

1851:                                             ; preds = %1794
  %1852 = uitofp i16 %1802 to double
  %1853 = fpext float %1798 to double
  %1854 = call double @llvm.fmuladd.f64(double %1852, double 8.000000e+00, double %1853)
  %1855 = fptrunc double %1854 to float
  %1856 = uitofp i16 %1815 to double
  %1857 = fpext float %1797 to double
  %1858 = call double @llvm.fmuladd.f64(double %1856, double 8.000000e+00, double %1857)
  %1859 = fptrunc double %1858 to float
  %1860 = uitofp i16 %1823 to double
  %1861 = fpext float %1796 to double
  %1862 = call double @llvm.fmuladd.f64(double %1860, double 8.000000e+00, double %1861)
  %1863 = fptrunc double %1862 to float
  %1864 = uitofp i16 %1837 to double
  %1865 = fpext float %1795 to double
  %1866 = call double @llvm.fmuladd.f64(double %1864, double 8.000000e+00, double %1865)
  %1867 = fptrunc double %1866 to float
  %1868 = fadd float %1799, 8.000000e+00
  br label %1869

1869:                                             ; preds = %1851, %1794
  %1870 = phi float [ %1867, %1851 ], [ %1795, %1794 ]
  %1871 = phi float [ %1863, %1851 ], [ %1796, %1794 ]
  %1872 = phi float [ %1859, %1851 ], [ %1797, %1794 ]
  %1873 = phi float [ %1855, %1851 ], [ %1798, %1794 ]
  %1874 = phi float [ %1868, %1851 ], [ %1799, %1794 ]
  %1875 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 4
  %1876 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 4, i32 2
  %1877 = load i16, ptr %1876, align 2, !tbaa !60
  %1878 = uitofp i16 %1877 to float
  %1879 = fadd float %89, %1878
  %1880 = fmul float %1879, 5.000000e-01
  %1881 = fsub float %1878, %89
  %1882 = fpext float %1880 to double
  %1883 = fadd double %1882, 1.310720e+05
  %1884 = fmul double %1883, 0x3EF0001000100010
  %1885 = fpext float %1881 to double
  %1886 = fmul double %1884, %1885
  %1887 = fmul double %1886, %1885
  %1888 = fptrunc double %1887 to float
  %1889 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 4, i32 1
  %1890 = load i16, ptr %1889, align 2, !tbaa !61
  %1891 = uitofp i16 %1890 to float
  %1892 = fsub float %1891, %103
  %1893 = fpext float %1892 to double
  %1894 = fmul double %1893, 4.000000e+00
  %1895 = fpext float %1888 to double
  %1896 = call double @llvm.fmuladd.f64(double %1894, double %1893, double %1895)
  %1897 = fptrunc double %1896 to float
  %1898 = load i16, ptr %1875, align 2, !tbaa !62
  %1899 = uitofp i16 %1898 to float
  %1900 = fadd float %112, %1899
  %1901 = fmul float %1900, 5.000000e-01
  %1902 = fsub float %1899, %112
  %1903 = fpext float %1901 to double
  %1904 = fsub double 1.966070e+05, %1903
  %1905 = fmul double %1904, 0x3EF0001000100010
  %1906 = fpext float %1902 to double
  %1907 = fmul double %1905, %1906
  %1908 = fpext float %1897 to double
  %1909 = call double @llvm.fmuladd.f64(double %1907, double %1906, double %1908)
  %1910 = fptrunc double %1909 to float
  %1911 = getelementptr inbounds %struct._PixelPacket, ptr %1575, i64 4, i32 3
  %1912 = load i16, ptr %1911, align 2, !tbaa !63
  %1913 = uitofp i16 %1912 to float
  %1914 = fadd float %127, %1913
  %1915 = fmul float %1914, 5.000000e-01
  %1916 = fsub float %1913, %127
  %1917 = fpext float %1915 to double
  %1918 = fsub double 1.966070e+05, %1917
  %1919 = fmul double %1918, 0x3EF0001000100010
  %1920 = fpext float %1916 to double
  %1921 = fmul double %1919, %1920
  %1922 = fpext float %1910 to double
  %1923 = call double @llvm.fmuladd.f64(double %1921, double %1920, double %1922)
  %1924 = fptrunc double %1923 to float
  %1925 = fcmp olt float %1924, 0x41A47AB860000000
  br i1 %1925, label %1926, label %1944

1926:                                             ; preds = %1869
  %1927 = uitofp i16 %1877 to double
  %1928 = fpext float %1873 to double
  %1929 = call double @llvm.fmuladd.f64(double %1927, double 5.000000e+00, double %1928)
  %1930 = fptrunc double %1929 to float
  %1931 = uitofp i16 %1890 to double
  %1932 = fpext float %1872 to double
  %1933 = call double @llvm.fmuladd.f64(double %1931, double 5.000000e+00, double %1932)
  %1934 = fptrunc double %1933 to float
  %1935 = uitofp i16 %1898 to double
  %1936 = fpext float %1871 to double
  %1937 = call double @llvm.fmuladd.f64(double %1935, double 5.000000e+00, double %1936)
  %1938 = fptrunc double %1937 to float
  %1939 = uitofp i16 %1912 to double
  %1940 = fpext float %1870 to double
  %1941 = call double @llvm.fmuladd.f64(double %1939, double 5.000000e+00, double %1940)
  %1942 = fptrunc double %1941 to float
  %1943 = fadd float %1874, 5.000000e+00
  br label %1944

1944:                                             ; preds = %1926, %1869
  %1945 = phi float [ %1942, %1926 ], [ %1870, %1869 ]
  %1946 = phi float [ %1938, %1926 ], [ %1871, %1869 ]
  %1947 = phi float [ %1934, %1926 ], [ %1872, %1869 ]
  %1948 = phi float [ %1930, %1926 ], [ %1873, %1869 ]
  %1949 = phi float [ %1943, %1926 ], [ %1874, %1869 ]
  %1950 = fmul float %1949, 5.000000e-01
  %1951 = fadd float %1948, %1950
  %1952 = fadd float %1951, -1.000000e+00
  %1953 = fdiv float %1952, %1949
  %1954 = fptoui float %1953 to i16
  %1955 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  store i16 %1954, ptr %1955, align 2, !tbaa !60
  %1956 = fadd float %1947, %1950
  %1957 = fadd float %1956, -1.000000e+00
  %1958 = fdiv float %1957, %1949
  %1959 = fptoui float %1958 to i16
  %1960 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  store i16 %1959, ptr %1960, align 2, !tbaa !61
  %1961 = fadd float %1946, %1950
  %1962 = fadd float %1961, -1.000000e+00
  %1963 = fdiv float %1962, %1949
  %1964 = fptoui float %1963 to i16
  store i16 %1964, ptr %71, align 2, !tbaa !62
  %1965 = fadd float %1945, %1950
  %1966 = fadd float %1965, -1.000000e+00
  %1967 = fdiv float %1966, %1949
  %1968 = fptoui float %1967 to i16
  %1969 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  store i16 %1968, ptr %1969, align 2, !tbaa !63
  %1970 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %1971 = add nuw nsw i64 %70, 1
  %1972 = icmp eq i64 %1971, %59
  br i1 %1972, label %1973, label %69, !llvm.loop !128

1973:                                             ; preds = %1944, %58
  %1974 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %31, ptr noundef %1) #9
  %1975 = icmp ne i32 %1974, 0
  %1976 = zext i1 %1975 to i32
  %1977 = load ptr, ptr %40, align 8, !tbaa !71
  %1978 = icmp eq ptr %1977, null
  br i1 %1978, label %1988, label %1979

1979:                                             ; preds = %1973
  %1980 = add nsw i64 %45, 1
  %1981 = load i64, ptr %16, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #8
  %1982 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, ptr noundef nonnull %41) #8
  %1983 = load ptr, ptr %40, align 8, !tbaa !71
  %1984 = load ptr, ptr %42, align 8, !tbaa !72
  %1985 = call i32 %1983(ptr noundef nonnull %3, i64 noundef %45, i64 noundef %1981, ptr noundef %1984) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #8
  %1986 = icmp eq i32 %1985, 0
  %1987 = select i1 %1986, i32 0, i32 %1976
  br label %1988

1988:                                             ; preds = %1973, %1979, %48, %43
  %1989 = phi i64 [ %45, %43 ], [ %45, %48 ], [ %1980, %1979 ], [ %45, %1973 ]
  %1990 = phi i32 [ 0, %43 ], [ 0, %48 ], [ %1987, %1979 ], [ %1976, %1973 ]
  %1991 = add nuw nsw i64 %46, 1
  %1992 = load i64, ptr %16, align 8, !tbaa !67
  %1993 = icmp slt i64 %1991, %1992
  br i1 %1993, label %43, label %1994, !llvm.loop !129

1994:                                             ; preds = %1988
  %1995 = icmp eq i32 %1990, 0
  %1996 = call ptr @DestroyCacheView(ptr noundef %31) #8
  %1997 = call ptr @DestroyCacheView(ptr noundef %30) #8
  br i1 %1995, label %1998, label %2003

1998:                                             ; preds = %1994
  %1999 = call ptr @DestroyImage(ptr noundef nonnull %20) #8
  br label %2003

2000:                                             ; preds = %28
  %2001 = call ptr @DestroyCacheView(ptr noundef %31) #8
  %2002 = call ptr @DestroyCacheView(ptr noundef %30) #8
  br label %2003

2003:                                             ; preds = %2000, %1994, %1998, %19, %11, %15, %25
  %2004 = phi ptr [ null, %25 ], [ null, %15 ], [ null, %11 ], [ null, %19 ], [ %1999, %1998 ], [ %20, %1994 ], [ %20, %2000 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  ret ptr %2004
}

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @EqualizeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @EqualizeImageChannel(ptr noundef %0, i32 noundef 134217719)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EqualizeImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1805, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %13 = tail call i32 @AccelerateEqualizeImage(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %638

15:                                               ; preds = %11
  %16 = tail call dereferenceable_or_null(655360) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 10) #10
  %17 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #10
  %18 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #10
  %19 = icmp eq ptr %16, null
  %20 = icmp eq ptr %17, null
  %21 = or i1 %19, %20
  %22 = icmp eq ptr %18, null
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %15
  br i1 %22, label %27, label %25

25:                                               ; preds = %24
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %18) #8
  br label %27

27:                                               ; preds = %25, %24
  br i1 %20, label %30, label %28

28:                                               ; preds = %27
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #8
  br label %30

30:                                               ; preds = %28, %27
  br i1 %19, label %33, label %31

31:                                               ; preds = %30
  %32 = tail call ptr @RelinquishMagickMemory(ptr noundef %16) #8
  br label %33

33:                                               ; preds = %31, %30
  %34 = icmp eq ptr %0, null
  br i1 %34, label %638, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %37 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1832, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %36) #8
  br label %638

38:                                               ; preds = %15
  %39 = tail call ptr @ResetMagickMemory(ptr noundef %17, i32 noundef 0, i64 noundef 3670016) #8
  %40 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %12) #8
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !67
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %148

45:                                               ; preds = %38
  %46 = and i32 %1, 256
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %1, 1
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %1, 2
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %1, 4
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %1, 8
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %1, 32
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %63

59:                                               ; preds = %147
  %60 = add nuw nsw i64 %64, 1
  %61 = load i64, ptr %42, align 8, !tbaa !67
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %148, !llvm.loop !130

63:                                               ; preds = %45, %59
  %64 = phi i64 [ 0, %45 ], [ %60, %59 ]
  %65 = load i64, ptr %41, align 8, !tbaa !68
  %66 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %40, i64 noundef 0, i64 noundef %64, i64 noundef %65, i64 noundef 1, ptr noundef nonnull %12) #9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %148, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %40) #8
  %70 = load i64, ptr %41, align 8, !tbaa !68
  %71 = icmp sgt i64 %70, 0
  br i1 %47, label %73, label %72

72:                                               ; preds = %68
  br i1 %71, label %76, label %147

73:                                               ; preds = %68
  br i1 %71, label %74, label %147

74:                                               ; preds = %73
  %75 = icmp eq ptr %69, null
  br label %96

76:                                               ; preds = %72, %86
  %77 = phi i64 [ %93, %86 ], [ 0, %72 ]
  %78 = phi ptr [ %92, %86 ], [ %66, %72 ]
  %79 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %78) #9
  %80 = fcmp ugt float %79, 0.000000e+00
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = fcmp ult float %79, 6.553500e+04
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = fadd float %79, 5.000000e-01
  %85 = fptoui float %84 to i16
  br label %86

86:                                               ; preds = %76, %81, %83
  %87 = phi i16 [ %85, %83 ], [ 0, %76 ], [ -1, %81 ]
  %88 = zext i16 %87 to i64
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %88, i32 5
  %90 = load float, ptr %89, align 8, !tbaa !88
  %91 = fadd float %90, 1.000000e+00
  store float %91, ptr %89, align 8, !tbaa !88
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %93 = add nuw nsw i64 %77, 1
  %94 = load i64, ptr %41, align 8, !tbaa !68
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %76, label %147, !llvm.loop !131

96:                                               ; preds = %74, %143
  %97 = phi i64 [ 0, %74 ], [ %145, %143 ]
  %98 = phi ptr [ %66, %74 ], [ %144, %143 ]
  br i1 %49, label %106, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 2
  %101 = load i16, ptr %100, align 2, !tbaa !60
  %102 = zext i16 %101 to i64
  %103 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %102, i32 5
  %104 = load float, ptr %103, align 8, !tbaa !88
  %105 = fadd float %104, 1.000000e+00
  store float %105, ptr %103, align 8, !tbaa !88
  br label %106

106:                                              ; preds = %99, %96
  br i1 %51, label %114, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !61
  %110 = zext i16 %109 to i64
  %111 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %110, i32 6
  %112 = load float, ptr %111, align 4, !tbaa !89
  %113 = fadd float %112, 1.000000e+00
  store float %113, ptr %111, align 4, !tbaa !89
  br label %114

114:                                              ; preds = %107, %106
  br i1 %53, label %121, label %115

115:                                              ; preds = %114
  %116 = load i16, ptr %98, align 2, !tbaa !62
  %117 = zext i16 %116 to i64
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %117, i32 7
  %119 = load float, ptr %118, align 8, !tbaa !90
  %120 = fadd float %119, 1.000000e+00
  store float %120, ptr %118, align 8, !tbaa !90
  br label %121

121:                                              ; preds = %115, %114
  br i1 %55, label %129, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !63
  %125 = zext i16 %124 to i64
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %125, i32 8
  %127 = load float, ptr %126, align 4, !tbaa !92
  %128 = fadd float %127, 1.000000e+00
  store float %128, ptr %126, align 4, !tbaa !92
  br label %129

129:                                              ; preds = %122, %121
  br i1 %57, label %143, label %130

130:                                              ; preds = %129
  %131 = load i32, ptr %58, align 4, !tbaa !55
  %132 = icmp eq i32 %131, 12
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  br i1 %75, label %137, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds i16, ptr %69, i64 %97
  %136 = load i16, ptr %135, align 2, !tbaa !69
  br label %137

137:                                              ; preds = %133, %134
  %138 = phi i16 [ %136, %134 ], [ 0, %133 ]
  %139 = zext i16 %138 to i64
  %140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %139, i32 9
  %141 = load float, ptr %140, align 8, !tbaa !85
  %142 = fadd float %141, 1.000000e+00
  store float %142, ptr %140, align 8, !tbaa !85
  br label %143

143:                                              ; preds = %137, %130, %129
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 1
  %145 = add nuw nsw i64 %97, 1
  %146 = icmp eq i64 %145, %70
  br i1 %146, label %147, label %96, !llvm.loop !132

147:                                              ; preds = %86, %143, %72, %73
  br i1 %67, label %148, label %59

148:                                              ; preds = %59, %147, %63, %38
  %149 = tail call ptr @DestroyCacheView(ptr noundef %40) #8
  %150 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 56) #8
  %151 = and i32 %1, 256
  %152 = icmp eq i32 %151, 0
  %153 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %154 = and i32 %1, 1
  %155 = icmp eq i32 %154, 0
  %156 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %157 = and i32 %1, 2
  %158 = icmp eq i32 %157, 0
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %160 = and i32 %1, 4
  %161 = icmp eq i32 %160, 0
  %162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %163 = and i32 %1, 8
  %164 = icmp eq i32 %163, 0
  %165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %166 = and i32 %1, 32
  %167 = icmp eq i32 %166, 0
  %168 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %169 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  %170 = load float, ptr %153, align 8, !tbaa !88
  %171 = load float, ptr %159, align 4, !tbaa !89
  %172 = load float, ptr %162, align 8, !tbaa !90
  %173 = load float, ptr %165, align 4, !tbaa !92
  %174 = load float, ptr %169, align 8, !tbaa !85
  br label %175

175:                                              ; preds = %148, %218
  %176 = phi float [ %174, %148 ], [ %219, %218 ]
  %177 = phi float [ %173, %148 ], [ %220, %218 ]
  %178 = phi float [ %172, %148 ], [ %221, %218 ]
  %179 = phi float [ %171, %148 ], [ %222, %218 ]
  %180 = phi float [ %170, %148 ], [ %223, %218 ]
  %181 = phi i64 [ 0, %148 ], [ %225, %218 ]
  br i1 %152, label %186, label %182

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %181, i32 5
  %184 = load float, ptr %183, align 8, !tbaa !88
  %185 = fadd float %184, %180
  store float %185, ptr %153, align 8, !tbaa !88
  br label %218

186:                                              ; preds = %175
  br i1 %155, label %191, label %187

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %181, i32 5
  %189 = load float, ptr %188, align 8, !tbaa !88
  %190 = fadd float %189, %180
  store float %190, ptr %156, align 8, !tbaa !88
  br label %191

191:                                              ; preds = %187, %186
  %192 = phi float [ %190, %187 ], [ %180, %186 ]
  br i1 %158, label %197, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %181, i32 6
  %195 = load float, ptr %194, align 4, !tbaa !89
  %196 = fadd float %195, %179
  store float %196, ptr %159, align 4, !tbaa !89
  br label %197

197:                                              ; preds = %193, %191
  %198 = phi float [ %196, %193 ], [ %179, %191 ]
  br i1 %161, label %203, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %181, i32 7
  %201 = load float, ptr %200, align 8, !tbaa !90
  %202 = fadd float %201, %178
  store float %202, ptr %162, align 8, !tbaa !90
  br label %203

203:                                              ; preds = %199, %197
  %204 = phi float [ %202, %199 ], [ %178, %197 ]
  br i1 %164, label %209, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %181, i32 8
  %207 = load float, ptr %206, align 4, !tbaa !92
  %208 = fadd float %207, %177
  store float %208, ptr %165, align 4, !tbaa !92
  br label %209

209:                                              ; preds = %205, %203
  %210 = phi float [ %208, %205 ], [ %177, %203 ]
  br i1 %167, label %218, label %211

211:                                              ; preds = %209
  %212 = load i32, ptr %168, align 4, !tbaa !55
  %213 = icmp eq i32 %212, 12
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 %181, i32 9
  %216 = load float, ptr %215, align 8, !tbaa !85
  %217 = fadd float %216, %176
  store float %217, ptr %169, align 8, !tbaa !85
  br label %218

218:                                              ; preds = %209, %211, %214, %182
  %219 = phi float [ %176, %182 ], [ %217, %214 ], [ %176, %211 ], [ %176, %209 ]
  %220 = phi float [ %177, %182 ], [ %210, %214 ], [ %210, %211 ], [ %210, %209 ]
  %221 = phi float [ %178, %182 ], [ %204, %214 ], [ %204, %211 ], [ %204, %209 ]
  %222 = phi float [ %179, %182 ], [ %198, %214 ], [ %198, %211 ], [ %198, %209 ]
  %223 = phi float [ %185, %182 ], [ %192, %214 ], [ %192, %211 ], [ %192, %209 ]
  %224 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 %181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %224, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  %225 = add nuw nsw i64 %181, 1
  %226 = icmp eq i64 %225, 65536
  br i1 %226, label %227, label %175, !llvm.loop !133

227:                                              ; preds = %218
  %228 = getelementptr inbounds i8, ptr %18, i64 32
  %229 = load float, ptr %228, align 8, !tbaa.struct !123
  %230 = getelementptr inbounds i8, ptr %18, i64 36
  %231 = load float, ptr %230, align 4, !tbaa.struct !125
  %232 = getelementptr inbounds i8, ptr %18, i64 40
  %233 = load float, ptr %232, align 8, !tbaa.struct !126
  %234 = getelementptr inbounds i8, ptr %18, i64 44
  %235 = load float, ptr %234, align 4, !tbaa.struct !127
  %236 = getelementptr inbounds i8, ptr %18, i64 48
  %237 = load float, ptr %236, align 8, !tbaa.struct !134
  %238 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 65535, i32 5
  %239 = load float, ptr %238, align 8, !tbaa.struct !123
  %240 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 65535, i32 6
  %241 = load float, ptr %240, align 4, !tbaa.struct !125
  %242 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 65535, i32 7
  %243 = load float, ptr %242, align 8, !tbaa.struct !126
  %244 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 65535, i32 8
  %245 = load float, ptr %244, align 4, !tbaa.struct !127
  %246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 65535, i32 9
  %247 = load float, ptr %246, align 8, !tbaa.struct !134
  %248 = call ptr @ResetMagickMemory(ptr noundef %16, i32 noundef 0, i64 noundef 655360) #8
  %249 = and i32 %1, 256
  %250 = icmp eq i32 %249, 0
  %251 = fcmp une float %239, %229
  %252 = fsub float %239, %229
  %253 = and i32 %1, 1
  %254 = icmp ne i32 %253, 0
  %255 = fcmp une float %239, %229
  %256 = select i1 %254, i1 %255, i1 false
  %257 = fsub float %239, %229
  %258 = and i32 %1, 2
  %259 = icmp ne i32 %258, 0
  %260 = fcmp une float %241, %231
  %261 = select i1 %259, i1 %260, i1 false
  %262 = fsub float %241, %231
  %263 = and i32 %1, 4
  %264 = icmp ne i32 %263, 0
  %265 = fcmp une float %243, %233
  %266 = select i1 %264, i1 %265, i1 false
  %267 = fsub float %243, %233
  %268 = and i32 %1, 8
  %269 = icmp ne i32 %268, 0
  %270 = fcmp une float %245, %235
  %271 = select i1 %269, i1 %270, i1 false
  %272 = fsub float %245, %235
  %273 = and i32 %1, 32
  %274 = icmp eq i32 %273, 0
  %275 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %276 = fcmp une float %247, %237
  %277 = fsub float %247, %237
  br label %278

278:                                              ; preds = %227, %386
  %279 = phi i64 [ 0, %227 ], [ %387, %386 ]
  br i1 %250, label %297, label %280

280:                                              ; preds = %278
  br i1 %251, label %281, label %386

281:                                              ; preds = %280
  %282 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 %279, i32 5
  %283 = load float, ptr %282, align 8, !tbaa !88
  %284 = fsub float %283, %229
  %285 = fmul float %284, 6.553500e+04
  %286 = fdiv float %285, %252
  %287 = fpext float %286 to double
  %288 = fcmp ugt float %286, 0.000000e+00
  br i1 %288, label %289, label %294

289:                                              ; preds = %281
  %290 = fcmp ult float %286, 6.553500e+04
  br i1 %290, label %291, label %294

291:                                              ; preds = %289
  %292 = fadd double %287, 5.000000e-01
  %293 = fptoui double %292 to i16
  br label %294

294:                                              ; preds = %281, %289, %291
  %295 = phi i16 [ %293, %291 ], [ 0, %281 ], [ -1, %289 ]
  %296 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %279
  store i16 %295, ptr %296, align 2, !tbaa !113
  br label %386

297:                                              ; preds = %278
  br i1 %256, label %298, label %314

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 %279, i32 5
  %300 = load float, ptr %299, align 8, !tbaa !88
  %301 = fsub float %300, %229
  %302 = fmul float %301, 6.553500e+04
  %303 = fdiv float %302, %257
  %304 = fpext float %303 to double
  %305 = fcmp ugt float %303, 0.000000e+00
  br i1 %305, label %306, label %311

306:                                              ; preds = %298
  %307 = fcmp ult float %303, 6.553500e+04
  br i1 %307, label %308, label %311

308:                                              ; preds = %306
  %309 = fadd double %304, 5.000000e-01
  %310 = fptoui double %309 to i16
  br label %311

311:                                              ; preds = %298, %306, %308
  %312 = phi i16 [ %310, %308 ], [ 0, %298 ], [ -1, %306 ]
  %313 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %279
  store i16 %312, ptr %313, align 2, !tbaa !113
  br label %314

314:                                              ; preds = %311, %297
  br i1 %261, label %315, label %331

315:                                              ; preds = %314
  %316 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 %279, i32 6
  %317 = load float, ptr %316, align 4, !tbaa !89
  %318 = fsub float %317, %231
  %319 = fmul float %318, 6.553500e+04
  %320 = fdiv float %319, %262
  %321 = fpext float %320 to double
  %322 = fcmp ugt float %320, 0.000000e+00
  br i1 %322, label %323, label %328

323:                                              ; preds = %315
  %324 = fcmp ult float %320, 6.553500e+04
  br i1 %324, label %325, label %328

325:                                              ; preds = %323
  %326 = fadd double %321, 5.000000e-01
  %327 = fptoui double %326 to i16
  br label %328

328:                                              ; preds = %315, %323, %325
  %329 = phi i16 [ %327, %325 ], [ 0, %315 ], [ -1, %323 ]
  %330 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %279, i32 1
  store i16 %329, ptr %330, align 2, !tbaa !115
  br label %331

331:                                              ; preds = %328, %314
  br i1 %266, label %332, label %348

332:                                              ; preds = %331
  %333 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 %279, i32 7
  %334 = load float, ptr %333, align 8, !tbaa !90
  %335 = fsub float %334, %233
  %336 = fmul float %335, 6.553500e+04
  %337 = fdiv float %336, %267
  %338 = fpext float %337 to double
  %339 = fcmp ugt float %337, 0.000000e+00
  br i1 %339, label %340, label %345

340:                                              ; preds = %332
  %341 = fcmp ult float %337, 6.553500e+04
  br i1 %341, label %342, label %345

342:                                              ; preds = %340
  %343 = fadd double %338, 5.000000e-01
  %344 = fptoui double %343 to i16
  br label %345

345:                                              ; preds = %332, %340, %342
  %346 = phi i16 [ %344, %342 ], [ 0, %332 ], [ -1, %340 ]
  %347 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %279, i32 2
  store i16 %346, ptr %347, align 2, !tbaa !116
  br label %348

348:                                              ; preds = %345, %331
  br i1 %271, label %349, label %365

349:                                              ; preds = %348
  %350 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 %279, i32 8
  %351 = load float, ptr %350, align 4, !tbaa !92
  %352 = fsub float %351, %235
  %353 = fmul float %352, 6.553500e+04
  %354 = fdiv float %353, %272
  %355 = fpext float %354 to double
  %356 = fcmp ugt float %354, 0.000000e+00
  br i1 %356, label %357, label %362

357:                                              ; preds = %349
  %358 = fcmp ult float %354, 6.553500e+04
  br i1 %358, label %359, label %362

359:                                              ; preds = %357
  %360 = fadd double %355, 5.000000e-01
  %361 = fptoui double %360 to i16
  br label %362

362:                                              ; preds = %349, %357, %359
  %363 = phi i16 [ %361, %359 ], [ 0, %349 ], [ -1, %357 ]
  %364 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %279, i32 3
  store i16 %363, ptr %364, align 2, !tbaa !117
  br label %365

365:                                              ; preds = %362, %348
  br i1 %274, label %386, label %366

366:                                              ; preds = %365
  %367 = load i32, ptr %275, align 4, !tbaa !55
  %368 = icmp eq i32 %367, 12
  %369 = select i1 %368, i1 %276, i1 false
  br i1 %369, label %370, label %386

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 %279, i32 9
  %372 = load float, ptr %371, align 8, !tbaa !85
  %373 = fsub float %372, %237
  %374 = fmul float %373, 6.553500e+04
  %375 = fdiv float %374, %277
  %376 = fpext float %375 to double
  %377 = fcmp ugt float %375, 0.000000e+00
  br i1 %377, label %378, label %383

378:                                              ; preds = %370
  %379 = fcmp ult float %375, 6.553500e+04
  br i1 %379, label %380, label %383

380:                                              ; preds = %378
  %381 = fadd double %376, 5.000000e-01
  %382 = fptoui double %381 to i16
  br label %383

383:                                              ; preds = %370, %378, %380
  %384 = phi i16 [ %382, %380 ], [ 0, %370 ], [ -1, %378 ]
  %385 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %279, i32 4
  store i16 %384, ptr %385, align 2, !tbaa !118
  br label %386

386:                                              ; preds = %365, %366, %383, %280, %294
  %387 = add nuw nsw i64 %279, 1
  %388 = icmp eq i64 %387, 65536
  br i1 %388, label %389, label %278, !llvm.loop !135

389:                                              ; preds = %386
  %390 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %391 = call ptr @RelinquishMagickMemory(ptr noundef %17) #8
  %392 = call ptr @RelinquishMagickMemory(ptr noundef %18) #8
  %393 = load i32, ptr %0, align 8, !tbaa !57
  %394 = icmp eq i32 %393, 2
  br i1 %394, label %395, label %486

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %397 = load i64, ptr %396, align 8, !tbaa !58
  %398 = icmp sgt i64 %397, 0
  br i1 %398, label %399, label %486

399:                                              ; preds = %395
  %400 = and i32 %1, 256
  %401 = icmp eq i32 %400, 0
  %402 = fcmp une float %239, %229
  %403 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %404 = and i32 %1, 1
  %405 = icmp ne i32 %404, 0
  %406 = fcmp une float %239, %229
  %407 = select i1 %405, i1 %406, i1 false
  %408 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %409 = and i32 %1, 2
  %410 = icmp ne i32 %409, 0
  %411 = fcmp une float %241, %231
  %412 = select i1 %410, i1 %411, i1 false
  %413 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %414 = and i32 %1, 4
  %415 = icmp ne i32 %414, 0
  %416 = fcmp une float %243, %233
  %417 = select i1 %415, i1 %416, i1 false
  %418 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %419 = and i32 %1, 8
  %420 = icmp ne i32 %419, 0
  %421 = fcmp une float %245, %235
  %422 = select i1 %420, i1 %421, i1 false
  %423 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %424

424:                                              ; preds = %399, %483
  %425 = phi i64 [ 0, %399 ], [ %484, %483 ]
  br i1 %401, label %448, label %426

426:                                              ; preds = %424
  br i1 %402, label %427, label %483

427:                                              ; preds = %426
  %428 = load ptr, ptr %403, align 8, !tbaa !59
  %429 = getelementptr inbounds %struct._PixelPacket, ptr %428, i64 %425, i32 2
  %430 = load i16, ptr %429, align 2, !tbaa !60
  %431 = zext i16 %430 to i64
  %432 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %431
  %433 = load i16, ptr %432, align 2, !tbaa !113
  store i16 %433, ptr %429, align 2, !tbaa !60
  %434 = getelementptr inbounds %struct._PixelPacket, ptr %428, i64 %425, i32 1
  %435 = load i16, ptr %434, align 2, !tbaa !61
  %436 = zext i16 %435 to i64
  %437 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %436
  %438 = load i16, ptr %437, align 2, !tbaa !113
  store i16 %438, ptr %434, align 2, !tbaa !61
  %439 = getelementptr inbounds %struct._PixelPacket, ptr %428, i64 %425
  %440 = load i16, ptr %439, align 2, !tbaa !62
  %441 = zext i16 %440 to i64
  %442 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %441
  %443 = load i16, ptr %442, align 2, !tbaa !113
  store i16 %443, ptr %439, align 2, !tbaa !62
  %444 = getelementptr inbounds %struct._PixelPacket, ptr %428, i64 %425, i32 3
  %445 = load i16, ptr %444, align 2, !tbaa !63
  %446 = zext i16 %445 to i64
  %447 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %446
  br label %479

448:                                              ; preds = %424
  br i1 %407, label %449, label %456

449:                                              ; preds = %448
  %450 = load ptr, ptr %408, align 8, !tbaa !59
  %451 = getelementptr inbounds %struct._PixelPacket, ptr %450, i64 %425, i32 2
  %452 = load i16, ptr %451, align 2, !tbaa !60
  %453 = zext i16 %452 to i64
  %454 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %453
  %455 = load i16, ptr %454, align 2, !tbaa !113
  store i16 %455, ptr %451, align 2, !tbaa !60
  br label %456

456:                                              ; preds = %449, %448
  br i1 %412, label %457, label %464

457:                                              ; preds = %456
  %458 = load ptr, ptr %413, align 8, !tbaa !59
  %459 = getelementptr inbounds %struct._PixelPacket, ptr %458, i64 %425, i32 1
  %460 = load i16, ptr %459, align 2, !tbaa !61
  %461 = zext i16 %460 to i64
  %462 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %461, i32 1
  %463 = load i16, ptr %462, align 2, !tbaa !115
  store i16 %463, ptr %459, align 2, !tbaa !61
  br label %464

464:                                              ; preds = %457, %456
  br i1 %417, label %465, label %472

465:                                              ; preds = %464
  %466 = load ptr, ptr %418, align 8, !tbaa !59
  %467 = getelementptr inbounds %struct._PixelPacket, ptr %466, i64 %425
  %468 = load i16, ptr %467, align 2, !tbaa !62
  %469 = zext i16 %468 to i64
  %470 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %469, i32 2
  %471 = load i16, ptr %470, align 2, !tbaa !116
  store i16 %471, ptr %467, align 2, !tbaa !62
  br label %472

472:                                              ; preds = %465, %464
  br i1 %422, label %473, label %483

473:                                              ; preds = %472
  %474 = load ptr, ptr %423, align 8, !tbaa !59
  %475 = getelementptr inbounds %struct._PixelPacket, ptr %474, i64 %425, i32 3
  %476 = load i16, ptr %475, align 2, !tbaa !63
  %477 = zext i16 %476 to i64
  %478 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %477, i32 3
  br label %479

479:                                              ; preds = %427, %473
  %480 = phi ptr [ %478, %473 ], [ %447, %427 ]
  %481 = phi ptr [ %475, %473 ], [ %444, %427 ]
  %482 = load i16, ptr %480, align 2, !tbaa !69
  store i16 %482, ptr %481, align 2, !tbaa !63
  br label %483

483:                                              ; preds = %479, %472, %426
  %484 = add nuw nsw i64 %425, 1
  %485 = icmp eq i64 %484, %397
  br i1 %485, label %486, label %424, !llvm.loop !136

486:                                              ; preds = %483, %395, %389
  %487 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %12) #8
  %488 = load i64, ptr %390, align 8, !tbaa !67
  %489 = icmp sgt i64 %488, 0
  br i1 %489, label %490, label %634

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %492 = and i32 %1, 256
  %493 = icmp eq i32 %492, 0
  %494 = fcmp une float %239, %229
  %495 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %496 = and i32 %1, 1
  %497 = icmp ne i32 %496, 0
  %498 = fcmp une float %239, %229
  %499 = select i1 %497, i1 %498, i1 false
  %500 = and i32 %1, 2
  %501 = icmp ne i32 %500, 0
  %502 = fcmp une float %241, %231
  %503 = select i1 %501, i1 %502, i1 false
  %504 = and i32 %1, 4
  %505 = icmp ne i32 %504, 0
  %506 = fcmp une float %243, %233
  %507 = select i1 %505, i1 %506, i1 false
  %508 = and i32 %1, 8
  %509 = icmp ne i32 %508, 0
  %510 = fcmp une float %245, %235
  %511 = select i1 %509, i1 %510, i1 false
  %512 = and i32 %1, 32
  %513 = icmp eq i32 %512, 0
  %514 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %515 = fcmp oeq float %247, %237
  %516 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %517 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %518 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %519

519:                                              ; preds = %490, %628
  %520 = phi i32 [ 1, %490 ], [ %630, %628 ]
  %521 = phi i64 [ 0, %490 ], [ %629, %628 ]
  %522 = phi i64 [ 0, %490 ], [ %631, %628 ]
  %523 = icmp eq i32 %520, 0
  br i1 %523, label %628, label %524

524:                                              ; preds = %519
  %525 = load i64, ptr %491, align 8, !tbaa !68
  %526 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %487, i64 noundef 0, i64 noundef %522, i64 noundef %525, i64 noundef 1, ptr noundef nonnull %12) #9
  %527 = icmp eq ptr %526, null
  br i1 %527, label %628, label %528

528:                                              ; preds = %524
  %529 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %487) #8
  %530 = load i64, ptr %491, align 8, !tbaa !68
  %531 = icmp sgt i64 %530, 0
  br i1 %531, label %532, label %613

532:                                              ; preds = %528
  %533 = icmp eq ptr %529, null
  %534 = icmp eq ptr %529, null
  br label %535

535:                                              ; preds = %532, %609
  %536 = phi i64 [ 0, %532 ], [ %611, %609 ]
  %537 = phi ptr [ %526, %532 ], [ %610, %609 ]
  br i1 %493, label %567, label %538

538:                                              ; preds = %535
  br i1 %494, label %539, label %609

539:                                              ; preds = %538
  %540 = getelementptr inbounds %struct._PixelPacket, ptr %537, i64 0, i32 2
  %541 = load i16, ptr %540, align 2, !tbaa !60
  %542 = zext i16 %541 to i64
  %543 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %542
  %544 = load i16, ptr %543, align 2, !tbaa !113
  store i16 %544, ptr %540, align 2, !tbaa !60
  %545 = getelementptr inbounds %struct._PixelPacket, ptr %537, i64 0, i32 1
  %546 = load i16, ptr %545, align 2, !tbaa !61
  %547 = zext i16 %546 to i64
  %548 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %547
  %549 = load i16, ptr %548, align 2, !tbaa !113
  store i16 %549, ptr %545, align 2, !tbaa !61
  %550 = load i16, ptr %537, align 2, !tbaa !62
  %551 = zext i16 %550 to i64
  %552 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %551
  %553 = load i16, ptr %552, align 2, !tbaa !113
  store i16 %553, ptr %537, align 2, !tbaa !62
  %554 = getelementptr inbounds %struct._PixelPacket, ptr %537, i64 0, i32 3
  %555 = load i16, ptr %554, align 2, !tbaa !63
  %556 = zext i16 %555 to i64
  %557 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %556
  %558 = load i16, ptr %557, align 2, !tbaa !113
  store i16 %558, ptr %554, align 2, !tbaa !63
  %559 = load i32, ptr %495, align 4, !tbaa !55
  %560 = icmp ne i32 %559, 12
  %561 = select i1 %560, i1 true, i1 %533
  br i1 %561, label %609, label %562

562:                                              ; preds = %539
  %563 = getelementptr inbounds i16, ptr %529, i64 %536
  %564 = load i16, ptr %563, align 2, !tbaa !69
  %565 = zext i16 %564 to i64
  %566 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %565
  br label %605

567:                                              ; preds = %535
  br i1 %499, label %568, label %574

568:                                              ; preds = %567
  %569 = getelementptr inbounds %struct._PixelPacket, ptr %537, i64 0, i32 2
  %570 = load i16, ptr %569, align 2, !tbaa !60
  %571 = zext i16 %570 to i64
  %572 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %571
  %573 = load i16, ptr %572, align 2, !tbaa !113
  store i16 %573, ptr %569, align 2, !tbaa !60
  br label %574

574:                                              ; preds = %568, %567
  br i1 %503, label %575, label %581

575:                                              ; preds = %574
  %576 = getelementptr inbounds %struct._PixelPacket, ptr %537, i64 0, i32 1
  %577 = load i16, ptr %576, align 2, !tbaa !61
  %578 = zext i16 %577 to i64
  %579 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %578, i32 1
  %580 = load i16, ptr %579, align 2, !tbaa !115
  store i16 %580, ptr %576, align 2, !tbaa !61
  br label %581

581:                                              ; preds = %575, %574
  br i1 %507, label %582, label %587

582:                                              ; preds = %581
  %583 = load i16, ptr %537, align 2, !tbaa !62
  %584 = zext i16 %583 to i64
  %585 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %584, i32 2
  %586 = load i16, ptr %585, align 2, !tbaa !116
  store i16 %586, ptr %537, align 2, !tbaa !62
  br label %587

587:                                              ; preds = %582, %581
  br i1 %511, label %588, label %594

588:                                              ; preds = %587
  %589 = getelementptr inbounds %struct._PixelPacket, ptr %537, i64 0, i32 3
  %590 = load i16, ptr %589, align 2, !tbaa !63
  %591 = zext i16 %590 to i64
  %592 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %591, i32 3
  %593 = load i16, ptr %592, align 2, !tbaa !117
  store i16 %593, ptr %589, align 2, !tbaa !63
  br label %594

594:                                              ; preds = %588, %587
  br i1 %513, label %609, label %595

595:                                              ; preds = %594
  %596 = load i32, ptr %514, align 4, !tbaa !55
  %597 = icmp ne i32 %596, 12
  %598 = select i1 %597, i1 true, i1 %515
  %599 = select i1 %598, i1 true, i1 %534
  br i1 %599, label %609, label %600

600:                                              ; preds = %595
  %601 = getelementptr inbounds i16, ptr %529, i64 %536
  %602 = load i16, ptr %601, align 2, !tbaa !69
  %603 = zext i16 %602 to i64
  %604 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %16, i64 %603, i32 4
  br label %605

605:                                              ; preds = %562, %600
  %606 = phi ptr [ %604, %600 ], [ %566, %562 ]
  %607 = phi ptr [ %601, %600 ], [ %563, %562 ]
  %608 = load i16, ptr %606, align 2, !tbaa !69
  store i16 %608, ptr %607, align 2, !tbaa !69
  br label %609

609:                                              ; preds = %605, %594, %595, %538, %539
  %610 = getelementptr inbounds %struct._PixelPacket, ptr %537, i64 1
  %611 = add nuw nsw i64 %536, 1
  %612 = icmp eq i64 %611, %530
  br i1 %612, label %613, label %535, !llvm.loop !137

613:                                              ; preds = %609, %528
  %614 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %487, ptr noundef nonnull %12) #9
  %615 = icmp ne i32 %614, 0
  %616 = zext i1 %615 to i32
  %617 = load ptr, ptr %516, align 8, !tbaa !71
  %618 = icmp eq ptr %617, null
  br i1 %618, label %628, label %619

619:                                              ; preds = %613
  %620 = add nsw i64 %521, 1
  %621 = load i64, ptr %390, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #8
  %622 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.28, ptr noundef nonnull %517) #8
  %623 = load ptr, ptr %516, align 8, !tbaa !71
  %624 = load ptr, ptr %518, align 8, !tbaa !72
  %625 = call i32 %623(ptr noundef nonnull %3, i64 noundef %521, i64 noundef %621, ptr noundef %624) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #8
  %626 = icmp eq i32 %625, 0
  %627 = select i1 %626, i32 0, i32 %616
  br label %628

628:                                              ; preds = %613, %619, %524, %519
  %629 = phi i64 [ %521, %519 ], [ %521, %524 ], [ %620, %619 ], [ %521, %613 ]
  %630 = phi i32 [ 0, %519 ], [ 0, %524 ], [ %627, %619 ], [ %616, %613 ]
  %631 = add nuw nsw i64 %522, 1
  %632 = load i64, ptr %390, align 8, !tbaa !67
  %633 = icmp slt i64 %631, %632
  br i1 %633, label %519, label %634, !llvm.loop !138

634:                                              ; preds = %628, %486
  %635 = phi i32 [ 1, %486 ], [ %630, %628 ]
  %636 = call ptr @DestroyCacheView(ptr noundef %487) #8
  %637 = call ptr @RelinquishMagickMemory(ptr noundef %16) #8
  br label %638

638:                                              ; preds = %33, %35, %11, %634
  %639 = phi i32 [ %635, %634 ], [ %13, %11 ], [ 0, %35 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  ret i32 %639
}

declare i32 @AccelerateEqualizeImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GammaImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2122, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %10
  %13 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #8
  %14 = load double, ptr %3, align 8, !tbaa !98
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !139
  %18 = fptrunc double %17 to float
  %19 = and i32 %13, 8
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, float %15, float %18
  %22 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !140
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
  %39 = call i32 @GammaImageChannel(ptr noundef %0, i32 noundef 7, double noundef %28), !range !38
  br label %48

40:                                               ; preds = %34
  %41 = call i32 @GammaImageChannel(ptr noundef %0, i32 noundef 1, double noundef %28), !range !38
  %42 = fpext float %21 to double
  %43 = call i32 @GammaImageChannel(ptr noundef %0, i32 noundef 2, double noundef %42), !range !38
  %44 = and i32 %43, %41
  %45 = fpext float %27 to double
  %46 = call i32 @GammaImageChannel(ptr noundef %0, i32 noundef 4, double noundef %45), !range !38
  %47 = and i32 %44, %46
  br label %48

48:                                               ; preds = %40, %38
  %49 = phi i32 [ %39, %38 ], [ %47, %40 ]
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %12, %10, %48
  %53 = phi i32 [ %51, %48 ], [ 0, %10 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GammaImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2179, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %3
  %12 = fcmp oeq double %2, 1.000000e+00
  br i1 %12, label %268, label %13

13:                                               ; preds = %11
  %14 = tail call dereferenceable_or_null(131072) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 2) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = icmp eq ptr %0, null
  br i1 %17, label %268, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2185, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %20) #8
  br label %268

22:                                               ; preds = %13
  %23 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 131072) #8
  %24 = fcmp une double %2, 0.000000e+00
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = fdiv double 1.000000e+00, %2
  br label %27

27:                                               ; preds = %25, %48
  %28 = phi i64 [ 0, %25 ], [ %51, %48 ]
  %29 = sitofp i64 %28 to double
  %30 = fdiv double %29, 6.553500e+04
  %31 = tail call double @pow(double noundef %30, double noundef %26) #8
  %32 = fmul double %31, 6.553500e+04
  %33 = fptrunc double %32 to float
  %34 = fpext float %33 to double
  %35 = fcmp ugt float %33, 0.000000e+00
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = fcmp ult float %33, 6.553500e+04
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = fadd double %34, 5.000000e-01
  %40 = fptoui double %39 to i16
  br label %41

41:                                               ; preds = %27, %36, %38
  %42 = phi i16 [ %40, %38 ], [ 0, %27 ], [ -1, %36 ]
  switch i16 %42, label %43 [
    i16 0, label %48
    i16 -1, label %47
  ]

43:                                               ; preds = %41
  %44 = uitofp i16 %42 to float
  %45 = fadd float %44, 5.000000e-01
  %46 = fptoui float %45 to i16
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %41, %47, %43
  %49 = phi i16 [ %46, %43 ], [ %42, %41 ], [ -1, %47 ]
  %50 = getelementptr inbounds i16, ptr %14, i64 %28
  store i16 %49, ptr %50, align 2, !tbaa !69
  %51 = add nuw nsw i64 %28, 1
  %52 = icmp eq i64 %51, 65536
  br i1 %52, label %53, label %27, !llvm.loop !141

53:                                               ; preds = %48, %22
  %54 = load i32, ptr %0, align 8, !tbaa !57
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %123

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %58 = load i64, ptr %57, align 8, !tbaa !58
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %123

60:                                               ; preds = %56
  %61 = and i32 %1, 1
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %64 = and i32 %1, 2
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %67 = and i32 %1, 4
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %70 = and i32 %1, 8
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %75

75:                                               ; preds = %60, %120
  %76 = phi i64 [ 0, %60 ], [ %121, %120 ]
  br i1 %62, label %84, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %63, align 8, !tbaa !59
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 %76, i32 2
  %80 = load i16, ptr %79, align 2, !tbaa !60
  %81 = zext i16 %80 to i64
  %82 = getelementptr inbounds i16, ptr %14, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !69
  store i16 %83, ptr %79, align 2, !tbaa !60
  br label %84

84:                                               ; preds = %77, %75
  br i1 %65, label %92, label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr %66, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 %76, i32 1
  %88 = load i16, ptr %87, align 2, !tbaa !61
  %89 = zext i16 %88 to i64
  %90 = getelementptr inbounds i16, ptr %14, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !69
  store i16 %91, ptr %87, align 2, !tbaa !61
  br label %92

92:                                               ; preds = %85, %84
  br i1 %68, label %100, label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %69, align 8, !tbaa !59
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 %76
  %96 = load i16, ptr %95, align 2, !tbaa !62
  %97 = zext i16 %96 to i64
  %98 = getelementptr inbounds i16, ptr %14, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !69
  store i16 %99, ptr %95, align 2, !tbaa !62
  br label %100

100:                                              ; preds = %93, %92
  br i1 %71, label %120, label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %72, align 8, !tbaa !39
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load ptr, ptr %74, align 8, !tbaa !59
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 %76, i32 3
  %107 = load i16, ptr %106, align 2, !tbaa !63
  %108 = zext i16 %107 to i64
  %109 = getelementptr inbounds i16, ptr %14, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !69
  store i16 %110, ptr %106, align 2, !tbaa !63
  br label %120

111:                                              ; preds = %101
  %112 = load ptr, ptr %73, align 8, !tbaa !59
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %76, i32 3
  %114 = load i16, ptr %113, align 2, !tbaa !63
  %115 = xor i16 %114, -1
  %116 = zext i16 %115 to i64
  %117 = getelementptr inbounds i16, ptr %14, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !69
  %119 = xor i16 %118, -1
  store i16 %119, ptr %113, align 2, !tbaa !63
  br label %120

120:                                              ; preds = %100, %111, %104
  %121 = add nuw nsw i64 %76, 1
  %122 = icmp eq i64 %121, %58
  br i1 %122, label %123, label %75, !llvm.loop !142

123:                                              ; preds = %120, %56, %53
  %124 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %125 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %124) #8
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %127 = load i64, ptr %126, align 8, !tbaa !67
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %259

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %131 = and i32 %1, 256
  %132 = icmp eq i32 %131, 0
  %133 = and i32 %1, 1
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %1, 2
  %136 = icmp eq i32 %135, 0
  %137 = and i32 %1, 4
  %138 = icmp eq i32 %137, 0
  %139 = and i32 %1, 8
  %140 = icmp eq i32 %139, 0
  %141 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %142 = and i32 %1, 32
  %143 = icmp eq i32 %142, 0
  %144 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %145 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %146 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %147 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %148

148:                                              ; preds = %129, %253
  %149 = phi i64 [ 0, %129 ], [ %256, %253 ]
  %150 = phi i64 [ 0, %129 ], [ %255, %253 ]
  %151 = phi i32 [ 1, %129 ], [ %254, %253 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %253, label %153

153:                                              ; preds = %148
  %154 = load i64, ptr %130, align 8, !tbaa !68
  %155 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %125, i64 noundef 0, i64 noundef %149, i64 noundef %154, i64 noundef 1, ptr noundef nonnull %124) #9
  %156 = icmp eq ptr %155, null
  br i1 %156, label %253, label %157

157:                                              ; preds = %153
  %158 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %125) #8
  %159 = load i64, ptr %130, align 8, !tbaa !68
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %219

161:                                              ; preds = %157, %215
  %162 = phi i64 [ %217, %215 ], [ 0, %157 ]
  %163 = phi ptr [ %216, %215 ], [ %155, %157 ]
  br i1 %132, label %179, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 2
  %166 = load i16, ptr %165, align 2, !tbaa !60
  %167 = zext i16 %166 to i64
  %168 = getelementptr inbounds i16, ptr %14, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !69
  store i16 %169, ptr %165, align 2, !tbaa !60
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 1
  %171 = load i16, ptr %170, align 2, !tbaa !61
  %172 = zext i16 %171 to i64
  %173 = getelementptr inbounds i16, ptr %14, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !69
  store i16 %174, ptr %170, align 2, !tbaa !61
  %175 = load i16, ptr %163, align 2, !tbaa !62
  %176 = zext i16 %175 to i64
  %177 = getelementptr inbounds i16, ptr %14, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !69
  store i16 %178, ptr %163, align 2, !tbaa !62
  br label %215

179:                                              ; preds = %161
  br i1 %134, label %186, label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 2
  %182 = load i16, ptr %181, align 2, !tbaa !60
  %183 = zext i16 %182 to i64
  %184 = getelementptr inbounds i16, ptr %14, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !69
  store i16 %185, ptr %181, align 2, !tbaa !60
  br label %186

186:                                              ; preds = %180, %179
  br i1 %136, label %193, label %187

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 1
  %189 = load i16, ptr %188, align 2, !tbaa !61
  %190 = zext i16 %189 to i64
  %191 = getelementptr inbounds i16, ptr %14, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !69
  store i16 %192, ptr %188, align 2, !tbaa !61
  br label %193

193:                                              ; preds = %187, %186
  br i1 %138, label %199, label %194

194:                                              ; preds = %193
  %195 = load i16, ptr %163, align 2, !tbaa !62
  %196 = zext i16 %195 to i64
  %197 = getelementptr inbounds i16, ptr %14, i64 %196
  %198 = load i16, ptr %197, align 2, !tbaa !69
  store i16 %198, ptr %163, align 2, !tbaa !62
  br label %199

199:                                              ; preds = %194, %193
  br i1 %140, label %215, label %200

200:                                              ; preds = %199
  %201 = load i32, ptr %141, align 8, !tbaa !39
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 3
  %204 = load i16, ptr %203, align 2, !tbaa !63
  br i1 %202, label %205, label %209

205:                                              ; preds = %200
  %206 = zext i16 %204 to i64
  %207 = getelementptr inbounds i16, ptr %14, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !69
  store i16 %208, ptr %203, align 2, !tbaa !63
  br label %215

209:                                              ; preds = %200
  %210 = xor i16 %204, -1
  %211 = zext i16 %210 to i64
  %212 = getelementptr inbounds i16, ptr %14, i64 %211
  %213 = load i16, ptr %212, align 2, !tbaa !69
  %214 = xor i16 %213, -1
  store i16 %214, ptr %203, align 2, !tbaa !63
  br label %215

215:                                              ; preds = %199, %209, %205, %164
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 1
  %217 = add nuw nsw i64 %162, 1
  %218 = icmp eq i64 %217, %159
  br i1 %218, label %219, label %161, !llvm.loop !143

219:                                              ; preds = %215, %157
  br i1 %143, label %238, label %220

220:                                              ; preds = %219
  %221 = load i32, ptr %144, align 4, !tbaa !55
  %222 = icmp eq i32 %221, 12
  %223 = icmp sgt i64 %159, 0
  %224 = and i1 %222, %223
  br i1 %224, label %225, label %238

225:                                              ; preds = %220
  %226 = icmp eq ptr %158, null
  br label %227

227:                                              ; preds = %225, %235
  %228 = phi i64 [ 0, %225 ], [ %236, %235 ]
  br i1 %226, label %235, label %229

229:                                              ; preds = %227
  %230 = getelementptr inbounds i16, ptr %158, i64 %228
  %231 = load i16, ptr %230, align 2, !tbaa !69
  %232 = zext i16 %231 to i64
  %233 = getelementptr inbounds i16, ptr %14, i64 %232
  %234 = load i16, ptr %233, align 2, !tbaa !69
  store i16 %234, ptr %230, align 2, !tbaa !69
  br label %235

235:                                              ; preds = %227, %229
  %236 = add nuw nsw i64 %228, 1
  %237 = icmp eq i64 %236, %159
  br i1 %237, label %238, label %227, !llvm.loop !144

238:                                              ; preds = %235, %220, %219
  %239 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %125, ptr noundef nonnull %124) #9
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = load ptr, ptr %145, align 8, !tbaa !71
  %243 = icmp eq ptr %242, null
  br i1 %243, label %253, label %244

244:                                              ; preds = %238
  %245 = add nsw i64 %150, 1
  %246 = load i64, ptr %126, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %247 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, ptr noundef nonnull %146) #8
  %248 = load ptr, ptr %145, align 8, !tbaa !71
  %249 = load ptr, ptr %147, align 8, !tbaa !72
  %250 = call i32 %248(ptr noundef nonnull %4, i64 noundef %150, i64 noundef %246, ptr noundef %249) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  %251 = icmp eq i32 %250, 0
  %252 = select i1 %251, i32 0, i32 %241
  br label %253

253:                                              ; preds = %238, %244, %153, %148
  %254 = phi i32 [ 0, %148 ], [ 0, %153 ], [ %252, %244 ], [ %241, %238 ]
  %255 = phi i64 [ %150, %148 ], [ %150, %153 ], [ %245, %244 ], [ %150, %238 ]
  %256 = add nuw nsw i64 %149, 1
  %257 = load i64, ptr %126, align 8, !tbaa !67
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %148, label %259, !llvm.loop !145

259:                                              ; preds = %253, %123
  %260 = phi i32 [ 1, %123 ], [ %254, %253 ]
  %261 = call ptr @DestroyCacheView(ptr noundef %125) #8
  %262 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #8
  %263 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 15
  %264 = load double, ptr %263, align 8, !tbaa !146
  %265 = fcmp une double %264, 0.000000e+00
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = fmul double %264, %2
  store double %267, ptr %263, align 8, !tbaa !146
  br label %268

268:                                              ; preds = %259, %266, %16, %18, %11
  %269 = phi i32 [ 1, %11 ], [ 0, %18 ], [ 0, %16 ], [ %260, %266 ], [ %260, %259 ]
  ret i32 %269
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GrayscaleImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2426, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, ptr %0, align 8, !tbaa !57
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = tail call i32 @SyncImage(ptr noundef nonnull %0) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %213, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %213, label %19

19:                                               ; preds = %16, %10
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %21 = tail call i32 @AccelerateGrayscaleImage(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %20) #8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %213, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %20) #8
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !67
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %208

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %37

37:                                               ; preds = %28, %202
  %38 = phi i64 [ 0, %28 ], [ %205, %202 ]
  %39 = phi i64 [ 0, %28 ], [ %204, %202 ]
  %40 = phi i32 [ 1, %28 ], [ %203, %202 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %202, label %42

42:                                               ; preds = %37
  %43 = load i64, ptr %29, align 8, !tbaa !68
  %44 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %24, i64 noundef 0, i64 noundef %38, i64 noundef %43, i64 noundef 1, ptr noundef nonnull %20) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %202, label %46

46:                                               ; preds = %42
  %47 = load i64, ptr %29, align 8, !tbaa !68
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %187

49:                                               ; preds = %46, %181
  %50 = phi i64 [ %184, %181 ], [ 0, %46 ]
  %51 = phi ptr [ %183, %181 ], [ %44, %46 ]
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !60
  %54 = uitofp i16 %53 to float
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 1
  %56 = load i16, ptr %55, align 2, !tbaa !61
  %57 = uitofp i16 %56 to float
  %58 = load i16, ptr %51, align 2, !tbaa !62
  %59 = uitofp i16 %58 to float
  switch i32 %1, label %126 [
    i32 1, label %60
    i32 2, label %64
    i32 3, label %69
    i32 9, label %80
    i32 4, label %90
    i32 5, label %108
    i32 8, label %162
    i32 7, label %144
  ]

60:                                               ; preds = %49
  %61 = fadd float %54, %57
  %62 = fadd float %61, %59
  %63 = fdiv float %62, 3.000000e+00
  br label %173

64:                                               ; preds = %49
  %65 = fcmp ogt float %54, %57
  %66 = select i1 %65, float %54, float %57
  %67 = fcmp ogt float %66, %59
  %68 = select i1 %67, float %66, float %59
  br label %173

69:                                               ; preds = %49
  %70 = fcmp olt float %54, %57
  %71 = select i1 %70, float %54, float %57
  %72 = fcmp olt float %71, %59
  %73 = select i1 %72, float %71, float %59
  %74 = fcmp ogt float %54, %57
  %75 = select i1 %74, float %54, float %57
  %76 = fcmp ogt float %75, %59
  %77 = select i1 %76, float %75, float %59
  %78 = fadd float %73, %77
  %79 = fmul float %78, 5.000000e-01
  br label %173

80:                                               ; preds = %49
  %81 = uitofp i16 %53 to double
  %82 = fmul float %57, %57
  %83 = fpext float %82 to double
  %84 = call double @llvm.fmuladd.f64(double %81, double %81, double %83)
  %85 = fmul float %59, %59
  %86 = fpext float %85 to double
  %87 = fadd double %84, %86
  %88 = fdiv double %87, 1.966050e+05
  %89 = fptrunc double %88 to float
  br label %173

90:                                               ; preds = %49
  %91 = load i32, ptr %32, align 4, !tbaa !55
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = call float @EncodePixelGamma(float noundef %54) #9
  %95 = call float @EncodePixelGamma(float noundef %57) #9
  %96 = call float @EncodePixelGamma(float noundef %59) #9
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi float [ %96, %93 ], [ %59, %90 ]
  %99 = phi float [ %95, %93 ], [ %57, %90 ]
  %100 = phi float [ %94, %93 ], [ %54, %90 ]
  %101 = fpext float %100 to double
  %102 = fpext float %99 to double
  %103 = fmul double %102, 5.868110e-01
  %104 = call double @llvm.fmuladd.f64(double %101, double 2.988390e-01, double %103)
  %105 = fpext float %98 to double
  %106 = call double @llvm.fmuladd.f64(double %105, double 1.143500e-01, double %104)
  %107 = fptrunc double %106 to float
  br label %173

108:                                              ; preds = %49
  %109 = load i32, ptr %31, align 4, !tbaa !55
  %110 = icmp eq i32 %109, 13
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = call float @DecodePixelGamma(float noundef %54) #9
  %113 = call float @DecodePixelGamma(float noundef %57) #9
  %114 = call float @DecodePixelGamma(float noundef %59) #9
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi float [ %114, %111 ], [ %59, %108 ]
  %117 = phi float [ %113, %111 ], [ %57, %108 ]
  %118 = phi float [ %112, %111 ], [ %54, %108 ]
  %119 = fpext float %118 to double
  %120 = fpext float %117 to double
  %121 = fmul double %120, 5.868110e-01
  %122 = call double @llvm.fmuladd.f64(double %119, double 2.988390e-01, double %121)
  %123 = fpext float %116 to double
  %124 = call double @llvm.fmuladd.f64(double %123, double 1.143500e-01, double %122)
  %125 = fptrunc double %124 to float
  br label %173

126:                                              ; preds = %49
  %127 = load i32, ptr %33, align 4, !tbaa !55
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = call float @EncodePixelGamma(float noundef %54) #9
  %131 = call float @EncodePixelGamma(float noundef %57) #9
  %132 = call float @EncodePixelGamma(float noundef %59) #9
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi float [ %132, %129 ], [ %59, %126 ]
  %135 = phi float [ %131, %129 ], [ %57, %126 ]
  %136 = phi float [ %130, %129 ], [ %54, %126 ]
  %137 = fpext float %136 to double
  %138 = fpext float %135 to double
  %139 = fmul double %138, 0x3FE6E29307AF20EA
  %140 = call double @llvm.fmuladd.f64(double %137, double 2.126560e-01, double %139)
  %141 = fpext float %134 to double
  %142 = call double @llvm.fmuladd.f64(double %141, double 7.218600e-02, double %140)
  %143 = fptrunc double %142 to float
  br label %173

144:                                              ; preds = %49
  %145 = load i32, ptr %30, align 4, !tbaa !55
  %146 = icmp eq i32 %145, 13
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = call float @DecodePixelGamma(float noundef %54) #9
  %149 = call float @DecodePixelGamma(float noundef %57) #9
  %150 = call float @DecodePixelGamma(float noundef %59) #9
  br label %151

151:                                              ; preds = %147, %144
  %152 = phi float [ %150, %147 ], [ %59, %144 ]
  %153 = phi float [ %149, %147 ], [ %57, %144 ]
  %154 = phi float [ %148, %147 ], [ %54, %144 ]
  %155 = fpext float %154 to double
  %156 = fpext float %153 to double
  %157 = fmul double %156, 0x3FE6E29307AF20EA
  %158 = call double @llvm.fmuladd.f64(double %155, double 2.126560e-01, double %157)
  %159 = fpext float %152 to double
  %160 = call double @llvm.fmuladd.f64(double %159, double 7.218600e-02, double %158)
  %161 = fptrunc double %160 to float
  br label %173

162:                                              ; preds = %49
  %163 = uitofp i16 %53 to double
  %164 = fmul float %57, %57
  %165 = fpext float %164 to double
  %166 = call double @llvm.fmuladd.f64(double %163, double %163, double %165)
  %167 = fmul float %59, %59
  %168 = fpext float %167 to double
  %169 = fadd double %166, %168
  %170 = call double @sqrt(double noundef %169) #8
  %171 = fdiv double %170, 0x3FFBB67AE8584CAA
  %172 = fptrunc double %171 to float
  br label %173

173:                                              ; preds = %162, %151, %133, %115, %97, %80, %69, %64, %60
  %174 = phi float [ %143, %133 ], [ %161, %151 ], [ %172, %162 ], [ %125, %115 ], [ %107, %97 ], [ %89, %80 ], [ %79, %69 ], [ %68, %64 ], [ %63, %60 ]
  %175 = fcmp ugt float %174, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = fcmp ult float %174, 6.553500e+04
  br i1 %177, label %178, label %181

178:                                              ; preds = %176
  %179 = fadd float %174, 5.000000e-01
  %180 = fptoui float %179 to i16
  br label %181

181:                                              ; preds = %173, %176, %178
  %182 = phi i16 [ %180, %178 ], [ 0, %173 ], [ -1, %176 ]
  store i16 %182, ptr %51, align 2, !tbaa !62
  store i16 %182, ptr %55, align 2, !tbaa !61
  store i16 %182, ptr %52, align 2, !tbaa !60
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 1
  %184 = add nuw nsw i64 %50, 1
  %185 = load i64, ptr %29, align 8, !tbaa !68
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %49, label %187, !llvm.loop !147

187:                                              ; preds = %181, %46
  %188 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %24, ptr noundef nonnull %20) #9
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = load ptr, ptr %34, align 8, !tbaa !71
  %192 = icmp eq ptr %191, null
  br i1 %192, label %202, label %193

193:                                              ; preds = %187
  %194 = add nsw i64 %39, 1
  %195 = load i64, ptr %25, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #8
  %196 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.30, ptr noundef nonnull %35) #8
  %197 = load ptr, ptr %34, align 8, !tbaa !71
  %198 = load ptr, ptr %36, align 8, !tbaa !72
  %199 = call i32 %197(ptr noundef nonnull %3, i64 noundef %39, i64 noundef %195, ptr noundef %198) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #8
  %200 = icmp eq i32 %199, 0
  %201 = select i1 %200, i32 0, i32 %190
  br label %202

202:                                              ; preds = %187, %193, %42, %37
  %203 = phi i32 [ 0, %37 ], [ 0, %42 ], [ %201, %193 ], [ %190, %187 ]
  %204 = phi i64 [ %39, %37 ], [ %39, %42 ], [ %194, %193 ], [ %39, %187 ]
  %205 = add nuw nsw i64 %38, 1
  %206 = load i64, ptr %25, align 8, !tbaa !67
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %37, label %208, !llvm.loop !148

208:                                              ; preds = %202, %23
  %209 = call ptr @DestroyCacheView(ptr noundef %24) #8
  %210 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  store i32 %1, ptr %210, align 8, !tbaa !149
  %211 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 2, ptr %211, align 8, !tbaa !150
  %212 = call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #8
  br label %213

213:                                              ; preds = %19, %16, %13, %208
  %214 = phi i32 [ %212, %208 ], [ 0, %13 ], [ 0, %16 ], [ 1, %19 ]
  ret i32 %214
}

declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

declare i32 @AccelerateGrayscaleImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare float @EncodePixelGamma(float noundef) local_unnamed_addr #6

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HaldClutImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @HaldClutImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1), !range !38
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @HaldClutImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !56
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2663, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #8
  br label %14

14:                                               ; preds = %11, %3
  %15 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %428, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !55
  switch i32 %19, label %22 [
    i32 19, label %20
    i32 17, label %20
    i32 2, label %20
  ]

20:                                               ; preds = %17, %17, %17
  %21 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #8
  br label %22

22:                                               ; preds = %17, %20
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !39
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #8
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %30 = load i64, ptr %29, align 8, !tbaa !68
  %31 = uitofp i64 %30 to float
  %32 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !67
  %34 = uitofp i64 %33 to float
  %35 = fcmp olt float %31, %34
  %36 = select i1 %35, float %31, float %34
  %37 = fptoui float %36 to i64
  br label %38

38:                                               ; preds = %38, %28
  %39 = phi i64 [ 2, %28 ], [ %43, %38 ]
  %40 = mul i64 %39, %39
  %41 = mul i64 %40, %39
  %42 = icmp ult i64 %41, %37
  %43 = add i64 %39, 1
  br i1 %42, label %38, label %44, !llvm.loop !151

44:                                               ; preds = %38
  %45 = uitofp i64 %30 to double
  call void @GetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %5) #8
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %47 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %46) #8
  %48 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef nonnull %46) #8
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %50 = load i64, ptr %49, align 8, !tbaa !67
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %424

52:                                               ; preds = %44
  %53 = mul i64 %40, %40
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %55 = getelementptr inbounds i8, ptr %5, i64 48
  %56 = getelementptr inbounds i8, ptr %5, i64 4
  %57 = uitofp i64 %40 to double
  %58 = fadd double %57, -1.000000e+00
  %59 = fmul double %58, 0x3EF0001000100010
  %60 = uitofp i64 %53 to double
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 1
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %74 = and i32 %1, 1
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %1, 2
  %77 = icmp eq i32 %76, 0
  %78 = and i32 %1, 4
  %79 = icmp eq i32 %78, 0
  %80 = and i32 %1, 8
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %1, 32
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %87

87:                                               ; preds = %52, %418
  %88 = phi i32 [ 1, %52 ], [ %420, %418 ]
  %89 = phi i64 [ 0, %52 ], [ %419, %418 ]
  %90 = phi i64 [ 0, %52 ], [ %421, %418 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  %91 = icmp eq i32 %88, 0
  br i1 %91, label %418, label %92

92:                                               ; preds = %87
  %93 = load i64, ptr %54, align 8, !tbaa !68
  %94 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %47, i64 noundef 0, i64 noundef %90, i64 noundef %93, i64 noundef 1, ptr noundef nonnull %46) #9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %418, label %96

96:                                               ; preds = %92
  %97 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %48) #8
  %98 = load float, ptr %55, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !152
  %99 = load i64, ptr %54, align 8, !tbaa !68
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %403

101:                                              ; preds = %96
  %102 = load i32, ptr %56, align 4, !tbaa.struct !155
  %103 = icmp eq i32 %102, 12
  %104 = icmp eq ptr %97, null
  br label %105

105:                                              ; preds = %101, %398
  %106 = phi i64 [ 0, %101 ], [ %400, %398 ]
  %107 = phi ptr [ %94, %101 ], [ %399, %398 ]
  %108 = phi float [ %98, %101 ], [ %339, %398 ]
  %109 = phi float [ %98, %101 ], [ %284, %398 ]
  %110 = phi float [ %98, %101 ], [ %211, %398 ]
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  %112 = load i16, ptr %111, align 2, !tbaa !60
  %113 = uitofp i16 %112 to double
  %114 = fmul double %59, %113
  %115 = fptrunc double %114 to float
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 1
  %117 = load i16, ptr %116, align 2, !tbaa !61
  %118 = uitofp i16 %117 to double
  %119 = fmul double %59, %118
  %120 = fptrunc double %119 to float
  %121 = load i16, ptr %107, align 2, !tbaa !62
  %122 = uitofp i16 %121 to double
  %123 = fmul double %59, %122
  %124 = fptrunc double %123 to float
  %125 = fpext float %115 to double
  %126 = fpext float %120 to double
  %127 = call double @llvm.floor.f64(double %126)
  %128 = call double @llvm.fmuladd.f64(double %57, double %127, double %125)
  %129 = fpext float %124 to double
  %130 = call double @llvm.floor.f64(double %129)
  %131 = call double @llvm.fmuladd.f64(double %60, double %130, double %128)
  %132 = fsub double %126, %127
  %133 = fptrunc double %132 to float
  %134 = fsub double %129, %130
  %135 = fptrunc double %134 to float
  %136 = call double @fmod(double noundef %131, double noundef %45) #8
  %137 = fdiv double %131, %45
  %138 = call double @llvm.floor.f64(double %137)
  %139 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %48, i32 noundef 0, double noundef %136, double noundef %138, ptr noundef nonnull %6, ptr noundef nonnull %46) #8
  %140 = fadd double %131, %57
  %141 = call double @fmod(double noundef %140, double noundef %45) #8
  %142 = fdiv double %140, %45
  %143 = call double @llvm.floor.f64(double %142)
  %144 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %48, i32 noundef 0, double noundef %141, double noundef %143, ptr noundef nonnull %7, ptr noundef nonnull %46) #8
  %145 = load float, ptr %61, align 4, !tbaa !92
  %146 = load float, ptr %62, align 4, !tbaa !92
  %147 = fpext float %133 to double
  %148 = fsub double 1.000000e+00, %147
  %149 = fsub float 6.553500e+04, %145
  %150 = fpext float %149 to double
  %151 = fneg double %148
  %152 = call double @llvm.fmuladd.f64(double %151, double %150, double 6.553500e+04)
  %153 = fptrunc double %152 to float
  %154 = fsub float 6.553500e+04, %146
  %155 = fneg float %133
  %156 = call float @llvm.fmuladd.f32(float %155, float %154, float 6.553500e+04)
  %157 = fpext float %153 to double
  %158 = call double @llvm.fmuladd.f64(double %157, double 0xBEF0001000100010, double 1.000000e+00)
  %159 = fptrunc double %158 to float
  %160 = fpext float %156 to double
  %161 = call double @llvm.fmuladd.f64(double %160, double 0xBEF0001000100010, double 1.000000e+00)
  %162 = fptrunc double %161 to float
  %163 = fadd float %162, %159
  %164 = fcmp olt float %163, 0.000000e+00
  %165 = fcmp ogt float %163, 1.000000e+00
  %166 = select i1 %165, float 1.000000e+00, float %163
  %167 = select i1 %164, float 0.000000e+00, float %166
  %168 = fpext float %167 to double
  %169 = fsub double 1.000000e+00, %168
  %170 = fmul double %169, 6.553500e+04
  %171 = fptrunc double %170 to float
  %172 = fcmp olt float %167, 0.000000e+00
  %173 = select i1 %172, double -1.000000e+00, double 1.000000e+00
  %174 = fmul double %173, %168
  %175 = fcmp ult double %174, 1.000000e-15
  %176 = fdiv double 1.000000e+00, %168
  %177 = fdiv double %173, 1.000000e-15
  %178 = select i1 %175, double %177, double %176
  %179 = load float, ptr %63, align 8, !tbaa !88
  %180 = load float, ptr %64, align 8, !tbaa !88
  %181 = fmul float %180, %162
  %182 = call float @llvm.fmuladd.f32(float %159, float %179, float %181)
  %183 = fpext float %182 to double
  %184 = fmul double %178, %183
  %185 = fptrunc double %184 to float
  %186 = load float, ptr %65, align 4, !tbaa !89
  %187 = load float, ptr %66, align 4, !tbaa !89
  %188 = fmul float %187, %162
  %189 = call float @llvm.fmuladd.f32(float %159, float %186, float %188)
  %190 = fpext float %189 to double
  %191 = fmul double %178, %190
  %192 = fptrunc double %191 to float
  %193 = load float, ptr %67, align 8, !tbaa !90
  %194 = load float, ptr %68, align 8, !tbaa !90
  %195 = fmul float %194, %162
  %196 = call float @llvm.fmuladd.f32(float %159, float %193, float %195)
  %197 = fpext float %196 to double
  %198 = fmul double %178, %197
  %199 = fptrunc double %198 to float
  %200 = load i32, ptr %69, align 4, !tbaa !91
  %201 = icmp eq i32 %200, 12
  br i1 %201, label %202, label %210

202:                                              ; preds = %105
  %203 = load float, ptr %70, align 8, !tbaa !85
  %204 = load float, ptr %71, align 8, !tbaa !85
  %205 = fmul float %204, %162
  %206 = call float @llvm.fmuladd.f32(float %159, float %203, float %205)
  %207 = fpext float %206 to double
  %208 = fmul double %178, %207
  %209 = fptrunc double %208 to float
  br label %210

210:                                              ; preds = %105, %202
  %211 = phi float [ %209, %202 ], [ %110, %105 ]
  %212 = fadd double %131, %60
  %213 = call double @fmod(double noundef %212, double noundef %45) #8
  %214 = fdiv double %212, %45
  %215 = call double @llvm.floor.f64(double %214)
  %216 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %48, i32 noundef 0, double noundef %213, double noundef %215, ptr noundef nonnull %6, ptr noundef nonnull %46) #8
  %217 = fadd double %212, %57
  %218 = call double @fmod(double noundef %217, double noundef %45) #8
  %219 = fdiv double %217, %45
  %220 = call double @llvm.floor.f64(double %219)
  %221 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %48, i32 noundef 0, double noundef %218, double noundef %220, ptr noundef nonnull %7, ptr noundef nonnull %46) #8
  %222 = load float, ptr %61, align 4, !tbaa !92
  %223 = load float, ptr %62, align 4, !tbaa !92
  %224 = fsub float 6.553500e+04, %222
  %225 = fpext float %224 to double
  %226 = call double @llvm.fmuladd.f64(double %151, double %225, double 6.553500e+04)
  %227 = fptrunc double %226 to float
  %228 = fsub float 6.553500e+04, %223
  %229 = call float @llvm.fmuladd.f32(float %155, float %228, float 6.553500e+04)
  %230 = fpext float %227 to double
  %231 = call double @llvm.fmuladd.f64(double %230, double 0xBEF0001000100010, double 1.000000e+00)
  %232 = fptrunc double %231 to float
  %233 = fpext float %229 to double
  %234 = call double @llvm.fmuladd.f64(double %233, double 0xBEF0001000100010, double 1.000000e+00)
  %235 = fptrunc double %234 to float
  %236 = fadd float %235, %232
  %237 = fcmp olt float %236, 0.000000e+00
  %238 = fcmp ogt float %236, 1.000000e+00
  %239 = select i1 %238, float 1.000000e+00, float %236
  %240 = select i1 %237, float 0.000000e+00, float %239
  %241 = fpext float %240 to double
  %242 = fsub double 1.000000e+00, %241
  %243 = fmul double %242, 6.553500e+04
  %244 = fptrunc double %243 to float
  %245 = fcmp olt float %240, 0.000000e+00
  %246 = select i1 %245, double -1.000000e+00, double 1.000000e+00
  %247 = fmul double %246, %241
  %248 = fcmp ult double %247, 1.000000e-15
  %249 = fdiv double 1.000000e+00, %241
  %250 = fdiv double %246, 1.000000e-15
  %251 = select i1 %248, double %250, double %249
  %252 = load float, ptr %63, align 8, !tbaa !88
  %253 = load float, ptr %64, align 8, !tbaa !88
  %254 = fmul float %253, %235
  %255 = call float @llvm.fmuladd.f32(float %232, float %252, float %254)
  %256 = fpext float %255 to double
  %257 = fmul double %251, %256
  %258 = fptrunc double %257 to float
  %259 = load float, ptr %65, align 4, !tbaa !89
  %260 = load float, ptr %66, align 4, !tbaa !89
  %261 = fmul float %260, %235
  %262 = call float @llvm.fmuladd.f32(float %232, float %259, float %261)
  %263 = fpext float %262 to double
  %264 = fmul double %251, %263
  %265 = fptrunc double %264 to float
  %266 = load float, ptr %67, align 8, !tbaa !90
  %267 = load float, ptr %68, align 8, !tbaa !90
  %268 = fmul float %267, %235
  %269 = call float @llvm.fmuladd.f32(float %232, float %266, float %268)
  %270 = fpext float %269 to double
  %271 = fmul double %251, %270
  %272 = fptrunc double %271 to float
  %273 = load i32, ptr %69, align 4, !tbaa !91
  %274 = icmp eq i32 %273, 12
  br i1 %274, label %275, label %283

275:                                              ; preds = %210
  %276 = load float, ptr %72, align 8, !tbaa !85
  %277 = load float, ptr %73, align 8, !tbaa !85
  %278 = fmul float %277, %235
  %279 = call float @llvm.fmuladd.f32(float %232, float %276, float %278)
  %280 = fpext float %279 to double
  %281 = fmul double %251, %280
  %282 = fptrunc double %281 to float
  br label %283

283:                                              ; preds = %210, %275
  %284 = phi float [ %282, %275 ], [ %109, %210 ]
  %285 = fpext float %135 to double
  %286 = fsub double 1.000000e+00, %285
  %287 = fsub float 6.553500e+04, %171
  %288 = fpext float %287 to double
  %289 = fneg double %286
  %290 = call double @llvm.fmuladd.f64(double %289, double %288, double 6.553500e+04)
  %291 = fptrunc double %290 to float
  %292 = fsub float 6.553500e+04, %244
  %293 = fneg float %135
  %294 = call float @llvm.fmuladd.f32(float %293, float %292, float 6.553500e+04)
  %295 = fpext float %291 to double
  %296 = call double @llvm.fmuladd.f64(double %295, double 0xBEF0001000100010, double 1.000000e+00)
  %297 = fptrunc double %296 to float
  %298 = fpext float %294 to double
  %299 = call double @llvm.fmuladd.f64(double %298, double 0xBEF0001000100010, double 1.000000e+00)
  %300 = fptrunc double %299 to float
  %301 = fadd float %297, %300
  %302 = fcmp olt float %301, 0.000000e+00
  %303 = fcmp ogt float %301, 1.000000e+00
  %304 = select i1 %303, float 1.000000e+00, float %301
  %305 = select i1 %302, float 0.000000e+00, float %304
  %306 = fpext float %305 to double
  %307 = fsub double 1.000000e+00, %306
  %308 = fmul double %307, 6.553500e+04
  %309 = fptrunc double %308 to float
  %310 = fcmp olt float %305, 0.000000e+00
  %311 = select i1 %310, double -1.000000e+00, double 1.000000e+00
  %312 = fmul double %311, %306
  %313 = fcmp ult double %312, 1.000000e-15
  %314 = fdiv double 1.000000e+00, %306
  %315 = fdiv double %311, 1.000000e-15
  %316 = select i1 %313, double %315, double %314
  %317 = fmul float %258, %300
  %318 = call float @llvm.fmuladd.f32(float %297, float %185, float %317)
  %319 = fpext float %318 to double
  %320 = fmul double %316, %319
  %321 = fptrunc double %320 to float
  %322 = fmul float %265, %300
  %323 = call float @llvm.fmuladd.f32(float %297, float %192, float %322)
  %324 = fpext float %323 to double
  %325 = fmul double %316, %324
  %326 = fptrunc double %325 to float
  %327 = fmul float %272, %300
  %328 = call float @llvm.fmuladd.f32(float %297, float %199, float %327)
  %329 = fpext float %328 to double
  %330 = fmul double %316, %329
  %331 = fptrunc double %330 to float
  br i1 %103, label %332, label %338

332:                                              ; preds = %283
  %333 = fmul float %284, %300
  %334 = call float @llvm.fmuladd.f32(float %297, float %211, float %333)
  %335 = fpext float %334 to double
  %336 = fmul double %316, %335
  %337 = fptrunc double %336 to float
  br label %338

338:                                              ; preds = %283, %332
  %339 = phi float [ %337, %332 ], [ %108, %283 ]
  br i1 %75, label %349, label %340

340:                                              ; preds = %338
  %341 = fcmp ugt float %321, 0.000000e+00
  br i1 %341, label %342, label %347

342:                                              ; preds = %340
  %343 = fcmp ult float %321, 6.553500e+04
  br i1 %343, label %344, label %347

344:                                              ; preds = %342
  %345 = fadd float %321, 5.000000e-01
  %346 = fptoui float %345 to i16
  br label %347

347:                                              ; preds = %340, %342, %344
  %348 = phi i16 [ %346, %344 ], [ 0, %340 ], [ -1, %342 ]
  store i16 %348, ptr %111, align 2, !tbaa !60
  br label %349

349:                                              ; preds = %347, %338
  br i1 %77, label %359, label %350

350:                                              ; preds = %349
  %351 = fcmp ugt float %326, 0.000000e+00
  br i1 %351, label %352, label %357

352:                                              ; preds = %350
  %353 = fcmp ult float %326, 6.553500e+04
  br i1 %353, label %354, label %357

354:                                              ; preds = %352
  %355 = fadd float %326, 5.000000e-01
  %356 = fptoui float %355 to i16
  br label %357

357:                                              ; preds = %350, %352, %354
  %358 = phi i16 [ %356, %354 ], [ 0, %350 ], [ -1, %352 ]
  store i16 %358, ptr %116, align 2, !tbaa !61
  br label %359

359:                                              ; preds = %357, %349
  br i1 %79, label %369, label %360

360:                                              ; preds = %359
  %361 = fcmp ugt float %331, 0.000000e+00
  br i1 %361, label %362, label %367

362:                                              ; preds = %360
  %363 = fcmp ult float %331, 6.553500e+04
  br i1 %363, label %364, label %367

364:                                              ; preds = %362
  %365 = fadd float %331, 5.000000e-01
  %366 = fptoui float %365 to i16
  br label %367

367:                                              ; preds = %360, %362, %364
  %368 = phi i16 [ %366, %364 ], [ 0, %360 ], [ -1, %362 ]
  store i16 %368, ptr %107, align 2, !tbaa !62
  br label %369

369:                                              ; preds = %367, %359
  br i1 %81, label %383, label %370

370:                                              ; preds = %369
  %371 = load i32, ptr %23, align 8, !tbaa !39
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %383, label %373

373:                                              ; preds = %370
  %374 = fcmp ugt float %309, 0.000000e+00
  br i1 %374, label %375, label %380

375:                                              ; preds = %373
  %376 = fcmp ult float %309, 6.553500e+04
  br i1 %376, label %377, label %380

377:                                              ; preds = %375
  %378 = fadd float %309, 5.000000e-01
  %379 = fptoui float %378 to i16
  br label %380

380:                                              ; preds = %373, %375, %377
  %381 = phi i16 [ %379, %377 ], [ 0, %373 ], [ -1, %375 ]
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 3
  store i16 %381, ptr %382, align 2, !tbaa !63
  br label %383

383:                                              ; preds = %380, %370, %369
  br i1 %83, label %398, label %384

384:                                              ; preds = %383
  %385 = load i32, ptr %18, align 4, !tbaa !55
  %386 = icmp ne i32 %385, 12
  %387 = select i1 %386, i1 true, i1 %104
  br i1 %387, label %398, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds i16, ptr %97, i64 %106
  %390 = fcmp ugt float %339, 0.000000e+00
  br i1 %390, label %391, label %396

391:                                              ; preds = %388
  %392 = fcmp ult float %339, 6.553500e+04
  br i1 %392, label %393, label %396

393:                                              ; preds = %391
  %394 = fadd float %339, 5.000000e-01
  %395 = fptoui float %394 to i16
  br label %396

396:                                              ; preds = %388, %391, %393
  %397 = phi i16 [ %395, %393 ], [ 0, %388 ], [ -1, %391 ]
  store i16 %397, ptr %389, align 2, !tbaa !69
  br label %398

398:                                              ; preds = %396, %384, %383
  %399 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 1
  %400 = add nuw nsw i64 %106, 1
  %401 = load i64, ptr %54, align 8, !tbaa !68
  %402 = icmp slt i64 %400, %401
  br i1 %402, label %105, label %403, !llvm.loop !156

403:                                              ; preds = %398, %96
  %404 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %47, ptr noundef nonnull %46) #9
  %405 = icmp ne i32 %404, 0
  %406 = zext i1 %405 to i32
  %407 = load ptr, ptr %84, align 8, !tbaa !71
  %408 = icmp eq ptr %407, null
  br i1 %408, label %418, label %409

409:                                              ; preds = %403
  %410 = add nsw i64 %89, 1
  %411 = load i64, ptr %49, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %412 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.24, ptr noundef nonnull %85) #8
  %413 = load ptr, ptr %84, align 8, !tbaa !71
  %414 = load ptr, ptr %86, align 8, !tbaa !72
  %415 = call i32 %413(ptr noundef nonnull %4, i64 noundef %89, i64 noundef %411, ptr noundef %414) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  %416 = icmp eq i32 %415, 0
  %417 = select i1 %416, i32 0, i32 %406
  br label %418

418:                                              ; preds = %403, %409, %92, %87
  %419 = phi i64 [ %89, %87 ], [ %89, %92 ], [ %410, %409 ], [ %89, %403 ]
  %420 = phi i32 [ 0, %87 ], [ 0, %92 ], [ %417, %409 ], [ %406, %403 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #8
  %421 = add nuw nsw i64 %90, 1
  %422 = load i64, ptr %49, align 8, !tbaa !67
  %423 = icmp slt i64 %421, %422
  br i1 %423, label %87, label %424, !llvm.loop !157

424:                                              ; preds = %418, %44
  %425 = phi i32 [ 1, %44 ], [ %420, %418 ]
  %426 = call ptr @DestroyCacheView(ptr noundef %48) #8
  %427 = call ptr @DestroyCacheView(ptr noundef %47) #8
  br label %428

428:                                              ; preds = %14, %424
  %429 = phi i32 [ %425, %424 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #8
  ret i32 %429
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @LevelImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #8
  %7 = load double, ptr %3, align 8, !tbaa !98
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
  br i1 %19, label %31, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !68
  %23 = uitofp i64 %22 to double
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !67
  %26 = uitofp i64 %25 to double
  %27 = fmul double %23, %26
  %28 = fdiv double %27, 1.000000e+02
  %29 = fmul double %7, %28
  %30 = fmul double %12, %28
  br label %31

31:                                               ; preds = %20, %5
  %32 = phi double [ %29, %20 ], [ %7, %5 ]
  %33 = phi double [ %30, %20 ], [ %12, %5 ]
  %34 = fsub double 6.553500e+04, %32
  %35 = select i1 %9, double %34, double %33
  %36 = and i32 %6, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %32, double noundef %35, double noundef %17), !range !38
  br label %42

40:                                               ; preds = %31
  %41 = call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %32, double noundef %35, double noundef %17), !range !38
  br label %42

42:                                               ; preds = %38, %40, %2
  %43 = phi i32 [ 0, %2 ], [ %39, %38 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LevelizeImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3), !range !38
  ret i32 %5
}

declare i32 @ClampImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3141, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #8
  br label %13

13:                                               ; preds = %10, %5
  %14 = load i32, ptr %0, align 8, !tbaa !57
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %148

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %18 = load i64, ptr %17, align 8, !tbaa !58
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %148

20:                                               ; preds = %16
  %21 = and i32 %1, 1
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %24 = fsub double %3, %2
  %25 = and i32 %1, 2
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %28 = fsub double %3, %2
  %29 = and i32 %1, 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %32 = fsub double %3, %2
  %33 = and i32 %1, 8
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %36 = fsub double %3, %2
  br label %37

37:                                               ; preds = %20, %144
  %38 = phi i64 [ 0, %20 ], [ %145, %144 ]
  br i1 %22, label %64, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %23, align 8, !tbaa !59
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %40, i64 %38, i32 2
  %42 = load i16, ptr %41, align 2, !tbaa !60
  %43 = uitofp i16 %42 to double
  %44 = fmul double %43, 0x3EF0001000100010
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = tail call double @pow(double noundef %44, double noundef %4) #8
  br label %48

48:                                               ; preds = %39, %46
  %49 = phi double [ %47, %46 ], [ %44, %39 ]
  %50 = fptrunc double %49 to float
  %51 = fpext float %50 to double
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %24, double %2)
  %53 = fptrunc double %52 to float
  %54 = fcmp ugt float %53, 0.000000e+00
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = fcmp ult float %53, 6.553500e+04
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = fadd float %53, 5.000000e-01
  %59 = fptoui float %58 to i16
  br label %60

60:                                               ; preds = %48, %55, %57
  %61 = phi i16 [ %59, %57 ], [ 0, %48 ], [ -1, %55 ]
  %62 = load ptr, ptr %23, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %38, i32 2
  store i16 %61, ptr %63, align 2, !tbaa !60
  br label %64

64:                                               ; preds = %60, %37
  br i1 %26, label %90, label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr %27, align 8, !tbaa !59
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 %38, i32 1
  %68 = load i16, ptr %67, align 2, !tbaa !61
  %69 = uitofp i16 %68 to double
  %70 = fmul double %69, 0x3EF0001000100010
  %71 = fcmp olt double %70, 0.000000e+00
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = tail call double @pow(double noundef %70, double noundef %4) #8
  br label %74

74:                                               ; preds = %65, %72
  %75 = phi double [ %73, %72 ], [ %70, %65 ]
  %76 = fptrunc double %75 to float
  %77 = fpext float %76 to double
  %78 = tail call double @llvm.fmuladd.f64(double %77, double %28, double %2)
  %79 = fptrunc double %78 to float
  %80 = fcmp ugt float %79, 0.000000e+00
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = fcmp ult float %79, 6.553500e+04
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = fadd float %79, 5.000000e-01
  %85 = fptoui float %84 to i16
  br label %86

86:                                               ; preds = %74, %81, %83
  %87 = phi i16 [ %85, %83 ], [ 0, %74 ], [ -1, %81 ]
  %88 = load ptr, ptr %27, align 8, !tbaa !59
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %38, i32 1
  store i16 %87, ptr %89, align 2, !tbaa !61
  br label %90

90:                                               ; preds = %86, %64
  br i1 %30, label %116, label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %31, align 8, !tbaa !59
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 %38
  %94 = load i16, ptr %93, align 2, !tbaa !62
  %95 = uitofp i16 %94 to double
  %96 = fmul double %95, 0x3EF0001000100010
  %97 = fcmp olt double %96, 0.000000e+00
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = tail call double @pow(double noundef %96, double noundef %4) #8
  br label %100

100:                                              ; preds = %91, %98
  %101 = phi double [ %99, %98 ], [ %96, %91 ]
  %102 = fptrunc double %101 to float
  %103 = fpext float %102 to double
  %104 = tail call double @llvm.fmuladd.f64(double %103, double %32, double %2)
  %105 = fptrunc double %104 to float
  %106 = fcmp ugt float %105, 0.000000e+00
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = fcmp ult float %105, 6.553500e+04
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = fadd float %105, 5.000000e-01
  %111 = fptoui float %110 to i16
  br label %112

112:                                              ; preds = %100, %107, %109
  %113 = phi i16 [ %111, %109 ], [ 0, %100 ], [ -1, %107 ]
  %114 = load ptr, ptr %31, align 8, !tbaa !59
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 %38
  store i16 %113, ptr %115, align 2, !tbaa !62
  br label %116

116:                                              ; preds = %112, %90
  br i1 %34, label %144, label %117

117:                                              ; preds = %116
  %118 = load ptr, ptr %35, align 8, !tbaa !59
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 %38, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !63
  %121 = xor i16 %120, -1
  %122 = uitofp i16 %121 to double
  %123 = fmul double %122, 0x3EF0001000100010
  %124 = fcmp olt double %123, 0.000000e+00
  br i1 %124, label %127, label %125

125:                                              ; preds = %117
  %126 = tail call double @pow(double noundef %123, double noundef %4) #8
  br label %127

127:                                              ; preds = %117, %125
  %128 = phi double [ %126, %125 ], [ %123, %117 ]
  %129 = fptrunc double %128 to float
  %130 = fpext float %129 to double
  %131 = tail call double @llvm.fmuladd.f64(double %130, double %36, double %2)
  %132 = fptrunc double %131 to float
  %133 = fcmp ugt float %132, 0.000000e+00
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = fcmp ult float %132, 6.553500e+04
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = fadd float %132, 5.000000e-01
  %138 = fptoui float %137 to i16
  br label %139

139:                                              ; preds = %127, %134, %136
  %140 = phi i16 [ %138, %136 ], [ 0, %127 ], [ -1, %134 ]
  %141 = xor i16 %140, -1
  %142 = load ptr, ptr %35, align 8, !tbaa !59
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 %38, i32 3
  store i16 %141, ptr %143, align 2, !tbaa !63
  br label %144

144:                                              ; preds = %116, %139
  %145 = add nuw nsw i64 %38, 1
  %146 = load i64, ptr %17, align 8, !tbaa !58
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %37, label %148, !llvm.loop !158

148:                                              ; preds = %144, %16, %13
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %150 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %149) #8
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %152 = load i64, ptr %151, align 8, !tbaa !67
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %342

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %156 = and i32 %1, 1
  %157 = icmp eq i32 %156, 0
  %158 = fsub double %3, %2
  %159 = and i32 %1, 2
  %160 = icmp eq i32 %159, 0
  %161 = fsub double %3, %2
  %162 = and i32 %1, 4
  %163 = icmp eq i32 %162, 0
  %164 = fsub double %3, %2
  %165 = and i32 %1, 8
  %166 = icmp eq i32 %165, 0
  %167 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %168 = fsub double %3, %2
  %169 = and i32 %1, 32
  %170 = icmp eq i32 %169, 0
  %171 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %172 = fsub double %3, %2
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %174 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %175 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %176

176:                                              ; preds = %154, %336
  %177 = phi i32 [ 1, %154 ], [ %338, %336 ]
  %178 = phi i64 [ 0, %154 ], [ %339, %336 ]
  %179 = phi i64 [ 0, %154 ], [ %337, %336 ]
  %180 = icmp eq i32 %177, 0
  br i1 %180, label %336, label %181

181:                                              ; preds = %176
  %182 = load i64, ptr %155, align 8, !tbaa !68
  %183 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %150, i64 noundef 0, i64 noundef %178, i64 noundef %182, i64 noundef 1, ptr noundef nonnull %149) #9
  %184 = icmp eq ptr %183, null
  br i1 %184, label %336, label %185

185:                                              ; preds = %181
  %186 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %150) #8
  %187 = load i64, ptr %155, align 8, !tbaa !68
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %321

189:                                              ; preds = %185
  %190 = icmp eq ptr %186, null
  br label %191

191:                                              ; preds = %189, %316
  %192 = phi i64 [ 0, %189 ], [ %318, %316 ]
  %193 = phi ptr [ %183, %189 ], [ %317, %316 ]
  br i1 %157, label %216, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 2
  %196 = load i16, ptr %195, align 2, !tbaa !60
  %197 = uitofp i16 %196 to double
  %198 = fmul double %197, 0x3EF0001000100010
  %199 = fcmp olt double %198, 0.000000e+00
  br i1 %199, label %202, label %200

200:                                              ; preds = %194
  %201 = call double @pow(double noundef %198, double noundef %4) #8
  br label %202

202:                                              ; preds = %194, %200
  %203 = phi double [ %201, %200 ], [ %198, %194 ]
  %204 = fptrunc double %203 to float
  %205 = fpext float %204 to double
  %206 = call double @llvm.fmuladd.f64(double %205, double %158, double %2)
  %207 = fptrunc double %206 to float
  %208 = fcmp ugt float %207, 0.000000e+00
  br i1 %208, label %209, label %214

209:                                              ; preds = %202
  %210 = fcmp ult float %207, 6.553500e+04
  br i1 %210, label %211, label %214

211:                                              ; preds = %209
  %212 = fadd float %207, 5.000000e-01
  %213 = fptoui float %212 to i16
  br label %214

214:                                              ; preds = %202, %209, %211
  %215 = phi i16 [ %213, %211 ], [ 0, %202 ], [ -1, %209 ]
  store i16 %215, ptr %195, align 2, !tbaa !60
  br label %216

216:                                              ; preds = %214, %191
  br i1 %160, label %239, label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 1
  %219 = load i16, ptr %218, align 2, !tbaa !61
  %220 = uitofp i16 %219 to double
  %221 = fmul double %220, 0x3EF0001000100010
  %222 = fcmp olt double %221, 0.000000e+00
  br i1 %222, label %225, label %223

223:                                              ; preds = %217
  %224 = call double @pow(double noundef %221, double noundef %4) #8
  br label %225

225:                                              ; preds = %217, %223
  %226 = phi double [ %224, %223 ], [ %221, %217 ]
  %227 = fptrunc double %226 to float
  %228 = fpext float %227 to double
  %229 = call double @llvm.fmuladd.f64(double %228, double %161, double %2)
  %230 = fptrunc double %229 to float
  %231 = fcmp ugt float %230, 0.000000e+00
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = fcmp ult float %230, 6.553500e+04
  br i1 %233, label %234, label %237

234:                                              ; preds = %232
  %235 = fadd float %230, 5.000000e-01
  %236 = fptoui float %235 to i16
  br label %237

237:                                              ; preds = %225, %232, %234
  %238 = phi i16 [ %236, %234 ], [ 0, %225 ], [ -1, %232 ]
  store i16 %238, ptr %218, align 2, !tbaa !61
  br label %239

239:                                              ; preds = %237, %216
  br i1 %163, label %261, label %240

240:                                              ; preds = %239
  %241 = load i16, ptr %193, align 2, !tbaa !62
  %242 = uitofp i16 %241 to double
  %243 = fmul double %242, 0x3EF0001000100010
  %244 = fcmp olt double %243, 0.000000e+00
  br i1 %244, label %247, label %245

245:                                              ; preds = %240
  %246 = call double @pow(double noundef %243, double noundef %4) #8
  br label %247

247:                                              ; preds = %240, %245
  %248 = phi double [ %246, %245 ], [ %243, %240 ]
  %249 = fptrunc double %248 to float
  %250 = fpext float %249 to double
  %251 = call double @llvm.fmuladd.f64(double %250, double %164, double %2)
  %252 = fptrunc double %251 to float
  %253 = fcmp ugt float %252, 0.000000e+00
  br i1 %253, label %254, label %259

254:                                              ; preds = %247
  %255 = fcmp ult float %252, 6.553500e+04
  br i1 %255, label %256, label %259

256:                                              ; preds = %254
  %257 = fadd float %252, 5.000000e-01
  %258 = fptoui float %257 to i16
  br label %259

259:                                              ; preds = %247, %254, %256
  %260 = phi i16 [ %258, %256 ], [ 0, %247 ], [ -1, %254 ]
  store i16 %260, ptr %193, align 2, !tbaa !62
  br label %261

261:                                              ; preds = %259, %239
  br i1 %166, label %289, label %262

262:                                              ; preds = %261
  %263 = load i32, ptr %167, align 8, !tbaa !39
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %289, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 3
  %267 = load i16, ptr %266, align 2, !tbaa !63
  %268 = xor i16 %267, -1
  %269 = uitofp i16 %268 to double
  %270 = fmul double %269, 0x3EF0001000100010
  %271 = fcmp olt double %270, 0.000000e+00
  br i1 %271, label %274, label %272

272:                                              ; preds = %265
  %273 = call double @pow(double noundef %270, double noundef %4) #8
  br label %274

274:                                              ; preds = %265, %272
  %275 = phi double [ %273, %272 ], [ %270, %265 ]
  %276 = fptrunc double %275 to float
  %277 = fpext float %276 to double
  %278 = call double @llvm.fmuladd.f64(double %277, double %168, double %2)
  %279 = fptrunc double %278 to float
  %280 = fcmp ugt float %279, 0.000000e+00
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = fcmp ult float %279, 6.553500e+04
  br i1 %282, label %283, label %286

283:                                              ; preds = %281
  %284 = fadd float %279, 5.000000e-01
  %285 = fptoui float %284 to i16
  br label %286

286:                                              ; preds = %274, %281, %283
  %287 = phi i16 [ %285, %283 ], [ 0, %274 ], [ -1, %281 ]
  %288 = xor i16 %287, -1
  store i16 %288, ptr %266, align 2, !tbaa !63
  br label %289

289:                                              ; preds = %286, %262, %261
  br i1 %170, label %316, label %290

290:                                              ; preds = %289
  %291 = load i32, ptr %171, align 4, !tbaa !55
  %292 = icmp eq i32 %291, 12
  br i1 %292, label %293, label %316

293:                                              ; preds = %290
  %294 = getelementptr inbounds i16, ptr %186, i64 %192
  br i1 %190, label %316, label %295

295:                                              ; preds = %293
  %296 = load i16, ptr %294, align 2, !tbaa !69
  %297 = uitofp i16 %296 to double
  %298 = fmul double %297, 0x3EF0001000100010
  %299 = fcmp olt double %298, 0.000000e+00
  br i1 %299, label %302, label %300

300:                                              ; preds = %295
  %301 = call double @pow(double noundef %298, double noundef %4) #8
  br label %302

302:                                              ; preds = %295, %300
  %303 = phi double [ %301, %300 ], [ %298, %295 ]
  %304 = fptrunc double %303 to float
  %305 = fpext float %304 to double
  %306 = call double @llvm.fmuladd.f64(double %305, double %172, double %2)
  %307 = fptrunc double %306 to float
  %308 = fcmp ugt float %307, 0.000000e+00
  br i1 %308, label %309, label %314

309:                                              ; preds = %302
  %310 = fcmp ult float %307, 6.553500e+04
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = fadd float %307, 5.000000e-01
  %313 = fptoui float %312 to i16
  br label %314

314:                                              ; preds = %302, %309, %311
  %315 = phi i16 [ %313, %311 ], [ 0, %302 ], [ -1, %309 ]
  store i16 %315, ptr %294, align 2, !tbaa !69
  br label %316

316:                                              ; preds = %293, %314, %290, %289
  %317 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 1
  %318 = add nuw nsw i64 %192, 1
  %319 = load i64, ptr %155, align 8, !tbaa !68
  %320 = icmp slt i64 %318, %319
  br i1 %320, label %191, label %321, !llvm.loop !159

321:                                              ; preds = %316, %185
  %322 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %150, ptr noundef nonnull %149) #9
  %323 = icmp ne i32 %322, 0
  %324 = zext i1 %323 to i32
  %325 = load ptr, ptr %173, align 8, !tbaa !71
  %326 = icmp eq ptr %325, null
  br i1 %326, label %336, label %327

327:                                              ; preds = %321
  %328 = add nsw i64 %179, 1
  %329 = load i64, ptr %151, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  %330 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, ptr noundef nonnull %174) #8
  %331 = load ptr, ptr %173, align 8, !tbaa !71
  %332 = load ptr, ptr %175, align 8, !tbaa !72
  %333 = call i32 %331(ptr noundef nonnull %6, i64 noundef %179, i64 noundef %329, ptr noundef %332) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  %334 = icmp eq i32 %333, 0
  %335 = select i1 %334, i32 0, i32 %324
  br label %336

336:                                              ; preds = %321, %327, %181, %176
  %337 = phi i64 [ %179, %176 ], [ %179, %181 ], [ %328, %327 ], [ %179, %321 ]
  %338 = phi i32 [ 0, %176 ], [ 0, %181 ], [ %335, %327 ], [ %324, %321 ]
  %339 = add nuw nsw i64 %178, 1
  %340 = load i64, ptr %151, align 8, !tbaa !67
  %341 = icmp slt i64 %339, %340
  br i1 %341, label %176, label %342, !llvm.loop !160

342:                                              ; preds = %336, %148
  %343 = phi i32 [ 1, %148 ], [ %338, %336 ]
  %344 = call ptr @DestroyCacheView(ptr noundef %150) #8
  ret i32 %343
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LevelColorsImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @LevelColorsImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !38
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LevelColorsImageChannel(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3294, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !55
  switch i32 %14, label %23 [
    i32 19, label %15
    i32 17, label %15
    i32 2, label %15
  ]

15:                                               ; preds = %12, %12, %12
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !91
  switch i32 %17, label %21 [
    i32 19, label %18
    i32 17, label %18
    i32 2, label %18
  ]

18:                                               ; preds = %15, %15, %15
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !91
  switch i32 %20, label %21 [
    i32 19, label %23
    i32 17, label %23
    i32 2, label %23
  ]

21:                                               ; preds = %18, %15
  %22 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #8
  br label %23

23:                                               ; preds = %12, %18, %18, %18, %21
  %24 = icmp eq i32 %4, 0
  %25 = and i32 %1, 1
  %26 = icmp eq i32 %25, 0
  br i1 %24, label %27, label %95

27:                                               ; preds = %23
  br i1 %26, label %36, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !88
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !88
  %34 = fpext float %33 to double
  %35 = tail call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 1, double noundef %31, double noundef %34, double noundef 1.000000e+00), !range !38
  br label %36

36:                                               ; preds = %28, %27
  %37 = phi i32 [ %35, %28 ], [ 1, %27 ]
  %38 = and i32 %1, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %42 = load float, ptr %41, align 4, !tbaa !89
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %45 = load float, ptr %44, align 4, !tbaa !89
  %46 = fpext float %45 to double
  %47 = tail call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 2, double noundef %43, double noundef %46, double noundef 1.000000e+00), !range !38
  %48 = and i32 %47, %37
  br label %49

49:                                               ; preds = %40, %36
  %50 = phi i32 [ %48, %40 ], [ %37, %36 ]
  %51 = and i32 %1, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %55 = load float, ptr %54, align 8, !tbaa !90
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %58 = load float, ptr %57, align 8, !tbaa !90
  %59 = fpext float %58 to double
  %60 = tail call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 4, double noundef %56, double noundef %59, double noundef 1.000000e+00), !range !38
  %61 = and i32 %60, %50
  br label %62

62:                                               ; preds = %53, %49
  %63 = phi i32 [ %61, %53 ], [ %50, %49 ]
  %64 = and i32 %1, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %68 = load i32, ptr %67, align 8, !tbaa !39
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %72 = load float, ptr %71, align 4, !tbaa !92
  %73 = fpext float %72 to double
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %75 = load float, ptr %74, align 4, !tbaa !92
  %76 = fpext float %75 to double
  %77 = tail call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 8, double noundef %73, double noundef %76, double noundef 1.000000e+00), !range !38
  %78 = and i32 %77, %63
  br label %79

79:                                               ; preds = %70, %66, %62
  %80 = phi i32 [ %78, %70 ], [ %63, %66 ], [ %63, %62 ]
  %81 = and i32 %1, 32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %163, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %13, align 4, !tbaa !55
  %85 = icmp eq i32 %84, 12
  br i1 %85, label %86, label %163

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %88 = load float, ptr %87, align 8, !tbaa !85
  %89 = fpext float %88 to double
  %90 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %91 = load float, ptr %90, align 8, !tbaa !85
  %92 = fpext float %91 to double
  %93 = tail call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 32, double noundef %89, double noundef %92, double noundef 1.000000e+00), !range !38
  %94 = and i32 %93, %80
  br label %163

95:                                               ; preds = %23
  br i1 %26, label %104, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %98 = load float, ptr %97, align 8, !tbaa !88
  %99 = fpext float %98 to double
  %100 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %101 = load float, ptr %100, align 8, !tbaa !88
  %102 = fpext float %101 to double
  %103 = tail call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 1, double noundef %99, double noundef %102, double noundef 1.000000e+00), !range !38
  br label %104

104:                                              ; preds = %96, %95
  %105 = phi i32 [ %103, %96 ], [ 1, %95 ]
  %106 = and i32 %1, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %110 = load float, ptr %109, align 4, !tbaa !89
  %111 = fpext float %110 to double
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %113 = load float, ptr %112, align 4, !tbaa !89
  %114 = fpext float %113 to double
  %115 = tail call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 2, double noundef %111, double noundef %114, double noundef 1.000000e+00), !range !38
  %116 = and i32 %115, %105
  br label %117

117:                                              ; preds = %108, %104
  %118 = phi i32 [ %116, %108 ], [ %105, %104 ]
  %119 = and i32 %1, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %123 = load float, ptr %122, align 8, !tbaa !90
  %124 = fpext float %123 to double
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %126 = load float, ptr %125, align 8, !tbaa !90
  %127 = fpext float %126 to double
  %128 = tail call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 4, double noundef %124, double noundef %127, double noundef 1.000000e+00), !range !38
  %129 = and i32 %128, %118
  br label %130

130:                                              ; preds = %121, %117
  %131 = phi i32 [ %129, %121 ], [ %118, %117 ]
  %132 = and i32 %1, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %136 = load i32, ptr %135, align 8, !tbaa !39
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %140 = load float, ptr %139, align 4, !tbaa !92
  %141 = fpext float %140 to double
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %143 = load float, ptr %142, align 4, !tbaa !92
  %144 = fpext float %143 to double
  %145 = tail call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 8, double noundef %141, double noundef %144, double noundef 1.000000e+00), !range !38
  %146 = and i32 %145, %131
  br label %147

147:                                              ; preds = %138, %134, %130
  %148 = phi i32 [ %146, %138 ], [ %131, %134 ], [ %131, %130 ]
  %149 = and i32 %1, 32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %13, align 4, !tbaa !55
  %153 = icmp eq i32 %152, 12
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %156 = load float, ptr %155, align 8, !tbaa !85
  %157 = fpext float %156 to double
  %158 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %159 = load float, ptr %158, align 8, !tbaa !85
  %160 = fpext float %159 to double
  %161 = tail call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 32, double noundef %157, double noundef %160, double noundef 1.000000e+00), !range !38
  %162 = and i32 %161, %148
  br label %163

163:                                              ; preds = %147, %151, %154, %79, %83, %86
  %164 = phi i32 [ %94, %86 ], [ %80, %83 ], [ %80, %79 ], [ %162, %154 ], [ %148, %151 ], [ %148, %147 ]
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i32
  ret i32 %166
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LinearStretchImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call dereferenceable_or_null(262144) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 4) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %82, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3400, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #8
  br label %82

12:                                               ; preds = %3
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 262144) #8
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !67
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %23, label %51

19:                                               ; preds = %50
  %20 = add nuw nsw i64 %24, 1
  %21 = load i64, ptr %16, align 8, !tbaa !67
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %51, !llvm.loop !161

23:                                               ; preds = %12, %19
  %24 = phi i64 [ %20, %19 ], [ 0, %12 ]
  %25 = load i64, ptr %15, align 8, !tbaa !68
  %26 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %24, i64 noundef %25, i64 noundef 1, ptr noundef nonnull %14) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %23
  %29 = load i64, ptr %15, align 8, !tbaa !68
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28, %42
  %32 = phi i64 [ %34, %42 ], [ %29, %28 ]
  %33 = phi ptr [ %48, %42 ], [ %26, %28 ]
  %34 = add nsw i64 %32, -1
  %35 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %33) #9
  %36 = fcmp ugt float %35, 0.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = fcmp ult float %35, 6.553500e+04
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = fadd float %35, 5.000000e-01
  %41 = fptoui float %40 to i16
  br label %42

42:                                               ; preds = %31, %37, %39
  %43 = phi i16 [ %41, %39 ], [ 0, %31 ], [ -1, %37 ]
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds float, ptr %4, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !124
  %47 = fadd float %46, 1.000000e+00
  store float %47, ptr %45, align 4, !tbaa !124
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 1
  %49 = icmp sgt i64 %32, 1
  br i1 %49, label %31, label %50, !llvm.loop !162

50:                                               ; preds = %42, %28
  br i1 %27, label %51, label %19

51:                                               ; preds = %19, %50, %23, %12
  br label %52

52:                                               ; preds = %51, %60
  %53 = phi i64 [ %61, %60 ], [ 0, %51 ]
  %54 = phi float [ %57, %60 ], [ 0.000000e+00, %51 ]
  %55 = getelementptr inbounds float, ptr %4, i64 %53
  %56 = load float, ptr %55, align 4, !tbaa !124
  %57 = fadd float %54, %56
  %58 = fpext float %57 to double
  %59 = fcmp ult double %58, %1
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = add nuw nsw i64 %53, 1
  %62 = icmp eq i64 %61, 65535
  br i1 %62, label %63, label %52, !llvm.loop !163

63:                                               ; preds = %52, %60
  %64 = phi i64 [ %53, %52 ], [ 65535, %60 ]
  br label %65

65:                                               ; preds = %63, %73
  %66 = phi i64 [ 65535, %63 ], [ %74, %73 ]
  %67 = phi float [ 0.000000e+00, %63 ], [ %70, %73 ]
  %68 = getelementptr inbounds float, ptr %4, i64 %66
  %69 = load float, ptr %68, align 4, !tbaa !124
  %70 = fadd float %67, %69
  %71 = fpext float %70 to double
  %72 = fcmp ult double %71, %2
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = add nsw i64 %66, -1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %65, !llvm.loop !164

76:                                               ; preds = %65, %73
  %77 = phi i64 [ %66, %65 ], [ 0, %73 ]
  %78 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #8
  %79 = sitofp i64 %64 to double
  %80 = sitofp i64 %77 to double
  %81 = tail call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %79, double noundef %80, double noundef 1.000000e+00), !range !38
  br label %82

82:                                               ; preds = %6, %8, %76
  %83 = phi i32 [ %81, %76 ], [ 0, %8 ], [ 0, %6 ]
  ret i32 %83
}

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ModulateImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca double, align 8
  %55 = alloca %struct._GeometryInfo, align 8
  %56 = alloca i16, align 2
  %57 = alloca i16, align 2
  %58 = alloca i16, align 2
  %59 = alloca i16, align 2
  %60 = alloca i16, align 2
  %61 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %55) #8
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %63 = load i32, ptr %62, align 8, !tbaa !56
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %67 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3728, ptr noundef nonnull @.str.2, ptr noundef nonnull %66) #8
  br label %68

68:                                               ; preds = %65, %2
  %69 = icmp eq ptr %1, null
  br i1 %69, label %614, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !55
  switch i32 %72, label %73 [
    i32 29, label %75
    i32 13, label %75
    i32 3, label %75
    i32 1, label %75
    i32 19, label %75
    i32 17, label %75
    i32 2, label %75
  ]

73:                                               ; preds = %70
  %74 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #8
  br label %75

75:                                               ; preds = %70, %70, %70, %70, %70, %70, %70, %73
  %76 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %55) #8
  %77 = load double, ptr %55, align 8, !tbaa !98
  %78 = getelementptr inbounds %struct._GeometryInfo, ptr %55, i64 0, i32 1
  %79 = load double, ptr %78, align 8, !tbaa !139
  %80 = and i32 %76, 8
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, double 1.000000e+02, double %79
  %83 = getelementptr inbounds %struct._GeometryInfo, ptr %55, i64 0, i32 2
  %84 = load double, ptr %83, align 8, !tbaa !140
  %85 = and i32 %76, 1
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, double 1.000000e+02, double %84
  %88 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.33) #8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %75
  %91 = call i64 @ParseCommandOption(i32 noundef 9, i32 noundef 0, ptr noundef nonnull %88) #8
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %90, %75
  %94 = phi i32 [ %92, %90 ], [ 0, %75 ]
  %95 = load i32, ptr %0, align 8, !tbaa !57
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %348

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %99 = load i64, ptr %98, align 8, !tbaa !58
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %348

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %103 = fmul double %77, 1.000000e-02
  %104 = fmul double %82, 1.000000e-02
  %105 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %106 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %107 = fmul double %77, 1.000000e-02
  %108 = fmul double %82, 1.000000e-02
  %109 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %110 = fmul double %82, 1.000000e-02
  %111 = fmul double %77, 1.000000e-02
  %112 = fmul double %77, 1.000000e-02
  %113 = fmul double %82, 1.000000e-02
  %114 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %115 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %116 = fmul double %82, 1.000000e-02
  %117 = fmul double %77, 1.000000e-02
  %118 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %119 = fmul double %82, 1.000000e-02
  %120 = fmul double %77, 1.000000e-02
  %121 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %122 = fmul double %82, 1.000000e-02
  %123 = fmul double %77, 1.000000e-02
  %124 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %125 = fmul double %82, 1.000000e-02
  %126 = fmul double %77, 1.000000e-02
  %127 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %128 = fmul double %82, 1.000000e-02
  %129 = fmul double %77, 1.000000e-02
  br label %130

130:                                              ; preds = %101, %337
  %131 = phi i64 [ 0, %101 ], [ %345, %337 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #8
  %132 = load ptr, ptr %102, align 8, !tbaa !59
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 %131, i32 2
  %134 = load i16, ptr %133, align 2, !tbaa !60
  store i16 %134, ptr %58, align 2, !tbaa !69
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 %131, i32 1
  %136 = load i16, ptr %135, align 2, !tbaa !61
  store i16 %136, ptr %57, align 2, !tbaa !69
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 %131
  %138 = load i16, ptr %137, align 2, !tbaa !62
  store i16 %138, ptr %56, align 2, !tbaa !69
  switch i32 %94, label %227 [
    i32 24, label %139
    i32 32, label %161
    i32 14, label %183
    i32 30, label %205
    i32 28, label %315
    i32 31, label %249
    i32 16, label %271
    i32 27, label %293
    i32 25, label %293
  ]

139:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %52) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %54) #8
  call void @ConvertRGBToHCL(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %52, ptr noundef nonnull %54, ptr noundef nonnull %53) #8
  %140 = load double, ptr %52, align 8, !tbaa !34
  %141 = call double @llvm.fmuladd.f64(double %124, double 5.000000e-01, double %140)
  %142 = fcmp olt double %141, 0.000000e+00
  br i1 %142, label %146, label %143

143:                                              ; preds = %146, %139
  %144 = phi double [ %141, %139 ], [ %148, %146 ]
  store double %144, ptr %52, align 8, !tbaa !34
  %145 = fcmp ogt double %144, 1.000000e+00
  br i1 %145, label %150, label %155

146:                                              ; preds = %139, %146
  %147 = phi double [ %148, %146 ], [ %141, %139 ]
  %148 = fadd double %147, 1.000000e+00
  %149 = fcmp olt double %148, 0.000000e+00
  br i1 %149, label %146, label %143, !llvm.loop !165

150:                                              ; preds = %143, %150
  %151 = phi double [ %152, %150 ], [ %144, %143 ]
  %152 = fadd double %151, -1.000000e+00
  %153 = fcmp ogt double %152, 1.000000e+00
  br i1 %153, label %150, label %154, !llvm.loop !166

154:                                              ; preds = %150
  store double %152, ptr %52, align 8, !tbaa !34
  br label %155

155:                                              ; preds = %154, %143
  %156 = phi double [ %152, %154 ], [ %144, %143 ]
  %157 = load double, ptr %54, align 8, !tbaa !34
  %158 = fmul double %125, %157
  store double %158, ptr %54, align 8, !tbaa !34
  %159 = load double, ptr %53, align 8, !tbaa !34
  %160 = fmul double %126, %159
  store double %160, ptr %53, align 8, !tbaa !34
  call void @ConvertHCLToRGB(double noundef %156, double noundef %158, double noundef %160, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %54) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %52) #8
  br label %337

161:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %51) #8
  call void @ConvertRGBToHCLp(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %49, ptr noundef nonnull %51, ptr noundef nonnull %50) #8
  %162 = load double, ptr %49, align 8, !tbaa !34
  %163 = call double @llvm.fmuladd.f64(double %121, double 5.000000e-01, double %162)
  %164 = fcmp olt double %163, 0.000000e+00
  br i1 %164, label %168, label %165

165:                                              ; preds = %168, %161
  %166 = phi double [ %163, %161 ], [ %170, %168 ]
  store double %166, ptr %49, align 8, !tbaa !34
  %167 = fcmp ogt double %166, 1.000000e+00
  br i1 %167, label %172, label %177

168:                                              ; preds = %161, %168
  %169 = phi double [ %170, %168 ], [ %163, %161 ]
  %170 = fadd double %169, 1.000000e+00
  %171 = fcmp olt double %170, 0.000000e+00
  br i1 %171, label %168, label %165, !llvm.loop !167

172:                                              ; preds = %165, %172
  %173 = phi double [ %174, %172 ], [ %166, %165 ]
  %174 = fadd double %173, -1.000000e+00
  %175 = fcmp ogt double %174, 1.000000e+00
  br i1 %175, label %172, label %176, !llvm.loop !168

176:                                              ; preds = %172
  store double %174, ptr %49, align 8, !tbaa !34
  br label %177

177:                                              ; preds = %176, %165
  %178 = phi double [ %174, %176 ], [ %166, %165 ]
  %179 = load double, ptr %51, align 8, !tbaa !34
  %180 = fmul double %122, %179
  store double %180, ptr %51, align 8, !tbaa !34
  %181 = load double, ptr %50, align 8, !tbaa !34
  %182 = fmul double %123, %181
  store double %182, ptr %50, align 8, !tbaa !34
  call void @ConvertHCLpToRGB(double noundef %178, double noundef %180, double noundef %182, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %51) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #8
  br label %337

183:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #8
  call void @ConvertRGBToHSB(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef nonnull %46) #8
  %184 = load double, ptr %47, align 8, !tbaa !34
  %185 = call double @llvm.fmuladd.f64(double %118, double 5.000000e-01, double %184)
  %186 = fcmp olt double %185, 0.000000e+00
  br i1 %186, label %190, label %187

187:                                              ; preds = %190, %183
  %188 = phi double [ %185, %183 ], [ %192, %190 ]
  store double %188, ptr %47, align 8, !tbaa !34
  %189 = fcmp ogt double %188, 1.000000e+00
  br i1 %189, label %194, label %199

190:                                              ; preds = %183, %190
  %191 = phi double [ %192, %190 ], [ %185, %183 ]
  %192 = fadd double %191, 1.000000e+00
  %193 = fcmp olt double %192, 0.000000e+00
  br i1 %193, label %190, label %187, !llvm.loop !169

194:                                              ; preds = %187, %194
  %195 = phi double [ %196, %194 ], [ %188, %187 ]
  %196 = fadd double %195, -1.000000e+00
  %197 = fcmp ogt double %196, 1.000000e+00
  br i1 %197, label %194, label %198, !llvm.loop !170

198:                                              ; preds = %194
  store double %196, ptr %47, align 8, !tbaa !34
  br label %199

199:                                              ; preds = %198, %187
  %200 = phi double [ %196, %198 ], [ %188, %187 ]
  %201 = load double, ptr %48, align 8, !tbaa !34
  %202 = fmul double %119, %201
  store double %202, ptr %48, align 8, !tbaa !34
  %203 = load double, ptr %46, align 8, !tbaa !34
  %204 = fmul double %120, %203
  store double %204, ptr %46, align 8, !tbaa !34
  call void @ConvertHSBToRGB(double noundef %200, double noundef %202, double noundef %204, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #8
  br label %337

205:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #8
  call void @ConvertRGBToHSI(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %44, ptr noundef nonnull %45, ptr noundef nonnull %43) #8
  %206 = load double, ptr %44, align 8, !tbaa !34
  %207 = call double @llvm.fmuladd.f64(double %115, double 5.000000e-01, double %206)
  %208 = fcmp olt double %207, 0.000000e+00
  br i1 %208, label %212, label %209

209:                                              ; preds = %212, %205
  %210 = phi double [ %207, %205 ], [ %214, %212 ]
  store double %210, ptr %44, align 8, !tbaa !34
  %211 = fcmp ogt double %210, 1.000000e+00
  br i1 %211, label %216, label %221

212:                                              ; preds = %205, %212
  %213 = phi double [ %214, %212 ], [ %207, %205 ]
  %214 = fadd double %213, 1.000000e+00
  %215 = fcmp olt double %214, 0.000000e+00
  br i1 %215, label %212, label %209, !llvm.loop !171

216:                                              ; preds = %209, %216
  %217 = phi double [ %218, %216 ], [ %210, %209 ]
  %218 = fadd double %217, -1.000000e+00
  %219 = fcmp ogt double %218, 1.000000e+00
  br i1 %219, label %216, label %220, !llvm.loop !172

220:                                              ; preds = %216
  store double %218, ptr %44, align 8, !tbaa !34
  br label %221

221:                                              ; preds = %220, %209
  %222 = phi double [ %218, %220 ], [ %210, %209 ]
  %223 = load double, ptr %45, align 8, !tbaa !34
  %224 = fmul double %116, %223
  store double %224, ptr %45, align 8, !tbaa !34
  %225 = load double, ptr %43, align 8, !tbaa !34
  %226 = fmul double %117, %225
  store double %226, ptr %43, align 8, !tbaa !34
  call void @ConvertHSIToRGB(double noundef %222, double noundef %224, double noundef %226, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #8
  br label %337

227:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #8
  call void @ConvertRGBToHSL(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %40, ptr noundef nonnull %42, ptr noundef nonnull %41) #8
  %228 = load double, ptr %40, align 8, !tbaa !34
  %229 = call double @llvm.fmuladd.f64(double %127, double 5.000000e-01, double %228)
  %230 = fcmp olt double %229, 0.000000e+00
  br i1 %230, label %234, label %231

231:                                              ; preds = %234, %227
  %232 = phi double [ %229, %227 ], [ %236, %234 ]
  store double %232, ptr %40, align 8, !tbaa !34
  %233 = fcmp ult double %232, 1.000000e+00
  br i1 %233, label %243, label %238

234:                                              ; preds = %227, %234
  %235 = phi double [ %236, %234 ], [ %229, %227 ]
  %236 = fadd double %235, 1.000000e+00
  %237 = fcmp olt double %236, 0.000000e+00
  br i1 %237, label %234, label %231, !llvm.loop !173

238:                                              ; preds = %231, %238
  %239 = phi double [ %240, %238 ], [ %232, %231 ]
  %240 = fadd double %239, -1.000000e+00
  %241 = fcmp ult double %240, 1.000000e+00
  br i1 %241, label %242, label %238, !llvm.loop !174

242:                                              ; preds = %238
  store double %240, ptr %40, align 8, !tbaa !34
  br label %243

243:                                              ; preds = %242, %231
  %244 = phi double [ %240, %242 ], [ %232, %231 ]
  %245 = load double, ptr %42, align 8, !tbaa !34
  %246 = fmul double %128, %245
  store double %246, ptr %42, align 8, !tbaa !34
  %247 = load double, ptr %41, align 8, !tbaa !34
  %248 = fmul double %129, %247
  store double %248, ptr %41, align 8, !tbaa !34
  call void @ConvertHSLToRGB(double noundef %244, double noundef %246, double noundef %248, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #8
  br label %337

249:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #8
  call void @ConvertRGBToHSV(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %39) #8
  %250 = load double, ptr %37, align 8, !tbaa !34
  %251 = call double @llvm.fmuladd.f64(double %109, double 5.000000e-01, double %250)
  %252 = fcmp olt double %251, 0.000000e+00
  br i1 %252, label %256, label %253

253:                                              ; preds = %256, %249
  %254 = phi double [ %251, %249 ], [ %258, %256 ]
  store double %254, ptr %37, align 8, !tbaa !34
  %255 = fcmp ult double %254, 1.000000e+00
  br i1 %255, label %265, label %260

256:                                              ; preds = %249, %256
  %257 = phi double [ %258, %256 ], [ %251, %249 ]
  %258 = fadd double %257, 1.000000e+00
  %259 = fcmp olt double %258, 0.000000e+00
  br i1 %259, label %256, label %253, !llvm.loop !175

260:                                              ; preds = %253, %260
  %261 = phi double [ %262, %260 ], [ %254, %253 ]
  %262 = fadd double %261, -1.000000e+00
  %263 = fcmp ult double %262, 1.000000e+00
  br i1 %263, label %264, label %260, !llvm.loop !176

264:                                              ; preds = %260
  store double %262, ptr %37, align 8, !tbaa !34
  br label %265

265:                                              ; preds = %264, %253
  %266 = phi double [ %262, %264 ], [ %254, %253 ]
  %267 = load double, ptr %38, align 8, !tbaa !34
  %268 = fmul double %110, %267
  store double %268, ptr %38, align 8, !tbaa !34
  %269 = load double, ptr %39, align 8, !tbaa !34
  %270 = fmul double %111, %269
  store double %270, ptr %39, align 8, !tbaa !34
  call void @ConvertHSVToRGB(double noundef %266, double noundef %268, double noundef %270, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #8
  br label %337

271:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #8
  call void @ConvertRGBToHWB(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %34) #8
  %272 = load double, ptr %35, align 8, !tbaa !34
  %273 = call double @llvm.fmuladd.f64(double %106, double 5.000000e-01, double %272)
  %274 = fcmp olt double %273, 0.000000e+00
  br i1 %274, label %278, label %275

275:                                              ; preds = %278, %271
  %276 = phi double [ %273, %271 ], [ %280, %278 ]
  store double %276, ptr %35, align 8, !tbaa !34
  %277 = fcmp ult double %276, 1.000000e+00
  br i1 %277, label %287, label %282

278:                                              ; preds = %271, %278
  %279 = phi double [ %280, %278 ], [ %273, %271 ]
  %280 = fadd double %279, 1.000000e+00
  %281 = fcmp olt double %280, 0.000000e+00
  br i1 %281, label %278, label %275, !llvm.loop !177

282:                                              ; preds = %275, %282
  %283 = phi double [ %284, %282 ], [ %276, %275 ]
  %284 = fadd double %283, -1.000000e+00
  %285 = fcmp ult double %284, 1.000000e+00
  br i1 %285, label %286, label %282, !llvm.loop !178

286:                                              ; preds = %282
  store double %284, ptr %35, align 8, !tbaa !34
  br label %287

287:                                              ; preds = %286, %275
  %288 = phi double [ %284, %286 ], [ %276, %275 ]
  %289 = load double, ptr %34, align 8, !tbaa !34
  %290 = fmul double %107, %289
  store double %290, ptr %34, align 8, !tbaa !34
  %291 = load double, ptr %36, align 8, !tbaa !34
  %292 = fmul double %108, %291
  store double %292, ptr %36, align 8, !tbaa !34
  call void @ConvertHWBToRGB(double noundef %288, double noundef %292, double noundef %290, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #8
  br label %337

293:                                              ; preds = %130, %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #8
  call void @ConvertRGBToLCHab(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %31) #8
  %294 = load double, ptr %32, align 8, !tbaa !34
  %295 = fmul double %103, %294
  store double %295, ptr %32, align 8, !tbaa !34
  %296 = load double, ptr %33, align 8, !tbaa !34
  %297 = fmul double %104, %296
  store double %297, ptr %33, align 8, !tbaa !34
  %298 = load double, ptr %31, align 8, !tbaa !34
  %299 = call double @llvm.fmuladd.f64(double %105, double 5.000000e-01, double %298)
  %300 = fcmp olt double %299, 0.000000e+00
  br i1 %300, label %304, label %301

301:                                              ; preds = %304, %293
  %302 = phi double [ %299, %293 ], [ %306, %304 ]
  store double %302, ptr %31, align 8, !tbaa !34
  %303 = fcmp ult double %302, 1.000000e+00
  br i1 %303, label %313, label %308

304:                                              ; preds = %293, %304
  %305 = phi double [ %306, %304 ], [ %299, %293 ]
  %306 = fadd double %305, 1.000000e+00
  %307 = fcmp olt double %306, 0.000000e+00
  br i1 %307, label %304, label %301, !llvm.loop !179

308:                                              ; preds = %301, %308
  %309 = phi double [ %310, %308 ], [ %302, %301 ]
  %310 = fadd double %309, -1.000000e+00
  %311 = fcmp ult double %310, 1.000000e+00
  br i1 %311, label %312, label %308, !llvm.loop !180

312:                                              ; preds = %308
  store double %310, ptr %31, align 8, !tbaa !34
  br label %313

313:                                              ; preds = %312, %301
  %314 = phi double [ %310, %312 ], [ %302, %301 ]
  call void @ConvertLCHabToRGB(double noundef %295, double noundef %297, double noundef %314, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #8
  br label %337

315:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #8
  call void @ConvertRGBToLCHuv(i16 noundef zeroext %134, i16 noundef zeroext %136, i16 noundef zeroext %138, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %28) #8
  %316 = load double, ptr %29, align 8, !tbaa !34
  %317 = fmul double %112, %316
  store double %317, ptr %29, align 8, !tbaa !34
  %318 = load double, ptr %30, align 8, !tbaa !34
  %319 = fmul double %113, %318
  store double %319, ptr %30, align 8, !tbaa !34
  %320 = load double, ptr %28, align 8, !tbaa !34
  %321 = call double @llvm.fmuladd.f64(double %114, double 5.000000e-01, double %320)
  %322 = fcmp olt double %321, 0.000000e+00
  br i1 %322, label %326, label %323

323:                                              ; preds = %326, %315
  %324 = phi double [ %321, %315 ], [ %328, %326 ]
  store double %324, ptr %28, align 8, !tbaa !34
  %325 = fcmp ult double %324, 1.000000e+00
  br i1 %325, label %335, label %330

326:                                              ; preds = %315, %326
  %327 = phi double [ %328, %326 ], [ %321, %315 ]
  %328 = fadd double %327, 1.000000e+00
  %329 = fcmp olt double %328, 0.000000e+00
  br i1 %329, label %326, label %323, !llvm.loop !181

330:                                              ; preds = %323, %330
  %331 = phi double [ %332, %330 ], [ %324, %323 ]
  %332 = fadd double %331, -1.000000e+00
  %333 = fcmp ult double %332, 1.000000e+00
  br i1 %333, label %334, label %330, !llvm.loop !182

334:                                              ; preds = %330
  store double %332, ptr %28, align 8, !tbaa !34
  br label %335

335:                                              ; preds = %334, %323
  %336 = phi double [ %332, %334 ], [ %324, %323 ]
  call void @ConvertLCHuvToRGB(double noundef %317, double noundef %319, double noundef %336, ptr noundef nonnull %58, ptr noundef nonnull %57, ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #8
  br label %337

337:                                              ; preds = %335, %313, %287, %265, %243, %221, %199, %177, %155
  %338 = load i16, ptr %58, align 2, !tbaa !69
  %339 = load ptr, ptr %102, align 8, !tbaa !59
  %340 = getelementptr inbounds %struct._PixelPacket, ptr %339, i64 %131, i32 2
  store i16 %338, ptr %340, align 2, !tbaa !60
  %341 = load i16, ptr %57, align 2, !tbaa !69
  %342 = getelementptr inbounds %struct._PixelPacket, ptr %339, i64 %131, i32 1
  store i16 %341, ptr %342, align 2, !tbaa !61
  %343 = load i16, ptr %56, align 2, !tbaa !69
  %344 = getelementptr inbounds %struct._PixelPacket, ptr %339, i64 %131
  store i16 %343, ptr %344, align 2, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #8
  %345 = add nuw nsw i64 %131, 1
  %346 = load i64, ptr %98, align 8, !tbaa !58
  %347 = icmp slt i64 %345, %346
  br i1 %347, label %130, label %348, !llvm.loop !183

348:                                              ; preds = %337, %97, %93
  %349 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %350 = call i32 @AccelerateModulateImage(ptr noundef nonnull %0, double noundef %77, double noundef %87, double noundef %82, i32 noundef %94, ptr noundef nonnull %349) #8
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %614

352:                                              ; preds = %348
  %353 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %349) #8
  %354 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %355 = load i64, ptr %354, align 8, !tbaa !67
  %356 = icmp sgt i64 %355, 0
  br i1 %356, label %357, label %611

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %359 = fmul double %77, 1.000000e-02
  %360 = fmul double %82, 1.000000e-02
  %361 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %362 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %363 = fmul double %77, 1.000000e-02
  %364 = fmul double %82, 1.000000e-02
  %365 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %366 = fmul double %82, 1.000000e-02
  %367 = fmul double %77, 1.000000e-02
  %368 = fmul double %77, 1.000000e-02
  %369 = fmul double %82, 1.000000e-02
  %370 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %371 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %372 = fmul double %82, 1.000000e-02
  %373 = fmul double %77, 1.000000e-02
  %374 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %375 = fmul double %82, 1.000000e-02
  %376 = fmul double %77, 1.000000e-02
  %377 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %378 = fmul double %82, 1.000000e-02
  %379 = fmul double %77, 1.000000e-02
  %380 = call double @llvm.fmuladd.f64(double %87, double 1.000000e-02, double -1.000000e+00)
  %381 = fmul double %82, 1.000000e-02
  %382 = fmul double %77, 1.000000e-02
  %383 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %384 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %385 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %386

386:                                              ; preds = %357, %605
  %387 = phi i64 [ 0, %357 ], [ %608, %605 ]
  %388 = phi i64 [ 0, %357 ], [ %607, %605 ]
  %389 = phi i32 [ 1, %357 ], [ %606, %605 ]
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %605, label %391

391:                                              ; preds = %386
  %392 = load i64, ptr %358, align 8, !tbaa !68
  %393 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %353, i64 noundef 0, i64 noundef %387, i64 noundef %392, i64 noundef 1, ptr noundef nonnull %349) #9
  %394 = icmp eq ptr %393, null
  br i1 %394, label %605, label %395

395:                                              ; preds = %391
  %396 = load i64, ptr %358, align 8, !tbaa !68
  %397 = icmp sgt i64 %396, 0
  br i1 %397, label %398, label %590

398:                                              ; preds = %395, %582
  %399 = phi i64 [ %587, %582 ], [ 0, %395 ]
  %400 = phi ptr [ %586, %582 ], [ %393, %395 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %61) #8
  %401 = getelementptr inbounds %struct._PixelPacket, ptr %400, i64 0, i32 2
  %402 = load i16, ptr %401, align 2, !tbaa !60
  store i16 %402, ptr %61, align 2, !tbaa !69
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %400, i64 0, i32 1
  %404 = load i16, ptr %403, align 2, !tbaa !61
  store i16 %404, ptr %60, align 2, !tbaa !69
  %405 = load i16, ptr %400, align 2, !tbaa !62
  store i16 %405, ptr %59, align 2, !tbaa !69
  switch i32 %94, label %472 [
    i32 24, label %406
    i32 32, label %428
    i32 14, label %450
    i32 28, label %560
    i32 31, label %494
    i32 16, label %516
    i32 27, label %538
    i32 25, label %560
  ]

406:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #8
  call void @ConvertRGBToHCL(i16 noundef zeroext %402, i16 noundef zeroext %404, i16 noundef zeroext %405, ptr noundef nonnull %25, ptr noundef nonnull %27, ptr noundef nonnull %26) #8
  %407 = load double, ptr %25, align 8, !tbaa !34
  %408 = call double @llvm.fmuladd.f64(double %377, double 5.000000e-01, double %407)
  %409 = fcmp olt double %408, 0.000000e+00
  br i1 %409, label %413, label %410

410:                                              ; preds = %413, %406
  %411 = phi double [ %408, %406 ], [ %415, %413 ]
  store double %411, ptr %25, align 8, !tbaa !34
  %412 = fcmp ogt double %411, 1.000000e+00
  br i1 %412, label %417, label %422

413:                                              ; preds = %406, %413
  %414 = phi double [ %415, %413 ], [ %408, %406 ]
  %415 = fadd double %414, 1.000000e+00
  %416 = fcmp olt double %415, 0.000000e+00
  br i1 %416, label %413, label %410, !llvm.loop !165

417:                                              ; preds = %410, %417
  %418 = phi double [ %419, %417 ], [ %411, %410 ]
  %419 = fadd double %418, -1.000000e+00
  %420 = fcmp ogt double %419, 1.000000e+00
  br i1 %420, label %417, label %421, !llvm.loop !166

421:                                              ; preds = %417
  store double %419, ptr %25, align 8, !tbaa !34
  br label %422

422:                                              ; preds = %421, %410
  %423 = phi double [ %419, %421 ], [ %411, %410 ]
  %424 = load double, ptr %27, align 8, !tbaa !34
  %425 = fmul double %378, %424
  store double %425, ptr %27, align 8, !tbaa !34
  %426 = load double, ptr %26, align 8, !tbaa !34
  %427 = fmul double %379, %426
  store double %427, ptr %26, align 8, !tbaa !34
  call void @ConvertHCLToRGB(double noundef %423, double noundef %425, double noundef %427, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #8
  br label %582

428:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #8
  call void @ConvertRGBToHCLp(i16 noundef zeroext %402, i16 noundef zeroext %404, i16 noundef zeroext %405, ptr noundef nonnull %22, ptr noundef nonnull %24, ptr noundef nonnull %23) #8
  %429 = load double, ptr %22, align 8, !tbaa !34
  %430 = call double @llvm.fmuladd.f64(double %374, double 5.000000e-01, double %429)
  %431 = fcmp olt double %430, 0.000000e+00
  br i1 %431, label %435, label %432

432:                                              ; preds = %435, %428
  %433 = phi double [ %430, %428 ], [ %437, %435 ]
  store double %433, ptr %22, align 8, !tbaa !34
  %434 = fcmp ogt double %433, 1.000000e+00
  br i1 %434, label %439, label %444

435:                                              ; preds = %428, %435
  %436 = phi double [ %437, %435 ], [ %430, %428 ]
  %437 = fadd double %436, 1.000000e+00
  %438 = fcmp olt double %437, 0.000000e+00
  br i1 %438, label %435, label %432, !llvm.loop !167

439:                                              ; preds = %432, %439
  %440 = phi double [ %441, %439 ], [ %433, %432 ]
  %441 = fadd double %440, -1.000000e+00
  %442 = fcmp ogt double %441, 1.000000e+00
  br i1 %442, label %439, label %443, !llvm.loop !168

443:                                              ; preds = %439
  store double %441, ptr %22, align 8, !tbaa !34
  br label %444

444:                                              ; preds = %443, %432
  %445 = phi double [ %441, %443 ], [ %433, %432 ]
  %446 = load double, ptr %24, align 8, !tbaa !34
  %447 = fmul double %375, %446
  store double %447, ptr %24, align 8, !tbaa !34
  %448 = load double, ptr %23, align 8, !tbaa !34
  %449 = fmul double %376, %448
  store double %449, ptr %23, align 8, !tbaa !34
  call void @ConvertHCLpToRGB(double noundef %445, double noundef %447, double noundef %449, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #8
  br label %582

450:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8
  call void @ConvertRGBToHSB(i16 noundef zeroext %402, i16 noundef zeroext %404, i16 noundef zeroext %405, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %19) #8
  %451 = load double, ptr %20, align 8, !tbaa !34
  %452 = call double @llvm.fmuladd.f64(double %371, double 5.000000e-01, double %451)
  %453 = fcmp olt double %452, 0.000000e+00
  br i1 %453, label %457, label %454

454:                                              ; preds = %457, %450
  %455 = phi double [ %452, %450 ], [ %459, %457 ]
  store double %455, ptr %20, align 8, !tbaa !34
  %456 = fcmp ogt double %455, 1.000000e+00
  br i1 %456, label %461, label %466

457:                                              ; preds = %450, %457
  %458 = phi double [ %459, %457 ], [ %452, %450 ]
  %459 = fadd double %458, 1.000000e+00
  %460 = fcmp olt double %459, 0.000000e+00
  br i1 %460, label %457, label %454, !llvm.loop !169

461:                                              ; preds = %454, %461
  %462 = phi double [ %463, %461 ], [ %455, %454 ]
  %463 = fadd double %462, -1.000000e+00
  %464 = fcmp ogt double %463, 1.000000e+00
  br i1 %464, label %461, label %465, !llvm.loop !170

465:                                              ; preds = %461
  store double %463, ptr %20, align 8, !tbaa !34
  br label %466

466:                                              ; preds = %465, %454
  %467 = phi double [ %463, %465 ], [ %455, %454 ]
  %468 = load double, ptr %21, align 8, !tbaa !34
  %469 = fmul double %372, %468
  store double %469, ptr %21, align 8, !tbaa !34
  %470 = load double, ptr %19, align 8, !tbaa !34
  %471 = fmul double %373, %470
  store double %471, ptr %19, align 8, !tbaa !34
  call void @ConvertHSBToRGB(double noundef %467, double noundef %469, double noundef %471, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8
  br label %582

472:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  call void @ConvertRGBToHSL(i16 noundef zeroext %402, i16 noundef zeroext %404, i16 noundef zeroext %405, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef nonnull %17) #8
  %473 = load double, ptr %16, align 8, !tbaa !34
  %474 = call double @llvm.fmuladd.f64(double %380, double 5.000000e-01, double %473)
  %475 = fcmp olt double %474, 0.000000e+00
  br i1 %475, label %479, label %476

476:                                              ; preds = %479, %472
  %477 = phi double [ %474, %472 ], [ %481, %479 ]
  store double %477, ptr %16, align 8, !tbaa !34
  %478 = fcmp ult double %477, 1.000000e+00
  br i1 %478, label %488, label %483

479:                                              ; preds = %472, %479
  %480 = phi double [ %481, %479 ], [ %474, %472 ]
  %481 = fadd double %480, 1.000000e+00
  %482 = fcmp olt double %481, 0.000000e+00
  br i1 %482, label %479, label %476, !llvm.loop !173

483:                                              ; preds = %476, %483
  %484 = phi double [ %485, %483 ], [ %477, %476 ]
  %485 = fadd double %484, -1.000000e+00
  %486 = fcmp ult double %485, 1.000000e+00
  br i1 %486, label %487, label %483, !llvm.loop !174

487:                                              ; preds = %483
  store double %485, ptr %16, align 8, !tbaa !34
  br label %488

488:                                              ; preds = %487, %476
  %489 = phi double [ %485, %487 ], [ %477, %476 ]
  %490 = load double, ptr %18, align 8, !tbaa !34
  %491 = fmul double %381, %490
  store double %491, ptr %18, align 8, !tbaa !34
  %492 = load double, ptr %17, align 8, !tbaa !34
  %493 = fmul double %382, %492
  store double %493, ptr %17, align 8, !tbaa !34
  call void @ConvertHSLToRGB(double noundef %489, double noundef %491, double noundef %493, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  br label %582

494:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  call void @ConvertRGBToHSV(i16 noundef zeroext %402, i16 noundef zeroext %404, i16 noundef zeroext %405, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  %495 = load double, ptr %13, align 8, !tbaa !34
  %496 = call double @llvm.fmuladd.f64(double %365, double 5.000000e-01, double %495)
  %497 = fcmp olt double %496, 0.000000e+00
  br i1 %497, label %501, label %498

498:                                              ; preds = %501, %494
  %499 = phi double [ %496, %494 ], [ %503, %501 ]
  store double %499, ptr %13, align 8, !tbaa !34
  %500 = fcmp ult double %499, 1.000000e+00
  br i1 %500, label %510, label %505

501:                                              ; preds = %494, %501
  %502 = phi double [ %503, %501 ], [ %496, %494 ]
  %503 = fadd double %502, 1.000000e+00
  %504 = fcmp olt double %503, 0.000000e+00
  br i1 %504, label %501, label %498, !llvm.loop !175

505:                                              ; preds = %498, %505
  %506 = phi double [ %507, %505 ], [ %499, %498 ]
  %507 = fadd double %506, -1.000000e+00
  %508 = fcmp ult double %507, 1.000000e+00
  br i1 %508, label %509, label %505, !llvm.loop !176

509:                                              ; preds = %505
  store double %507, ptr %13, align 8, !tbaa !34
  br label %510

510:                                              ; preds = %509, %498
  %511 = phi double [ %507, %509 ], [ %499, %498 ]
  %512 = load double, ptr %14, align 8, !tbaa !34
  %513 = fmul double %366, %512
  store double %513, ptr %14, align 8, !tbaa !34
  %514 = load double, ptr %15, align 8, !tbaa !34
  %515 = fmul double %367, %514
  store double %515, ptr %15, align 8, !tbaa !34
  call void @ConvertHSVToRGB(double noundef %511, double noundef %513, double noundef %515, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  br label %582

516:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @ConvertRGBToHWB(i16 noundef zeroext %402, i16 noundef zeroext %404, i16 noundef zeroext %405, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %10) #8
  %517 = load double, ptr %11, align 8, !tbaa !34
  %518 = call double @llvm.fmuladd.f64(double %362, double 5.000000e-01, double %517)
  %519 = fcmp olt double %518, 0.000000e+00
  br i1 %519, label %523, label %520

520:                                              ; preds = %523, %516
  %521 = phi double [ %518, %516 ], [ %525, %523 ]
  store double %521, ptr %11, align 8, !tbaa !34
  %522 = fcmp ult double %521, 1.000000e+00
  br i1 %522, label %532, label %527

523:                                              ; preds = %516, %523
  %524 = phi double [ %525, %523 ], [ %518, %516 ]
  %525 = fadd double %524, 1.000000e+00
  %526 = fcmp olt double %525, 0.000000e+00
  br i1 %526, label %523, label %520, !llvm.loop !177

527:                                              ; preds = %520, %527
  %528 = phi double [ %529, %527 ], [ %521, %520 ]
  %529 = fadd double %528, -1.000000e+00
  %530 = fcmp ult double %529, 1.000000e+00
  br i1 %530, label %531, label %527, !llvm.loop !178

531:                                              ; preds = %527
  store double %529, ptr %11, align 8, !tbaa !34
  br label %532

532:                                              ; preds = %531, %520
  %533 = phi double [ %529, %531 ], [ %521, %520 ]
  %534 = load double, ptr %10, align 8, !tbaa !34
  %535 = fmul double %363, %534
  store double %535, ptr %10, align 8, !tbaa !34
  %536 = load double, ptr %12, align 8, !tbaa !34
  %537 = fmul double %364, %536
  store double %537, ptr %12, align 8, !tbaa !34
  call void @ConvertHWBToRGB(double noundef %533, double noundef %537, double noundef %535, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %582

538:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @ConvertRGBToLCHab(i16 noundef zeroext %402, i16 noundef zeroext %404, i16 noundef zeroext %405, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #8
  %539 = load double, ptr %8, align 8, !tbaa !34
  %540 = fmul double %359, %539
  store double %540, ptr %8, align 8, !tbaa !34
  %541 = load double, ptr %9, align 8, !tbaa !34
  %542 = fmul double %360, %541
  store double %542, ptr %9, align 8, !tbaa !34
  %543 = load double, ptr %7, align 8, !tbaa !34
  %544 = call double @llvm.fmuladd.f64(double %361, double 5.000000e-01, double %543)
  %545 = fcmp olt double %544, 0.000000e+00
  br i1 %545, label %549, label %546

546:                                              ; preds = %549, %538
  %547 = phi double [ %544, %538 ], [ %551, %549 ]
  store double %547, ptr %7, align 8, !tbaa !34
  %548 = fcmp ult double %547, 1.000000e+00
  br i1 %548, label %558, label %553

549:                                              ; preds = %538, %549
  %550 = phi double [ %551, %549 ], [ %544, %538 ]
  %551 = fadd double %550, 1.000000e+00
  %552 = fcmp olt double %551, 0.000000e+00
  br i1 %552, label %549, label %546, !llvm.loop !179

553:                                              ; preds = %546, %553
  %554 = phi double [ %555, %553 ], [ %547, %546 ]
  %555 = fadd double %554, -1.000000e+00
  %556 = fcmp ult double %555, 1.000000e+00
  br i1 %556, label %557, label %553, !llvm.loop !180

557:                                              ; preds = %553
  store double %555, ptr %7, align 8, !tbaa !34
  br label %558

558:                                              ; preds = %557, %546
  %559 = phi double [ %555, %557 ], [ %547, %546 ]
  call void @ConvertLCHabToRGB(double noundef %540, double noundef %542, double noundef %559, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %582

560:                                              ; preds = %398, %398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @ConvertRGBToLCHuv(i16 noundef zeroext %402, i16 noundef zeroext %404, i16 noundef zeroext %405, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #8
  %561 = load double, ptr %5, align 8, !tbaa !34
  %562 = fmul double %368, %561
  store double %562, ptr %5, align 8, !tbaa !34
  %563 = load double, ptr %6, align 8, !tbaa !34
  %564 = fmul double %369, %563
  store double %564, ptr %6, align 8, !tbaa !34
  %565 = load double, ptr %4, align 8, !tbaa !34
  %566 = call double @llvm.fmuladd.f64(double %370, double 5.000000e-01, double %565)
  %567 = fcmp olt double %566, 0.000000e+00
  br i1 %567, label %571, label %568

568:                                              ; preds = %571, %560
  %569 = phi double [ %566, %560 ], [ %573, %571 ]
  store double %569, ptr %4, align 8, !tbaa !34
  %570 = fcmp ult double %569, 1.000000e+00
  br i1 %570, label %580, label %575

571:                                              ; preds = %560, %571
  %572 = phi double [ %573, %571 ], [ %566, %560 ]
  %573 = fadd double %572, 1.000000e+00
  %574 = fcmp olt double %573, 0.000000e+00
  br i1 %574, label %571, label %568, !llvm.loop !181

575:                                              ; preds = %568, %575
  %576 = phi double [ %577, %575 ], [ %569, %568 ]
  %577 = fadd double %576, -1.000000e+00
  %578 = fcmp ult double %577, 1.000000e+00
  br i1 %578, label %579, label %575, !llvm.loop !182

579:                                              ; preds = %575
  store double %577, ptr %4, align 8, !tbaa !34
  br label %580

580:                                              ; preds = %579, %568
  %581 = phi double [ %577, %579 ], [ %569, %568 ]
  call void @ConvertLCHuvToRGB(double noundef %562, double noundef %564, double noundef %581, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %582

582:                                              ; preds = %580, %558, %532, %510, %488, %466, %444, %422
  %583 = load i16, ptr %61, align 2, !tbaa !69
  store i16 %583, ptr %401, align 2, !tbaa !60
  %584 = load i16, ptr %60, align 2, !tbaa !69
  store i16 %584, ptr %403, align 2, !tbaa !61
  %585 = load i16, ptr %59, align 2, !tbaa !69
  store i16 %585, ptr %400, align 2, !tbaa !62
  %586 = getelementptr inbounds %struct._PixelPacket, ptr %400, i64 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %61) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #8
  %587 = add nuw nsw i64 %399, 1
  %588 = load i64, ptr %358, align 8, !tbaa !68
  %589 = icmp slt i64 %587, %588
  br i1 %589, label %398, label %590, !llvm.loop !184

590:                                              ; preds = %582, %395
  %591 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %353, ptr noundef nonnull %349) #9
  %592 = icmp ne i32 %591, 0
  %593 = zext i1 %592 to i32
  %594 = load ptr, ptr %383, align 8, !tbaa !71
  %595 = icmp eq ptr %594, null
  br i1 %595, label %605, label %596

596:                                              ; preds = %590
  %597 = add nsw i64 %388, 1
  %598 = load i64, ptr %354, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #8
  %599 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, ptr noundef nonnull %384) #8
  %600 = load ptr, ptr %383, align 8, !tbaa !71
  %601 = load ptr, ptr %385, align 8, !tbaa !72
  %602 = call i32 %600(ptr noundef nonnull %3, i64 noundef %388, i64 noundef %598, ptr noundef %601) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #8
  %603 = icmp eq i32 %602, 0
  %604 = select i1 %603, i32 0, i32 %593
  br label %605

605:                                              ; preds = %590, %596, %391, %386
  %606 = phi i32 [ 0, %386 ], [ 0, %391 ], [ %604, %596 ], [ %593, %590 ]
  %607 = phi i64 [ %388, %386 ], [ %388, %391 ], [ %597, %596 ], [ %388, %590 ]
  %608 = add nuw nsw i64 %387, 1
  %609 = load i64, ptr %354, align 8, !tbaa !67
  %610 = icmp slt i64 %608, %609
  br i1 %610, label %386, label %611, !llvm.loop !185

611:                                              ; preds = %605, %352
  %612 = phi i32 [ 1, %352 ], [ %606, %605 ]
  %613 = call ptr @DestroyCacheView(ptr noundef %353) #8
  br label %614

614:                                              ; preds = %348, %68, %611
  %615 = phi i32 [ %612, %611 ], [ 0, %68 ], [ %350, %348 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %55) #8
  ret i32 %615
}

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @AccelerateModulateImage(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @NegateImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @NegateImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1), !range !38
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NegateImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4011, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i32, ptr %0, align 8, !tbaa !57
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %65

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %17 = load i64, ptr %16, align 8, !tbaa !58
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = icmp eq i32 %2, 0
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %25 = and i32 %1, 2
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %28 = and i32 %1, 4
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %31

31:                                               ; preds = %19, %62
  %32 = phi i64 [ 0, %19 ], [ %63, %62 ]
  br i1 %20, label %44, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %21, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %32, i32 2
  %36 = load i16, ptr %35, align 2, !tbaa !60
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %32, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !61
  %39 = icmp eq i16 %36, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %32
  %42 = load i16, ptr %41, align 2, !tbaa !62
  %43 = icmp eq i16 %38, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40, %31
  br i1 %23, label %50, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %24, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 %32, i32 2
  %48 = load i16, ptr %47, align 2, !tbaa !60
  %49 = xor i16 %48, -1
  store i16 %49, ptr %47, align 2, !tbaa !60
  br label %50

50:                                               ; preds = %45, %44
  br i1 %26, label %56, label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %27, align 8, !tbaa !59
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %52, i64 %32, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !61
  %55 = xor i16 %54, -1
  store i16 %55, ptr %53, align 2, !tbaa !61
  br label %56

56:                                               ; preds = %51, %50
  br i1 %29, label %62, label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %30, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 %32
  %60 = load i16, ptr %59, align 2, !tbaa !62
  %61 = xor i16 %60, -1
  store i16 %61, ptr %59, align 2, !tbaa !62
  br label %62

62:                                               ; preds = %56, %57, %33, %40
  %63 = add nuw nsw i64 %32, 1
  %64 = icmp eq i64 %63, %17
  br i1 %64, label %65, label %31, !llvm.loop !186

65:                                               ; preds = %62, %15, %12
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %67 = tail call i32 @AccelerateNegateImageChannel(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %66) #8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %278, label %69

69:                                               ; preds = %65
  %70 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %66) #8
  %71 = icmp eq i32 %2, 0
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %73 = load i64, ptr %72, align 8, !tbaa !67
  %74 = icmp sgt i64 %73, 0
  br i1 %71, label %92, label %75

75:                                               ; preds = %69
  br i1 %74, label %76, label %275

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %78 = and i32 %1, 1
  %79 = icmp eq i32 %78, 0
  %80 = and i32 %1, 2
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %1, 4
  %83 = icmp eq i32 %82, 0
  %84 = and i32 %1, 8
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %1, 32
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %89 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %90 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %110

92:                                               ; preds = %69
  br i1 %74, label %93, label %275

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %95 = icmp eq i32 %1, 134217719
  %96 = and i32 %1, 1
  %97 = icmp eq i32 %96, 0
  %98 = and i32 %1, 2
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %1, 4
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %1, 8
  %103 = icmp eq i32 %102, 0
  %104 = and i32 %1, 32
  %105 = icmp eq i32 %104, 0
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %184

110:                                              ; preds = %76, %178
  %111 = phi i32 [ 1, %76 ], [ %180, %178 ]
  %112 = phi i64 [ 0, %76 ], [ %179, %178 ]
  %113 = phi i64 [ 0, %76 ], [ %181, %178 ]
  %114 = icmp eq i32 %111, 0
  br i1 %114, label %178, label %115

115:                                              ; preds = %110
  %116 = load i64, ptr %77, align 8, !tbaa !68
  %117 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %70, i64 noundef 0, i64 noundef %113, i64 noundef %116, i64 noundef 1, ptr noundef nonnull %66) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %178, label %119

119:                                              ; preds = %115
  %120 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %70) #8
  %121 = load i64, ptr %77, align 8, !tbaa !68
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %163

123:                                              ; preds = %119
  %124 = icmp eq ptr %120, null
  br label %125

125:                                              ; preds = %123, %159
  %126 = phi i64 [ 0, %123 ], [ %161, %159 ]
  %127 = phi ptr [ %117, %123 ], [ %160, %159 ]
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 2
  %129 = load i16, ptr %128, align 2, !tbaa !60
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 1
  %131 = load i16, ptr %130, align 2, !tbaa !61
  %132 = icmp eq i16 %129, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %125
  %134 = load i16, ptr %127, align 2, !tbaa !62
  %135 = icmp eq i16 %131, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %133
  br i1 %79, label %139, label %137

137:                                              ; preds = %136
  %138 = xor i16 %129, -1
  store i16 %138, ptr %128, align 2, !tbaa !60
  br label %139

139:                                              ; preds = %137, %136
  br i1 %81, label %142, label %140

140:                                              ; preds = %139
  %141 = xor i16 %131, -1
  store i16 %141, ptr %130, align 2, !tbaa !61
  br label %142

142:                                              ; preds = %140, %139
  br i1 %83, label %145, label %143

143:                                              ; preds = %142
  %144 = xor i16 %134, -1
  store i16 %144, ptr %127, align 2, !tbaa !62
  br label %145

145:                                              ; preds = %143, %142
  br i1 %85, label %150, label %146

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 3
  %148 = load i16, ptr %147, align 2, !tbaa !63
  %149 = xor i16 %148, -1
  store i16 %149, ptr %147, align 2, !tbaa !63
  br label %150

150:                                              ; preds = %146, %145
  br i1 %87, label %159, label %151

151:                                              ; preds = %150
  %152 = load i32, ptr %88, align 4, !tbaa !55
  %153 = icmp ne i32 %152, 12
  %154 = select i1 %153, i1 true, i1 %124
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds i16, ptr %120, i64 %126
  %157 = load i16, ptr %156, align 2, !tbaa !69
  %158 = xor i16 %157, -1
  store i16 %158, ptr %156, align 2, !tbaa !69
  br label %159

159:                                              ; preds = %150, %151, %155, %125, %133
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 1
  %161 = add nuw nsw i64 %126, 1
  %162 = icmp eq i64 %161, %121
  br i1 %162, label %163, label %125, !llvm.loop !187

163:                                              ; preds = %159, %119
  %164 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %70, ptr noundef nonnull %66) #9
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i32
  %167 = load ptr, ptr %89, align 8, !tbaa !71
  %168 = icmp eq ptr %167, null
  br i1 %168, label %178, label %169

169:                                              ; preds = %163
  %170 = add nsw i64 %112, 1
  %171 = load i64, ptr %72, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  %172 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, ptr noundef nonnull %90) #8
  %173 = load ptr, ptr %89, align 8, !tbaa !71
  %174 = load ptr, ptr %91, align 8, !tbaa !72
  %175 = call i32 %173(ptr noundef nonnull %5, i64 noundef %112, i64 noundef %171, ptr noundef %174) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i32 0, i32 %166
  br label %178

178:                                              ; preds = %163, %169, %115, %110
  %179 = phi i64 [ %112, %110 ], [ %112, %115 ], [ %170, %169 ], [ %112, %163 ]
  %180 = phi i32 [ 0, %110 ], [ 0, %115 ], [ %177, %169 ], [ %166, %163 ]
  %181 = add nuw nsw i64 %113, 1
  %182 = load i64, ptr %72, align 8, !tbaa !67
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %110, label %275, !llvm.loop !188

184:                                              ; preds = %93, %269
  %185 = phi i32 [ 1, %93 ], [ %271, %269 ]
  %186 = phi i64 [ 0, %93 ], [ %270, %269 ]
  %187 = phi i64 [ 0, %93 ], [ %272, %269 ]
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %269, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %94, align 8, !tbaa !68
  %191 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %70, i64 noundef 0, i64 noundef %187, i64 noundef %190, i64 noundef 1, ptr noundef nonnull %66) #9
  %192 = icmp eq ptr %191, null
  br i1 %192, label %269, label %193

193:                                              ; preds = %189
  %194 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %70) #8
  %195 = load i64, ptr %94, align 8, !tbaa !68
  %196 = icmp sgt i64 %195, 0
  br i1 %95, label %198, label %197

197:                                              ; preds = %193
  br i1 %196, label %212, label %236

198:                                              ; preds = %193
  br i1 %196, label %199, label %236

199:                                              ; preds = %198, %199
  %200 = phi i64 [ %210, %199 ], [ 0, %198 ]
  %201 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 %200
  %202 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 %200, i32 2
  %203 = load i16, ptr %202, align 2, !tbaa !60
  %204 = xor i16 %203, -1
  store i16 %204, ptr %202, align 2, !tbaa !60
  %205 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 %200, i32 1
  %206 = load i16, ptr %205, align 2, !tbaa !61
  %207 = xor i16 %206, -1
  store i16 %207, ptr %205, align 2, !tbaa !61
  %208 = load i16, ptr %201, align 2, !tbaa !62
  %209 = xor i16 %208, -1
  store i16 %209, ptr %201, align 2, !tbaa !62
  %210 = add nuw nsw i64 %200, 1
  %211 = icmp eq i64 %210, %195
  br i1 %211, label %236, label %199, !llvm.loop !189

212:                                              ; preds = %197, %233
  %213 = phi i64 [ %234, %233 ], [ 0, %197 ]
  br i1 %97, label %218, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 %213, i32 2
  %216 = load i16, ptr %215, align 2, !tbaa !60
  %217 = xor i16 %216, -1
  store i16 %217, ptr %215, align 2, !tbaa !60
  br label %218

218:                                              ; preds = %214, %212
  br i1 %99, label %223, label %219

219:                                              ; preds = %218
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 %213, i32 1
  %221 = load i16, ptr %220, align 2, !tbaa !61
  %222 = xor i16 %221, -1
  store i16 %222, ptr %220, align 2, !tbaa !61
  br label %223

223:                                              ; preds = %219, %218
  br i1 %101, label %228, label %224

224:                                              ; preds = %223
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 %213
  %226 = load i16, ptr %225, align 2, !tbaa !62
  %227 = xor i16 %226, -1
  store i16 %227, ptr %225, align 2, !tbaa !62
  br label %228

228:                                              ; preds = %224, %223
  br i1 %103, label %233, label %229

229:                                              ; preds = %228
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 %213, i32 3
  %231 = load i16, ptr %230, align 2, !tbaa !63
  %232 = xor i16 %231, -1
  store i16 %232, ptr %230, align 2, !tbaa !63
  br label %233

233:                                              ; preds = %228, %229
  %234 = add nuw nsw i64 %213, 1
  %235 = icmp eq i64 %234, %195
  br i1 %235, label %236, label %212, !llvm.loop !190

236:                                              ; preds = %233, %199, %197, %198
  br i1 %105, label %254, label %237

237:                                              ; preds = %236
  %238 = load i32, ptr %106, align 4, !tbaa !55
  %239 = icmp eq i32 %238, 12
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load i64, ptr %94, align 8, !tbaa !68
  %242 = icmp sgt i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = icmp eq ptr %194, null
  br label %245

245:                                              ; preds = %243, %251
  %246 = phi i64 [ 0, %243 ], [ %252, %251 ]
  br i1 %244, label %251, label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds i16, ptr %194, i64 %246
  %249 = load i16, ptr %248, align 2, !tbaa !69
  %250 = xor i16 %249, -1
  store i16 %250, ptr %248, align 2, !tbaa !69
  br label %251

251:                                              ; preds = %245, %247
  %252 = add nuw nsw i64 %246, 1
  %253 = icmp eq i64 %252, %241
  br i1 %253, label %254, label %245, !llvm.loop !191

254:                                              ; preds = %251, %240, %237, %236
  %255 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %70, ptr noundef nonnull %66) #9
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i32
  %258 = load ptr, ptr %107, align 8, !tbaa !71
  %259 = icmp eq ptr %258, null
  br i1 %259, label %269, label %260

260:                                              ; preds = %254
  %261 = add nsw i64 %186, 1
  %262 = load i64, ptr %72, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %263 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, ptr noundef nonnull %108) #8
  %264 = load ptr, ptr %107, align 8, !tbaa !71
  %265 = load ptr, ptr %109, align 8, !tbaa !72
  %266 = call i32 %264(ptr noundef nonnull %4, i64 noundef %186, i64 noundef %262, ptr noundef %265) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, i32 0, i32 %257
  br label %269

269:                                              ; preds = %254, %260, %189, %184
  %270 = phi i64 [ %186, %184 ], [ %186, %189 ], [ %261, %260 ], [ %186, %254 ]
  %271 = phi i32 [ 0, %184 ], [ 0, %189 ], [ %268, %260 ], [ %257, %254 ]
  %272 = add nuw nsw i64 %187, 1
  %273 = load i64, ptr %72, align 8, !tbaa !67
  %274 = icmp slt i64 %272, %273
  br i1 %274, label %184, label %275, !llvm.loop !192

275:                                              ; preds = %178, %269, %92, %75
  %276 = phi i32 [ 1, %75 ], [ 1, %92 ], [ %271, %269 ], [ 1, %178 ]
  %277 = call ptr @DestroyCacheView(ptr noundef %70) #8
  br label %278

278:                                              ; preds = %275, %65
  %279 = phi i32 [ 1, %65 ], [ %276, %275 ]
  ret i32 %279
}

declare i32 @AccelerateNegateImageChannel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @NormalizeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %3 = load i64, ptr %2, align 8, !tbaa !68
  %4 = uitofp i64 %3 to double
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %6 = load i64, ptr %5, align 8, !tbaa !67
  %7 = uitofp i64 %6 to double
  %8 = fmul double %4, %7
  %9 = fmul double %8, 1.500000e-03
  %10 = fmul double %8, 9.995000e-01
  %11 = tail call i32 @ContrastStretchImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %9, double noundef %10), !range !38
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NormalizeImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !68
  %5 = uitofp i64 %4 to double
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !67
  %8 = uitofp i64 %7 to double
  %9 = fmul double %5, %8
  %10 = fmul double %9, 1.500000e-03
  %11 = fmul double %9, 9.995000e-01
  %12 = tail call i32 @ContrastStretchImageChannel(ptr noundef %0, i32 noundef %1, double noundef %10, double noundef %11), !range !38
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SigmoidalContrastImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  %5 = call i32 @ParseGeometry(ptr noundef %2, ptr noundef nonnull %4) #8
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  store double 3.276750e+04, ptr %9, align 8, !tbaa !139
  br label %10

10:                                               ; preds = %8, %3
  %11 = and i32 %5, 4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %15 = load double, ptr %14, align 8, !tbaa !139
  %16 = fmul double %15, 6.553500e+04
  %17 = fdiv double %16, 1.000000e+02
  store double %17, ptr %14, align 8, !tbaa !139
  br label %18

18:                                               ; preds = %13, %10
  %19 = load double, ptr %4, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !139
  %22 = call i32 @SigmoidalContrastImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, double noundef %19, double noundef %21), !range !38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SigmoidalContrastImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = fcmp olt double %3, 1.000000e-15
  br i1 %7, label %332, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4423, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #8
  br label %15

15:                                               ; preds = %12, %8
  %16 = tail call dereferenceable_or_null(262144) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 4) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = icmp eq ptr %0, null
  br i1 %19, label %332, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4428, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %22) #8
  br label %332

24:                                               ; preds = %15
  %25 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %16, i32 noundef 0, i64 noundef 262144) #8
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = fmul double %3, 5.000000e-01
  %29 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double 0.000000e+00)
  %30 = fmul double %28, %29
  %31 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double 1.000000e+00)
  %32 = fmul double %28, %31
  br label %41

33:                                               ; preds = %24
  %34 = fmul double %4, 0x3EF0001000100010
  %35 = fmul double %3, 5.000000e-01
  %36 = fsub double 0.000000e+00, %34
  %37 = fmul double %35, %36
  %38 = fsub double 1.000000e+00, %34
  %39 = fmul double %35, %38
  %40 = fdiv double 2.000000e+00, %3
  br label %69

41:                                               ; preds = %27, %63
  %42 = phi i64 [ 0, %27 ], [ %67, %63 ]
  %43 = sitofp i64 %42 to double
  %44 = fdiv double %43, 6.553500e+04
  %45 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double %44)
  %46 = fmul double %28, %45
  %47 = tail call double @tanh(double noundef %46) #8
  %48 = tail call double @tanh(double noundef %30) #8
  %49 = fsub double %47, %48
  %50 = tail call double @tanh(double noundef %32) #8
  %51 = tail call double @tanh(double noundef %30) #8
  %52 = fsub double %50, %51
  %53 = fdiv double %49, %52
  %54 = fmul double %53, 6.553500e+04
  %55 = fptrunc double %54 to float
  %56 = fpext float %55 to double
  %57 = fcmp ugt float %55, 0.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  %59 = fcmp ult float %55, 6.553500e+04
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = fadd double %56, 5.000000e-01
  %62 = fptoui double %61 to i16
  br label %63

63:                                               ; preds = %41, %58, %60
  %64 = phi i16 [ %62, %60 ], [ 0, %41 ], [ -1, %58 ]
  %65 = uitofp i16 %64 to float
  %66 = getelementptr inbounds float, ptr %16, i64 %42
  store float %65, ptr %66, align 4, !tbaa !124
  %67 = add nuw nsw i64 %42, 1
  %68 = icmp eq i64 %67, 65536
  br i1 %68, label %98, label %41, !llvm.loop !193

69:                                               ; preds = %33, %92
  %70 = phi i64 [ 0, %33 ], [ %96, %92 ]
  %71 = sitofp i64 %70 to double
  %72 = fdiv double %71, 6.553500e+04
  %73 = tail call double @tanh(double noundef %37) #8
  %74 = tail call double @tanh(double noundef %39) #8
  %75 = fsub double %74, %73
  %76 = tail call double @llvm.fmuladd.f64(double %75, double %72, double %73)
  %77 = fcmp olt double %76, 0xBFEFFFFFFFFFFFF7
  %78 = fcmp ogt double %76, 0x3FEFFFFFFFFFFFF7
  %79 = select i1 %78, double 0x3FEFFFFFFFFFFFF7, double %76
  %80 = select i1 %77, double 0xBFEFFFFFFFFFFFF7, double %79
  %81 = tail call double @atanh(double noundef %80) #8
  %82 = tail call double @llvm.fmuladd.f64(double %40, double %81, double %34)
  %83 = fmul double %82, 6.553500e+04
  %84 = fptrunc double %83 to float
  %85 = fpext float %84 to double
  %86 = fcmp ugt float %84, 0.000000e+00
  br i1 %86, label %87, label %92

87:                                               ; preds = %69
  %88 = fcmp ult float %84, 6.553500e+04
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = fadd double %85, 5.000000e-01
  %91 = fptoui double %90 to i16
  br label %92

92:                                               ; preds = %69, %87, %89
  %93 = phi i16 [ %91, %89 ], [ 0, %69 ], [ -1, %87 ]
  %94 = uitofp i16 %93 to float
  %95 = getelementptr inbounds float, ptr %16, i64 %70
  store float %94, ptr %95, align 4, !tbaa !124
  %96 = add nuw nsw i64 %70, 1
  %97 = icmp eq i64 %96, 65536
  br i1 %97, label %98, label %69, !llvm.loop !194

98:                                               ; preds = %63, %92
  %99 = load i32, ptr %0, align 8, !tbaa !57
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %186

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %103 = load i64, ptr %102, align 8, !tbaa !58
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %186

105:                                              ; preds = %101
  %106 = and i32 %1, 1
  %107 = icmp eq i32 %106, 0
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %109 = and i32 %1, 2
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %112 = and i32 %1, 4
  %113 = icmp eq i32 %112, 0
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %115 = and i32 %1, 8
  %116 = icmp eq i32 %115, 0
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %118

118:                                              ; preds = %105, %183
  %119 = phi i64 [ 0, %105 ], [ %184, %183 ]
  br i1 %107, label %135, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %108, align 8, !tbaa !59
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %121, i64 %119, i32 2
  %123 = load i16, ptr %122, align 2, !tbaa !60
  %124 = zext i16 %123 to i64
  %125 = getelementptr inbounds float, ptr %16, i64 %124
  %126 = load float, ptr %125, align 4, !tbaa !124
  %127 = fcmp ugt float %126, 0.000000e+00
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = fcmp ult float %126, 6.553500e+04
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = fadd float %126, 5.000000e-01
  %132 = fptoui float %131 to i16
  br label %133

133:                                              ; preds = %120, %128, %130
  %134 = phi i16 [ %132, %130 ], [ 0, %120 ], [ -1, %128 ]
  store i16 %134, ptr %122, align 2, !tbaa !60
  br label %135

135:                                              ; preds = %133, %118
  br i1 %110, label %151, label %136

136:                                              ; preds = %135
  %137 = load ptr, ptr %111, align 8, !tbaa !59
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %137, i64 %119, i32 1
  %139 = load i16, ptr %138, align 2, !tbaa !61
  %140 = zext i16 %139 to i64
  %141 = getelementptr inbounds float, ptr %16, i64 %140
  %142 = load float, ptr %141, align 4, !tbaa !124
  %143 = fcmp ugt float %142, 0.000000e+00
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = fcmp ult float %142, 6.553500e+04
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = fadd float %142, 5.000000e-01
  %148 = fptoui float %147 to i16
  br label %149

149:                                              ; preds = %136, %144, %146
  %150 = phi i16 [ %148, %146 ], [ 0, %136 ], [ -1, %144 ]
  store i16 %150, ptr %138, align 2, !tbaa !61
  br label %151

151:                                              ; preds = %149, %135
  br i1 %113, label %167, label %152

152:                                              ; preds = %151
  %153 = load ptr, ptr %114, align 8, !tbaa !59
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %119
  %155 = load i16, ptr %154, align 2, !tbaa !62
  %156 = zext i16 %155 to i64
  %157 = getelementptr inbounds float, ptr %16, i64 %156
  %158 = load float, ptr %157, align 4, !tbaa !124
  %159 = fcmp ugt float %158, 0.000000e+00
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  %161 = fcmp ult float %158, 6.553500e+04
  br i1 %161, label %162, label %165

162:                                              ; preds = %160
  %163 = fadd float %158, 5.000000e-01
  %164 = fptoui float %163 to i16
  br label %165

165:                                              ; preds = %152, %160, %162
  %166 = phi i16 [ %164, %162 ], [ 0, %152 ], [ -1, %160 ]
  store i16 %166, ptr %154, align 2, !tbaa !62
  br label %167

167:                                              ; preds = %165, %151
  br i1 %116, label %183, label %168

168:                                              ; preds = %167
  %169 = load ptr, ptr %117, align 8, !tbaa !59
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 %119, i32 3
  %171 = load i16, ptr %170, align 2, !tbaa !63
  %172 = zext i16 %171 to i64
  %173 = getelementptr inbounds float, ptr %16, i64 %172
  %174 = load float, ptr %173, align 4, !tbaa !124
  %175 = fcmp ugt float %174, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %168
  %177 = fcmp ult float %174, 6.553500e+04
  br i1 %177, label %178, label %181

178:                                              ; preds = %176
  %179 = fadd float %174, 5.000000e-01
  %180 = fptoui float %179 to i16
  br label %181

181:                                              ; preds = %168, %176, %178
  %182 = phi i16 [ %180, %178 ], [ 0, %168 ], [ -1, %176 ]
  store i16 %182, ptr %170, align 2, !tbaa !63
  br label %183

183:                                              ; preds = %167, %181
  %184 = add nuw nsw i64 %119, 1
  %185 = icmp eq i64 %184, %103
  br i1 %185, label %186, label %118, !llvm.loop !195

186:                                              ; preds = %183, %101, %98
  %187 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %188 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %187) #8
  %189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %190 = load i64, ptr %189, align 8, !tbaa !67
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %328

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %194 = and i32 %1, 1
  %195 = icmp eq i32 %194, 0
  %196 = and i32 %1, 2
  %197 = icmp eq i32 %196, 0
  %198 = and i32 %1, 4
  %199 = icmp eq i32 %198, 0
  %200 = and i32 %1, 8
  %201 = icmp eq i32 %200, 0
  %202 = and i32 %1, 32
  %203 = icmp eq i32 %202, 0
  %204 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %205 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %206 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %207 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %208

208:                                              ; preds = %192, %322
  %209 = phi i64 [ 0, %192 ], [ %325, %322 ]
  %210 = phi i64 [ 0, %192 ], [ %324, %322 ]
  %211 = phi i32 [ 1, %192 ], [ %323, %322 ]
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %322, label %213

213:                                              ; preds = %208
  %214 = load i64, ptr %193, align 8, !tbaa !68
  %215 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %188, i64 noundef 0, i64 noundef %209, i64 noundef %214, i64 noundef 1, ptr noundef nonnull %187) #9
  %216 = icmp eq ptr %215, null
  br i1 %216, label %322, label %217

217:                                              ; preds = %213
  %218 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %188) #8
  %219 = load i64, ptr %193, align 8, !tbaa !68
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %307

221:                                              ; preds = %217
  %222 = icmp eq ptr %218, null
  br label %223

223:                                              ; preds = %221, %303
  %224 = phi i64 [ 0, %221 ], [ %305, %303 ]
  %225 = phi ptr [ %215, %221 ], [ %304, %303 ]
  br i1 %195, label %240, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 0, i32 2
  %228 = load i16, ptr %227, align 2, !tbaa !60
  %229 = zext i16 %228 to i64
  %230 = getelementptr inbounds float, ptr %16, i64 %229
  %231 = load float, ptr %230, align 4, !tbaa !124
  %232 = fcmp ugt float %231, 0.000000e+00
  br i1 %232, label %233, label %238

233:                                              ; preds = %226
  %234 = fcmp ult float %231, 6.553500e+04
  br i1 %234, label %235, label %238

235:                                              ; preds = %233
  %236 = fadd float %231, 5.000000e-01
  %237 = fptoui float %236 to i16
  br label %238

238:                                              ; preds = %226, %233, %235
  %239 = phi i16 [ %237, %235 ], [ 0, %226 ], [ -1, %233 ]
  store i16 %239, ptr %227, align 2, !tbaa !60
  br label %240

240:                                              ; preds = %238, %223
  br i1 %197, label %255, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 0, i32 1
  %243 = load i16, ptr %242, align 2, !tbaa !61
  %244 = zext i16 %243 to i64
  %245 = getelementptr inbounds float, ptr %16, i64 %244
  %246 = load float, ptr %245, align 4, !tbaa !124
  %247 = fcmp ugt float %246, 0.000000e+00
  br i1 %247, label %248, label %253

248:                                              ; preds = %241
  %249 = fcmp ult float %246, 6.553500e+04
  br i1 %249, label %250, label %253

250:                                              ; preds = %248
  %251 = fadd float %246, 5.000000e-01
  %252 = fptoui float %251 to i16
  br label %253

253:                                              ; preds = %241, %248, %250
  %254 = phi i16 [ %252, %250 ], [ 0, %241 ], [ -1, %248 ]
  store i16 %254, ptr %242, align 2, !tbaa !61
  br label %255

255:                                              ; preds = %253, %240
  br i1 %199, label %269, label %256

256:                                              ; preds = %255
  %257 = load i16, ptr %225, align 2, !tbaa !62
  %258 = zext i16 %257 to i64
  %259 = getelementptr inbounds float, ptr %16, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !124
  %261 = fcmp ugt float %260, 0.000000e+00
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = fcmp ult float %260, 6.553500e+04
  br i1 %263, label %264, label %267

264:                                              ; preds = %262
  %265 = fadd float %260, 5.000000e-01
  %266 = fptoui float %265 to i16
  br label %267

267:                                              ; preds = %256, %262, %264
  %268 = phi i16 [ %266, %264 ], [ 0, %256 ], [ -1, %262 ]
  store i16 %268, ptr %225, align 2, !tbaa !62
  br label %269

269:                                              ; preds = %267, %255
  br i1 %201, label %284, label %270

270:                                              ; preds = %269
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 0, i32 3
  %272 = load i16, ptr %271, align 2, !tbaa !63
  %273 = zext i16 %272 to i64
  %274 = getelementptr inbounds float, ptr %16, i64 %273
  %275 = load float, ptr %274, align 4, !tbaa !124
  %276 = fcmp ugt float %275, 0.000000e+00
  br i1 %276, label %277, label %282

277:                                              ; preds = %270
  %278 = fcmp ult float %275, 6.553500e+04
  br i1 %278, label %279, label %282

279:                                              ; preds = %277
  %280 = fadd float %275, 5.000000e-01
  %281 = fptoui float %280 to i16
  br label %282

282:                                              ; preds = %270, %277, %279
  %283 = phi i16 [ %281, %279 ], [ 0, %270 ], [ -1, %277 ]
  store i16 %283, ptr %271, align 2, !tbaa !63
  br label %284

284:                                              ; preds = %282, %269
  br i1 %203, label %303, label %285

285:                                              ; preds = %284
  %286 = load i32, ptr %204, align 4, !tbaa !55
  %287 = icmp eq i32 %286, 12
  br i1 %287, label %288, label %303

288:                                              ; preds = %285
  %289 = getelementptr inbounds i16, ptr %218, i64 %224
  br i1 %222, label %303, label %290

290:                                              ; preds = %288
  %291 = load i16, ptr %289, align 2, !tbaa !69
  %292 = zext i16 %291 to i64
  %293 = getelementptr inbounds float, ptr %16, i64 %292
  %294 = load float, ptr %293, align 4, !tbaa !124
  %295 = fcmp ugt float %294, 0.000000e+00
  br i1 %295, label %296, label %301

296:                                              ; preds = %290
  %297 = fcmp ult float %294, 6.553500e+04
  br i1 %297, label %298, label %301

298:                                              ; preds = %296
  %299 = fadd float %294, 5.000000e-01
  %300 = fptoui float %299 to i16
  br label %301

301:                                              ; preds = %290, %296, %298
  %302 = phi i16 [ %300, %298 ], [ 0, %290 ], [ -1, %296 ]
  store i16 %302, ptr %289, align 2, !tbaa !69
  br label %303

303:                                              ; preds = %288, %301, %285, %284
  %304 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 1
  %305 = add nuw nsw i64 %224, 1
  %306 = icmp eq i64 %305, %219
  br i1 %306, label %307, label %223, !llvm.loop !196

307:                                              ; preds = %303, %217
  %308 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %188, ptr noundef nonnull %187) #9
  %309 = icmp ne i32 %308, 0
  %310 = zext i1 %309 to i32
  %311 = load ptr, ptr %205, align 8, !tbaa !71
  %312 = icmp eq ptr %311, null
  br i1 %312, label %322, label %313

313:                                              ; preds = %307
  %314 = add nsw i64 %210, 1
  %315 = load i64, ptr %189, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  %316 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, ptr noundef nonnull %206) #8
  %317 = load ptr, ptr %205, align 8, !tbaa !71
  %318 = load ptr, ptr %207, align 8, !tbaa !72
  %319 = call i32 %317(ptr noundef nonnull %6, i64 noundef %210, i64 noundef %315, ptr noundef %318) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  %320 = icmp eq i32 %319, 0
  %321 = select i1 %320, i32 0, i32 %310
  br label %322

322:                                              ; preds = %307, %313, %213, %208
  %323 = phi i32 [ 0, %208 ], [ 0, %213 ], [ %321, %313 ], [ %310, %307 ]
  %324 = phi i64 [ %210, %208 ], [ %210, %213 ], [ %314, %313 ], [ %210, %307 ]
  %325 = add nuw nsw i64 %209, 1
  %326 = load i64, ptr %189, align 8, !tbaa !67
  %327 = icmp slt i64 %325, %326
  br i1 %327, label %208, label %328, !llvm.loop !197

328:                                              ; preds = %322, %186
  %329 = phi i32 [ 1, %186 ], [ %323, %322 ]
  %330 = call ptr @DestroyCacheView(ptr noundef %188) #8
  %331 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %16) #8
  br label %332

332:                                              ; preds = %18, %20, %5, %328
  %333 = phi i32 [ %329, %328 ], [ 1, %5 ], [ 0, %20 ], [ 0, %18 ]
  ret i32 %333
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #2

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ConvertRGBToHSB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #2

declare void @ConvertHSBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @ConvertRGBToHCL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertHCLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertRGBToHCLp(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertHCLpToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertRGBToHSI(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertHSIToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertRGBToHSL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertRGBToHSV(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertHSVToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertRGBToHWB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertHWBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertRGBToLCHab(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertLCHabToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertRGBToLCHuv(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertLCHuvToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atanh(double noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { hot nounwind }
attributes #10 = { nounwind allocsize(0,1) }

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
!35 = !{!"double", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{i32 0, i32 2}
!39 = !{!40, !41, i64 32}
!40 = !{!"_Image", !41, i64 0, !41, i64 4, !41, i64 8, !42, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !43, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !35, i64 104, !46, i64 112, !41, i64 208, !43, i64 216, !41, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !42, i64 256, !35, i64 264, !35, i64 272, !48, i64 280, !48, i64 312, !48, i64 344, !35, i64 376, !35, i64 384, !35, i64 392, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !43, i64 424, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !49, i64 480, !50, i64 504, !43, i64 568, !43, i64 576, !43, i64 584, !43, i64 592, !43, i64 600, !43, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !42, i64 12904, !42, i64 12912, !52, i64 12920, !41, i64 12976, !42, i64 12984, !43, i64 12992, !53, i64 13000, !53, i64 13032, !43, i64 13064, !42, i64 13072, !42, i64 13080, !43, i64 13088, !43, i64 13096, !43, i64 13104, !41, i64 13112, !41, i64 13116, !44, i64 13120, !43, i64 13128, !48, i64 13136, !43, i64 13168, !43, i64 13176, !41, i64 13184, !41, i64 13188, !54, i64 13192, !41, i64 13200, !42, i64 13208, !42, i64 13216, !41, i64 13224, !42, i64 13232}
!41 = !{!"int", !36, i64 0}
!42 = !{!"long", !36, i64 0}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!"_PixelPacket", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6}
!45 = !{!"short", !36, i64 0}
!46 = !{!"_ChromaticityInfo", !47, i64 0, !47, i64 24, !47, i64 48, !47, i64 72}
!47 = !{!"_PrimaryInfo", !35, i64 0, !35, i64 8, !35, i64 16}
!48 = !{!"_RectangleInfo", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!49 = !{!"_ErrorInfo", !35, i64 0, !35, i64 8, !35, i64 16}
!50 = !{!"_TimerInfo", !51, i64 0, !51, i64 24, !41, i64 48, !42, i64 56}
!51 = !{!"_Timer", !35, i64 0, !35, i64 8, !35, i64 16}
!52 = !{!"_ExceptionInfo", !41, i64 0, !41, i64 4, !43, i64 8, !43, i64 16, !43, i64 24, !41, i64 32, !43, i64 40, !42, i64 48}
!53 = !{!"_ProfileInfo", !43, i64 0, !42, i64 8, !43, i64 16, !42, i64 24}
!54 = !{!"long long", !36, i64 0}
!55 = !{!40, !41, i64 4}
!56 = !{!40, !41, i64 12976}
!57 = !{!40, !41, i64 0}
!58 = !{!40, !42, i64 64}
!59 = !{!40, !43, i64 72}
!60 = !{!44, !45, i64 4}
!61 = !{!44, !45, i64 2}
!62 = !{!44, !45, i64 0}
!63 = !{!44, !45, i64 6}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!40, !42, i64 48}
!68 = !{!40, !42, i64 40}
!69 = !{!45, !45, i64 0}
!70 = distinct !{!70, !65, !66}
!71 = !{!40, !43, i64 568}
!72 = !{!40, !43, i64 576}
!73 = distinct !{!73, !65, !66}
!74 = !{!43, !43, i64 0}
!75 = !{!36, !36, i64 0}
!76 = distinct !{!76, !65, !66}
!77 = distinct !{!77, !65, !66}
!78 = distinct !{!78, !65, !66}
!79 = distinct !{!79, !65, !66}
!80 = distinct !{!80, !65, !66}
!81 = distinct !{!81, !65, !66}
!82 = distinct !{!82, !65, !66}
!83 = !{!40, !41, i64 13112}
!84 = distinct !{!84, !65, !66}
!85 = !{!86, !87, i64 48}
!86 = !{!"_MagickPixelPacket", !41, i64 0, !41, i64 4, !41, i64 8, !35, i64 16, !42, i64 24, !87, i64 32, !87, i64 36, !87, i64 40, !87, i64 44, !87, i64 48}
!87 = !{!"float", !36, i64 0}
!88 = !{!86, !87, i64 32}
!89 = !{!86, !87, i64 36}
!90 = !{!86, !87, i64 40}
!91 = !{!86, !41, i64 4}
!92 = !{!86, !87, i64 44}
!93 = distinct !{!93, !65, !66}
!94 = distinct !{!94, !65, !66}
!95 = distinct !{!95, !65, !66}
!96 = distinct !{!96, !65, !66}
!97 = distinct !{!97, !65, !66}
!98 = !{!99, !35, i64 0}
!99 = !{!"_GeometryInfo", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!100 = distinct !{!100, !65, !66}
!101 = distinct !{!101, !65, !66}
!102 = distinct !{!102, !65, !66}
!103 = distinct !{!103, !65, !66}
!104 = distinct !{!104, !65, !66}
!105 = distinct !{!105, !65, !66}
!106 = distinct !{!106, !65, !66}
!107 = distinct !{!107, !65, !66}
!108 = distinct !{!108, !65, !66}
!109 = distinct !{!109, !65, !66}
!110 = distinct !{!110, !65, !66}
!111 = distinct !{!111, !65, !66}
!112 = distinct !{!112, !65, !66}
!113 = !{!114, !45, i64 0}
!114 = !{!"_QuantumPixelPacket", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !45, i64 8}
!115 = !{!114, !45, i64 2}
!116 = !{!114, !45, i64 4}
!117 = !{!114, !45, i64 6}
!118 = !{!114, !45, i64 8}
!119 = distinct !{!119, !65, !66}
!120 = distinct !{!120, !65, !66}
!121 = distinct !{!121, !65, !66}
!122 = distinct !{!122, !65, !66}
!123 = !{i64 0, i64 4, !124, i64 4, i64 4, !124, i64 8, i64 4, !124, i64 12, i64 4, !124, i64 16, i64 4, !124}
!124 = !{!87, !87, i64 0}
!125 = !{i64 0, i64 4, !124, i64 4, i64 4, !124, i64 8, i64 4, !124, i64 12, i64 4, !124}
!126 = !{i64 0, i64 4, !124, i64 4, i64 4, !124, i64 8, i64 4, !124}
!127 = !{i64 0, i64 4, !124, i64 4, i64 4, !124}
!128 = distinct !{!128, !65, !66}
!129 = distinct !{!129, !65, !66}
!130 = distinct !{!130, !65, !66}
!131 = distinct !{!131, !65, !66}
!132 = distinct !{!132, !65, !66}
!133 = distinct !{!133, !65, !66}
!134 = !{i64 0, i64 4, !124}
!135 = distinct !{!135, !65, !66}
!136 = distinct !{!136, !65, !66}
!137 = distinct !{!137, !65, !66}
!138 = distinct !{!138, !65, !66}
!139 = !{!99, !35, i64 8}
!140 = !{!99, !35, i64 16}
!141 = distinct !{!141, !65, !66}
!142 = distinct !{!142, !65, !66}
!143 = distinct !{!143, !65, !66}
!144 = distinct !{!144, !65, !66}
!145 = distinct !{!145, !65, !66}
!146 = !{!40, !35, i64 104}
!147 = distinct !{!147, !65, !66}
!148 = distinct !{!148, !65, !66}
!149 = !{!40, !41, i64 13224}
!150 = !{!40, !41, i64 13184}
!151 = distinct !{!151, !65, !66}
!152 = !{i64 0, i64 4, !153, i64 4, i64 4, !153, i64 8, i64 4, !153, i64 16, i64 8, !34, i64 24, i64 8, !154, i64 32, i64 4, !124, i64 36, i64 4, !124, i64 40, i64 4, !124, i64 44, i64 4, !124, i64 48, i64 4, !124}
!153 = !{!41, !41, i64 0}
!154 = !{!42, !42, i64 0}
!155 = !{i64 0, i64 4, !153, i64 4, i64 4, !153, i64 12, i64 8, !34, i64 20, i64 8, !154, i64 28, i64 4, !124, i64 32, i64 4, !124, i64 36, i64 4, !124, i64 40, i64 4, !124, i64 44, i64 4, !124}
!156 = distinct !{!156, !65, !66}
!157 = distinct !{!157, !65, !66}
!158 = distinct !{!158, !65, !66}
!159 = distinct !{!159, !65, !66}
!160 = distinct !{!160, !65, !66}
!161 = distinct !{!161, !65, !66}
!162 = distinct !{!162, !65, !66}
!163 = distinct !{!163, !65, !66}
!164 = distinct !{!164, !65, !66}
!165 = distinct !{!165, !65, !66}
!166 = distinct !{!166, !65, !66}
!167 = distinct !{!167, !65, !66}
!168 = distinct !{!168, !65, !66}
!169 = distinct !{!169, !65, !66}
!170 = distinct !{!170, !65, !66}
!171 = distinct !{!171, !65, !66}
!172 = distinct !{!172, !65, !66}
!173 = distinct !{!173, !65, !66}
!174 = distinct !{!174, !65, !66}
!175 = distinct !{!175, !65, !66}
!176 = distinct !{!176, !65, !66}
!177 = distinct !{!177, !65, !66}
!178 = distinct !{!178, !65, !66}
!179 = distinct !{!179, !65, !66}
!180 = distinct !{!180, !65, !66}
!181 = distinct !{!181, !65, !66}
!182 = distinct !{!182, !65, !66}
!183 = distinct !{!183, !65, !66}
!184 = distinct !{!184, !65, !66}
!185 = distinct !{!185, !65, !66}
!186 = distinct !{!186, !65, !66}
!187 = distinct !{!187, !65, !66}
!188 = distinct !{!188, !65, !66}
!189 = distinct !{!189, !65, !66}
!190 = distinct !{!190, !65, !66}
!191 = distinct !{!191, !65, !66}
!192 = distinct !{!192, !65, !66}
!193 = distinct !{!193, !65, !66}
!194 = distinct !{!194, !65, !66}
!195 = distinct !{!195, !65, !66}
!196 = distinct !{!196, !65, !66}
!197 = distinct !{!197, !65, !66}
