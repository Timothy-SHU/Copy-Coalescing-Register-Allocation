; ModuleID = 'magick/fx.c'
source_filename = "magick/fx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._FxInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct.KernelInfo = type { i32, i64, i64, i64, i64, ptr, double, double, double, double, double, ptr, i64 }
%struct._PointInfo = type { double, double }
%struct._SegmentInfo = type { double, double, double, double }
%struct._TypeMetric = type { %struct._PointInfo, double, double, double, double, double, double, double, %struct._SegmentInfo, %struct._PointInfo }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"magick/fx.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-1.0*\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"^-1.0*\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"^-\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"E-1.0*\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"E-\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"e-1.0*\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"e-\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"attenuate\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_AddNoiseImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"AddNoise/Image\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_BlueShiftImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [16 x i8] c"BlueShift/Image\00", align 1
@.gomp_critical_user_MagickCore_ColorizeImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [15 x i8] c"Colorize/Image\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"  ColorMatrix image with color matrix:\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"%.20g: \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%+f \00", align 1
@.gomp_critical_user_MagickCore_ColorMatrixImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.31 = private unnamed_addr constant [18 x i8] c"ColorMatrix/Image\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"DivideByZero\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"UnableToParseExpression\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"airy\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"asinh\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"atanh\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"%s[%.20g,%.20g].%s: %s=%.*g\0A\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"drc\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"epsilon\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"gauss\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"gcd\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"hypot\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"isnan\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"j0\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"j1\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"jinc\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"logtwo\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"MaxRGB\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"maxima\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"minima\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Opaque\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"QuantumRange\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"QuantumScale\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"sinc\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"squish\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"Transparent\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"(+-/*%:&^|<>~,\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"UnbalancedParenthesis\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"suv\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"NoSuchImage\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"luma\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"luminance\00", align 1
@.str.135 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"kurtosis\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"image.depth\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"image.minima\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"image.maxima\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"image.mean\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"image.kurtosis\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"image.skewness\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"image.standard_deviation\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"image.resolution.x\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"image.resolution.y\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"page.height\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"page.width\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"page.x\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"page.y\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"resolution.x\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"resolution.y\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"skewness\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"standard_deviation\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"%p.%.20g.%s\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.gomp_critical_user_MagickCore_FxImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.159 = private unnamed_addr constant [9 x i8] c"Fx/Image\00", align 1
@.gomp_critical_user_MagickCore_ImplodeImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.160 = private unnamed_addr constant [14 x i8] c"Implode/Image\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"Morph/Image\00", align 1
@.gomp_critical_user_MagickCore_MorphImages.var = common global [8 x i32] zeroinitializer, align 8
@.str.162 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"Caption\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"+0+%g\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.gomp_critical_user_MagickCore_SepiaToneImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.166 = private unnamed_addr constant [16 x i8] c"SepiaTone/Image\00", align 1
@.gomp_critical_user_MagickCore_ShadowImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.167 = private unnamed_addr constant [13 x i8] c"Shadow/Image\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"50%\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"compose:args\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"20x80\00", align 1
@.gomp_critical_user_MagickCore_SolarizeImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.171 = private unnamed_addr constant [15 x i8] c"Solarize/Image\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"Stegano/Image\00", align 1
@.str.173 = private unnamed_addr constant [29 x i8] c"LeftAndRightImageSizesDiffer\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"Stereo/Image\00", align 1
@.gomp_critical_user_MagickCore_SwirlImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.175 = private unnamed_addr constant [12 x i8] c"Swirl/Image\00", align 1
@.gomp_critical_user_MagickCore_TintImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.176 = private unnamed_addr constant [11 x i8] c"Tint/Image\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"#000000\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"#ffffff\00", align 1
@.str.179 = private unnamed_addr constant [30 x i8] c"ellipse %g,%g,%g,%g,0.0,360.0\00", align 1
@.gomp_critical_user_MagickCore_WaveImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.180 = private unnamed_addr constant [11 x i8] c"Wave/Image\00", align 1
@reltable.FxEvaluateSubexpression = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.60 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.61 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.62 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.57 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireFxInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  %6 = tail call dereferenceable_or_null(64) ptr @AcquireMagickMemory(i64 noundef 64) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  call void @GetExceptionInfo(ptr noundef nonnull %4) #26
  %9 = tail call ptr @__errno_location() #27
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #26
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 175, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #26
  %13 = call ptr @DestroyString(ptr noundef %11) #26
  call void @CatchException(ptr noundef nonnull %4) #26
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #26
  call void @MagickCoreTerminus() #26
  call void @_exit(i32 noundef 1) #28
  unreachable

15:                                               ; preds = %2
  %16 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 64) #26
  %17 = tail call ptr @AcquireExceptionInfo() #26
  %18 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !10
  store ptr %0, ptr %6, align 8, !tbaa !13
  %19 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishAlignedMemory) #26
  %20 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !14
  %21 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #26
  %22 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !15
  %23 = load ptr, ptr %6, align 8, !tbaa !13
  %24 = tail call i64 @GetImageListLength(ptr noundef %23) #26
  %25 = tail call ptr @AcquireQuantumMemory(i64 noundef %24, i64 noundef 8) #29
  %26 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !16
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #8
  call void @GetExceptionInfo(ptr noundef nonnull %5) #26
  %29 = tail call ptr @__errno_location() #27
  %30 = load i32, ptr %29, align 4, !tbaa !6
  %31 = call ptr @GetExceptionMessage(i32 noundef %30) #26
  %32 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 186, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %31) #26
  %33 = call ptr @DestroyString(ptr noundef %31) #26
  call void @CatchException(ptr noundef nonnull %5) #26
  %34 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #26
  call void @MagickCoreTerminus() #26
  call void @_exit(i32 noundef 1) #28
  unreachable

35:                                               ; preds = %15
  %36 = load ptr, ptr %6, align 8, !tbaa !13
  %37 = tail call ptr @GetFirstImageInList(ptr noundef %36) #26
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %48, %39 ], [ %37, %35 ]
  %41 = phi i64 [ %46, %39 ], [ 0, %35 ]
  %42 = load ptr, ptr %18, align 8, !tbaa !10
  %43 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %40, ptr noundef %42) #26
  %44 = load ptr, ptr %26, align 8, !tbaa !16
  %45 = getelementptr inbounds ptr, ptr %44, i64 %41
  store ptr %43, ptr %45, align 8, !tbaa !17
  %46 = add nuw nsw i64 %41, 1
  %47 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 69
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %39, !llvm.loop !33

50:                                               ; preds = %39, %35
  %51 = tail call ptr @AcquireRandomInfo() #26
  %52 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 6
  store ptr %51, ptr %52, align 8, !tbaa !35
  %53 = tail call ptr @ConstantString(ptr noundef %1) #26
  %54 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !36
  %55 = load ptr, ptr @stderr, align 8, !tbaa !17
  %56 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #26
  %58 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #26
  %59 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #26
  %60 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #26
  %61 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #26
  %62 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %62, align 1, !tbaa !38
  store i8 -11, ptr %3, align 1, !tbaa !38
  %63 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.13, ptr noundef nonnull %3) #26
  store i8 -10, ptr %3, align 1, !tbaa !38
  %64 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.14, ptr noundef nonnull %3) #26
  store i8 -9, ptr %3, align 1, !tbaa !38
  %65 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #26
  store i8 -8, ptr %3, align 1, !tbaa !38
  %66 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.16, ptr noundef nonnull %3) #26
  store i8 -7, ptr %3, align 1, !tbaa !38
  %67 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.17, ptr noundef nonnull %3) #26
  store i8 -6, ptr %3, align 1, !tbaa !38
  %68 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #26
  store i8 -5, ptr %3, align 1, !tbaa !38
  %69 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.19, ptr noundef nonnull %3) #26
  store i8 -4, ptr %3, align 1, !tbaa !38
  %70 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #26
  store i8 -3, ptr %3, align 1, !tbaa !38
  %71 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #3

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AddNoiseImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @AddNoiseImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, ptr noundef %2) #30
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AddNoiseImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca double, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !17
  store i32 %1, ptr %6, align 4, !tbaa !6
  store i32 %2, ptr %7, align 4, !tbaa !6
  store ptr %3, ptr %8, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !39
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 313, ptr noundef nonnull @.str.22, ptr noundef nonnull %21) #26
  br label %23

23:                                               ; preds = %20, %4
  %24 = tail call ptr @AccelerateAddNoiseImage(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #26
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %79

26:                                               ; preds = %23
  %27 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #26
  store ptr %27, ptr %12, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %79, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %27, i32 noundef 1) #26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %33) #26
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #26
  br label %79

35:                                               ; preds = %29
  store double 1.000000e+00, ptr %11, align 8, !tbaa !40
  %36 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #26
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc double @StringToDouble(ptr noundef nonnull %36) #30
  store double %39, ptr %11, align 8, !tbaa !40
  br label %40

40:                                               ; preds = %38, %35
  store i32 1, ptr %13, align 4, !tbaa !6
  store i64 0, ptr %14, align 8, !tbaa !41
  %41 = tail call fastcc ptr @AcquireRandomInfoThreadSet() #30
  store ptr %41, ptr %15, align 8, !tbaa !17
  %42 = load ptr, ptr %41, align 8, !tbaa !17
  %43 = tail call i64 @GetRandomSecretKey(ptr noundef %42) #26
  %44 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #26
  store ptr %44, ptr %9, align 8, !tbaa !17
  %45 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %27, ptr noundef %3) #26
  store ptr %45, ptr %10, align 8, !tbaa !17
  %46 = icmp eq i64 %43, -1
  br i1 %46, label %47, label %65

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !42
  %50 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %51 = shl i64 %50, 5
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %27) #26
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %65

61:                                               ; preds = %56, %53, %47
  %62 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %63 = icmp ult i64 %62, 2
  %64 = select i1 %63, i64 1, i64 2
  br label %65

65:                                               ; preds = %59, %61, %40
  %66 = phi i64 [ 1, %40 ], [ %60, %59 ], [ %64, %61 ]
  %67 = trunc i64 %66 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %67)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @AddNoiseImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %13, ptr nonnull %9, ptr nonnull %8, ptr nonnull %10, ptr nonnull %12, ptr nonnull %6, ptr nonnull %15, ptr nonnull %7, ptr nonnull %11, ptr nonnull %14)
  %68 = load ptr, ptr %10, align 8, !tbaa !17
  %69 = call ptr @DestroyCacheView(ptr noundef %68) #26
  store ptr %69, ptr %10, align 8, !tbaa !17
  %70 = load ptr, ptr %9, align 8, !tbaa !17
  %71 = call ptr @DestroyCacheView(ptr noundef %70) #26
  store ptr %71, ptr %9, align 8, !tbaa !17
  %72 = load ptr, ptr %15, align 8, !tbaa !17
  %73 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %72) #30
  store ptr %73, ptr %15, align 8, !tbaa !17
  %74 = load i32, ptr %13, align 4, !tbaa !6
  %75 = icmp eq i32 %74, 0
  %76 = load ptr, ptr %12, align 8, !tbaa !17
  br i1 %75, label %77, label %79

77:                                               ; preds = %65
  %78 = call ptr @DestroyImage(ptr noundef %76) #26
  br label %79

79:                                               ; preds = %65, %77, %26, %23, %32
  %80 = phi ptr [ null, %32 ], [ %24, %23 ], [ null, %26 ], [ %78, %77 ], [ %76, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret ptr %80
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AccelerateAddNoiseImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #26
  ret double %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireRandomInfoThreadSet() unnamed_addr #0 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %2 = tail call ptr @AcquireAlignedMemory(i64 noundef %1, i64 noundef 8) #29
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #26
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !43

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call ptr @AcquireRandomInfo() #26
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !17
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef nonnull %2) #30
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare i64 @GetRandomSecretKey(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @AddNoiseImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #7 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = load ptr, ptr %2, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !42
  %21 = add nsw i64 %20, -1
  %22 = icmp sgt i64 %20, 0
  br i1 %22, label %23, label %222

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 0, ptr %14, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 %21, ptr %15, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 1, ptr %16, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  store i32 0, ptr %17, align 4, !tbaa !6
  %24 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %24, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %25 = load i64, ptr %15, align 8
  %26 = call i64 @llvm.smin.i64(i64 %25, i64 %21)
  store i64 %26, ptr %15, align 8, !tbaa !44
  %27 = load i64, ptr %14, align 8, !tbaa !44
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %221, label %29

29:                                               ; preds = %23, %213
  %30 = phi i64 [ %219, %213 ], [ %26, %23 ]
  %31 = phi i64 [ %217, %213 ], [ %27, %23 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %213, label %33

33:                                               ; preds = %29, %207
  %34 = phi i64 [ %208, %207 ], [ %31, %29 ]
  %35 = call fastcc i32 @GetOpenMPThreadId() #30
  %36 = load i32, ptr %3, align 4, !tbaa !6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %207, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 8, !tbaa !17
  %40 = load ptr, ptr %2, align 8, !tbaa !17
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !45
  %43 = load ptr, ptr %5, align 8, !tbaa !17
  %44 = call ptr @GetCacheViewVirtualPixels(ptr noundef %39, i64 noundef 0, i64 noundef %34, i64 noundef %42, i64 noundef 1, ptr noundef %43) #31
  %45 = load ptr, ptr %6, align 8, !tbaa !17
  %46 = load ptr, ptr %7, align 8, !tbaa !17
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !45
  %49 = load ptr, ptr %5, align 8, !tbaa !17
  %50 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %45, i64 noundef 0, i64 noundef %34, i64 noundef %48, i64 noundef 1, ptr noundef %49) #31
  %51 = icmp eq ptr %44, null
  %52 = icmp eq ptr %50, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %206, label %54

54:                                               ; preds = %38
  %55 = load ptr, ptr %4, align 8, !tbaa !17
  %56 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %55) #26
  %57 = load ptr, ptr %6, align 8, !tbaa !17
  %58 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %57) #26
  %59 = load ptr, ptr %2, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 7
  %61 = load i64, ptr %60, align 8, !tbaa !45
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %187

63:                                               ; preds = %54
  %64 = sext i32 %35 to i64
  %65 = icmp eq ptr %58, null
  %66 = icmp eq ptr %56, null
  br label %67

67:                                               ; preds = %63, %179
  %68 = phi ptr [ %59, %63 ], [ %180, %179 ]
  %69 = phi ptr [ %50, %63 ], [ %182, %179 ]
  %70 = phi i64 [ 0, %63 ], [ %183, %179 ]
  %71 = phi ptr [ %44, %63 ], [ %181, %179 ]
  %72 = load i32, ptr %8, align 4, !tbaa !6
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %67
  %76 = load ptr, ptr %9, align 8, !tbaa !17
  %77 = getelementptr inbounds ptr, ptr %76, i64 %64
  %78 = load ptr, ptr %77, align 8, !tbaa !17
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  %80 = load i16, ptr %79, align 2, !tbaa !46
  %81 = load i32, ptr %10, align 4, !tbaa !6
  %82 = load double, ptr %11, align 8, !tbaa !40
  %83 = fptrunc double %82 to float
  %84 = call double @GenerateDifferentialNoise(ptr noundef %78, i16 noundef zeroext %80, i32 noundef %81, float noundef %83) #26
  %85 = fptrunc double %84 to float
  %86 = call fastcc zeroext i16 @ClampToQuantum(float noundef %85) #30
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 2
  store i16 %86, ptr %87, align 2, !tbaa !46
  %88 = load ptr, ptr %2, align 8, !tbaa !17
  br label %89

89:                                               ; preds = %75, %67
  %90 = phi ptr [ %88, %75 ], [ %68, %67 ]
  %91 = getelementptr inbounds %struct._Image, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !47
  %93 = call fastcc i32 @IsGrayColorspace(i32 noundef %92) #30, !range !48
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 2
  %97 = load i16, ptr %96, align 2, !tbaa !46
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 1
  store i16 %97, ptr %98, align 2, !tbaa !49
  br label %132

99:                                               ; preds = %89
  %100 = load i32, ptr %8, align 4, !tbaa !6
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %9, align 8, !tbaa !17
  %105 = getelementptr inbounds ptr, ptr %104, i64 %64
  %106 = load ptr, ptr %105, align 8, !tbaa !17
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !49
  %109 = load i32, ptr %10, align 4, !tbaa !6
  %110 = load double, ptr %11, align 8, !tbaa !40
  %111 = fptrunc double %110 to float
  %112 = call double @GenerateDifferentialNoise(ptr noundef %106, i16 noundef zeroext %108, i32 noundef %109, float noundef %111) #26
  %113 = fptrunc double %112 to float
  %114 = call fastcc zeroext i16 @ClampToQuantum(float noundef %113) #30
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 1
  store i16 %114, ptr %115, align 2, !tbaa !49
  %116 = load i32, ptr %8, align 4, !tbaa !6
  br label %117

117:                                              ; preds = %103, %99
  %118 = phi i32 [ %116, %103 ], [ %100, %99 ]
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %9, align 8, !tbaa !17
  %123 = getelementptr inbounds ptr, ptr %122, i64 %64
  %124 = load ptr, ptr %123, align 8, !tbaa !17
  %125 = load i16, ptr %71, align 2, !tbaa !50
  %126 = load i32, ptr %10, align 4, !tbaa !6
  %127 = load double, ptr %11, align 8, !tbaa !40
  %128 = fptrunc double %127 to float
  %129 = call double @GenerateDifferentialNoise(ptr noundef %124, i16 noundef zeroext %125, i32 noundef %126, float noundef %128) #26
  %130 = fptrunc double %129 to float
  %131 = call fastcc zeroext i16 @ClampToQuantum(float noundef %130) #30
  br label %132

132:                                              ; preds = %95, %121
  %133 = phi i16 [ %131, %121 ], [ %97, %95 ]
  store i16 %133, ptr %69, align 2, !tbaa !50
  br label %134

134:                                              ; preds = %132, %117
  %135 = load i32, ptr %8, align 4, !tbaa !6
  %136 = and i32 %135, 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %9, align 8, !tbaa !17
  %140 = getelementptr inbounds ptr, ptr %139, i64 %64
  %141 = load ptr, ptr %140, align 8, !tbaa !17
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  %143 = load i16, ptr %142, align 2, !tbaa !51
  %144 = load i32, ptr %10, align 4, !tbaa !6
  %145 = load double, ptr %11, align 8, !tbaa !40
  %146 = fptrunc double %145 to float
  %147 = call double @GenerateDifferentialNoise(ptr noundef %141, i16 noundef zeroext %143, i32 noundef %144, float noundef %146) #26
  %148 = fptrunc double %147 to float
  %149 = call fastcc zeroext i16 @ClampToQuantum(float noundef %148) #30
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 3
  store i16 %149, ptr %150, align 2, !tbaa !51
  %151 = load i32, ptr %8, align 4, !tbaa !6
  br label %152

152:                                              ; preds = %138, %134
  %153 = phi i32 [ %151, %138 ], [ %135, %134 ]
  %154 = and i32 %153, 32
  %155 = icmp eq i32 %154, 0
  %156 = load ptr, ptr %2, align 8, !tbaa !17
  br i1 %155, label %179, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct._Image, ptr %156, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !47
  %160 = icmp eq i32 %159, 12
  br i1 %160, label %161, label %179

161:                                              ; preds = %157
  %162 = getelementptr inbounds i16, ptr %58, i64 %70
  br i1 %65, label %179, label %163

163:                                              ; preds = %161
  %164 = load ptr, ptr %9, align 8, !tbaa !17
  %165 = getelementptr inbounds ptr, ptr %164, i64 %64
  %166 = load ptr, ptr %165, align 8, !tbaa !17
  br i1 %66, label %170, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds i16, ptr %56, i64 %70
  %169 = load i16, ptr %168, align 2, !tbaa !52
  br label %170

170:                                              ; preds = %163, %167
  %171 = phi i16 [ %169, %167 ], [ 0, %163 ]
  %172 = load i32, ptr %10, align 4, !tbaa !6
  %173 = load double, ptr %11, align 8, !tbaa !40
  %174 = fptrunc double %173 to float
  %175 = call double @GenerateDifferentialNoise(ptr noundef %166, i16 noundef zeroext %171, i32 noundef %172, float noundef %174) #26
  %176 = fptrunc double %175 to float
  %177 = call fastcc zeroext i16 @ClampToQuantum(float noundef %176) #30
  store i16 %177, ptr %162, align 2, !tbaa !52
  %178 = load ptr, ptr %2, align 8, !tbaa !17
  br label %179

179:                                              ; preds = %161, %170, %157, %152
  %180 = phi ptr [ %156, %161 ], [ %178, %170 ], [ %156, %157 ], [ %156, %152 ]
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 1
  %183 = add nuw nsw i64 %70, 1
  %184 = getelementptr inbounds %struct._Image, ptr %180, i64 0, i32 7
  %185 = load i64, ptr %184, align 8, !tbaa !45
  %186 = icmp slt i64 %183, %185
  br i1 %186, label %67, label %187, !llvm.loop !53

187:                                              ; preds = %179, %54
  %188 = load ptr, ptr %6, align 8, !tbaa !17
  %189 = load ptr, ptr %5, align 8, !tbaa !17
  %190 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %188, ptr noundef %189) #31
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %193

193:                                              ; preds = %192, %187
  %194 = load ptr, ptr %2, align 8, !tbaa !17
  %195 = getelementptr inbounds %struct._Image, ptr %194, i64 0, i32 47
  %196 = load ptr, ptr %195, align 8, !tbaa !54
  %197 = icmp eq ptr %196, null
  br i1 %197, label %207, label %198

198:                                              ; preds = %193
  call void @__kmpc_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_AddNoiseImage.var)
  %199 = load ptr, ptr %2, align 8, !tbaa !17
  %200 = load i64, ptr %12, align 8, !tbaa !41
  %201 = add nsw i64 %200, 1
  store i64 %201, ptr %12, align 8, !tbaa !41
  %202 = getelementptr inbounds %struct._Image, ptr %199, i64 0, i32 8
  %203 = load i64, ptr %202, align 8, !tbaa !42
  %204 = call fastcc i32 @SetImageProgress(ptr noundef %199, ptr noundef nonnull @.str.24, i64 noundef %200, i64 noundef %203) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_AddNoiseImage.var)
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198, %38
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %207

207:                                              ; preds = %206, %193, %198, %33
  %208 = add nsw i64 %34, 1
  %209 = load i64, ptr %15, align 8, !tbaa !44
  %210 = icmp slt i64 %34, %209
  br i1 %210, label %33, label %211

211:                                              ; preds = %207
  %212 = load i64, ptr %14, align 8, !tbaa !44
  br label %213

213:                                              ; preds = %211, %29
  %214 = phi i64 [ %31, %29 ], [ %212, %211 ]
  %215 = phi i64 [ %30, %29 ], [ %209, %211 ]
  %216 = load i64, ptr %16, align 8, !tbaa !44
  %217 = add nsw i64 %216, %214
  store i64 %217, ptr %14, align 8, !tbaa !44
  %218 = add nsw i64 %216, %215
  %219 = call i64 @llvm.smin.i64(i64 %218, i64 %21)
  store i64 %219, ptr %15, align 8, !tbaa !44
  %220 = icmp sgt i64 %217, %219
  br i1 %220, label %221, label %29

221:                                              ; preds = %213, %23
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  br label %222

222:                                              ; preds = %221, %13
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #8

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #9 {
  %1 = tail call i32 @omp_get_thread_num() #30
  ret i32 %1
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

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

; Function Attrs: optsize
declare double @GenerateDifferentialNoise(ptr noundef, i16 noundef zeroext, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #11 {
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

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #12

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.25, ptr noundef %1, ptr noundef nonnull %10) #26
  %12 = load ptr, ptr %6, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #26
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare !callback !56 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %7) #26
  store ptr %10, ptr %6, align 8, !tbaa !17
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !58

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #26
  ret ptr %16
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #13

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlueShiftImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !17
  store double %1, ptr %5, align 8, !tbaa !40
  store ptr %2, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !39
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 494, ptr noundef nonnull @.str.22, ptr noundef nonnull %17) #26
  br label %19

19:                                               ; preds = %16, %3
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !42
  %24 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %21, i64 noundef %23, i32 noundef 1, ptr noundef %2) #26
  store ptr %24, ptr %9, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %19
  %27 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %24, i32 noundef 1) #26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %30) #26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #26
  br label %63

32:                                               ; preds = %26
  store i32 1, ptr %10, align 4, !tbaa !6
  store i64 0, ptr %11, align 8, !tbaa !41
  %33 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #26
  store ptr %33, ptr %7, align 8, !tbaa !17
  %34 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %24, ptr noundef %2) #26
  store ptr %34, ptr %8, align 8, !tbaa !17
  %35 = load i64, ptr %22, align 8, !tbaa !42
  %36 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %37 = shl i64 %36, 5
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %24) #26
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %51

47:                                               ; preds = %42, %39, %32
  %48 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %49 = icmp ult i64 %48, 2
  %50 = select i1 %49, i64 1, i64 2
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i64 [ %46, %45 ], [ %50, %47 ]
  %53 = trunc i64 %52 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %53)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @BlueShiftImage.omp_outlined, ptr nonnull %4, ptr nonnull %10, ptr nonnull %7, ptr nonnull %6, ptr nonnull %8, ptr nonnull %9, ptr nonnull %5, ptr nonnull %11)
  %54 = load ptr, ptr %7, align 8, !tbaa !17
  %55 = call ptr @DestroyCacheView(ptr noundef %54) #26
  store ptr %55, ptr %7, align 8, !tbaa !17
  %56 = load ptr, ptr %8, align 8, !tbaa !17
  %57 = call ptr @DestroyCacheView(ptr noundef %56) #26
  store ptr %57, ptr %8, align 8, !tbaa !17
  %58 = load i32, ptr %10, align 4, !tbaa !6
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %9, align 8, !tbaa !17
  br i1 %59, label %61, label %63

61:                                               ; preds = %51
  %62 = call ptr @DestroyImage(ptr noundef %60) #26
  br label %63

63:                                               ; preds = %51, %61, %19, %29
  %64 = phi ptr [ null, %29 ], [ null, %19 ], [ %62, %61 ], [ %60, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret ptr %64
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @BlueShiftImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #7 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %140

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 %18, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 1, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !tbaa !6
  %21 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !44
  %24 = load i64, ptr %11, align 8, !tbaa !44
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %139, label %26

26:                                               ; preds = %20, %131
  %27 = phi i64 [ %137, %131 ], [ %23, %20 ]
  %28 = phi i64 [ %135, %131 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %131, label %30

30:                                               ; preds = %26, %125
  %31 = phi i64 [ %126, %125 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %125, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !17
  %36 = load ptr, ptr %2, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !45
  %39 = load ptr, ptr %5, align 8, !tbaa !17
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #31
  %41 = load ptr, ptr %6, align 8, !tbaa !17
  %42 = load ptr, ptr %7, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !45
  %45 = load ptr, ptr %5, align 8, !tbaa !17
  %46 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %41, i64 noundef 0, i64 noundef %31, i64 noundef %44, i64 noundef 1, ptr noundef %45) #31
  %47 = icmp eq ptr %40, null
  %48 = icmp eq ptr %46, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %124, label %50

50:                                               ; preds = %34
  %51 = load ptr, ptr %2, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !45
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %105

55:                                               ; preds = %50
  %56 = load double, ptr %8, align 8, !tbaa !40
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi ptr [ %46, %55 ], [ %102, %57 ]
  %59 = phi i64 [ 0, %55 ], [ %103, %57 ]
  %60 = phi ptr [ %40, %55 ], [ %101, %57 ]
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 2
  %62 = load i16, ptr %61, align 2, !tbaa !46
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 1
  %64 = load i16, ptr %63, align 2, !tbaa !49
  %65 = call i16 @llvm.umin.i16(i16 %64, i16 %62)
  %66 = load i16, ptr %60, align 2, !tbaa !50
  %67 = call i16 @llvm.umin.i16(i16 %66, i16 %65)
  %68 = uitofp i16 %62 to double
  %69 = uitofp i16 %67 to double
  %70 = call double @llvm.fmuladd.f64(double %56, double %69, double %68)
  %71 = fmul double %70, 5.000000e-01
  %72 = fptrunc double %71 to float
  %73 = uitofp i16 %64 to double
  %74 = call double @llvm.fmuladd.f64(double %56, double %69, double %73)
  %75 = fmul double %74, 5.000000e-01
  %76 = fptrunc double %75 to float
  %77 = uitofp i16 %66 to double
  %78 = call double @llvm.fmuladd.f64(double %56, double %69, double %77)
  %79 = fmul double %78, 5.000000e-01
  %80 = fptrunc double %79 to float
  %81 = call i16 @llvm.umax.i16(i16 %64, i16 %62)
  %82 = call i16 @llvm.umax.i16(i16 %66, i16 %81)
  %83 = fpext float %72 to double
  %84 = uitofp i16 %82 to double
  %85 = call double @llvm.fmuladd.f64(double %56, double %84, double %83)
  %86 = fmul double %85, 5.000000e-01
  %87 = fptrunc double %86 to float
  %88 = fpext float %76 to double
  %89 = call double @llvm.fmuladd.f64(double %56, double %84, double %88)
  %90 = fmul double %89, 5.000000e-01
  %91 = fptrunc double %90 to float
  %92 = fpext float %80 to double
  %93 = call double @llvm.fmuladd.f64(double %56, double %84, double %92)
  %94 = fmul double %93, 5.000000e-01
  %95 = fptrunc double %94 to float
  %96 = call fastcc zeroext i16 @ClampToQuantum(float noundef %87) #30
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  store i16 %96, ptr %97, align 2, !tbaa !46
  %98 = call fastcc zeroext i16 @ClampToQuantum(float noundef %91) #30
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  store i16 %98, ptr %99, align 2, !tbaa !49
  %100 = call fastcc zeroext i16 @ClampToQuantum(float noundef %95) #30
  store i16 %100, ptr %58, align 2, !tbaa !50
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 1
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %103 = add nuw nsw i64 %59, 1
  %104 = icmp eq i64 %103, %53
  br i1 %104, label %105, label %57, !llvm.loop !59

105:                                              ; preds = %57, %50
  %106 = load ptr, ptr %6, align 8, !tbaa !17
  %107 = load ptr, ptr %5, align 8, !tbaa !17
  %108 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %106, ptr noundef %107) #31
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %111

111:                                              ; preds = %110, %105
  %112 = load ptr, ptr %2, align 8, !tbaa !17
  %113 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 47
  %114 = load ptr, ptr %113, align 8, !tbaa !54
  %115 = icmp eq ptr %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %111
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_BlueShiftImage.var)
  %117 = load ptr, ptr %2, align 8, !tbaa !17
  %118 = load i64, ptr %9, align 8, !tbaa !41
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr %9, align 8, !tbaa !41
  %120 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 8
  %121 = load i64, ptr %120, align 8, !tbaa !42
  %122 = call fastcc i32 @SetImageProgress(ptr noundef %117, ptr noundef nonnull @.str.26, i64 noundef %118, i64 noundef %121) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_BlueShiftImage.var)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116, %34
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %125

125:                                              ; preds = %124, %111, %116, %30
  %126 = add nsw i64 %31, 1
  %127 = load i64, ptr %12, align 8, !tbaa !44
  %128 = icmp slt i64 %31, %127
  br i1 %128, label %30, label %129

129:                                              ; preds = %125
  %130 = load i64, ptr %11, align 8, !tbaa !44
  br label %131

131:                                              ; preds = %129, %26
  %132 = phi i64 [ %28, %26 ], [ %130, %129 ]
  %133 = phi i64 [ %27, %26 ], [ %127, %129 ]
  %134 = load i64, ptr %13, align 8, !tbaa !44
  %135 = add nsw i64 %134, %132
  store i64 %135, ptr %11, align 8, !tbaa !44
  %136 = add nsw i64 %134, %133
  %137 = call i64 @llvm.smin.i64(i64 %136, i64 %18)
  store i64 %137, ptr %12, align 8, !tbaa !44
  %138 = icmp sgt i64 %135, %137
  br i1 %138, label %139, label %26

139:                                              ; preds = %131, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %140

140:                                              ; preds = %139, %10
  ret void
}

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CharcoalImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !39
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 638, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #26
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @EdgeImage(ptr noundef nonnull %12, double noundef %1, ptr noundef %3) #26
  %16 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #26
  %17 = icmp eq ptr %15, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @BlurImage(ptr noundef nonnull %15, double noundef %1, double noundef %2, ptr noundef %3) #26
  %20 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #26
  %21 = icmp eq ptr %19, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @NormalizeImage(ptr noundef nonnull %19) #26
  %24 = tail call i32 @NegateImage(ptr noundef nonnull %19, i32 noundef 0) #26
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  %26 = load i32, ptr %25, align 8, !tbaa !60
  %27 = tail call i32 @GrayscaleImage(ptr noundef nonnull %19, i32 noundef %26) #26
  br label %28

28:                                               ; preds = %18, %14, %11, %22
  %29 = phi ptr [ %19, %22 ], [ null, %11 ], [ null, %14 ], [ null, %18 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @EdgeImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BlurImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @NormalizeImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @NegateImage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GrayscaleImage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ColorizeImage(ptr noundef %0, ptr noundef %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._PixelPacket, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct._GeometryInfo, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i64 %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8, !tbaa !17
  store ptr %3, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !39
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 727, ptr noundef nonnull @.str.22, ptr noundef nonnull %20) #26
  br label %22

22:                                               ; preds = %19, %4
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !42
  %27 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %24, i64 noundef %26, i32 noundef 1, ptr noundef %3) #26
  store ptr %27, ptr %11, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %114, label %29

29:                                               ; preds = %22
  %30 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %27, i32 noundef 1) #26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %33) #26
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #26
  br label %114

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !47
  %38 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %37) #30, !range !48
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call fastcc i32 @IsPixelGray(ptr noundef nonnull %5) #30, !range !48
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40, %35
  %44 = tail call i32 @SetImageColorspace(ptr noundef nonnull %27, i32 noundef 13) #26
  br label %45

45:                                               ; preds = %43, %40
  %46 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !61
  %48 = icmp eq i32 %47, 0
  %49 = icmp ugt i64 %2, 281474976710655
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %27, i32 noundef 6) #26
  br label %53

53:                                               ; preds = %51, %45
  %54 = icmp eq ptr %1, null
  br i1 %54, label %114, label %55

55:                                               ; preds = %53
  %56 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %10) #26
  %57 = load double, ptr %10, align 8, !tbaa !62
  %58 = fptrunc double %57 to float
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  store float %58, ptr %59, align 8, !tbaa !64
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 6
  store float %58, ptr %60, align 4, !tbaa !67
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  store float %58, ptr %61, align 8, !tbaa !68
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  store float 0.000000e+00, ptr %62, align 4, !tbaa !69
  %63 = and i32 %56, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct._GeometryInfo, ptr %10, i64 0, i32 1
  %67 = load double, ptr %66, align 8, !tbaa !70
  %68 = fptrunc double %67 to float
  store float %68, ptr %60, align 4, !tbaa !67
  br label %69

69:                                               ; preds = %65, %55
  %70 = and i32 %56, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct._GeometryInfo, ptr %10, i64 0, i32 2
  %74 = load double, ptr %73, align 8, !tbaa !71
  %75 = fptrunc double %74 to float
  store float %75, ptr %61, align 8, !tbaa !68
  br label %76

76:                                               ; preds = %72, %69
  %77 = and i32 %56, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct._GeometryInfo, ptr %10, i64 0, i32 3
  %81 = load double, ptr %80, align 8, !tbaa !72
  %82 = fptrunc double %81 to float
  store float %82, ptr %62, align 4, !tbaa !69
  br label %83

83:                                               ; preds = %79, %76
  store i32 1, ptr %12, align 4, !tbaa !6
  store i64 0, ptr %13, align 8, !tbaa !41
  %84 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #26
  store ptr %84, ptr %9, align 8, !tbaa !17
  %85 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %27, ptr noundef %3) #26
  store ptr %85, ptr %8, align 8, !tbaa !17
  %86 = load i64, ptr %25, align 8, !tbaa !42
  %87 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %88 = shl i64 %87, 5
  %89 = icmp ugt i64 %86, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %27) #26
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %102

98:                                               ; preds = %93, %90, %83
  %99 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %100 = icmp ult i64 %99, 2
  %101 = select i1 %100, i64 1, i64 2
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi i64 [ %97, %96 ], [ %101, %98 ]
  %104 = trunc i64 %103 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %104)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @ColorizeImage.omp_outlined, ptr nonnull %6, ptr nonnull %12, ptr nonnull %9, ptr nonnull %7, ptr nonnull %8, ptr nonnull %11, ptr nonnull %14, ptr nonnull %5, ptr nonnull %13)
  %105 = load ptr, ptr %9, align 8, !tbaa !17
  %106 = call ptr @DestroyCacheView(ptr noundef %105) #26
  store ptr %106, ptr %9, align 8, !tbaa !17
  %107 = load ptr, ptr %8, align 8, !tbaa !17
  %108 = call ptr @DestroyCacheView(ptr noundef %107) #26
  store ptr %108, ptr %8, align 8, !tbaa !17
  %109 = load i32, ptr %12, align 4, !tbaa !6
  %110 = icmp eq i32 %109, 0
  %111 = load ptr, ptr %11, align 8, !tbaa !17
  br i1 %110, label %112, label %114

112:                                              ; preds = %102
  %113 = call ptr @DestroyImage(ptr noundef %111) #26
  br label %114

114:                                              ; preds = %102, %112, %53, %22, %32
  %115 = phi ptr [ null, %32 ], [ null, %22 ], [ %27, %53 ], [ %113, %112 ], [ %111, %102 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret ptr %115
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !52
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #30
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !50
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #30
  %17 = fpext float %16 to double
  %18 = fcmp olt double %17, 1.000000e-15
  br i1 %18, label %20, label %19

19:                                               ; preds = %11, %1
  br label %20

20:                                               ; preds = %11, %19
  %21 = phi i32 [ 0, %19 ], [ 1, %11 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ColorizeImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull readonly align 2 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #7 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %154

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %19, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 1, ptr %14, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !tbaa !6
  %22 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !44
  %25 = load i64, ptr %12, align 8, !tbaa !44
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %153, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %29 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 3
  br label %33

33:                                               ; preds = %27, %145
  %34 = phi i64 [ %24, %27 ], [ %151, %145 ]
  %35 = phi i64 [ %25, %27 ], [ %149, %145 ]
  %36 = icmp sgt i64 %35, %34
  br i1 %36, label %145, label %37

37:                                               ; preds = %33, %139
  %38 = phi i64 [ %140, %139 ], [ %35, %33 ]
  %39 = load i32, ptr %3, align 4, !tbaa !6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %139, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8, !tbaa !17
  %43 = load ptr, ptr %2, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !45
  %46 = load ptr, ptr %5, align 8, !tbaa !17
  %47 = call ptr @GetCacheViewVirtualPixels(ptr noundef %42, i64 noundef 0, i64 noundef %38, i64 noundef %45, i64 noundef 1, ptr noundef %46) #31
  %48 = load ptr, ptr %6, align 8, !tbaa !17
  %49 = load ptr, ptr %7, align 8, !tbaa !17
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !45
  %52 = load ptr, ptr %5, align 8, !tbaa !17
  %53 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %48, i64 noundef 0, i64 noundef %38, i64 noundef %51, i64 noundef 1, ptr noundef %52) #31
  %54 = icmp eq ptr %47, null
  %55 = icmp eq ptr %53, null
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %138, label %57

57:                                               ; preds = %41
  %58 = load ptr, ptr %2, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !45
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %119

62:                                               ; preds = %57
  %63 = load float, ptr %28, align 8, !tbaa !64
  %64 = fpext float %63 to double
  %65 = fsub double 1.000000e+02, %64
  %66 = load <2 x float>, ptr %30, align 4, !tbaa !73
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %68 = fpext <2 x float> %67 to <2 x double>
  %69 = fsub <2 x double> <double 1.000000e+02, double 1.000000e+02>, %68
  %70 = load ptr, ptr %7, align 8, !tbaa !17
  %71 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !61
  %73 = icmp eq i32 %72, 0
  %74 = load float, ptr %31, align 4
  %75 = fpext float %74 to double
  %76 = fsub double 1.000000e+02, %75
  br label %77

77:                                               ; preds = %62, %112
  %78 = phi ptr [ %53, %62 ], [ %116, %112 ]
  %79 = phi i64 [ 0, %62 ], [ %117, %112 ]
  %80 = phi ptr [ %47, %62 ], [ %115, %112 ]
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  %82 = load i16, ptr %81, align 2, !tbaa !46
  %83 = uitofp i16 %82 to double
  %84 = load i16, ptr %29, align 2, !tbaa !46
  %85 = uitofp i16 %84 to float
  %86 = fmul float %63, %85
  %87 = fpext float %86 to double
  %88 = call double @llvm.fmuladd.f64(double %83, double %65, double %87)
  %89 = fdiv double %88, 1.000000e+02
  %90 = fptoui double %89 to i16
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 2
  store i16 %90, ptr %91, align 2, !tbaa !46
  %92 = load <2 x i16>, ptr %80, align 2, !tbaa !52
  %93 = uitofp <2 x i16> %92 to <2 x double>
  %94 = load <2 x i16>, ptr %9, align 2, !tbaa !52
  %95 = uitofp <2 x i16> %94 to <2 x float>
  %96 = fmul <2 x float> %67, %95
  %97 = fpext <2 x float> %96 to <2 x double>
  %98 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %69, <2 x double> %97)
  %99 = fdiv <2 x double> %98, <double 1.000000e+02, double 1.000000e+02>
  %100 = fptoui <2 x double> %99 to <2 x i16>
  store <2 x i16> %100, ptr %78, align 2, !tbaa !52
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  %102 = load i16, ptr %101, align 2, !tbaa !51
  br i1 %73, label %112, label %103

103:                                              ; preds = %77
  %104 = uitofp i16 %102 to double
  %105 = load i16, ptr %32, align 2, !tbaa !51
  %106 = uitofp i16 %105 to float
  %107 = fmul float %74, %106
  %108 = fpext float %107 to double
  %109 = call double @llvm.fmuladd.f64(double %104, double %76, double %108)
  %110 = fdiv double %109, 1.000000e+02
  %111 = fptoui double %110 to i16
  br label %112

112:                                              ; preds = %77, %103
  %113 = phi i16 [ %111, %103 ], [ %102, %77 ]
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 3
  store i16 %113, ptr %114, align 2
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 1
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %117 = add nuw nsw i64 %79, 1
  %118 = icmp eq i64 %117, %60
  br i1 %118, label %119, label %77, !llvm.loop !74

119:                                              ; preds = %112, %57
  %120 = load ptr, ptr %6, align 8, !tbaa !17
  %121 = load ptr, ptr %5, align 8, !tbaa !17
  %122 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %120, ptr noundef %121) #31
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %125

125:                                              ; preds = %124, %119
  %126 = load ptr, ptr %2, align 8, !tbaa !17
  %127 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 47
  %128 = load ptr, ptr %127, align 8, !tbaa !54
  %129 = icmp eq ptr %128, null
  br i1 %129, label %139, label %130

130:                                              ; preds = %125
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ColorizeImage.var)
  %131 = load ptr, ptr %2, align 8, !tbaa !17
  %132 = load i64, ptr %10, align 8, !tbaa !41
  %133 = add nsw i64 %132, 1
  store i64 %133, ptr %10, align 8, !tbaa !41
  %134 = getelementptr inbounds %struct._Image, ptr %131, i64 0, i32 8
  %135 = load i64, ptr %134, align 8, !tbaa !42
  %136 = call fastcc i32 @SetImageProgress(ptr noundef %131, ptr noundef nonnull @.str.27, i64 noundef %132, i64 noundef %135) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ColorizeImage.var)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130, %41
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %139

139:                                              ; preds = %138, %125, %130, %37
  %140 = add nsw i64 %38, 1
  %141 = load i64, ptr %13, align 8, !tbaa !44
  %142 = icmp slt i64 %38, %141
  br i1 %142, label %37, label %143

143:                                              ; preds = %139
  %144 = load i64, ptr %12, align 8, !tbaa !44
  br label %145

145:                                              ; preds = %143, %33
  %146 = phi i64 [ %35, %33 ], [ %144, %143 ]
  %147 = phi i64 [ %34, %33 ], [ %141, %143 ]
  %148 = load i64, ptr %14, align 8, !tbaa !44
  %149 = add nsw i64 %148, %146
  store i64 %149, ptr %12, align 8, !tbaa !44
  %150 = add nsw i64 %148, %147
  %151 = call i64 @llvm.smin.i64(i64 %150, i64 %19)
  store i64 %151, ptr %13, align 8, !tbaa !44
  %152 = icmp sgt i64 %149, %151
  br i1 %152, label %153, label %33

153:                                              ; preds = %145, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %154

154:                                              ; preds = %153, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #11 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ColorMatrixImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [6 x [6 x double]], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [4096 x i8], align 16
  %14 = alloca ptr, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !17
  store ptr %1, ptr %5, align 8, !tbaa !17
  store ptr %2, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %9) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %9, i8 0, i64 288, i1 false)
  store double 1.000000e+00, ptr %9, align 16
  %16 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 1, i64 1
  store double 1.000000e+00, ptr %16, align 8
  %17 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 2, i64 2
  store double 1.000000e+00, ptr %17, align 16
  %18 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 3, i64 3
  store double 1.000000e+00, ptr %18, align 8
  %19 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 4, i64 4
  store double 1.000000e+00, ptr %19, align 16
  %20 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 5, i64 5
  store double 1.000000e+00, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %22 = load i32, ptr %21, align 8, !tbaa !39
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 912, ptr noundef nonnull @.str.22, ptr noundef nonnull %25) #26
  br label %27

27:                                               ; preds = %24, %3
  %28 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !75
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !77
  %34 = icmp sgt i64 %33, 0
  %35 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 5
  br label %36

36:                                               ; preds = %31, %55
  %37 = phi i64 [ 0, %31 ], [ %57, %55 ]
  %38 = phi i64 [ 0, %31 ], [ %56, %55 ]
  br i1 %34, label %39, label %55

39:                                               ; preds = %36
  %40 = icmp ult i64 %37, 6
  br label %41

41:                                               ; preds = %39, %51
  %42 = phi i64 [ 0, %39 ], [ %53, %51 ]
  %43 = phi i64 [ %38, %39 ], [ %52, %51 ]
  %44 = icmp ult i64 %42, 6
  %45 = and i1 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load ptr, ptr %35, align 8, !tbaa !78
  %48 = getelementptr inbounds double, ptr %47, i64 %43
  %49 = load double, ptr %48, align 8, !tbaa !40
  %50 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 %37, i64 %42
  store double %49, ptr %50, align 8, !tbaa !40
  br label %51

51:                                               ; preds = %46, %41
  %52 = add nsw i64 %43, 1
  %53 = add nuw nsw i64 %42, 1
  %54 = icmp eq i64 %53, %33
  br i1 %54, label %55, label %41, !llvm.loop !79

55:                                               ; preds = %51, %36
  %56 = phi i64 [ %38, %36 ], [ %52, %51 ]
  %57 = add nuw nsw i64 %37, 1
  %58 = icmp eq i64 %57, %29
  br i1 %58, label %59, label %36, !llvm.loop !80

59:                                               ; preds = %55, %27
  %60 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #26
  store ptr %60, ptr %10, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %128, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %60, i32 noundef 1) #26
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %66) #26
  %67 = tail call ptr @DestroyImage(ptr noundef nonnull %60) #26
  br label %128

68:                                               ; preds = %62
  %69 = load i32, ptr %21, align 8, !tbaa !39
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  %72 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, ptr noundef nonnull @.str.28) #26
  %73 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #26
  store ptr %73, ptr %14, align 8, !tbaa !17
  br label %74

74:                                               ; preds = %71, %88
  %75 = phi i64 [ 0, %71 ], [ %91, %88 ]
  %76 = load ptr, ptr %14, align 8, !tbaa !17
  store i8 0, ptr %76, align 1, !tbaa !38
  %77 = sitofp i64 %75 to double
  %78 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %13, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %77) #26
  %79 = call i32 @ConcatenateString(ptr noundef nonnull %14, ptr noundef nonnull %13) #26
  br label %80

80:                                               ; preds = %74, %80
  %81 = phi i64 [ 0, %74 ], [ %86, %80 ]
  %82 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 %75, i64 %81
  %83 = load double, ptr %82, align 8, !tbaa !40
  %84 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %13, i64 noundef 4096, ptr noundef nonnull @.str.30, double noundef %83) #26
  %85 = call i32 @ConcatenateString(ptr noundef nonnull %14, ptr noundef nonnull %13) #26
  %86 = add nuw nsw i64 %81, 1
  %87 = icmp eq i64 %86, 6
  br i1 %87, label %88, label %80, !llvm.loop !81

88:                                               ; preds = %80
  %89 = load ptr, ptr %14, align 8, !tbaa !17
  %90 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 955, ptr noundef nonnull @.str.22, ptr noundef %89) #26
  %91 = add nuw nsw i64 %75, 1
  %92 = icmp eq i64 %91, 6
  br i1 %92, label %93, label %74, !llvm.loop !82

93:                                               ; preds = %88
  %94 = load ptr, ptr %14, align 8, !tbaa !17
  %95 = call ptr @DestroyString(ptr noundef %94) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %13) #8
  br label %96

96:                                               ; preds = %93, %68
  store i32 1, ptr %11, align 4, !tbaa !6
  store i64 0, ptr %12, align 8, !tbaa !41
  %97 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #26
  store ptr %97, ptr %8, align 8, !tbaa !17
  %98 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %60, ptr noundef %2) #26
  store ptr %98, ptr %7, align 8, !tbaa !17
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %100 = load i64, ptr %99, align 8, !tbaa !42
  %101 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %102 = shl i64 %101, 5
  %103 = icmp ugt i64 %100, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %60) #26
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %116

112:                                              ; preds = %107, %104, %96
  %113 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %114 = icmp ult i64 %113, 2
  %115 = select i1 %114, i64 1, i64 2
  br label %116

116:                                              ; preds = %112, %110
  %117 = phi i64 [ %111, %110 ], [ %115, %112 ]
  %118 = trunc i64 %117 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %118)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @ColorMatrixImage.omp_outlined, ptr nonnull %4, ptr nonnull %11, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %10, ptr nonnull %5, ptr nonnull %9, ptr nonnull %12)
  %119 = load ptr, ptr %7, align 8, !tbaa !17
  %120 = call ptr @DestroyCacheView(ptr noundef %119) #26
  store ptr %120, ptr %7, align 8, !tbaa !17
  %121 = load ptr, ptr %8, align 8, !tbaa !17
  %122 = call ptr @DestroyCacheView(ptr noundef %121) #26
  store ptr %122, ptr %8, align 8, !tbaa !17
  %123 = load i32, ptr %11, align 4, !tbaa !6
  %124 = icmp eq i32 %123, 0
  %125 = load ptr, ptr %10, align 8, !tbaa !17
  br i1 %124, label %126, label %128

126:                                              ; preds = %116
  %127 = call ptr @DestroyImage(ptr noundef %125) #26
  br label %128

128:                                              ; preds = %116, %126, %59, %65
  %129 = phi ptr [ null, %65 ], [ null, %59 ], [ %127, %126 ], [ %125, %116 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret ptr %129
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ColorMatrixImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #7 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %193

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %19, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 1, ptr %14, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !tbaa !6
  %22 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !44
  %25 = load i64, ptr %12, align 8, !tbaa !44
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %192, label %27

27:                                               ; preds = %21, %184
  %28 = phi i64 [ %190, %184 ], [ %24, %21 ]
  %29 = phi i64 [ %188, %184 ], [ %25, %21 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %184, label %31

31:                                               ; preds = %27, %178
  %32 = phi i64 [ %179, %178 ], [ %29, %27 ]
  %33 = load i32, ptr %3, align 4, !tbaa !6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %178, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !17
  %37 = load ptr, ptr %2, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !45
  %40 = load ptr, ptr %5, align 8, !tbaa !17
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #31
  %42 = load ptr, ptr %6, align 8, !tbaa !17
  %43 = load ptr, ptr %7, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !45
  %46 = load ptr, ptr %5, align 8, !tbaa !17
  %47 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %42, i64 noundef 0, i64 noundef %32, i64 noundef %45, i64 noundef 1, ptr noundef %46) #31
  %48 = icmp eq ptr %41, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %177, label %51

51:                                               ; preds = %35
  %52 = load ptr, ptr %4, align 8, !tbaa !17
  %53 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %52) #26
  %54 = load ptr, ptr %6, align 8, !tbaa !17
  %55 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #26
  %56 = load ptr, ptr %2, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !45
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %158

60:                                               ; preds = %51
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = getelementptr inbounds %struct.KernelInfo, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !75
  %64 = call i64 @llvm.umin.i64(i64 %63, i64 6)
  %65 = icmp eq i64 %63, 0
  %66 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 6
  %67 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 1
  %68 = icmp eq ptr %53, null
  %69 = icmp eq ptr %55, null
  br label %70

70:                                               ; preds = %60, %153
  %71 = phi ptr [ %47, %60 ], [ %155, %153 ]
  %72 = phi ptr [ %41, %60 ], [ %154, %153 ]
  %73 = phi i64 [ 0, %60 ], [ %156, %153 ]
  br i1 %65, label %153, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 2
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 1
  %77 = load i32, ptr %66, align 8, !tbaa !61
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 3
  %80 = load i32, ptr %67, align 4, !tbaa !47
  %81 = icmp eq i32 %80, 12
  %82 = getelementptr inbounds i16, ptr %53, i64 %73
  %83 = icmp ne i32 %80, 12
  %84 = select i1 %83, i1 true, i1 %69
  %85 = getelementptr inbounds i16, ptr %55, i64 %73
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  br label %89

89:                                               ; preds = %74, %150
  %90 = phi i64 [ 0, %74 ], [ %151, %150 ]
  %91 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 %90
  %92 = load double, ptr %91, align 16, !tbaa !40
  %93 = load i16, ptr %75, align 2, !tbaa !46
  %94 = uitofp i16 %93 to double
  %95 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 %90, i64 1
  %96 = load double, ptr %95, align 8, !tbaa !40
  %97 = load i16, ptr %76, align 2, !tbaa !49
  %98 = uitofp i16 %97 to double
  %99 = fmul double %96, %98
  %100 = call double @llvm.fmuladd.f64(double %92, double %94, double %99)
  %101 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 %90, i64 2
  %102 = load double, ptr %101, align 16, !tbaa !40
  %103 = load i16, ptr %72, align 2, !tbaa !50
  %104 = uitofp i16 %103 to double
  %105 = call double @llvm.fmuladd.f64(double %102, double %104, double %100)
  %106 = fptrunc double %105 to float
  br i1 %78, label %116, label %107

107:                                              ; preds = %89
  %108 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 %90, i64 3
  %109 = load double, ptr %108, align 8, !tbaa !40
  %110 = load i16, ptr %79, align 2, !tbaa !51
  %111 = xor i16 %110, -1
  %112 = uitofp i16 %111 to double
  %113 = fpext float %106 to double
  %114 = call double @llvm.fmuladd.f64(double %109, double %112, double %113)
  %115 = fptrunc double %114 to float
  br label %116

116:                                              ; preds = %107, %89
  %117 = phi float [ %115, %107 ], [ %106, %89 ]
  br i1 %81, label %118, label %130

118:                                              ; preds = %116
  %119 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 %90, i64 4
  %120 = load double, ptr %119, align 16, !tbaa !40
  br i1 %68, label %124, label %121

121:                                              ; preds = %118
  %122 = load i16, ptr %82, align 2, !tbaa !52
  %123 = zext i16 %122 to i32
  br label %124

124:                                              ; preds = %118, %121
  %125 = phi i32 [ %123, %121 ], [ 0, %118 ]
  %126 = sitofp i32 %125 to double
  %127 = fpext float %117 to double
  %128 = call double @llvm.fmuladd.f64(double %120, double %126, double %127)
  %129 = fptrunc double %128 to float
  br label %130

130:                                              ; preds = %124, %116
  %131 = phi float [ %129, %124 ], [ %117, %116 ]
  %132 = getelementptr inbounds [6 x [6 x double]], ptr %9, i64 0, i64 %90, i64 5
  %133 = load double, ptr %132, align 8, !tbaa !40
  %134 = fpext float %131 to double
  %135 = call double @llvm.fmuladd.f64(double %133, double 6.553500e+04, double %134)
  %136 = fptrunc double %135 to float
  switch i64 %90, label %150 [
    i64 0, label %137
    i64 1, label %139
    i64 2, label %141
    i64 3, label %143
    i64 4, label %147
  ]

137:                                              ; preds = %130
  %138 = call fastcc zeroext i16 @ClampToQuantum(float noundef %136) #30
  store i16 %138, ptr %88, align 2, !tbaa !46
  br label %150

139:                                              ; preds = %130
  %140 = call fastcc zeroext i16 @ClampToQuantum(float noundef %136) #30
  store i16 %140, ptr %87, align 2, !tbaa !49
  br label %150

141:                                              ; preds = %130
  %142 = call fastcc zeroext i16 @ClampToQuantum(float noundef %136) #30
  store i16 %142, ptr %71, align 2, !tbaa !50
  br label %150

143:                                              ; preds = %130
  br i1 %78, label %150, label %144

144:                                              ; preds = %143
  %145 = call fastcc zeroext i16 @ClampToQuantum(float noundef %136) #30
  %146 = xor i16 %145, -1
  store i16 %146, ptr %86, align 2, !tbaa !51
  br label %150

147:                                              ; preds = %130
  br i1 %84, label %150, label %148

148:                                              ; preds = %147
  %149 = call fastcc zeroext i16 @ClampToQuantum(float noundef %136) #30
  store i16 %149, ptr %85, align 2, !tbaa !52
  br label %150

150:                                              ; preds = %137, %139, %141, %130, %144, %143, %148, %147
  %151 = add nuw nsw i64 %90, 1
  %152 = icmp eq i64 %151, %64
  br i1 %152, label %153, label %89, !llvm.loop !83

153:                                              ; preds = %150, %70
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %156 = add nuw nsw i64 %73, 1
  %157 = icmp eq i64 %156, %58
  br i1 %157, label %158, label %70, !llvm.loop !84

158:                                              ; preds = %153, %51
  %159 = load ptr, ptr %6, align 8, !tbaa !17
  %160 = load ptr, ptr %5, align 8, !tbaa !17
  %161 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %159, ptr noundef %160) #31
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %164

164:                                              ; preds = %163, %158
  %165 = load ptr, ptr %2, align 8, !tbaa !17
  %166 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 47
  %167 = load ptr, ptr %166, align 8, !tbaa !54
  %168 = icmp eq ptr %167, null
  br i1 %168, label %178, label %169

169:                                              ; preds = %164
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ColorMatrixImage.var)
  %170 = load ptr, ptr %2, align 8, !tbaa !17
  %171 = load i64, ptr %10, align 8, !tbaa !41
  %172 = add nsw i64 %171, 1
  store i64 %172, ptr %10, align 8, !tbaa !41
  %173 = getelementptr inbounds %struct._Image, ptr %170, i64 0, i32 8
  %174 = load i64, ptr %173, align 8, !tbaa !42
  %175 = call fastcc i32 @SetImageProgress(ptr noundef %170, ptr noundef nonnull @.str.31, i64 noundef %171, i64 noundef %174) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ColorMatrixImage.var)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169, %35
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %178

178:                                              ; preds = %177, %164, %169, %31
  %179 = add nsw i64 %32, 1
  %180 = load i64, ptr %13, align 8, !tbaa !44
  %181 = icmp slt i64 %32, %180
  br i1 %181, label %31, label %182

182:                                              ; preds = %178
  %183 = load i64, ptr %12, align 8, !tbaa !44
  br label %184

184:                                              ; preds = %182, %27
  %185 = phi i64 [ %29, %27 ], [ %183, %182 ]
  %186 = phi i64 [ %28, %27 ], [ %180, %182 ]
  %187 = load i64, ptr %14, align 8, !tbaa !44
  %188 = add nsw i64 %187, %185
  store i64 %188, ptr %12, align 8, !tbaa !44
  %189 = add nsw i64 %187, %186
  %190 = call i64 @llvm.smin.i64(i64 %189, i64 %19)
  store i64 %190, ptr %13, align 8, !tbaa !44
  %191 = icmp sgt i64 %188, %190
  br i1 %191, label %192, label %27

192:                                              ; preds = %184, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %193

193:                                              ; preds = %192, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyFxInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #26
  store ptr %4, ptr %2, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call ptr @DestroyString(ptr noundef %6) #26
  store ptr %7, ptr %5, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = tail call ptr @DestroySplayTree(ptr noundef %9) #26
  store ptr %10, ptr %8, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = tail call ptr @DestroySplayTree(ptr noundef %12) #26
  store ptr %13, ptr %11, align 8, !tbaa !14
  %14 = load ptr, ptr %0, align 8, !tbaa !13
  %15 = tail call i64 @GetImageListLength(ptr noundef %14) #26
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %15, %17 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %18, align 8, !tbaa !16
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = tail call ptr @DestroyCacheView(ptr noundef %24) #26
  %26 = load ptr, ptr %18, align 8, !tbaa !16
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  store ptr %25, ptr %27, align 8, !tbaa !17
  %28 = icmp ugt i64 %20, 1
  br i1 %28, label %19, label %29, !llvm.loop !85

29:                                               ; preds = %19, %1
  %30 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = tail call ptr @RelinquishMagickMemory(ptr noundef %31) #26
  store ptr %32, ptr %30, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = tail call ptr @DestroyRandomInfo(ptr noundef %34) #26
  store ptr %35, ptr %33, align 8, !tbaa !35
  %36 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #26
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FxEvaluateExpression(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @FxEvaluateChannelExpression(ptr noundef %0, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %1, ptr noundef %2) #30, !range !48
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FxEvaluateChannelExpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %9, ptr noundef nonnull %7, ptr noundef %5) #30
  store double %10, ptr %4, align 8, !tbaa !40
  %11 = load i32, ptr %5, align 8, !tbaa !86
  %12 = icmp ne i32 %11, 410
  %13 = zext i1 %12 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FxPreprocessExpression(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  store ptr null, ptr %4, align 8, !tbaa !37
  %6 = tail call i32 @FxEvaluateChannelExpression(ptr noundef %0, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %1, ptr noundef %2) #30, !range !48
  store ptr %5, ptr %4, align 8, !tbaa !37
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !40
  %11 = load i32, ptr %6, align 8, !tbaa !86
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %811

13:                                               ; preds = %7
  %14 = tail call ptr @__ctype_b_loc() #27
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %24, %16 ], [ %4, %13 ]
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i16, ptr %15, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !52
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  br i1 %23, label %25, label %16, !llvm.loop !87

25:                                               ; preds = %16
  %26 = icmp eq i8 %18, 0
  br i1 %26, label %811, label %27

27:                                               ; preds = %25
  store i8 0, ptr %9, align 16, !tbaa !38
  %28 = tail call fastcc ptr @FxOperatorPrecedence(ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  %29 = icmp eq ptr %28, null
  br i1 %29, label %224, label %30

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %17 to i64
  %33 = sub i64 %31, %32
  %34 = add i64 %33, 1
  %35 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %17, i64 noundef %34) #26
  %36 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %37 = load i8, ptr %28, align 1, !tbaa !38
  switch i8 %37, label %221 [
    i8 126, label %38
    i8 33, label %44
    i8 94, label %49
    i8 42, label %53
    i8 -3, label %53
    i8 47, label %57
    i8 37, label %68
    i8 43, label %79
    i8 45, label %83
    i8 -11, label %87
    i8 -10, label %96
    i8 60, label %105
    i8 -9, label %110
    i8 62, label %115
    i8 -8, label %120
    i8 -7, label %125
    i8 -6, label %132
    i8 38, label %139
    i8 124, label %148
    i8 -5, label %157
    i8 -4, label %164
    i8 63, label %171
    i8 61, label %186
    i8 44, label %215
    i8 59, label %218
  ]

38:                                               ; preds = %30
  %39 = getelementptr inbounds i8, ptr %28, i64 1
  %40 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %39, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %41 = fptoui double %40 to i64
  %42 = xor i64 %41, -1
  %43 = uitofp i64 %42 to double
  store double %43, ptr %5, align 8, !tbaa !40
  br label %811

44:                                               ; preds = %30
  %45 = getelementptr inbounds i8, ptr %28, i64 1
  %46 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %45, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %46, ptr %5, align 8, !tbaa !40
  %47 = fcmp oeq double %46, 0.000000e+00
  %48 = select i1 %47, double 1.000000e+00, double 0.000000e+00
  br label %811

49:                                               ; preds = %30
  %50 = getelementptr inbounds i8, ptr %28, i64 1
  %51 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %50, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %52 = call double @pow(double noundef %36, double noundef %51) #26
  store double %52, ptr %5, align 8, !tbaa !40
  br label %811

53:                                               ; preds = %30, %30
  %54 = getelementptr inbounds i8, ptr %28, i64 1
  %55 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %54, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %55, ptr %5, align 8, !tbaa !40
  %56 = fmul double %36, %55
  br label %811

57:                                               ; preds = %30
  %58 = getelementptr inbounds i8, ptr %28, i64 1
  %59 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %58, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %59, ptr %5, align 8, !tbaa !40
  %60 = fcmp oeq double %59, 0.000000e+00
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, ptr %6, align 8, !tbaa !86
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %811

64:                                               ; preds = %61
  %65 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2176, i32 noundef 410, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull %17) #26
  br label %811

66:                                               ; preds = %57
  %67 = fdiv double %36, %59
  br label %811

68:                                               ; preds = %30
  %69 = getelementptr inbounds i8, ptr %28, i64 1
  %70 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %69, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %71 = fadd double %70, 5.000000e-01
  %72 = call double @llvm.floor.f64(double %71)
  %73 = call double @llvm.fabs.f64(double %72)
  store double %73, ptr %5, align 8, !tbaa !40
  %74 = fcmp oeq double %72, 0.000000e+00
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2188, i32 noundef 410, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull %17) #26
  br label %811

77:                                               ; preds = %68
  %78 = call double @fmod(double noundef %36, double noundef %73) #26
  br label %811

79:                                               ; preds = %30
  %80 = getelementptr inbounds i8, ptr %28, i64 1
  %81 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %80, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %81, ptr %5, align 8, !tbaa !40
  %82 = fadd double %36, %81
  br label %811

83:                                               ; preds = %30
  %84 = getelementptr inbounds i8, ptr %28, i64 1
  %85 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %84, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %85, ptr %5, align 8, !tbaa !40
  %86 = fsub double %36, %85
  br label %811

87:                                               ; preds = %30
  %88 = getelementptr inbounds i8, ptr %28, i64 1
  %89 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %88, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %90 = fadd double %36, 5.000000e-01
  %91 = fptoui double %90 to i64
  %92 = fadd double %89, 5.000000e-01
  %93 = fptoui double %92 to i64
  %94 = shl i64 %91, %93
  %95 = uitofp i64 %94 to double
  store double %95, ptr %5, align 8, !tbaa !40
  br label %811

96:                                               ; preds = %30
  %97 = getelementptr inbounds i8, ptr %28, i64 1
  %98 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %97, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %99 = fadd double %36, 5.000000e-01
  %100 = fptoui double %99 to i64
  %101 = fadd double %98, 5.000000e-01
  %102 = fptoui double %101 to i64
  %103 = lshr i64 %100, %102
  %104 = uitofp i64 %103 to double
  store double %104, ptr %5, align 8, !tbaa !40
  br label %811

105:                                              ; preds = %30
  %106 = getelementptr inbounds i8, ptr %28, i64 1
  %107 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %106, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %107, ptr %5, align 8, !tbaa !40
  %108 = fcmp olt double %36, %107
  %109 = select i1 %108, double 1.000000e+00, double 0.000000e+00
  br label %811

110:                                              ; preds = %30
  %111 = getelementptr inbounds i8, ptr %28, i64 1
  %112 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %111, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %112, ptr %5, align 8, !tbaa !40
  %113 = fcmp ole double %36, %112
  %114 = select i1 %113, double 1.000000e+00, double 0.000000e+00
  br label %811

115:                                              ; preds = %30
  %116 = getelementptr inbounds i8, ptr %28, i64 1
  %117 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %116, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %117, ptr %5, align 8, !tbaa !40
  %118 = fcmp ogt double %36, %117
  %119 = select i1 %118, double 1.000000e+00, double 0.000000e+00
  br label %811

120:                                              ; preds = %30
  %121 = getelementptr inbounds i8, ptr %28, i64 1
  %122 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %121, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %122, ptr %5, align 8, !tbaa !40
  %123 = fcmp oge double %36, %122
  %124 = select i1 %123, double 1.000000e+00, double 0.000000e+00
  br label %811

125:                                              ; preds = %30
  %126 = getelementptr inbounds i8, ptr %28, i64 1
  %127 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %126, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %127, ptr %5, align 8, !tbaa !40
  %128 = fsub double %36, %127
  %129 = call double @llvm.fabs.f64(double %128)
  %130 = fcmp olt double %129, 1.000000e-15
  %131 = select i1 %130, double 1.000000e-15, double 0.000000e+00
  br label %811

132:                                              ; preds = %30
  %133 = getelementptr inbounds i8, ptr %28, i64 1
  %134 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %133, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %134, ptr %5, align 8, !tbaa !40
  %135 = fsub double %36, %134
  %136 = call double @llvm.fabs.f64(double %135)
  %137 = fcmp oge double %136, 1.000000e-15
  %138 = select i1 %137, double 1.000000e+00, double 0.000000e+00
  br label %811

139:                                              ; preds = %30
  %140 = getelementptr inbounds i8, ptr %28, i64 1
  %141 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %140, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %142 = fadd double %36, 5.000000e-01
  %143 = fptoui double %142 to i64
  %144 = fadd double %141, 5.000000e-01
  %145 = fptoui double %144 to i64
  %146 = and i64 %145, %143
  %147 = uitofp i64 %146 to double
  store double %147, ptr %5, align 8, !tbaa !40
  br label %811

148:                                              ; preds = %30
  %149 = getelementptr inbounds i8, ptr %28, i64 1
  %150 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %149, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %151 = fadd double %36, 5.000000e-01
  %152 = fptoui double %151 to i64
  %153 = fadd double %150, 5.000000e-01
  %154 = fptoui double %153 to i64
  %155 = or i64 %154, %152
  %156 = uitofp i64 %155 to double
  store double %156, ptr %5, align 8, !tbaa !40
  br label %811

157:                                              ; preds = %30
  %158 = getelementptr inbounds i8, ptr %28, i64 1
  %159 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %158, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %160 = fcmp ogt double %36, 0.000000e+00
  %161 = fcmp ogt double %159, 0.000000e+00
  %162 = select i1 %160, i1 %161, i1 false
  %163 = select i1 %162, double 1.000000e+00, double 0.000000e+00
  store double %163, ptr %5, align 8, !tbaa !40
  br label %811

164:                                              ; preds = %30
  %165 = getelementptr inbounds i8, ptr %28, i64 1
  %166 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %165, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %167 = fcmp ogt double %36, 0.000000e+00
  %168 = fcmp ogt double %166, 0.000000e+00
  %169 = select i1 %167, i1 true, i1 %168
  %170 = select i1 %169, double 1.000000e+00, double 0.000000e+00
  store double %170, ptr %5, align 8, !tbaa !40
  br label %811

171:                                              ; preds = %30
  %172 = getelementptr inbounds i8, ptr %28, i64 1
  %173 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %172, i64 noundef 4096) #26
  store ptr %9, ptr %8, align 8, !tbaa !17
  %174 = call ptr @StringToken(ptr noundef nonnull @.str.33, ptr noundef nonnull %8) #26
  %175 = load ptr, ptr %8, align 8, !tbaa !17
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2280, i32 noundef 410, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #26
  br label %811

179:                                              ; preds = %171
  %180 = call double @llvm.fabs.f64(double %36)
  %181 = fcmp ult double %180, 1.000000e-15
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %174, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  br label %811

184:                                              ; preds = %179
  %185 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %175, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  br label %811

186:                                              ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #8
  br label %187

187:                                              ; preds = %187, %186
  %188 = phi ptr [ %9, %186 ], [ %196, %187 ]
  store ptr %188, ptr %8, align 8, !tbaa !17
  %189 = load ptr, ptr %14, align 8, !tbaa !17
  %190 = load i8, ptr %188, align 1, !tbaa !38
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds i16, ptr %189, i64 %191
  %193 = load i16, ptr %192, align 2, !tbaa !52
  %194 = and i16 %193, 1024
  %195 = icmp eq i16 %194, 0
  %196 = getelementptr inbounds i8, ptr %188, i64 1
  br i1 %195, label %197, label %187, !llvm.loop !88

197:                                              ; preds = %187
  %198 = icmp eq i8 %190, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %197
  %200 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2300, i32 noundef 410, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #26
  br label %213

201:                                              ; preds = %197
  call void @ClearMagickException(ptr noundef nonnull %6) #26
  %202 = getelementptr inbounds i8, ptr %28, i64 1
  %203 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %202, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %203, ptr %5, align 8, !tbaa !40
  %204 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %10, i64 noundef 4096, ptr noundef nonnull @.str.35, double noundef %203) #26
  %205 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !15
  %207 = call i32 @DeleteNodeFromSplayTree(ptr noundef %206, ptr noundef nonnull %9) #26
  %208 = load ptr, ptr %205, align 8, !tbaa !15
  %209 = call ptr @ConstantString(ptr noundef nonnull %9) #26
  %210 = call ptr @ConstantString(ptr noundef nonnull %10) #26
  %211 = call i32 @AddValueToSplayTree(ptr noundef %208, ptr noundef %209, ptr noundef %210) #26
  %212 = load double, ptr %5, align 8, !tbaa !40
  br label %213

213:                                              ; preds = %201, %199
  %214 = phi double [ 0.000000e+00, %199 ], [ %212, %201 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #8
  br label %811

215:                                              ; preds = %30
  %216 = getelementptr inbounds i8, ptr %28, i64 1
  %217 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %216, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %217, ptr %5, align 8, !tbaa !40
  br label %811

218:                                              ; preds = %30
  %219 = getelementptr inbounds i8, ptr %28, i64 1
  %220 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %219, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  store double %220, ptr %5, align 8, !tbaa !40
  br label %811

221:                                              ; preds = %30
  %222 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %28, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %223 = fmul double %36, %222
  br label %811

224:                                              ; preds = %27
  %225 = load i8, ptr %17, align 1, !tbaa !38
  switch i8 %225, label %805 [
    i8 40, label %226
    i8 0, label %226
    i8 43, label %232
    i8 45, label %234
    i8 126, label %237
    i8 65, label %243
    i8 97, label %243
    i8 66, label %328
    i8 98, label %328
    i8 67, label %333
    i8 99, label %333
    i8 68, label %359
    i8 100, label %359
    i8 69, label %412
    i8 101, label %412
    i8 70, label %425
    i8 102, label %425
    i8 71, label %432
    i8 103, label %432
    i8 72, label %461
    i8 104, label %461
    i8 75, label %479
    i8 107, label %479
    i8 73, label %484
    i8 105, label %484
    i8 74, label %509
    i8 106, label %509
    i8 76, label %540
    i8 108, label %540
    i8 77, label %567
    i8 109, label %567
    i8 78, label %610
    i8 110, label %610
    i8 79, label %623
    i8 111, label %623
    i8 80, label %631
    i8 112, label %631
    i8 81, label %650
    i8 113, label %650
    i8 82, label %656
    i8 114, label %656
    i8 83, label %676
    i8 115, label %676
    i8 84, label %736
    i8 116, label %736
    i8 85, label %769
    i8 117, label %769
    i8 86, label %774
    i8 118, label %774
    i8 87, label %779
    i8 119, label %779
    i8 89, label %795
    i8 121, label %795
    i8 90, label %800
    i8 122, label %800
  ]

226:                                              ; preds = %224, %224
  %227 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %24, i64 noundef 4096) #26
  %228 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #32
  %229 = add i64 %228, -1
  %230 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 %229
  store i8 0, ptr %230, align 1, !tbaa !38
  %231 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  br label %811

232:                                              ; preds = %224
  %233 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  br label %811

234:                                              ; preds = %224
  %235 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %236 = fneg double %235
  br label %811

237:                                              ; preds = %224
  %238 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %239 = fadd double %238, 5.000000e-01
  %240 = fptoui double %239 to i64
  %241 = xor i64 %240, -1
  %242 = uitofp i64 %241 to double
  br label %811

243:                                              ; preds = %224, %224
  %244 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.37, i64 noundef 3) #26
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = getelementptr inbounds i8, ptr %17, i64 3
  %248 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %247, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %249 = tail call double @llvm.fabs.f64(double %248)
  br label %811

250:                                              ; preds = %243
  %251 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.38, i64 noundef 5) #26
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = getelementptr inbounds i8, ptr %17, i64 5
  %255 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %254, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %256 = tail call double @acosh(double noundef %255) #26
  br label %811

257:                                              ; preds = %250
  %258 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.39, i64 noundef 4) #26
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = getelementptr inbounds i8, ptr %17, i64 4
  %262 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %261, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %263 = tail call double @acos(double noundef %262) #26
  br label %811

264:                                              ; preds = %257
  %265 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.40, i64 noundef 4) #26
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %264
  %268 = getelementptr inbounds i8, ptr %17, i64 4
  %269 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %268, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %270 = fcmp oeq double %269, 0.000000e+00
  br i1 %270, label %811, label %271

271:                                              ; preds = %267
  %272 = fmul double %269, 0x400921FB54442D18
  %273 = tail call double @j1(double noundef %272) #26
  %274 = fmul double %273, 2.000000e+00
  %275 = fdiv double %274, %272
  %276 = fmul double %275, %275
  br label %811

277:                                              ; preds = %264
  %278 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.41, i64 noundef 5) #26
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %17, i64 5
  %282 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %281, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %283 = tail call double @asinh(double noundef %282) #26
  br label %811

284:                                              ; preds = %277
  %285 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.42, i64 noundef 4) #26
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = getelementptr inbounds i8, ptr %17, i64 4
  %289 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %288, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %290 = tail call double @asin(double noundef %289) #26
  br label %811

291:                                              ; preds = %284
  %292 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.43, i64 noundef 3) #26
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, ptr %17, i64 3
  %296 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %295, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %297 = fptosi double %296 to i64
  %298 = and i64 %297, 1
  %299 = icmp eq i64 %298, 0
  %300 = select i1 %299, double 1.000000e+00, double -1.000000e+00
  br label %811

301:                                              ; preds = %291
  %302 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.44, i64 noundef 5) #26
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %17, i64 5
  %306 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %305, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %307 = load double, ptr %5, align 8, !tbaa !40
  %308 = tail call double @atan2(double noundef %306, double noundef %307) #26
  br label %811

309:                                              ; preds = %301
  %310 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.45, i64 noundef 5) #26
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = getelementptr inbounds i8, ptr %17, i64 5
  %314 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %313, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %315 = tail call double @atanh(double noundef %314) #26
  br label %811

316:                                              ; preds = %309
  %317 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.46, i64 noundef 4) #26
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = getelementptr inbounds i8, ptr %17, i64 4
  %321 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %320, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %322 = tail call double @atan(double noundef %321) #26
  br label %811

323:                                              ; preds = %316
  %324 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.47) #26
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %805

326:                                              ; preds = %323
  %327 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

328:                                              ; preds = %224, %224
  %329 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.48) #26
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %805

331:                                              ; preds = %328
  %332 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

333:                                              ; preds = %224, %224
  %334 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.49, i64 noundef 4) #26
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = getelementptr inbounds i8, ptr %17, i64 4
  %338 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %337, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %339 = tail call double @llvm.ceil.f64(double %338)
  br label %811

340:                                              ; preds = %333
  %341 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.50, i64 noundef 4) #26
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = getelementptr inbounds i8, ptr %17, i64 4
  %345 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %344, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %346 = tail call double @cosh(double noundef %345) #26
  br label %811

347:                                              ; preds = %340
  %348 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.51, i64 noundef 3) #26
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = getelementptr inbounds i8, ptr %17, i64 3
  %352 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %351, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %353 = tail call double @cos(double noundef %352) #26
  br label %811

354:                                              ; preds = %347
  %355 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.52) #26
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %805

357:                                              ; preds = %354
  %358 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

359:                                              ; preds = %224, %224
  %360 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.53, i64 noundef 5) #26
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %402

362:                                              ; preds = %359
  %363 = getelementptr inbounds i8, ptr %17, i64 5
  %364 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %363, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %365 = load ptr, ptr %0, align 8, !tbaa !13
  %366 = getelementptr inbounds %struct._Image, ptr %365, i64 0, i32 1
  %367 = load i32, ptr %366, align 4, !tbaa !47
  %368 = icmp eq i32 %367, 12
  br i1 %368, label %369, label %375

369:                                              ; preds = %362
  switch i32 %1, label %374 [
    i32 1, label %382
    i32 2, label %370
    i32 4, label %371
    i32 8, label %372
    i32 32, label %373
  ]

370:                                              ; preds = %369
  br label %382

371:                                              ; preds = %369
  br label %382

372:                                              ; preds = %369
  br label %382

373:                                              ; preds = %369
  br label %382

374:                                              ; preds = %369
  br label %382

375:                                              ; preds = %362
  %376 = add i32 %1, -1
  %377 = icmp ult i32 %376, 8
  br i1 %377, label %378, label %382

378:                                              ; preds = %375
  %379 = zext nneg i32 %376 to i64
  %380 = shl i64 %379, 2
  %381 = call ptr @llvm.load.relative.i64(ptr @reltable.FxEvaluateSubexpression, i64 %380)
  br label %382

382:                                              ; preds = %375, %378, %369, %370, %371, %372, %373, %374
  %383 = phi ptr [ @.str.59, %374 ], [ @.str.58, %373 ], [ @.str.57, %372 ], [ @.str.56, %371 ], [ @.str.55, %370 ], [ @.str.54, %369 ], [ %381, %378 ], [ @.str.59, %375 ]
  %384 = getelementptr inbounds i8, ptr %17, i64 6
  %385 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %384, i64 noundef 4096) #26
  %386 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #32
  %387 = icmp ugt i64 %386, 1
  br i1 %387, label %388, label %391

388:                                              ; preds = %382
  %389 = add i64 %386, -1
  %390 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 %389
  store i8 0, ptr %390, align 1, !tbaa !38
  br label %391

391:                                              ; preds = %388, %382
  %392 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 2
  %393 = load ptr, ptr %392, align 8, !tbaa !37
  %394 = icmp eq ptr %393, null
  br i1 %394, label %811, label %395

395:                                              ; preds = %391
  %396 = load ptr, ptr %0, align 8, !tbaa !13
  %397 = getelementptr inbounds %struct._Image, ptr %396, i64 0, i32 53
  %398 = sitofp i64 %2 to double
  %399 = sitofp i64 %3 to double
  %400 = call i32 @GetMagickPrecision() #26
  %401 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %393, ptr noundef nonnull @.str.63, ptr noundef nonnull %397, double noundef %398, double noundef %399, ptr noundef nonnull %383, ptr noundef nonnull %9, i32 noundef %400, double noundef %364) #26
  br label %811

402:                                              ; preds = %359
  %403 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.64, i64 noundef 3) #26
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %805

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %17, i64 3
  %407 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %406, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %408 = load double, ptr %5, align 8, !tbaa !40
  %409 = fadd double %407, -1.000000e+00
  %410 = tail call double @llvm.fmuladd.f64(double %408, double %409, double 1.000000e+00)
  %411 = fdiv double %407, %410
  br label %811

412:                                              ; preds = %224, %224
  %413 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.65) #26
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %811, label %415

415:                                              ; preds = %412
  %416 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.66, i64 noundef 3) #26
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %415
  %419 = getelementptr inbounds i8, ptr %17, i64 3
  %420 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %419, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %421 = tail call double @exp(double noundef %420) #26
  br label %811

422:                                              ; preds = %415
  %423 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.67) #26
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %811, label %805

425:                                              ; preds = %224, %224
  %426 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.68, i64 noundef 5) #26
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %805

428:                                              ; preds = %425
  %429 = getelementptr inbounds i8, ptr %17, i64 5
  %430 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %429, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %431 = tail call double @llvm.floor.f64(double %430)
  br label %811

432:                                              ; preds = %224, %224
  %433 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.69, i64 noundef 5) #26
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %443

435:                                              ; preds = %432
  %436 = getelementptr inbounds i8, ptr %17, i64 5
  %437 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %436, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %438 = fneg double %437
  %439 = fmul double %437, %438
  %440 = fmul double %439, 5.000000e-01
  %441 = tail call double @exp(double noundef %440) #26
  %442 = fdiv double %441, 0x40040D931FF62705
  br label %811

443:                                              ; preds = %432
  %444 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.70, i64 noundef 3) #26
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %456

446:                                              ; preds = %443
  %447 = getelementptr inbounds i8, ptr %17, i64 3
  %448 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %447, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %449 = fadd double %448, 5.000000e-01
  %450 = fptosi double %449 to i64
  %451 = load double, ptr %5, align 8, !tbaa !40
  %452 = fadd double %451, 5.000000e-01
  %453 = fptosi double %452 to i64
  %454 = tail call fastcc i64 @FxGCD(i64 noundef %450, i64 noundef %453) #30
  %455 = sitofp i64 %454 to double
  br label %811

456:                                              ; preds = %443
  %457 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.71) #26
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %805

459:                                              ; preds = %456
  %460 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

461:                                              ; preds = %224, %224
  %462 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.72) #26
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

466:                                              ; preds = %461
  %467 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.73) #26
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %466
  %470 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

471:                                              ; preds = %466
  %472 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.74, i64 noundef 5) #26
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %805

474:                                              ; preds = %471
  %475 = getelementptr inbounds i8, ptr %17, i64 5
  %476 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %475, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %477 = load double, ptr %5, align 8, !tbaa !40
  %478 = tail call double @hypot(double noundef %476, double noundef %477) #26
  br label %811

479:                                              ; preds = %224, %224
  %480 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.75) #26
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %805

482:                                              ; preds = %479
  %483 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

484:                                              ; preds = %224, %224
  %485 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.76) #26
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %484
  %488 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

489:                                              ; preds = %484
  %490 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.77, i64 noundef 3) #26
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %496

492:                                              ; preds = %489
  %493 = getelementptr inbounds i8, ptr %17, i64 3
  %494 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %493, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %495 = tail call double @llvm.floor.f64(double %494)
  br label %811

496:                                              ; preds = %489
  %497 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.78, i64 noundef 5) #26
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %496
  %500 = getelementptr inbounds i8, ptr %17, i64 5
  %501 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %500, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %502 = fcmp uno double %501, 0.000000e+00
  %503 = uitofp i1 %502 to double
  br label %811

504:                                              ; preds = %496
  %505 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.79) #26
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %805

507:                                              ; preds = %504
  %508 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

509:                                              ; preds = %224, %224
  %510 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.80) #26
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %509
  %513 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

514:                                              ; preds = %509
  %515 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.81, i64 noundef 2) #26
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %17, i64 2
  %519 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %518, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %520 = tail call double @j0(double noundef %519) #26
  br label %811

521:                                              ; preds = %514
  %522 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.82, i64 noundef 2) #26
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %521
  %525 = getelementptr inbounds i8, ptr %17, i64 2
  %526 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %525, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %527 = tail call double @j1(double noundef %526) #26
  br label %811

528:                                              ; preds = %521
  %529 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.83, i64 noundef 4) #26
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %805

531:                                              ; preds = %528
  %532 = getelementptr inbounds i8, ptr %17, i64 4
  %533 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %532, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %534 = fcmp oeq double %533, 0.000000e+00
  br i1 %534, label %811, label %535

535:                                              ; preds = %531
  %536 = fmul double %533, 0x400921FB54442D18
  %537 = tail call double @j1(double noundef %536) #26
  %538 = fmul double %537, 2.000000e+00
  %539 = fdiv double %538, %536
  br label %811

540:                                              ; preds = %224, %224
  %541 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.84, i64 noundef 2) #26
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %547

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %17, i64 2
  %545 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %544, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %546 = tail call double @log(double noundef %545) #26
  br label %811

547:                                              ; preds = %540
  %548 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.85, i64 noundef 6) #26
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %555

550:                                              ; preds = %547
  %551 = getelementptr inbounds i8, ptr %17, i64 6
  %552 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %551, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %553 = tail call double @log10(double noundef %552) #26
  %554 = fdiv double %553, 0x3FD34413509F79FF
  br label %811

555:                                              ; preds = %547
  %556 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.86, i64 noundef 3) #26
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %562

558:                                              ; preds = %555
  %559 = getelementptr inbounds i8, ptr %17, i64 3
  %560 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %559, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %561 = tail call double @log10(double noundef %560) #26
  br label %811

562:                                              ; preds = %555
  %563 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.87) #26
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %805

565:                                              ; preds = %562
  %566 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

567:                                              ; preds = %224, %224
  %568 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.88) #26
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %811, label %570

570:                                              ; preds = %567
  %571 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.89, i64 noundef 6) #26
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %805, label %573

573:                                              ; preds = %570
  %574 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.90, i64 noundef 3) #26
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %582

576:                                              ; preds = %573
  %577 = getelementptr inbounds i8, ptr %17, i64 3
  %578 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %577, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %579 = load double, ptr %5, align 8, !tbaa !40
  %580 = fcmp ogt double %578, %579
  %581 = select i1 %580, double %578, double %579
  br label %811

582:                                              ; preds = %573
  %583 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.91, i64 noundef 6) #26
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %805, label %585

585:                                              ; preds = %582
  %586 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.92, i64 noundef 3) #26
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %594

588:                                              ; preds = %585
  %589 = getelementptr inbounds i8, ptr %17, i64 3
  %590 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %589, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %591 = load double, ptr %5, align 8, !tbaa !40
  %592 = fcmp olt double %590, %591
  %593 = select i1 %592, double %590, double %591
  br label %811

594:                                              ; preds = %585
  %595 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.93, i64 noundef 3) #26
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %605

597:                                              ; preds = %594
  %598 = getelementptr inbounds i8, ptr %17, i64 3
  %599 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %598, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %600 = load double, ptr %5, align 8, !tbaa !40
  %601 = fdiv double %599, %600
  %602 = tail call double @llvm.floor.f64(double %601)
  %603 = fneg double %602
  %604 = tail call double @llvm.fmuladd.f64(double %603, double %600, double %599)
  br label %811

605:                                              ; preds = %594
  %606 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.94) #26
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %805

608:                                              ; preds = %605
  %609 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

610:                                              ; preds = %224, %224
  %611 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.95, i64 noundef 3) #26
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %618

613:                                              ; preds = %610
  %614 = getelementptr inbounds i8, ptr %17, i64 3
  %615 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %614, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %616 = fcmp olt double %615, 1.000000e-15
  %617 = uitofp i1 %616 to double
  br label %811

618:                                              ; preds = %610
  %619 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.96) #26
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %805

621:                                              ; preds = %618
  %622 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

623:                                              ; preds = %224, %224
  %624 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.97) #26
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %811, label %626

626:                                              ; preds = %623
  %627 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.98) #26
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %805

629:                                              ; preds = %626
  %630 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

631:                                              ; preds = %224, %224
  %632 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.99) #26
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %811, label %634

634:                                              ; preds = %631
  %635 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.100) #26
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %811, label %637

637:                                              ; preds = %634
  %638 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.101, i64 noundef 3) #26
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %645

640:                                              ; preds = %637
  %641 = getelementptr inbounds i8, ptr %17, i64 3
  %642 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %641, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %643 = load double, ptr %5, align 8, !tbaa !40
  %644 = tail call double @pow(double noundef %642, double noundef %643) #26
  br label %811

645:                                              ; preds = %637
  %646 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.102) #26
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %805

648:                                              ; preds = %645
  %649 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

650:                                              ; preds = %224, %224
  %651 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.103) #26
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %811, label %653

653:                                              ; preds = %650
  %654 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.104) #26
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %811, label %805

656:                                              ; preds = %224, %224
  %657 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.105, i64 noundef 4) #26
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 6
  %661 = load ptr, ptr %660, align 8, !tbaa !35
  %662 = tail call double @GetPseudoRandomValue(ptr noundef %661) #26
  br label %811

663:                                              ; preds = %656
  %664 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.106, i64 noundef 5) #26
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %663
  %667 = getelementptr inbounds i8, ptr %17, i64 5
  %668 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %667, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %669 = fadd double %668, 5.000000e-01
  %670 = tail call double @llvm.floor.f64(double %669)
  br label %811

671:                                              ; preds = %663
  %672 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.107) #26
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %805

674:                                              ; preds = %671
  %675 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

676:                                              ; preds = %224, %224
  %677 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.108) #26
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %681

679:                                              ; preds = %676
  %680 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

681:                                              ; preds = %676
  %682 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.109, i64 noundef 4) #26
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %689

684:                                              ; preds = %681
  %685 = getelementptr inbounds i8, ptr %17, i64 4
  %686 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %685, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %687 = fcmp olt double %686, 0.000000e+00
  %688 = select i1 %687, double -1.000000e+00, double 1.000000e+00
  br label %811

689:                                              ; preds = %681
  %690 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.110, i64 noundef 4) #26
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %700

692:                                              ; preds = %689
  %693 = getelementptr inbounds i8, ptr %17, i64 4
  %694 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %693, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %695 = fcmp oeq double %694, 0.000000e+00
  br i1 %695, label %811, label %696

696:                                              ; preds = %692
  %697 = fmul double %694, 0x400921FB54442D18
  %698 = tail call double @sin(double noundef %697) #26
  %699 = fdiv double %698, %697
  br label %811

700:                                              ; preds = %689
  %701 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.111, i64 noundef 4) #26
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %707

703:                                              ; preds = %700
  %704 = getelementptr inbounds i8, ptr %17, i64 4
  %705 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %704, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %706 = tail call double @sinh(double noundef %705) #26
  br label %811

707:                                              ; preds = %700
  %708 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.112, i64 noundef 3) #26
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %710, label %714

710:                                              ; preds = %707
  %711 = getelementptr inbounds i8, ptr %17, i64 3
  %712 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %711, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %713 = tail call double @sin(double noundef %712) #26
  br label %811

714:                                              ; preds = %707
  %715 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.113, i64 noundef 4) #26
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %721

717:                                              ; preds = %714
  %718 = getelementptr inbounds i8, ptr %17, i64 4
  %719 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %718, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %720 = tail call double @sqrt(double noundef %719) #26
  br label %811

721:                                              ; preds = %714
  %722 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.114, i64 noundef 6) #26
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %731

724:                                              ; preds = %721
  %725 = getelementptr inbounds i8, ptr %17, i64 6
  %726 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %725, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %727 = fneg double %726
  %728 = tail call double @exp(double noundef %727) #26
  %729 = fadd double %728, 1.000000e+00
  %730 = fdiv double 1.000000e+00, %729
  br label %811

731:                                              ; preds = %721
  %732 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.115) #26
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %805

734:                                              ; preds = %731
  %735 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

736:                                              ; preds = %224, %224
  %737 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.116, i64 noundef 4) #26
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %743

739:                                              ; preds = %736
  %740 = getelementptr inbounds i8, ptr %17, i64 4
  %741 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %740, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %742 = tail call double @tanh(double noundef %741) #26
  br label %811

743:                                              ; preds = %736
  %744 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.117, i64 noundef 3) #26
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %750

746:                                              ; preds = %743
  %747 = getelementptr inbounds i8, ptr %17, i64 3
  %748 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %747, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %749 = tail call double @tan(double noundef %748) #26
  br label %811

750:                                              ; preds = %743
  %751 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.118) #26
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %811, label %753

753:                                              ; preds = %750
  %754 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.119, i64 noundef 5) #26
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %764

756:                                              ; preds = %753
  %757 = getelementptr inbounds i8, ptr %17, i64 5
  %758 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %757, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %759 = fcmp ult double %758, 0.000000e+00
  br i1 %759, label %762, label %760

760:                                              ; preds = %756
  %761 = tail call double @llvm.floor.f64(double %758)
  br label %811

762:                                              ; preds = %756
  %763 = tail call double @llvm.ceil.f64(double %758)
  br label %811

764:                                              ; preds = %753
  %765 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.120) #26
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %805

767:                                              ; preds = %764
  %768 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

769:                                              ; preds = %224, %224
  %770 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.121) #26
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %805

772:                                              ; preds = %769
  %773 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

774:                                              ; preds = %224, %224
  %775 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.122) #26
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %805

777:                                              ; preds = %774
  %778 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

779:                                              ; preds = %224, %224
  %780 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.123, i64 noundef 5) #26
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %790

782:                                              ; preds = %779
  %783 = getelementptr inbounds i8, ptr %17, i64 5
  br label %784

784:                                              ; preds = %782, %784
  %785 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %783, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  %786 = tail call double @llvm.fabs.f64(double %785)
  %787 = fcmp ult double %786, 1.000000e-15
  br i1 %787, label %788, label %784, !llvm.loop !89

788:                                              ; preds = %784
  %789 = load double, ptr %5, align 8, !tbaa !40
  br label %811

790:                                              ; preds = %779
  %791 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.124) #26
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %805

793:                                              ; preds = %790
  %794 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

795:                                              ; preds = %224, %224
  %796 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.125) #26
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %805

798:                                              ; preds = %795
  %799 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

800:                                              ; preds = %224, %224
  %801 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.126) #26
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %805

803:                                              ; preds = %800
  %804 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

805:                                              ; preds = %224, %800, %795, %790, %774, %769, %764, %731, %671, %653, %645, %626, %618, %605, %582, %570, %562, %528, %504, %479, %471, %456, %425, %422, %402, %354, %328, %323
  store ptr %17, ptr %8, align 8, !tbaa !17
  %806 = call double @InterpretSiPrefixValue(ptr noundef nonnull %17, ptr noundef nonnull %8) #26
  %807 = load ptr, ptr %8, align 8, !tbaa !17
  %808 = icmp eq ptr %807, %17
  br i1 %808, label %809, label %811

809:                                              ; preds = %805
  %810 = call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #30
  br label %811

811:                                              ; preds = %805, %750, %692, %653, %650, %634, %631, %623, %567, %531, %422, %412, %391, %395, %267, %177, %184, %182, %61, %64, %25, %7, %809, %803, %798, %793, %788, %777, %772, %767, %762, %760, %746, %739, %734, %724, %717, %710, %703, %696, %684, %679, %674, %666, %659, %648, %640, %629, %621, %613, %608, %597, %588, %576, %565, %558, %550, %543, %535, %524, %517, %512, %507, %499, %492, %487, %482, %474, %469, %464, %459, %446, %435, %428, %418, %405, %357, %350, %343, %336, %331, %326, %319, %312, %304, %294, %287, %280, %271, %260, %253, %246, %237, %234, %232, %226, %221, %218, %215, %213, %164, %157, %148, %139, %132, %125, %120, %115, %110, %105, %96, %87, %83, %79, %77, %75, %66, %53, %49, %44, %38
  %812 = phi double [ %223, %221 ], [ %220, %218 ], [ %36, %215 ], [ %214, %213 ], [ %170, %164 ], [ %163, %157 ], [ %156, %148 ], [ %147, %139 ], [ %138, %132 ], [ %131, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %110 ], [ %109, %105 ], [ %104, %96 ], [ %95, %87 ], [ %86, %83 ], [ %82, %79 ], [ 0.000000e+00, %75 ], [ %78, %77 ], [ %67, %66 ], [ %56, %53 ], [ %52, %49 ], [ %48, %44 ], [ %43, %38 ], [ %231, %226 ], [ %810, %809 ], [ %804, %803 ], [ %799, %798 ], [ %789, %788 ], [ %794, %793 ], [ %778, %777 ], [ %773, %772 ], [ %742, %739 ], [ %749, %746 ], [ %761, %760 ], [ %763, %762 ], [ %768, %767 ], [ %680, %679 ], [ %688, %684 ], [ %699, %696 ], [ %706, %703 ], [ %713, %710 ], [ %720, %717 ], [ %730, %724 ], [ %735, %734 ], [ %662, %659 ], [ %670, %666 ], [ %675, %674 ], [ %644, %640 ], [ %649, %648 ], [ %630, %629 ], [ %617, %613 ], [ %622, %621 ], [ %581, %576 ], [ %593, %588 ], [ %604, %597 ], [ %609, %608 ], [ %546, %543 ], [ %554, %550 ], [ %561, %558 ], [ %566, %565 ], [ %513, %512 ], [ %520, %517 ], [ %527, %524 ], [ %539, %535 ], [ %488, %487 ], [ %495, %492 ], [ %503, %499 ], [ %508, %507 ], [ %483, %482 ], [ %465, %464 ], [ %470, %469 ], [ %478, %474 ], [ %442, %435 ], [ %455, %446 ], [ %460, %459 ], [ %431, %428 ], [ %421, %418 ], [ %411, %405 ], [ %339, %336 ], [ %346, %343 ], [ %353, %350 ], [ %358, %357 ], [ %332, %331 ], [ %249, %246 ], [ %256, %253 ], [ %263, %260 ], [ %276, %271 ], [ %283, %280 ], [ %290, %287 ], [ %300, %294 ], [ %308, %304 ], [ %315, %312 ], [ %322, %319 ], [ %327, %326 ], [ %242, %237 ], [ %236, %234 ], [ %233, %232 ], [ 0.000000e+00, %7 ], [ 0.000000e+00, %25 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %61 ], [ 0.000000e+00, %177 ], [ %183, %182 ], [ %185, %184 ], [ 1.000000e+00, %267 ], [ 0.000000e+00, %395 ], [ 0.000000e+00, %391 ], [ 1.000000e-15, %412 ], [ 0x4005BF0A8B145769, %422 ], [ 1.000000e+00, %531 ], [ 6.553500e+04, %567 ], [ 1.000000e+00, %623 ], [ 0x3FF9E3779B97F4A8, %631 ], [ 0x400921FB54442D18, %634 ], [ 6.553500e+04, %650 ], [ 0x3EF0001000100010, %653 ], [ 1.000000e+00, %692 ], [ 0.000000e+00, %750 ], [ %806, %805 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret double %812
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @FxOperatorPrecedence(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !38
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %155, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__ctype_b_loc() #27
  br label %7

7:                                                ; preds = %5, %148
  %8 = phi i8 [ %3, %5 ], [ %153, %148 ]
  %9 = phi i64 [ 0, %5 ], [ %74, %148 ]
  %10 = phi i32 [ 0, %5 ], [ %152, %148 ]
  %11 = phi ptr [ null, %5 ], [ %144, %148 ]
  %12 = phi i32 [ 1, %5 ], [ %143, %148 ]
  %13 = phi ptr [ %0, %5 ], [ %151, %148 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !17
  %15 = icmp eq i32 %10, 64
  br label %16

16:                                               ; preds = %7, %25
  %17 = phi i8 [ %8, %7 ], [ %27, %25 ]
  %18 = phi ptr [ %13, %7 ], [ %26, %25 ]
  %19 = zext i8 %17 to i64
  %20 = getelementptr inbounds i16, ptr %14, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !52
  %22 = and i16 %21, 8192
  %23 = icmp ne i16 %22, 0
  %24 = select i1 %23, i1 true, i1 %15
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = getelementptr inbounds i8, ptr %18, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !38
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %155, label %16, !llvm.loop !90

29:                                               ; preds = %16
  switch i8 %17, label %67 [
    i8 65, label %30
    i8 97, label %30
    i8 74, label %50
    i8 106, label %50
    i8 35, label %58
  ]

30:                                               ; preds = %29, %29
  %31 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.38, i64 noundef 5) #26
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %18, i64 5
  br label %67

35:                                               ; preds = %30
  %36 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.41, i64 noundef 5) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %18, i64 5
  br label %67

40:                                               ; preds = %35
  %41 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.45, i64 noundef 5) #26
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %18, i64 5
  br label %67

45:                                               ; preds = %40
  %46 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.44, i64 noundef 5) #26
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i64 5, i64 0
  %49 = getelementptr inbounds i8, ptr %18, i64 %48
  br label %67

50:                                               ; preds = %29, %29
  %51 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.81, i64 noundef 2) #26
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.82, i64 noundef 2) #26
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds i8, ptr %18, i64 2
  br label %67

58:                                               ; preds = %29, %58
  %59 = phi ptr [ %60, %58 ], [ %18, %29 ]
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !38
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i16, ptr %14, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !52
  %65 = and i16 %64, 4096
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %58, !llvm.loop !91

67:                                               ; preds = %58, %45, %29, %53, %56, %43, %38, %33
  %68 = phi ptr [ %18, %29 ], [ %57, %56 ], [ %18, %53 ], [ %34, %33 ], [ %39, %38 ], [ %44, %43 ], [ %49, %45 ], [ %59, %58 ]
  %69 = and i32 %10, -33
  %70 = icmp eq i32 %69, 91
  %71 = icmp eq i32 %69, 93
  %72 = sext i1 %71 to i64
  %73 = select i1 %70, i64 1, i64 %72
  %74 = add i64 %73, %9
  %75 = icmp eq i64 %74, 0
  %76 = load i8, ptr %68, align 1, !tbaa !38
  br i1 %75, label %77, label %137

77:                                               ; preds = %67
  switch i8 %76, label %78 [
    i8 126, label %132
    i8 33, label %132
    i8 94, label %137
    i8 64, label %137
    i8 42, label %108
    i8 47, label %108
    i8 37, label %108
    i8 43, label %109
    i8 45, label %109
    i8 -11, label %120
    i8 -10, label %120
    i8 60, label %121
    i8 -9, label %121
    i8 -8, label %121
    i8 62, label %121
    i8 -7, label %122
    i8 -6, label %122
    i8 38, label %123
    i8 124, label %124
    i8 -5, label %125
    i8 -4, label %126
    i8 -3, label %127
    i8 58, label %128
    i8 63, label %128
    i8 61, label %129
    i8 44, label %130
    i8 59, label %131
  ]

78:                                               ; preds = %77
  %79 = icmp eq i32 %10, 0
  br i1 %79, label %137, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %6, align 8, !tbaa !17
  %82 = and i32 %10, 255
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds i16, ptr %81, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !52
  %86 = and i16 %85, 2048
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = trunc i32 %10 to i8
  switch i8 %89, label %137 [
    i8 41, label %90
    i8 0, label %90
  ]

90:                                               ; preds = %88, %88, %80
  %91 = zext i8 %76 to i64
  %92 = getelementptr inbounds i16, ptr %81, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !52
  %94 = zext i16 %93 to i32
  %95 = and i32 %94, 512
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  switch i8 %76, label %98 [
    i8 40, label %103
    i8 0, label %103
  ]

98:                                               ; preds = %97
  %99 = icmp ne i16 %86, 0
  %100 = and i32 %94, 2048
  %101 = icmp eq i32 %100, 0
  %102 = or i1 %99, %101
  br i1 %102, label %137, label %103

103:                                              ; preds = %98, %97, %97, %90
  %104 = zext i8 %76 to i32
  %105 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.128, i32 %104, i64 3)
  %106 = icmp eq ptr %105, null
  %107 = select i1 %106, i32 5, i32 0
  br label %137

108:                                              ; preds = %77, %77, %77
  br label %137

109:                                              ; preds = %77, %77
  %110 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.129, i32 %10, i64 15)
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %6, align 8, !tbaa !17
  %114 = sext i32 %10 to i64
  %115 = getelementptr inbounds i16, ptr %113, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !52
  %117 = and i16 %116, 1024
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %112, %109
  br label %137

120:                                              ; preds = %77, %77
  br label %137

121:                                              ; preds = %77, %77, %77, %77
  br label %137

122:                                              ; preds = %77, %77
  br label %137

123:                                              ; preds = %77
  br label %137

124:                                              ; preds = %77
  br label %137

125:                                              ; preds = %77
  br label %137

126:                                              ; preds = %77
  br label %137

127:                                              ; preds = %77
  br label %137

128:                                              ; preds = %77, %77
  br label %132

129:                                              ; preds = %77
  br label %132

130:                                              ; preds = %77
  br label %137

131:                                              ; preds = %77
  br label %137

132:                                              ; preds = %129, %128, %77, %77
  %133 = phi i32 [ 15, %129 ], [ 14, %128 ], [ 2, %77 ], [ 2, %77 ]
  %134 = icmp ugt i32 %133, %12
  %135 = tail call i32 @llvm.umax.i32(i32 %133, i32 %12)
  %136 = select i1 %134, ptr %68, ptr %11
  br label %142

137:                                              ; preds = %77, %77, %98, %88, %78, %131, %130, %127, %126, %125, %124, %123, %122, %121, %120, %119, %112, %108, %67, %103
  %138 = phi i32 [ %107, %103 ], [ 0, %67 ], [ 5, %108 ], [ 0, %112 ], [ 6, %119 ], [ 7, %120 ], [ 8, %121 ], [ 9, %122 ], [ 10, %123 ], [ 11, %124 ], [ 12, %125 ], [ 13, %126 ], [ 4, %127 ], [ 16, %130 ], [ 17, %131 ], [ 0, %78 ], [ 0, %88 ], [ 0, %98 ], [ 3, %77 ], [ 3, %77 ]
  %139 = icmp ult i32 %138, %12
  %140 = tail call i32 @llvm.umax.i32(i32 %138, i32 %12)
  %141 = select i1 %139, ptr %11, ptr %68
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i32 [ %135, %132 ], [ %140, %137 ]
  %144 = phi ptr [ %136, %132 ], [ %141, %137 ]
  switch i8 %76, label %148 [
    i8 40, label %145
    i8 0, label %145
  ]

145:                                              ; preds = %142, %142
  %146 = tail call fastcc ptr @FxSubexpression(ptr noundef nonnull %68, ptr noundef %1) #30
  %147 = load i8, ptr %146, align 1, !tbaa !38
  br label %148

148:                                              ; preds = %142, %145
  %149 = phi i8 [ %147, %145 ], [ %76, %142 ]
  %150 = phi ptr [ %146, %145 ], [ %68, %142 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  %152 = sext i8 %149 to i32
  %153 = load i8, ptr %151, align 1, !tbaa !38
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %7, !llvm.loop !90

155:                                              ; preds = %148, %25, %2
  %156 = phi ptr [ null, %2 ], [ %11, %25 ], [ %144, %148 ]
  ret ptr %156
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare ptr @StringToken(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acosh(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize
declare double @j1(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asinh(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atanh(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca double, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca %struct._GeometryInfo, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #8
  %22 = load ptr, ptr %0, align 8, !tbaa !13
  %23 = tail call i64 @GetImageIndexInList(ptr noundef %22) #26
  %24 = sitofp i64 %2 to double
  %25 = sitofp i64 %3 to double
  %26 = tail call ptr @__ctype_b_loc() #27
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds i8, ptr %4, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !38
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %27, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !52
  %33 = and i16 %32, 1024
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %151

35:                                               ; preds = %6
  %36 = load i8, ptr %4, align 1, !tbaa !38
  %37 = sext i8 %36 to i32
  %38 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.131, i32 %37, i64 4)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %83, label %40

40:                                               ; preds = %35
  switch i8 %36, label %41 [
    i8 118, label %45
    i8 117, label %46
  ]

41:                                               ; preds = %40
  %42 = load ptr, ptr %0, align 8, !tbaa !13
  %43 = tail call i64 @GetImageIndexInList(ptr noundef %42) #26
  %44 = load i8, ptr %28, align 1, !tbaa !38
  br label %46

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %40, %45, %41
  %47 = phi i8 [ %44, %41 ], [ %29, %45 ], [ %29, %40 ]
  %48 = phi i64 [ %43, %41 ], [ 1, %45 ], [ 0, %40 ]
  %49 = icmp eq i8 %47, 91
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %4, i64 2
  br label %52

52:                                               ; preds = %62, %50
  %53 = phi i64 [ 1, %50 ], [ %63, %62 ]
  %54 = phi ptr [ %51, %50 ], [ %64, %62 ]
  %55 = phi ptr [ %7, %50 ], [ %65, %62 ]
  %56 = load i8, ptr %54, align 1, !tbaa !38
  switch i8 %56, label %62 [
    i8 0, label %66
    i8 91, label %57
    i8 93, label %59
  ]

57:                                               ; preds = %52
  %58 = add i64 %53, 1
  br label %62

59:                                               ; preds = %52
  %60 = add i64 %53, -1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %52, %59, %57
  %63 = phi i64 [ %58, %57 ], [ %60, %59 ], [ %53, %52 ]
  %64 = getelementptr inbounds i8, ptr %54, i64 1
  %65 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %56, ptr %55, align 1, !tbaa !38
  br label %52, !llvm.loop !92

66:                                               ; preds = %52, %59
  %67 = phi i64 [ 0, %59 ], [ %53, %52 ]
  store i8 0, ptr %55, align 1, !tbaa !38
  %68 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5) #30
  %69 = fadd double %68, 5.000000e-01
  %70 = fptosi double %69 to i64
  %71 = getelementptr inbounds i8, ptr %54, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !38
  br label %73

73:                                               ; preds = %66, %46
  %74 = phi i8 [ %72, %66 ], [ %47, %46 ]
  %75 = phi i64 [ %70, %66 ], [ %48, %46 ]
  %76 = phi i64 [ %67, %66 ], [ 0, %46 ]
  %77 = phi ptr [ %54, %66 ], [ %4, %46 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 1
  %79 = icmp eq i8 %74, 46
  %80 = zext i1 %79 to i64
  %81 = getelementptr inbounds i8, ptr %78, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !38
  br label %83

83:                                               ; preds = %73, %35
  %84 = phi i8 [ %82, %73 ], [ %36, %35 ]
  %85 = phi i64 [ %75, %73 ], [ %23, %35 ]
  %86 = phi i64 [ %76, %73 ], [ 0, %35 ]
  %87 = phi ptr [ %81, %73 ], [ %4, %35 ]
  %88 = icmp eq i8 %84, 112
  br i1 %88, label %89, label %151

89:                                               ; preds = %83
  %90 = load ptr, ptr %26, align 8, !tbaa !17
  %91 = getelementptr inbounds i8, ptr %87, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !38
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds i16, ptr %90, i64 %93
  %95 = load i16, ptr %94, align 2, !tbaa !52
  %96 = and i16 %95, 1024
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %151

98:                                               ; preds = %89
  switch i8 %92, label %143 [
    i8 123, label %99
    i8 91, label %120
  ]

99:                                               ; preds = %98
  %100 = add i64 %86, 1
  %101 = getelementptr inbounds i8, ptr %87, i64 2
  br label %102

102:                                              ; preds = %112, %99
  %103 = phi i64 [ %100, %99 ], [ %113, %112 ]
  %104 = phi ptr [ %101, %99 ], [ %114, %112 ]
  %105 = phi ptr [ %7, %99 ], [ %115, %112 ]
  %106 = load i8, ptr %104, align 1, !tbaa !38
  switch i8 %106, label %112 [
    i8 0, label %116
    i8 123, label %107
    i8 125, label %109
  ]

107:                                              ; preds = %102
  %108 = add i64 %103, 1
  br label %112

109:                                              ; preds = %102
  %110 = add i64 %103, -1
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %102, %109, %107
  %113 = phi i64 [ %108, %107 ], [ %110, %109 ], [ %103, %102 ]
  %114 = getelementptr inbounds i8, ptr %104, i64 1
  %115 = getelementptr inbounds i8, ptr %105, i64 1
  store i8 %106, ptr %105, align 1, !tbaa !38
  br label %102, !llvm.loop !93

116:                                              ; preds = %102, %109
  store i8 0, ptr %105, align 1, !tbaa !38
  %117 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5) #30
  %118 = load double, ptr %9, align 8, !tbaa !40
  %119 = getelementptr inbounds i8, ptr %104, i64 1
  br label %143

120:                                              ; preds = %98
  %121 = add i64 %86, 1
  %122 = getelementptr inbounds i8, ptr %87, i64 2
  br label %123

123:                                              ; preds = %133, %120
  %124 = phi i64 [ %121, %120 ], [ %134, %133 ]
  %125 = phi ptr [ %122, %120 ], [ %135, %133 ]
  %126 = phi ptr [ %7, %120 ], [ %136, %133 ]
  %127 = load i8, ptr %125, align 1, !tbaa !38
  switch i8 %127, label %133 [
    i8 0, label %137
    i8 91, label %128
    i8 93, label %130
  ]

128:                                              ; preds = %123
  %129 = add i64 %124, 1
  br label %133

130:                                              ; preds = %123
  %131 = add i64 %124, -1
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %123, %130, %128
  %134 = phi i64 [ %129, %128 ], [ %131, %130 ], [ %124, %123 ]
  %135 = getelementptr inbounds i8, ptr %125, i64 1
  %136 = getelementptr inbounds i8, ptr %126, i64 1
  store i8 %127, ptr %126, align 1, !tbaa !38
  br label %123, !llvm.loop !94

137:                                              ; preds = %123, %130
  store i8 0, ptr %126, align 1, !tbaa !38
  %138 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5) #30
  %139 = fadd double %138, %24
  %140 = load double, ptr %9, align 8, !tbaa !40
  %141 = fadd double %140, %25
  %142 = getelementptr inbounds i8, ptr %125, i64 1
  br label %143

143:                                              ; preds = %98, %137, %116
  %144 = phi double [ %117, %116 ], [ %139, %137 ], [ %24, %98 ]
  %145 = phi double [ %118, %116 ], [ %141, %137 ], [ %25, %98 ]
  %146 = phi ptr [ %119, %116 ], [ %142, %137 ], [ %91, %98 ]
  %147 = load i8, ptr %146, align 1, !tbaa !38
  %148 = icmp eq i8 %147, 46
  %149 = zext i1 %148 to i64
  %150 = getelementptr inbounds i8, ptr %146, i64 %149
  br label %151

151:                                              ; preds = %143, %83, %89, %6
  %152 = phi i64 [ %85, %89 ], [ %85, %83 ], [ %23, %6 ], [ %85, %143 ]
  %153 = phi double [ %24, %89 ], [ %24, %83 ], [ %24, %6 ], [ %144, %143 ]
  %154 = phi double [ %25, %89 ], [ %25, %83 ], [ %25, %6 ], [ %145, %143 ]
  %155 = phi ptr [ %87, %89 ], [ %87, %83 ], [ %4, %6 ], [ %150, %143 ]
  %156 = load ptr, ptr %0, align 8, !tbaa !13
  %157 = call i64 @GetImageListLength(ptr noundef %156) #26
  %158 = call i64 @llvm.smax.i64(i64 %152, i64 0)
  %159 = lshr i64 %152, 63
  %160 = add i64 %152, %159
  %161 = sub i64 %158, %160
  %162 = call i64 @llvm.umax.i64(i64 %157, i64 1)
  %163 = udiv i64 %161, %162
  %164 = add i64 %159, %163
  %165 = mul i64 %157, %164
  %166 = add i64 %152, %165
  %167 = urem i64 %166, %157
  %168 = load ptr, ptr %0, align 8, !tbaa !13
  %169 = call ptr @GetImageFromList(ptr noundef %168, i64 noundef %167) #26
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %151
  %172 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1447, i32 noundef 410, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.3, ptr noundef %4) #26
  br label %685

173:                                              ; preds = %151
  call void @GetMagickPixelPacket(ptr noundef nonnull %169, ptr noundef nonnull %10) #26
  %174 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !16
  %176 = getelementptr inbounds ptr, ptr %175, i64 %167
  %177 = load ptr, ptr %176, align 8, !tbaa !17
  %178 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 70
  %179 = load i32, ptr %178, align 8, !tbaa !95
  %180 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %169, ptr noundef %177, i32 noundef %179, double noundef %153, double noundef %154, ptr noundef nonnull %10, ptr noundef %5) #26
  %181 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %155) #32
  %182 = icmp ugt i64 %181, 2
  br i1 %182, label %183, label %241

183:                                              ; preds = %173
  %184 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.76) #26
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %241, label %186

186:                                              ; preds = %183
  %187 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.133) #26
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %241, label %189

189:                                              ; preds = %186
  %190 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.134) #26
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %241, label %192

192:                                              ; preds = %189
  %193 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.73) #26
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %241, label %195

195:                                              ; preds = %192
  %196 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.108) #26
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %241, label %198

198:                                              ; preds = %195
  %199 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.87) #26
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %241, label %201

201:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #8
  %202 = call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef nonnull %155, i64 noundef 4096) #26
  %203 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #32
  %204 = getelementptr i8, ptr %11, i64 %203
  br label %205

205:                                              ; preds = %209, %201
  %206 = phi ptr [ %204, %201 ], [ %207, %209 ]
  %207 = getelementptr inbounds i8, ptr %206, i64 -1
  %208 = icmp ugt ptr %207, %11
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i8, ptr %207, align 1, !tbaa !38
  switch i8 %210, label %205 [
    i8 41, label %212
    i8 46, label %211
  ], !llvm.loop !96

211:                                              ; preds = %209
  store i8 0, ptr %207, align 1, !tbaa !38
  br label %212

212:                                              ; preds = %209, %205, %211
  %213 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #32
  %214 = icmp ugt i64 %213, 2
  br i1 %214, label %215, label %239

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !15
  %218 = call ptr @GetValueFromSplayTree(ptr noundef %217, ptr noundef nonnull %11) #26
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %239

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !14
  %223 = call ptr @GetValueFromSplayTree(ptr noundef %222, ptr noundef nonnull %11) #26
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %223, i64 56, i1 false), !tbaa.struct !97
  br label %236

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %228 = load ptr, ptr %227, align 8, !tbaa !10
  %229 = call i32 @QueryMagickColor(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef %228) #26
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %226
  %232 = load ptr, ptr %221, align 8, !tbaa !14
  %233 = call ptr @ConstantString(ptr noundef nonnull %11) #26
  %234 = call ptr @CloneMagickPixelPacket(ptr noundef nonnull %10) #26
  %235 = call i32 @AddValueToSplayTree(ptr noundef %232, ptr noundef %233, ptr noundef %234) #26
  br label %236

236:                                              ; preds = %231, %225
  %237 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #32
  %238 = getelementptr inbounds i8, ptr %155, i64 %237
  br label %239

239:                                              ; preds = %236, %226, %215, %212
  %240 = phi ptr [ %155, %215 ], [ %155, %212 ], [ %155, %226 ], [ %238, %236 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #8
  br label %241

241:                                              ; preds = %239, %198, %195, %192, %189, %186, %183, %173
  %242 = phi ptr [ %240, %239 ], [ %155, %198 ], [ %155, %195 ], [ %155, %192 ], [ %155, %189 ], [ %155, %186 ], [ %155, %183 ], [ %155, %173 ]
  %243 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef %242, i64 noundef 4096) #26
  call void @StripString(ptr noundef nonnull %8) #26
  %244 = load i8, ptr %8, align 16, !tbaa !38
  switch i8 %244, label %676 [
    i8 0, label %245
    i8 65, label %289
    i8 97, label %289
    i8 66, label %298
    i8 98, label %298
    i8 67, label %306
    i8 99, label %306
    i8 68, label %385
    i8 100, label %385
    i8 71, label %390
    i8 103, label %390
    i8 75, label %398
    i8 107, label %398
    i8 72, label %418
    i8 104, label %418
    i8 73, label %439
    i8 105, label %439
    i8 74, label %485
    i8 106, label %485
    i8 76, label %488
    i8 108, label %488
    i8 77, label %536
    i8 109, label %536
    i8 78, label %559
    i8 110, label %559
    i8 79, label %566
    i8 111, label %566
    i8 80, label %574
    i8 112, label %574
    i8 82, label %602
    i8 114, label %602
    i8 83, label %622
    i8 115, label %622
    i8 84, label %646
    i8 116, label %646
    i8 87, label %653
    i8 119, label %653
    i8 89, label %660
    i8 121, label %660
    i8 90, label %668
    i8 122, label %668
  ]

245:                                              ; preds = %241
  switch i32 %1, label %287 [
    i32 1, label %246
    i32 2, label %251
    i32 4, label %256
    i32 8, label %261
    i32 32, label %271
    i32 134217719, label %283
  ]

246:                                              ; preds = %245
  %247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %248 = load float, ptr %247, align 8, !tbaa !64
  %249 = fpext float %248 to double
  %250 = fmul double %249, 0x3EF0001000100010
  br label %685

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %253 = load float, ptr %252, align 4, !tbaa !67
  %254 = fpext float %253 to double
  %255 = fmul double %254, 0x3EF0001000100010
  br label %685

256:                                              ; preds = %245
  %257 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %258 = load float, ptr %257, align 8, !tbaa !68
  %259 = fpext float %258 to double
  %260 = fmul double %259, 0x3EF0001000100010
  br label %685

261:                                              ; preds = %245
  %262 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 2
  %263 = load i32, ptr %262, align 8, !tbaa !98
  %264 = icmp eq i32 %263, 0
  %265 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %266 = load float, ptr %265, align 4
  %267 = fsub float 6.553500e+04, %266
  %268 = fpext float %267 to double
  %269 = fmul double %268, 0x3EF0001000100010
  %270 = select i1 %264, double 1.000000e+00, double %269
  br label %685

271:                                              ; preds = %245
  %272 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 1
  %273 = load i32, ptr %272, align 4, !tbaa !47
  %274 = icmp eq i32 %273, 12
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 53
  %277 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1521, i32 noundef 465, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.3, ptr noundef nonnull %276) #26
  br label %685

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %280 = load float, ptr %279, align 8, !tbaa !99
  %281 = fpext float %280 to double
  %282 = fmul double %281, 0x3EF0001000100010
  br label %685

283:                                              ; preds = %245
  %284 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %10) #30
  %285 = uitofp i16 %284 to double
  %286 = fmul double %285, 0x3EF0001000100010
  br label %685

287:                                              ; preds = %245
  %288 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, i32 noundef 410, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef %242) #26
  br label %685

289:                                              ; preds = %241, %241
  %290 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.47) #26
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %676

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %294 = load float, ptr %293, align 4, !tbaa !69
  %295 = fsub float 6.553500e+04, %294
  %296 = fpext float %295 to double
  %297 = fmul double %296, 0x3EF0001000100010
  br label %685

298:                                              ; preds = %241, %241
  %299 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.48) #26
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %676

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %303 = load float, ptr %302, align 8, !tbaa !68
  %304 = fpext float %303 to double
  %305 = fmul double %304, 0x3EF0001000100010
  br label %685

306:                                              ; preds = %241, %241
  %307 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.136, i64 noundef 7) #26
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %377

309:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #8
  %310 = getelementptr inbounds i8, ptr %8, i64 7
  %311 = call i32 @ParseGeometry(ptr noundef nonnull %310, ptr noundef nonnull %12) #26
  %312 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 1
  %313 = load i32, ptr %312, align 4, !tbaa !47
  %314 = icmp eq i32 %313, 12
  br i1 %314, label %315, label %345

315:                                              ; preds = %309
  switch i32 %1, label %375 [
    i32 1, label %316
    i32 2, label %321
    i32 4, label %327
    i32 32, label %333
    i32 8, label %339
  ]

316:                                              ; preds = %315
  %317 = and i32 %311, 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %375, label %319

319:                                              ; preds = %316
  %320 = load double, ptr %12, align 8, !tbaa !62
  br label %375

321:                                              ; preds = %315
  %322 = and i32 %311, 8
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %375, label %324

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 1
  %326 = load double, ptr %325, align 8, !tbaa !70
  br label %375

327:                                              ; preds = %315
  %328 = and i32 %311, 1
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %375, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 2
  %332 = load double, ptr %331, align 8, !tbaa !71
  br label %375

333:                                              ; preds = %315
  %334 = and i32 %311, 2
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %375, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 3
  %338 = load double, ptr %337, align 8, !tbaa !72
  br label %375

339:                                              ; preds = %315
  %340 = and i32 %311, 16
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %375, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 4
  %344 = load double, ptr %343, align 8, !tbaa !100
  br label %375

345:                                              ; preds = %309
  switch i32 %1, label %375 [
    i32 1, label %346
    i32 2, label %351
    i32 4, label %357
    i32 8, label %363
    i32 32, label %369
  ]

346:                                              ; preds = %345
  %347 = and i32 %311, 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %375, label %349

349:                                              ; preds = %346
  %350 = load double, ptr %12, align 8, !tbaa !62
  br label %375

351:                                              ; preds = %345
  %352 = and i32 %311, 8
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %375, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 1
  %356 = load double, ptr %355, align 8, !tbaa !70
  br label %375

357:                                              ; preds = %345
  %358 = and i32 %311, 1
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %375, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 2
  %362 = load double, ptr %361, align 8, !tbaa !71
  br label %375

363:                                              ; preds = %345
  %364 = and i32 %311, 2
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %375, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 3
  %368 = load double, ptr %367, align 8, !tbaa !72
  br label %375

369:                                              ; preds = %345
  %370 = and i32 %311, 16
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 4
  %374 = load double, ptr %373, align 8, !tbaa !100
  br label %375

375:                                              ; preds = %345, %369, %363, %357, %351, %346, %315, %339, %333, %327, %321, %316, %372, %366, %360, %354, %349, %342, %336, %330, %324, %319
  %376 = phi double [ %344, %342 ], [ %338, %336 ], [ %332, %330 ], [ %326, %324 ], [ %320, %319 ], [ %374, %372 ], [ %368, %366 ], [ %362, %360 ], [ %356, %354 ], [ %350, %349 ], [ 0.000000e+00, %316 ], [ 0.000000e+00, %321 ], [ 0.000000e+00, %327 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %315 ], [ 0.000000e+00, %346 ], [ 0.000000e+00, %351 ], [ 0.000000e+00, %357 ], [ 0.000000e+00, %363 ], [ 0.000000e+00, %369 ], [ 0.000000e+00, %345 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #8
  br label %685

377:                                              ; preds = %306
  %378 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.52) #26
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %676

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %382 = load float, ptr %381, align 8, !tbaa !64
  %383 = fpext float %382 to double
  %384 = fmul double %383, 0x3EF0001000100010
  br label %685

385:                                              ; preds = %241, %241
  %386 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.137, i64 noundef 5) #26
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %676

388:                                              ; preds = %385
  %389 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #30
  br label %685

390:                                              ; preds = %241, %241
  %391 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.71) #26
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %676

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %395 = load float, ptr %394, align 4, !tbaa !67
  %396 = fpext float %395 to double
  %397 = fmul double %396, 0x3EF0001000100010
  br label %685

398:                                              ; preds = %241, %241
  %399 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.138, i64 noundef 8) #26
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #30
  br label %685

403:                                              ; preds = %398
  %404 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.75) #26
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %676

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 1
  %408 = load i32, ptr %407, align 4, !tbaa !47
  %409 = icmp eq i32 %408, 12
  br i1 %409, label %413, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 53
  %412 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1666, i32 noundef 410, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.3, ptr noundef nonnull %411) #26
  br label %685

413:                                              ; preds = %406
  %414 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %415 = load float, ptr %414, align 8, !tbaa !99
  %416 = fpext float %415 to double
  %417 = fmul double %416, 0x3EF0001000100010
  br label %685

418:                                              ; preds = %241, %241
  %419 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.72) #26
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 8
  %423 = load i64, ptr %422, align 8, !tbaa !42
  %424 = uitofp i64 %423 to double
  br label %685

425:                                              ; preds = %418
  %426 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.73) #26
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %676

428:                                              ; preds = %425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  %429 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %430 = load float, ptr %429, align 8, !tbaa !64
  %431 = call fastcc zeroext i16 @ClampToQuantum(float noundef %430) #30
  %432 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %433 = load float, ptr %432, align 4, !tbaa !67
  %434 = call fastcc zeroext i16 @ClampToQuantum(float noundef %433) #30
  %435 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %436 = load float, ptr %435, align 8, !tbaa !68
  %437 = call fastcc zeroext i16 @ClampToQuantum(float noundef %436) #30
  call void @ConvertRGBToHSL(i16 noundef zeroext %431, i16 noundef zeroext %434, i16 noundef zeroext %437, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %14) #26
  %438 = load double, ptr %13, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  br label %685

439:                                              ; preds = %241, %241
  %440 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.139) #26
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %460, label %442

442:                                              ; preds = %439
  %443 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.140) #26
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %460, label %445

445:                                              ; preds = %442
  %446 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.141) #26
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %460, label %448

448:                                              ; preds = %445
  %449 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.142) #26
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %460, label %451

451:                                              ; preds = %448
  %452 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.143) #26
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %460, label %454

454:                                              ; preds = %451
  %455 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.144) #26
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %454
  %458 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.145) #26
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %457, %454, %451, %448, %445, %442, %439
  %461 = getelementptr inbounds i8, ptr %8, i64 6
  %462 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %461, ptr noundef %5) #30
  br label %685

463:                                              ; preds = %457
  %464 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.146) #26
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 24
  %468 = load double, ptr %467, align 8, !tbaa !101
  br label %685

469:                                              ; preds = %463
  %470 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.147) #26
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 25
  %474 = load double, ptr %473, align 8, !tbaa !102
  br label %685

475:                                              ; preds = %469
  %476 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.76) #26
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %475
  %479 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %10) #30
  %480 = uitofp i16 %479 to double
  %481 = fmul double %480, 0x3EF0001000100010
  br label %685

482:                                              ; preds = %475
  %483 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.79) #26
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %685, label %676

485:                                              ; preds = %241, %241
  %486 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.80) #26
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %685, label %676

488:                                              ; preds = %241, %241
  %489 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.87) #26
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %502

491:                                              ; preds = %488
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  %492 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %493 = load float, ptr %492, align 8, !tbaa !64
  %494 = call fastcc zeroext i16 @ClampToQuantum(float noundef %493) #30
  %495 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %496 = load float, ptr %495, align 4, !tbaa !67
  %497 = call fastcc zeroext i16 @ClampToQuantum(float noundef %496) #30
  %498 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %499 = load float, ptr %498, align 8, !tbaa !68
  %500 = call fastcc zeroext i16 @ClampToQuantum(float noundef %499) #30
  call void @ConvertRGBToHSL(i16 noundef zeroext %494, i16 noundef zeroext %497, i16 noundef zeroext %500, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef nonnull %17) #26
  %501 = load double, ptr %17, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  br label %685

502:                                              ; preds = %488
  %503 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.133) #26
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %519

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %507 = load float, ptr %506, align 8, !tbaa !64
  %508 = fpext float %507 to double
  %509 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %510 = load float, ptr %509, align 4, !tbaa !67
  %511 = fpext float %510 to double
  %512 = fmul double %511, 0x3FE6E29307AF20EA
  %513 = call double @llvm.fmuladd.f64(double %508, double 2.126560e-01, double %512)
  %514 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %515 = load float, ptr %514, align 8, !tbaa !68
  %516 = fpext float %515 to double
  %517 = call double @llvm.fmuladd.f64(double %516, double 7.218600e-02, double %513)
  %518 = fmul double %517, 0x3EF0001000100010
  br label %685

519:                                              ; preds = %502
  %520 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.134) #26
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %676

522:                                              ; preds = %519
  %523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %524 = load float, ptr %523, align 8, !tbaa !64
  %525 = fpext float %524 to double
  %526 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %527 = load float, ptr %526, align 4, !tbaa !67
  %528 = fpext float %527 to double
  %529 = fmul double %528, 0x3FE6E29307AF20EA
  %530 = call double @llvm.fmuladd.f64(double %525, double 2.126560e-01, double %529)
  %531 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %532 = load float, ptr %531, align 8, !tbaa !68
  %533 = fpext float %532 to double
  %534 = call double @llvm.fmuladd.f64(double %533, double 7.218600e-02, double %530)
  %535 = fmul double %534, 0x3EF0001000100010
  br label %685

536:                                              ; preds = %241, %241
  %537 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.89, i64 noundef 6) #26
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %541

539:                                              ; preds = %536
  %540 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #30
  br label %685

541:                                              ; preds = %536
  %542 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.148, i64 noundef 4) #26
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %546

544:                                              ; preds = %541
  %545 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #30
  br label %685

546:                                              ; preds = %541
  %547 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.91, i64 noundef 6) #26
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  %550 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #30
  br label %685

551:                                              ; preds = %546
  %552 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.94) #26
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %676

554:                                              ; preds = %551
  %555 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %556 = load float, ptr %555, align 8, !tbaa !68
  %557 = fpext float %556 to double
  %558 = fmul double %557, 0x3EF0001000100010
  br label %685

559:                                              ; preds = %241, %241
  %560 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.96) #26
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %676

562:                                              ; preds = %559
  %563 = load ptr, ptr %0, align 8, !tbaa !13
  %564 = call i64 @GetImageListLength(ptr noundef %563) #26
  %565 = uitofp i64 %564 to double
  br label %685

566:                                              ; preds = %241, %241
  %567 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.98) #26
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %676

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %571 = load float, ptr %570, align 4, !tbaa !69
  %572 = fpext float %571 to double
  %573 = fmul double %572, 0x3EF0001000100010
  br label %685

574:                                              ; preds = %241, %241
  %575 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.149) #26
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %581

577:                                              ; preds = %574
  %578 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 26, i32 1
  %579 = load i64, ptr %578, align 8, !tbaa !103
  %580 = uitofp i64 %579 to double
  br label %685

581:                                              ; preds = %574
  %582 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.150) #26
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %588

584:                                              ; preds = %581
  %585 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 26
  %586 = load i64, ptr %585, align 8, !tbaa !104
  %587 = uitofp i64 %586 to double
  br label %685

588:                                              ; preds = %581
  %589 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.151) #26
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %595

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 26, i32 2
  %593 = load i64, ptr %592, align 8, !tbaa !105
  %594 = sitofp i64 %593 to double
  br label %685

595:                                              ; preds = %588
  %596 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.152) #26
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %676

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 26, i32 3
  %600 = load i64, ptr %599, align 8, !tbaa !106
  %601 = sitofp i64 %600 to double
  br label %685

602:                                              ; preds = %241, %241
  %603 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.153) #26
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602
  %606 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 24
  %607 = load double, ptr %606, align 8, !tbaa !101
  br label %685

608:                                              ; preds = %602
  %609 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.154) #26
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %614

611:                                              ; preds = %608
  %612 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 25
  %613 = load double, ptr %612, align 8, !tbaa !102
  br label %685

614:                                              ; preds = %608
  %615 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.107) #26
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %676

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %619 = load float, ptr %618, align 8, !tbaa !64
  %620 = fpext float %619 to double
  %621 = fmul double %620, 0x3EF0001000100010
  br label %685

622:                                              ; preds = %241, %241
  %623 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.108) #26
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %636

625:                                              ; preds = %622
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8
  %626 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %627 = load float, ptr %626, align 8, !tbaa !64
  %628 = call fastcc zeroext i16 @ClampToQuantum(float noundef %627) #30
  %629 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %630 = load float, ptr %629, align 4, !tbaa !67
  %631 = call fastcc zeroext i16 @ClampToQuantum(float noundef %630) #30
  %632 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %633 = load float, ptr %632, align 8, !tbaa !68
  %634 = call fastcc zeroext i16 @ClampToQuantum(float noundef %633) #30
  call void @ConvertRGBToHSL(i16 noundef zeroext %628, i16 noundef zeroext %631, i16 noundef zeroext %634, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %20) #26
  %635 = load double, ptr %21, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8
  br label %685

636:                                              ; preds = %622
  %637 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.155, i64 noundef 8) #26
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %641

639:                                              ; preds = %636
  %640 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #30
  br label %685

641:                                              ; preds = %636
  %642 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.156, i64 noundef 18) #26
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %676

644:                                              ; preds = %641
  %645 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #30
  br label %685

646:                                              ; preds = %241, %241
  %647 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.120) #26
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %676

649:                                              ; preds = %646
  %650 = load ptr, ptr %0, align 8, !tbaa !13
  %651 = call i64 @GetImageIndexInList(ptr noundef %650) #26
  %652 = sitofp i64 %651 to double
  br label %685

653:                                              ; preds = %241, %241
  %654 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.124) #26
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %676

656:                                              ; preds = %653
  %657 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 7
  %658 = load i64, ptr %657, align 8, !tbaa !45
  %659 = uitofp i64 %658 to double
  br label %685

660:                                              ; preds = %241, %241
  %661 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.125) #26
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %676

663:                                              ; preds = %660
  %664 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %665 = load float, ptr %664, align 4, !tbaa !67
  %666 = fpext float %665 to double
  %667 = fmul double %666, 0x3EF0001000100010
  br label %685

668:                                              ; preds = %241, %241
  %669 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.126) #26
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %676

671:                                              ; preds = %668
  %672 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %673 = load ptr, ptr %672, align 8, !tbaa !10
  %674 = call i64 @GetImageChannelDepth(ptr noundef %169, i32 noundef %1, ptr noundef %673) #26
  %675 = uitofp i64 %674 to double
  br label %685

676:                                              ; preds = %241, %668, %660, %653, %646, %641, %614, %595, %566, %559, %551, %519, %485, %482, %425, %403, %390, %385, %377, %298, %289
  %677 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %678 = load ptr, ptr %677, align 8, !tbaa !15
  %679 = call ptr @GetValueFromSplayTree(ptr noundef %678, ptr noundef nonnull %8) #26
  %680 = icmp eq ptr %679, null
  br i1 %680, label %683, label %681

681:                                              ; preds = %676
  %682 = call fastcc double @StringToDouble(ptr noundef nonnull %679) #30
  br label %685

683:                                              ; preds = %676
  %684 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1864, i32 noundef 410, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull %8) #26
  br label %685

685:                                              ; preds = %485, %482, %683, %681, %671, %663, %656, %649, %644, %639, %625, %617, %611, %605, %598, %591, %584, %577, %569, %562, %554, %549, %544, %539, %522, %505, %491, %478, %472, %466, %460, %428, %421, %413, %410, %401, %393, %388, %380, %375, %301, %292, %287, %283, %278, %275, %261, %256, %251, %246, %171
  %686 = phi double [ 0.000000e+00, %171 ], [ 0.000000e+00, %287 ], [ %286, %283 ], [ 0.000000e+00, %275 ], [ %282, %278 ], [ %270, %261 ], [ %260, %256 ], [ %255, %251 ], [ %250, %246 ], [ %682, %681 ], [ 0.000000e+00, %683 ], [ %675, %671 ], [ %667, %663 ], [ %659, %656 ], [ %652, %649 ], [ %635, %625 ], [ %640, %639 ], [ %645, %644 ], [ %607, %605 ], [ %613, %611 ], [ %621, %617 ], [ %580, %577 ], [ %587, %584 ], [ %594, %591 ], [ %601, %598 ], [ %573, %569 ], [ %565, %562 ], [ %540, %539 ], [ %545, %544 ], [ %550, %549 ], [ %558, %554 ], [ %501, %491 ], [ %518, %505 ], [ %535, %522 ], [ %462, %460 ], [ %468, %466 ], [ %474, %472 ], [ %481, %478 ], [ %424, %421 ], [ %438, %428 ], [ %402, %401 ], [ 0.000000e+00, %410 ], [ %417, %413 ], [ %397, %393 ], [ %389, %388 ], [ %376, %375 ], [ %384, %380 ], [ %305, %301 ], [ %297, %292 ], [ %24, %482 ], [ %25, %485 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #8
  ret double %686
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cosh(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @FxGCD(i64 noundef %0, i64 noundef %1) unnamed_addr #19 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %7, %4 ], [ %1, %2 ]
  %6 = phi i64 [ %5, %4 ], [ %0, %2 ]
  %7 = srem i64 %6, %5
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %2
  %10 = phi i64 [ %0, %2 ], [ %5, %4 ]
  ret i64 %10
}

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize
declare double @j0(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sinh(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare double @InterpretSiPrefixValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @FxSubexpression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !38
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2, %17
  %6 = phi i8 [ %20, %17 ], [ %3, %2 ]
  %7 = phi i64 [ %18, %17 ], [ 0, %2 ]
  %8 = phi ptr [ %19, %17 ], [ %0, %2 ]
  %9 = icmp eq i64 %7, 1
  %10 = icmp eq i8 %6, 41
  %11 = and i1 %9, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %5
  switch i8 %6, label %17 [
    i8 40, label %13
    i8 41, label %15
  ]

13:                                               ; preds = %12
  %14 = add nsw i64 %7, 1
  br label %17

15:                                               ; preds = %12
  %16 = add nsw i64 %7, -1
  br label %17

17:                                               ; preds = %12, %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ], [ %7, %12 ]
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !38
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %5, !llvm.loop !107

22:                                               ; preds = %17, %2
  %23 = phi ptr [ %0, %2 ], [ %19, %17 ]
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1297, i32 noundef 410, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #26
  br label %25

25:                                               ; preds = %5, %22
  %26 = phi ptr [ %23, %22 ], [ %8, %5 ]
  ret ptr %26
}

; Function Attrs: optsize
declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetImageFromList(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: optsize
declare i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneMagickPixelPacket(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @StripString(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !64
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !67
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !68
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  %21 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %20) #30
  ret i16 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @FxChannelStatistics(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #8
  br label %21

21:                                               ; preds = %24, %5
  %22 = phi ptr [ %3, %5 ], [ %25, %24 ]
  %23 = load i8, ptr %22, align 1, !tbaa !38
  switch i8 %23, label %24 [
    i8 46, label %26
    i8 0, label %26
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  br label %21, !llvm.loop !109

26:                                               ; preds = %21, %21
  store i8 0, ptr %6, align 16, !tbaa !38
  %27 = icmp eq i8 %23, 46
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  %30 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %29, i64 noundef 4096) #26
  %31 = call i64 @ParseCommandOption(i32 noundef 4, i32 noundef 1, ptr noundef nonnull %6) #26
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i64 %31, 0
  %34 = select i1 %33, i32 %2, i32 %32
  br label %35

35:                                               ; preds = %28, %26
  %36 = phi i32 [ %34, %28 ], [ %2, %26 ]
  %37 = uitofp i32 %36 to double
  %38 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.157, ptr noundef %1, double noundef %37, ptr noundef %3) #26
  %39 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = call ptr @GetValueFromSplayTree(ptr noundef %40, ptr noundef nonnull %7) #26
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %117

43:                                               ; preds = %35
  %44 = load ptr, ptr %39, align 8, !tbaa !15
  %45 = call i32 @DeleteNodeFromSplayTree(ptr noundef %44, ptr noundef nonnull %7) #26
  %46 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.137, i64 noundef 5) #26
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i64 @GetImageChannelDepth(ptr noundef %1, i32 noundef %36, ptr noundef %4) #26
  %50 = uitofp i64 %49 to double
  %51 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.158, double noundef %50) #26
  br label %52

52:                                               ; preds = %48, %43
  %53 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.138, i64 noundef 8) #26
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %56 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %4) #26
  %57 = load double, ptr %9, align 8, !tbaa !40
  %58 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.35, double noundef %57) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %59

59:                                               ; preds = %55, %52
  %60 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.89, i64 noundef 6) #26
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %63 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %4) #26
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.47) #26
  %65 = icmp eq i32 %64, 0
  %66 = load double, ptr %11, align 8, !tbaa !40
  br i1 %65, label %67, label %69

67:                                               ; preds = %62
  %68 = fsub double 6.553500e+04, %66
  store double %68, ptr %11, align 8, !tbaa !40
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi double [ %68, %67 ], [ %66, %62 ]
  %71 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.35, double noundef %70) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %72

72:                                               ; preds = %69, %59
  %73 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.148, i64 noundef 4) #26
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  %76 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %4) #26
  %77 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.47) #26
  %78 = icmp eq i32 %77, 0
  %79 = load double, ptr %13, align 8, !tbaa !40
  br i1 %78, label %80, label %82

80:                                               ; preds = %75
  %81 = fsub double 6.553500e+04, %79
  store double %81, ptr %13, align 8, !tbaa !40
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi double [ %81, %80 ], [ %79, %75 ]
  %84 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.35, double noundef %83) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  br label %85

85:                                               ; preds = %82, %72
  %86 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.91, i64 noundef 6) #26
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  %89 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %4) #26
  %90 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.47) #26
  %91 = icmp eq i32 %90, 0
  %92 = load double, ptr %16, align 8, !tbaa !40
  br i1 %91, label %93, label %95

93:                                               ; preds = %88
  %94 = fsub double 6.553500e+04, %92
  store double %94, ptr %16, align 8, !tbaa !40
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi double [ %94, %93 ], [ %92, %88 ]
  %97 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.35, double noundef %96) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  br label %98

98:                                               ; preds = %95, %85
  %99 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.155, i64 noundef 8) #26
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  %102 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %4) #26
  %103 = load double, ptr %18, align 8, !tbaa !40
  %104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.35, double noundef %103) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  br label %105

105:                                              ; preds = %101, %98
  %106 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.156, i64 noundef 18) #26
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #8
  %109 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %4) #26
  %110 = load double, ptr %20, align 8, !tbaa !40
  %111 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.35, double noundef %110) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8
  br label %112

112:                                              ; preds = %108, %105
  %113 = load ptr, ptr %39, align 8, !tbaa !15
  %114 = call ptr @ConstantString(ptr noundef nonnull %7) #26
  %115 = call ptr @ConstantString(ptr noundef nonnull %8) #26
  %116 = call i32 @AddValueToSplayTree(ptr noundef %113, ptr noundef %114, ptr noundef %115) #26
  br label %117

117:                                              ; preds = %35, %112
  %118 = phi ptr [ %8, %112 ], [ %41, %35 ]
  %119 = call fastcc double @StringToDouble(ptr noundef nonnull %118) #30
  %120 = fmul double %119, 0x3EF0001000100010
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  ret double %120
}

; Function Attrs: optsize
declare void @ConvertRGBToHSL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetImageChannelDepth(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetImageChannelKurtosis(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetImageChannelRange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetImageChannelMean(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FxImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @FxImageChannel(ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2) #30
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FxImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !17
  store i32 %1, ptr %6, align 4, !tbaa !6
  store ptr %3, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !39
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3066, ptr noundef nonnull @.str.22, ptr noundef nonnull %18) #26
  br label %20

20:                                               ; preds = %17, %4
  %21 = tail call fastcc ptr @AcquireFxThreadSet(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #30
  store ptr %21, ptr %9, align 8, !tbaa !17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #26
  store ptr %24, ptr %10, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @DestroyFxThreadSet(ptr noundef nonnull %21) #30
  br label %66

28:                                               ; preds = %23
  %29 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %24, i32 noundef 1) #26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %32) #26
  %33 = tail call fastcc ptr @DestroyFxThreadSet(ptr noundef nonnull %21) #30
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #26
  br label %66

35:                                               ; preds = %28
  store i32 1, ptr %11, align 4, !tbaa !6
  store i64 0, ptr %12, align 8, !tbaa !41
  %36 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %24, ptr noundef %3) #26
  store ptr %36, ptr %8, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !42
  %39 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %40 = shl i64 %39, 5
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %24) #26
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %54

50:                                               ; preds = %45, %42, %35
  %51 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %52 = icmp ult i64 %51, 2
  %53 = select i1 %52, i64 1, i64 2
  br label %54

54:                                               ; preds = %50, %48
  %55 = phi i64 [ %49, %48 ], [ %53, %50 ]
  %56 = trunc i64 %55 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %56)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @FxImageChannel.omp_outlined, ptr nonnull %10, ptr nonnull %11, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %9, ptr nonnull %5, ptr nonnull %12)
  %57 = load ptr, ptr %8, align 8, !tbaa !17
  %58 = call ptr @DestroyCacheView(ptr noundef %57) #26
  store ptr %58, ptr %8, align 8, !tbaa !17
  %59 = load ptr, ptr %9, align 8, !tbaa !17
  %60 = call fastcc ptr @DestroyFxThreadSet(ptr noundef %59) #30
  store ptr %60, ptr %9, align 8, !tbaa !17
  %61 = load i32, ptr %11, align 4, !tbaa !6
  %62 = icmp eq i32 %61, 0
  %63 = load ptr, ptr %10, align 8, !tbaa !17
  br i1 %62, label %64, label %66

64:                                               ; preds = %54
  %65 = call ptr @DestroyImage(ptr noundef %63) #26
  br label %66

66:                                               ; preds = %54, %64, %20, %31, %26
  %67 = phi ptr [ null, %26 ], [ null, %31 ], [ null, %20 ], [ %65, %64 ], [ %63, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireFxThreadSet(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %6 = tail call ptr @AcquireQuantumMemory(i64 noundef %5, i64 noundef 8) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3003, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #26
  br label %38

11:                                               ; preds = %3
  %12 = shl i64 %5, 3
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef %12) #26
  %14 = load i8, ptr %1, align 1, !tbaa !38
  %15 = icmp eq i8 %14, 64
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @ConstantString(ptr noundef nonnull %1) #26
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  %20 = tail call ptr @FileToString(ptr noundef nonnull %19, i64 noundef -1, ptr noundef %2) #26
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %17, %16 ], [ %20, %18 ]
  %23 = icmp sgt i64 %5, 0
  br i1 %23, label %27, label %36

24:                                               ; preds = %27
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %5
  br i1 %26, label %36, label %27, !llvm.loop !110

27:                                               ; preds = %21, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %21 ]
  %29 = tail call ptr @AcquireFxInfo(ptr noundef %0, ptr noundef %22) #30
  %30 = getelementptr inbounds ptr, ptr %6, i64 %28
  store ptr %29, ptr %30, align 8, !tbaa !17
  %31 = call i32 @FxPreprocessExpression(ptr noundef %29, ptr noundef nonnull %4, ptr noundef %2) #30, !range !48
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %24

33:                                               ; preds = %27
  %34 = tail call ptr @DestroyString(ptr noundef %22) #26
  %35 = tail call fastcc ptr @DestroyFxThreadSet(ptr noundef nonnull %6) #30
  br label %38

36:                                               ; preds = %24, %21
  %37 = tail call ptr @DestroyString(ptr noundef %22) #26
  br label %38

38:                                               ; preds = %33, %36, %8
  %39 = phi ptr [ null, %8 ], [ %35, %33 ], [ %6, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyFxThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyFxInfo(ptr noundef nonnull %7) #30
  store ptr %10, ptr %6, align 8, !tbaa !17
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !111

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #26
  ret ptr %16
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @FxImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #7 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = load ptr, ptr %2, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %187

21:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 %19, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 1, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !tbaa !6
  %22 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %23 = load i64, ptr %12, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %12, align 8, !tbaa !44
  %25 = load i64, ptr %11, align 8, !tbaa !44
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %186, label %27

27:                                               ; preds = %21, %178
  %28 = phi i64 [ %184, %178 ], [ %24, %21 ]
  %29 = phi i64 [ %182, %178 ], [ %25, %21 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %178, label %31

31:                                               ; preds = %27, %172
  %32 = phi i64 [ %173, %172 ], [ %29, %27 ]
  %33 = call fastcc i32 @GetOpenMPThreadId() #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  %34 = load i32, ptr %3, align 4, !tbaa !6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %172, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %4, align 8, !tbaa !17
  %38 = load ptr, ptr %2, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !45
  %41 = load ptr, ptr %5, align 8, !tbaa !17
  %42 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %37, i64 noundef 0, i64 noundef %32, i64 noundef %40, i64 noundef 1, ptr noundef %41) #31
  %43 = icmp eq ptr %42, null
  br i1 %43, label %171, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %4, align 8, !tbaa !17
  %46 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %45) #26
  store double 0.000000e+00, ptr %15, align 8, !tbaa !40
  %47 = load ptr, ptr %2, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !45
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %152

51:                                               ; preds = %44
  %52 = sext i32 %33 to i64
  %53 = icmp eq ptr %46, null
  br label %54

54:                                               ; preds = %51, %145
  %55 = phi ptr [ %42, %51 ], [ %146, %145 ]
  %56 = phi i64 [ 0, %51 ], [ %147, %145 ]
  %57 = load i32, ptr %6, align 4, !tbaa !6
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %7, align 8, !tbaa !17
  %62 = getelementptr inbounds ptr, ptr %61, i64 %52
  %63 = load ptr, ptr %62, align 8, !tbaa !17
  %64 = load ptr, ptr %5, align 8, !tbaa !17
  %65 = call i32 @FxEvaluateChannelExpression(ptr noundef %63, i32 noundef 1, i64 noundef %56, i64 noundef %32, ptr noundef nonnull %15, ptr noundef %64) #30, !range !48
  %66 = load double, ptr %15, align 8, !tbaa !40
  %67 = fmul double %66, 6.553500e+04
  %68 = fptrunc double %67 to float
  %69 = call fastcc zeroext i16 @ClampToQuantum(float noundef %68) #30
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 2
  store i16 %69, ptr %70, align 2, !tbaa !46
  %71 = load i32, ptr %6, align 4, !tbaa !6
  br label %72

72:                                               ; preds = %60, %54
  %73 = phi i32 [ %71, %60 ], [ %57, %54 ]
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %7, align 8, !tbaa !17
  %78 = getelementptr inbounds ptr, ptr %77, i64 %52
  %79 = load ptr, ptr %78, align 8, !tbaa !17
  %80 = load ptr, ptr %5, align 8, !tbaa !17
  %81 = call i32 @FxEvaluateChannelExpression(ptr noundef %79, i32 noundef 2, i64 noundef %56, i64 noundef %32, ptr noundef nonnull %15, ptr noundef %80) #30, !range !48
  %82 = load double, ptr %15, align 8, !tbaa !40
  %83 = fmul double %82, 6.553500e+04
  %84 = fptrunc double %83 to float
  %85 = call fastcc zeroext i16 @ClampToQuantum(float noundef %84) #30
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 1
  store i16 %85, ptr %86, align 2, !tbaa !49
  %87 = load i32, ptr %6, align 4, !tbaa !6
  br label %88

88:                                               ; preds = %76, %72
  %89 = phi i32 [ %87, %76 ], [ %73, %72 ]
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %7, align 8, !tbaa !17
  %94 = getelementptr inbounds ptr, ptr %93, i64 %52
  %95 = load ptr, ptr %94, align 8, !tbaa !17
  %96 = load ptr, ptr %5, align 8, !tbaa !17
  %97 = call i32 @FxEvaluateChannelExpression(ptr noundef %95, i32 noundef 4, i64 noundef %56, i64 noundef %32, ptr noundef nonnull %15, ptr noundef %96) #30, !range !48
  %98 = load double, ptr %15, align 8, !tbaa !40
  %99 = fmul double %98, 6.553500e+04
  %100 = fptrunc double %99 to float
  %101 = call fastcc zeroext i16 @ClampToQuantum(float noundef %100) #30
  store i16 %101, ptr %55, align 2, !tbaa !50
  %102 = load i32, ptr %6, align 4, !tbaa !6
  br label %103

103:                                              ; preds = %92, %88
  %104 = phi i32 [ %102, %92 ], [ %89, %88 ]
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %7, align 8, !tbaa !17
  %109 = getelementptr inbounds ptr, ptr %108, i64 %52
  %110 = load ptr, ptr %109, align 8, !tbaa !17
  %111 = load ptr, ptr %5, align 8, !tbaa !17
  %112 = call i32 @FxEvaluateChannelExpression(ptr noundef %110, i32 noundef 8, i64 noundef %56, i64 noundef %32, ptr noundef nonnull %15, ptr noundef %111) #30, !range !48
  %113 = load ptr, ptr %8, align 8, !tbaa !17
  %114 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !61
  %116 = icmp eq i32 %115, 0
  %117 = load double, ptr %15, align 8, !tbaa !40
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 3
  %119 = fmul double %117, 6.553500e+04
  %120 = call double @llvm.fmuladd.f64(double %117, double -6.553500e+04, double 6.553500e+04)
  %121 = select i1 %116, double %119, double %120
  %122 = fptrunc double %121 to float
  %123 = call fastcc zeroext i16 @ClampToQuantum(float noundef %122) #30
  store i16 %123, ptr %118, align 2, !tbaa !51
  br label %124

124:                                              ; preds = %107, %103
  %125 = load i32, ptr %6, align 4, !tbaa !6
  %126 = and i32 %125, 32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %2, align 8, !tbaa !17
  %130 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !47
  %132 = icmp eq i32 %131, 12
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load ptr, ptr %7, align 8, !tbaa !17
  %135 = getelementptr inbounds ptr, ptr %134, i64 %52
  %136 = load ptr, ptr %135, align 8, !tbaa !17
  %137 = load ptr, ptr %5, align 8, !tbaa !17
  %138 = call i32 @FxEvaluateChannelExpression(ptr noundef %136, i32 noundef 32, i64 noundef %56, i64 noundef %32, ptr noundef nonnull %15, ptr noundef %137) #30, !range !48
  br i1 %53, label %145, label %139

139:                                              ; preds = %133
  %140 = getelementptr inbounds i16, ptr %46, i64 %56
  %141 = load double, ptr %15, align 8, !tbaa !40
  %142 = fmul double %141, 6.553500e+04
  %143 = fptrunc double %142 to float
  %144 = call fastcc zeroext i16 @ClampToQuantum(float noundef %143) #30
  store i16 %144, ptr %140, align 2, !tbaa !52
  br label %145

145:                                              ; preds = %133, %139, %128, %124
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %147 = add nuw nsw i64 %56, 1
  %148 = load ptr, ptr %2, align 8, !tbaa !17
  %149 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 7
  %150 = load i64, ptr %149, align 8, !tbaa !45
  %151 = icmp slt i64 %147, %150
  br i1 %151, label %54, label %152, !llvm.loop !112

152:                                              ; preds = %145, %44
  %153 = load ptr, ptr %4, align 8, !tbaa !17
  %154 = load ptr, ptr %5, align 8, !tbaa !17
  %155 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %153, ptr noundef %154) #31
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %158

158:                                              ; preds = %157, %152
  %159 = load ptr, ptr %8, align 8, !tbaa !17
  %160 = getelementptr inbounds %struct._Image, ptr %159, i64 0, i32 47
  %161 = load ptr, ptr %160, align 8, !tbaa !54
  %162 = icmp eq ptr %161, null
  br i1 %162, label %172, label %163

163:                                              ; preds = %158
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_FxImageChannel.var)
  %164 = load ptr, ptr %8, align 8, !tbaa !17
  %165 = load i64, ptr %9, align 8, !tbaa !41
  %166 = add nsw i64 %165, 1
  store i64 %166, ptr %9, align 8, !tbaa !41
  %167 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 8
  %168 = load i64, ptr %167, align 8, !tbaa !42
  %169 = call fastcc i32 @SetImageProgress(ptr noundef %164, ptr noundef nonnull @.str.159, i64 noundef %165, i64 noundef %168) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_FxImageChannel.var)
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163, %36
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %172

172:                                              ; preds = %171, %158, %163, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  %173 = add nsw i64 %32, 1
  %174 = load i64, ptr %12, align 8, !tbaa !44
  %175 = icmp slt i64 %32, %174
  br i1 %175, label %31, label %176

176:                                              ; preds = %172
  %177 = load i64, ptr %11, align 8, !tbaa !44
  br label %178

178:                                              ; preds = %176, %27
  %179 = phi i64 [ %29, %27 ], [ %177, %176 ]
  %180 = phi i64 [ %28, %27 ], [ %174, %176 ]
  %181 = load i64, ptr %13, align 8, !tbaa !44
  %182 = add nsw i64 %181, %179
  store i64 %182, ptr %11, align 8, !tbaa !44
  %183 = add nsw i64 %181, %180
  %184 = call i64 @llvm.smin.i64(i64 %183, i64 %19)
  store i64 %184, ptr %12, align 8, !tbaa !44
  %185 = icmp sgt i64 %182, %184
  br i1 %185, label %186, label %27

186:                                              ; preds = %178, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %187

187:                                              ; preds = %186, %10
  ret void
}

; Function Attrs: optsize
declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ImplodeImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct._MagickPixelPacket, align 8
  %14 = alloca %struct._PointInfo, align 16
  %15 = alloca %struct._PointInfo, align 16
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !17
  store double %1, ptr %5, align 8, !tbaa !40
  store ptr %2, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !39
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3254, ptr noundef nonnull @.str.22, ptr noundef nonnull %21) #26
  br label %23

23:                                               ; preds = %20, %3
  %24 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #26
  store ptr %24, ptr %10, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %91, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %24, i32 noundef 1) #26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %30) #26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #26
  br label %91

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 12, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !113
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 6
  store i32 1, ptr %37, align 8, !tbaa !61
  br label %38

38:                                               ; preds = %36, %32
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %15, align 16, !tbaa !40
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load <2 x i64>, ptr %39, align 8, !tbaa !44
  %42 = uitofp <2 x i64> %41 to <2 x double>
  %43 = fmul <2 x double> %42, <double 5.000000e-01, double 5.000000e-01>
  store <2 x double> %43, ptr %14, align 16, !tbaa !40
  %44 = extractelement <2 x double> %43, i64 0
  store double %44, ptr %9, align 8, !tbaa !40
  %45 = extractelement <2 x i64> %41, i64 0
  %46 = extractelement <2 x i64> %41, i64 1
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct._PointInfo, ptr %15, i64 0, i32 1
  %50 = extractelement <2 x double> %42, i64 0
  %51 = extractelement <2 x double> %42, i64 1
  %52 = fdiv double %50, %51
  store double %52, ptr %49, align 8, !tbaa !114
  br label %60

53:                                               ; preds = %38
  %54 = icmp ult i64 %45, %46
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = extractelement <2 x double> %42, i64 0
  %57 = extractelement <2 x double> %42, i64 1
  %58 = fdiv double %57, %56
  store double %58, ptr %15, align 16, !tbaa !116
  %59 = extractelement <2 x double> %43, i64 1
  store double %59, ptr %9, align 8, !tbaa !40
  br label %60

60:                                               ; preds = %53, %55, %48
  store i32 1, ptr %11, align 4, !tbaa !6
  store i64 0, ptr %12, align 8, !tbaa !41
  call void @GetMagickPixelPacket(ptr noundef nonnull %24, ptr noundef nonnull %13) #26
  %61 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #26
  store ptr %61, ptr %7, align 8, !tbaa !17
  %62 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %24, ptr noundef %2) #26
  store ptr %62, ptr %8, align 8, !tbaa !17
  %63 = load i64, ptr %40, align 8, !tbaa !42
  %64 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %65 = shl i64 %64, 5
  %66 = icmp ugt i64 %63, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %24) #26
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %79

75:                                               ; preds = %70, %67, %60
  %76 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %77 = icmp ult i64 %76, 2
  %78 = select i1 %77, i64 1, i64 2
  br label %79

79:                                               ; preds = %75, %73
  %80 = phi i64 [ %74, %73 ], [ %78, %75 ]
  %81 = trunc i64 %80 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %81)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @ImplodeImage.omp_outlined, ptr nonnull %4, ptr nonnull %11, ptr nonnull %8, ptr nonnull %10, ptr nonnull %6, ptr nonnull %15, ptr nonnull %14, ptr nonnull %13, ptr nonnull %9, ptr nonnull %5, ptr nonnull %7, ptr nonnull %12)
  %82 = load ptr, ptr %8, align 8, !tbaa !17
  %83 = call ptr @DestroyCacheView(ptr noundef %82) #26
  store ptr %83, ptr %8, align 8, !tbaa !17
  %84 = load ptr, ptr %7, align 8, !tbaa !17
  %85 = call ptr @DestroyCacheView(ptr noundef %84) #26
  store ptr %85, ptr %7, align 8, !tbaa !17
  %86 = load i32, ptr %11, align 4, !tbaa !6
  %87 = icmp eq i32 %86, 0
  %88 = load ptr, ptr %10, align 8, !tbaa !17
  br i1 %87, label %89, label %91

89:                                               ; preds = %79
  %90 = call ptr @DestroyImage(ptr noundef %88) #26
  br label %91

91:                                               ; preds = %79, %89, %23, %29
  %92 = phi ptr [ null, %29 ], [ null, %23 ], [ %90, %89 ], [ %88, %79 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret ptr %92
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ImplodeImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #7 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = load ptr, ptr %2, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !42
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %152

25:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 0, ptr %15, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 %23, ptr %16, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  store i64 1, ptr %17, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #8
  store i32 0, ptr %18, align 4, !tbaa !6
  %26 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %27 = load i64, ptr %16, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %16, align 8, !tbaa !44
  %29 = load i64, ptr %15, align 8, !tbaa !44
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %151, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._PointInfo, ptr %7, i64 0, i32 1
  %33 = getelementptr inbounds %struct._PointInfo, ptr %8, i64 0, i32 1
  br label %34

34:                                               ; preds = %31, %143
  %35 = phi i64 [ %28, %31 ], [ %149, %143 ]
  %36 = phi i64 [ %29, %31 ], [ %147, %143 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %143, label %38

38:                                               ; preds = %34, %137
  %39 = phi i64 [ %138, %137 ], [ %36, %34 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #8
  %40 = load i32, ptr %3, align 4, !tbaa !6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %137, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !17
  %44 = load ptr, ptr %5, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !45
  %47 = load ptr, ptr %6, align 8, !tbaa !17
  %48 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %43, i64 noundef 0, i64 noundef %39, i64 noundef %46, i64 noundef 1, ptr noundef %47) #31
  %49 = icmp eq ptr %48, null
  br i1 %49, label %136, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %4, align 8, !tbaa !17
  %52 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %51) #26
  %53 = load double, ptr %32, align 8, !tbaa !114
  %54 = sitofp i64 %39 to double
  %55 = load double, ptr %33, align 8, !tbaa !114
  %56 = fsub double %54, %55
  %57 = fmul double %53, %56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !97
  %58 = load ptr, ptr %2, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !45
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %117

62:                                               ; preds = %50
  %63 = fmul double %57, %57
  br label %64

64:                                               ; preds = %62, %110
  %65 = phi ptr [ %58, %62 ], [ %111, %110 ]
  %66 = phi ptr [ %48, %62 ], [ %112, %110 ]
  %67 = phi i64 [ 0, %62 ], [ %113, %110 ]
  %68 = load double, ptr %7, align 8, !tbaa !116
  %69 = sitofp i64 %67 to double
  %70 = load double, ptr %8, align 8, !tbaa !116
  %71 = fsub double %69, %70
  %72 = fmul double %68, %71
  %73 = call double @llvm.fmuladd.f64(double %72, double %72, double %63)
  %74 = load double, ptr %10, align 8, !tbaa !40
  %75 = fmul double %74, %74
  %76 = fcmp olt double %73, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %64
  %78 = fcmp ogt double %73, 0.000000e+00
  br i1 %78, label %79, label %91

79:                                               ; preds = %77
  %80 = call double @llvm.sqrt.f64(double %73)
  %81 = fmul double %80, 0x400921FB54442D18
  %82 = fdiv double %81, %74
  %83 = fmul double %82, 5.000000e-01
  %84 = call double @sin(double noundef %83) #26
  %85 = load double, ptr %11, align 8, !tbaa !40
  %86 = fneg double %85
  %87 = call double @pow(double noundef %84, double noundef %86) #26
  %88 = load ptr, ptr %2, align 8, !tbaa !17
  %89 = load double, ptr %7, align 8, !tbaa !116
  %90 = load double, ptr %8, align 8, !tbaa !116
  br label %91

91:                                               ; preds = %79, %77
  %92 = phi double [ %90, %79 ], [ %70, %77 ]
  %93 = phi double [ %89, %79 ], [ %68, %77 ]
  %94 = phi ptr [ %88, %79 ], [ %65, %77 ]
  %95 = phi double [ %87, %79 ], [ 1.000000e+00, %77 ]
  %96 = load ptr, ptr %12, align 8, !tbaa !17
  %97 = fmul double %72, %95
  %98 = fdiv double %97, %93
  %99 = fadd double %98, %92
  %100 = fmul double %57, %95
  %101 = load double, ptr %32, align 8, !tbaa !114
  %102 = fdiv double %100, %101
  %103 = load double, ptr %33, align 8, !tbaa !114
  %104 = fadd double %102, %103
  %105 = load ptr, ptr %6, align 8, !tbaa !17
  %106 = call i32 @InterpolateMagickPixelPacket(ptr noundef %94, ptr noundef %96, i32 noundef 0, double noundef %99, double noundef %104, ptr noundef nonnull %19, ptr noundef %105) #26
  %107 = load ptr, ptr %5, align 8, !tbaa !17
  %108 = getelementptr inbounds i16, ptr %52, i64 %67
  call fastcc void @SetPixelPacket(ptr noundef %107, ptr noundef nonnull %19, ptr noundef nonnull %66, ptr noundef %108) #30
  %109 = load ptr, ptr %2, align 8, !tbaa !17
  br label %110

110:                                              ; preds = %91, %64
  %111 = phi ptr [ %109, %91 ], [ %65, %64 ]
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %113 = add nuw nsw i64 %67, 1
  %114 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 7
  %115 = load i64, ptr %114, align 8, !tbaa !45
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %64, label %117, !llvm.loop !117

117:                                              ; preds = %110, %50
  %118 = load ptr, ptr %4, align 8, !tbaa !17
  %119 = load ptr, ptr %6, align 8, !tbaa !17
  %120 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %118, ptr noundef %119) #31
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %123

123:                                              ; preds = %122, %117
  %124 = load ptr, ptr %2, align 8, !tbaa !17
  %125 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 47
  %126 = load ptr, ptr %125, align 8, !tbaa !54
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_ImplodeImage.var)
  %129 = load ptr, ptr %2, align 8, !tbaa !17
  %130 = load i64, ptr %13, align 8, !tbaa !41
  %131 = add nsw i64 %130, 1
  store i64 %131, ptr %13, align 8, !tbaa !41
  %132 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 8
  %133 = load i64, ptr %132, align 8, !tbaa !42
  %134 = call fastcc i32 @SetImageProgress(ptr noundef %129, ptr noundef nonnull @.str.160, i64 noundef %130, i64 noundef %133) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_ImplodeImage.var)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128, %42
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %137

137:                                              ; preds = %136, %123, %128, %38
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #8
  %138 = add nsw i64 %39, 1
  %139 = load i64, ptr %16, align 8, !tbaa !44
  %140 = icmp slt i64 %39, %139
  br i1 %140, label %38, label %141

141:                                              ; preds = %137
  %142 = load i64, ptr %15, align 8, !tbaa !44
  br label %143

143:                                              ; preds = %141, %34
  %144 = phi i64 [ %36, %34 ], [ %142, %141 ]
  %145 = phi i64 [ %35, %34 ], [ %139, %141 ]
  %146 = load i64, ptr %17, align 8, !tbaa !44
  %147 = add nsw i64 %146, %144
  store i64 %147, ptr %15, align 8, !tbaa !44
  %148 = add nsw i64 %146, %145
  %149 = call i64 @llvm.smin.i64(i64 %148, i64 %23)
  store i64 %149, ptr %16, align 8, !tbaa !44
  %150 = icmp sgt i64 %147, %149
  br i1 %150, label %151, label %34

151:                                              ; preds = %143, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  br label %152

152:                                              ; preds = %151, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #21 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !64
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #30
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !46
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !67
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #30
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !49
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !68
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #30
  store i16 %15, ptr %2, align 2, !tbaa !50
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !69
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #30
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !51
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !47
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !118
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !99
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #30
  store i16 %33, ptr %3, align 2, !tbaa !52
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MorphImages(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %2, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !39
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3441, ptr noundef nonnull @.str.22, ptr noundef nonnull %17) #26
  br label %19

19:                                               ; preds = %16, %3
  %20 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #26
  store ptr %20, ptr %8, align 8, !tbaa !17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %202, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = icmp sgt i64 %1, 1
  br i1 %26, label %27, label %46

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %29

29:                                               ; preds = %27, %41
  %30 = phi i64 [ 1, %27 ], [ %42, %41 ]
  %31 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #26
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %8, align 8, !tbaa !17
  %35 = call ptr @DestroyImageList(ptr noundef %34) #26
  br label %202

36:                                               ; preds = %29
  call void @AppendImageToList(ptr noundef nonnull %8, ptr noundef nonnull %31) #26
  %37 = load ptr, ptr %28, align 8, !tbaa !54
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.161, i64 noundef %30, i64 noundef %1) #30
  br label %41

41:                                               ; preds = %39, %36
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, %1
  br i1 %43, label %44, label %29, !llvm.loop !119

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 8, !tbaa !17
  br label %46

46:                                               ; preds = %44, %25
  %47 = phi ptr [ %45, %44 ], [ %20, %25 ]
  %48 = call ptr @GetFirstImageInList(ptr noundef %47) #26
  br label %202

49:                                               ; preds = %22
  store i32 1, ptr %9, align 4, !tbaa !6
  %50 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #26
  %51 = icmp eq ptr %50, null
  br i1 %51, label %192, label %52

52:                                               ; preds = %49
  %53 = icmp sgt i64 %1, 0
  %54 = uitofp i64 %1 to double
  %55 = fadd double %54, 1.000000e+00
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %57

57:                                               ; preds = %52, %187
  %58 = phi i64 [ 0, %52 ], [ %188, %187 ]
  %59 = phi ptr [ %0, %52 ], [ %189, %187 ]
  br i1 %53, label %60, label %169

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 7
  %62 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 8
  %63 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 32
  %64 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 30
  br label %65

65:                                               ; preds = %60, %158
  %66 = phi i64 [ 0, %60 ], [ %167, %158 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  %67 = sitofp i64 %66 to double
  %68 = fadd double %67, 1.000000e+00
  %69 = fdiv double %68, %55
  store double %69, ptr %6, align 8, !tbaa !40
  %70 = fsub double 1.000000e+00, %69
  store double %70, ptr %5, align 8, !tbaa !40
  %71 = load i64, ptr %61, align 8, !tbaa !45
  %72 = uitofp i64 %71 to double
  %73 = call ptr @GetNextImageInList(ptr noundef %59) #26
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !45
  %76 = uitofp i64 %75 to double
  %77 = fmul double %69, %76
  %78 = call double @llvm.fmuladd.f64(double %70, double %72, double %77)
  %79 = fadd double %78, 5.000000e-01
  %80 = fptoui double %79 to i64
  %81 = load double, ptr %5, align 8, !tbaa !40
  %82 = load i64, ptr %62, align 8, !tbaa !42
  %83 = uitofp i64 %82 to double
  %84 = load double, ptr %6, align 8, !tbaa !40
  %85 = call ptr @GetNextImageInList(ptr noundef %59) #26
  %86 = getelementptr inbounds %struct._Image, ptr %85, i64 0, i32 8
  %87 = load i64, ptr %86, align 8, !tbaa !42
  %88 = uitofp i64 %87 to double
  %89 = fmul double %84, %88
  %90 = call double @llvm.fmuladd.f64(double %81, double %83, double %89)
  %91 = fadd double %90, 5.000000e-01
  %92 = fptoui double %91 to i64
  %93 = load i32, ptr %63, align 8, !tbaa !120
  %94 = load double, ptr %64, align 8, !tbaa !121
  %95 = load ptr, ptr %4, align 8, !tbaa !17
  %96 = call ptr @ResizeImage(ptr noundef %59, i64 noundef %80, i64 noundef %92, i32 noundef %93, double noundef %94, ptr noundef %95) #26
  store ptr %96, ptr %7, align 8, !tbaa !17
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %65
  %99 = load ptr, ptr %8, align 8, !tbaa !17
  %100 = call ptr @DestroyImageList(ptr noundef %99) #26
  br label %201

101:                                              ; preds = %65
  %102 = call i32 @SetImageStorageClass(ptr noundef nonnull %96, i32 noundef 1) #26
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load ptr, ptr %4, align 8, !tbaa !17
  %106 = load ptr, ptr %7, align 8, !tbaa !17
  %107 = getelementptr inbounds %struct._Image, ptr %106, i64 0, i32 58
  call void @InheritException(ptr noundef %105, ptr noundef nonnull %107) #26
  %108 = load ptr, ptr %7, align 8, !tbaa !17
  %109 = call ptr @DestroyImage(ptr noundef %108) #26
  br label %201

110:                                              ; preds = %101
  %111 = load ptr, ptr %7, align 8, !tbaa !17
  call void @AppendImageToList(ptr noundef nonnull %8, ptr noundef %111) #26
  %112 = load ptr, ptr %8, align 8, !tbaa !17
  %113 = call ptr @GetLastImageInList(ptr noundef %112) #26
  store ptr %113, ptr %8, align 8, !tbaa !17
  %114 = call ptr @GetNextImageInList(ptr noundef nonnull %59) #26
  %115 = load ptr, ptr %8, align 8, !tbaa !17
  %116 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 7
  %117 = load i64, ptr %116, align 8, !tbaa !45
  %118 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 8
  %119 = load i64, ptr %118, align 8, !tbaa !42
  %120 = call ptr @GetNextImageInList(ptr noundef nonnull %59) #26
  %121 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 32
  %122 = load i32, ptr %121, align 8, !tbaa !120
  %123 = call ptr @GetNextImageInList(ptr noundef nonnull %59) #26
  %124 = getelementptr inbounds %struct._Image, ptr %123, i64 0, i32 30
  %125 = load double, ptr %124, align 8, !tbaa !121
  %126 = load ptr, ptr %4, align 8, !tbaa !17
  %127 = call ptr @ResizeImage(ptr noundef %114, i64 noundef %117, i64 noundef %119, i32 noundef %122, double noundef %125, ptr noundef %126) #26
  store ptr %127, ptr %7, align 8, !tbaa !17
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %110
  %130 = load ptr, ptr %8, align 8, !tbaa !17
  %131 = call ptr @DestroyImageList(ptr noundef %130) #26
  br label %201

132:                                              ; preds = %110
  %133 = load ptr, ptr %4, align 8, !tbaa !17
  %134 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %127, ptr noundef %133) #26
  store ptr %134, ptr %10, align 8, !tbaa !17
  %135 = load ptr, ptr %8, align 8, !tbaa !17
  %136 = load ptr, ptr %4, align 8, !tbaa !17
  %137 = call ptr @AcquireAuthenticCacheView(ptr noundef %135, ptr noundef %136) #26
  store ptr %137, ptr %11, align 8, !tbaa !17
  %138 = load ptr, ptr %7, align 8, !tbaa !17
  %139 = getelementptr inbounds %struct._Image, ptr %138, i64 0, i32 8
  %140 = load i64, ptr %139, align 8, !tbaa !42
  %141 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %142 = shl i64 %141, 5
  %143 = icmp ugt i64 %140, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %132
  %145 = load ptr, ptr %7, align 8, !tbaa !17
  %146 = call i32 @GetImagePixelCacheType(ptr noundef %145) #26
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %7, align 8, !tbaa !17
  %150 = call i32 @GetImagePixelCacheType(ptr noundef %149) #26
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %158

154:                                              ; preds = %148, %144, %132
  %155 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %156 = icmp ult i64 %155, 2
  %157 = select i1 %156, i64 1, i64 2
  br label %158

158:                                              ; preds = %154, %152
  %159 = phi i64 [ %153, %152 ], [ %157, %154 ]
  %160 = trunc i64 %159 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %160)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @MorphImages.omp_outlined, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, ptr nonnull %7, ptr nonnull %4, ptr nonnull %11, ptr nonnull %5, ptr nonnull %6)
  %161 = load ptr, ptr %11, align 8, !tbaa !17
  %162 = call ptr @DestroyCacheView(ptr noundef %161) #26
  store ptr %162, ptr %11, align 8, !tbaa !17
  %163 = load ptr, ptr %10, align 8, !tbaa !17
  %164 = call ptr @DestroyCacheView(ptr noundef %163) #26
  store ptr %164, ptr %10, align 8, !tbaa !17
  %165 = load ptr, ptr %7, align 8, !tbaa !17
  %166 = call ptr @DestroyImage(ptr noundef %165) #26
  store ptr %166, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  %167 = add nuw nsw i64 %66, 1
  %168 = icmp eq i64 %167, %1
  br i1 %168, label %169, label %65, !llvm.loop !122

169:                                              ; preds = %158, %57
  %170 = call ptr @GetNextImageInList(ptr noundef %59) #26
  %171 = load ptr, ptr %4, align 8, !tbaa !17
  %172 = call ptr @CloneImage(ptr noundef %170, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %171) #26
  store ptr %172, ptr %7, align 8, !tbaa !17
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load ptr, ptr %8, align 8, !tbaa !17
  %176 = call ptr @DestroyImageList(ptr noundef %175) #26
  br label %202

177:                                              ; preds = %169
  call void @AppendImageToList(ptr noundef nonnull %8, ptr noundef nonnull %172) #26
  %178 = load ptr, ptr %8, align 8, !tbaa !17
  %179 = call ptr @GetLastImageInList(ptr noundef %178) #26
  store ptr %179, ptr %8, align 8, !tbaa !17
  %180 = load ptr, ptr %56, align 8, !tbaa !54
  %181 = icmp eq ptr %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  call void @__kmpc_critical(ptr nonnull @2, i32 %12, ptr nonnull @.gomp_critical_user_MagickCore_MorphImages.var)
  %183 = call i64 @GetImageListLength(ptr noundef nonnull %0) #26
  %184 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.161, i64 noundef %58, i64 noundef %183) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %12, ptr nonnull @.gomp_critical_user_MagickCore_MorphImages.var)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i32 0, ptr %9, align 4, !tbaa !6
  br label %187

187:                                              ; preds = %182, %186, %177
  %188 = add nuw nsw i64 %58, 1
  %189 = call ptr @GetNextImageInList(ptr noundef %59) #26
  %190 = call ptr @GetNextImageInList(ptr noundef %189) #26
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %57, !llvm.loop !123

192:                                              ; preds = %187, %49
  %193 = phi ptr [ %0, %49 ], [ %189, %187 ]
  %194 = call ptr @GetNextImageInList(ptr noundef %193) #26
  %195 = icmp eq ptr %194, null
  %196 = load ptr, ptr %8, align 8, !tbaa !17
  br i1 %195, label %199, label %197

197:                                              ; preds = %192
  %198 = call ptr @DestroyImageList(ptr noundef %196) #26
  br label %202

199:                                              ; preds = %192
  %200 = call ptr @GetFirstImageInList(ptr noundef %196) #26
  br label %202

201:                                              ; preds = %129, %104, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %202

202:                                              ; preds = %201, %19, %199, %197, %174, %46, %33
  %203 = phi ptr [ null, %33 ], [ %48, %46 ], [ null, %197 ], [ %200, %199 ], [ null, %174 ], [ null, %19 ], [ null, %201 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret ptr %203
}

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetLastImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @MorphImages.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #7 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %125

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 %18, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 1, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !tbaa !6
  %21 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !44
  %24 = load i64, ptr %11, align 8, !tbaa !44
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %124, label %26

26:                                               ; preds = %20, %116
  %27 = phi i64 [ %122, %116 ], [ %23, %20 ]
  %28 = phi i64 [ %120, %116 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %116, label %30

30:                                               ; preds = %26, %110
  %31 = phi i64 [ %111, %110 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %110, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !17
  %36 = load ptr, ptr %5, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !45
  %39 = load ptr, ptr %6, align 8, !tbaa !17
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #31
  %41 = load ptr, ptr %7, align 8, !tbaa !17
  %42 = load ptr, ptr %2, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !45
  %45 = load ptr, ptr %6, align 8, !tbaa !17
  %46 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %41, i64 noundef 0, i64 noundef %31, i64 noundef %44, i64 noundef 1, ptr noundef %45) #31
  %47 = icmp eq ptr %40, null
  %48 = icmp eq ptr %46, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %109, label %50

50:                                               ; preds = %34
  %51 = load ptr, ptr %2, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !45
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %104

55:                                               ; preds = %50
  %56 = load double, ptr %8, align 8, !tbaa !40
  %57 = load double, ptr %9, align 8, !tbaa !40
  br label %58

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %46, %55 ], [ %101, %58 ]
  %60 = phi i64 [ 0, %55 ], [ %102, %58 ]
  %61 = phi ptr [ %40, %55 ], [ %100, %58 ]
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 0, i32 2
  %63 = load i16, ptr %62, align 2, !tbaa !46
  %64 = uitofp i16 %63 to double
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 2
  %66 = load i16, ptr %65, align 2, !tbaa !46
  %67 = uitofp i16 %66 to double
  %68 = fmul double %57, %67
  %69 = call double @llvm.fmuladd.f64(double %56, double %64, double %68)
  %70 = fptrunc double %69 to float
  %71 = call fastcc zeroext i16 @ClampToQuantum(float noundef %70) #30
  store i16 %71, ptr %62, align 2, !tbaa !46
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 0, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !49
  %74 = uitofp i16 %73 to double
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !49
  %77 = uitofp i16 %76 to double
  %78 = fmul double %57, %77
  %79 = call double @llvm.fmuladd.f64(double %56, double %74, double %78)
  %80 = fptrunc double %79 to float
  %81 = call fastcc zeroext i16 @ClampToQuantum(float noundef %80) #30
  store i16 %81, ptr %72, align 2, !tbaa !49
  %82 = load i16, ptr %59, align 2, !tbaa !50
  %83 = uitofp i16 %82 to double
  %84 = load i16, ptr %61, align 2, !tbaa !50
  %85 = uitofp i16 %84 to double
  %86 = fmul double %57, %85
  %87 = call double @llvm.fmuladd.f64(double %56, double %83, double %86)
  %88 = fptrunc double %87 to float
  %89 = call fastcc zeroext i16 @ClampToQuantum(float noundef %88) #30
  store i16 %89, ptr %59, align 2, !tbaa !50
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 0, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !51
  %92 = uitofp i16 %91 to double
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 3
  %94 = load i16, ptr %93, align 2, !tbaa !51
  %95 = uitofp i16 %94 to double
  %96 = fmul double %57, %95
  %97 = call double @llvm.fmuladd.f64(double %56, double %92, double %96)
  %98 = fptrunc double %97 to float
  %99 = call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #30
  store i16 %99, ptr %90, align 2, !tbaa !51
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 1
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 1
  %102 = add nuw nsw i64 %60, 1
  %103 = icmp eq i64 %102, %53
  br i1 %103, label %104, label %58, !llvm.loop !124

104:                                              ; preds = %58, %50
  %105 = load ptr, ptr %7, align 8, !tbaa !17
  %106 = load ptr, ptr %6, align 8, !tbaa !17
  %107 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %105, ptr noundef %106) #31
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %34
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %110

110:                                              ; preds = %109, %104, %30
  %111 = add nsw i64 %31, 1
  %112 = load i64, ptr %12, align 8, !tbaa !44
  %113 = icmp slt i64 %31, %112
  br i1 %113, label %30, label %114

114:                                              ; preds = %110
  %115 = load i64, ptr %11, align 8, !tbaa !44
  br label %116

116:                                              ; preds = %114, %26
  %117 = phi i64 [ %28, %26 ], [ %115, %114 ]
  %118 = phi i64 [ %27, %26 ], [ %112, %114 ]
  %119 = load i64, ptr %13, align 8, !tbaa !44
  %120 = add nsw i64 %119, %117
  store i64 %120, ptr %11, align 8, !tbaa !44
  %121 = add nsw i64 %119, %118
  %122 = call i64 @llvm.smin.i64(i64 %121, i64 %18)
  store i64 %122, ptr %12, align 8, !tbaa !44
  %123 = icmp sgt i64 %120, %122
  br i1 %123, label %124, label %26

124:                                              ; preds = %116, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %125

125:                                              ; preds = %124, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._PixelPacket, align 2
  %8 = alloca %struct._PixelPacket, align 2
  %9 = alloca %struct._SegmentInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %10 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !125
  %12 = load double, ptr %3, align 8, !tbaa !127
  %13 = fsub double %11, %12
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %17 = load double, ptr %16, align 8, !tbaa !128
  %18 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %19 = load double, ptr %18, align 8, !tbaa !129
  %20 = fsub double %17, %19
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %378, label %22

22:                                               ; preds = %15, %6
  %23 = icmp eq i64 %5, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #8
  %25 = add i64 %5, -1
  %26 = add i64 %4, 1
  %27 = fadd double %11, %12
  %28 = fmul double %27, 5.000000e-01
  %29 = fadd double %28, -5.000000e-01
  %30 = tail call double @llvm.ceil.f64(double %29)
  %31 = fptosi double %30 to i64
  %32 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !129
  %34 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %35 = load double, ptr %34, align 8, !tbaa !128
  %36 = fadd double %33, %35
  %37 = fmul double %36, 5.000000e-01
  %38 = fadd double %37, -5.000000e-01
  %39 = tail call double @llvm.ceil.f64(double %38)
  %40 = fptosi double %39 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !130
  %41 = sitofp i64 %31 to double
  %42 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 2
  store double %41, ptr %42, align 8, !tbaa !125
  %43 = sitofp i64 %40 to double
  %44 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 3
  store double %43, ptr %44, align 8, !tbaa !128
  %45 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25) #30, !range !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !130
  %46 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 1
  store double %43, ptr %46, align 8, !tbaa !129
  store double %41, ptr %42, align 8, !tbaa !125
  %47 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25) #30, !range !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 24, i1 false), !tbaa.struct !130
  store double %41, ptr %9, align 8, !tbaa !127
  store double %43, ptr %44, align 8, !tbaa !128
  %48 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25) #30, !range !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !130
  store double %41, ptr %9, align 8, !tbaa !127
  store double %43, ptr %46, align 8, !tbaa !129
  %49 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25) #30, !range !48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #8
  br label %378

50:                                               ; preds = %22
  %51 = fadd double %11, %12
  %52 = fmul double %51, 5.000000e-01
  %53 = fadd double %52, -5.000000e-01
  %54 = tail call double @llvm.ceil.f64(double %53)
  %55 = fptosi double %54 to i64
  %56 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %57 = load double, ptr %56, align 8, !tbaa !129
  %58 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %59 = load double, ptr %58, align 8, !tbaa !128
  %60 = fadd double %57, %59
  %61 = fmul double %60, 5.000000e-01
  %62 = fadd double %61, -5.000000e-01
  %63 = tail call double @llvm.ceil.f64(double %62)
  %64 = fptosi double %63 to i64
  %65 = sitofp i64 %55 to double
  %66 = fcmp oeq double %12, %65
  %67 = fcmp oeq double %11, %65
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %50
  %70 = sitofp i64 %64 to double
  %71 = fcmp oeq double %57, %70
  %72 = fcmp oeq double %59, %70
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %378, label %74

74:                                               ; preds = %69, %50
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %76 = uitofp i64 %4 to double
  %77 = fmul double %76, 2.000000e+00
  %78 = fdiv double 6.553500e+04, %77
  %79 = fcmp une double %12, %65
  %80 = fcmp une double %11, %65
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %183

82:                                               ; preds = %74
  %83 = fadd double %12, -5.000000e-01
  %84 = tail call double @llvm.ceil.f64(double %83)
  %85 = fptosi double %84 to i64
  %86 = fadd double %57, -5.000000e-01
  %87 = tail call double @llvm.ceil.f64(double %86)
  %88 = fptosi double %87 to i64
  %89 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %85, i64 noundef %88, ptr noundef nonnull %7, ptr noundef nonnull %75) #26
  %90 = load double, ptr %58, align 8, !tbaa !128
  %91 = fadd double %90, -5.000000e-01
  %92 = call double @llvm.ceil.f64(double %91)
  %93 = fptosi double %92 to i64
  %94 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %85, i64 noundef %93, ptr noundef nonnull %8, ptr noundef nonnull %75) #26
  %95 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %85, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #31
  %96 = icmp eq ptr %95, null
  br i1 %96, label %378, label %97

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %99 = load i16, ptr %98, align 2, !tbaa !46
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !46
  %103 = zext i16 %102 to i32
  %104 = add nuw nsw i32 %103, %100
  %105 = sitofp i32 %104 to double
  %106 = fmul double %105, 5.000000e-01
  %107 = fptrunc double %106 to float
  %108 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %107, double noundef %78) #30
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 2
  store i16 %108, ptr %109, align 2, !tbaa !46
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %111 = load i16, ptr %110, align 2, !tbaa !49
  %112 = zext i16 %111 to i32
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %114 = load i16, ptr %113, align 2, !tbaa !49
  %115 = zext i16 %114 to i32
  %116 = add nuw nsw i32 %115, %112
  %117 = sitofp i32 %116 to double
  %118 = fmul double %117, 5.000000e-01
  %119 = fptrunc double %118 to float
  %120 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %119, double noundef %78) #30
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !49
  %122 = load i16, ptr %7, align 2, !tbaa !50
  %123 = zext i16 %122 to i32
  %124 = load i16, ptr %8, align 2, !tbaa !50
  %125 = zext i16 %124 to i32
  %126 = add nuw nsw i32 %125, %123
  %127 = sitofp i32 %126 to double
  %128 = fmul double %127, 5.000000e-01
  %129 = fptrunc double %128 to float
  %130 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %129, double noundef %78) #30
  store i16 %130, ptr %95, align 2, !tbaa !50
  %131 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #31
  %132 = load double, ptr %3, align 8, !tbaa !127
  %133 = load double, ptr %10, align 8, !tbaa !125
  %134 = fcmp une double %132, %133
  %135 = load double, ptr %56, align 8, !tbaa !129
  br i1 %134, label %136, label %183

136:                                              ; preds = %97
  %137 = fadd double %133, -5.000000e-01
  %138 = call double @llvm.ceil.f64(double %137)
  %139 = fptosi double %138 to i64
  %140 = fadd double %135, -5.000000e-01
  %141 = call double @llvm.ceil.f64(double %140)
  %142 = fptosi double %141 to i64
  %143 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %139, i64 noundef %142, ptr noundef nonnull %7, ptr noundef nonnull %75) #26
  %144 = load double, ptr %58, align 8, !tbaa !128
  %145 = fadd double %144, -5.000000e-01
  %146 = call double @llvm.ceil.f64(double %145)
  %147 = fptosi double %146 to i64
  %148 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %139, i64 noundef %147, ptr noundef nonnull %8, ptr noundef nonnull %75) #26
  %149 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %139, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #31
  %150 = icmp eq ptr %149, null
  br i1 %150, label %378, label %151

151:                                              ; preds = %136
  %152 = load i16, ptr %98, align 2, !tbaa !46
  %153 = zext i16 %152 to i32
  %154 = load i16, ptr %101, align 2, !tbaa !46
  %155 = zext i16 %154 to i32
  %156 = add nuw nsw i32 %155, %153
  %157 = sitofp i32 %156 to double
  %158 = fmul double %157, 5.000000e-01
  %159 = fptrunc double %158 to float
  %160 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %159, double noundef %78) #30
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 2
  store i16 %160, ptr %161, align 2, !tbaa !46
  %162 = load i16, ptr %110, align 2, !tbaa !49
  %163 = zext i16 %162 to i32
  %164 = load i16, ptr %113, align 2, !tbaa !49
  %165 = zext i16 %164 to i32
  %166 = add nuw nsw i32 %165, %163
  %167 = sitofp i32 %166 to double
  %168 = fmul double %167, 5.000000e-01
  %169 = fptrunc double %168 to float
  %170 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %169, double noundef %78) #30
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 1
  store i16 %170, ptr %171, align 2, !tbaa !49
  %172 = load i16, ptr %7, align 2, !tbaa !50
  %173 = zext i16 %172 to i32
  %174 = load i16, ptr %8, align 2, !tbaa !50
  %175 = zext i16 %174 to i32
  %176 = add nuw nsw i32 %175, %173
  %177 = sitofp i32 %176 to double
  %178 = fmul double %177, 5.000000e-01
  %179 = fptrunc double %178 to float
  %180 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %179, double noundef %78) #30
  store i16 %180, ptr %149, align 2, !tbaa !50
  %181 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #31
  %182 = load double, ptr %56, align 8, !tbaa !129
  br label %183

183:                                              ; preds = %74, %151, %97
  %184 = phi double [ %57, %74 ], [ %182, %151 ], [ %135, %97 ]
  %185 = sitofp i64 %64 to double
  %186 = fcmp une double %184, %185
  %187 = load double, ptr %58, align 8, !tbaa !128
  %188 = fcmp une double %187, %185
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %190, label %303

190:                                              ; preds = %183
  %191 = load double, ptr %3, align 8, !tbaa !127
  %192 = fcmp une double %191, %65
  %193 = fcmp une double %187, %185
  %194 = select i1 %192, i1 true, i1 %193
  br i1 %194, label %195, label %247

195:                                              ; preds = %190
  %196 = fadd double %187, -5.000000e-01
  %197 = call double @llvm.ceil.f64(double %196)
  %198 = fptosi double %197 to i64
  %199 = fadd double %191, -5.000000e-01
  %200 = call double @llvm.ceil.f64(double %199)
  %201 = fptosi double %200 to i64
  %202 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %201, i64 noundef %198, ptr noundef nonnull %7, ptr noundef nonnull %75) #26
  %203 = load double, ptr %10, align 8, !tbaa !125
  %204 = fadd double %203, -5.000000e-01
  %205 = call double @llvm.ceil.f64(double %204)
  %206 = fptosi double %205 to i64
  %207 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %206, i64 noundef %198, ptr noundef nonnull %8, ptr noundef nonnull %75) #26
  %208 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %198, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #31
  %209 = icmp eq ptr %208, null
  br i1 %209, label %378, label %210

210:                                              ; preds = %195
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %212 = load i16, ptr %211, align 2, !tbaa !46
  %213 = zext i16 %212 to i32
  %214 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %215 = load i16, ptr %214, align 2, !tbaa !46
  %216 = zext i16 %215 to i32
  %217 = add nuw nsw i32 %216, %213
  %218 = sitofp i32 %217 to double
  %219 = fmul double %218, 5.000000e-01
  %220 = fptrunc double %219 to float
  %221 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %220, double noundef %78) #30
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %208, i64 0, i32 2
  store i16 %221, ptr %222, align 2, !tbaa !46
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %224 = load i16, ptr %223, align 2, !tbaa !49
  %225 = zext i16 %224 to i32
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %227 = load i16, ptr %226, align 2, !tbaa !49
  %228 = zext i16 %227 to i32
  %229 = add nuw nsw i32 %228, %225
  %230 = sitofp i32 %229 to double
  %231 = fmul double %230, 5.000000e-01
  %232 = fptrunc double %231 to float
  %233 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %232, double noundef %78) #30
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %208, i64 0, i32 1
  store i16 %233, ptr %234, align 2, !tbaa !49
  %235 = load i16, ptr %7, align 2, !tbaa !50
  %236 = zext i16 %235 to i32
  %237 = load i16, ptr %8, align 2, !tbaa !50
  %238 = zext i16 %237 to i32
  %239 = add nuw nsw i32 %238, %236
  %240 = sitofp i32 %239 to double
  %241 = fmul double %240, 5.000000e-01
  %242 = fptrunc double %241 to float
  %243 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %242, double noundef %78) #30
  store i16 %243, ptr %208, align 2, !tbaa !50
  %244 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #31
  %245 = load double, ptr %56, align 8, !tbaa !129
  %246 = load double, ptr %58, align 8, !tbaa !128
  br label %247

247:                                              ; preds = %190, %210
  %248 = phi double [ %246, %210 ], [ %187, %190 ]
  %249 = phi double [ %245, %210 ], [ %184, %190 ]
  %250 = fcmp une double %249, %248
  br i1 %250, label %251, label %303

251:                                              ; preds = %247
  %252 = fadd double %249, -5.000000e-01
  %253 = call double @llvm.ceil.f64(double %252)
  %254 = fptosi double %253 to i64
  %255 = load double, ptr %3, align 8, !tbaa !127
  %256 = fadd double %255, -5.000000e-01
  %257 = call double @llvm.ceil.f64(double %256)
  %258 = fptosi double %257 to i64
  %259 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %258, i64 noundef %254, ptr noundef nonnull %7, ptr noundef nonnull %75) #26
  %260 = load double, ptr %10, align 8, !tbaa !125
  %261 = fadd double %260, -5.000000e-01
  %262 = call double @llvm.ceil.f64(double %261)
  %263 = fptosi double %262 to i64
  %264 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %263, i64 noundef %254, ptr noundef nonnull %8, ptr noundef nonnull %75) #26
  %265 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %254, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #31
  %266 = icmp eq ptr %265, null
  br i1 %266, label %378, label %267

267:                                              ; preds = %251
  %268 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %269 = load i16, ptr %268, align 2, !tbaa !46
  %270 = zext i16 %269 to i32
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %272 = load i16, ptr %271, align 2, !tbaa !46
  %273 = zext i16 %272 to i32
  %274 = add nuw nsw i32 %273, %270
  %275 = sitofp i32 %274 to double
  %276 = fmul double %275, 5.000000e-01
  %277 = fptrunc double %276 to float
  %278 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %277, double noundef %78) #30
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 0, i32 2
  store i16 %278, ptr %279, align 2, !tbaa !46
  %280 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %281 = load i16, ptr %280, align 2, !tbaa !49
  %282 = zext i16 %281 to i32
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %284 = load i16, ptr %283, align 2, !tbaa !49
  %285 = zext i16 %284 to i32
  %286 = add nuw nsw i32 %285, %282
  %287 = sitofp i32 %286 to double
  %288 = fmul double %287, 5.000000e-01
  %289 = fptrunc double %288 to float
  %290 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %289, double noundef %78) #30
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 0, i32 1
  store i16 %290, ptr %291, align 2, !tbaa !49
  %292 = load i16, ptr %7, align 2, !tbaa !50
  %293 = zext i16 %292 to i32
  %294 = load i16, ptr %8, align 2, !tbaa !50
  %295 = zext i16 %294 to i32
  %296 = add nuw nsw i32 %295, %293
  %297 = sitofp i32 %296 to double
  %298 = fmul double %297, 5.000000e-01
  %299 = fptrunc double %298 to float
  %300 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %299, double noundef %78) #30
  store i16 %300, ptr %265, align 2, !tbaa !50
  %301 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #31
  %302 = load double, ptr %56, align 8, !tbaa !129
  br label %303

303:                                              ; preds = %183, %267, %247
  %304 = phi double [ %302, %267 ], [ %249, %247 ], [ %184, %183 ]
  %305 = load double, ptr %3, align 8, !tbaa !127
  %306 = load double, ptr %10, align 8, !tbaa !125
  %307 = fcmp une double %305, %306
  br i1 %307, label %311, label %308

308:                                              ; preds = %303
  %309 = load double, ptr %58, align 8, !tbaa !128
  %310 = fcmp une double %304, %309
  br i1 %310, label %311, label %367

311:                                              ; preds = %308, %303
  %312 = fadd double %305, -5.000000e-01
  %313 = call double @llvm.ceil.f64(double %312)
  %314 = fptosi double %313 to i64
  %315 = fadd double %304, -5.000000e-01
  %316 = call double @llvm.ceil.f64(double %315)
  %317 = fptosi double %316 to i64
  %318 = call i32 @GetOneVirtualPixel(ptr noundef %0, i64 noundef %314, i64 noundef %317, ptr noundef nonnull %7, ptr noundef nonnull %75) #26
  %319 = load double, ptr %10, align 8, !tbaa !125
  %320 = fadd double %319, -5.000000e-01
  %321 = call double @llvm.ceil.f64(double %320)
  %322 = fptosi double %321 to i64
  %323 = load double, ptr %58, align 8, !tbaa !128
  %324 = fadd double %323, -5.000000e-01
  %325 = call double @llvm.ceil.f64(double %324)
  %326 = fptosi double %325 to i64
  %327 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %322, i64 noundef %326, ptr noundef nonnull %8, ptr noundef nonnull %75) #26
  %328 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #31
  %329 = icmp eq ptr %328, null
  br i1 %329, label %378, label %330

330:                                              ; preds = %311
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %332 = load i16, ptr %331, align 2, !tbaa !46
  %333 = zext i16 %332 to i32
  %334 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %335 = load i16, ptr %334, align 2, !tbaa !46
  %336 = zext i16 %335 to i32
  %337 = add nuw nsw i32 %336, %333
  %338 = sitofp i32 %337 to double
  %339 = fmul double %338, 5.000000e-01
  %340 = fptrunc double %339 to float
  %341 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %340, double noundef %78) #30
  %342 = getelementptr inbounds %struct._PixelPacket, ptr %328, i64 0, i32 2
  store i16 %341, ptr %342, align 2, !tbaa !46
  %343 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %344 = load i16, ptr %343, align 2, !tbaa !49
  %345 = zext i16 %344 to i32
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %347 = load i16, ptr %346, align 2, !tbaa !49
  %348 = zext i16 %347 to i32
  %349 = add nuw nsw i32 %348, %345
  %350 = sitofp i32 %349 to double
  %351 = fmul double %350, 5.000000e-01
  %352 = fptrunc double %351 to float
  %353 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %352, double noundef %78) #30
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %328, i64 0, i32 1
  store i16 %353, ptr %354, align 2, !tbaa !49
  %355 = load i16, ptr %7, align 2, !tbaa !50
  %356 = zext i16 %355 to i32
  %357 = load i16, ptr %8, align 2, !tbaa !50
  %358 = zext i16 %357 to i32
  %359 = add nuw nsw i32 %358, %356
  %360 = sitofp i32 %359 to double
  %361 = fmul double %360, 5.000000e-01
  %362 = fptrunc double %361 to float
  %363 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %362, double noundef %78) #30
  store i16 %363, ptr %328, align 2, !tbaa !50
  %364 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #31
  %365 = load double, ptr %10, align 8, !tbaa !125
  %366 = load double, ptr %3, align 8, !tbaa !127
  br label %367

367:                                              ; preds = %330, %308
  %368 = phi double [ %366, %330 ], [ %305, %308 ]
  %369 = phi double [ %365, %330 ], [ %306, %308 ]
  %370 = fsub double %369, %368
  %371 = fcmp olt double %370, 3.000000e+00
  br i1 %371, label %372, label %377

372:                                              ; preds = %367
  %373 = load double, ptr %58, align 8, !tbaa !128
  %374 = load double, ptr %56, align 8, !tbaa !129
  %375 = fsub double %373, %374
  %376 = fcmp olt double %375, 3.000000e+00
  br i1 %376, label %378, label %377

377:                                              ; preds = %372, %367
  br label %378

378:                                              ; preds = %311, %251, %195, %82, %136, %372, %69, %15, %377, %24
  %379 = phi i32 [ %49, %24 ], [ 0, %377 ], [ 1, %15 ], [ 0, %69 ], [ 1, %372 ], [ 1, %136 ], [ 1, %82 ], [ 1, %195 ], [ 1, %251 ], [ 1, %311 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %379
}

; Function Attrs: optsize
declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i16 @PlasmaPixel(ptr noundef %0, float noundef %1, double noundef %2) unnamed_addr #0 {
  %4 = fpext float %1 to double
  %5 = tail call double @GetPseudoRandomValue(ptr noundef %0) #26
  %6 = tail call double @llvm.fmuladd.f64(double %2, double %5, double %4)
  %7 = fmul double %2, 5.000000e-01
  %8 = fsub double %6, %7
  %9 = fptrunc double %8 to float
  %10 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %9) #30
  ret i16 %10
}

; Function Attrs: optsize
declare i32 @GetOneVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PlasmaImage(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !39
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3850, ptr noundef nonnull @.str.162) #26
  %10 = load i32, ptr %5, align 8, !tbaa !39
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3854, ptr noundef nonnull @.str.162) #26
  br label %14

14:                                               ; preds = %4, %12, %8
  %15 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %19 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %18) #26
  %20 = tail call ptr @AcquireRandomInfo() #26
  %21 = tail call i32 @PlasmaImageProxy(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %20, ptr noundef %1, i64 noundef %2, i64 noundef %3) #30, !range !48
  %22 = tail call ptr @DestroyRandomInfo(ptr noundef %20) #26
  %23 = tail call ptr @DestroyCacheView(ptr noundef %19) #26
  br label %24

24:                                               ; preds = %14, %17
  %25 = phi i32 [ %21, %17 ], [ 0, %14 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PolaroidImage(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._TypeMetric, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !39
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3921, ptr noundef nonnull @.str.22, ptr noundef nonnull %12) #26
  br label %14

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !45
  %17 = uitofp i64 %16 to double
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !42
  %20 = uitofp i64 %19 to double
  %21 = tail call fastcc double @MagickMax(double noundef %17, double noundef %20) #30
  %22 = fdiv double %21, 2.500000e+01
  %23 = tail call fastcc double @MagickMax(double noundef %22, double noundef 1.000000e+01) #30
  %24 = fptosi double %23 to i64
  %25 = shl nsw i64 %24, 1
  %26 = add i64 %25, %19
  %27 = tail call ptr @GetImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.163) #26
  %28 = icmp eq ptr %27, null
  br i1 %28, label %81, label %29

29:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #8
  %30 = load i64, ptr %15, align 8, !tbaa !45
  %31 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %30, i64 noundef 1, i32 noundef 1, ptr noundef %3) #26
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %161

34:                                               ; preds = %29
  %35 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #26
  %36 = tail call ptr @InterpretImageProperties(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %27) #26
  store ptr %36, ptr %5, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %35, i64 0, i32 21
  %38 = tail call ptr @CloneString(ptr noundef nonnull %37, ptr noundef %36) #26
  %39 = call i64 @FormatMagickCaption(ptr noundef nonnull %31, ptr noundef %35, i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %5) #26
  %40 = load i64, ptr %15, align 8, !tbaa !45
  %41 = add nsw i64 %39, 1
  %42 = sitofp i64 %41 to double
  %43 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 1
  %44 = load double, ptr %43, align 8, !tbaa !131
  %45 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 2
  %46 = load double, ptr %45, align 8, !tbaa !133
  %47 = fsub double %44, %46
  %48 = call double @llvm.fmuladd.f64(double %42, double %47, double 5.000000e-01)
  %49 = fptoui double %48 to i64
  %50 = call i32 @SetImageExtent(ptr noundef nonnull %31, i64 noundef %40, i64 noundef %49) #26
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = call ptr @DestroyImage(ptr noundef nonnull %31) #26
  br label %75

54:                                               ; preds = %34
  %55 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 12
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %55, align 8
  %58 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %31) #26
  %59 = load ptr, ptr %5, align 8, !tbaa !17
  %60 = call ptr @CloneString(ptr noundef nonnull %37, ptr noundef %59) #26
  %61 = load double, ptr %43, align 8, !tbaa !131
  %62 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.164, double noundef %61) #26
  %63 = getelementptr inbounds %struct._DrawInfo, ptr %35, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !134
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct._DrawInfo, ptr %35, i64 0, i32 1
  %68 = call ptr @AcquireString(ptr noundef nonnull %6) #26
  %69 = call ptr @CloneString(ptr noundef nonnull %67, ptr noundef %68) #26
  br label %70

70:                                               ; preds = %66, %54
  %71 = call i32 @AnnotateImage(ptr noundef nonnull %31, ptr noundef nonnull %35) #26
  %72 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %73 = load i64, ptr %72, align 8, !tbaa !42
  %74 = add i64 %73, %26
  br label %75

75:                                               ; preds = %52, %70
  %76 = phi i64 [ %26, %52 ], [ %74, %70 ]
  %77 = phi ptr [ %53, %52 ], [ %31, %70 ]
  %78 = call ptr @DestroyDrawInfo(ptr noundef %35) #26
  %79 = load ptr, ptr %5, align 8, !tbaa !17
  %80 = call ptr @DestroyString(ptr noundef %79) #26
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %81

81:                                               ; preds = %75, %14
  %82 = phi i64 [ %76, %75 ], [ %26, %14 ]
  %83 = phi ptr [ %77, %75 ], [ null, %14 ]
  %84 = load i64, ptr %15, align 8, !tbaa !45
  %85 = add i64 %84, %25
  %86 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %85, i64 noundef %82, i32 noundef 1, ptr noundef %3) #26
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = icmp eq ptr %83, null
  br i1 %89, label %161, label %90

90:                                               ; preds = %88
  %91 = call ptr @DestroyImage(ptr noundef nonnull %83) #26
  br label %161

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 12
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %95 = load i64, ptr %94, align 8
  store i64 %95, ptr %93, align 8
  %96 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %86) #26
  %97 = call i32 @CompositeImage(ptr noundef nonnull %86, i32 noundef 40, ptr noundef nonnull %0, i64 noundef %24, i64 noundef %24) #26
  %98 = icmp eq ptr %83, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i64, ptr %18, align 8, !tbaa !42
  %101 = mul nsw i64 %24, 3
  %102 = sdiv i64 %101, 2
  %103 = add i64 %100, %102
  %104 = call i32 @CompositeImage(ptr noundef nonnull %86, i32 noundef 40, ptr noundef nonnull %83, i64 noundef %24, i64 noundef %103) #26
  %105 = call ptr @DestroyImage(ptr noundef nonnull %83) #26
  br label %106

106:                                              ; preds = %99, %92
  %107 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.165, ptr noundef nonnull %93, ptr noundef %3) #26
  %108 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %86, i32 noundef 6) #26
  %109 = call ptr @RotateImage(ptr noundef nonnull %86, double noundef 9.000000e+01, ptr noundef %3) #26
  %110 = call ptr @DestroyImage(ptr noundef nonnull %86) #26
  %111 = icmp eq ptr %109, null
  br i1 %111, label %161, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 8
  %114 = load i64, ptr %113, align 8, !tbaa !42
  %115 = uitofp i64 %114 to double
  %116 = fmul double %115, 1.000000e-02
  %117 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 7
  %118 = load i64, ptr %117, align 8, !tbaa !45
  %119 = uitofp i64 %118 to double
  %120 = fmul double %119, 2.000000e+00
  %121 = call ptr @WaveImage(ptr noundef nonnull %109, double noundef %116, double noundef %120, ptr noundef %3) #30
  %122 = call ptr @DestroyImage(ptr noundef nonnull %109) #26
  %123 = icmp eq ptr %121, null
  br i1 %123, label %161, label %124

124:                                              ; preds = %112
  %125 = getelementptr inbounds %struct._Image, ptr %121, i64 0, i32 58
  call void @InheritException(ptr noundef nonnull %125, ptr noundef %3) #26
  %126 = call ptr @RotateImage(ptr noundef nonnull %121, double noundef -9.000000e+01, ptr noundef %3) #26
  %127 = call ptr @DestroyImage(ptr noundef nonnull %121) #26
  %128 = icmp eq ptr %126, null
  br i1 %128, label %161, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 12
  %131 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %132 = load i64, ptr %131, align 8
  store i64 %132, ptr %130, align 8
  %133 = sdiv i64 %24, 3
  %134 = call ptr @ShadowImage(ptr noundef nonnull %126, double noundef 8.000000e+01, double noundef 2.000000e+00, i64 noundef %133, i64 noundef %133, ptr noundef %3) #30
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = call ptr @DestroyImage(ptr noundef nonnull %126) #26
  br label %161

138:                                              ; preds = %129
  %139 = call ptr @FlopImage(ptr noundef nonnull %134, ptr noundef %3) #26
  %140 = call ptr @DestroyImage(ptr noundef nonnull %134) #26
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call ptr @DestroyImage(ptr noundef nonnull %126) #26
  br label %161

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 7
  %146 = load i64, ptr %145, align 8, !tbaa !45
  %147 = uitofp i64 %146 to double
  %148 = fmul double %147, -1.000000e-02
  %149 = fmul double %148, 5.000000e-01
  %150 = fptosi double %149 to i64
  %151 = call i32 @CompositeImage(ptr noundef nonnull %139, i32 noundef 40, ptr noundef nonnull %126, i64 noundef %150, i64 noundef 0) #26
  %152 = call ptr @DestroyImage(ptr noundef nonnull %126) #26
  %153 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 12
  %154 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.165, ptr noundef nonnull %153, ptr noundef %3) #26
  %155 = call ptr @RotateImage(ptr noundef nonnull %139, double noundef %2, ptr noundef %3) #26
  %156 = call ptr @DestroyImage(ptr noundef nonnull %139) #26
  %157 = icmp eq ptr %155, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %144
  %159 = call ptr @TrimImage(ptr noundef nonnull %155, ptr noundef %3) #26
  %160 = call ptr @DestroyImage(ptr noundef nonnull %155) #26
  br label %161

161:                                              ; preds = %33, %158, %144, %124, %112, %106, %88, %90, %142, %136
  %162 = phi ptr [ %137, %136 ], [ %143, %142 ], [ null, %90 ], [ null, %88 ], [ null, %106 ], [ null, %112 ], [ null, %124 ], [ null, %144 ], [ %159, %158 ], [ null, %33 ]
  ret ptr %162
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #11 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @FormatMagickCaption(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageExtent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AnnotateImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WaveImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca ptr, align 8
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !17
  store ptr %3, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %16 = load i32, ptr %15, align 8, !tbaa !39
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5519, ptr noundef nonnull @.str.22, ptr noundef nonnull %19) #26
  br label %21

21:                                               ; preds = %18, %4
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !42
  %26 = uitofp i64 %25 to double
  %27 = tail call double @llvm.fabs.f64(double %1)
  %28 = tail call double @llvm.fmuladd.f64(double %27, double 2.000000e+00, double %26)
  %29 = fptoui double %28 to i64
  %30 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %23, i64 noundef %29, i32 noundef 1, ptr noundef %3) #26
  store ptr %30, ptr %9, align 8, !tbaa !17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %103, label %32

32:                                               ; preds = %21
  %33 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %30, i32 noundef 1) #26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %36) #26
  %37 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #26
  br label %103

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 12, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !113
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 6
  store i32 1, ptr %43, align 8, !tbaa !61
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !45
  %47 = tail call ptr @AcquireQuantumMemory(i64 noundef %46, i64 noundef 4) #29
  store ptr %47, ptr %13, align 8, !tbaa !17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i64, ptr %45, align 8, !tbaa !45
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %56, label %68

52:                                               ; preds = %44
  %53 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #26
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %55 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5542, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %54) #26
  br label %103

56:                                               ; preds = %49, %56
  %57 = phi i64 [ %65, %56 ], [ 0, %49 ]
  %58 = sitofp i64 %57 to double
  %59 = fmul double %58, 0x401921FB54442D18
  %60 = fdiv double %59, %2
  %61 = tail call double @sin(double noundef %60) #26
  %62 = tail call double @llvm.fmuladd.f64(double %1, double %61, double %27)
  %63 = fptrunc double %62 to float
  %64 = getelementptr inbounds float, ptr %47, i64 %57
  store float %63, ptr %64, align 4, !tbaa !73
  %65 = add nuw nsw i64 %57, 1
  %66 = load i64, ptr %45, align 8, !tbaa !45
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %56, label %68, !llvm.loop !139

68:                                               ; preds = %56, %49
  store i32 1, ptr %10, align 4, !tbaa !6
  store i64 0, ptr %11, align 8, !tbaa !41
  call void @GetMagickPixelPacket(ptr noundef nonnull %30, ptr noundef nonnull %12) #26
  %69 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #26
  store ptr %69, ptr %7, align 8, !tbaa !17
  %70 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %30, ptr noundef %3) #26
  store ptr %70, ptr %8, align 8, !tbaa !17
  %71 = call i32 @SetCacheViewVirtualPixelMethod(ptr noundef %69, i32 noundef 1) #26
  %72 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8
  %73 = load i64, ptr %72, align 8, !tbaa !42
  %74 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %75 = shl i64 %74, 5
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %68
  %78 = call i32 @GetImagePixelCacheType(ptr noundef %0) #26
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %30) #26
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %89

85:                                               ; preds = %80, %77, %68
  %86 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %87 = icmp ult i64 %86, 2
  %88 = select i1 %87, i64 1, i64 2
  br label %89

89:                                               ; preds = %85, %83
  %90 = phi i64 [ %84, %83 ], [ %88, %85 ]
  %91 = trunc i64 %90 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %91)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @WaveImage.omp_outlined, ptr nonnull %9, ptr nonnull %10, ptr nonnull %8, ptr nonnull %6, ptr nonnull %12, ptr nonnull %5, ptr nonnull %7, ptr nonnull %13, ptr nonnull %11)
  %92 = load ptr, ptr %8, align 8, !tbaa !17
  %93 = call ptr @DestroyCacheView(ptr noundef %92) #26
  store ptr %93, ptr %8, align 8, !tbaa !17
  %94 = load ptr, ptr %7, align 8, !tbaa !17
  %95 = call ptr @DestroyCacheView(ptr noundef %94) #26
  store ptr %95, ptr %7, align 8, !tbaa !17
  %96 = load ptr, ptr %13, align 8, !tbaa !17
  %97 = call ptr @RelinquishMagickMemory(ptr noundef %96) #26
  store ptr %97, ptr %13, align 8, !tbaa !17
  %98 = load i32, ptr %10, align 4, !tbaa !6
  %99 = icmp eq i32 %98, 0
  %100 = load ptr, ptr %9, align 8, !tbaa !17
  br i1 %99, label %101, label %103

101:                                              ; preds = %89
  %102 = call ptr @DestroyImage(ptr noundef %100) #26
  br label %103

103:                                              ; preds = %89, %101, %21, %52, %35
  %104 = phi ptr [ null, %35 ], [ null, %52 ], [ null, %21 ], [ %102, %101 ], [ %100, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret ptr %104
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShadowImage(ptr noundef %0, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct._RectangleInfo, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !17
  store double %1, ptr %8, align 8, !tbaa !40
  store ptr %5, ptr %9, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !39
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4261, ptr noundef nonnull @.str.22, ptr noundef nonnull %20) #26
  br label %22

22:                                               ; preds = %19, %6
  %23 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %110, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !47
  %28 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %27) #30, !range !48
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @SetImageColorspace(ptr noundef nonnull %23, i32 noundef 13) #26
  br label %32

32:                                               ; preds = %30, %25
  %33 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %23, i32 noundef 4) #26
  %34 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 36
  store i32 40, ptr %34, align 8, !tbaa !140
  %35 = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 5.000000e-01)
  %36 = tail call double @llvm.floor.f64(double %35)
  %37 = fptoui double %36 to i64
  store i64 %37, ptr %14, align 8, !tbaa !141
  %38 = getelementptr inbounds %struct._RectangleInfo, ptr %14, i64 0, i32 1
  store i64 %37, ptr %38, align 8, !tbaa !142
  %39 = getelementptr inbounds %struct._RectangleInfo, ptr %14, i64 0, i32 2
  %40 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %41 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.165, ptr noundef nonnull %40, ptr noundef %5) #26
  %42 = call ptr @BorderImage(ptr noundef nonnull %23, ptr noundef nonnull %14, ptr noundef %5) #26
  store ptr %42, ptr %11, align 8, !tbaa !17
  %43 = call ptr @DestroyImage(ptr noundef nonnull %23) #26
  %44 = icmp eq ptr %42, null
  br i1 %44, label %110, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !61
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %42, i32 noundef 6) #26
  br label %51

51:                                               ; preds = %49, %45
  store i32 1, ptr %12, align 4, !tbaa !6
  store i64 0, ptr %13, align 8, !tbaa !41
  %52 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %42, ptr noundef %5) #26
  store ptr %52, ptr %10, align 8, !tbaa !17
  %53 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !42
  %55 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %56 = shl i64 %55, 5
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %42) #26
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %42) #26
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %70

66:                                               ; preds = %61, %58, %51
  %67 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %68 = icmp ult i64 %67, 2
  %69 = select i1 %68, i64 1, i64 2
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i64 [ %65, %64 ], [ %69, %66 ]
  %72 = trunc i64 %71 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %72)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @ShadowImage.omp_outlined, ptr nonnull %11, ptr nonnull %12, ptr nonnull %10, ptr nonnull %9, ptr nonnull %8, ptr nonnull %7, ptr nonnull %13)
  %73 = load ptr, ptr %10, align 8, !tbaa !17
  %74 = call ptr @DestroyCacheView(ptr noundef %73) #26
  store ptr %74, ptr %10, align 8, !tbaa !17
  %75 = load ptr, ptr %11, align 8, !tbaa !17
  %76 = load ptr, ptr %9, align 8, !tbaa !17
  %77 = call ptr @BlurImageChannel(ptr noundef %75, i32 noundef 8, double noundef 0.000000e+00, double noundef %2, ptr noundef %76) #26
  %78 = load ptr, ptr %11, align 8, !tbaa !17
  %79 = call ptr @DestroyImage(ptr noundef %78) #26
  %80 = icmp eq ptr %77, null
  br i1 %80, label %110, label %81

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 26
  %83 = load i64, ptr %82, align 8, !tbaa !104
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 7
  %87 = load i64, ptr %86, align 8, !tbaa !45
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi i64 [ %87, %85 ], [ %83, %81 ]
  %90 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 26, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !103
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 8
  %95 = load i64, ptr %94, align 8, !tbaa !42
  br label %96

96:                                               ; preds = %93, %88
  %97 = phi i64 [ %95, %93 ], [ %91, %88 ]
  %98 = load i64, ptr %14, align 8, !tbaa !141
  %99 = sub nsw i64 %3, %98
  %100 = add i64 %89, %99
  store i64 %100, ptr %82, align 8, !tbaa !104
  %101 = load i64, ptr %38, align 8, !tbaa !142
  %102 = sub nsw i64 %4, %101
  %103 = add i64 %97, %102
  store i64 %103, ptr %90, align 8, !tbaa !103
  %104 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 26, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !105
  %106 = add nsw i64 %105, %99
  store i64 %106, ptr %104, align 8, !tbaa !105
  %107 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 26, i32 3
  %108 = load i64, ptr %107, align 8, !tbaa !106
  %109 = add nsw i64 %108, %102
  store i64 %109, ptr %107, align 8, !tbaa !106
  br label %110

110:                                              ; preds = %70, %32, %22, %96
  %111 = phi ptr [ %77, %96 ], [ null, %22 ], [ null, %32 ], [ null, %70 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  ret ptr %111
}

; Function Attrs: optsize
declare ptr @FlopImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @TrimImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SepiaToneImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !17
  store double %1, ptr %5, align 8, !tbaa !40
  store ptr %2, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !39
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4105, ptr noundef nonnull @.str.22, ptr noundef nonnull %17) #26
  br label %19

19:                                               ; preds = %16, %3
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !42
  %24 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %21, i64 noundef %23, i32 noundef 1, ptr noundef %2) #26
  store ptr %24, ptr %9, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %19
  %27 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %24, i32 noundef 1) #26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %30) #26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #26
  br label %67

32:                                               ; preds = %26
  store i32 1, ptr %10, align 4, !tbaa !6
  store i64 0, ptr %11, align 8, !tbaa !41
  %33 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #26
  store ptr %33, ptr %7, align 8, !tbaa !17
  %34 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %24, ptr noundef %2) #26
  store ptr %34, ptr %8, align 8, !tbaa !17
  %35 = load i64, ptr %22, align 8, !tbaa !42
  %36 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %37 = shl i64 %36, 5
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %24) #26
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %51

47:                                               ; preds = %42, %39, %32
  %48 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %49 = icmp ult i64 %48, 2
  %50 = select i1 %49, i64 1, i64 2
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i64 [ %46, %45 ], [ %50, %47 ]
  %53 = trunc i64 %52 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %53)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @SepiaToneImage.omp_outlined, ptr nonnull %4, ptr nonnull %10, ptr nonnull %7, ptr nonnull %6, ptr nonnull %8, ptr nonnull %9, ptr nonnull %5, ptr nonnull %11)
  %54 = load ptr, ptr %8, align 8, !tbaa !17
  %55 = call ptr @DestroyCacheView(ptr noundef %54) #26
  store ptr %55, ptr %8, align 8, !tbaa !17
  %56 = load ptr, ptr %7, align 8, !tbaa !17
  %57 = call ptr @DestroyCacheView(ptr noundef %56) #26
  store ptr %57, ptr %7, align 8, !tbaa !17
  %58 = load ptr, ptr %9, align 8, !tbaa !17
  %59 = call i32 @NormalizeImage(ptr noundef %58) #26
  %60 = load ptr, ptr %9, align 8, !tbaa !17
  %61 = call i32 @ContrastImage(ptr noundef %60, i32 noundef 1) #26
  %62 = load i32, ptr %10, align 4, !tbaa !6
  %63 = icmp eq i32 %62, 0
  %64 = load ptr, ptr %9, align 8, !tbaa !17
  br i1 %63, label %65, label %67

65:                                               ; preds = %51
  %66 = call ptr @DestroyImage(ptr noundef %64) #26
  br label %67

67:                                               ; preds = %51, %65, %19, %29
  %68 = phi ptr [ null, %29 ], [ null, %19 ], [ %66, %65 ], [ %64, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret ptr %68
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SepiaToneImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #7 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %149

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 %18, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 1, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !tbaa !6
  %21 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !44
  %24 = load i64, ptr %11, align 8, !tbaa !44
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %148, label %26

26:                                               ; preds = %20, %140
  %27 = phi i64 [ %146, %140 ], [ %23, %20 ]
  %28 = phi i64 [ %144, %140 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %140, label %30

30:                                               ; preds = %26, %134
  %31 = phi i64 [ %135, %134 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %134, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !17
  %36 = load ptr, ptr %2, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !45
  %39 = load ptr, ptr %5, align 8, !tbaa !17
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #31
  %41 = load ptr, ptr %6, align 8, !tbaa !17
  %42 = load ptr, ptr %7, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !45
  %45 = load ptr, ptr %5, align 8, !tbaa !17
  %46 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %41, i64 noundef 0, i64 noundef %31, i64 noundef %44, i64 noundef 1, ptr noundef %45) #31
  %47 = icmp eq ptr %40, null
  %48 = icmp eq ptr %46, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %133, label %50

50:                                               ; preds = %34
  %51 = load ptr, ptr %2, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !45
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %114

55:                                               ; preds = %50, %103
  %56 = phi ptr [ %110, %103 ], [ %51, %50 ]
  %57 = phi ptr [ %107, %103 ], [ %40, %50 ]
  %58 = phi ptr [ %108, %103 ], [ %46, %50 ]
  %59 = phi i64 [ %109, %103 ], [ 0, %50 ]
  %60 = call float @GetPixelIntensity(ptr noundef nonnull %56, ptr noundef nonnull %57) #31
  %61 = fpext float %60 to double
  %62 = load double, ptr %8, align 8, !tbaa !40
  %63 = fcmp olt double %62, %61
  %64 = fadd double %61, 6.553500e+04
  %65 = fsub double %64, %62
  %66 = select i1 %63, double 6.553500e+04, double %65
  %67 = fptrunc double %66 to float
  %68 = call fastcc zeroext i16 @ClampToQuantum(float noundef %67) #30
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  store i16 %68, ptr %69, align 2, !tbaa !46
  %70 = fmul double %62, 7.000000e+00
  %71 = fdiv double %70, 6.000000e+00
  %72 = fcmp olt double %71, %61
  %73 = fsub double %64, %71
  %74 = select i1 %72, double 6.553500e+04, double %73
  %75 = fptrunc double %74 to float
  %76 = call fastcc zeroext i16 @ClampToQuantum(float noundef %75) #30
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  store i16 %76, ptr %77, align 2, !tbaa !49
  %78 = uitofp i16 %76 to double
  %79 = insertelement <2 x double> poison, double %62, i64 0
  %80 = shufflevector <2 x double> %79, <2 x double> poison, <2 x i32> zeroinitializer
  %81 = fdiv <2 x double> %80, <double 7.000000e+00, double 6.000000e+00>
  %82 = extractelement <2 x double> %81, i64 1
  %83 = fsub double %61, %82
  %84 = insertelement <2 x double> poison, double %78, i64 0
  %85 = insertelement <2 x double> %84, double %61, i64 1
  %86 = fcmp ogt <2 x double> %81, %85
  %87 = extractelement <2 x i1> %86, i64 1
  %88 = fptrunc double %83 to float
  %89 = select i1 %87, float 0.000000e+00, float %88
  %90 = call fastcc zeroext i16 @ClampToQuantum(float noundef %89) #30
  store i16 %90, ptr %58, align 2, !tbaa !50
  %91 = extractelement <2 x i1> %86, i64 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %55
  %93 = extractelement <2 x double> %81, i64 0
  %94 = fptrunc double %93 to float
  %95 = call fastcc zeroext i16 @ClampToQuantum(float noundef %94) #30
  store i16 %95, ptr %77, align 2, !tbaa !49
  br label %96

96:                                               ; preds = %92, %55
  %97 = uitofp i16 %90 to double
  %98 = extractelement <2 x double> %81, i64 0
  %99 = fcmp ogt double %98, %97
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = fptrunc double %98 to float
  %102 = call fastcc zeroext i16 @ClampToQuantum(float noundef %101) #30
  store i16 %102, ptr %58, align 2, !tbaa !50
  br label %103

103:                                              ; preds = %100, %96
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !51
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  store i16 %105, ptr %106, align 2, !tbaa !51
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %109 = add nuw nsw i64 %59, 1
  %110 = load ptr, ptr %2, align 8, !tbaa !17
  %111 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 7
  %112 = load i64, ptr %111, align 8, !tbaa !45
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %55, label %114, !llvm.loop !143

114:                                              ; preds = %103, %50
  %115 = load ptr, ptr %6, align 8, !tbaa !17
  %116 = load ptr, ptr %5, align 8, !tbaa !17
  %117 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %115, ptr noundef %116) #31
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %120

120:                                              ; preds = %119, %114
  %121 = load ptr, ptr %2, align 8, !tbaa !17
  %122 = getelementptr inbounds %struct._Image, ptr %121, i64 0, i32 47
  %123 = load ptr, ptr %122, align 8, !tbaa !54
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_SepiaToneImage.var)
  %126 = load ptr, ptr %2, align 8, !tbaa !17
  %127 = load i64, ptr %9, align 8, !tbaa !41
  %128 = add nsw i64 %127, 1
  store i64 %128, ptr %9, align 8, !tbaa !41
  %129 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 8
  %130 = load i64, ptr %129, align 8, !tbaa !42
  %131 = call fastcc i32 @SetImageProgress(ptr noundef %126, ptr noundef nonnull @.str.166, i64 noundef %127, i64 noundef %130) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_SepiaToneImage.var)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125, %34
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %134

134:                                              ; preds = %133, %120, %125, %30
  %135 = add nsw i64 %31, 1
  %136 = load i64, ptr %12, align 8, !tbaa !44
  %137 = icmp slt i64 %31, %136
  br i1 %137, label %30, label %138

138:                                              ; preds = %134
  %139 = load i64, ptr %11, align 8, !tbaa !44
  br label %140

140:                                              ; preds = %138, %26
  %141 = phi i64 [ %28, %26 ], [ %139, %138 ]
  %142 = phi i64 [ %27, %26 ], [ %136, %138 ]
  %143 = load i64, ptr %13, align 8, !tbaa !44
  %144 = add nsw i64 %143, %141
  store i64 %144, ptr %11, align 8, !tbaa !44
  %145 = add nsw i64 %143, %142
  %146 = call i64 @llvm.smin.i64(i64 %145, i64 %18)
  store i64 %146, ptr %12, align 8, !tbaa !44
  %147 = icmp sgt i64 %144, %146
  br i1 %147, label %148, label %26

148:                                              ; preds = %140, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %149

149:                                              ; preds = %148, %10
  ret void
}

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @ContrastImage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ShadowImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #7 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %113

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 %17, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 1, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !tbaa !6
  %20 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !44
  %23 = load i64, ptr %10, align 8, !tbaa !44
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %112, label %25

25:                                               ; preds = %19, %104
  %26 = phi i64 [ %110, %104 ], [ %22, %19 ]
  %27 = phi i64 [ %108, %104 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %104, label %29

29:                                               ; preds = %25, %98
  %30 = phi i64 [ %99, %98 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %98, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !17
  %35 = load ptr, ptr %2, align 8, !tbaa !17
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !45
  %38 = load ptr, ptr %5, align 8, !tbaa !17
  %39 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #31
  %40 = icmp eq ptr %39, null
  br i1 %40, label %97, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %2, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !45
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 12, i32 2
  %48 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 12
  %49 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !61
  %51 = icmp eq i32 %50, 0
  %52 = load double, ptr %6, align 8
  %53 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 12, i32 3
  %54 = load i16, ptr %47, align 4, !tbaa !144
  %55 = load <2 x i16>, ptr %48, align 8, !tbaa !52
  br label %56

56:                                               ; preds = %46, %73
  %57 = phi i64 [ 0, %46 ], [ %75, %73 ]
  %58 = phi ptr [ %39, %46 ], [ %74, %73 ]
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  store i16 %54, ptr %59, align 2, !tbaa !46
  store <2 x i16> %55, ptr %58, align 2, !tbaa !52
  br i1 %51, label %60, label %63

60:                                               ; preds = %56
  %61 = load i16, ptr %53, align 2, !tbaa !113
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  store i16 %61, ptr %62, align 2, !tbaa !51
  br label %73

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  %65 = load i16, ptr %64, align 2, !tbaa !51
  %66 = xor i16 %65, -1
  %67 = uitofp i16 %66 to double
  %68 = fmul double %52, %67
  %69 = fdiv double %68, 1.000000e+02
  %70 = fsub double 6.553500e+04, %69
  %71 = fptrunc double %70 to float
  %72 = call fastcc zeroext i16 @ClampToQuantum(float noundef %71) #30
  store i16 %72, ptr %64, align 2, !tbaa !51
  br label %73

73:                                               ; preds = %63, %60
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %75 = add nuw nsw i64 %57, 1
  %76 = icmp eq i64 %75, %44
  br i1 %76, label %77, label %56, !llvm.loop !145

77:                                               ; preds = %73, %41
  %78 = load ptr, ptr %4, align 8, !tbaa !17
  %79 = load ptr, ptr %5, align 8, !tbaa !17
  %80 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %78, ptr noundef %79) #31
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %83

83:                                               ; preds = %82, %77
  %84 = load ptr, ptr %7, align 8, !tbaa !17
  %85 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 47
  %86 = load ptr, ptr %85, align 8, !tbaa !54
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_ShadowImage.var)
  %89 = load ptr, ptr %7, align 8, !tbaa !17
  %90 = load i64, ptr %8, align 8, !tbaa !41
  %91 = add nsw i64 %90, 1
  store i64 %91, ptr %8, align 8, !tbaa !41
  %92 = load ptr, ptr %2, align 8, !tbaa !17
  %93 = getelementptr inbounds %struct._Image, ptr %92, i64 0, i32 8
  %94 = load i64, ptr %93, align 8, !tbaa !42
  %95 = call fastcc i32 @SetImageProgress(ptr noundef %89, ptr noundef nonnull @.str.167, i64 noundef %90, i64 noundef %94) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_ShadowImage.var)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88, %33
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %98

98:                                               ; preds = %97, %83, %88, %29
  %99 = add nsw i64 %30, 1
  %100 = load i64, ptr %11, align 8, !tbaa !44
  %101 = icmp slt i64 %30, %100
  br i1 %101, label %29, label %102

102:                                              ; preds = %98
  %103 = load i64, ptr %10, align 8, !tbaa !44
  br label %104

104:                                              ; preds = %102, %25
  %105 = phi i64 [ %27, %25 ], [ %103, %102 ]
  %106 = phi i64 [ %26, %25 ], [ %100, %102 ]
  %107 = load i64, ptr %12, align 8, !tbaa !44
  %108 = add nsw i64 %107, %105
  store i64 %108, ptr %10, align 8, !tbaa !44
  %109 = add nsw i64 %107, %106
  %110 = call i64 @llvm.smin.i64(i64 %109, i64 %17)
  store i64 %110, ptr %11, align 8, !tbaa !44
  %111 = icmp sgt i64 %108, %110
  br i1 %111, label %112, label %25

112:                                              ; preds = %104, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %113

113:                                              ; preds = %112, %9
  ret void
}

; Function Attrs: optsize
declare ptr @BlurImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SketchImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca ptr, align 8
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !17
  store ptr %4, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !45
  %17 = shl i64 %16, 1
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !42
  %20 = shl i64 %19, 1
  %21 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %17, i64 noundef %20, i32 noundef 1, ptr noundef %4) #26
  store ptr %21, ptr %10, align 8, !tbaa !17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %102, label %23

23:                                               ; preds = %5
  %24 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %21, ptr noundef %4) #26
  store ptr %24, ptr %8, align 8, !tbaa !17
  %25 = tail call i32 @AccelerateRandomImage(ptr noundef nonnull %21, ptr noundef %4) #26
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  store i32 1, ptr %11, align 4, !tbaa !6
  call void @GetMagickPixelPacket(ptr noundef nonnull %21, ptr noundef nonnull %12) #26
  %28 = call fastcc ptr @AcquireRandomInfoThreadSet() #30
  store ptr %28, ptr %13, align 8, !tbaa !17
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = call i64 @GetRandomSecretKey(ptr noundef %29) #26
  %31 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %21, ptr noundef %4) #26
  store ptr %31, ptr %8, align 8, !tbaa !17
  %32 = icmp eq i64 %30, -1
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !42
  %36 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %37 = shl i64 %36, 5
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %21) #26
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %21) #26
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %51

47:                                               ; preds = %42, %39, %33
  %48 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %49 = icmp ult i64 %48, 2
  %50 = select i1 %49, i64 1, i64 2
  br label %51

51:                                               ; preds = %45, %47, %27
  %52 = phi i64 [ 1, %27 ], [ %46, %45 ], [ %50, %47 ]
  %53 = trunc i64 %52 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %53)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @SketchImage.omp_outlined, ptr nonnull %10, ptr nonnull %11, ptr nonnull %8, ptr nonnull %7, ptr nonnull %12, ptr nonnull %13, ptr nonnull %6)
  %54 = load ptr, ptr %13, align 8, !tbaa !17
  %55 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %54) #30
  store ptr %55, ptr %13, align 8, !tbaa !17
  %56 = load i32, ptr %11, align 4, !tbaa !6
  %57 = icmp eq i32 %56, 0
  %58 = load ptr, ptr %8, align 8, !tbaa !17
  br i1 %57, label %59, label %63

59:                                               ; preds = %51
  %60 = call ptr @DestroyCacheView(ptr noundef %58) #26
  store ptr %60, ptr %8, align 8, !tbaa !17
  %61 = load ptr, ptr %10, align 8, !tbaa !17
  %62 = call ptr @DestroyImage(ptr noundef %61) #26
  br label %102

63:                                               ; preds = %51, %23
  %64 = phi ptr [ %58, %51 ], [ %24, %23 ]
  %65 = call ptr @DestroyCacheView(ptr noundef %64) #26
  store ptr %65, ptr %8, align 8, !tbaa !17
  %66 = load ptr, ptr %10, align 8, !tbaa !17
  %67 = load ptr, ptr %7, align 8, !tbaa !17
  %68 = call ptr @MotionBlurImage(ptr noundef %66, double noundef %1, double noundef %2, double noundef %3, ptr noundef %67) #26
  %69 = load ptr, ptr %10, align 8, !tbaa !17
  %70 = call ptr @DestroyImage(ptr noundef %69) #26
  store ptr %70, ptr %10, align 8, !tbaa !17
  %71 = icmp eq ptr %68, null
  br i1 %71, label %102, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr %7, align 8, !tbaa !17
  %74 = call ptr @EdgeImage(ptr noundef nonnull %68, double noundef %1, ptr noundef %73) #26
  store ptr %74, ptr %9, align 8, !tbaa !17
  %75 = call ptr @DestroyImage(ptr noundef nonnull %68) #26
  %76 = icmp eq ptr %74, null
  br i1 %76, label %102, label %77

77:                                               ; preds = %72
  %78 = call i32 @NormalizeImage(ptr noundef nonnull %74) #26
  %79 = call i32 @NegateImage(ptr noundef nonnull %74, i32 noundef 0) #26
  %80 = call i32 @TransformImage(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.168) #26
  %81 = load ptr, ptr %6, align 8, !tbaa !17
  %82 = load ptr, ptr %7, align 8, !tbaa !17
  %83 = call ptr @CloneImage(ptr noundef %81, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %82) #26
  %84 = icmp eq ptr %83, null
  %85 = load ptr, ptr %9, align 8, !tbaa !17
  br i1 %84, label %86, label %88

86:                                               ; preds = %77
  %87 = call ptr @DestroyImage(ptr noundef %85) #26
  br label %102

88:                                               ; preds = %77
  %89 = call i32 @CompositeImage(ptr noundef nonnull %83, i32 noundef 9, ptr noundef %85, i64 noundef 0, i64 noundef 0) #26
  %90 = load ptr, ptr %9, align 8, !tbaa !17
  %91 = call ptr @DestroyImage(ptr noundef %90) #26
  store ptr %91, ptr %9, align 8, !tbaa !17
  %92 = load ptr, ptr %6, align 8, !tbaa !17
  %93 = load ptr, ptr %7, align 8, !tbaa !17
  %94 = call ptr @CloneImage(ptr noundef %92, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %93) #26
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = call ptr @DestroyImage(ptr noundef nonnull %83) #26
  br label %102

98:                                               ; preds = %88
  %99 = call i32 @SetImageArtifact(ptr noundef nonnull %94, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170) #26
  %100 = call i32 @CompositeImage(ptr noundef nonnull %83, i32 noundef 4, ptr noundef nonnull %94, i64 noundef 0, i64 noundef 0) #26
  %101 = call ptr @DestroyImage(ptr noundef nonnull %94) #26
  br label %102

102:                                              ; preds = %72, %63, %5, %98, %96, %86, %59
  %103 = phi ptr [ %62, %59 ], [ null, %86 ], [ null, %96 ], [ %83, %98 ], [ null, %5 ], [ null, %63 ], [ null, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret ptr %103
}

; Function Attrs: optsize
declare i32 @AccelerateRandomImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SketchImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8) #7 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = load ptr, ptr %2, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %101

20:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 %18, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 1, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !tbaa !6
  %21 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %22 = load i64, ptr %11, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %11, align 8, !tbaa !44
  %24 = load i64, ptr %10, align 8, !tbaa !44
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %100, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 6
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  br label %31

31:                                               ; preds = %26, %92
  %32 = phi i64 [ %23, %26 ], [ %98, %92 ]
  %33 = phi i64 [ %24, %26 ], [ %96, %92 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %92, label %35

35:                                               ; preds = %31, %86
  %36 = phi i64 [ %87, %86 ], [ %33, %31 ]
  %37 = call fastcc i32 @GetOpenMPThreadId() #30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #8
  %38 = load i32, ptr %3, align 4, !tbaa !6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %86, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %4, align 8, !tbaa !17
  %42 = load ptr, ptr %2, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !45
  %45 = load ptr, ptr %5, align 8, !tbaa !17
  %46 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %41, i64 noundef 0, i64 noundef %36, i64 noundef %44, i64 noundef 1, ptr noundef %45) #31
  %47 = icmp eq ptr %46, null
  br i1 %47, label %85, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %4, align 8, !tbaa !17
  %50 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %49) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !97
  %51 = load ptr, ptr %2, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !45
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %48
  %56 = sext i32 %37 to i64
  br label %57

57:                                               ; preds = %55, %71
  %58 = phi ptr [ %46, %55 ], [ %74, %71 ]
  %59 = phi i64 [ 0, %55 ], [ %75, %71 ]
  %60 = load ptr, ptr %7, align 8, !tbaa !17
  %61 = getelementptr inbounds ptr, ptr %60, i64 %56
  %62 = load ptr, ptr %61, align 8, !tbaa !17
  %63 = call double @GetPseudoRandomValue(ptr noundef %62) #26
  %64 = fmul double %63, 6.553500e+04
  %65 = fptrunc double %64 to float
  store float %65, ptr %27, align 8, !tbaa !64
  store float %65, ptr %28, align 4, !tbaa !67
  store float %65, ptr %29, align 8, !tbaa !68
  %66 = load ptr, ptr %8, align 8, !tbaa !17
  %67 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !47
  %69 = icmp eq i32 %68, 12
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  store float %65, ptr %30, align 8, !tbaa !99
  br label %71

71:                                               ; preds = %70, %57
  %72 = load ptr, ptr %2, align 8, !tbaa !17
  %73 = getelementptr inbounds i16, ptr %50, i64 %59
  call fastcc void @SetPixelPacket(ptr noundef %72, ptr noundef nonnull %14, ptr noundef nonnull %58, ptr noundef %73) #30
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %75 = add nuw nsw i64 %59, 1
  %76 = load ptr, ptr %2, align 8, !tbaa !17
  %77 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 7
  %78 = load i64, ptr %77, align 8, !tbaa !45
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %57, label %80, !llvm.loop !146

80:                                               ; preds = %71, %48
  %81 = load ptr, ptr %4, align 8, !tbaa !17
  %82 = load ptr, ptr %5, align 8, !tbaa !17
  %83 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %81, ptr noundef %82) #31
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %40
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %86

86:                                               ; preds = %85, %80, %35
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #8
  %87 = add nsw i64 %36, 1
  %88 = load i64, ptr %11, align 8, !tbaa !44
  %89 = icmp slt i64 %36, %88
  br i1 %89, label %35, label %90

90:                                               ; preds = %86
  %91 = load i64, ptr %10, align 8, !tbaa !44
  br label %92

92:                                               ; preds = %90, %31
  %93 = phi i64 [ %33, %31 ], [ %91, %90 ]
  %94 = phi i64 [ %32, %31 ], [ %88, %90 ]
  %95 = load i64, ptr %12, align 8, !tbaa !44
  %96 = add nsw i64 %95, %93
  store i64 %96, ptr %10, align 8, !tbaa !44
  %97 = add nsw i64 %95, %94
  %98 = call i64 @llvm.smin.i64(i64 %97, i64 %18)
  store i64 %98, ptr %11, align 8, !tbaa !44
  %99 = icmp sgt i64 %96, %98
  br i1 %99, label %100, label %31

100:                                              ; preds = %92, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %101

101:                                              ; preds = %100, %9
  ret void
}

; Function Attrs: optsize
declare ptr @MotionBlurImage(ptr noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SolarizeImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @SolarizeImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, ptr noundef nonnull %3) #30
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SolarizeImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !17
  store i32 %1, ptr %6, align 4, !tbaa !6
  store double %2, ptr %7, align 8, !tbaa !40
  store ptr %3, ptr %8, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !39
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4590, ptr noundef nonnull @.str.22, ptr noundef nonnull %17) #26
  br label %19

19:                                               ; preds = %16, %4
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !47
  %22 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %21) #30, !range !48
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #26
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, ptr %0, align 8, !tbaa !118
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !147
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %29
  %34 = and i32 %1, 1
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %37 = and i32 %1, 2
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %1, 4
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %33, %69
  %42 = phi i64 [ 0, %33 ], [ %70, %69 ]
  br i1 %35, label %51, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %36, align 8, !tbaa !148
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %44, i64 %42, i32 2
  %46 = load i16, ptr %45, align 2, !tbaa !46
  %47 = uitofp i16 %46 to double
  %48 = fcmp ogt double %47, %2
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = xor i16 %46, -1
  store i16 %50, ptr %45, align 2, !tbaa !46
  br label %51

51:                                               ; preds = %43, %49, %41
  br i1 %38, label %60, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %36, align 8, !tbaa !148
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %42, i32 1
  %55 = load i16, ptr %54, align 2, !tbaa !49
  %56 = uitofp i16 %55 to double
  %57 = fcmp ogt double %56, %2
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = xor i16 %55, -1
  store i16 %59, ptr %54, align 2, !tbaa !49
  br label %60

60:                                               ; preds = %52, %58, %51
  br i1 %40, label %69, label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %36, align 8, !tbaa !148
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %42
  %64 = load i16, ptr %63, align 2, !tbaa !50
  %65 = uitofp i16 %64 to double
  %66 = fcmp ogt double %65, %2
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = xor i16 %64, -1
  store i16 %68, ptr %63, align 2, !tbaa !50
  br label %69

69:                                               ; preds = %60, %67, %61
  %70 = add nuw nsw i64 %42, 1
  %71 = icmp eq i64 %70, %31
  br i1 %71, label %72, label %41, !llvm.loop !149

72:                                               ; preds = %69, %29, %26
  store i32 1, ptr %10, align 4, !tbaa !6
  store i64 0, ptr %11, align 8, !tbaa !41
  %73 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #26
  store ptr %73, ptr %9, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %75 = load i64, ptr %74, align 8, !tbaa !42
  %76 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %77 = shl i64 %76, 5
  %78 = icmp ugt i64 %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %91

87:                                               ; preds = %82, %79, %72
  %88 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %89 = icmp ult i64 %88, 2
  %90 = select i1 %89, i64 1, i64 2
  br label %91

91:                                               ; preds = %87, %85
  %92 = phi i64 [ %86, %85 ], [ %90, %87 ]
  %93 = trunc i64 %92 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %93)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @SolarizeImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %10, ptr nonnull %9, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %11)
  %94 = load ptr, ptr %9, align 8, !tbaa !17
  %95 = call ptr @DestroyCacheView(ptr noundef %94) #26
  %96 = load i32, ptr %10, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret i32 %96
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SolarizeImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #7 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %119

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 %17, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 1, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !tbaa !6
  %20 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !44
  %23 = load i64, ptr %10, align 8, !tbaa !44
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %118, label %25

25:                                               ; preds = %19, %110
  %26 = phi i64 [ %116, %110 ], [ %22, %19 ]
  %27 = phi i64 [ %114, %110 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %110, label %29

29:                                               ; preds = %25, %104
  %30 = phi i64 [ %105, %104 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %104, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !17
  %35 = load ptr, ptr %2, align 8, !tbaa !17
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !45
  %38 = load ptr, ptr %5, align 8, !tbaa !17
  %39 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #31
  %40 = icmp eq ptr %39, null
  br i1 %40, label %103, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %2, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !45
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load i32, ptr %6, align 4, !tbaa !6
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  %50 = load double, ptr %7, align 8
  %51 = and i32 %47, 2
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %47, 4
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %46, %80
  %56 = phi ptr [ %39, %46 ], [ %81, %80 ]
  %57 = phi i64 [ 0, %46 ], [ %82, %80 ]
  br i1 %49, label %65, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !46
  %61 = uitofp i16 %60 to double
  %62 = fcmp olt double %50, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = xor i16 %60, -1
  store i16 %64, ptr %59, align 2, !tbaa !46
  br label %65

65:                                               ; preds = %58, %63, %55
  br i1 %52, label %73, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  %68 = load i16, ptr %67, align 2, !tbaa !49
  %69 = uitofp i16 %68 to double
  %70 = fcmp olt double %50, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = xor i16 %68, -1
  store i16 %72, ptr %67, align 2, !tbaa !49
  br label %73

73:                                               ; preds = %66, %71, %65
  br i1 %54, label %80, label %74

74:                                               ; preds = %73
  %75 = load i16, ptr %56, align 2, !tbaa !50
  %76 = uitofp i16 %75 to double
  %77 = fcmp olt double %50, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = xor i16 %75, -1
  store i16 %79, ptr %56, align 2, !tbaa !50
  br label %80

80:                                               ; preds = %74, %78, %73
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %82 = add nuw nsw i64 %57, 1
  %83 = icmp eq i64 %82, %44
  br i1 %83, label %84, label %55, !llvm.loop !150

84:                                               ; preds = %80, %41
  %85 = load ptr, ptr %4, align 8, !tbaa !17
  %86 = load ptr, ptr %5, align 8, !tbaa !17
  %87 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %85, ptr noundef %86) #31
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %90

90:                                               ; preds = %89, %84
  %91 = load ptr, ptr %2, align 8, !tbaa !17
  %92 = getelementptr inbounds %struct._Image, ptr %91, i64 0, i32 47
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %90
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_SolarizeImage.var)
  %96 = load ptr, ptr %2, align 8, !tbaa !17
  %97 = load i64, ptr %8, align 8, !tbaa !41
  %98 = add nsw i64 %97, 1
  store i64 %98, ptr %8, align 8, !tbaa !41
  %99 = getelementptr inbounds %struct._Image, ptr %96, i64 0, i32 8
  %100 = load i64, ptr %99, align 8, !tbaa !42
  %101 = call fastcc i32 @SetImageProgress(ptr noundef %96, ptr noundef nonnull @.str.171, i64 noundef %97, i64 noundef %100) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_SolarizeImage.var)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95, %33
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %104

104:                                              ; preds = %103, %90, %95, %29
  %105 = add nsw i64 %30, 1
  %106 = load i64, ptr %11, align 8, !tbaa !44
  %107 = icmp slt i64 %30, %106
  br i1 %107, label %29, label %108

108:                                              ; preds = %104
  %109 = load i64, ptr %10, align 8, !tbaa !44
  br label %110

110:                                              ; preds = %108, %25
  %111 = phi i64 [ %27, %25 ], [ %109, %108 ]
  %112 = phi i64 [ %26, %25 ], [ %106, %108 ]
  %113 = load i64, ptr %12, align 8, !tbaa !44
  %114 = add nsw i64 %113, %111
  store i64 %114, ptr %10, align 8, !tbaa !44
  %115 = add nsw i64 %113, %112
  %116 = call i64 @llvm.smin.i64(i64 %115, i64 %17)
  store i64 %116, ptr %11, align 8, !tbaa !44
  %117 = icmp sgt i64 %114, %116
  br i1 %117, label %118, label %25

118:                                              ; preds = %110, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %119

119:                                              ; preds = %118, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SteganoImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !39
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4748, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #26
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %173, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %12, i32 noundef 1) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %18) #26
  %19 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #26
  br label %173

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 9
  store i64 16, ptr %21, align 8, !tbaa !151
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 23
  %23 = load i64, ptr %22, align 8, !tbaa !152
  %24 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %2) #26
  %25 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %12, ptr noundef %2) #26
  %26 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %28 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 7
  %29 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %31

31:                                               ; preds = %20, %156
  %32 = phi i64 [ %23, %20 ], [ %148, %156 ]
  %33 = phi i64 [ 0, %20 ], [ %147, %156 ]
  %34 = phi i64 [ 15, %20 ], [ %158, %156 ]
  %35 = phi i32 [ 1, %20 ], [ %157, %156 ]
  %36 = phi i32 [ 0, %20 ], [ %146, %156 ]
  %37 = load i64, ptr %26, align 8, !tbaa !42
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %145

39:                                               ; preds = %31
  %40 = shl nuw i64 1, %34
  br label %41

41:                                               ; preds = %39, %136
  %42 = phi i64 [ %37, %39 ], [ %137, %136 ]
  %43 = phi i64 [ 0, %39 ], [ %141, %136 ]
  %44 = phi i64 [ %32, %39 ], [ %140, %136 ]
  %45 = phi i64 [ %33, %39 ], [ %139, %136 ]
  %46 = phi i32 [ %36, %39 ], [ %138, %136 ]
  %47 = load i64, ptr %27, align 8, !tbaa !45
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %136

49:                                               ; preds = %41, %113
  %50 = phi i64 [ %121, %113 ], [ %44, %41 ]
  %51 = phi i64 [ %125, %113 ], [ %45, %41 ]
  %52 = phi i64 [ %126, %113 ], [ 0, %41 ]
  %53 = phi i32 [ %116, %113 ], [ %46, %41 ]
  %54 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %24, i64 noundef %52, i64 noundef %43, ptr noundef nonnull %4, ptr noundef %2) #26
  %55 = load i64, ptr %28, align 8, !tbaa !45
  %56 = sdiv i64 %50, %55
  %57 = srem i64 %50, %55
  %58 = load i64, ptr %29, align 8, !tbaa !42
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %131

60:                                               ; preds = %49
  %61 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %25, i64 noundef %57, i64 noundef %56, i64 noundef 1, i64 noundef 1, ptr noundef %2) #31
  %62 = icmp eq ptr %61, null
  br i1 %62, label %131, label %63

63:                                               ; preds = %60
  switch i32 %53, label %110 [
    i32 0, label %64
    i32 1, label %80
    i32 2, label %96
  ]

64:                                               ; preds = %63
  %65 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %4) #31
  %66 = call fastcc zeroext i16 @ClampToQuantum(float noundef %65) #30
  %67 = zext i16 %66 to i64
  %68 = and i64 %40, %67
  %69 = icmp eq i64 %68, 0
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 2
  %71 = load i16, ptr %70, align 2, !tbaa !46
  %72 = zext i16 %71 to i64
  %73 = shl nuw nsw i64 1, %51
  %74 = or i64 %73, %72
  %75 = xor i64 %73, -1
  %76 = and i64 %72, %75
  %77 = select i1 %69, i64 %76, i64 %74
  %78 = trunc i64 %77 to i16
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 2
  store i16 %78, ptr %79, align 2, !tbaa !46
  br label %110

80:                                               ; preds = %63
  %81 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %4) #31
  %82 = call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #30
  %83 = zext i16 %82 to i64
  %84 = and i64 %40, %83
  %85 = icmp eq i64 %84, 0
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 1
  %87 = load i16, ptr %86, align 2, !tbaa !49
  %88 = zext i16 %87 to i64
  %89 = shl nuw nsw i64 1, %51
  %90 = or i64 %89, %88
  %91 = xor i64 %89, -1
  %92 = and i64 %88, %91
  %93 = select i1 %85, i64 %92, i64 %90
  %94 = trunc i64 %93 to i16
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 1
  store i16 %94, ptr %95, align 2, !tbaa !49
  br label %110

96:                                               ; preds = %63
  %97 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %4) #31
  %98 = call fastcc zeroext i16 @ClampToQuantum(float noundef %97) #30
  %99 = zext i16 %98 to i64
  %100 = and i64 %40, %99
  %101 = icmp eq i64 %100, 0
  %102 = load i16, ptr %61, align 2, !tbaa !50
  %103 = zext i16 %102 to i64
  %104 = shl nuw nsw i64 1, %51
  %105 = or i64 %104, %103
  %106 = xor i64 %104, -1
  %107 = and i64 %103, %106
  %108 = select i1 %101, i64 %107, i64 %105
  %109 = trunc i64 %108 to i16
  store i16 %109, ptr %61, align 2, !tbaa !50
  br label %110

110:                                              ; preds = %63, %96, %80, %64
  %111 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef %2) #31
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %110
  %114 = add nsw i32 %53, 1
  %115 = icmp eq i32 %114, 3
  %116 = select i1 %115, i32 0, i32 %114
  %117 = add nsw i64 %50, 1
  %118 = load i64, ptr %28, align 8, !tbaa !45
  %119 = mul i64 %118, %118
  %120 = icmp eq i64 %117, %119
  %121 = select i1 %120, i64 0, i64 %117
  %122 = load i64, ptr %22, align 8, !tbaa !152
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i64
  %125 = add nsw i64 %51, %124
  %126 = add nuw nsw i64 %52, 1
  %127 = load i64, ptr %27, align 8, !tbaa !45
  %128 = icmp slt i64 %126, %127
  %129 = icmp slt i64 %125, 16
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %49, label %131, !llvm.loop !153

131:                                              ; preds = %113, %49, %60, %110
  %132 = phi i32 [ %53, %110 ], [ %53, %60 ], [ %53, %49 ], [ %116, %113 ]
  %133 = phi i64 [ %51, %110 ], [ %51, %60 ], [ %51, %49 ], [ %125, %113 ]
  %134 = phi i64 [ %50, %110 ], [ %50, %60 ], [ %50, %49 ], [ %121, %113 ]
  %135 = load i64, ptr %26, align 8, !tbaa !42
  br label %136

136:                                              ; preds = %131, %41
  %137 = phi i64 [ %42, %41 ], [ %135, %131 ]
  %138 = phi i32 [ %46, %41 ], [ %132, %131 ]
  %139 = phi i64 [ %45, %41 ], [ %133, %131 ]
  %140 = phi i64 [ %44, %41 ], [ %134, %131 ]
  %141 = add nuw nsw i64 %43, 1
  %142 = icmp slt i64 %141, %137
  %143 = icmp slt i64 %139, 16
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %41, label %145, !llvm.loop !154

145:                                              ; preds = %136, %31
  %146 = phi i32 [ %36, %31 ], [ %138, %136 ]
  %147 = phi i64 [ %33, %31 ], [ %139, %136 ]
  %148 = phi i64 [ %32, %31 ], [ %140, %136 ]
  %149 = load ptr, ptr %30, align 8, !tbaa !54
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = sub nuw nsw i64 16, %34
  %153 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.172, i64 noundef %152, i64 noundef 16) #30
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %154, i32 0, i32 %35
  br label %156

156:                                              ; preds = %145, %151
  %157 = phi i32 [ %155, %151 ], [ %35, %145 ]
  %158 = add nsw i64 %34, -1
  %159 = icmp ne i64 %34, 0
  %160 = icmp slt i64 %147, 16
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %31, label %162, !llvm.loop !155

162:                                              ; preds = %156
  %163 = call ptr @DestroyCacheView(ptr noundef %25) #26
  %164 = call ptr @DestroyCacheView(ptr noundef %24) #26
  %165 = load i32, ptr %12, align 8, !tbaa !118
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = call i32 @SyncImage(ptr noundef nonnull %12) #26
  br label %169

169:                                              ; preds = %167, %162
  %170 = icmp eq i32 %157, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %169
  %172 = call ptr @DestroyImage(ptr noundef nonnull %12) #26
  br label %173

173:                                              ; preds = %169, %171, %11, %17
  %174 = phi ptr [ null, %17 ], [ null, %11 ], [ %172, %171 ], [ %12, %169 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret ptr %174
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StereoImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @StereoAnaglyphImage(ptr noundef %0, ptr noundef %1, i64 noundef 0, i64 noundef 0, ptr noundef %2) #30
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StereoAnaglyphImage(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4908, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #26
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !45
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !42
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4918, i32 noundef 465, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.3, ptr noundef nonnull %25) #26
  br label %108

27:                                               ; preds = %18
  %28 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %14, i64 noundef %20, i32 noundef 1, ptr noundef %4) #26
  %29 = icmp eq ptr %28, null
  br i1 %29, label %108, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %28, i32 noundef 1) #26
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %34) #26
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #26
  br label %108

36:                                               ; preds = %30
  %37 = tail call i32 @SetImageColorspace(ptr noundef nonnull %28, i32 noundef 13) #26
  %38 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %39 = load i64, ptr %38, align 8, !tbaa !42
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %108

41:                                               ; preds = %36
  %42 = sub nsw i64 0, %2
  %43 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %45

45:                                               ; preds = %41, %98
  %46 = phi i64 [ 0, %41 ], [ %100, %98 ]
  %47 = phi i32 [ 1, %41 ], [ %99, %98 ]
  %48 = sub nsw i64 %46, %3
  %49 = load i64, ptr %13, align 8, !tbaa !45
  %50 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef %42, i64 noundef %48, i64 noundef %49, i64 noundef 1, ptr noundef %4) #26
  %51 = load i64, ptr %15, align 8, !tbaa !45
  %52 = tail call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef 0, i64 noundef %46, i64 noundef %51, i64 noundef 1, ptr noundef %4) #26
  %53 = load i64, ptr %43, align 8, !tbaa !45
  %54 = tail call ptr @QueueAuthenticPixels(ptr noundef nonnull %28, i64 noundef 0, i64 noundef %46, i64 noundef %53, i64 noundef 1, ptr noundef %4) #26
  %55 = icmp eq ptr %50, null
  %56 = icmp eq ptr %52, null
  %57 = select i1 %55, i1 true, i1 %56
  %58 = icmp eq ptr %54, null
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %103, label %60

60:                                               ; preds = %45
  %61 = load i64, ptr %43, align 8, !tbaa !45
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %84, %63 ], [ %54, %60 ]
  %65 = phi i64 [ %85, %63 ], [ 0, %60 ]
  %66 = phi ptr [ %83, %63 ], [ %52, %60 ]
  %67 = phi ptr [ %82, %63 ], [ %50, %60 ]
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 2
  %69 = load i16, ptr %68, align 2, !tbaa !46
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  store i16 %69, ptr %70, align 2, !tbaa !46
  %71 = load <2 x i16>, ptr %66, align 2, !tbaa !52
  store <2 x i16> %71, ptr %64, align 2, !tbaa !52
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %73 = load i16, ptr %72, align 2, !tbaa !51
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 3
  %76 = load i16, ptr %75, align 2, !tbaa !51
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %77, %74
  %79 = lshr i32 %78, 1
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 3
  store i16 %80, ptr %81, align 2, !tbaa !51
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %85 = add nuw nsw i64 %65, 1
  %86 = icmp eq i64 %85, %61
  br i1 %86, label %87, label %63, !llvm.loop !156

87:                                               ; preds = %63, %60
  %88 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %28, ptr noundef %4) #26
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %44, align 8, !tbaa !54
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load i64, ptr %38, align 8, !tbaa !42
  %95 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.174, i64 noundef %46, i64 noundef %94) #30
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 0, i32 %47
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi i32 [ %47, %90 ], [ %97, %93 ]
  %100 = add nuw nsw i64 %46, 1
  %101 = load i64, ptr %38, align 8, !tbaa !42
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %45, label %103, !llvm.loop !157

103:                                              ; preds = %98, %87, %45
  %104 = phi i32 [ %99, %98 ], [ %47, %87 ], [ %47, %45 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #26
  br label %108

108:                                              ; preds = %36, %103, %106, %27, %33, %24
  %109 = phi ptr [ null, %24 ], [ null, %33 ], [ null, %27 ], [ %107, %106 ], [ %28, %103 ], [ %28, %36 ]
  ret ptr %109
}

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @QueueAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SwirlImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct._MagickPixelPacket, align 8
  %14 = alloca %struct._PointInfo, align 16
  %15 = alloca %struct._PointInfo, align 16
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !17
  store double %1, ptr %5, align 8, !tbaa !40
  store ptr %2, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !39
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5050, ptr noundef nonnull @.str.22, ptr noundef nonnull %21) #26
  br label %23

23:                                               ; preds = %20, %3
  %24 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #26
  store ptr %24, ptr %10, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %93, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %24, i32 noundef 1) #26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %30) #26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #26
  br label %93

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 12, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !113
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 6
  store i32 1, ptr %37, align 8, !tbaa !61
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load <2 x i64>, ptr %39, align 8, !tbaa !44
  %42 = uitofp <2 x i64> %41 to <2 x double>
  %43 = fmul <2 x double> %42, <double 5.000000e-01, double 5.000000e-01>
  store <2 x double> %43, ptr %14, align 16, !tbaa !40
  %44 = extractelement <2 x double> %43, i64 0
  %45 = extractelement <2 x double> %43, i64 1
  %46 = tail call fastcc double @MagickMax(double noundef %44, double noundef %45) #30
  store double %46, ptr %9, align 8, !tbaa !40
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %15, align 16, !tbaa !40
  %47 = extractelement <2 x i64> %41, i64 0
  %48 = extractelement <2 x i64> %41, i64 1
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct._PointInfo, ptr %15, i64 0, i32 1
  %52 = extractelement <2 x double> %42, i64 0
  %53 = extractelement <2 x double> %42, i64 1
  %54 = fdiv double %52, %53
  store double %54, ptr %51, align 8, !tbaa !114
  br label %61

55:                                               ; preds = %38
  %56 = icmp ult i64 %47, %48
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = extractelement <2 x double> %42, i64 0
  %59 = extractelement <2 x double> %42, i64 1
  %60 = fdiv double %59, %58
  store double %60, ptr %15, align 16, !tbaa !116
  br label %61

61:                                               ; preds = %55, %57, %50
  %62 = tail call fastcc double @DegreesToRadians(double noundef %1) #30
  store double %62, ptr %5, align 8, !tbaa !40
  store i32 1, ptr %11, align 4, !tbaa !6
  store i64 0, ptr %12, align 8, !tbaa !41
  call void @GetMagickPixelPacket(ptr noundef nonnull %24, ptr noundef nonnull %13) #26
  %63 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #26
  store ptr %63, ptr %7, align 8, !tbaa !17
  %64 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %24, ptr noundef %2) #26
  store ptr %64, ptr %8, align 8, !tbaa !17
  %65 = load i64, ptr %40, align 8, !tbaa !42
  %66 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %67 = shl i64 %66, 5
  %68 = icmp ugt i64 %65, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %24) #26
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %81

77:                                               ; preds = %72, %69, %61
  %78 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %79 = icmp ult i64 %78, 2
  %80 = select i1 %79, i64 1, i64 2
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i64 [ %76, %75 ], [ %80, %77 ]
  %83 = trunc i64 %82 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %83)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @SwirlImage.omp_outlined, ptr nonnull %4, ptr nonnull %11, ptr nonnull %8, ptr nonnull %10, ptr nonnull %6, ptr nonnull %15, ptr nonnull %14, ptr nonnull %13, ptr nonnull %9, ptr nonnull %5, ptr nonnull %7, ptr nonnull %12)
  %84 = load ptr, ptr %8, align 8, !tbaa !17
  %85 = call ptr @DestroyCacheView(ptr noundef %84) #26
  store ptr %85, ptr %8, align 8, !tbaa !17
  %86 = load ptr, ptr %7, align 8, !tbaa !17
  %87 = call ptr @DestroyCacheView(ptr noundef %86) #26
  store ptr %87, ptr %7, align 8, !tbaa !17
  %88 = load i32, ptr %11, align 4, !tbaa !6
  %89 = icmp eq i32 %88, 0
  %90 = load ptr, ptr %10, align 8, !tbaa !17
  br i1 %89, label %91, label %93

91:                                               ; preds = %81
  %92 = call ptr @DestroyImage(ptr noundef %90) #26
  br label %93

93:                                               ; preds = %81, %91, %23, %29
  %94 = phi ptr [ null, %29 ], [ null, %23 ], [ %92, %91 ], [ %90, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret ptr %94
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #11 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SwirlImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #7 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = load ptr, ptr %2, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !42
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %151

25:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 0, ptr %15, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 %23, ptr %16, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  store i64 1, ptr %17, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #8
  store i32 0, ptr %18, align 4, !tbaa !6
  %26 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %27 = load i64, ptr %16, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %16, align 8, !tbaa !44
  %29 = load i64, ptr %15, align 8, !tbaa !44
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %150, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._PointInfo, ptr %7, i64 0, i32 1
  %33 = getelementptr inbounds %struct._PointInfo, ptr %8, i64 0, i32 1
  br label %34

34:                                               ; preds = %31, %142
  %35 = phi i64 [ %28, %31 ], [ %148, %142 ]
  %36 = phi i64 [ %29, %31 ], [ %146, %142 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %142, label %38

38:                                               ; preds = %34, %136
  %39 = phi i64 [ %137, %136 ], [ %36, %34 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #8
  %40 = load i32, ptr %3, align 4, !tbaa !6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %136, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !17
  %44 = load ptr, ptr %5, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !45
  %47 = load ptr, ptr %6, align 8, !tbaa !17
  %48 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %43, i64 noundef 0, i64 noundef %39, i64 noundef %46, i64 noundef 1, ptr noundef %47) #31
  %49 = icmp eq ptr %48, null
  br i1 %49, label %135, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %4, align 8, !tbaa !17
  %52 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %51) #26
  %53 = load double, ptr %32, align 8, !tbaa !114
  %54 = sitofp i64 %39 to double
  %55 = load double, ptr %33, align 8, !tbaa !114
  %56 = fsub double %54, %55
  %57 = fmul double %53, %56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !97
  %58 = load ptr, ptr %2, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !45
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %50
  %63 = fmul double %57, %57
  br label %64

64:                                               ; preds = %62, %109
  %65 = phi ptr [ %58, %62 ], [ %110, %109 ]
  %66 = phi i64 [ 0, %62 ], [ %112, %109 ]
  %67 = phi ptr [ %48, %62 ], [ %111, %109 ]
  %68 = load double, ptr %7, align 8, !tbaa !116
  %69 = sitofp i64 %66 to double
  %70 = load double, ptr %8, align 8, !tbaa !116
  %71 = fsub double %69, %70
  %72 = fmul double %68, %71
  %73 = call double @llvm.fmuladd.f64(double %72, double %72, double %63)
  %74 = load double, ptr %10, align 8, !tbaa !40
  %75 = fmul double %74, %74
  %76 = fcmp olt double %73, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %64
  %78 = call double @llvm.sqrt.f64(double %73)
  %79 = fdiv double %78, %74
  %80 = fsub double 1.000000e+00, %79
  %81 = load double, ptr %11, align 8, !tbaa !40
  %82 = fmul double %81, %80
  %83 = fmul double %80, %82
  %84 = call double @sin(double noundef %83) #26
  %85 = load double, ptr %11, align 8, !tbaa !40
  %86 = fmul double %80, %85
  %87 = fmul double %80, %86
  %88 = call double @cos(double noundef %87) #26
  %89 = load ptr, ptr %2, align 8, !tbaa !17
  %90 = load ptr, ptr %12, align 8, !tbaa !17
  %91 = fneg double %84
  %92 = fmul double %57, %91
  %93 = call double @llvm.fmuladd.f64(double %88, double %72, double %92)
  %94 = load double, ptr %7, align 8, !tbaa !116
  %95 = fdiv double %93, %94
  %96 = load double, ptr %8, align 8, !tbaa !116
  %97 = fadd double %95, %96
  %98 = fmul double %57, %88
  %99 = call double @llvm.fmuladd.f64(double %84, double %72, double %98)
  %100 = load double, ptr %32, align 8, !tbaa !114
  %101 = fdiv double %99, %100
  %102 = load double, ptr %33, align 8, !tbaa !114
  %103 = fadd double %101, %102
  %104 = load ptr, ptr %6, align 8, !tbaa !17
  %105 = call i32 @InterpolateMagickPixelPacket(ptr noundef %89, ptr noundef %90, i32 noundef 0, double noundef %97, double noundef %103, ptr noundef nonnull %19, ptr noundef %104) #26
  %106 = load ptr, ptr %5, align 8, !tbaa !17
  %107 = getelementptr inbounds i16, ptr %52, i64 %66
  call fastcc void @SetPixelPacket(ptr noundef %106, ptr noundef nonnull %19, ptr noundef nonnull %67, ptr noundef %107) #30
  %108 = load ptr, ptr %2, align 8, !tbaa !17
  br label %109

109:                                              ; preds = %77, %64
  %110 = phi ptr [ %108, %77 ], [ %65, %64 ]
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %112 = add nuw nsw i64 %66, 1
  %113 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 7
  %114 = load i64, ptr %113, align 8, !tbaa !45
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %64, label %116, !llvm.loop !158

116:                                              ; preds = %109, %50
  %117 = load ptr, ptr %4, align 8, !tbaa !17
  %118 = load ptr, ptr %6, align 8, !tbaa !17
  %119 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %117, ptr noundef %118) #31
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %122

122:                                              ; preds = %121, %116
  %123 = load ptr, ptr %2, align 8, !tbaa !17
  %124 = getelementptr inbounds %struct._Image, ptr %123, i64 0, i32 47
  %125 = load ptr, ptr %124, align 8, !tbaa !54
  %126 = icmp eq ptr %125, null
  br i1 %126, label %136, label %127

127:                                              ; preds = %122
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_SwirlImage.var)
  %128 = load ptr, ptr %2, align 8, !tbaa !17
  %129 = load i64, ptr %13, align 8, !tbaa !41
  %130 = add nsw i64 %129, 1
  store i64 %130, ptr %13, align 8, !tbaa !41
  %131 = getelementptr inbounds %struct._Image, ptr %128, i64 0, i32 8
  %132 = load i64, ptr %131, align 8, !tbaa !42
  %133 = call fastcc i32 @SetImageProgress(ptr noundef %128, ptr noundef nonnull @.str.175, i64 noundef %129, i64 noundef %132) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_SwirlImage.var)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127, %42
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %136

136:                                              ; preds = %135, %122, %127, %38
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #8
  %137 = add nsw i64 %39, 1
  %138 = load i64, ptr %16, align 8, !tbaa !44
  %139 = icmp slt i64 %39, %138
  br i1 %139, label %38, label %140

140:                                              ; preds = %136
  %141 = load i64, ptr %15, align 8, !tbaa !44
  br label %142

142:                                              ; preds = %140, %34
  %143 = phi i64 [ %36, %34 ], [ %141, %140 ]
  %144 = phi i64 [ %35, %34 ], [ %138, %140 ]
  %145 = load i64, ptr %17, align 8, !tbaa !44
  %146 = add nsw i64 %145, %143
  store i64 %146, ptr %15, align 8, !tbaa !44
  %147 = add nsw i64 %145, %144
  %148 = call i64 @llvm.smin.i64(i64 %147, i64 %23)
  store i64 %148, ptr %16, align 8, !tbaa !44
  %149 = icmp sgt i64 %146, %148
  br i1 %149, label %150, label %34

150:                                              ; preds = %142, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  br label %151

151:                                              ; preds = %150, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TintImage(ptr noundef %0, ptr noundef %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._PixelPacket, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct._GeometryInfo, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i64 %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8, !tbaa !17
  store ptr %3, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !39
  %18 = icmp eq i32 %17, 0
  %19 = insertelement <2 x i64> poison, i64 %2, i64 0
  %20 = shufflevector <2 x i64> %19, <2 x i64> poison, <2 x i32> zeroinitializer
  %21 = lshr <2 x i64> %20, <i64 32, i64 16>
  %22 = trunc <2 x i64> %21 to <2 x i16>
  %23 = trunc i64 %2 to i16
  br i1 %18, label %27, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5240, ptr noundef nonnull @.str.22, ptr noundef nonnull %25) #26
  br label %27

27:                                               ; preds = %24, %4
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !42
  %32 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %29, i64 noundef %31, i32 noundef 1, ptr noundef %3) #26
  store ptr %32, ptr %11, align 8, !tbaa !17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %118, label %34

34:                                               ; preds = %27
  %35 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %32, i32 noundef 1) #26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %38) #26
  %39 = tail call ptr @DestroyImage(ptr noundef nonnull %32) #26
  br label %118

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !47
  %43 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %42) #30, !range !48
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = call fastcc i32 @IsPixelGray(ptr noundef nonnull %5) #30, !range !48
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call i32 @SetImageColorspace(ptr noundef nonnull %32, i32 noundef 13) #26
  br label %50

50:                                               ; preds = %48, %45, %40
  %51 = icmp eq ptr %1, null
  br i1 %51, label %118, label %52

52:                                               ; preds = %50
  %53 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %10) #26
  %54 = load double, ptr %10, align 8, !tbaa !62
  %55 = fptrunc double %54 to float
  %56 = and i32 %53, 8
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct._GeometryInfo, ptr %10, i64 0, i32 1
  %59 = load double, ptr %58, align 8
  %60 = fptrunc double %59 to float
  %61 = select i1 %57, float %55, float %60
  %62 = and i32 %53, 1
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct._GeometryInfo, ptr %10, i64 0, i32 2
  %65 = load double, ptr %64, align 8
  %66 = fptrunc double %65 to float
  %67 = select i1 %63, float %55, float %66
  %68 = uitofp <2 x i16> %22 to <2 x float>
  %69 = call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef nonnull %5) #30
  %70 = uitofp i16 %69 to double
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %72 = insertelement <2 x float> poison, float %55, i64 0
  %73 = insertelement <2 x float> %72, float %61, i64 1
  %74 = fmul <2 x float> %73, %68
  %75 = fpext <2 x float> %74 to <2 x double>
  %76 = fdiv <2 x double> %75, <double 1.000000e+02, double 1.000000e+02>
  %77 = insertelement <2 x double> poison, double %70, i64 0
  %78 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> zeroinitializer
  %79 = fsub <2 x double> %76, %78
  %80 = fptrunc <2 x double> %79 to <2 x float>
  store <2 x float> %80, ptr %71, align 8, !tbaa !73
  %81 = uitofp i16 %23 to float
  %82 = fmul float %67, %81
  %83 = fpext float %82 to double
  %84 = fdiv double %83, 1.000000e+02
  %85 = fsub double %84, %70
  %86 = fptrunc double %85 to float
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  store float %86, ptr %87, align 8, !tbaa !68
  store i32 1, ptr %12, align 4, !tbaa !6
  store i64 0, ptr %13, align 8, !tbaa !41
  %88 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #26
  store ptr %88, ptr %8, align 8, !tbaa !17
  %89 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %32, ptr noundef %3) #26
  store ptr %89, ptr %9, align 8, !tbaa !17
  %90 = load i64, ptr %30, align 8, !tbaa !42
  %91 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %92 = shl i64 %91, 5
  %93 = icmp ugt i64 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %52
  %95 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %32) #26
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %106

102:                                              ; preds = %97, %94, %52
  %103 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %104 = icmp ult i64 %103, 2
  %105 = select i1 %104, i64 1, i64 2
  br label %106

106:                                              ; preds = %102, %100
  %107 = phi i64 [ %101, %100 ], [ %105, %102 ]
  %108 = trunc i64 %107 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %108)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @TintImage.omp_outlined, ptr nonnull %6, ptr nonnull %12, ptr nonnull %8, ptr nonnull %7, ptr nonnull %9, ptr nonnull %11, ptr nonnull %14, ptr nonnull %13)
  %109 = load ptr, ptr %9, align 8, !tbaa !17
  %110 = call ptr @DestroyCacheView(ptr noundef %109) #26
  store ptr %110, ptr %9, align 8, !tbaa !17
  %111 = load ptr, ptr %8, align 8, !tbaa !17
  %112 = call ptr @DestroyCacheView(ptr noundef %111) #26
  store ptr %112, ptr %8, align 8, !tbaa !17
  %113 = load i32, ptr %12, align 4, !tbaa !6
  %114 = icmp eq i32 %113, 0
  %115 = load ptr, ptr %11, align 8, !tbaa !17
  br i1 %114, label %116, label %118

116:                                              ; preds = %106
  %117 = call ptr @DestroyImage(ptr noundef %115) #26
  br label %118

118:                                              ; preds = %106, %116, %50, %27, %37
  %119 = phi ptr [ null, %37 ], [ null, %27 ], [ %32, %50 ], [ %117, %116 ], [ %115, %106 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret ptr %119
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @PixelPacketIntensity(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !46
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !49
  %6 = icmp eq i16 %3, %5
  %7 = load i16, ptr %0, align 2, !tbaa !50
  %8 = icmp eq i16 %3, %7
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = uitofp i16 %3 to double
  %12 = uitofp i16 %5 to double
  %13 = fmul double %12, 0x3FE6E29307AF20EA
  %14 = tail call double @llvm.fmuladd.f64(double %11, double 2.126560e-01, double %13)
  %15 = uitofp i16 %7 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 7.218600e-02, double %14)
  %17 = fptrunc double %16 to float
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #30
  br label %19

19:                                               ; preds = %1, %10
  %20 = phi i16 [ %18, %10 ], [ %3, %1 ]
  ret i16 %20
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @TintImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #7 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %140

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 %18, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 1, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !tbaa !6
  %21 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !44
  %24 = load i64, ptr %11, align 8, !tbaa !44
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %139, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  br label %30

30:                                               ; preds = %26, %131
  %31 = phi i64 [ %23, %26 ], [ %137, %131 ]
  %32 = phi i64 [ %24, %26 ], [ %135, %131 ]
  %33 = icmp sgt i64 %32, %31
  br i1 %33, label %131, label %34

34:                                               ; preds = %30, %125
  %35 = phi i64 [ %126, %125 ], [ %32, %30 ]
  %36 = load i32, ptr %3, align 4, !tbaa !6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %125, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 8, !tbaa !17
  %40 = load ptr, ptr %2, align 8, !tbaa !17
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !45
  %43 = load ptr, ptr %5, align 8, !tbaa !17
  %44 = call ptr @GetCacheViewVirtualPixels(ptr noundef %39, i64 noundef 0, i64 noundef %35, i64 noundef %42, i64 noundef 1, ptr noundef %43) #31
  %45 = load ptr, ptr %6, align 8, !tbaa !17
  %46 = load ptr, ptr %7, align 8, !tbaa !17
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !45
  %49 = load ptr, ptr %5, align 8, !tbaa !17
  %50 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %45, i64 noundef 0, i64 noundef %35, i64 noundef %48, i64 noundef 1, ptr noundef %49) #31
  %51 = icmp eq ptr %44, null
  %52 = icmp eq ptr %50, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %124, label %54

54:                                               ; preds = %38
  %55 = load ptr, ptr %2, align 8, !tbaa !17
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !45
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %105

59:                                               ; preds = %54
  %60 = load float, ptr %27, align 8, !tbaa !64
  %61 = fpext float %60 to double
  %62 = load float, ptr %28, align 4, !tbaa !67
  %63 = fpext float %62 to double
  %64 = load float, ptr %29, align 8, !tbaa !68
  %65 = fpext float %64 to double
  br label %66

66:                                               ; preds = %59, %66
  %67 = phi ptr [ %44, %59 ], [ %101, %66 ]
  %68 = phi ptr [ %50, %59 ], [ %102, %66 ]
  %69 = phi i64 [ 0, %59 ], [ %103, %66 ]
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 2
  %71 = load i16, ptr %70, align 2, !tbaa !46
  %72 = uitofp i16 %71 to double
  %73 = call double @llvm.fmuladd.f64(double %72, double 0x3EF0001000100010, double -5.000000e-01)
  %74 = fmul double %73, %73
  %75 = call double @llvm.fmuladd.f64(double %74, double -4.000000e+00, double 1.000000e+00)
  %76 = call double @llvm.fmuladd.f64(double %61, double %75, double %72)
  %77 = fptrunc double %76 to float
  %78 = call fastcc zeroext i16 @ClampToQuantum(float noundef %77) #30
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 2
  store i16 %78, ptr %79, align 2, !tbaa !46
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 1
  %81 = load i16, ptr %80, align 2, !tbaa !49
  %82 = uitofp i16 %81 to double
  %83 = call double @llvm.fmuladd.f64(double %82, double 0x3EF0001000100010, double -5.000000e-01)
  %84 = fmul double %83, %83
  %85 = call double @llvm.fmuladd.f64(double %84, double -4.000000e+00, double 1.000000e+00)
  %86 = call double @llvm.fmuladd.f64(double %63, double %85, double %82)
  %87 = fptrunc double %86 to float
  %88 = call fastcc zeroext i16 @ClampToQuantum(float noundef %87) #30
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 1
  store i16 %88, ptr %89, align 2, !tbaa !49
  %90 = load i16, ptr %67, align 2, !tbaa !50
  %91 = uitofp i16 %90 to double
  %92 = call double @llvm.fmuladd.f64(double %91, double 0x3EF0001000100010, double -5.000000e-01)
  %93 = fmul double %92, %92
  %94 = call double @llvm.fmuladd.f64(double %93, double -4.000000e+00, double 1.000000e+00)
  %95 = call double @llvm.fmuladd.f64(double %65, double %94, double %91)
  %96 = fptrunc double %95 to float
  %97 = call fastcc zeroext i16 @ClampToQuantum(float noundef %96) #30
  store i16 %97, ptr %68, align 2, !tbaa !50
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %99 = load i16, ptr %98, align 2, !tbaa !51
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 3
  store i16 %99, ptr %100, align 2, !tbaa !51
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 1
  %103 = add nuw nsw i64 %69, 1
  %104 = icmp eq i64 %103, %57
  br i1 %104, label %105, label %66, !llvm.loop !159

105:                                              ; preds = %66, %54
  %106 = load ptr, ptr %6, align 8, !tbaa !17
  %107 = load ptr, ptr %5, align 8, !tbaa !17
  %108 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %106, ptr noundef %107) #31
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %111

111:                                              ; preds = %110, %105
  %112 = load ptr, ptr %2, align 8, !tbaa !17
  %113 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 47
  %114 = load ptr, ptr %113, align 8, !tbaa !54
  %115 = icmp eq ptr %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %111
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_TintImage.var)
  %117 = load ptr, ptr %2, align 8, !tbaa !17
  %118 = load i64, ptr %9, align 8, !tbaa !41
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr %9, align 8, !tbaa !41
  %120 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 8
  %121 = load i64, ptr %120, align 8, !tbaa !42
  %122 = call fastcc i32 @SetImageProgress(ptr noundef %117, ptr noundef nonnull @.str.176, i64 noundef %118, i64 noundef %121) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_TintImage.var)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116, %38
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %125

125:                                              ; preds = %124, %111, %116, %34
  %126 = add nsw i64 %35, 1
  %127 = load i64, ptr %12, align 8, !tbaa !44
  %128 = icmp slt i64 %35, %127
  br i1 %128, label %34, label %129

129:                                              ; preds = %125
  %130 = load i64, ptr %11, align 8, !tbaa !44
  br label %131

131:                                              ; preds = %129, %30
  %132 = phi i64 [ %32, %30 ], [ %130, %129 ]
  %133 = phi i64 [ %31, %30 ], [ %127, %129 ]
  %134 = load i64, ptr %13, align 8, !tbaa !44
  %135 = add nsw i64 %134, %132
  store i64 %135, ptr %11, align 8, !tbaa !44
  %136 = add nsw i64 %134, %133
  %137 = call i64 @llvm.smin.i64(i64 %136, i64 %18)
  store i64 %137, ptr %12, align 8, !tbaa !44
  %138 = icmp sgt i64 %135, %137
  br i1 %138, label %139, label %30

139:                                              ; preds = %131, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %140

140:                                              ; preds = %139, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @VignetteImage(ptr noundef %0, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !39
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5405, ptr noundef nonnull @.str.22, ptr noundef nonnull %12) #26
  br label %14

14:                                               ; preds = %11, %6
  %15 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %74, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %15, i32 noundef 1) #26
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %21) #26
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #26
  br label %74

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 6
  store i32 1, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !42
  %29 = tail call ptr @CloneImage(ptr noundef nonnull %15, i64 noundef %26, i64 noundef %28, i32 noundef 1, ptr noundef %5) #26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #26
  br label %74

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 12
  %35 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.177, ptr noundef nonnull %34, ptr noundef %5) #26
  %36 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %29) #26
  %37 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #26
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 5
  %39 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.178, ptr noundef nonnull %38, ptr noundef %5) #26
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 6
  %41 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.178, ptr noundef nonnull %40, ptr noundef %5) #26
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !45
  %44 = uitofp i64 %43 to double
  %45 = fmul double %44, 5.000000e-01
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !42
  %48 = uitofp i64 %47 to double
  %49 = fmul double %48, 5.000000e-01
  %50 = sitofp i64 %3 to double
  %51 = fsub double %45, %50
  %52 = sitofp i64 %4 to double
  %53 = fsub double %49, %52
  %54 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.179, double noundef %45, double noundef %49, double noundef %51, double noundef %53) #26
  %55 = call ptr @AcquireString(ptr noundef nonnull %7) #26
  store ptr %55, ptr %37, align 8, !tbaa !160
  %56 = call i32 @DrawImage(ptr noundef nonnull %29, ptr noundef nonnull %37) #26
  %57 = call ptr @DestroyDrawInfo(ptr noundef nonnull %37) #26
  %58 = call ptr @BlurImage(ptr noundef nonnull %29, double noundef %1, double noundef %2, ptr noundef %5) #26
  %59 = call ptr @DestroyImage(ptr noundef nonnull %29) #26
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %33
  %62 = call ptr @DestroyImage(ptr noundef nonnull %15) #26
  br label %74

63:                                               ; preds = %33
  %64 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 6
  store i32 0, ptr %64, align 8, !tbaa !61
  %65 = call i32 @CompositeImage(ptr noundef nonnull %15, i32 noundef 17, ptr noundef nonnull %58, i64 noundef 0, i64 noundef 0) #26
  %66 = call ptr @DestroyImage(ptr noundef nonnull %58) #26
  %67 = call ptr @MergeImageLayers(ptr noundef nonnull %15, i32 noundef 14, ptr noundef %5) #26
  %68 = call ptr @DestroyImage(ptr noundef nonnull %15) #26
  %69 = icmp eq ptr %67, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !47
  %73 = call i32 @TransformImageColorspace(ptr noundef nonnull %67, i32 noundef %72) #26
  br label %74

74:                                               ; preds = %63, %70, %14, %61, %31, %20
  %75 = phi ptr [ null, %20 ], [ null, %31 ], [ null, %61 ], [ null, %14 ], [ %67, %70 ], [ null, %63 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #8
  ret ptr %75
}

; Function Attrs: optsize
declare i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @MergeImageLayers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetCacheViewVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @WaveImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #7 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = load ptr, ptr %2, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !42
  %20 = add nsw i64 %19, -1
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %22, label %109

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %20, ptr %13, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 1, ptr %14, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !tbaa !6
  %23 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %23, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %24 = load i64, ptr %13, align 8
  %25 = call i64 @llvm.smin.i64(i64 %24, i64 %20)
  store i64 %25, ptr %13, align 8, !tbaa !44
  %26 = load i64, ptr %12, align 8, !tbaa !44
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %108, label %28

28:                                               ; preds = %22, %100
  %29 = phi i64 [ %106, %100 ], [ %25, %22 ]
  %30 = phi i64 [ %104, %100 ], [ %26, %22 ]
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %100, label %32

32:                                               ; preds = %28, %94
  %33 = phi i64 [ %95, %94 ], [ %30, %28 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #8
  %34 = load i32, ptr %3, align 4, !tbaa !6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %94, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8, !tbaa !17
  %38 = load ptr, ptr %2, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !45
  %41 = load ptr, ptr %5, align 8, !tbaa !17
  %42 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %37, i64 noundef 0, i64 noundef %33, i64 noundef %40, i64 noundef 1, ptr noundef %41) #31
  %43 = icmp eq ptr %42, null
  br i1 %43, label %93, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %4, align 8, !tbaa !17
  %46 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %45) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !97
  %47 = load ptr, ptr %2, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !45
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %44
  %52 = sitofp i64 %33 to float
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ 0, %51 ], [ %69, %53 ]
  %55 = phi ptr [ %42, %51 ], [ %68, %53 ]
  %56 = load ptr, ptr %7, align 8, !tbaa !17
  %57 = load ptr, ptr %8, align 8, !tbaa !17
  %58 = sitofp i64 %54 to double
  %59 = load ptr, ptr %9, align 8, !tbaa !17
  %60 = getelementptr inbounds float, ptr %59, i64 %54
  %61 = load float, ptr %60, align 4, !tbaa !73
  %62 = fsub float %52, %61
  %63 = fpext float %62 to double
  %64 = load ptr, ptr %5, align 8, !tbaa !17
  %65 = call i32 @InterpolateMagickPixelPacket(ptr noundef %56, ptr noundef %57, i32 noundef 0, double noundef %58, double noundef %63, ptr noundef nonnull %16, ptr noundef %64) #26
  %66 = load ptr, ptr %2, align 8, !tbaa !17
  %67 = getelementptr inbounds i16, ptr %46, i64 %54
  call fastcc void @SetPixelPacket(ptr noundef %66, ptr noundef nonnull %16, ptr noundef nonnull %55, ptr noundef %67) #30
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %69 = add nuw nsw i64 %54, 1
  %70 = load ptr, ptr %2, align 8, !tbaa !17
  %71 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 7
  %72 = load i64, ptr %71, align 8, !tbaa !45
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %53, label %74, !llvm.loop !161

74:                                               ; preds = %53, %44
  %75 = load ptr, ptr %4, align 8, !tbaa !17
  %76 = load ptr, ptr %5, align 8, !tbaa !17
  %77 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %75, ptr noundef %76) #31
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %80

80:                                               ; preds = %79, %74
  %81 = load ptr, ptr %7, align 8, !tbaa !17
  %82 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 47
  %83 = load ptr, ptr %82, align 8, !tbaa !54
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  call void @__kmpc_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_WaveImage.var)
  %86 = load ptr, ptr %7, align 8, !tbaa !17
  %87 = load i64, ptr %10, align 8, !tbaa !41
  %88 = add nsw i64 %87, 1
  store i64 %88, ptr %10, align 8, !tbaa !41
  %89 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 8
  %90 = load i64, ptr %89, align 8, !tbaa !42
  %91 = call fastcc i32 @SetImageProgress(ptr noundef %86, ptr noundef nonnull @.str.180, i64 noundef %87, i64 noundef %90) #30
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_WaveImage.var)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85, %36
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %94

94:                                               ; preds = %93, %80, %85, %32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #8
  %95 = add nsw i64 %33, 1
  %96 = load i64, ptr %13, align 8, !tbaa !44
  %97 = icmp slt i64 %33, %96
  br i1 %97, label %32, label %98

98:                                               ; preds = %94
  %99 = load i64, ptr %12, align 8, !tbaa !44
  br label %100

100:                                              ; preds = %98, %28
  %101 = phi i64 [ %30, %28 ], [ %99, %98 ]
  %102 = phi i64 [ %29, %28 ], [ %96, %98 ]
  %103 = load i64, ptr %14, align 8, !tbaa !44
  %104 = add nsw i64 %103, %101
  store i64 %104, ptr %12, align 8, !tbaa !44
  %105 = add nsw i64 %103, %102
  %106 = call i64 @llvm.smin.i64(i64 %105, i64 %20)
  store i64 %106, ptr %13, align 8, !tbaa !44
  %107 = icmp sgt i64 %104, %106
  br i1 %107, label %108, label %28

108:                                              ; preds = %100, %22
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %109

109:                                              ; preds = %108, %11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #24

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { convergent nounwind }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind optsize allocsize(0) }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind optsize willreturn memory(none) }
attributes #28 = { noreturn nounwind optsize }
attributes #29 = { nounwind optsize allocsize(0,1) }
attributes #30 = { optsize }
attributes #31 = { hot nounwind optsize }
attributes #32 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 56}
!11 = !{!"_FxInfo", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!11, !12, i64 0}
!14 = !{!11, !12, i64 24}
!15 = !{!11, !12, i64 32}
!16 = !{!11, !12, i64 40}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !12, i64 13104}
!19 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !20, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !12, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !23, i64 104, !24, i64 112, !7, i64 208, !12, i64 216, !7, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !20, i64 256, !23, i64 264, !23, i64 272, !26, i64 280, !26, i64 312, !26, i64 344, !23, i64 376, !23, i64 384, !23, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !12, i64 424, !20, i64 432, !20, i64 440, !20, i64 448, !20, i64 456, !20, i64 464, !20, i64 472, !27, i64 480, !28, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !20, i64 12904, !20, i64 12912, !30, i64 12920, !7, i64 12976, !20, i64 12984, !12, i64 12992, !31, i64 13000, !31, i64 13032, !12, i64 13064, !20, i64 13072, !20, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !7, i64 13112, !7, i64 13116, !21, i64 13120, !12, i64 13128, !26, i64 13136, !12, i64 13168, !12, i64 13176, !7, i64 13184, !7, i64 13188, !32, i64 13192, !7, i64 13200, !20, i64 13208, !20, i64 13216, !7, i64 13224, !20, i64 13232}
!20 = !{!"long", !8, i64 0}
!21 = !{!"_PixelPacket", !22, i64 0, !22, i64 2, !22, i64 4, !22, i64 6}
!22 = !{!"short", !8, i64 0}
!23 = !{!"double", !8, i64 0}
!24 = !{!"_ChromaticityInfo", !25, i64 0, !25, i64 24, !25, i64 48, !25, i64 72}
!25 = !{!"_PrimaryInfo", !23, i64 0, !23, i64 8, !23, i64 16}
!26 = !{!"_RectangleInfo", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!27 = !{!"_ErrorInfo", !23, i64 0, !23, i64 8, !23, i64 16}
!28 = !{!"_TimerInfo", !29, i64 0, !29, i64 24, !7, i64 48, !20, i64 56}
!29 = !{!"_Timer", !23, i64 0, !23, i64 8, !23, i64 16}
!30 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !12, i64 40, !20, i64 48}
!31 = !{!"_ProfileInfo", !12, i64 0, !20, i64 8, !12, i64 16, !20, i64 24}
!32 = !{!"long long", !8, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!11, !12, i64 48}
!36 = !{!11, !12, i64 8}
!37 = !{!11, !12, i64 16}
!38 = !{!8, !8, i64 0}
!39 = !{!19, !7, i64 12976}
!40 = !{!23, !23, i64 0}
!41 = !{!32, !32, i64 0}
!42 = !{!19, !20, i64 48}
!43 = distinct !{!43, !34}
!44 = !{!20, !20, i64 0}
!45 = !{!19, !20, i64 40}
!46 = !{!21, !22, i64 4}
!47 = !{!19, !7, i64 4}
!48 = !{i32 0, i32 2}
!49 = !{!21, !22, i64 2}
!50 = !{!21, !22, i64 0}
!51 = !{!21, !22, i64 6}
!52 = !{!22, !22, i64 0}
!53 = distinct !{!53, !34}
!54 = !{!19, !12, i64 568}
!55 = !{!19, !12, i64 576}
!56 = !{!57}
!57 = !{i64 2, i64 -1, i64 -1, i1 true}
!58 = distinct !{!58, !34}
!59 = distinct !{!59, !34}
!60 = !{!19, !7, i64 13224}
!61 = !{!19, !7, i64 32}
!62 = !{!63, !23, i64 0}
!63 = !{!"_GeometryInfo", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32}
!64 = !{!65, !66, i64 32}
!65 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !23, i64 16, !20, i64 24, !66, i64 32, !66, i64 36, !66, i64 40, !66, i64 44, !66, i64 48}
!66 = !{!"float", !8, i64 0}
!67 = !{!65, !66, i64 36}
!68 = !{!65, !66, i64 40}
!69 = !{!65, !66, i64 44}
!70 = !{!63, !23, i64 8}
!71 = !{!63, !23, i64 16}
!72 = !{!63, !23, i64 24}
!73 = !{!66, !66, i64 0}
!74 = distinct !{!74, !34}
!75 = !{!76, !20, i64 16}
!76 = !{!"KernelInfo", !7, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !12, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !12, i64 88, !20, i64 96}
!77 = !{!76, !20, i64 8}
!78 = !{!76, !12, i64 40}
!79 = distinct !{!79, !34}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !34}
!82 = distinct !{!82, !34}
!83 = distinct !{!83, !34}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, !34}
!86 = !{!30, !7, i64 0}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !34}
!90 = distinct !{!90, !34}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !34}
!95 = !{!19, !7, i64 13112}
!96 = distinct !{!96, !34}
!97 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 16, i64 8, !40, i64 24, i64 8, !44, i64 32, i64 4, !73, i64 36, i64 4, !73, i64 40, i64 4, !73, i64 44, i64 4, !73, i64 48, i64 4, !73}
!98 = !{!65, !7, i64 8}
!99 = !{!65, !66, i64 48}
!100 = !{!63, !23, i64 32}
!101 = !{!19, !23, i64 264}
!102 = !{!19, !23, i64 272}
!103 = !{!19, !20, i64 288}
!104 = !{!19, !20, i64 280}
!105 = !{!19, !20, i64 296}
!106 = !{!19, !20, i64 304}
!107 = distinct !{!107, !34}
!108 = !{!65, !7, i64 4}
!109 = distinct !{!109, !34}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !34}
!113 = !{!19, !22, i64 86}
!114 = !{!115, !23, i64 8}
!115 = !{!"_PointInfo", !23, i64 0, !23, i64 8}
!116 = !{!115, !23, i64 0}
!117 = distinct !{!117, !34}
!118 = !{!19, !7, i64 0}
!119 = distinct !{!119, !34}
!120 = !{!19, !7, i64 400}
!121 = !{!19, !23, i64 384}
!122 = distinct !{!122, !34}
!123 = distinct !{!123, !34}
!124 = distinct !{!124, !34}
!125 = !{!126, !23, i64 16}
!126 = !{!"_SegmentInfo", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!127 = !{!126, !23, i64 0}
!128 = !{!126, !23, i64 24}
!129 = !{!126, !23, i64 8}
!130 = !{i64 0, i64 8, !40, i64 8, i64 8, !40, i64 16, i64 8, !40, i64 24, i64 8, !40}
!131 = !{!132, !23, i64 16}
!132 = !{!"_TypeMetric", !115, i64 0, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !126, i64 72, !115, i64 104}
!133 = !{!132, !23, i64 24}
!134 = !{!135, !7, i64 96}
!135 = !{!"_DrawInfo", !12, i64 0, !12, i64 8, !26, i64 16, !136, i64 48, !7, i64 96, !21, i64 100, !21, i64 108, !23, i64 120, !137, i64 128, !12, i64 256, !12, i64 264, !12, i64 272, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !20, i64 304, !23, i64 312, !7, i64 320, !7, i64 324, !12, i64 328, !20, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !7, i64 368, !7, i64 372, !20, i64 376, !12, i64 384, !23, i64 392, !12, i64 400, !7, i64 408, !21, i64 412, !21, i64 420, !12, i64 432, !12, i64 440, !12, i64 448, !126, i64 456, !7, i64 488, !22, i64 492, !7, i64 496, !138, i64 504, !7, i64 672, !20, i64 680, !23, i64 688, !23, i64 696, !23, i64 704, !7, i64 712}
!136 = !{!"_AffineMatrix", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40}
!137 = !{!"_GradientInfo", !7, i64 0, !26, i64 8, !126, i64 40, !12, i64 72, !20, i64 80, !7, i64 88, !7, i64 92, !20, i64 96, !115, i64 104, !66, i64 120}
!138 = !{!"_ElementReference", !12, i64 0, !7, i64 8, !137, i64 16, !20, i64 144, !12, i64 152, !12, i64 160}
!139 = distinct !{!139, !34}
!140 = !{!19, !7, i64 416}
!141 = !{!26, !20, i64 0}
!142 = !{!26, !20, i64 8}
!143 = distinct !{!143, !34}
!144 = !{!19, !22, i64 84}
!145 = distinct !{!145, !34}
!146 = distinct !{!146, !34}
!147 = !{!19, !20, i64 64}
!148 = !{!19, !12, i64 72}
!149 = distinct !{!149, !34}
!150 = distinct !{!150, !34}
!151 = !{!19, !20, i64 56}
!152 = !{!19, !20, i64 256}
!153 = distinct !{!153, !34}
!154 = distinct !{!154, !34}
!155 = distinct !{!155, !34}
!156 = distinct !{!156, !34}
!157 = distinct !{!157, !34}
!158 = distinct !{!158, !34}
!159 = distinct !{!159, !34}
!160 = !{!135, !12, i64 0}
!161 = distinct !{!161, !34}
