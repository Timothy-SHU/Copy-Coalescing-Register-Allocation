; ModuleID = 'magick/fx.c'
source_filename = "magick/fx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.KernelInfo = type { i32, i64, i64, i64, i64, ptr, double, double, double, double, double, ptr, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._SegmentInfo = type { double, double, double, double }
%struct._TypeMetric = type { %struct._PointInfo, double, double, double, double, double, double, double, %struct._SegmentInfo, %struct._PointInfo }
%struct._PointInfo = type { double, double }
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
@.str.24 = private unnamed_addr constant [15 x i8] c"AddNoise/Image\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"BlueShift/Image\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Colorize/Image\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"  ColorMatrix image with color matrix:\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%.20g: \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%+f \00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"ColorMatrix/Image\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Fx/Image\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Implode/Image\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Morph/Image\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Caption\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"+0+%g\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"SepiaTone/Image\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Shadow/Image\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"50%\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"compose:args\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"20x80\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Solarize/Image\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Stegano/Image\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"LeftAndRightImageSizesDiffer\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Stereo/Image\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"Swirl/Image\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Tint/Image\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"#000000\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"#ffffff\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"ellipse %g,%g,%g,%g,0.0,360.0\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Wave/Image\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"DivideByZero\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"UnableToParseExpression\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"airy\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"asinh\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"atanh\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"%s[%.20g,%.20g].%s: %s=%.*g\0A\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"drc\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"epsilon\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"gauss\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"gcd\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"hypot\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"isnan\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"j0\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"j1\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"jinc\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"logtwo\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"MaxRGB\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"maxima\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"minima\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"Opaque\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"QuantumRange\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"QuantumScale\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"sinc\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"squish\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"Transparent\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.144 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"(+-/*%:&^|<>~,\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"UnbalancedParenthesis\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"suv\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"NoSuchImage\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"luma\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"luminance\00", align 1
@.str.157 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"kurtosis\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"image.depth\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"image.minima\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"image.maxima\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"image.mean\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"image.kurtosis\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"image.skewness\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"image.standard_deviation\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"image.resolution.x\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"image.resolution.y\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"page.height\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"page.width\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"page.x\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"page.y\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"resolution.x\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"resolution.y\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"skewness\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"standard_deviation\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"%p.%.20g.%s\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@reltable.FxEvaluateSubexpression = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.82 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.83 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.81 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.84 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.81 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.81 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.81 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.79 to i64), i64 ptrtoint (ptr @reltable.FxEvaluateSubexpression to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireFxInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  %6 = tail call dereferenceable_or_null(64) ptr @AcquireMagickMemory(i64 noundef 64) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  call void @GetExceptionInfo(ptr noundef nonnull %4) #18
  %9 = tail call ptr @__errno_location() #20
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #18
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 175, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #18
  %13 = call ptr @DestroyString(ptr noundef %11) #18
  call void @CatchException(ptr noundef nonnull %4) #18
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #21
  unreachable

15:                                               ; preds = %2
  %16 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 64) #18
  %17 = tail call ptr @AcquireExceptionInfo() #18
  %18 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !38
  store ptr %0, ptr %6, align 8, !tbaa !41
  %19 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishAlignedMemory) #18
  %20 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !42
  %21 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #18
  %22 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !43
  %23 = load ptr, ptr %6, align 8, !tbaa !41
  %24 = tail call i64 @GetImageListLength(ptr noundef %23) #18
  %25 = tail call ptr @AcquireQuantumMemory(i64 noundef %24, i64 noundef 8) #22
  %26 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !44
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #18
  call void @GetExceptionInfo(ptr noundef nonnull %5) #18
  %29 = tail call ptr @__errno_location() #20
  %30 = load i32, ptr %29, align 4, !tbaa !34
  %31 = call ptr @GetExceptionMessage(i32 noundef %30) #18
  %32 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 186, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %31) #18
  %33 = call ptr @DestroyString(ptr noundef %31) #18
  call void @CatchException(ptr noundef nonnull %5) #18
  %34 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #21
  unreachable

35:                                               ; preds = %15
  %36 = load ptr, ptr %6, align 8, !tbaa !41
  %37 = tail call ptr @GetFirstImageInList(ptr noundef %36) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %48, %39 ], [ %37, %35 ]
  %41 = phi i64 [ %46, %39 ], [ 0, %35 ]
  %42 = load ptr, ptr %18, align 8, !tbaa !38
  %43 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %40, ptr noundef %42) #18
  %44 = load ptr, ptr %26, align 8, !tbaa !44
  %45 = getelementptr inbounds ptr, ptr %44, i64 %41
  store ptr %43, ptr %45, align 8, !tbaa !45
  %46 = add nuw nsw i64 %41, 1
  %47 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 69
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %39, !llvm.loop !61

50:                                               ; preds = %39, %35
  %51 = tail call ptr @AcquireRandomInfo() #18
  %52 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 6
  store ptr %51, ptr %52, align 8, !tbaa !64
  %53 = tail call ptr @ConstantString(ptr noundef %1) #18
  %54 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !65
  %55 = load ptr, ptr @stderr, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !66
  %57 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #18
  %58 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #18
  %59 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #18
  %60 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #18
  %61 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18
  %62 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %62, align 1, !tbaa !67
  store i8 -11, ptr %3, align 1, !tbaa !67
  %63 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.13, ptr noundef nonnull %3) #18
  store i8 -10, ptr %3, align 1, !tbaa !67
  %64 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.14, ptr noundef nonnull %3) #18
  store i8 -9, ptr %3, align 1, !tbaa !67
  %65 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #18
  store i8 -8, ptr %3, align 1, !tbaa !67
  %66 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.16, ptr noundef nonnull %3) #18
  store i8 -7, ptr %3, align 1, !tbaa !67
  %67 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.17, ptr noundef nonnull %3) #18
  store i8 -6, ptr %3, align 1, !tbaa !67
  %68 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #18
  store i8 -5, ptr %3, align 1, !tbaa !67
  %69 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.19, ptr noundef nonnull %3) #18
  store i8 -4, ptr %3, align 1, !tbaa !67
  %70 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #18
  store i8 -3, ptr %3, align 1, !tbaa !67
  %71 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #3

declare ptr @RelinquishMagickMemory(ptr noundef) #3

declare ptr @RelinquishAlignedMemory(ptr noundef) #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireRandomInfo() local_unnamed_addr #3

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #3

declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AddNoiseImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @AddNoiseImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @AddNoiseImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !68
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 313, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %4
  %13 = tail call ptr @AccelerateAddNoiseImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %252

15:                                               ; preds = %12
  %16 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %252, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %16, i32 noundef 1) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %22) #18
  %23 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #18
  br label %252

24:                                               ; preds = %18
  %25 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.23) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call double @InterpretLocaleValue(ptr noundef nonnull %25, ptr noundef null) #18
  %29 = fptrunc double %28 to float
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi float [ %29, %27 ], [ 1.000000e+00, %24 ]
  %32 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %33 = tail call ptr @AcquireAlignedMemory(i64 noundef %32, i64 noundef 8) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %35

35:                                               ; preds = %30
  %36 = shl i64 %32, 3
  %37 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %33, i32 noundef 0, i64 noundef %36) #18
  %38 = icmp sgt i64 %32, 0
  br i1 %38, label %42, label %63

39:                                               ; preds = %42
  %40 = add nuw nsw i64 %43, 1
  %41 = icmp eq i64 %40, %32
  br i1 %41, label %63, label %42, !llvm.loop !69

42:                                               ; preds = %35, %39
  %43 = phi i64 [ %40, %39 ], [ 0, %35 ]
  %44 = tail call ptr @AcquireRandomInfo() #18
  %45 = getelementptr inbounds ptr, ptr %33, i64 %43
  store ptr %44, ptr %45, align 8, !tbaa !45
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %39

47:                                               ; preds = %42
  %48 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47, %57
  %51 = phi i64 [ %58, %57 ], [ 0, %47 ]
  %52 = getelementptr inbounds ptr, ptr %33, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %53) #18
  store ptr %56, ptr %52, align 8, !tbaa !45
  br label %57

57:                                               ; preds = %55, %50
  %58 = add nuw nsw i64 %51, 1
  %59 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %50, label %61, !llvm.loop !70

61:                                               ; preds = %57, %47
  %62 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %33) #18
  br label %63

63:                                               ; preds = %39, %35, %30, %61
  %64 = phi ptr [ %62, %61 ], [ null, %30 ], [ %33, %35 ], [ %33, %39 ]
  %65 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #18
  %66 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %16, ptr noundef %3) #18
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %68 = load i64, ptr %67, align 8, !tbaa !71
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %231

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %72 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 7
  %73 = and i32 %1, 1
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
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

87:                                               ; preds = %70, %223
  %88 = phi i64 [ 0, %70 ], [ %226, %223 ]
  %89 = phi i64 [ 0, %70 ], [ %225, %223 ]
  %90 = phi i32 [ 1, %70 ], [ %224, %223 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %223, label %92

92:                                               ; preds = %87
  %93 = load i64, ptr %71, align 8, !tbaa !72
  %94 = call ptr @GetCacheViewVirtualPixels(ptr noundef %65, i64 noundef 0, i64 noundef %88, i64 noundef %93, i64 noundef 1, ptr noundef %3) #23
  %95 = load i64, ptr %72, align 8, !tbaa !72
  %96 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %66, i64 noundef 0, i64 noundef %88, i64 noundef %95, i64 noundef 1, ptr noundef %3) #23
  %97 = icmp eq ptr %94, null
  %98 = icmp eq ptr %96, null
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %223, label %100

100:                                              ; preds = %92
  %101 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %65) #18
  %102 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %66) #18
  %103 = load i64, ptr %71, align 8, !tbaa !72
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %208

105:                                              ; preds = %100
  %106 = icmp eq ptr %102, null
  %107 = icmp eq ptr %101, null
  br label %108

108:                                              ; preds = %105, %202
  %109 = phi ptr [ %96, %105 ], [ %204, %202 ]
  %110 = phi i64 [ 0, %105 ], [ %205, %202 ]
  %111 = phi ptr [ %94, %105 ], [ %203, %202 ]
  br i1 %74, label %127, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %64, align 8, !tbaa !45
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  %115 = load i16, ptr %114, align 2, !tbaa !73
  %116 = call double @GenerateDifferentialNoise(ptr noundef %113, i16 noundef zeroext %115, i32 noundef %2, float noundef %31) #18
  %117 = fptrunc double %116 to float
  %118 = fcmp ugt float %117, 0.000000e+00
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = fcmp ult float %117, 6.553500e+04
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = fadd float %117, 5.000000e-01
  %123 = fptoui float %122 to i16
  br label %124

124:                                              ; preds = %112, %119, %121
  %125 = phi i16 [ %123, %121 ], [ 0, %112 ], [ -1, %119 ]
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 2
  store i16 %125, ptr %126, align 2, !tbaa !73
  br label %127

127:                                              ; preds = %124, %108
  %128 = load i32, ptr %75, align 4, !tbaa !74
  switch i32 %128, label %129 [
    i32 19, label %130
    i32 17, label %130
    i32 2, label %130
  ]

129:                                              ; preds = %127
  br i1 %77, label %149, label %134

130:                                              ; preds = %127, %127, %127
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 2
  %132 = load i16, ptr %131, align 2, !tbaa !73
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 1
  store i16 %132, ptr %133, align 2, !tbaa !75
  br label %161

134:                                              ; preds = %129
  %135 = load ptr, ptr %64, align 8, !tbaa !45
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 1
  %137 = load i16, ptr %136, align 2, !tbaa !75
  %138 = call double @GenerateDifferentialNoise(ptr noundef %135, i16 noundef zeroext %137, i32 noundef %2, float noundef %31) #18
  %139 = fptrunc double %138 to float
  %140 = fcmp ugt float %139, 0.000000e+00
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = fcmp ult float %139, 6.553500e+04
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = fadd float %139, 5.000000e-01
  %145 = fptoui float %144 to i16
  br label %146

146:                                              ; preds = %134, %141, %143
  %147 = phi i16 [ %145, %143 ], [ 0, %134 ], [ -1, %141 ]
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 1
  store i16 %147, ptr %148, align 2, !tbaa !75
  br label %149

149:                                              ; preds = %146, %129
  br i1 %79, label %163, label %150

150:                                              ; preds = %149
  %151 = load ptr, ptr %64, align 8, !tbaa !45
  %152 = load i16, ptr %111, align 2, !tbaa !76
  %153 = call double @GenerateDifferentialNoise(ptr noundef %151, i16 noundef zeroext %152, i32 noundef %2, float noundef %31) #18
  %154 = fptrunc double %153 to float
  %155 = fcmp ugt float %154, 0.000000e+00
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = fcmp ult float %154, 6.553500e+04
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = fadd float %154, 5.000000e-01
  %160 = fptoui float %159 to i16
  br label %161

161:                                              ; preds = %158, %156, %150, %130
  %162 = phi i16 [ %132, %130 ], [ %160, %158 ], [ 0, %150 ], [ -1, %156 ]
  store i16 %162, ptr %109, align 2, !tbaa !76
  br label %163

163:                                              ; preds = %161, %149
  br i1 %81, label %179, label %164

164:                                              ; preds = %163
  %165 = load ptr, ptr %64, align 8, !tbaa !45
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  %167 = load i16, ptr %166, align 2, !tbaa !77
  %168 = call double @GenerateDifferentialNoise(ptr noundef %165, i16 noundef zeroext %167, i32 noundef %2, float noundef %31) #18
  %169 = fptrunc double %168 to float
  %170 = fcmp ugt float %169, 0.000000e+00
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = fcmp ult float %169, 6.553500e+04
  br i1 %172, label %173, label %176

173:                                              ; preds = %171
  %174 = fadd float %169, 5.000000e-01
  %175 = fptoui float %174 to i16
  br label %176

176:                                              ; preds = %164, %171, %173
  %177 = phi i16 [ %175, %173 ], [ 0, %164 ], [ -1, %171 ]
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 3
  store i16 %177, ptr %178, align 2, !tbaa !77
  br label %179

179:                                              ; preds = %176, %163
  br i1 %83, label %202, label %180

180:                                              ; preds = %179
  %181 = load i32, ptr %75, align 4, !tbaa !74
  %182 = icmp eq i32 %181, 12
  br i1 %182, label %183, label %202

183:                                              ; preds = %180
  %184 = getelementptr inbounds i16, ptr %102, i64 %110
  br i1 %106, label %202, label %185

185:                                              ; preds = %183
  %186 = load ptr, ptr %64, align 8, !tbaa !45
  br i1 %107, label %190, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds i16, ptr %101, i64 %110
  %189 = load i16, ptr %188, align 2, !tbaa !78
  br label %190

190:                                              ; preds = %185, %187
  %191 = phi i16 [ %189, %187 ], [ 0, %185 ]
  %192 = call double @GenerateDifferentialNoise(ptr noundef %186, i16 noundef zeroext %191, i32 noundef %2, float noundef %31) #18
  %193 = fptrunc double %192 to float
  %194 = fcmp ugt float %193, 0.000000e+00
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = fcmp ult float %193, 6.553500e+04
  br i1 %196, label %197, label %200

197:                                              ; preds = %195
  %198 = fadd float %193, 5.000000e-01
  %199 = fptoui float %198 to i16
  br label %200

200:                                              ; preds = %190, %195, %197
  %201 = phi i16 [ %199, %197 ], [ 0, %190 ], [ -1, %195 ]
  store i16 %201, ptr %184, align 2, !tbaa !78
  br label %202

202:                                              ; preds = %183, %200, %180, %179
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %204 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 1
  %205 = add nuw nsw i64 %110, 1
  %206 = load i64, ptr %71, align 8, !tbaa !72
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %108, label %208, !llvm.loop !79

208:                                              ; preds = %202, %100
  %209 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %66, ptr noundef %3) #23
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = load ptr, ptr %84, align 8, !tbaa !80
  %213 = icmp eq ptr %212, null
  br i1 %213, label %223, label %214

214:                                              ; preds = %208
  %215 = add nsw i64 %89, 1
  %216 = load i64, ptr %67, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %217 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.24, ptr noundef nonnull %85) #18
  %218 = load ptr, ptr %84, align 8, !tbaa !80
  %219 = load ptr, ptr %86, align 8, !tbaa !81
  %220 = call i32 %218(ptr noundef nonnull %5, i64 noundef %89, i64 noundef %216, ptr noundef %219) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, i32 0, i32 %211
  br label %223

223:                                              ; preds = %208, %214, %92, %87
  %224 = phi i32 [ 0, %87 ], [ 0, %92 ], [ %222, %214 ], [ %211, %208 ]
  %225 = phi i64 [ %89, %87 ], [ %89, %92 ], [ %215, %214 ], [ %89, %208 ]
  %226 = add nuw nsw i64 %88, 1
  %227 = load i64, ptr %67, align 8, !tbaa !71
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %87, label %229, !llvm.loop !82

229:                                              ; preds = %223
  %230 = icmp eq i32 %224, 0
  br label %231

231:                                              ; preds = %229, %63
  %232 = phi i1 [ false, %63 ], [ %230, %229 ]
  %233 = call ptr @DestroyCacheView(ptr noundef %66) #18
  %234 = call ptr @DestroyCacheView(ptr noundef %65) #18
  %235 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %231, %244
  %238 = phi i64 [ %245, %244 ], [ 0, %231 ]
  %239 = getelementptr inbounds ptr, ptr %64, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !45
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %237
  %243 = call ptr @DestroyRandomInfo(ptr noundef nonnull %240) #18
  store ptr %243, ptr %239, align 8, !tbaa !45
  br label %244

244:                                              ; preds = %242, %237
  %245 = add nuw nsw i64 %238, 1
  %246 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %237, label %248, !llvm.loop !70

248:                                              ; preds = %244, %231
  %249 = call ptr @RelinquishAlignedMemory(ptr noundef %64) #18
  br i1 %232, label %250, label %252

250:                                              ; preds = %248
  %251 = call ptr @DestroyImage(ptr noundef nonnull %16) #18
  br label %252

252:                                              ; preds = %248, %250, %15, %12, %21
  %253 = phi ptr [ null, %21 ], [ %13, %12 ], [ null, %15 ], [ %251, %250 ], [ %16, %248 ]
  ret ptr %253
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @AccelerateAddNoiseImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

declare double @GenerateDifferentialNoise(ptr noundef, i16 noundef zeroext, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BlueShiftImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 494, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #18
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !71
  %16 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %13, i64 noundef %15, i32 noundef 1, ptr noundef %2) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %149, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %16, i32 noundef 1) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %22) #18
  %23 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #18
  br label %149

24:                                               ; preds = %18
  %25 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #18
  %26 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %16, ptr noundef %2) #18
  %27 = load i64, ptr %14, align 8, !tbaa !71
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %146

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 7
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %34

34:                                               ; preds = %29, %134
  %35 = phi i64 [ 0, %29 ], [ %137, %134 ]
  %36 = phi i64 [ 0, %29 ], [ %136, %134 ]
  %37 = phi i32 [ 1, %29 ], [ %135, %134 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %134, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %12, align 8, !tbaa !72
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef 0, i64 noundef %35, i64 noundef %40, i64 noundef 1, ptr noundef %2) #23
  %42 = load i64, ptr %30, align 8, !tbaa !72
  %43 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %26, i64 noundef 0, i64 noundef %35, i64 noundef %42, i64 noundef 1, ptr noundef %2) #23
  %44 = icmp eq ptr %41, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %134, label %47

47:                                               ; preds = %39
  %48 = load i64, ptr %12, align 8, !tbaa !72
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %119

50:                                               ; preds = %47, %113
  %51 = phi ptr [ %116, %113 ], [ %43, %47 ]
  %52 = phi i64 [ %117, %113 ], [ 0, %47 ]
  %53 = phi ptr [ %115, %113 ], [ %41, %47 ]
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  %55 = load i16, ptr %54, align 2, !tbaa !73
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !75
  %58 = call i16 @llvm.umin.i16(i16 %57, i16 %55)
  %59 = load i16, ptr %53, align 2, !tbaa !76
  %60 = call i16 @llvm.umin.i16(i16 %59, i16 %58)
  %61 = uitofp i16 %55 to double
  %62 = uitofp i16 %60 to double
  %63 = call double @llvm.fmuladd.f64(double %1, double %62, double %61)
  %64 = fmul double %63, 5.000000e-01
  %65 = fptrunc double %64 to float
  %66 = uitofp i16 %57 to double
  %67 = call double @llvm.fmuladd.f64(double %1, double %62, double %66)
  %68 = fmul double %67, 5.000000e-01
  %69 = fptrunc double %68 to float
  %70 = uitofp i16 %59 to double
  %71 = call double @llvm.fmuladd.f64(double %1, double %62, double %70)
  %72 = fmul double %71, 5.000000e-01
  %73 = fptrunc double %72 to float
  %74 = call i16 @llvm.umax.i16(i16 %57, i16 %55)
  %75 = call i16 @llvm.umax.i16(i16 %59, i16 %74)
  %76 = fpext float %65 to double
  %77 = uitofp i16 %75 to double
  %78 = call double @llvm.fmuladd.f64(double %1, double %77, double %76)
  %79 = fmul double %78, 5.000000e-01
  %80 = fptrunc double %79 to float
  %81 = fpext float %69 to double
  %82 = call double @llvm.fmuladd.f64(double %1, double %77, double %81)
  %83 = fmul double %82, 5.000000e-01
  %84 = fptrunc double %83 to float
  %85 = fpext float %73 to double
  %86 = call double @llvm.fmuladd.f64(double %1, double %77, double %85)
  %87 = fmul double %86, 5.000000e-01
  %88 = fptrunc double %87 to float
  %89 = fcmp ugt float %80, 0.000000e+00
  br i1 %89, label %90, label %95

90:                                               ; preds = %50
  %91 = fcmp ult float %80, 6.553500e+04
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = fadd float %80, 5.000000e-01
  %94 = fptoui float %93 to i16
  br label %95

95:                                               ; preds = %50, %90, %92
  %96 = phi i16 [ %94, %92 ], [ 0, %50 ], [ -1, %90 ]
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 2
  store i16 %96, ptr %97, align 2, !tbaa !73
  %98 = fcmp ugt float %84, 0.000000e+00
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = fcmp ult float %84, 6.553500e+04
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = fadd float %84, 5.000000e-01
  %103 = fptoui float %102 to i16
  br label %104

104:                                              ; preds = %95, %99, %101
  %105 = phi i16 [ %103, %101 ], [ 0, %95 ], [ -1, %99 ]
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 1
  store i16 %105, ptr %106, align 2, !tbaa !75
  %107 = fcmp ugt float %88, 0.000000e+00
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = fcmp ult float %88, 6.553500e+04
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = fadd float %88, 5.000000e-01
  %112 = fptoui float %111 to i16
  br label %113

113:                                              ; preds = %104, %108, %110
  %114 = phi i16 [ %112, %110 ], [ 0, %104 ], [ -1, %108 ]
  store i16 %114, ptr %51, align 2, !tbaa !76
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 1
  %117 = add nuw nsw i64 %52, 1
  %118 = icmp eq i64 %117, %48
  br i1 %118, label %119, label %50, !llvm.loop !83

119:                                              ; preds = %113, %47
  %120 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %26, ptr noundef %2) #23
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = load ptr, ptr %31, align 8, !tbaa !80
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %119
  %126 = add nsw i64 %36, 1
  %127 = load i64, ptr %14, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %128 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.25, ptr noundef nonnull %32) #18
  %129 = load ptr, ptr %31, align 8, !tbaa !80
  %130 = load ptr, ptr %33, align 8, !tbaa !81
  %131 = call i32 %129(ptr noundef nonnull %4, i64 noundef %36, i64 noundef %127, ptr noundef %130) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 0, i32 %122
  br label %134

134:                                              ; preds = %119, %125, %39, %34
  %135 = phi i32 [ 0, %34 ], [ 0, %39 ], [ %133, %125 ], [ %122, %119 ]
  %136 = phi i64 [ %36, %34 ], [ %36, %39 ], [ %126, %125 ], [ %36, %119 ]
  %137 = add nuw nsw i64 %35, 1
  %138 = load i64, ptr %14, align 8, !tbaa !71
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %34, label %140, !llvm.loop !84

140:                                              ; preds = %134
  %141 = icmp eq i32 %135, 0
  %142 = call ptr @DestroyCacheView(ptr noundef %25) #18
  %143 = call ptr @DestroyCacheView(ptr noundef %26) #18
  br i1 %141, label %144, label %149

144:                                              ; preds = %140
  %145 = call ptr @DestroyImage(ptr noundef nonnull %16) #18
  br label %149

146:                                              ; preds = %24
  %147 = tail call ptr @DestroyCacheView(ptr noundef %25) #18
  %148 = tail call ptr @DestroyCacheView(ptr noundef %26) #18
  br label %149

149:                                              ; preds = %146, %140, %144, %11, %21
  %150 = phi ptr [ null, %21 ], [ null, %11 ], [ %145, %144 ], [ %16, %140 ], [ %16, %146 ]
  ret ptr %150
}

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @CharcoalImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 638, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #18
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @EdgeImage(ptr noundef nonnull %12, double noundef %1, ptr noundef %3) #18
  %16 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #18
  %17 = icmp eq ptr %15, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @BlurImage(ptr noundef nonnull %15, double noundef %1, double noundef %2, ptr noundef %3) #18
  %20 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #18
  %21 = icmp eq ptr %19, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @NormalizeImage(ptr noundef nonnull %19) #18
  %24 = tail call i32 @NegateImage(ptr noundef nonnull %19, i32 noundef 0) #18
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  %26 = load i32, ptr %25, align 8, !tbaa !85
  %27 = tail call i32 @GrayscaleImage(ptr noundef nonnull %19, i32 noundef %26) #18
  br label %28

28:                                               ; preds = %18, %14, %11, %22
  %29 = phi ptr [ %19, %22 ], [ null, %11 ], [ null, %14 ], [ null, %18 ]
  ret ptr %29
}

declare ptr @EdgeImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BlurImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @NormalizeImage(ptr noundef) local_unnamed_addr #3

declare i32 @NegateImage(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @GrayscaleImage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ColorizeImage(ptr noundef %0, ptr noundef %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._GeometryInfo, align 8
  %7 = trunc i64 %2 to i16
  %8 = lshr i64 %2, 16
  %9 = trunc i64 %8 to i16
  %10 = lshr i64 %2, 32
  %11 = trunc i64 %10 to i16
  %12 = lshr i64 %2, 48
  %13 = trunc i64 %12 to i16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 727, ptr noundef nonnull @.str.22, ptr noundef nonnull %18) #18
  br label %20

20:                                               ; preds = %17, %4
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !71
  %25 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %22, i64 noundef %24, i32 noundef 1, ptr noundef %3) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %202, label %27

27:                                               ; preds = %20
  %28 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %25, i32 noundef 1) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %31) #18
  %32 = tail call ptr @DestroyImage(ptr noundef nonnull %25) #18
  br label %202

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !74
  switch i32 %35, label %36 [
    i32 19, label %53
    i32 17, label %53
    i32 2, label %53
  ]

36:                                               ; preds = %33
  %37 = uitofp i16 %11 to float
  %38 = uitofp i16 %9 to float
  %39 = fsub float %37, %38
  %40 = fcmp olt float %39, 0.000000e+00
  %41 = fneg float %39
  %42 = select i1 %40, float %41, float %39
  %43 = fpext float %42 to double
  %44 = fcmp olt double %43, 1.000000e-15
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = uitofp i16 %7 to float
  %47 = fsub float %38, %46
  %48 = fcmp olt float %47, 0.000000e+00
  %49 = fneg float %47
  %50 = select i1 %48, float %49, float %47
  %51 = fpext float %50 to double
  %52 = fcmp olt double %51, 1.000000e-15
  br i1 %52, label %53, label %55

53:                                               ; preds = %45, %33, %33, %33
  %54 = tail call i32 @SetImageColorspace(ptr noundef nonnull %25, i32 noundef 13) #18
  br label %55

55:                                               ; preds = %36, %45, %53
  %56 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !86
  %58 = icmp eq i32 %57, 0
  %59 = icmp ne i16 %13, 0
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %25, i32 noundef 6) #18
  br label %63

63:                                               ; preds = %61, %55
  %64 = icmp eq ptr %1, null
  br i1 %64, label %202, label %65

65:                                               ; preds = %63
  %66 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %6) #18
  %67 = load double, ptr %6, align 8, !tbaa !87
  %68 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %69 = load double, ptr %68, align 8
  %70 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 2
  %71 = load double, ptr %70, align 8
  %72 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 3
  %73 = load double, ptr %72, align 8
  %74 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #18
  %75 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %3) #18
  %76 = load i64, ptr %23, align 8, !tbaa !71
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %199

78:                                               ; preds = %65
  %79 = and i32 %66, 2
  %80 = icmp eq i32 %79, 0
  %81 = fptrunc double %73 to float
  %82 = select i1 %80, float 0.000000e+00, float %81
  %83 = and i32 %66, 1
  %84 = icmp eq i32 %83, 0
  %85 = fptrunc double %67 to float
  %86 = fptrunc double %71 to float
  %87 = select i1 %84, float %85, float %86
  %88 = and i32 %66, 8
  %89 = icmp eq i32 %88, 0
  %90 = fptrunc double %69 to float
  %91 = select i1 %89, float %85, float %90
  %92 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  %93 = fpext float %85 to double
  %94 = fsub double 1.000000e+02, %93
  %95 = uitofp i16 %11 to float
  %96 = fmul float %95, %85
  %97 = fpext float %96 to double
  %98 = fpext float %91 to double
  %99 = fsub double 1.000000e+02, %98
  %100 = uitofp i16 %9 to float
  %101 = fmul float %91, %100
  %102 = fpext float %101 to double
  %103 = fpext float %87 to double
  %104 = fsub double 1.000000e+02, %103
  %105 = uitofp i16 %7 to float
  %106 = fmul float %87, %105
  %107 = fpext float %106 to double
  %108 = fpext float %82 to double
  %109 = fsub double 1.000000e+02, %108
  %110 = uitofp i16 %13 to float
  %111 = fmul float %82, %110
  %112 = fpext float %111 to double
  %113 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %115 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %116

116:                                              ; preds = %78, %187
  %117 = phi i64 [ 0, %78 ], [ %190, %187 ]
  %118 = phi i32 [ 1, %78 ], [ %189, %187 ]
  %119 = phi i64 [ 0, %78 ], [ %188, %187 ]
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %187, label %121

121:                                              ; preds = %116
  %122 = load i64, ptr %21, align 8, !tbaa !72
  %123 = call ptr @GetCacheViewVirtualPixels(ptr noundef %74, i64 noundef 0, i64 noundef %117, i64 noundef %122, i64 noundef 1, ptr noundef %3) #23
  %124 = load i64, ptr %92, align 8, !tbaa !72
  %125 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %75, i64 noundef 0, i64 noundef %117, i64 noundef %124, i64 noundef 1, ptr noundef %3) #23
  %126 = icmp eq ptr %123, null
  %127 = icmp eq ptr %125, null
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %187, label %129

129:                                              ; preds = %121
  %130 = load i64, ptr %21, align 8, !tbaa !72
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %172

132:                                              ; preds = %129
  %133 = load i32, ptr %56, align 8, !tbaa !86
  %134 = icmp eq i32 %133, 0
  br label %135

135:                                              ; preds = %132, %165
  %136 = phi ptr [ %125, %132 ], [ %169, %165 ]
  %137 = phi i64 [ 0, %132 ], [ %170, %165 ]
  %138 = phi ptr [ %123, %132 ], [ %168, %165 ]
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 0, i32 2
  %140 = load i16, ptr %139, align 2, !tbaa !73
  %141 = uitofp i16 %140 to double
  %142 = call double @llvm.fmuladd.f64(double %141, double %94, double %97)
  %143 = fdiv double %142, 1.000000e+02
  %144 = fptoui double %143 to i16
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 2
  store i16 %144, ptr %145, align 2, !tbaa !73
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 0, i32 1
  %147 = load i16, ptr %146, align 2, !tbaa !75
  %148 = uitofp i16 %147 to double
  %149 = call double @llvm.fmuladd.f64(double %148, double %99, double %102)
  %150 = fdiv double %149, 1.000000e+02
  %151 = fptoui double %150 to i16
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 1
  store i16 %151, ptr %152, align 2, !tbaa !75
  %153 = load i16, ptr %138, align 2, !tbaa !76
  %154 = uitofp i16 %153 to double
  %155 = call double @llvm.fmuladd.f64(double %154, double %104, double %107)
  %156 = fdiv double %155, 1.000000e+02
  %157 = fptoui double %156 to i16
  store i16 %157, ptr %136, align 2, !tbaa !76
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 0, i32 3
  %159 = load i16, ptr %158, align 2, !tbaa !77
  br i1 %134, label %165, label %160

160:                                              ; preds = %135
  %161 = uitofp i16 %159 to double
  %162 = call double @llvm.fmuladd.f64(double %161, double %109, double %112)
  %163 = fdiv double %162, 1.000000e+02
  %164 = fptoui double %163 to i16
  br label %165

165:                                              ; preds = %135, %160
  %166 = phi i16 [ %164, %160 ], [ %159, %135 ]
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 3
  store i16 %166, ptr %167, align 2, !tbaa !77
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 1
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 1
  %170 = add nuw nsw i64 %137, 1
  %171 = icmp eq i64 %170, %130
  br i1 %171, label %172, label %135, !llvm.loop !89

172:                                              ; preds = %165, %129
  %173 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %75, ptr noundef %3) #23
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = load ptr, ptr %113, align 8, !tbaa !80
  %177 = icmp eq ptr %176, null
  br i1 %177, label %187, label %178

178:                                              ; preds = %172
  %179 = add nsw i64 %119, 1
  %180 = load i64, ptr %23, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %181 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.26, ptr noundef nonnull %114) #18
  %182 = load ptr, ptr %113, align 8, !tbaa !80
  %183 = load ptr, ptr %115, align 8, !tbaa !81
  %184 = call i32 %182(ptr noundef nonnull %5, i64 noundef %119, i64 noundef %180, ptr noundef %183) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i32 0, i32 %175
  br label %187

187:                                              ; preds = %172, %178, %121, %116
  %188 = phi i64 [ %119, %116 ], [ %119, %121 ], [ %179, %178 ], [ %119, %172 ]
  %189 = phi i32 [ 0, %116 ], [ 0, %121 ], [ %186, %178 ], [ %175, %172 ]
  %190 = add nuw nsw i64 %117, 1
  %191 = load i64, ptr %23, align 8, !tbaa !71
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %116, label %193, !llvm.loop !90

193:                                              ; preds = %187
  %194 = icmp eq i32 %189, 0
  %195 = call ptr @DestroyCacheView(ptr noundef %74) #18
  %196 = call ptr @DestroyCacheView(ptr noundef %75) #18
  br i1 %194, label %197, label %202

197:                                              ; preds = %193
  %198 = call ptr @DestroyImage(ptr noundef nonnull %25) #18
  br label %202

199:                                              ; preds = %65
  %200 = call ptr @DestroyCacheView(ptr noundef %74) #18
  %201 = call ptr @DestroyCacheView(ptr noundef %75) #18
  br label %202

202:                                              ; preds = %199, %193, %197, %63, %20, %30
  %203 = phi ptr [ null, %30 ], [ null, %20 ], [ %25, %63 ], [ %198, %197 ], [ %25, %193 ], [ %25, %199 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  ret ptr %203
}

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ColorMatrixImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [6 x [6 x double]], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %5, i8 0, i64 288, i1 false)
  store double 1.000000e+00, ptr %5, align 16
  %8 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 1, i64 1
  store double 1.000000e+00, ptr %8, align 8
  %9 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 2, i64 2
  store double 1.000000e+00, ptr %9, align 16
  %10 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 3, i64 3
  store double 1.000000e+00, ptr %10, align 8
  %11 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 4, i64 4
  store double 1.000000e+00, ptr %11, align 16
  %12 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 5, i64 5
  store double 1.000000e+00, ptr %12, align 8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !68
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 912, ptr noundef nonnull @.str.22, ptr noundef nonnull %17) #18
  br label %19

19:                                               ; preds = %16, %3
  %20 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !91
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !93
  %26 = icmp sgt i64 %25, 0
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 5
  br label %28

28:                                               ; preds = %23, %47
  %29 = phi i64 [ 0, %23 ], [ %49, %47 ]
  %30 = phi i64 [ 0, %23 ], [ %48, %47 ]
  br i1 %26, label %31, label %47

31:                                               ; preds = %28
  %32 = icmp ult i64 %29, 6
  br label %33

33:                                               ; preds = %31, %43
  %34 = phi i64 [ 0, %31 ], [ %45, %43 ]
  %35 = phi i64 [ %30, %31 ], [ %44, %43 ]
  %36 = icmp ult i64 %34, 6
  %37 = and i1 %32, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load ptr, ptr %27, align 8, !tbaa !94
  %40 = getelementptr inbounds double, ptr %39, i64 %35
  %41 = load double, ptr %40, align 8, !tbaa !95
  %42 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 %29, i64 %34
  store double %41, ptr %42, align 8, !tbaa !95
  br label %43

43:                                               ; preds = %38, %33
  %44 = add nsw i64 %35, 1
  %45 = add nuw nsw i64 %34, 1
  %46 = icmp eq i64 %45, %25
  br i1 %46, label %47, label %33, !llvm.loop !96

47:                                               ; preds = %43, %28
  %48 = phi i64 [ %30, %28 ], [ %44, %43 ]
  %49 = add nuw nsw i64 %29, 1
  %50 = icmp eq i64 %49, %21
  br i1 %50, label %51, label %28, !llvm.loop !97

51:                                               ; preds = %47, %19
  %52 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 2
  %53 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %280, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %53, i32 noundef 1) #18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %59) #18
  %60 = tail call ptr @DestroyImage(ptr noundef nonnull %53) #18
  br label %280

61:                                               ; preds = %55
  %62 = load i32, ptr %13, align 8, !tbaa !68
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %65 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, ptr noundef nonnull @.str.27) #18
  %66 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #18
  store ptr %66, ptr %7, align 8, !tbaa !45
  br label %67

67:                                               ; preds = %64, %81
  %68 = phi i64 [ 0, %64 ], [ %84, %81 ]
  %69 = load ptr, ptr %7, align 8, !tbaa !45
  store i8 0, ptr %69, align 1, !tbaa !67
  %70 = sitofp i64 %68 to double
  %71 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.28, double noundef %70) #18
  %72 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  br label %73

73:                                               ; preds = %67, %73
  %74 = phi i64 [ 0, %67 ], [ %79, %73 ]
  %75 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 %68, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !95
  %77 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %76) #18
  %78 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp eq i64 %79, 6
  br i1 %80, label %81, label %73, !llvm.loop !98

81:                                               ; preds = %73
  %82 = load ptr, ptr %7, align 8, !tbaa !45
  %83 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 955, ptr noundef nonnull @.str.22, ptr noundef %82) #18
  %84 = add nuw nsw i64 %68, 1
  %85 = icmp eq i64 %84, 6
  br i1 %85, label %86, label %67, !llvm.loop !99

86:                                               ; preds = %81
  %87 = load ptr, ptr %7, align 8, !tbaa !45
  %88 = call ptr @DestroyString(ptr noundef %87) #18
  store ptr %88, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #18
  br label %89

89:                                               ; preds = %86, %61
  %90 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #18
  %91 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %53, ptr noundef %2) #18
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %93 = load i64, ptr %92, align 8, !tbaa !71
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %277

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %97 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %103

103:                                              ; preds = %95, %265
  %104 = phi i64 [ 0, %95 ], [ %268, %265 ]
  %105 = phi i64 [ 0, %95 ], [ %267, %265 ]
  %106 = phi i32 [ 1, %95 ], [ %266, %265 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %265, label %108

108:                                              ; preds = %103
  %109 = load i64, ptr %96, align 8, !tbaa !72
  %110 = call ptr @GetCacheViewVirtualPixels(ptr noundef %90, i64 noundef 0, i64 noundef %104, i64 noundef %109, i64 noundef 1, ptr noundef %2) #23
  %111 = load i64, ptr %97, align 8, !tbaa !72
  %112 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %91, i64 noundef 0, i64 noundef %104, i64 noundef %111, i64 noundef 1, ptr noundef %2) #23
  %113 = icmp eq ptr %110, null
  %114 = icmp eq ptr %112, null
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %265, label %116

116:                                              ; preds = %108
  %117 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %90) #18
  %118 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %91) #18
  %119 = load i64, ptr %96, align 8, !tbaa !72
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %250

121:                                              ; preds = %116
  %122 = load i64, ptr %52, align 8, !tbaa !91
  %123 = call i64 @llvm.umin.i64(i64 %122, i64 6)
  %124 = icmp eq i64 %122, 0
  %125 = icmp eq ptr %117, null
  %126 = icmp eq ptr %118, null
  br label %127

127:                                              ; preds = %121, %245
  %128 = phi ptr [ %112, %121 ], [ %247, %245 ]
  %129 = phi i64 [ 0, %121 ], [ %248, %245 ]
  %130 = phi ptr [ %110, %121 ], [ %246, %245 ]
  br i1 %124, label %245, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 2
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 1
  %134 = load i32, ptr %98, align 8, !tbaa !86
  %135 = icmp eq i32 %134, 0
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 3
  %137 = load i32, ptr %99, align 4, !tbaa !74
  %138 = icmp eq i32 %137, 12
  %139 = getelementptr inbounds i16, ptr %117, i64 %129
  %140 = icmp ne i32 %137, 12
  %141 = select i1 %140, i1 true, i1 %126
  %142 = getelementptr inbounds i16, ptr %118, i64 %129
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 3
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 1
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 2
  br label %146

146:                                              ; preds = %131, %242
  %147 = phi i64 [ 0, %131 ], [ %243, %242 ]
  %148 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 %147
  %149 = load double, ptr %148, align 16, !tbaa !95
  %150 = load i16, ptr %132, align 2, !tbaa !73
  %151 = uitofp i16 %150 to double
  %152 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 %147, i64 1
  %153 = load double, ptr %152, align 8, !tbaa !95
  %154 = load i16, ptr %133, align 2, !tbaa !75
  %155 = uitofp i16 %154 to double
  %156 = fmul double %153, %155
  %157 = call double @llvm.fmuladd.f64(double %149, double %151, double %156)
  %158 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 %147, i64 2
  %159 = load double, ptr %158, align 16, !tbaa !95
  %160 = load i16, ptr %130, align 2, !tbaa !76
  %161 = uitofp i16 %160 to double
  %162 = call double @llvm.fmuladd.f64(double %159, double %161, double %157)
  %163 = fptrunc double %162 to float
  br i1 %135, label %173, label %164

164:                                              ; preds = %146
  %165 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 %147, i64 3
  %166 = load double, ptr %165, align 8, !tbaa !95
  %167 = load i16, ptr %136, align 2, !tbaa !77
  %168 = xor i16 %167, -1
  %169 = uitofp i16 %168 to double
  %170 = fpext float %163 to double
  %171 = call double @llvm.fmuladd.f64(double %166, double %169, double %170)
  %172 = fptrunc double %171 to float
  br label %173

173:                                              ; preds = %164, %146
  %174 = phi float [ %172, %164 ], [ %163, %146 ]
  br i1 %138, label %175, label %187

175:                                              ; preds = %173
  %176 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 %147, i64 4
  %177 = load double, ptr %176, align 16, !tbaa !95
  br i1 %125, label %181, label %178

178:                                              ; preds = %175
  %179 = load i16, ptr %139, align 2, !tbaa !78
  %180 = zext i16 %179 to i32
  br label %181

181:                                              ; preds = %175, %178
  %182 = phi i32 [ %180, %178 ], [ 0, %175 ]
  %183 = sitofp i32 %182 to double
  %184 = fpext float %174 to double
  %185 = call double @llvm.fmuladd.f64(double %177, double %183, double %184)
  %186 = fptrunc double %185 to float
  br label %187

187:                                              ; preds = %181, %173
  %188 = phi float [ %186, %181 ], [ %174, %173 ]
  %189 = getelementptr inbounds [6 x [6 x double]], ptr %5, i64 0, i64 %147, i64 5
  %190 = load double, ptr %189, align 8, !tbaa !95
  %191 = fpext float %188 to double
  %192 = call double @llvm.fmuladd.f64(double %190, double 6.553500e+04, double %191)
  %193 = fptrunc double %192 to float
  switch i64 %147, label %242 [
    i64 0, label %194
    i64 1, label %203
    i64 2, label %212
    i64 3, label %221
    i64 4, label %232
  ]

194:                                              ; preds = %187
  %195 = fcmp ugt float %193, 0.000000e+00
  br i1 %195, label %196, label %201

196:                                              ; preds = %194
  %197 = fcmp ult float %193, 6.553500e+04
  br i1 %197, label %198, label %201

198:                                              ; preds = %196
  %199 = fadd float %193, 5.000000e-01
  %200 = fptoui float %199 to i16
  br label %201

201:                                              ; preds = %194, %196, %198
  %202 = phi i16 [ %200, %198 ], [ 0, %194 ], [ -1, %196 ]
  store i16 %202, ptr %145, align 2, !tbaa !73
  br label %242

203:                                              ; preds = %187
  %204 = fcmp ugt float %193, 0.000000e+00
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = fcmp ult float %193, 6.553500e+04
  br i1 %206, label %207, label %210

207:                                              ; preds = %205
  %208 = fadd float %193, 5.000000e-01
  %209 = fptoui float %208 to i16
  br label %210

210:                                              ; preds = %203, %205, %207
  %211 = phi i16 [ %209, %207 ], [ 0, %203 ], [ -1, %205 ]
  store i16 %211, ptr %144, align 2, !tbaa !75
  br label %242

212:                                              ; preds = %187
  %213 = fcmp ugt float %193, 0.000000e+00
  br i1 %213, label %214, label %219

214:                                              ; preds = %212
  %215 = fcmp ult float %193, 6.553500e+04
  br i1 %215, label %216, label %219

216:                                              ; preds = %214
  %217 = fadd float %193, 5.000000e-01
  %218 = fptoui float %217 to i16
  br label %219

219:                                              ; preds = %212, %214, %216
  %220 = phi i16 [ %218, %216 ], [ 0, %212 ], [ -1, %214 ]
  store i16 %220, ptr %128, align 2, !tbaa !76
  br label %242

221:                                              ; preds = %187
  br i1 %135, label %242, label %222

222:                                              ; preds = %221
  %223 = fcmp ugt float %193, 0.000000e+00
  br i1 %223, label %224, label %229

224:                                              ; preds = %222
  %225 = fcmp ult float %193, 6.553500e+04
  br i1 %225, label %226, label %229

226:                                              ; preds = %224
  %227 = fadd float %193, 5.000000e-01
  %228 = fptoui float %227 to i16
  br label %229

229:                                              ; preds = %222, %224, %226
  %230 = phi i16 [ %228, %226 ], [ 0, %222 ], [ -1, %224 ]
  %231 = xor i16 %230, -1
  store i16 %231, ptr %143, align 2, !tbaa !77
  br label %242

232:                                              ; preds = %187
  br i1 %141, label %242, label %233

233:                                              ; preds = %232
  %234 = fcmp ugt float %193, 0.000000e+00
  br i1 %234, label %235, label %240

235:                                              ; preds = %233
  %236 = fcmp ult float %193, 6.553500e+04
  br i1 %236, label %237, label %240

237:                                              ; preds = %235
  %238 = fadd float %193, 5.000000e-01
  %239 = fptoui float %238 to i16
  br label %240

240:                                              ; preds = %233, %235, %237
  %241 = phi i16 [ %239, %237 ], [ 0, %233 ], [ -1, %235 ]
  store i16 %241, ptr %142, align 2, !tbaa !78
  br label %242

242:                                              ; preds = %201, %210, %219, %187, %229, %221, %240, %232
  %243 = add nuw nsw i64 %147, 1
  %244 = icmp eq i64 %243, %123
  br i1 %244, label %245, label %146, !llvm.loop !100

245:                                              ; preds = %242, %127
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 1
  %247 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 1
  %248 = add nuw nsw i64 %129, 1
  %249 = icmp eq i64 %248, %119
  br i1 %249, label %250, label %127, !llvm.loop !101

250:                                              ; preds = %245, %116
  %251 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %91, ptr noundef %2) #23
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = load ptr, ptr %100, align 8, !tbaa !80
  %255 = icmp eq ptr %254, null
  br i1 %255, label %265, label %256

256:                                              ; preds = %250
  %257 = add nsw i64 %105, 1
  %258 = load i64, ptr %92, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %259 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.30, ptr noundef nonnull %101) #18
  %260 = load ptr, ptr %100, align 8, !tbaa !80
  %261 = load ptr, ptr %102, align 8, !tbaa !81
  %262 = call i32 %260(ptr noundef nonnull %4, i64 noundef %105, i64 noundef %258, ptr noundef %261) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %263 = icmp eq i32 %262, 0
  %264 = select i1 %263, i32 0, i32 %253
  br label %265

265:                                              ; preds = %250, %256, %108, %103
  %266 = phi i32 [ 0, %103 ], [ 0, %108 ], [ %264, %256 ], [ %253, %250 ]
  %267 = phi i64 [ %105, %103 ], [ %105, %108 ], [ %257, %256 ], [ %105, %250 ]
  %268 = add nuw nsw i64 %104, 1
  %269 = load i64, ptr %92, align 8, !tbaa !71
  %270 = icmp slt i64 %268, %269
  br i1 %270, label %103, label %271, !llvm.loop !102

271:                                              ; preds = %265
  %272 = icmp eq i32 %266, 0
  %273 = call ptr @DestroyCacheView(ptr noundef %91) #18
  %274 = call ptr @DestroyCacheView(ptr noundef %90) #18
  br i1 %272, label %275, label %280

275:                                              ; preds = %271
  %276 = call ptr @DestroyImage(ptr noundef nonnull %53) #18
  br label %280

277:                                              ; preds = %89
  %278 = call ptr @DestroyCacheView(ptr noundef %91) #18
  %279 = call ptr @DestroyCacheView(ptr noundef %90) #18
  br label %280

280:                                              ; preds = %277, %271, %275, %51, %58
  %281 = phi ptr [ null, %58 ], [ null, %51 ], [ %276, %275 ], [ %53, %271 ], [ %53, %277 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %5) #18
  ret ptr %281
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyFxInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #18
  store ptr %4, ptr %2, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = tail call ptr @DestroyString(ptr noundef %6) #18
  store ptr %7, ptr %5, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @DestroySplayTree(ptr noundef %9) #18
  store ptr %10, ptr %8, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = tail call ptr @DestroySplayTree(ptr noundef %12) #18
  store ptr %13, ptr %11, align 8, !tbaa !42
  %14 = load ptr, ptr %0, align 8, !tbaa !41
  %15 = tail call i64 @GetImageListLength(ptr noundef %14) #18
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %15, %17 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %18, align 8, !tbaa !44
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = tail call ptr @DestroyCacheView(ptr noundef %24) #18
  %26 = load ptr, ptr %18, align 8, !tbaa !44
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  store ptr %25, ptr %27, align 8, !tbaa !45
  %28 = icmp sgt i64 %20, 1
  br i1 %28, label %19, label %29, !llvm.loop !103

29:                                               ; preds = %19, %1
  %30 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = tail call ptr @RelinquishMagickMemory(ptr noundef %31) #18
  store ptr %32, ptr %30, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = tail call ptr @DestroyRandomInfo(ptr noundef %34) #18
  store ptr %35, ptr %33, align 8, !tbaa !64
  %36 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #18
  ret ptr %36
}

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @FxEvaluateExpression(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store double 0.000000e+00, ptr %4, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %6, ptr noundef nonnull %4, ptr noundef %2)
  store double %7, ptr %1, align 8, !tbaa !95
  %8 = load i32, ptr %2, align 8, !tbaa !104
  %9 = icmp ne i32 %8, 410
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FxEvaluateChannelExpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store double 0.000000e+00, ptr %7, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %9, ptr noundef nonnull %7, ptr noundef %5)
  store double %10, ptr %4, align 8, !tbaa !95
  %11 = load i32, ptr %5, align 8, !tbaa !104
  %12 = icmp ne i32 %11, 410
  %13 = zext i1 %12 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FxPreprocessExpression(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  %5 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr null, ptr %5, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store double 0.000000e+00, ptr %4, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %8, ptr noundef nonnull %4, ptr noundef %2)
  store double %9, ptr %1, align 8, !tbaa !95
  %10 = load i32, ptr %2, align 8, !tbaa !104
  %11 = icmp ne i32 %10, 410
  %12 = zext i1 %11 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  store ptr %6, ptr %5, align 8, !tbaa !66
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #18
  store double 0.000000e+00, ptr %5, align 8, !tbaa !95
  %11 = load i32, ptr %6, align 8, !tbaa !104
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %981

13:                                               ; preds = %7
  %14 = tail call ptr @__ctype_b_loc() #20
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %24, %16 ], [ %4, %13 ]
  %18 = load i8, ptr %17, align 1, !tbaa !67
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i16, ptr %15, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !78
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  br i1 %23, label %25, label %16, !llvm.loop !105

25:                                               ; preds = %16
  %26 = icmp eq i8 %18, 0
  br i1 %26, label %981, label %27

27:                                               ; preds = %25
  store i8 0, ptr %9, align 16, !tbaa !67
  %28 = load i8, ptr %17, align 1, !tbaa !67
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %193, label %30

30:                                               ; preds = %27, %186
  %31 = phi i8 [ %191, %186 ], [ %28, %27 ]
  %32 = phi i64 [ %97, %186 ], [ 0, %27 ]
  %33 = phi i32 [ %190, %186 ], [ 0, %27 ]
  %34 = phi ptr [ %161, %186 ], [ null, %27 ]
  %35 = phi i32 [ %156, %186 ], [ 1, %27 ]
  %36 = phi ptr [ %188, %186 ], [ %17, %27 ]
  %37 = load ptr, ptr %14, align 8, !tbaa !45
  %38 = icmp eq i32 %33, 64
  br label %39

39:                                               ; preds = %30, %48
  %40 = phi i8 [ %31, %30 ], [ %50, %48 ]
  %41 = phi ptr [ %36, %30 ], [ %49, %48 ]
  %42 = zext i8 %40 to i64
  %43 = getelementptr inbounds i16, ptr %37, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !78
  %45 = and i16 %44, 8192
  %46 = icmp ne i16 %45, 0
  %47 = select i1 %46, i1 true, i1 %38
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = getelementptr inbounds i8, ptr %41, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !67
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %193, label %39, !llvm.loop !106

52:                                               ; preds = %39
  switch i8 %40, label %90 [
    i8 65, label %53
    i8 97, label %53
    i8 74, label %73
    i8 106, label %73
    i8 35, label %81
  ]

53:                                               ; preds = %52, %52
  %54 = tail call i32 @LocaleNCompare(ptr noundef nonnull %41, ptr noundef nonnull @.str.60, i64 noundef 5) #18
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %41, i64 5
  br label %90

58:                                               ; preds = %53
  %59 = tail call i32 @LocaleNCompare(ptr noundef nonnull %41, ptr noundef nonnull @.str.63, i64 noundef 5) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %41, i64 5
  br label %90

63:                                               ; preds = %58
  %64 = tail call i32 @LocaleNCompare(ptr noundef nonnull %41, ptr noundef nonnull @.str.67, i64 noundef 5) #18
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = getelementptr inbounds i8, ptr %41, i64 5
  br label %90

68:                                               ; preds = %63
  %69 = tail call i32 @LocaleNCompare(ptr noundef nonnull %41, ptr noundef nonnull @.str.66, i64 noundef 5) #18
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i64 5, i64 0
  %72 = getelementptr inbounds i8, ptr %41, i64 %71
  br label %90

73:                                               ; preds = %52, %52
  %74 = tail call i32 @LocaleNCompare(ptr noundef nonnull %41, ptr noundef nonnull @.str.103, i64 noundef 2) #18
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @LocaleNCompare(ptr noundef nonnull %41, ptr noundef nonnull @.str.104, i64 noundef 2) #18
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76, %73
  %80 = getelementptr inbounds i8, ptr %41, i64 2
  br label %90

81:                                               ; preds = %52, %81
  %82 = phi ptr [ %83, %81 ], [ %41, %52 ]
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !67
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds i16, ptr %37, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !78
  %88 = and i16 %87, 4096
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %81, !llvm.loop !107

90:                                               ; preds = %81, %79, %76, %68, %66, %61, %56, %52
  %91 = phi ptr [ %41, %52 ], [ %80, %79 ], [ %41, %76 ], [ %57, %56 ], [ %62, %61 ], [ %67, %66 ], [ %72, %68 ], [ %82, %81 ]
  %92 = and i32 %33, -33
  %93 = icmp eq i32 %92, 91
  %94 = icmp eq i32 %92, 93
  %95 = sext i1 %94 to i64
  %96 = select i1 %93, i64 1, i64 %95
  %97 = add i64 %96, %32
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %153

99:                                               ; preds = %90
  %100 = load i8, ptr %91, align 1, !tbaa !67
  switch i8 %100, label %102 [
    i8 126, label %153
    i8 33, label %153
    i8 94, label %101
    i8 64, label %101
    i8 42, label %129
    i8 47, label %129
    i8 37, label %129
    i8 43, label %130
    i8 45, label %130
    i8 -11, label %141
    i8 -10, label %141
    i8 60, label %142
    i8 -9, label %142
    i8 -8, label %142
    i8 62, label %142
    i8 -7, label %143
    i8 -6, label %143
    i8 38, label %144
    i8 124, label %145
    i8 -5, label %146
    i8 -4, label %147
    i8 -3, label %148
    i8 58, label %149
    i8 63, label %149
    i8 61, label %150
    i8 44, label %151
    i8 59, label %152
  ]

101:                                              ; preds = %99, %99
  br label %153

102:                                              ; preds = %99
  %103 = icmp eq i32 %33, 0
  br i1 %103, label %153, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %14, align 8, !tbaa !45
  %106 = and i32 %33, 255
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds i16, ptr %105, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !78
  %110 = and i16 %109, 2048
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = trunc i32 %33 to i8
  switch i8 %113, label %153 [
    i8 41, label %114
    i8 0, label %114
  ]

114:                                              ; preds = %112, %112, %104
  %115 = zext i8 %100 to i64
  %116 = getelementptr inbounds i16, ptr %105, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !78
  %118 = zext i16 %117 to i32
  %119 = and i32 %118, 512
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  switch i8 %100, label %122 [
    i8 0, label %153
    i8 40, label %128
  ]

122:                                              ; preds = %121
  %123 = icmp ne i16 %110, 0
  %124 = and i32 %118, 2048
  %125 = icmp eq i32 %124, 0
  %126 = or i1 %123, %125
  br i1 %126, label %153, label %127

127:                                              ; preds = %122, %114
  switch i8 %100, label %128 [
    i8 121, label %153
    i8 120, label %153
    i8 0, label %153
  ]

128:                                              ; preds = %121, %127
  br label %153

129:                                              ; preds = %99, %99, %99
  br label %153

130:                                              ; preds = %99, %99
  %131 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.151, i32 %33, i64 15)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %14, align 8, !tbaa !45
  %135 = sext i32 %33 to i64
  %136 = getelementptr inbounds i16, ptr %134, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !78
  %138 = and i16 %137, 1024
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %133, %130
  br label %153

141:                                              ; preds = %99, %99
  br label %153

142:                                              ; preds = %99, %99, %99, %99
  br label %153

143:                                              ; preds = %99, %99
  br label %153

144:                                              ; preds = %99
  br label %153

145:                                              ; preds = %99
  br label %153

146:                                              ; preds = %99
  br label %153

147:                                              ; preds = %99
  br label %153

148:                                              ; preds = %99
  br label %153

149:                                              ; preds = %99, %99
  br label %153

150:                                              ; preds = %99
  br label %153

151:                                              ; preds = %99
  br label %153

152:                                              ; preds = %99
  br label %153

153:                                              ; preds = %121, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %133, %129, %128, %127, %127, %127, %122, %112, %102, %101, %99, %99, %90
  %154 = phi i32 [ 5, %128 ], [ 0, %127 ], [ 0, %122 ], [ 0, %112 ], [ 0, %102 ], [ 17, %152 ], [ 16, %151 ], [ 15, %150 ], [ 14, %149 ], [ 4, %148 ], [ 13, %147 ], [ 12, %146 ], [ 11, %145 ], [ 10, %144 ], [ 9, %143 ], [ 8, %142 ], [ 7, %141 ], [ 6, %140 ], [ 0, %133 ], [ 5, %129 ], [ 3, %101 ], [ 0, %90 ], [ 2, %99 ], [ 2, %99 ], [ 0, %127 ], [ 0, %127 ], [ 0, %121 ]
  %155 = phi i1 [ false, %128 ], [ false, %127 ], [ false, %122 ], [ false, %112 ], [ false, %102 ], [ false, %152 ], [ false, %151 ], [ true, %150 ], [ true, %149 ], [ false, %148 ], [ false, %147 ], [ false, %146 ], [ false, %145 ], [ false, %144 ], [ false, %143 ], [ false, %142 ], [ false, %141 ], [ false, %140 ], [ false, %133 ], [ false, %129 ], [ false, %101 ], [ false, %90 ], [ true, %99 ], [ true, %99 ], [ false, %127 ], [ false, %127 ], [ false, %121 ]
  %156 = tail call i32 @llvm.umax.i32(i32 %154, i32 %35)
  %157 = icmp ugt i32 %154, %35
  %158 = select i1 %157, ptr %91, ptr %34
  %159 = icmp ult i32 %154, %35
  %160 = select i1 %159, ptr %34, ptr %91
  %161 = select i1 %155, ptr %158, ptr %160
  %162 = load i8, ptr %91, align 1, !tbaa !67
  switch i8 %162, label %186 [
    i8 40, label %163
    i8 0, label %163
  ]

163:                                              ; preds = %153, %153
  %164 = load i8, ptr %91, align 1, !tbaa !67
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %183, label %166

166:                                              ; preds = %163, %178
  %167 = phi i8 [ %181, %178 ], [ %164, %163 ]
  %168 = phi i64 [ %179, %178 ], [ 0, %163 ]
  %169 = phi ptr [ %180, %178 ], [ %91, %163 ]
  %170 = icmp eq i64 %168, 1
  %171 = icmp eq i8 %167, 41
  %172 = and i1 %170, %171
  br i1 %172, label %186, label %173

173:                                              ; preds = %166
  switch i8 %167, label %178 [
    i8 40, label %174
    i8 0, label %174
    i8 41, label %176
  ]

174:                                              ; preds = %173, %173
  %175 = add nsw i64 %168, 1
  br label %178

176:                                              ; preds = %173
  %177 = add nsw i64 %168, -1
  br label %178

178:                                              ; preds = %176, %174, %173
  %179 = phi i64 [ %175, %174 ], [ %177, %176 ], [ %168, %173 ]
  %180 = getelementptr inbounds i8, ptr %169, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !67
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %166, !llvm.loop !108

183:                                              ; preds = %178, %163
  %184 = phi ptr [ %91, %163 ], [ %180, %178 ]
  %185 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1297, i32 noundef 410, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.3, ptr noundef nonnull %91) #18
  br label %186

186:                                              ; preds = %166, %183, %153
  %187 = phi ptr [ %91, %153 ], [ %184, %183 ], [ %169, %166 ]
  %188 = getelementptr inbounds i8, ptr %187, i64 1
  %189 = load i8, ptr %187, align 1, !tbaa !67
  %190 = sext i8 %189 to i32
  %191 = load i8, ptr %188, align 1, !tbaa !67
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %30, !llvm.loop !106

193:                                              ; preds = %186, %48, %27
  %194 = phi ptr [ null, %27 ], [ %34, %48 ], [ %161, %186 ]
  %195 = icmp eq ptr %194, null
  br i1 %195, label %390, label %196

196:                                              ; preds = %193
  %197 = ptrtoint ptr %194 to i64
  %198 = ptrtoint ptr %17 to i64
  %199 = sub i64 %197, %198
  %200 = add i64 %199, 1
  %201 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef %17, i64 noundef %200) #18
  %202 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %203 = load i8, ptr %194, align 1, !tbaa !67
  switch i8 %203, label %387 [
    i8 126, label %204
    i8 33, label %210
    i8 94, label %215
    i8 42, label %219
    i8 -3, label %219
    i8 47, label %223
    i8 37, label %234
    i8 43, label %245
    i8 45, label %249
    i8 -11, label %253
    i8 -10, label %262
    i8 60, label %271
    i8 -9, label %276
    i8 62, label %281
    i8 -8, label %286
    i8 -7, label %291
    i8 -6, label %298
    i8 38, label %305
    i8 124, label %314
    i8 -5, label %323
    i8 -4, label %330
    i8 63, label %337
    i8 61, label %352
    i8 44, label %381
    i8 59, label %384
  ]

204:                                              ; preds = %196
  %205 = getelementptr inbounds i8, ptr %194, i64 1
  %206 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %205, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %207 = fptoui double %206 to i64
  %208 = xor i64 %207, -1
  %209 = uitofp i64 %208 to double
  store double %209, ptr %5, align 8, !tbaa !95
  br label %981

210:                                              ; preds = %196
  %211 = getelementptr inbounds i8, ptr %194, i64 1
  %212 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %211, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %212, ptr %5, align 8, !tbaa !95
  %213 = fcmp oeq double %212, 0.000000e+00
  %214 = select i1 %213, double 1.000000e+00, double 0.000000e+00
  br label %981

215:                                              ; preds = %196
  %216 = getelementptr inbounds i8, ptr %194, i64 1
  %217 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %216, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %218 = call double @pow(double noundef %202, double noundef %217) #18
  store double %218, ptr %5, align 8, !tbaa !95
  br label %981

219:                                              ; preds = %196, %196
  %220 = getelementptr inbounds i8, ptr %194, i64 1
  %221 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %220, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %221, ptr %5, align 8, !tbaa !95
  %222 = fmul double %202, %221
  br label %981

223:                                              ; preds = %196
  %224 = getelementptr inbounds i8, ptr %194, i64 1
  %225 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %224, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %225, ptr %5, align 8, !tbaa !95
  %226 = fcmp oeq double %225, 0.000000e+00
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load i32, ptr %6, align 8, !tbaa !104
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %981

230:                                              ; preds = %227
  %231 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2176, i32 noundef 410, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef %17) #18
  br label %981

232:                                              ; preds = %223
  %233 = fdiv double %202, %225
  br label %981

234:                                              ; preds = %196
  %235 = getelementptr inbounds i8, ptr %194, i64 1
  %236 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %235, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %237 = fadd double %236, 5.000000e-01
  %238 = call double @llvm.floor.f64(double %237)
  %239 = call double @llvm.fabs.f64(double %238)
  store double %239, ptr %5, align 8, !tbaa !95
  %240 = fcmp oeq double %238, 0.000000e+00
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2188, i32 noundef 410, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef %17) #18
  br label %981

243:                                              ; preds = %234
  %244 = call double @fmod(double noundef %202, double noundef %239) #18
  br label %981

245:                                              ; preds = %196
  %246 = getelementptr inbounds i8, ptr %194, i64 1
  %247 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %246, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %247, ptr %5, align 8, !tbaa !95
  %248 = fadd double %202, %247
  br label %981

249:                                              ; preds = %196
  %250 = getelementptr inbounds i8, ptr %194, i64 1
  %251 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %250, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %251, ptr %5, align 8, !tbaa !95
  %252 = fsub double %202, %251
  br label %981

253:                                              ; preds = %196
  %254 = getelementptr inbounds i8, ptr %194, i64 1
  %255 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %254, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %256 = fadd double %202, 5.000000e-01
  %257 = fptoui double %256 to i64
  %258 = fadd double %255, 5.000000e-01
  %259 = fptoui double %258 to i64
  %260 = shl i64 %257, %259
  %261 = uitofp i64 %260 to double
  store double %261, ptr %5, align 8, !tbaa !95
  br label %981

262:                                              ; preds = %196
  %263 = getelementptr inbounds i8, ptr %194, i64 1
  %264 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %263, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %265 = fadd double %202, 5.000000e-01
  %266 = fptoui double %265 to i64
  %267 = fadd double %264, 5.000000e-01
  %268 = fptoui double %267 to i64
  %269 = lshr i64 %266, %268
  %270 = uitofp i64 %269 to double
  store double %270, ptr %5, align 8, !tbaa !95
  br label %981

271:                                              ; preds = %196
  %272 = getelementptr inbounds i8, ptr %194, i64 1
  %273 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %272, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %273, ptr %5, align 8, !tbaa !95
  %274 = fcmp olt double %202, %273
  %275 = select i1 %274, double 1.000000e+00, double 0.000000e+00
  br label %981

276:                                              ; preds = %196
  %277 = getelementptr inbounds i8, ptr %194, i64 1
  %278 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %277, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %278, ptr %5, align 8, !tbaa !95
  %279 = fcmp ole double %202, %278
  %280 = select i1 %279, double 1.000000e+00, double 0.000000e+00
  br label %981

281:                                              ; preds = %196
  %282 = getelementptr inbounds i8, ptr %194, i64 1
  %283 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %282, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %283, ptr %5, align 8, !tbaa !95
  %284 = fcmp ogt double %202, %283
  %285 = select i1 %284, double 1.000000e+00, double 0.000000e+00
  br label %981

286:                                              ; preds = %196
  %287 = getelementptr inbounds i8, ptr %194, i64 1
  %288 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %287, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %288, ptr %5, align 8, !tbaa !95
  %289 = fcmp oge double %202, %288
  %290 = select i1 %289, double 1.000000e+00, double 0.000000e+00
  br label %981

291:                                              ; preds = %196
  %292 = getelementptr inbounds i8, ptr %194, i64 1
  %293 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %292, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %293, ptr %5, align 8, !tbaa !95
  %294 = fsub double %202, %293
  %295 = call double @llvm.fabs.f64(double %294)
  %296 = fcmp olt double %295, 1.000000e-15
  %297 = select i1 %296, double 1.000000e-15, double 0.000000e+00
  br label %981

298:                                              ; preds = %196
  %299 = getelementptr inbounds i8, ptr %194, i64 1
  %300 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %299, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %300, ptr %5, align 8, !tbaa !95
  %301 = fsub double %202, %300
  %302 = call double @llvm.fabs.f64(double %301)
  %303 = fcmp oge double %302, 1.000000e-15
  %304 = select i1 %303, double 1.000000e+00, double 0.000000e+00
  br label %981

305:                                              ; preds = %196
  %306 = getelementptr inbounds i8, ptr %194, i64 1
  %307 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %306, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %308 = fadd double %202, 5.000000e-01
  %309 = fptoui double %308 to i64
  %310 = fadd double %307, 5.000000e-01
  %311 = fptoui double %310 to i64
  %312 = and i64 %311, %309
  %313 = uitofp i64 %312 to double
  store double %313, ptr %5, align 8, !tbaa !95
  br label %981

314:                                              ; preds = %196
  %315 = getelementptr inbounds i8, ptr %194, i64 1
  %316 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %315, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %317 = fadd double %202, 5.000000e-01
  %318 = fptoui double %317 to i64
  %319 = fadd double %316, 5.000000e-01
  %320 = fptoui double %319 to i64
  %321 = or i64 %320, %318
  %322 = uitofp i64 %321 to double
  store double %322, ptr %5, align 8, !tbaa !95
  br label %981

323:                                              ; preds = %196
  %324 = getelementptr inbounds i8, ptr %194, i64 1
  %325 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %324, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %326 = fcmp ogt double %202, 0.000000e+00
  %327 = fcmp ogt double %325, 0.000000e+00
  %328 = select i1 %326, i1 %327, i1 false
  %329 = select i1 %328, double 1.000000e+00, double 0.000000e+00
  store double %329, ptr %5, align 8, !tbaa !95
  br label %981

330:                                              ; preds = %196
  %331 = getelementptr inbounds i8, ptr %194, i64 1
  %332 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %331, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %333 = fcmp ogt double %202, 0.000000e+00
  %334 = fcmp ogt double %332, 0.000000e+00
  %335 = select i1 %333, i1 true, i1 %334
  %336 = select i1 %335, double 1.000000e+00, double 0.000000e+00
  store double %336, ptr %5, align 8, !tbaa !95
  br label %981

337:                                              ; preds = %196
  %338 = getelementptr inbounds i8, ptr %194, i64 1
  %339 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %338, i64 noundef 4096) #18
  store ptr %9, ptr %8, align 8, !tbaa !45
  %340 = call ptr @StringToken(ptr noundef nonnull @.str.55, ptr noundef nonnull %8) #18
  %341 = load ptr, ptr %8, align 8, !tbaa !45
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %345

343:                                              ; preds = %337
  %344 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2280, i32 noundef 410, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #18
  br label %981

345:                                              ; preds = %337
  %346 = call double @llvm.fabs.f64(double %202)
  %347 = fcmp ult double %346, 1.000000e-15
  br i1 %347, label %350, label %348

348:                                              ; preds = %345
  %349 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %340, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %981

350:                                              ; preds = %345
  %351 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %341, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %981

352:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #18
  br label %353

353:                                              ; preds = %353, %352
  %354 = phi ptr [ %9, %352 ], [ %362, %353 ]
  store ptr %354, ptr %8, align 8, !tbaa !45
  %355 = load ptr, ptr %14, align 8, !tbaa !45
  %356 = load i8, ptr %354, align 1, !tbaa !67
  %357 = zext i8 %356 to i64
  %358 = getelementptr inbounds i16, ptr %355, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !78
  %360 = and i16 %359, 1024
  %361 = icmp eq i16 %360, 0
  %362 = getelementptr inbounds i8, ptr %354, i64 1
  br i1 %361, label %363, label %353, !llvm.loop !109

363:                                              ; preds = %353
  %364 = icmp eq i8 %356, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %363
  %366 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2300, i32 noundef 410, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #18
  br label %379

367:                                              ; preds = %363
  call void @ClearMagickException(ptr noundef nonnull %6) #18
  %368 = getelementptr inbounds i8, ptr %194, i64 1
  %369 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %368, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %369, ptr %5, align 8, !tbaa !95
  %370 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %10, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %369) #18
  %371 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %372 = load ptr, ptr %371, align 8, !tbaa !43
  %373 = call i32 @DeleteNodeFromSplayTree(ptr noundef %372, ptr noundef nonnull %9) #18
  %374 = load ptr, ptr %371, align 8, !tbaa !43
  %375 = call ptr @ConstantString(ptr noundef nonnull %9) #18
  %376 = call ptr @ConstantString(ptr noundef nonnull %10) #18
  %377 = call i32 @AddValueToSplayTree(ptr noundef %374, ptr noundef %375, ptr noundef %376) #18
  %378 = load double, ptr %5, align 8, !tbaa !95
  br label %379

379:                                              ; preds = %367, %365
  %380 = phi double [ 0.000000e+00, %365 ], [ %378, %367 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #18
  br label %981

381:                                              ; preds = %196
  %382 = getelementptr inbounds i8, ptr %194, i64 1
  %383 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %382, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %383, ptr %5, align 8, !tbaa !95
  br label %981

384:                                              ; preds = %196
  %385 = getelementptr inbounds i8, ptr %194, i64 1
  %386 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %385, ptr noundef nonnull %5, ptr noundef nonnull %6)
  store double %386, ptr %5, align 8, !tbaa !95
  br label %981

387:                                              ; preds = %196
  %388 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %194, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %389 = fmul double %202, %388
  br label %981

390:                                              ; preds = %193
  %391 = load i8, ptr %17, align 1, !tbaa !67
  switch i8 %391, label %975 [
    i8 40, label %392
    i8 0, label %392
    i8 43, label %399
    i8 45, label %402
    i8 126, label %406
    i8 65, label %413
    i8 97, label %413
    i8 66, label %498
    i8 98, label %498
    i8 67, label %503
    i8 99, label %503
    i8 68, label %529
    i8 100, label %529
    i8 69, label %582
    i8 101, label %582
    i8 70, label %595
    i8 102, label %595
    i8 71, label %602
    i8 103, label %602
    i8 72, label %631
    i8 104, label %631
    i8 75, label %649
    i8 107, label %649
    i8 73, label %654
    i8 105, label %654
    i8 74, label %679
    i8 106, label %679
    i8 76, label %710
    i8 108, label %710
    i8 77, label %737
    i8 109, label %737
    i8 78, label %780
    i8 110, label %780
    i8 79, label %793
    i8 111, label %793
    i8 80, label %801
    i8 112, label %801
    i8 81, label %820
    i8 113, label %820
    i8 82, label %826
    i8 114, label %826
    i8 83, label %846
    i8 115, label %846
    i8 84, label %906
    i8 116, label %906
    i8 85, label %939
    i8 117, label %939
    i8 86, label %944
    i8 118, label %944
    i8 87, label %949
    i8 119, label %949
    i8 89, label %965
    i8 121, label %965
    i8 90, label %970
    i8 122, label %970
  ]

392:                                              ; preds = %390, %390
  %393 = getelementptr inbounds i8, ptr %17, i64 1
  %394 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %393, i64 noundef 4096) #18
  %395 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #24
  %396 = add i64 %395, -1
  %397 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 %396
  store i8 0, ptr %397, align 1, !tbaa !67
  %398 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %981

399:                                              ; preds = %390
  %400 = getelementptr inbounds i8, ptr %17, i64 1
  %401 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %400, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %981

402:                                              ; preds = %390
  %403 = getelementptr inbounds i8, ptr %17, i64 1
  %404 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %403, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %405 = fneg double %404
  br label %981

406:                                              ; preds = %390
  %407 = getelementptr inbounds i8, ptr %17, i64 1
  %408 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %407, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %409 = fadd double %408, 5.000000e-01
  %410 = fptoui double %409 to i64
  %411 = xor i64 %410, -1
  %412 = uitofp i64 %411 to double
  br label %981

413:                                              ; preds = %390, %390
  %414 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.59, i64 noundef 3) #18
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %413
  %417 = getelementptr inbounds i8, ptr %17, i64 3
  %418 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %417, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %419 = tail call double @llvm.fabs.f64(double %418)
  br label %981

420:                                              ; preds = %413
  %421 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.60, i64 noundef 5) #18
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %17, i64 5
  %425 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %424, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %426 = tail call double @acosh(double noundef %425) #18
  br label %981

427:                                              ; preds = %420
  %428 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.61, i64 noundef 4) #18
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %427
  %431 = getelementptr inbounds i8, ptr %17, i64 4
  %432 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %431, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %433 = tail call double @acos(double noundef %432) #18
  br label %981

434:                                              ; preds = %427
  %435 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.62, i64 noundef 4) #18
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %447

437:                                              ; preds = %434
  %438 = getelementptr inbounds i8, ptr %17, i64 4
  %439 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %438, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %440 = fcmp oeq double %439, 0.000000e+00
  br i1 %440, label %981, label %441

441:                                              ; preds = %437
  %442 = fmul double %439, 0x400921FB54442D18
  %443 = tail call double @j1(double noundef %442) #18
  %444 = fmul double %443, 2.000000e+00
  %445 = fdiv double %444, %442
  %446 = fmul double %445, %445
  br label %981

447:                                              ; preds = %434
  %448 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.63, i64 noundef 5) #18
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %447
  %451 = getelementptr inbounds i8, ptr %17, i64 5
  %452 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %451, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %453 = tail call double @asinh(double noundef %452) #18
  br label %981

454:                                              ; preds = %447
  %455 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.64, i64 noundef 4) #18
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, ptr %17, i64 4
  %459 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %458, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %460 = tail call double @asin(double noundef %459) #18
  br label %981

461:                                              ; preds = %454
  %462 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.65, i64 noundef 3) #18
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %471

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %17, i64 3
  %466 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %465, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %467 = fptosi double %466 to i64
  %468 = and i64 %467, 1
  %469 = icmp eq i64 %468, 0
  %470 = select i1 %469, double 1.000000e+00, double -1.000000e+00
  br label %981

471:                                              ; preds = %461
  %472 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.66, i64 noundef 5) #18
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %471
  %475 = getelementptr inbounds i8, ptr %17, i64 5
  %476 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %475, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %477 = load double, ptr %5, align 8, !tbaa !95
  %478 = tail call double @atan2(double noundef %476, double noundef %477) #18
  br label %981

479:                                              ; preds = %471
  %480 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.67, i64 noundef 5) #18
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %486

482:                                              ; preds = %479
  %483 = getelementptr inbounds i8, ptr %17, i64 5
  %484 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %483, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %485 = tail call double @atanh(double noundef %484) #18
  br label %981

486:                                              ; preds = %479
  %487 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.68, i64 noundef 4) #18
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %493

489:                                              ; preds = %486
  %490 = getelementptr inbounds i8, ptr %17, i64 4
  %491 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %490, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %492 = tail call double @atan(double noundef %491) #18
  br label %981

493:                                              ; preds = %486
  %494 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.69) #18
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %975

496:                                              ; preds = %493
  %497 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

498:                                              ; preds = %390, %390
  %499 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.70) #18
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %975

501:                                              ; preds = %498
  %502 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

503:                                              ; preds = %390, %390
  %504 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.71, i64 noundef 4) #18
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %510

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %17, i64 4
  %508 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %507, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %509 = tail call double @llvm.ceil.f64(double %508)
  br label %981

510:                                              ; preds = %503
  %511 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.72, i64 noundef 4) #18
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %510
  %514 = getelementptr inbounds i8, ptr %17, i64 4
  %515 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %514, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %516 = tail call double @cosh(double noundef %515) #18
  br label %981

517:                                              ; preds = %510
  %518 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.73, i64 noundef 3) #18
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %524

520:                                              ; preds = %517
  %521 = getelementptr inbounds i8, ptr %17, i64 3
  %522 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %521, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %523 = tail call double @cos(double noundef %522) #18
  br label %981

524:                                              ; preds = %517
  %525 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.74) #18
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %975

527:                                              ; preds = %524
  %528 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

529:                                              ; preds = %390, %390
  %530 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.75, i64 noundef 5) #18
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %572

532:                                              ; preds = %529
  %533 = getelementptr inbounds i8, ptr %17, i64 5
  %534 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %533, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %535 = load ptr, ptr %0, align 8, !tbaa !41
  %536 = getelementptr inbounds %struct._Image, ptr %535, i64 0, i32 1
  %537 = load i32, ptr %536, align 4, !tbaa !74
  %538 = icmp eq i32 %537, 12
  br i1 %538, label %539, label %545

539:                                              ; preds = %532
  switch i32 %1, label %544 [
    i32 1, label %552
    i32 2, label %540
    i32 4, label %541
    i32 8, label %542
    i32 32, label %543
  ]

540:                                              ; preds = %539
  br label %552

541:                                              ; preds = %539
  br label %552

542:                                              ; preds = %539
  br label %552

543:                                              ; preds = %539
  br label %552

544:                                              ; preds = %539
  br label %552

545:                                              ; preds = %532
  %546 = add i32 %1, -1
  %547 = icmp ult i32 %546, 8
  br i1 %547, label %548, label %552

548:                                              ; preds = %545
  %549 = zext nneg i32 %546 to i64
  %550 = shl i64 %549, 2
  %551 = call ptr @llvm.load.relative.i64(ptr @reltable.FxEvaluateSubexpression, i64 %550)
  br label %552

552:                                              ; preds = %545, %548, %539, %540, %541, %542, %543, %544
  %553 = phi ptr [ @.str.81, %544 ], [ @.str.80, %543 ], [ @.str.79, %542 ], [ @.str.78, %541 ], [ @.str.77, %540 ], [ @.str.76, %539 ], [ %551, %548 ], [ @.str.81, %545 ]
  %554 = getelementptr inbounds i8, ptr %17, i64 6
  %555 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %554, i64 noundef 4096) #18
  %556 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #24
  %557 = icmp ugt i64 %556, 1
  br i1 %557, label %558, label %561

558:                                              ; preds = %552
  %559 = add i64 %556, -1
  %560 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 %559
  store i8 0, ptr %560, align 1, !tbaa !67
  br label %561

561:                                              ; preds = %558, %552
  %562 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 2
  %563 = load ptr, ptr %562, align 8, !tbaa !66
  %564 = icmp eq ptr %563, null
  br i1 %564, label %981, label %565

565:                                              ; preds = %561
  %566 = load ptr, ptr %0, align 8, !tbaa !41
  %567 = getelementptr inbounds %struct._Image, ptr %566, i64 0, i32 53
  %568 = sitofp i64 %2 to double
  %569 = sitofp i64 %3 to double
  %570 = call i32 @GetMagickPrecision() #18
  %571 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %563, ptr noundef nonnull @.str.85, ptr noundef nonnull %567, double noundef %568, double noundef %569, ptr noundef nonnull %553, ptr noundef nonnull %9, i32 noundef %570, double noundef %534) #18
  br label %981

572:                                              ; preds = %529
  %573 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.86, i64 noundef 3) #18
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %975

575:                                              ; preds = %572
  %576 = getelementptr inbounds i8, ptr %17, i64 3
  %577 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %576, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %578 = load double, ptr %5, align 8, !tbaa !95
  %579 = fadd double %577, -1.000000e+00
  %580 = tail call double @llvm.fmuladd.f64(double %578, double %579, double 1.000000e+00)
  %581 = fdiv double %577, %580
  br label %981

582:                                              ; preds = %390, %390
  %583 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.87) #18
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %981, label %585

585:                                              ; preds = %582
  %586 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.88, i64 noundef 3) #18
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %592

588:                                              ; preds = %585
  %589 = getelementptr inbounds i8, ptr %17, i64 3
  %590 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %589, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %591 = tail call double @exp(double noundef %590) #18
  br label %981

592:                                              ; preds = %585
  %593 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.89) #18
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %981, label %975

595:                                              ; preds = %390, %390
  %596 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.90, i64 noundef 5) #18
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %975

598:                                              ; preds = %595
  %599 = getelementptr inbounds i8, ptr %17, i64 5
  %600 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %599, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %601 = tail call double @llvm.floor.f64(double %600)
  br label %981

602:                                              ; preds = %390, %390
  %603 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.91, i64 noundef 5) #18
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %613

605:                                              ; preds = %602
  %606 = getelementptr inbounds i8, ptr %17, i64 5
  %607 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %606, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %608 = fneg double %607
  %609 = fmul double %607, %608
  %610 = fmul double %609, 5.000000e-01
  %611 = tail call double @exp(double noundef %610) #18
  %612 = fdiv double %611, 0x40040D931FF62705
  br label %981

613:                                              ; preds = %602
  %614 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.92, i64 noundef 3) #18
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %626

616:                                              ; preds = %613
  %617 = getelementptr inbounds i8, ptr %17, i64 3
  %618 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %617, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %619 = fadd double %618, 5.000000e-01
  %620 = fptosi double %619 to i64
  %621 = load double, ptr %5, align 8, !tbaa !95
  %622 = fadd double %621, 5.000000e-01
  %623 = fptosi double %622 to i64
  %624 = tail call fastcc i64 @FxGCD(i64 noundef %620, i64 noundef %623)
  %625 = sitofp i64 %624 to double
  br label %981

626:                                              ; preds = %613
  %627 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.93) #18
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %975

629:                                              ; preds = %626
  %630 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

631:                                              ; preds = %390, %390
  %632 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.94) #18
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %636

634:                                              ; preds = %631
  %635 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

636:                                              ; preds = %631
  %637 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.95) #18
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %641

639:                                              ; preds = %636
  %640 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

641:                                              ; preds = %636
  %642 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.96, i64 noundef 5) #18
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %975

644:                                              ; preds = %641
  %645 = getelementptr inbounds i8, ptr %17, i64 5
  %646 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %645, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %647 = load double, ptr %5, align 8, !tbaa !95
  %648 = tail call double @hypot(double noundef %646, double noundef %647) #18
  br label %981

649:                                              ; preds = %390, %390
  %650 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.97) #18
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %975

652:                                              ; preds = %649
  %653 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

654:                                              ; preds = %390, %390
  %655 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.98) #18
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %659

657:                                              ; preds = %654
  %658 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

659:                                              ; preds = %654
  %660 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.99, i64 noundef 3) #18
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %666

662:                                              ; preds = %659
  %663 = getelementptr inbounds i8, ptr %17, i64 3
  %664 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %663, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %665 = tail call double @llvm.floor.f64(double %664)
  br label %981

666:                                              ; preds = %659
  %667 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.100, i64 noundef 5) #18
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %674

669:                                              ; preds = %666
  %670 = getelementptr inbounds i8, ptr %17, i64 5
  %671 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %670, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %672 = fcmp uno double %671, 0.000000e+00
  %673 = uitofp i1 %672 to double
  br label %981

674:                                              ; preds = %666
  %675 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.101) #18
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %975

677:                                              ; preds = %674
  %678 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

679:                                              ; preds = %390, %390
  %680 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.102) #18
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %682, label %684

682:                                              ; preds = %679
  %683 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

684:                                              ; preds = %679
  %685 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.103, i64 noundef 2) #18
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %691

687:                                              ; preds = %684
  %688 = getelementptr inbounds i8, ptr %17, i64 2
  %689 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %688, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %690 = tail call double @j0(double noundef %689) #18
  br label %981

691:                                              ; preds = %684
  %692 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.104, i64 noundef 2) #18
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %698

694:                                              ; preds = %691
  %695 = getelementptr inbounds i8, ptr %17, i64 2
  %696 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %695, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %697 = tail call double @j1(double noundef %696) #18
  br label %981

698:                                              ; preds = %691
  %699 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.105, i64 noundef 4) #18
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %975

701:                                              ; preds = %698
  %702 = getelementptr inbounds i8, ptr %17, i64 4
  %703 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %702, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %704 = fcmp oeq double %703, 0.000000e+00
  br i1 %704, label %981, label %705

705:                                              ; preds = %701
  %706 = fmul double %703, 0x400921FB54442D18
  %707 = tail call double @j1(double noundef %706) #18
  %708 = fmul double %707, 2.000000e+00
  %709 = fdiv double %708, %706
  br label %981

710:                                              ; preds = %390, %390
  %711 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.106, i64 noundef 2) #18
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %717

713:                                              ; preds = %710
  %714 = getelementptr inbounds i8, ptr %17, i64 2
  %715 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %714, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %716 = tail call double @log(double noundef %715) #18
  br label %981

717:                                              ; preds = %710
  %718 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.107, i64 noundef 6) #18
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %725

720:                                              ; preds = %717
  %721 = getelementptr inbounds i8, ptr %17, i64 6
  %722 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %721, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %723 = tail call double @log10(double noundef %722) #18
  %724 = fdiv double %723, 0x3FD34413509F79FF
  br label %981

725:                                              ; preds = %717
  %726 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.108, i64 noundef 3) #18
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %732

728:                                              ; preds = %725
  %729 = getelementptr inbounds i8, ptr %17, i64 3
  %730 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %729, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %731 = tail call double @log10(double noundef %730) #18
  br label %981

732:                                              ; preds = %725
  %733 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.109) #18
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %975

735:                                              ; preds = %732
  %736 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

737:                                              ; preds = %390, %390
  %738 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.110) #18
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %981, label %740

740:                                              ; preds = %737
  %741 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.111, i64 noundef 6) #18
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %975, label %743

743:                                              ; preds = %740
  %744 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.112, i64 noundef 3) #18
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %752

746:                                              ; preds = %743
  %747 = getelementptr inbounds i8, ptr %17, i64 3
  %748 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %747, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %749 = load double, ptr %5, align 8, !tbaa !95
  %750 = fcmp ogt double %748, %749
  %751 = select i1 %750, double %748, double %749
  br label %981

752:                                              ; preds = %743
  %753 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.113, i64 noundef 6) #18
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %975, label %755

755:                                              ; preds = %752
  %756 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.114, i64 noundef 3) #18
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %764

758:                                              ; preds = %755
  %759 = getelementptr inbounds i8, ptr %17, i64 3
  %760 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %759, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %761 = load double, ptr %5, align 8, !tbaa !95
  %762 = fcmp olt double %760, %761
  %763 = select i1 %762, double %760, double %761
  br label %981

764:                                              ; preds = %755
  %765 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.115, i64 noundef 3) #18
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %775

767:                                              ; preds = %764
  %768 = getelementptr inbounds i8, ptr %17, i64 3
  %769 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %768, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %770 = load double, ptr %5, align 8, !tbaa !95
  %771 = fdiv double %769, %770
  %772 = tail call double @llvm.floor.f64(double %771)
  %773 = fneg double %772
  %774 = tail call double @llvm.fmuladd.f64(double %773, double %770, double %769)
  br label %981

775:                                              ; preds = %764
  %776 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.116) #18
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %975

778:                                              ; preds = %775
  %779 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

780:                                              ; preds = %390, %390
  %781 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.117, i64 noundef 3) #18
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %788

783:                                              ; preds = %780
  %784 = getelementptr inbounds i8, ptr %17, i64 3
  %785 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %784, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %786 = fcmp olt double %785, 1.000000e-15
  %787 = uitofp i1 %786 to double
  br label %981

788:                                              ; preds = %780
  %789 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.118) #18
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %975

791:                                              ; preds = %788
  %792 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

793:                                              ; preds = %390, %390
  %794 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.119) #18
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %981, label %796

796:                                              ; preds = %793
  %797 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.120) #18
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %975

799:                                              ; preds = %796
  %800 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

801:                                              ; preds = %390, %390
  %802 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.121) #18
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %981, label %804

804:                                              ; preds = %801
  %805 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.122) #18
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %981, label %807

807:                                              ; preds = %804
  %808 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.123, i64 noundef 3) #18
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %815

810:                                              ; preds = %807
  %811 = getelementptr inbounds i8, ptr %17, i64 3
  %812 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %811, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %813 = load double, ptr %5, align 8, !tbaa !95
  %814 = tail call double @pow(double noundef %812, double noundef %813) #18
  br label %981

815:                                              ; preds = %807
  %816 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.124) #18
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %975

818:                                              ; preds = %815
  %819 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

820:                                              ; preds = %390, %390
  %821 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.125) #18
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %981, label %823

823:                                              ; preds = %820
  %824 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.126) #18
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %981, label %975

826:                                              ; preds = %390, %390
  %827 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.127, i64 noundef 4) #18
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %833

829:                                              ; preds = %826
  %830 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 6
  %831 = load ptr, ptr %830, align 8, !tbaa !64
  %832 = tail call double @GetPseudoRandomValue(ptr noundef %831) #18
  br label %981

833:                                              ; preds = %826
  %834 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.128, i64 noundef 5) #18
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %841

836:                                              ; preds = %833
  %837 = getelementptr inbounds i8, ptr %17, i64 5
  %838 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %837, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %839 = fadd double %838, 5.000000e-01
  %840 = tail call double @llvm.floor.f64(double %839)
  br label %981

841:                                              ; preds = %833
  %842 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.129) #18
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %975

844:                                              ; preds = %841
  %845 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

846:                                              ; preds = %390, %390
  %847 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.130) #18
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %851

849:                                              ; preds = %846
  %850 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

851:                                              ; preds = %846
  %852 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.131, i64 noundef 4) #18
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %859

854:                                              ; preds = %851
  %855 = getelementptr inbounds i8, ptr %17, i64 4
  %856 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %855, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %857 = fcmp olt double %856, 0.000000e+00
  %858 = select i1 %857, double -1.000000e+00, double 1.000000e+00
  br label %981

859:                                              ; preds = %851
  %860 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.132, i64 noundef 4) #18
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %870

862:                                              ; preds = %859
  %863 = getelementptr inbounds i8, ptr %17, i64 4
  %864 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %863, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %865 = fcmp oeq double %864, 0.000000e+00
  br i1 %865, label %981, label %866

866:                                              ; preds = %862
  %867 = fmul double %864, 0x400921FB54442D18
  %868 = tail call double @sin(double noundef %867) #18
  %869 = fdiv double %868, %867
  br label %981

870:                                              ; preds = %859
  %871 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.133, i64 noundef 4) #18
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %877

873:                                              ; preds = %870
  %874 = getelementptr inbounds i8, ptr %17, i64 4
  %875 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %874, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %876 = tail call double @sinh(double noundef %875) #18
  br label %981

877:                                              ; preds = %870
  %878 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.134, i64 noundef 3) #18
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %880, label %884

880:                                              ; preds = %877
  %881 = getelementptr inbounds i8, ptr %17, i64 3
  %882 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %881, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %883 = tail call double @sin(double noundef %882) #18
  br label %981

884:                                              ; preds = %877
  %885 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.135, i64 noundef 4) #18
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %887, label %891

887:                                              ; preds = %884
  %888 = getelementptr inbounds i8, ptr %17, i64 4
  %889 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %888, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %890 = tail call double @sqrt(double noundef %889) #18
  br label %981

891:                                              ; preds = %884
  %892 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.136, i64 noundef 6) #18
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %901

894:                                              ; preds = %891
  %895 = getelementptr inbounds i8, ptr %17, i64 6
  %896 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %895, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %897 = fneg double %896
  %898 = tail call double @exp(double noundef %897) #18
  %899 = fadd double %898, 1.000000e+00
  %900 = fdiv double 1.000000e+00, %899
  br label %981

901:                                              ; preds = %891
  %902 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.137) #18
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %975

904:                                              ; preds = %901
  %905 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

906:                                              ; preds = %390, %390
  %907 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.138, i64 noundef 4) #18
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %913

909:                                              ; preds = %906
  %910 = getelementptr inbounds i8, ptr %17, i64 4
  %911 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %910, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %912 = tail call double @tanh(double noundef %911) #18
  br label %981

913:                                              ; preds = %906
  %914 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.139, i64 noundef 3) #18
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %920

916:                                              ; preds = %913
  %917 = getelementptr inbounds i8, ptr %17, i64 3
  %918 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %917, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %919 = tail call double @tan(double noundef %918) #18
  br label %981

920:                                              ; preds = %913
  %921 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.140) #18
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %981, label %923

923:                                              ; preds = %920
  %924 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.141, i64 noundef 5) #18
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %934

926:                                              ; preds = %923
  %927 = getelementptr inbounds i8, ptr %17, i64 5
  %928 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %927, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %929 = fcmp ult double %928, 0.000000e+00
  br i1 %929, label %932, label %930

930:                                              ; preds = %926
  %931 = tail call double @llvm.floor.f64(double %928)
  br label %981

932:                                              ; preds = %926
  %933 = tail call double @llvm.ceil.f64(double %928)
  br label %981

934:                                              ; preds = %923
  %935 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.142) #18
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %975

937:                                              ; preds = %934
  %938 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

939:                                              ; preds = %390, %390
  %940 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.143) #18
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %975

942:                                              ; preds = %939
  %943 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

944:                                              ; preds = %390, %390
  %945 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.144) #18
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %975

947:                                              ; preds = %944
  %948 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

949:                                              ; preds = %390, %390
  %950 = tail call i32 @LocaleNCompare(ptr noundef %17, ptr noundef nonnull @.str.145, i64 noundef 5) #18
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %960

952:                                              ; preds = %949
  %953 = getelementptr inbounds i8, ptr %17, i64 5
  br label %954

954:                                              ; preds = %952, %954
  %955 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %953, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %956 = tail call double @llvm.fabs.f64(double %955)
  %957 = fcmp ult double %956, 1.000000e-15
  br i1 %957, label %958, label %954, !llvm.loop !110

958:                                              ; preds = %954
  %959 = load double, ptr %5, align 8, !tbaa !95
  br label %981

960:                                              ; preds = %949
  %961 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.146) #18
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %975

963:                                              ; preds = %960
  %964 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

965:                                              ; preds = %390, %390
  %966 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.147) #18
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %968, label %975

968:                                              ; preds = %965
  %969 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

970:                                              ; preds = %390, %390
  %971 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull @.str.148) #18
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %975

973:                                              ; preds = %970
  %974 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

975:                                              ; preds = %390, %970, %965, %960, %944, %939, %934, %901, %841, %823, %815, %796, %788, %775, %752, %740, %732, %698, %674, %649, %641, %626, %595, %592, %572, %524, %498, %493
  store ptr %17, ptr %8, align 8, !tbaa !45
  %976 = call double @InterpretSiPrefixValue(ptr noundef %17, ptr noundef nonnull %8) #18
  %977 = load ptr, ptr %8, align 8, !tbaa !45
  %978 = icmp eq ptr %977, %17
  br i1 %978, label %979, label %981

979:                                              ; preds = %975
  %980 = call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %17, ptr noundef nonnull %6)
  br label %981

981:                                              ; preds = %975, %920, %862, %823, %820, %804, %801, %793, %737, %701, %592, %582, %561, %565, %437, %343, %350, %348, %227, %230, %25, %7, %979, %973, %968, %963, %958, %947, %942, %937, %932, %930, %916, %909, %904, %894, %887, %880, %873, %866, %854, %849, %844, %836, %829, %818, %810, %799, %791, %783, %778, %767, %758, %746, %735, %728, %720, %713, %705, %694, %687, %682, %677, %669, %662, %657, %652, %644, %639, %634, %629, %616, %605, %598, %588, %575, %527, %520, %513, %506, %501, %496, %489, %482, %474, %464, %457, %450, %441, %430, %423, %416, %406, %402, %399, %392, %387, %384, %381, %379, %330, %323, %314, %305, %298, %291, %286, %281, %276, %271, %262, %253, %249, %245, %243, %241, %232, %219, %215, %210, %204
  %982 = phi double [ %389, %387 ], [ %386, %384 ], [ %202, %381 ], [ %380, %379 ], [ %336, %330 ], [ %329, %323 ], [ %322, %314 ], [ %313, %305 ], [ %304, %298 ], [ %297, %291 ], [ %290, %286 ], [ %285, %281 ], [ %280, %276 ], [ %275, %271 ], [ %270, %262 ], [ %261, %253 ], [ %252, %249 ], [ %248, %245 ], [ 0.000000e+00, %241 ], [ %244, %243 ], [ %233, %232 ], [ %222, %219 ], [ %218, %215 ], [ %214, %210 ], [ %209, %204 ], [ %398, %392 ], [ %980, %979 ], [ %974, %973 ], [ %969, %968 ], [ %959, %958 ], [ %964, %963 ], [ %948, %947 ], [ %943, %942 ], [ %912, %909 ], [ %919, %916 ], [ %931, %930 ], [ %933, %932 ], [ %938, %937 ], [ %850, %849 ], [ %858, %854 ], [ %869, %866 ], [ %876, %873 ], [ %883, %880 ], [ %890, %887 ], [ %900, %894 ], [ %905, %904 ], [ %832, %829 ], [ %840, %836 ], [ %845, %844 ], [ %814, %810 ], [ %819, %818 ], [ %800, %799 ], [ %787, %783 ], [ %792, %791 ], [ %751, %746 ], [ %763, %758 ], [ %774, %767 ], [ %779, %778 ], [ %716, %713 ], [ %724, %720 ], [ %731, %728 ], [ %736, %735 ], [ %683, %682 ], [ %690, %687 ], [ %697, %694 ], [ %709, %705 ], [ %658, %657 ], [ %665, %662 ], [ %673, %669 ], [ %678, %677 ], [ %653, %652 ], [ %635, %634 ], [ %640, %639 ], [ %648, %644 ], [ %612, %605 ], [ %625, %616 ], [ %630, %629 ], [ %601, %598 ], [ %591, %588 ], [ %581, %575 ], [ %509, %506 ], [ %516, %513 ], [ %523, %520 ], [ %528, %527 ], [ %502, %501 ], [ %419, %416 ], [ %426, %423 ], [ %433, %430 ], [ %446, %441 ], [ %453, %450 ], [ %460, %457 ], [ %470, %464 ], [ %478, %474 ], [ %485, %482 ], [ %492, %489 ], [ %497, %496 ], [ %412, %406 ], [ %405, %402 ], [ %401, %399 ], [ 0.000000e+00, %7 ], [ 0.000000e+00, %25 ], [ 0.000000e+00, %230 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %343 ], [ %349, %348 ], [ %351, %350 ], [ 1.000000e+00, %437 ], [ 0.000000e+00, %565 ], [ 0.000000e+00, %561 ], [ 1.000000e-15, %582 ], [ 0x4005BF0A8B145769, %592 ], [ 1.000000e+00, %701 ], [ 6.553500e+04, %737 ], [ 1.000000e+00, %793 ], [ 0x3FF9E3779B97F4A8, %801 ], [ 0x400921FB54442D18, %804 ], [ 6.553500e+04, %820 ], [ 0x3EF0001000100010, %823 ], [ 1.000000e+00, %862 ], [ 0.000000e+00, %920 ], [ %976, %975 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret double %982
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FxImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @FxImageChannel(ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FxImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3066, ptr noundef nonnull @.str.22, ptr noundef nonnull %16) #18
  br label %18

18:                                               ; preds = %15, %4
  %19 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %20 = tail call ptr @AcquireQuantumMemory(i64 noundef %19, i64 noundef 8) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3003, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %23) #18
  br label %71

25:                                               ; preds = %18
  %26 = shl i64 %19, 3
  %27 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %20, i32 noundef 0, i64 noundef %26) #18
  %28 = load i8, ptr %2, align 1, !tbaa !67
  %29 = icmp eq i8 %28, 64
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @ConstantString(ptr noundef nonnull %2) #18
  br label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = tail call ptr @FileToString(ptr noundef nonnull %33, i64 noundef -1, ptr noundef %3) #18
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi ptr [ %31, %30 ], [ %34, %32 ]
  %37 = icmp sgt i64 %19, 0
  br i1 %37, label %41, label %69

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, %19
  br i1 %40, label %69, label %41, !llvm.loop !111

41:                                               ; preds = %35, %38
  %42 = phi i64 [ %39, %38 ], [ 0, %35 ]
  %43 = call ptr @AcquireFxInfo(ptr noundef %0, ptr noundef %36)
  %44 = getelementptr inbounds ptr, ptr %20, i64 %42
  store ptr %43, ptr %44, align 8, !tbaa !45
  %45 = getelementptr inbounds %struct._FxInfo, ptr %43, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  store ptr null, ptr %45, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store double 0.000000e+00, ptr %11, align 8, !tbaa !95
  %47 = getelementptr inbounds %struct._FxInfo, ptr %43, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = call fastcc double @FxEvaluateSubexpression(ptr noundef %43, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %48, ptr noundef nonnull %11, ptr noundef %3)
  %50 = load i32, ptr %3, align 8, !tbaa !104
  %51 = icmp eq i32 %50, 410
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  store ptr %46, ptr %45, align 8, !tbaa !66
  br i1 %51, label %52, label %38

52:                                               ; preds = %41
  %53 = call ptr @DestroyString(ptr noundef %36) #18
  %54 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52, %63
  %57 = phi i64 [ %64, %63 ], [ 0, %52 ]
  %58 = getelementptr inbounds ptr, ptr %20, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call ptr @DestroyFxInfo(ptr noundef nonnull %59)
  store ptr %62, ptr %58, align 8, !tbaa !45
  br label %63

63:                                               ; preds = %61, %56
  %64 = add nuw nsw i64 %57, 1
  %65 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %56, label %67, !llvm.loop !112

67:                                               ; preds = %63, %52
  %68 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %20) #18
  br label %71

69:                                               ; preds = %38, %35
  %70 = call ptr @DestroyString(ptr noundef %36) #18
  br label %71

71:                                               ; preds = %22, %67, %69
  %72 = phi ptr [ null, %22 ], [ %68, %67 ], [ %20, %69 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %302, label %74

74:                                               ; preds = %71
  %75 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #18
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77, %87
  %81 = phi i64 [ %88, %87 ], [ 0, %77 ]
  %82 = getelementptr inbounds ptr, ptr %72, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !45
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = call ptr @DestroyFxInfo(ptr noundef nonnull %83)
  store ptr %86, ptr %82, align 8, !tbaa !45
  br label %87

87:                                               ; preds = %85, %80
  %88 = add nuw nsw i64 %81, 1
  %89 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %80, label %91, !llvm.loop !112

91:                                               ; preds = %87, %77
  %92 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %72) #18
  br label %302

93:                                               ; preds = %74
  %94 = call i32 @SetImageStorageClass(ptr noundef nonnull %75, i32 noundef 1) #18
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %97) #18
  %98 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %96, %107
  %101 = phi i64 [ %108, %107 ], [ 0, %96 ]
  %102 = getelementptr inbounds ptr, ptr %72, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !45
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = call ptr @DestroyFxInfo(ptr noundef nonnull %103)
  store ptr %106, ptr %102, align 8, !tbaa !45
  br label %107

107:                                              ; preds = %105, %100
  %108 = add nuw nsw i64 %101, 1
  %109 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %100, label %111, !llvm.loop !112

111:                                              ; preds = %107, %96
  %112 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %72) #18
  %113 = call ptr @DestroyImage(ptr noundef nonnull %75) #18
  br label %302

114:                                              ; preds = %93
  %115 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %75, ptr noundef %3) #18
  %116 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 8
  %117 = load i64, ptr %116, align 8, !tbaa !71
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %282

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 7
  %121 = and i32 %1, 1
  %122 = icmp eq i32 %121, 0
  %123 = and i32 %1, 2
  %124 = icmp eq i32 %123, 0
  %125 = and i32 %1, 4
  %126 = icmp eq i32 %125, 0
  %127 = and i32 %1, 8
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %130 = and i32 %1, 32
  %131 = icmp eq i32 %130, 0
  %132 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 1
  %133 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %137

137:                                              ; preds = %119, %274
  %138 = phi i64 [ 0, %119 ], [ %277, %274 ]
  %139 = phi i64 [ 0, %119 ], [ %276, %274 ]
  %140 = phi i32 [ 1, %119 ], [ %275, %274 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %274, label %142

142:                                              ; preds = %137
  %143 = load i64, ptr %120, align 8, !tbaa !72
  %144 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %115, i64 noundef 0, i64 noundef %138, i64 noundef %143, i64 noundef 1, ptr noundef %3) #23
  %145 = icmp eq ptr %144, null
  br i1 %145, label %274, label %146

146:                                              ; preds = %142
  %147 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %115) #18
  %148 = load i64, ptr %120, align 8, !tbaa !72
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %259

150:                                              ; preds = %146
  %151 = icmp eq ptr %147, null
  br label %152

152:                                              ; preds = %150, %254
  %153 = phi ptr [ %144, %150 ], [ %255, %254 ]
  %154 = phi i64 [ 0, %150 ], [ %256, %254 ]
  br i1 %122, label %171, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %72, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store double 0.000000e+00, ptr %10, align 8, !tbaa !95
  %157 = getelementptr inbounds %struct._FxInfo, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !65
  %159 = call fastcc double @FxEvaluateSubexpression(ptr noundef %156, i32 noundef 1, i64 noundef %154, i64 noundef %138, ptr noundef %158, ptr noundef nonnull %10, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  %160 = fmul double %159, 6.553500e+04
  %161 = fptrunc double %160 to float
  %162 = fcmp ugt float %161, 0.000000e+00
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = fcmp ult float %161, 6.553500e+04
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = fadd float %161, 5.000000e-01
  %167 = fptoui float %166 to i16
  br label %168

168:                                              ; preds = %155, %163, %165
  %169 = phi i16 [ %167, %165 ], [ 0, %155 ], [ -1, %163 ]
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 2
  store i16 %169, ptr %170, align 2, !tbaa !73
  br label %171

171:                                              ; preds = %168, %152
  br i1 %124, label %188, label %172

172:                                              ; preds = %171
  %173 = load ptr, ptr %72, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store double 0.000000e+00, ptr %9, align 8, !tbaa !95
  %174 = getelementptr inbounds %struct._FxInfo, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !65
  %176 = call fastcc double @FxEvaluateSubexpression(ptr noundef %173, i32 noundef 2, i64 noundef %154, i64 noundef %138, ptr noundef %175, ptr noundef nonnull %9, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  %177 = fmul double %176, 6.553500e+04
  %178 = fptrunc double %177 to float
  %179 = fcmp ugt float %178, 0.000000e+00
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  %181 = fcmp ult float %178, 6.553500e+04
  br i1 %181, label %182, label %185

182:                                              ; preds = %180
  %183 = fadd float %178, 5.000000e-01
  %184 = fptoui float %183 to i16
  br label %185

185:                                              ; preds = %172, %180, %182
  %186 = phi i16 [ %184, %182 ], [ 0, %172 ], [ -1, %180 ]
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 1
  store i16 %186, ptr %187, align 2, !tbaa !75
  br label %188

188:                                              ; preds = %185, %171
  br i1 %126, label %204, label %189

189:                                              ; preds = %188
  %190 = load ptr, ptr %72, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store double 0.000000e+00, ptr %8, align 8, !tbaa !95
  %191 = getelementptr inbounds %struct._FxInfo, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !65
  %193 = call fastcc double @FxEvaluateSubexpression(ptr noundef %190, i32 noundef 4, i64 noundef %154, i64 noundef %138, ptr noundef %192, ptr noundef nonnull %8, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  %194 = fmul double %193, 6.553500e+04
  %195 = fptrunc double %194 to float
  %196 = fcmp ugt float %195, 0.000000e+00
  br i1 %196, label %197, label %202

197:                                              ; preds = %189
  %198 = fcmp ult float %195, 6.553500e+04
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = fadd float %195, 5.000000e-01
  %201 = fptoui float %200 to i16
  br label %202

202:                                              ; preds = %189, %197, %199
  %203 = phi i16 [ %201, %199 ], [ 0, %189 ], [ -1, %197 ]
  store i16 %203, ptr %153, align 2, !tbaa !76
  br label %204

204:                                              ; preds = %202, %188
  br i1 %128, label %233, label %205

205:                                              ; preds = %204
  %206 = load ptr, ptr %72, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store double 0.000000e+00, ptr %7, align 8, !tbaa !95
  %207 = getelementptr inbounds %struct._FxInfo, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !65
  %209 = call fastcc double @FxEvaluateSubexpression(ptr noundef %206, i32 noundef 8, i64 noundef %154, i64 noundef %138, ptr noundef %208, ptr noundef nonnull %7, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  %210 = load i32, ptr %129, align 8, !tbaa !86
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %205
  %213 = fmul double %209, 6.553500e+04
  %214 = fptrunc double %213 to float
  %215 = fcmp ugt float %214, 0.000000e+00
  br i1 %215, label %216, label %230

216:                                              ; preds = %212
  %217 = fcmp ult float %214, 6.553500e+04
  br i1 %217, label %218, label %230

218:                                              ; preds = %216
  %219 = fadd float %214, 5.000000e-01
  %220 = fptoui float %219 to i16
  br label %230

221:                                              ; preds = %205
  %222 = call double @llvm.fmuladd.f64(double %209, double -6.553500e+04, double 6.553500e+04)
  %223 = fptrunc double %222 to float
  %224 = fcmp ugt float %223, 0.000000e+00
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = fcmp ult float %223, 6.553500e+04
  br i1 %226, label %227, label %230

227:                                              ; preds = %225
  %228 = fadd float %223, 5.000000e-01
  %229 = fptoui float %228 to i16
  br label %230

230:                                              ; preds = %227, %225, %221, %218, %216, %212
  %231 = phi i16 [ %220, %218 ], [ 0, %212 ], [ -1, %216 ], [ %229, %227 ], [ 0, %221 ], [ -1, %225 ]
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 3
  store i16 %231, ptr %232, align 2, !tbaa !77
  br label %233

233:                                              ; preds = %230, %204
  br i1 %131, label %254, label %234

234:                                              ; preds = %233
  %235 = load i32, ptr %132, align 4, !tbaa !74
  %236 = icmp eq i32 %235, 12
  br i1 %236, label %237, label %254

237:                                              ; preds = %234
  %238 = load ptr, ptr %72, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store double 0.000000e+00, ptr %6, align 8, !tbaa !95
  %239 = getelementptr inbounds %struct._FxInfo, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !65
  %241 = call fastcc double @FxEvaluateSubexpression(ptr noundef %238, i32 noundef 32, i64 noundef %154, i64 noundef %138, ptr noundef %240, ptr noundef nonnull %6, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %151, label %254, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds i16, ptr %147, i64 %154
  %244 = fmul double %241, 6.553500e+04
  %245 = fptrunc double %244 to float
  %246 = fcmp ugt float %245, 0.000000e+00
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = fcmp ult float %245, 6.553500e+04
  br i1 %248, label %249, label %252

249:                                              ; preds = %247
  %250 = fadd float %245, 5.000000e-01
  %251 = fptoui float %250 to i16
  br label %252

252:                                              ; preds = %242, %247, %249
  %253 = phi i16 [ %251, %249 ], [ 0, %242 ], [ -1, %247 ]
  store i16 %253, ptr %243, align 2, !tbaa !78
  br label %254

254:                                              ; preds = %237, %252, %234, %233
  %255 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 1
  %256 = add nuw nsw i64 %154, 1
  %257 = load i64, ptr %120, align 8, !tbaa !72
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %152, label %259, !llvm.loop !113

259:                                              ; preds = %254, %146
  %260 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %115, ptr noundef %3) #23
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i32
  %263 = load ptr, ptr %133, align 8, !tbaa !80
  %264 = icmp eq ptr %263, null
  br i1 %264, label %274, label %265

265:                                              ; preds = %259
  %266 = add nsw i64 %139, 1
  %267 = load i64, ptr %134, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %268 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.31, ptr noundef nonnull %135) #18
  %269 = load ptr, ptr %133, align 8, !tbaa !80
  %270 = load ptr, ptr %136, align 8, !tbaa !81
  %271 = call i32 %269(ptr noundef nonnull %5, i64 noundef %139, i64 noundef %267, ptr noundef %270) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %272 = icmp eq i32 %271, 0
  %273 = select i1 %272, i32 0, i32 %262
  br label %274

274:                                              ; preds = %259, %265, %142, %137
  %275 = phi i32 [ 0, %137 ], [ 0, %142 ], [ %273, %265 ], [ %262, %259 ]
  %276 = phi i64 [ %139, %137 ], [ %139, %142 ], [ %266, %265 ], [ %139, %259 ]
  %277 = add nuw nsw i64 %138, 1
  %278 = load i64, ptr %116, align 8, !tbaa !71
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %137, label %280, !llvm.loop !114

280:                                              ; preds = %274
  %281 = icmp eq i32 %275, 0
  br label %282

282:                                              ; preds = %280, %114
  %283 = phi i1 [ false, %114 ], [ %281, %280 ]
  %284 = call ptr @DestroyCacheView(ptr noundef %115) #18
  %285 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %282, %294
  %288 = phi i64 [ %295, %294 ], [ 0, %282 ]
  %289 = getelementptr inbounds ptr, ptr %72, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !45
  %291 = icmp eq ptr %290, null
  br i1 %291, label %294, label %292

292:                                              ; preds = %287
  %293 = call ptr @DestroyFxInfo(ptr noundef nonnull %290)
  store ptr %293, ptr %289, align 8, !tbaa !45
  br label %294

294:                                              ; preds = %292, %287
  %295 = add nuw nsw i64 %288, 1
  %296 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %297 = icmp slt i64 %295, %296
  br i1 %297, label %287, label %298, !llvm.loop !112

298:                                              ; preds = %294, %282
  %299 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %72) #18
  br i1 %283, label %300, label %302

300:                                              ; preds = %298
  %301 = call ptr @DestroyImage(ptr noundef nonnull %75) #18
  br label %302

302:                                              ; preds = %298, %300, %71, %111, %91
  %303 = phi ptr [ null, %91 ], [ null, %111 ], [ null, %71 ], [ %301, %300 ], [ %75, %298 ]
  ret ptr %303
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ImplodeImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #18
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3254, ptr noundef nonnull @.str.22, ptr noundef nonnull %11) #18
  br label %13

13:                                               ; preds = %10, %3
  %14 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %203, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %14, i32 noundef 1) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %20) #18
  %21 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #18
  br label %203

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 12, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !115
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !86
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %30 = load i64, ptr %29, align 8, !tbaa !72
  %31 = uitofp i64 %30 to double
  %32 = fmul double %31, 5.000000e-01
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !71
  %35 = uitofp i64 %34 to double
  %36 = fmul double %35, 5.000000e-01
  %37 = icmp ugt i64 %30, %34
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = fdiv double %31, %35
  br label %44

40:                                               ; preds = %28
  %41 = icmp ult i64 %30, %34
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = fdiv double %35, %31
  br label %44

44:                                               ; preds = %40, %42, %38
  %45 = phi double [ %39, %38 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %40 ]
  %46 = phi double [ 1.000000e+00, %38 ], [ %43, %42 ], [ 1.000000e+00, %40 ]
  %47 = phi double [ %32, %38 ], [ %36, %42 ], [ %32, %40 ]
  call void @GetMagickPixelPacket(ptr noundef nonnull %14, ptr noundef nonnull %5) #18
  %48 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #18
  %49 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %2) #18
  %50 = load i64, ptr %33, align 8, !tbaa !71
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %200

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %54 = fmul double %47, %47
  %55 = fneg double %1
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %60 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 1
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %65

65:                                               ; preds = %52, %188
  %66 = phi i64 [ 0, %52 ], [ %191, %188 ]
  %67 = phi i32 [ 1, %52 ], [ %190, %188 ]
  %68 = phi i64 [ 0, %52 ], [ %189, %188 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #18
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %188, label %70

70:                                               ; preds = %65
  %71 = load i64, ptr %53, align 8, !tbaa !72
  %72 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %49, i64 noundef 0, i64 noundef %66, i64 noundef %71, i64 noundef 1, ptr noundef %2) #23
  %73 = icmp eq ptr %72, null
  br i1 %73, label %188, label %74

74:                                               ; preds = %70
  %75 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %49) #18
  %76 = sitofp i64 %66 to double
  %77 = fsub double %76, %36
  %78 = fmul double %45, %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !116
  %79 = load i64, ptr %29, align 8, !tbaa !72
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %173

81:                                               ; preds = %74
  %82 = fmul double %78, %78
  %83 = icmp ne ptr %75, null
  %84 = icmp eq ptr %75, null
  br label %85

85:                                               ; preds = %81, %168
  %86 = phi ptr [ %72, %81 ], [ %169, %168 ]
  %87 = phi i64 [ 0, %81 ], [ %170, %168 ]
  %88 = sitofp i64 %87 to double
  %89 = fsub double %88, %32
  %90 = fmul double %46, %89
  %91 = call double @llvm.fmuladd.f64(double %90, double %90, double %82)
  %92 = fcmp olt double %91, %54
  br i1 %92, label %93, label %168

93:                                               ; preds = %85
  %94 = fcmp ogt double %91, 0.000000e+00
  br i1 %94, label %95, label %102

95:                                               ; preds = %93
  %96 = call double @sqrt(double noundef %91) #18
  %97 = fmul double %96, 0x400921FB54442D18
  %98 = fdiv double %97, %47
  %99 = fmul double %98, 5.000000e-01
  %100 = call double @sin(double noundef %99) #18
  %101 = call double @pow(double noundef %100, double noundef %55) #18
  br label %102

102:                                              ; preds = %95, %93
  %103 = phi double [ %101, %95 ], [ 1.000000e+00, %93 ]
  %104 = fmul double %90, %103
  %105 = fdiv double %104, %46
  %106 = fadd double %32, %105
  %107 = fmul double %78, %103
  %108 = fdiv double %107, %45
  %109 = fadd double %36, %108
  %110 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %48, i32 noundef 0, double noundef %106, double noundef %109, ptr noundef nonnull %6, ptr noundef %2) #18
  %111 = getelementptr inbounds i16, ptr %75, i64 %87
  %112 = load float, ptr %56, align 8, !tbaa !120
  %113 = fcmp ugt float %112, 0.000000e+00
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  %115 = fcmp ult float %112, 6.553500e+04
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = fadd float %112, 5.000000e-01
  %118 = fptoui float %117 to i16
  br label %119

119:                                              ; preds = %116, %114, %102
  %120 = phi i16 [ %118, %116 ], [ 0, %102 ], [ -1, %114 ]
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 2
  store i16 %120, ptr %121, align 2, !tbaa !73
  %122 = load float, ptr %57, align 4, !tbaa !122
  %123 = fcmp ugt float %122, 0.000000e+00
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = fcmp ult float %122, 6.553500e+04
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = fadd float %122, 5.000000e-01
  %128 = fptoui float %127 to i16
  br label %129

129:                                              ; preds = %126, %124, %119
  %130 = phi i16 [ %128, %126 ], [ 0, %119 ], [ -1, %124 ]
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 1
  store i16 %130, ptr %131, align 2, !tbaa !75
  %132 = load float, ptr %58, align 8, !tbaa !123
  %133 = fcmp ugt float %132, 0.000000e+00
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = fcmp ult float %132, 6.553500e+04
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = fadd float %132, 5.000000e-01
  %138 = fptoui float %137 to i16
  br label %139

139:                                              ; preds = %136, %134, %129
  %140 = phi i16 [ %138, %136 ], [ 0, %129 ], [ -1, %134 ]
  store i16 %140, ptr %86, align 2, !tbaa !76
  %141 = load float, ptr %59, align 4, !tbaa !124
  %142 = fcmp ugt float %141, 0.000000e+00
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = fcmp ult float %141, 6.553500e+04
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = fadd float %141, 5.000000e-01
  %147 = fptoui float %146 to i16
  br label %148

148:                                              ; preds = %145, %143, %139
  %149 = phi i16 [ %147, %145 ], [ 0, %139 ], [ -1, %143 ]
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 3
  store i16 %149, ptr %150, align 2, !tbaa !77
  %151 = load i32, ptr %60, align 4, !tbaa !74
  %152 = icmp eq i32 %151, 12
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load i32, ptr %14, align 8, !tbaa !125
  %155 = icmp eq i32 %154, 2
  %156 = and i1 %83, %155
  br i1 %156, label %158, label %168

157:                                              ; preds = %148
  br i1 %84, label %168, label %158

158:                                              ; preds = %157, %153
  %159 = load float, ptr %61, align 8, !tbaa !126
  %160 = fcmp ugt float %159, 0.000000e+00
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = fcmp ult float %159, 6.553500e+04
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = fadd float %159, 5.000000e-01
  %165 = fptoui float %164 to i16
  br label %166

166:                                              ; preds = %163, %161, %158
  %167 = phi i16 [ %165, %163 ], [ 0, %158 ], [ -1, %161 ]
  store i16 %167, ptr %111, align 2, !tbaa !78
  br label %168

168:                                              ; preds = %166, %157, %153, %85
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 1
  %170 = add nuw nsw i64 %87, 1
  %171 = load i64, ptr %29, align 8, !tbaa !72
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %85, label %173, !llvm.loop !127

173:                                              ; preds = %168, %74
  %174 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %49, ptr noundef %2) #23
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = load ptr, ptr %62, align 8, !tbaa !80
  %178 = icmp eq ptr %177, null
  br i1 %178, label %188, label %179

179:                                              ; preds = %173
  %180 = add nsw i64 %68, 1
  %181 = load i64, ptr %33, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %182 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.32, ptr noundef nonnull %63) #18
  %183 = load ptr, ptr %62, align 8, !tbaa !80
  %184 = load ptr, ptr %64, align 8, !tbaa !81
  %185 = call i32 %183(ptr noundef nonnull %4, i64 noundef %68, i64 noundef %181, ptr noundef %184) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %186, i32 0, i32 %176
  br label %188

188:                                              ; preds = %173, %179, %70, %65
  %189 = phi i64 [ %68, %65 ], [ %68, %70 ], [ %180, %179 ], [ %68, %173 ]
  %190 = phi i32 [ 0, %65 ], [ 0, %70 ], [ %187, %179 ], [ %176, %173 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #18
  %191 = add nuw nsw i64 %66, 1
  %192 = load i64, ptr %33, align 8, !tbaa !71
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %65, label %194, !llvm.loop !128

194:                                              ; preds = %188
  %195 = icmp eq i32 %190, 0
  %196 = call ptr @DestroyCacheView(ptr noundef %49) #18
  %197 = call ptr @DestroyCacheView(ptr noundef %48) #18
  br i1 %195, label %198, label %203

198:                                              ; preds = %194
  %199 = call ptr @DestroyImage(ptr noundef nonnull %14) #18
  br label %203

200:                                              ; preds = %44
  %201 = call ptr @DestroyCacheView(ptr noundef %49) #18
  %202 = call ptr @DestroyCacheView(ptr noundef %48) #18
  br label %203

203:                                              ; preds = %200, %194, %198, %13, %19
  %204 = phi ptr [ null, %19 ], [ null, %13 ], [ %199, %198 ], [ %14, %194 ], [ %14, %200 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #18
  ret ptr %204
}

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @MorphImages(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3441, ptr noundef nonnull @.str.22, ptr noundef nonnull %11) #18
  br label %13

13:                                               ; preds = %10, %3
  %14 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  store ptr %14, ptr %6, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %291, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @GetNextImageInList(ptr noundef %0) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @GetNextImageInList(ptr noundef %0) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %282, label %22

22:                                               ; preds = %19
  %23 = icmp sgt i64 %1, 0
  %24 = uitofp i64 %1 to double
  %25 = fadd double %24, 1.000000e+00
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %56

29:                                               ; preds = %16
  %30 = icmp sgt i64 %1, 1
  br i1 %30, label %31, label %53

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %35

35:                                               ; preds = %31, %50
  %36 = phi i64 [ 1, %31 ], [ %51, %50 ]
  %37 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load ptr, ptr %6, align 8, !tbaa !45
  %41 = call ptr @DestroyImageList(ptr noundef %40) #18
  store ptr %41, ptr %6, align 8, !tbaa !45
  br label %291

42:                                               ; preds = %35
  call void @AppendImageToList(ptr noundef nonnull %6, ptr noundef nonnull %37) #18
  %43 = load ptr, ptr %32, align 8, !tbaa !80
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %46 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.33, ptr noundef nonnull %33) #18
  %47 = load ptr, ptr %32, align 8, !tbaa !80
  %48 = load ptr, ptr %34, align 8, !tbaa !81
  %49 = call i32 %47(ptr noundef nonnull %5, i64 noundef %36, i64 noundef %1, ptr noundef %48) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  br label %50

50:                                               ; preds = %42, %45
  %51 = add nuw nsw i64 %36, 1
  %52 = icmp eq i64 %51, %1
  br i1 %52, label %53, label %35, !llvm.loop !129

53:                                               ; preds = %50, %29
  %54 = load ptr, ptr %6, align 8, !tbaa !45
  %55 = call ptr @GetFirstImageInList(ptr noundef %54) #18
  br label %291

56:                                               ; preds = %22, %276
  %57 = phi i32 [ 1, %22 ], [ %277, %276 ]
  %58 = phi ptr [ %0, %22 ], [ %279, %276 ]
  %59 = phi i64 [ 0, %22 ], [ %278, %276 ]
  br i1 %23, label %60, label %250

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %62 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 8
  %63 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 32
  %64 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 30
  br label %68

65:                                               ; preds = %247
  %66 = add nuw nsw i64 %70, 1
  %67 = icmp eq i64 %66, %1
  br i1 %67, label %250, label %68, !llvm.loop !130

68:                                               ; preds = %60, %65
  %69 = phi i32 [ %57, %60 ], [ %249, %65 ]
  %70 = phi i64 [ 0, %60 ], [ %66, %65 ]
  %71 = sitofp i64 %70 to double
  %72 = fadd double %71, 1.000000e+00
  %73 = fdiv double %72, %25
  %74 = fsub double 1.000000e+00, %73
  %75 = load i64, ptr %61, align 8, !tbaa !72
  %76 = uitofp i64 %75 to double
  %77 = call ptr @GetNextImageInList(ptr noundef %58) #18
  %78 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 7
  %79 = load i64, ptr %78, align 8, !tbaa !72
  %80 = uitofp i64 %79 to double
  %81 = fmul double %73, %80
  %82 = call double @llvm.fmuladd.f64(double %74, double %76, double %81)
  %83 = fadd double %82, 5.000000e-01
  %84 = fptoui double %83 to i64
  %85 = load i64, ptr %62, align 8, !tbaa !71
  %86 = uitofp i64 %85 to double
  %87 = call ptr @GetNextImageInList(ptr noundef %58) #18
  %88 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 8
  %89 = load i64, ptr %88, align 8, !tbaa !71
  %90 = uitofp i64 %89 to double
  %91 = fmul double %73, %90
  %92 = call double @llvm.fmuladd.f64(double %74, double %86, double %91)
  %93 = fadd double %92, 5.000000e-01
  %94 = fptoui double %93 to i64
  %95 = load i32, ptr %63, align 8, !tbaa !131
  %96 = load double, ptr %64, align 8, !tbaa !132
  %97 = call ptr @ResizeImage(ptr noundef %58, i64 noundef %84, i64 noundef %94, i32 noundef %95, double noundef %96, ptr noundef %2) #18
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %68
  %100 = load ptr, ptr %6, align 8, !tbaa !45
  %101 = call ptr @DestroyImageList(ptr noundef %100) #18
  store ptr %101, ptr %6, align 8, !tbaa !45
  br label %247

102:                                              ; preds = %68
  %103 = call i32 @SetImageStorageClass(ptr noundef nonnull %97, i32 noundef 1) #18
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct._Image, ptr %97, i64 0, i32 58
  call void @InheritException(ptr noundef %2, ptr noundef nonnull %106) #18
  %107 = call ptr @DestroyImage(ptr noundef nonnull %97) #18
  br label %247

108:                                              ; preds = %102
  call void @AppendImageToList(ptr noundef nonnull %6, ptr noundef nonnull %97) #18
  %109 = load ptr, ptr %6, align 8, !tbaa !45
  %110 = call ptr @GetLastImageInList(ptr noundef %109) #18
  store ptr %110, ptr %6, align 8, !tbaa !45
  %111 = call ptr @GetNextImageInList(ptr noundef %58) #18
  %112 = load ptr, ptr %6, align 8, !tbaa !45
  %113 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 7
  %114 = load i64, ptr %113, align 8, !tbaa !72
  %115 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 8
  %116 = load i64, ptr %115, align 8, !tbaa !71
  %117 = call ptr @GetNextImageInList(ptr noundef %58) #18
  %118 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 32
  %119 = load i32, ptr %118, align 8, !tbaa !131
  %120 = call ptr @GetNextImageInList(ptr noundef %58) #18
  %121 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 30
  %122 = load double, ptr %121, align 8, !tbaa !132
  %123 = call ptr @ResizeImage(ptr noundef %111, i64 noundef %114, i64 noundef %116, i32 noundef %119, double noundef %122, ptr noundef %2) #18
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %108
  %126 = load ptr, ptr %6, align 8, !tbaa !45
  %127 = call ptr @DestroyImageList(ptr noundef %126) #18
  store ptr %127, ptr %6, align 8, !tbaa !45
  br label %247

128:                                              ; preds = %108
  %129 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %123, ptr noundef %2) #18
  %130 = load ptr, ptr %6, align 8, !tbaa !45
  %131 = call ptr @AcquireAuthenticCacheView(ptr noundef %130, ptr noundef %2) #18
  %132 = load ptr, ptr %6, align 8, !tbaa !45
  %133 = getelementptr inbounds %struct._Image, ptr %132, i64 0, i32 8
  %134 = load i64, ptr %133, align 8, !tbaa !71
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %242

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct._Image, ptr %123, i64 0, i32 7
  br label %138

138:                                              ; preds = %136, %235
  %139 = phi i32 [ %69, %136 ], [ %236, %235 ]
  %140 = phi i64 [ 0, %136 ], [ %237, %235 ]
  %141 = icmp eq i32 %139, 0
  br i1 %141, label %235, label %142

142:                                              ; preds = %138
  %143 = load i64, ptr %137, align 8, !tbaa !72
  %144 = call ptr @GetCacheViewVirtualPixels(ptr noundef %129, i64 noundef 0, i64 noundef %140, i64 noundef %143, i64 noundef 1, ptr noundef %2) #23
  %145 = load ptr, ptr %6, align 8, !tbaa !45
  %146 = getelementptr inbounds %struct._Image, ptr %145, i64 0, i32 7
  %147 = load i64, ptr %146, align 8, !tbaa !72
  %148 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %131, i64 noundef 0, i64 noundef %140, i64 noundef %147, i64 noundef 1, ptr noundef %2) #23
  %149 = icmp eq ptr %144, null
  %150 = icmp eq ptr %148, null
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %235, label %152

152:                                              ; preds = %142
  %153 = load ptr, ptr %6, align 8, !tbaa !45
  %154 = getelementptr inbounds %struct._Image, ptr %153, i64 0, i32 7
  %155 = load i64, ptr %154, align 8, !tbaa !72
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %231

157:                                              ; preds = %152, %225
  %158 = phi ptr [ %228, %225 ], [ %148, %152 ]
  %159 = phi i64 [ %229, %225 ], [ 0, %152 ]
  %160 = phi ptr [ %227, %225 ], [ %144, %152 ]
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 2
  %162 = load i16, ptr %161, align 2, !tbaa !73
  %163 = uitofp i16 %162 to double
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 0, i32 2
  %165 = load i16, ptr %164, align 2, !tbaa !73
  %166 = uitofp i16 %165 to double
  %167 = fmul double %73, %166
  %168 = call double @llvm.fmuladd.f64(double %74, double %163, double %167)
  %169 = fptrunc double %168 to float
  %170 = fcmp ugt float %169, 0.000000e+00
  br i1 %170, label %171, label %176

171:                                              ; preds = %157
  %172 = fcmp ult float %169, 6.553500e+04
  br i1 %172, label %173, label %176

173:                                              ; preds = %171
  %174 = fadd float %169, 5.000000e-01
  %175 = fptoui float %174 to i16
  br label %176

176:                                              ; preds = %157, %171, %173
  %177 = phi i16 [ %175, %173 ], [ 0, %157 ], [ -1, %171 ]
  store i16 %177, ptr %161, align 2, !tbaa !73
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 1
  %179 = load i16, ptr %178, align 2, !tbaa !75
  %180 = uitofp i16 %179 to double
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 0, i32 1
  %182 = load i16, ptr %181, align 2, !tbaa !75
  %183 = uitofp i16 %182 to double
  %184 = fmul double %73, %183
  %185 = call double @llvm.fmuladd.f64(double %74, double %180, double %184)
  %186 = fptrunc double %185 to float
  %187 = fcmp ugt float %186, 0.000000e+00
  br i1 %187, label %188, label %193

188:                                              ; preds = %176
  %189 = fcmp ult float %186, 6.553500e+04
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = fadd float %186, 5.000000e-01
  %192 = fptoui float %191 to i16
  br label %193

193:                                              ; preds = %176, %188, %190
  %194 = phi i16 [ %192, %190 ], [ 0, %176 ], [ -1, %188 ]
  store i16 %194, ptr %178, align 2, !tbaa !75
  %195 = load i16, ptr %158, align 2, !tbaa !76
  %196 = uitofp i16 %195 to double
  %197 = load i16, ptr %160, align 2, !tbaa !76
  %198 = uitofp i16 %197 to double
  %199 = fmul double %73, %198
  %200 = call double @llvm.fmuladd.f64(double %74, double %196, double %199)
  %201 = fptrunc double %200 to float
  %202 = fcmp ugt float %201, 0.000000e+00
  br i1 %202, label %203, label %208

203:                                              ; preds = %193
  %204 = fcmp ult float %201, 6.553500e+04
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = fadd float %201, 5.000000e-01
  %207 = fptoui float %206 to i16
  br label %208

208:                                              ; preds = %193, %203, %205
  %209 = phi i16 [ %207, %205 ], [ 0, %193 ], [ -1, %203 ]
  store i16 %209, ptr %158, align 2, !tbaa !76
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 3
  %211 = load i16, ptr %210, align 2, !tbaa !77
  %212 = uitofp i16 %211 to double
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 0, i32 3
  %214 = load i16, ptr %213, align 2, !tbaa !77
  %215 = uitofp i16 %214 to double
  %216 = fmul double %73, %215
  %217 = call double @llvm.fmuladd.f64(double %74, double %212, double %216)
  %218 = fptrunc double %217 to float
  %219 = fcmp ugt float %218, 0.000000e+00
  br i1 %219, label %220, label %225

220:                                              ; preds = %208
  %221 = fcmp ult float %218, 6.553500e+04
  br i1 %221, label %222, label %225

222:                                              ; preds = %220
  %223 = fadd float %218, 5.000000e-01
  %224 = fptoui float %223 to i16
  br label %225

225:                                              ; preds = %208, %220, %222
  %226 = phi i16 [ %224, %222 ], [ 0, %208 ], [ -1, %220 ]
  store i16 %226, ptr %210, align 2, !tbaa !77
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 1
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 1
  %229 = add nuw nsw i64 %159, 1
  %230 = icmp eq i64 %229, %155
  br i1 %230, label %231, label %157, !llvm.loop !133

231:                                              ; preds = %225, %152
  %232 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %131, ptr noundef %2) #23
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i32
  br label %235

235:                                              ; preds = %142, %138, %231
  %236 = phi i32 [ %234, %231 ], [ 0, %138 ], [ 0, %142 ]
  %237 = add nuw nsw i64 %140, 1
  %238 = load ptr, ptr %6, align 8, !tbaa !45
  %239 = getelementptr inbounds %struct._Image, ptr %238, i64 0, i32 8
  %240 = load i64, ptr %239, align 8, !tbaa !71
  %241 = icmp slt i64 %237, %240
  br i1 %241, label %138, label %242, !llvm.loop !134

242:                                              ; preds = %235, %128
  %243 = phi i32 [ %69, %128 ], [ %236, %235 ]
  %244 = call ptr @DestroyCacheView(ptr noundef %131) #18
  %245 = call ptr @DestroyCacheView(ptr noundef %129) #18
  %246 = call ptr @DestroyImage(ptr noundef nonnull %123) #18
  br label %247

247:                                              ; preds = %242, %125, %105, %99
  %248 = phi i1 [ false, %99 ], [ false, %105 ], [ false, %125 ], [ true, %242 ]
  %249 = phi i32 [ %69, %99 ], [ %69, %105 ], [ %69, %125 ], [ %243, %242 ]
  br i1 %248, label %65, label %291

250:                                              ; preds = %65, %56
  %251 = phi i32 [ %57, %56 ], [ %249, %65 ]
  %252 = call ptr @GetNextImageInList(ptr noundef %58) #18
  %253 = call ptr @CloneImage(ptr noundef %252, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load ptr, ptr %6, align 8, !tbaa !45
  %257 = call ptr @DestroyImageList(ptr noundef %256) #18
  store ptr %257, ptr %6, align 8, !tbaa !45
  br label %291

258:                                              ; preds = %250
  call void @AppendImageToList(ptr noundef nonnull %6, ptr noundef nonnull %253) #18
  %259 = load ptr, ptr %6, align 8, !tbaa !45
  %260 = call ptr @GetLastImageInList(ptr noundef %259) #18
  store ptr %260, ptr %6, align 8, !tbaa !45
  %261 = load ptr, ptr %26, align 8, !tbaa !80
  %262 = icmp eq ptr %261, null
  br i1 %262, label %276, label %263

263:                                              ; preds = %258
  %264 = call i64 @GetImageListLength(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %265 = load ptr, ptr %26, align 8, !tbaa !80
  %266 = icmp eq ptr %265, null
  br i1 %266, label %272, label %267

267:                                              ; preds = %263
  %268 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.33, ptr noundef nonnull %27) #18
  %269 = load ptr, ptr %26, align 8, !tbaa !80
  %270 = load ptr, ptr %28, align 8, !tbaa !81
  %271 = call i32 %269(ptr noundef nonnull %4, i64 noundef %59, i64 noundef %264, ptr noundef %270) #18
  br label %272

272:                                              ; preds = %263, %267
  %273 = phi i32 [ %271, %267 ], [ 1, %263 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i32 0, i32 %251
  br label %276

276:                                              ; preds = %272, %258
  %277 = phi i32 [ %275, %272 ], [ %251, %258 ]
  %278 = add nuw nsw i64 %59, 1
  %279 = call ptr @GetNextImageInList(ptr noundef %58) #18
  %280 = call ptr @GetNextImageInList(ptr noundef %279) #18
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %56, !llvm.loop !135

282:                                              ; preds = %276, %19
  %283 = phi ptr [ %0, %19 ], [ %279, %276 ]
  %284 = call ptr @GetNextImageInList(ptr noundef %283) #18
  %285 = icmp eq ptr %284, null
  %286 = load ptr, ptr %6, align 8, !tbaa !45
  br i1 %285, label %289, label %287

287:                                              ; preds = %282
  %288 = call ptr @DestroyImageList(ptr noundef %286) #18
  store ptr %288, ptr %6, align 8, !tbaa !45
  br label %291

289:                                              ; preds = %282
  %290 = call ptr @GetFirstImageInList(ptr noundef %286) #18
  br label %291

291:                                              ; preds = %247, %13, %289, %287, %255, %53, %39
  %292 = phi ptr [ null, %39 ], [ %55, %53 ], [ null, %287 ], [ %290, %289 ], [ null, %255 ], [ null, %13 ], [ null, %247 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret ptr %292
}

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetLastImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._PixelPacket, align 2
  %8 = alloca %struct._PixelPacket, align 2
  %9 = alloca %struct._SegmentInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %10 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !136
  %12 = load double, ptr %3, align 8, !tbaa !138
  %13 = fsub double %11, %12
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %17 = load double, ptr %16, align 8, !tbaa !139
  %18 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %19 = load double, ptr %18, align 8, !tbaa !140
  %20 = fsub double %17, %19
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %559, label %22

22:                                               ; preds = %15, %6
  %23 = icmp eq i64 %5, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  %25 = add i64 %5, -1
  %26 = add i64 %4, 1
  %27 = fadd double %11, %12
  %28 = fmul double %27, 5.000000e-01
  %29 = fadd double %28, -5.000000e-01
  %30 = tail call double @llvm.ceil.f64(double %29)
  %31 = fptosi double %30 to i64
  %32 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !140
  %34 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %35 = load double, ptr %34, align 8, !tbaa !139
  %36 = fadd double %33, %35
  %37 = fmul double %36, 5.000000e-01
  %38 = fadd double %37, -5.000000e-01
  %39 = tail call double @llvm.ceil.f64(double %38)
  %40 = fptosi double %39 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !141
  %41 = sitofp i64 %31 to double
  %42 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 2
  store double %41, ptr %42, align 8, !tbaa !136
  %43 = sitofp i64 %40 to double
  %44 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 3
  store double %43, ptr %44, align 8, !tbaa !139
  %45 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25), !range !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !141
  %46 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 1
  store double %43, ptr %46, align 8, !tbaa !140
  store double %41, ptr %42, align 8, !tbaa !136
  %47 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25), !range !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !141
  store double %41, ptr %9, align 8, !tbaa !138
  store double %43, ptr %44, align 8, !tbaa !139
  %48 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25), !range !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !141
  store double %41, ptr %9, align 8, !tbaa !138
  store double %43, ptr %46, align 8, !tbaa !140
  %49 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25), !range !142
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %559

50:                                               ; preds = %22
  %51 = fadd double %11, %12
  %52 = fmul double %51, 5.000000e-01
  %53 = fadd double %52, -5.000000e-01
  %54 = tail call double @llvm.ceil.f64(double %53)
  %55 = fptosi double %54 to i64
  %56 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %57 = load double, ptr %56, align 8, !tbaa !140
  %58 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %59 = load double, ptr %58, align 8, !tbaa !139
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
  br i1 %73, label %559, label %74

74:                                               ; preds = %69, %50
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %76 = uitofp i64 %4 to double
  %77 = fmul double %76, 2.000000e+00
  %78 = fdiv double 6.553500e+04, %77
  %79 = fcmp une double %12, %65
  %80 = fcmp une double %11, %65
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %255

82:                                               ; preds = %74
  %83 = fadd double %12, -5.000000e-01
  %84 = tail call double @llvm.ceil.f64(double %83)
  %85 = fptosi double %84 to i64
  %86 = fadd double %57, -5.000000e-01
  %87 = tail call double @llvm.ceil.f64(double %86)
  %88 = fptosi double %87 to i64
  %89 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %85, i64 noundef %88, ptr noundef nonnull %7, ptr noundef nonnull %75) #18
  %90 = load double, ptr %58, align 8, !tbaa !139
  %91 = fadd double %90, -5.000000e-01
  %92 = call double @llvm.ceil.f64(double %91)
  %93 = fptosi double %92 to i64
  %94 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %85, i64 noundef %93, ptr noundef nonnull %8, ptr noundef nonnull %75) #18
  %95 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %85, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #23
  %96 = icmp eq ptr %95, null
  br i1 %96, label %559, label %97

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %99 = load i16, ptr %98, align 2, !tbaa !73
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !73
  %103 = zext i16 %102 to i32
  %104 = add nuw nsw i32 %103, %100
  %105 = sitofp i32 %104 to double
  %106 = fmul double %105, 5.000000e-01
  %107 = fptrunc double %106 to float
  %108 = fpext float %107 to double
  %109 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %110 = call double @llvm.fmuladd.f64(double %78, double %109, double %108)
  %111 = fmul double %78, 5.000000e-01
  %112 = fsub double %110, %111
  %113 = fptrunc double %112 to float
  %114 = fcmp ugt float %113, 0.000000e+00
  br i1 %114, label %115, label %120

115:                                              ; preds = %97
  %116 = fcmp ult float %113, 6.553500e+04
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = fadd float %113, 5.000000e-01
  %119 = fptoui float %118 to i16
  br label %120

120:                                              ; preds = %97, %115, %117
  %121 = phi i16 [ %119, %117 ], [ 0, %97 ], [ -1, %115 ]
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 2
  store i16 %121, ptr %122, align 2, !tbaa !73
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %124 = load i16, ptr %123, align 2, !tbaa !75
  %125 = zext i16 %124 to i32
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %127 = load i16, ptr %126, align 2, !tbaa !75
  %128 = zext i16 %127 to i32
  %129 = add nuw nsw i32 %128, %125
  %130 = sitofp i32 %129 to double
  %131 = fmul double %130, 5.000000e-01
  %132 = fptrunc double %131 to float
  %133 = fpext float %132 to double
  %134 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %135 = call double @llvm.fmuladd.f64(double %78, double %134, double %133)
  %136 = fsub double %135, %111
  %137 = fptrunc double %136 to float
  %138 = fcmp ugt float %137, 0.000000e+00
  br i1 %138, label %139, label %144

139:                                              ; preds = %120
  %140 = fcmp ult float %137, 6.553500e+04
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = fadd float %137, 5.000000e-01
  %143 = fptoui float %142 to i16
  br label %144

144:                                              ; preds = %120, %139, %141
  %145 = phi i16 [ %143, %141 ], [ 0, %120 ], [ -1, %139 ]
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 1
  store i16 %145, ptr %146, align 2, !tbaa !75
  %147 = load i16, ptr %7, align 2, !tbaa !76
  %148 = zext i16 %147 to i32
  %149 = load i16, ptr %8, align 2, !tbaa !76
  %150 = zext i16 %149 to i32
  %151 = add nuw nsw i32 %150, %148
  %152 = sitofp i32 %151 to double
  %153 = fmul double %152, 5.000000e-01
  %154 = fptrunc double %153 to float
  %155 = fpext float %154 to double
  %156 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %157 = call double @llvm.fmuladd.f64(double %78, double %156, double %155)
  %158 = fsub double %157, %111
  %159 = fptrunc double %158 to float
  %160 = fcmp ugt float %159, 0.000000e+00
  br i1 %160, label %161, label %166

161:                                              ; preds = %144
  %162 = fcmp ult float %159, 6.553500e+04
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = fadd float %159, 5.000000e-01
  %165 = fptoui float %164 to i16
  br label %166

166:                                              ; preds = %144, %161, %163
  %167 = phi i16 [ %165, %163 ], [ 0, %144 ], [ -1, %161 ]
  store i16 %167, ptr %95, align 2, !tbaa !76
  %168 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #23
  %169 = load double, ptr %3, align 8, !tbaa !138
  %170 = load double, ptr %10, align 8, !tbaa !136
  %171 = fcmp une double %169, %170
  br i1 %171, label %172, label %255

172:                                              ; preds = %166
  %173 = fadd double %170, -5.000000e-01
  %174 = call double @llvm.ceil.f64(double %173)
  %175 = fptosi double %174 to i64
  %176 = load double, ptr %56, align 8, !tbaa !140
  %177 = fadd double %176, -5.000000e-01
  %178 = call double @llvm.ceil.f64(double %177)
  %179 = fptosi double %178 to i64
  %180 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %175, i64 noundef %179, ptr noundef nonnull %7, ptr noundef nonnull %75) #18
  %181 = load double, ptr %58, align 8, !tbaa !139
  %182 = fadd double %181, -5.000000e-01
  %183 = call double @llvm.ceil.f64(double %182)
  %184 = fptosi double %183 to i64
  %185 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %175, i64 noundef %184, ptr noundef nonnull %8, ptr noundef nonnull %75) #18
  %186 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %175, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #23
  %187 = icmp eq ptr %186, null
  br i1 %187, label %559, label %188

188:                                              ; preds = %172
  %189 = load i16, ptr %98, align 2, !tbaa !73
  %190 = zext i16 %189 to i32
  %191 = load i16, ptr %101, align 2, !tbaa !73
  %192 = zext i16 %191 to i32
  %193 = add nuw nsw i32 %192, %190
  %194 = sitofp i32 %193 to double
  %195 = fmul double %194, 5.000000e-01
  %196 = fptrunc double %195 to float
  %197 = fpext float %196 to double
  %198 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %199 = call double @llvm.fmuladd.f64(double %78, double %198, double %197)
  %200 = fsub double %199, %111
  %201 = fptrunc double %200 to float
  %202 = fcmp ugt float %201, 0.000000e+00
  br i1 %202, label %203, label %208

203:                                              ; preds = %188
  %204 = fcmp ult float %201, 6.553500e+04
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = fadd float %201, 5.000000e-01
  %207 = fptoui float %206 to i16
  br label %208

208:                                              ; preds = %188, %203, %205
  %209 = phi i16 [ %207, %205 ], [ 0, %188 ], [ -1, %203 ]
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 2
  store i16 %209, ptr %210, align 2, !tbaa !73
  %211 = load i16, ptr %123, align 2, !tbaa !75
  %212 = zext i16 %211 to i32
  %213 = load i16, ptr %126, align 2, !tbaa !75
  %214 = zext i16 %213 to i32
  %215 = add nuw nsw i32 %214, %212
  %216 = sitofp i32 %215 to double
  %217 = fmul double %216, 5.000000e-01
  %218 = fptrunc double %217 to float
  %219 = fpext float %218 to double
  %220 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %221 = call double @llvm.fmuladd.f64(double %78, double %220, double %219)
  %222 = fsub double %221, %111
  %223 = fptrunc double %222 to float
  %224 = fcmp ugt float %223, 0.000000e+00
  br i1 %224, label %225, label %230

225:                                              ; preds = %208
  %226 = fcmp ult float %223, 6.553500e+04
  br i1 %226, label %227, label %230

227:                                              ; preds = %225
  %228 = fadd float %223, 5.000000e-01
  %229 = fptoui float %228 to i16
  br label %230

230:                                              ; preds = %208, %225, %227
  %231 = phi i16 [ %229, %227 ], [ 0, %208 ], [ -1, %225 ]
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %186, i64 0, i32 1
  store i16 %231, ptr %232, align 2, !tbaa !75
  %233 = load i16, ptr %7, align 2, !tbaa !76
  %234 = zext i16 %233 to i32
  %235 = load i16, ptr %8, align 2, !tbaa !76
  %236 = zext i16 %235 to i32
  %237 = add nuw nsw i32 %236, %234
  %238 = sitofp i32 %237 to double
  %239 = fmul double %238, 5.000000e-01
  %240 = fptrunc double %239 to float
  %241 = fpext float %240 to double
  %242 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %243 = call double @llvm.fmuladd.f64(double %78, double %242, double %241)
  %244 = fsub double %243, %111
  %245 = fptrunc double %244 to float
  %246 = fcmp ugt float %245, 0.000000e+00
  br i1 %246, label %247, label %252

247:                                              ; preds = %230
  %248 = fcmp ult float %245, 6.553500e+04
  br i1 %248, label %249, label %252

249:                                              ; preds = %247
  %250 = fadd float %245, 5.000000e-01
  %251 = fptoui float %250 to i16
  br label %252

252:                                              ; preds = %230, %247, %249
  %253 = phi i16 [ %251, %249 ], [ 0, %230 ], [ -1, %247 ]
  store i16 %253, ptr %186, align 2, !tbaa !76
  %254 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #23
  br label %255

255:                                              ; preds = %74, %252, %166
  %256 = load double, ptr %56, align 8, !tbaa !140
  %257 = sitofp i64 %64 to double
  %258 = fcmp une double %256, %257
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = load double, ptr %58, align 8, !tbaa !139
  %261 = fcmp une double %260, %257
  br i1 %261, label %262, label %448

262:                                              ; preds = %259, %255
  %263 = load double, ptr %3, align 8, !tbaa !138
  %264 = fcmp une double %263, %65
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = load double, ptr %58, align 8, !tbaa !139
  %267 = fcmp une double %266, %257
  br i1 %267, label %268, label %356

268:                                              ; preds = %265, %262
  %269 = load double, ptr %58, align 8, !tbaa !139
  %270 = fadd double %269, -5.000000e-01
  %271 = call double @llvm.ceil.f64(double %270)
  %272 = fptosi double %271 to i64
  %273 = fadd double %263, -5.000000e-01
  %274 = call double @llvm.ceil.f64(double %273)
  %275 = fptosi double %274 to i64
  %276 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %275, i64 noundef %272, ptr noundef nonnull %7, ptr noundef nonnull %75) #18
  %277 = load double, ptr %10, align 8, !tbaa !136
  %278 = fadd double %277, -5.000000e-01
  %279 = call double @llvm.ceil.f64(double %278)
  %280 = fptosi double %279 to i64
  %281 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %280, i64 noundef %272, ptr noundef nonnull %8, ptr noundef nonnull %75) #18
  %282 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %272, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #23
  %283 = icmp eq ptr %282, null
  br i1 %283, label %559, label %284

284:                                              ; preds = %268
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %286 = load i16, ptr %285, align 2, !tbaa !73
  %287 = zext i16 %286 to i32
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %289 = load i16, ptr %288, align 2, !tbaa !73
  %290 = zext i16 %289 to i32
  %291 = add nuw nsw i32 %290, %287
  %292 = sitofp i32 %291 to double
  %293 = fmul double %292, 5.000000e-01
  %294 = fptrunc double %293 to float
  %295 = fpext float %294 to double
  %296 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %297 = call double @llvm.fmuladd.f64(double %78, double %296, double %295)
  %298 = fmul double %78, 5.000000e-01
  %299 = fsub double %297, %298
  %300 = fptrunc double %299 to float
  %301 = fcmp ugt float %300, 0.000000e+00
  br i1 %301, label %302, label %307

302:                                              ; preds = %284
  %303 = fcmp ult float %300, 6.553500e+04
  br i1 %303, label %304, label %307

304:                                              ; preds = %302
  %305 = fadd float %300, 5.000000e-01
  %306 = fptoui float %305 to i16
  br label %307

307:                                              ; preds = %284, %302, %304
  %308 = phi i16 [ %306, %304 ], [ 0, %284 ], [ -1, %302 ]
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 0, i32 2
  store i16 %308, ptr %309, align 2, !tbaa !73
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %311 = load i16, ptr %310, align 2, !tbaa !75
  %312 = zext i16 %311 to i32
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %314 = load i16, ptr %313, align 2, !tbaa !75
  %315 = zext i16 %314 to i32
  %316 = add nuw nsw i32 %315, %312
  %317 = sitofp i32 %316 to double
  %318 = fmul double %317, 5.000000e-01
  %319 = fptrunc double %318 to float
  %320 = fpext float %319 to double
  %321 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %322 = call double @llvm.fmuladd.f64(double %78, double %321, double %320)
  %323 = fsub double %322, %298
  %324 = fptrunc double %323 to float
  %325 = fcmp ugt float %324, 0.000000e+00
  br i1 %325, label %326, label %331

326:                                              ; preds = %307
  %327 = fcmp ult float %324, 6.553500e+04
  br i1 %327, label %328, label %331

328:                                              ; preds = %326
  %329 = fadd float %324, 5.000000e-01
  %330 = fptoui float %329 to i16
  br label %331

331:                                              ; preds = %307, %326, %328
  %332 = phi i16 [ %330, %328 ], [ 0, %307 ], [ -1, %326 ]
  %333 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 0, i32 1
  store i16 %332, ptr %333, align 2, !tbaa !75
  %334 = load i16, ptr %7, align 2, !tbaa !76
  %335 = zext i16 %334 to i32
  %336 = load i16, ptr %8, align 2, !tbaa !76
  %337 = zext i16 %336 to i32
  %338 = add nuw nsw i32 %337, %335
  %339 = sitofp i32 %338 to double
  %340 = fmul double %339, 5.000000e-01
  %341 = fptrunc double %340 to float
  %342 = fpext float %341 to double
  %343 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %344 = call double @llvm.fmuladd.f64(double %78, double %343, double %342)
  %345 = fsub double %344, %298
  %346 = fptrunc double %345 to float
  %347 = fcmp ugt float %346, 0.000000e+00
  br i1 %347, label %348, label %353

348:                                              ; preds = %331
  %349 = fcmp ult float %346, 6.553500e+04
  br i1 %349, label %350, label %353

350:                                              ; preds = %348
  %351 = fadd float %346, 5.000000e-01
  %352 = fptoui float %351 to i16
  br label %353

353:                                              ; preds = %331, %348, %350
  %354 = phi i16 [ %352, %350 ], [ 0, %331 ], [ -1, %348 ]
  store i16 %354, ptr %282, align 2, !tbaa !76
  %355 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #23
  br label %356

356:                                              ; preds = %353, %265
  %357 = load double, ptr %56, align 8, !tbaa !140
  %358 = load double, ptr %58, align 8, !tbaa !139
  %359 = fcmp une double %357, %358
  br i1 %359, label %360, label %448

360:                                              ; preds = %356
  %361 = fadd double %357, -5.000000e-01
  %362 = call double @llvm.ceil.f64(double %361)
  %363 = fptosi double %362 to i64
  %364 = load double, ptr %3, align 8, !tbaa !138
  %365 = fadd double %364, -5.000000e-01
  %366 = call double @llvm.ceil.f64(double %365)
  %367 = fptosi double %366 to i64
  %368 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %367, i64 noundef %363, ptr noundef nonnull %7, ptr noundef nonnull %75) #18
  %369 = load double, ptr %10, align 8, !tbaa !136
  %370 = fadd double %369, -5.000000e-01
  %371 = call double @llvm.ceil.f64(double %370)
  %372 = fptosi double %371 to i64
  %373 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %372, i64 noundef %363, ptr noundef nonnull %8, ptr noundef nonnull %75) #18
  %374 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %363, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #23
  %375 = icmp eq ptr %374, null
  br i1 %375, label %559, label %376

376:                                              ; preds = %360
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %378 = load i16, ptr %377, align 2, !tbaa !73
  %379 = zext i16 %378 to i32
  %380 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %381 = load i16, ptr %380, align 2, !tbaa !73
  %382 = zext i16 %381 to i32
  %383 = add nuw nsw i32 %382, %379
  %384 = sitofp i32 %383 to double
  %385 = fmul double %384, 5.000000e-01
  %386 = fptrunc double %385 to float
  %387 = fpext float %386 to double
  %388 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %389 = call double @llvm.fmuladd.f64(double %78, double %388, double %387)
  %390 = fmul double %78, 5.000000e-01
  %391 = fsub double %389, %390
  %392 = fptrunc double %391 to float
  %393 = fcmp ugt float %392, 0.000000e+00
  br i1 %393, label %394, label %399

394:                                              ; preds = %376
  %395 = fcmp ult float %392, 6.553500e+04
  br i1 %395, label %396, label %399

396:                                              ; preds = %394
  %397 = fadd float %392, 5.000000e-01
  %398 = fptoui float %397 to i16
  br label %399

399:                                              ; preds = %376, %394, %396
  %400 = phi i16 [ %398, %396 ], [ 0, %376 ], [ -1, %394 ]
  %401 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 0, i32 2
  store i16 %400, ptr %401, align 2, !tbaa !73
  %402 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %403 = load i16, ptr %402, align 2, !tbaa !75
  %404 = zext i16 %403 to i32
  %405 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %406 = load i16, ptr %405, align 2, !tbaa !75
  %407 = zext i16 %406 to i32
  %408 = add nuw nsw i32 %407, %404
  %409 = sitofp i32 %408 to double
  %410 = fmul double %409, 5.000000e-01
  %411 = fptrunc double %410 to float
  %412 = fpext float %411 to double
  %413 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %414 = call double @llvm.fmuladd.f64(double %78, double %413, double %412)
  %415 = fsub double %414, %390
  %416 = fptrunc double %415 to float
  %417 = fcmp ugt float %416, 0.000000e+00
  br i1 %417, label %418, label %423

418:                                              ; preds = %399
  %419 = fcmp ult float %416, 6.553500e+04
  br i1 %419, label %420, label %423

420:                                              ; preds = %418
  %421 = fadd float %416, 5.000000e-01
  %422 = fptoui float %421 to i16
  br label %423

423:                                              ; preds = %399, %418, %420
  %424 = phi i16 [ %422, %420 ], [ 0, %399 ], [ -1, %418 ]
  %425 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 0, i32 1
  store i16 %424, ptr %425, align 2, !tbaa !75
  %426 = load i16, ptr %7, align 2, !tbaa !76
  %427 = zext i16 %426 to i32
  %428 = load i16, ptr %8, align 2, !tbaa !76
  %429 = zext i16 %428 to i32
  %430 = add nuw nsw i32 %429, %427
  %431 = sitofp i32 %430 to double
  %432 = fmul double %431, 5.000000e-01
  %433 = fptrunc double %432 to float
  %434 = fpext float %433 to double
  %435 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %436 = call double @llvm.fmuladd.f64(double %78, double %435, double %434)
  %437 = fsub double %436, %390
  %438 = fptrunc double %437 to float
  %439 = fcmp ugt float %438, 0.000000e+00
  br i1 %439, label %440, label %445

440:                                              ; preds = %423
  %441 = fcmp ult float %438, 6.553500e+04
  br i1 %441, label %442, label %445

442:                                              ; preds = %440
  %443 = fadd float %438, 5.000000e-01
  %444 = fptoui float %443 to i16
  br label %445

445:                                              ; preds = %423, %440, %442
  %446 = phi i16 [ %444, %442 ], [ 0, %423 ], [ -1, %440 ]
  store i16 %446, ptr %374, align 2, !tbaa !76
  %447 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #23
  br label %448

448:                                              ; preds = %445, %356, %259
  %449 = load double, ptr %3, align 8, !tbaa !138
  %450 = load double, ptr %10, align 8, !tbaa !136
  %451 = fcmp une double %449, %450
  br i1 %451, label %456, label %452

452:                                              ; preds = %448
  %453 = load double, ptr %56, align 8, !tbaa !140
  %454 = load double, ptr %58, align 8, !tbaa !139
  %455 = fcmp une double %453, %454
  br i1 %455, label %456, label %548

456:                                              ; preds = %452, %448
  %457 = fadd double %449, -5.000000e-01
  %458 = call double @llvm.ceil.f64(double %457)
  %459 = fptosi double %458 to i64
  %460 = load double, ptr %56, align 8, !tbaa !140
  %461 = fadd double %460, -5.000000e-01
  %462 = call double @llvm.ceil.f64(double %461)
  %463 = fptosi double %462 to i64
  %464 = call i32 @GetOneVirtualPixel(ptr noundef %0, i64 noundef %459, i64 noundef %463, ptr noundef nonnull %7, ptr noundef nonnull %75) #18
  %465 = load double, ptr %10, align 8, !tbaa !136
  %466 = fadd double %465, -5.000000e-01
  %467 = call double @llvm.ceil.f64(double %466)
  %468 = fptosi double %467 to i64
  %469 = load double, ptr %58, align 8, !tbaa !139
  %470 = fadd double %469, -5.000000e-01
  %471 = call double @llvm.ceil.f64(double %470)
  %472 = fptosi double %471 to i64
  %473 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %468, i64 noundef %472, ptr noundef nonnull %8, ptr noundef nonnull %75) #18
  %474 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #23
  %475 = icmp eq ptr %474, null
  br i1 %475, label %559, label %476

476:                                              ; preds = %456
  %477 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %478 = load i16, ptr %477, align 2, !tbaa !73
  %479 = zext i16 %478 to i32
  %480 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %481 = load i16, ptr %480, align 2, !tbaa !73
  %482 = zext i16 %481 to i32
  %483 = add nuw nsw i32 %482, %479
  %484 = sitofp i32 %483 to double
  %485 = fmul double %484, 5.000000e-01
  %486 = fptrunc double %485 to float
  %487 = fpext float %486 to double
  %488 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %489 = call double @llvm.fmuladd.f64(double %78, double %488, double %487)
  %490 = fmul double %78, 5.000000e-01
  %491 = fsub double %489, %490
  %492 = fptrunc double %491 to float
  %493 = fcmp ugt float %492, 0.000000e+00
  br i1 %493, label %494, label %499

494:                                              ; preds = %476
  %495 = fcmp ult float %492, 6.553500e+04
  br i1 %495, label %496, label %499

496:                                              ; preds = %494
  %497 = fadd float %492, 5.000000e-01
  %498 = fptoui float %497 to i16
  br label %499

499:                                              ; preds = %476, %494, %496
  %500 = phi i16 [ %498, %496 ], [ 0, %476 ], [ -1, %494 ]
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %474, i64 0, i32 2
  store i16 %500, ptr %501, align 2, !tbaa !73
  %502 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %503 = load i16, ptr %502, align 2, !tbaa !75
  %504 = zext i16 %503 to i32
  %505 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %506 = load i16, ptr %505, align 2, !tbaa !75
  %507 = zext i16 %506 to i32
  %508 = add nuw nsw i32 %507, %504
  %509 = sitofp i32 %508 to double
  %510 = fmul double %509, 5.000000e-01
  %511 = fptrunc double %510 to float
  %512 = fpext float %511 to double
  %513 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %514 = call double @llvm.fmuladd.f64(double %78, double %513, double %512)
  %515 = fsub double %514, %490
  %516 = fptrunc double %515 to float
  %517 = fcmp ugt float %516, 0.000000e+00
  br i1 %517, label %518, label %523

518:                                              ; preds = %499
  %519 = fcmp ult float %516, 6.553500e+04
  br i1 %519, label %520, label %523

520:                                              ; preds = %518
  %521 = fadd float %516, 5.000000e-01
  %522 = fptoui float %521 to i16
  br label %523

523:                                              ; preds = %499, %518, %520
  %524 = phi i16 [ %522, %520 ], [ 0, %499 ], [ -1, %518 ]
  %525 = getelementptr inbounds %struct._PixelPacket, ptr %474, i64 0, i32 1
  store i16 %524, ptr %525, align 2, !tbaa !75
  %526 = load i16, ptr %7, align 2, !tbaa !76
  %527 = zext i16 %526 to i32
  %528 = load i16, ptr %8, align 2, !tbaa !76
  %529 = zext i16 %528 to i32
  %530 = add nuw nsw i32 %529, %527
  %531 = sitofp i32 %530 to double
  %532 = fmul double %531, 5.000000e-01
  %533 = fptrunc double %532 to float
  %534 = fpext float %533 to double
  %535 = call double @GetPseudoRandomValue(ptr noundef %2) #18
  %536 = call double @llvm.fmuladd.f64(double %78, double %535, double %534)
  %537 = fsub double %536, %490
  %538 = fptrunc double %537 to float
  %539 = fcmp ugt float %538, 0.000000e+00
  br i1 %539, label %540, label %545

540:                                              ; preds = %523
  %541 = fcmp ult float %538, 6.553500e+04
  br i1 %541, label %542, label %545

542:                                              ; preds = %540
  %543 = fadd float %538, 5.000000e-01
  %544 = fptoui float %543 to i16
  br label %545

545:                                              ; preds = %523, %540, %542
  %546 = phi i16 [ %544, %542 ], [ 0, %523 ], [ -1, %540 ]
  store i16 %546, ptr %474, align 2, !tbaa !76
  %547 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #23
  br label %548

548:                                              ; preds = %545, %452
  %549 = load double, ptr %10, align 8, !tbaa !136
  %550 = load double, ptr %3, align 8, !tbaa !138
  %551 = fsub double %549, %550
  %552 = fcmp olt double %551, 3.000000e+00
  br i1 %552, label %553, label %558

553:                                              ; preds = %548
  %554 = load double, ptr %58, align 8, !tbaa !139
  %555 = load double, ptr %56, align 8, !tbaa !140
  %556 = fsub double %554, %555
  %557 = fcmp olt double %556, 3.000000e+00
  br i1 %557, label %559, label %558

558:                                              ; preds = %553, %548
  br label %559

559:                                              ; preds = %456, %360, %268, %82, %172, %553, %69, %15, %558, %24
  %560 = phi i32 [ %49, %24 ], [ 0, %558 ], [ 1, %15 ], [ 0, %69 ], [ 1, %553 ], [ 1, %172 ], [ 1, %82 ], [ 1, %268 ], [ 1, %360 ], [ 1, %456 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret i32 %560
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @GetOneVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @PlasmaImage(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3850, ptr noundef nonnull @.str.34) #18
  br label %10

10:                                               ; preds = %8, %4
  %11 = load i32, ptr %5, align 8, !tbaa !68
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3854, ptr noundef nonnull @.str.34) #18
  br label %15

15:                                               ; preds = %13, %10
  %16 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %19) #18
  %21 = tail call ptr @AcquireRandomInfo() #18
  %22 = tail call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %20, ptr noundef %21, ptr noundef %1, i64 noundef %2, i64 noundef %3), !range !142
  %23 = tail call ptr @DestroyRandomInfo(ptr noundef %21) #18
  %24 = tail call ptr @DestroyCacheView(ptr noundef %20) #18
  br label %25

25:                                               ; preds = %15, %18
  %26 = phi i32 [ %22, %18 ], [ 0, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PolaroidImage(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._TypeMetric, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3921, ptr noundef nonnull @.str.22, ptr noundef nonnull %12) #18
  br label %14

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !72
  %17 = uitofp i64 %16 to double
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !71
  %20 = uitofp i64 %19 to double
  %21 = fcmp ogt double %17, %20
  %22 = select i1 %21, double %17, double %20
  %23 = fdiv double %22, 2.500000e+01
  %24 = fcmp ogt double %23, 1.000000e+01
  %25 = select i1 %24, double %23, double 1.000000e+01
  %26 = fptosi double %25 to i64
  %27 = shl nsw i64 %26, 1
  %28 = add i64 %27, %19
  %29 = tail call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.35) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %85, label %31

31:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #18
  %32 = load i64, ptr %15, align 8, !tbaa !72
  %33 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %32, i64 noundef 1, i32 noundef 1, ptr noundef %3) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %82, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #18
  %37 = tail call ptr @InterpretImageProperties(ptr noundef null, ptr noundef %0, ptr noundef nonnull %29) #18
  store ptr %37, ptr %5, align 8, !tbaa !45
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 21
  %39 = tail call ptr @CloneString(ptr noundef nonnull %38, ptr noundef %37) #18
  %40 = call i64 @FormatMagickCaption(ptr noundef nonnull %33, ptr noundef %36, i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  %41 = load i64, ptr %15, align 8, !tbaa !72
  %42 = add nsw i64 %40, 1
  %43 = sitofp i64 %42 to double
  %44 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 1
  %45 = load double, ptr %44, align 8, !tbaa !143
  %46 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 2
  %47 = load double, ptr %46, align 8, !tbaa !146
  %48 = fsub double %45, %47
  %49 = call double @llvm.fmuladd.f64(double %43, double %48, double 5.000000e-01)
  %50 = fptoui double %49 to i64
  %51 = call i32 @SetImageExtent(ptr noundef nonnull %33, i64 noundef %41, i64 noundef %50) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %35
  %54 = call ptr @DestroyImage(ptr noundef nonnull %33) #18
  br label %76

55:                                               ; preds = %35
  %56 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 12
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %58 = load i64, ptr %57, align 8
  store i64 %58, ptr %56, align 8
  %59 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %33) #18
  %60 = load ptr, ptr %5, align 8, !tbaa !45
  %61 = call ptr @CloneString(ptr noundef nonnull %38, ptr noundef %60) #18
  %62 = load double, ptr %44, align 8, !tbaa !143
  %63 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.36, double noundef %62) #18
  %64 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !147
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 1
  %69 = call ptr @AcquireString(ptr noundef nonnull %6) #18
  %70 = call ptr @CloneString(ptr noundef nonnull %68, ptr noundef %69) #18
  br label %71

71:                                               ; preds = %67, %55
  %72 = call i32 @AnnotateImage(ptr noundef nonnull %33, ptr noundef %36) #18
  %73 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 8
  %74 = load i64, ptr %73, align 8, !tbaa !71
  %75 = add i64 %74, %28
  br label %76

76:                                               ; preds = %71, %53
  %77 = phi i64 [ %28, %53 ], [ %75, %71 ]
  %78 = phi ptr [ %54, %53 ], [ %33, %71 ]
  %79 = call ptr @DestroyDrawInfo(ptr noundef %36) #18
  %80 = load ptr, ptr %5, align 8, !tbaa !45
  %81 = call ptr @DestroyString(ptr noundef %80) #18
  store ptr %81, ptr %5, align 8, !tbaa !45
  br label %82

82:                                               ; preds = %31, %76
  %83 = phi i64 [ %77, %76 ], [ %28, %31 ]
  %84 = phi ptr [ %78, %76 ], [ null, %31 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br i1 %34, label %165, label %85

85:                                               ; preds = %82, %14
  %86 = phi i64 [ %83, %82 ], [ %28, %14 ]
  %87 = phi ptr [ %84, %82 ], [ null, %14 ]
  %88 = load i64, ptr %15, align 8, !tbaa !72
  %89 = add i64 %88, %27
  %90 = call ptr @CloneImage(ptr noundef %0, i64 noundef %89, i64 noundef %86, i32 noundef 1, ptr noundef %3) #18
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = icmp eq ptr %87, null
  br i1 %93, label %165, label %94

94:                                               ; preds = %92
  %95 = call ptr @DestroyImage(ptr noundef nonnull %87) #18
  br label %165

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct._Image, ptr %90, i64 0, i32 12
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %99 = load i64, ptr %98, align 8
  store i64 %99, ptr %97, align 8
  %100 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %90) #18
  %101 = call i32 @CompositeImage(ptr noundef nonnull %90, i32 noundef 40, ptr noundef %0, i64 noundef %26, i64 noundef %26) #18
  %102 = icmp eq ptr %87, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load i64, ptr %18, align 8, !tbaa !71
  %105 = mul nsw i64 %26, 3
  %106 = sdiv i64 %105, 2
  %107 = add i64 %104, %106
  %108 = call i32 @CompositeImage(ptr noundef nonnull %90, i32 noundef 40, ptr noundef nonnull %87, i64 noundef %26, i64 noundef %107) #18
  %109 = call ptr @DestroyImage(ptr noundef nonnull %87) #18
  br label %110

110:                                              ; preds = %103, %96
  %111 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.37, ptr noundef nonnull %97, ptr noundef %3) #18
  %112 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %90, i32 noundef 6) #18
  %113 = call ptr @RotateImage(ptr noundef nonnull %90, double noundef 9.000000e+01, ptr noundef %3) #18
  %114 = call ptr @DestroyImage(ptr noundef nonnull %90) #18
  %115 = icmp eq ptr %113, null
  br i1 %115, label %165, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 8
  %118 = load i64, ptr %117, align 8, !tbaa !71
  %119 = uitofp i64 %118 to double
  %120 = fmul double %119, 1.000000e-02
  %121 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 7
  %122 = load i64, ptr %121, align 8, !tbaa !72
  %123 = uitofp i64 %122 to double
  %124 = fmul double %123, 2.000000e+00
  %125 = call ptr @WaveImage(ptr noundef nonnull %113, double noundef %120, double noundef %124, ptr noundef %3)
  %126 = call ptr @DestroyImage(ptr noundef nonnull %113) #18
  %127 = icmp eq ptr %125, null
  br i1 %127, label %165, label %128

128:                                              ; preds = %116
  %129 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 58
  call void @InheritException(ptr noundef nonnull %129, ptr noundef %3) #18
  %130 = call ptr @RotateImage(ptr noundef nonnull %125, double noundef -9.000000e+01, ptr noundef %3) #18
  %131 = call ptr @DestroyImage(ptr noundef nonnull %125) #18
  %132 = icmp eq ptr %130, null
  br i1 %132, label %165, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct._Image, ptr %130, i64 0, i32 12
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %136 = load i64, ptr %135, align 8
  store i64 %136, ptr %134, align 8
  %137 = sdiv i64 %26, 3
  %138 = call ptr @ShadowImage(ptr noundef nonnull %130, double noundef 8.000000e+01, double noundef 2.000000e+00, i64 noundef %137, i64 noundef %137, ptr noundef %3)
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = call ptr @DestroyImage(ptr noundef nonnull %130) #18
  br label %165

142:                                              ; preds = %133
  %143 = call ptr @FlopImage(ptr noundef nonnull %138, ptr noundef %3) #18
  %144 = call ptr @DestroyImage(ptr noundef nonnull %138) #18
  %145 = icmp eq ptr %143, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call ptr @DestroyImage(ptr noundef nonnull %130) #18
  br label %165

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct._Image, ptr %130, i64 0, i32 7
  %150 = load i64, ptr %149, align 8, !tbaa !72
  %151 = uitofp i64 %150 to double
  %152 = fmul double %151, -1.000000e-02
  %153 = fmul double %152, 5.000000e-01
  %154 = fptosi double %153 to i64
  %155 = call i32 @CompositeImage(ptr noundef nonnull %143, i32 noundef 40, ptr noundef nonnull %130, i64 noundef %154, i64 noundef 0) #18
  %156 = call ptr @DestroyImage(ptr noundef nonnull %130) #18
  %157 = getelementptr inbounds %struct._Image, ptr %143, i64 0, i32 12
  %158 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.37, ptr noundef nonnull %157, ptr noundef %3) #18
  %159 = call ptr @RotateImage(ptr noundef nonnull %143, double noundef %2, ptr noundef %3) #18
  %160 = call ptr @DestroyImage(ptr noundef nonnull %143) #18
  %161 = icmp eq ptr %159, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %148
  %163 = call ptr @TrimImage(ptr noundef nonnull %159, ptr noundef %3) #18
  %164 = call ptr @DestroyImage(ptr noundef nonnull %159) #18
  br label %165

165:                                              ; preds = %162, %148, %128, %116, %110, %92, %94, %82, %146, %140
  %166 = phi ptr [ %141, %140 ], [ %147, %146 ], [ null, %82 ], [ null, %94 ], [ null, %92 ], [ null, %110 ], [ null, %116 ], [ null, %128 ], [ null, %148 ], [ %163, %162 ]
  ret ptr %166
}

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @FormatMagickCaption(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageExtent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

declare i32 @AnnotateImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #3

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @WaveImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #18
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5519, ptr noundef nonnull @.str.22, ptr noundef nonnull %12) #18
  br label %14

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !71
  %19 = uitofp i64 %18 to double
  %20 = tail call double @llvm.fabs.f64(double %1)
  %21 = tail call double @llvm.fmuladd.f64(double %20, double 2.000000e+00, double %19)
  %22 = fptoui double %21 to i64
  %23 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %16, i64 noundef %22, i32 noundef 1, ptr noundef %3) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %198, label %25

25:                                               ; preds = %14
  %26 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %23, i32 noundef 1) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %29) #18
  %30 = tail call ptr @DestroyImage(ptr noundef nonnull %23) #18
  br label %198

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 12, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !115
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 6
  store i32 1, ptr %36, align 8, !tbaa !86
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !72
  %40 = tail call ptr @AcquireQuantumMemory(i64 noundef %39, i64 noundef 4) #22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i64, ptr %38, align 8, !tbaa !72
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %49, label %61

45:                                               ; preds = %37
  %46 = tail call ptr @DestroyImage(ptr noundef nonnull %23) #18
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5542, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %47) #18
  br label %198

49:                                               ; preds = %42, %49
  %50 = phi i64 [ %58, %49 ], [ 0, %42 ]
  %51 = sitofp i64 %50 to double
  %52 = fmul double %51, 0x401921FB54442D18
  %53 = fdiv double %52, %2
  %54 = tail call double @sin(double noundef %53) #18
  %55 = tail call double @llvm.fmuladd.f64(double %1, double %54, double %20)
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds float, ptr %40, i64 %50
  store float %56, ptr %57, align 4, !tbaa !118
  %58 = add nuw nsw i64 %50, 1
  %59 = load i64, ptr %38, align 8, !tbaa !72
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %49, label %61, !llvm.loop !152

61:                                               ; preds = %49, %42
  call void @GetMagickPixelPacket(ptr noundef nonnull %23, ptr noundef nonnull %6) #18
  %62 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #18
  %63 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %23, ptr noundef %3) #18
  %64 = call i32 @SetCacheViewVirtualPixelMethod(ptr noundef %62, i32 noundef 1) #18
  %65 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 8
  %66 = load i64, ptr %65, align 8, !tbaa !71
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %194

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %73 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 1
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %78

78:                                               ; preds = %68, %181
  %79 = phi i64 [ 0, %68 ], [ %184, %181 ]
  %80 = phi i64 [ 0, %68 ], [ %183, %181 ]
  %81 = phi i32 [ 1, %68 ], [ %182, %181 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #18
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %181, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %38, align 8, !tbaa !72
  %85 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %63, i64 noundef 0, i64 noundef %79, i64 noundef %84, i64 noundef 1, ptr noundef %3) #23
  %86 = icmp eq ptr %85, null
  br i1 %86, label %181, label %87

87:                                               ; preds = %83
  %88 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %63) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !116
  %89 = load i64, ptr %38, align 8, !tbaa !72
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %166

91:                                               ; preds = %87
  %92 = sitofp i64 %79 to float
  %93 = icmp ne ptr %88, null
  %94 = icmp eq ptr %88, null
  br label %95

95:                                               ; preds = %91, %161
  %96 = phi i64 [ 0, %91 ], [ %163, %161 ]
  %97 = phi ptr [ %85, %91 ], [ %162, %161 ]
  %98 = sitofp i64 %96 to double
  %99 = getelementptr inbounds float, ptr %40, i64 %96
  %100 = load float, ptr %99, align 4, !tbaa !118
  %101 = fsub float %92, %100
  %102 = fpext float %101 to double
  %103 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %62, i32 noundef 0, double noundef %98, double noundef %102, ptr noundef nonnull %7, ptr noundef %3) #18
  %104 = getelementptr inbounds i16, ptr %88, i64 %96
  %105 = load float, ptr %69, align 8, !tbaa !120
  %106 = fcmp ugt float %105, 0.000000e+00
  br i1 %106, label %107, label %112

107:                                              ; preds = %95
  %108 = fcmp ult float %105, 6.553500e+04
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = fadd float %105, 5.000000e-01
  %111 = fptoui float %110 to i16
  br label %112

112:                                              ; preds = %109, %107, %95
  %113 = phi i16 [ %111, %109 ], [ 0, %95 ], [ -1, %107 ]
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %113, ptr %114, align 2, !tbaa !73
  %115 = load float, ptr %70, align 4, !tbaa !122
  %116 = fcmp ugt float %115, 0.000000e+00
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = fcmp ult float %115, 6.553500e+04
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = fadd float %115, 5.000000e-01
  %121 = fptoui float %120 to i16
  br label %122

122:                                              ; preds = %119, %117, %112
  %123 = phi i16 [ %121, %119 ], [ 0, %112 ], [ -1, %117 ]
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  store i16 %123, ptr %124, align 2, !tbaa !75
  %125 = load float, ptr %71, align 8, !tbaa !123
  %126 = fcmp ugt float %125, 0.000000e+00
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = fcmp ult float %125, 6.553500e+04
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = fadd float %125, 5.000000e-01
  %131 = fptoui float %130 to i16
  br label %132

132:                                              ; preds = %129, %127, %122
  %133 = phi i16 [ %131, %129 ], [ 0, %122 ], [ -1, %127 ]
  store i16 %133, ptr %97, align 2, !tbaa !76
  %134 = load float, ptr %72, align 4, !tbaa !124
  %135 = fcmp ugt float %134, 0.000000e+00
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = fcmp ult float %134, 6.553500e+04
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = fadd float %134, 5.000000e-01
  %140 = fptoui float %139 to i16
  br label %141

141:                                              ; preds = %138, %136, %132
  %142 = phi i16 [ %140, %138 ], [ 0, %132 ], [ -1, %136 ]
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  store i16 %142, ptr %143, align 2, !tbaa !77
  %144 = load i32, ptr %73, align 4, !tbaa !74
  %145 = icmp eq i32 %144, 12
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = load i32, ptr %23, align 8, !tbaa !125
  %148 = icmp eq i32 %147, 2
  %149 = and i1 %93, %148
  br i1 %149, label %151, label %161

150:                                              ; preds = %141
  br i1 %94, label %161, label %151

151:                                              ; preds = %150, %146
  %152 = load float, ptr %74, align 8, !tbaa !126
  %153 = fcmp ugt float %152, 0.000000e+00
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = fcmp ult float %152, 6.553500e+04
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = fadd float %152, 5.000000e-01
  %158 = fptoui float %157 to i16
  br label %159

159:                                              ; preds = %156, %154, %151
  %160 = phi i16 [ %158, %156 ], [ 0, %151 ], [ -1, %154 ]
  store i16 %160, ptr %104, align 2, !tbaa !78
  br label %161

161:                                              ; preds = %146, %150, %159
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  %163 = add nuw nsw i64 %96, 1
  %164 = load i64, ptr %38, align 8, !tbaa !72
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %95, label %166, !llvm.loop !153

166:                                              ; preds = %161, %87
  %167 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %63, ptr noundef %3) #23
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = load ptr, ptr %75, align 8, !tbaa !80
  %171 = icmp eq ptr %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %166
  %173 = add nsw i64 %80, 1
  %174 = load i64, ptr %17, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %175 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, ptr noundef nonnull %76) #18
  %176 = load ptr, ptr %75, align 8, !tbaa !80
  %177 = load ptr, ptr %77, align 8, !tbaa !81
  %178 = call i32 %176(ptr noundef nonnull %5, i64 noundef %80, i64 noundef %174, ptr noundef %177) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i32 0, i32 %169
  br label %181

181:                                              ; preds = %166, %172, %83, %78
  %182 = phi i32 [ 0, %78 ], [ 0, %83 ], [ %180, %172 ], [ %169, %166 ]
  %183 = phi i64 [ %80, %78 ], [ %80, %83 ], [ %173, %172 ], [ %80, %166 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #18
  %184 = add nuw nsw i64 %79, 1
  %185 = load i64, ptr %65, align 8, !tbaa !71
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %78, label %187, !llvm.loop !154

187:                                              ; preds = %181
  %188 = icmp eq i32 %182, 0
  %189 = call ptr @DestroyCacheView(ptr noundef %63) #18
  %190 = call ptr @DestroyCacheView(ptr noundef %62) #18
  %191 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %40) #18
  br i1 %188, label %192, label %198

192:                                              ; preds = %187
  %193 = call ptr @DestroyImage(ptr noundef nonnull %23) #18
  br label %198

194:                                              ; preds = %61
  %195 = call ptr @DestroyCacheView(ptr noundef %63) #18
  %196 = call ptr @DestroyCacheView(ptr noundef %62) #18
  %197 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %40) #18
  br label %198

198:                                              ; preds = %194, %187, %192, %14, %45, %28
  %199 = phi ptr [ null, %28 ], [ null, %45 ], [ null, %14 ], [ %193, %192 ], [ %23, %187 ], [ %23, %194 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #18
  ret ptr %199
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ShadowImage(ptr noundef %0, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !68
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4261, ptr noundef nonnull @.str.22, ptr noundef nonnull %13) #18
  br label %15

15:                                               ; preds = %12, %6
  %16 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %158, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !74
  switch i32 %20, label %23 [
    i32 19, label %21
    i32 17, label %21
    i32 2, label %21
  ]

21:                                               ; preds = %18, %18, %18
  %22 = tail call i32 @SetImageColorspace(ptr noundef nonnull %16, i32 noundef 13) #18
  br label %23

23:                                               ; preds = %18, %21
  %24 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %16, i32 noundef 4) #18
  %25 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 36
  store i32 40, ptr %25, align 8, !tbaa !155
  %26 = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 5.000000e-01)
  %27 = tail call double @llvm.floor.f64(double %26)
  %28 = fptoui double %27 to i64
  store i64 %28, ptr %8, align 8, !tbaa !156
  %29 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 1
  store i64 %28, ptr %29, align 8, !tbaa !157
  %30 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  %31 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %32 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.37, ptr noundef nonnull %31, ptr noundef %5) #18
  %33 = call ptr @BorderImage(ptr noundef nonnull %16, ptr noundef nonnull %8, ptr noundef %5) #18
  %34 = call ptr @DestroyImage(ptr noundef nonnull %16) #18
  %35 = icmp eq ptr %33, null
  br i1 %35, label %158, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !86
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %33, i32 noundef 6) #18
  br label %42

42:                                               ; preds = %40, %36
  %43 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %33, ptr noundef %5) #18
  %44 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 8
  %45 = load i64, ptr %44, align 8, !tbaa !71
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %124

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %49 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 12
  %50 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 12, i32 2
  %51 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 12, i32 1
  %52 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 12, i32 3
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %56

56:                                               ; preds = %47, %118
  %57 = phi i64 [ 0, %47 ], [ %121, %118 ]
  %58 = phi i64 [ 0, %47 ], [ %120, %118 ]
  %59 = phi i32 [ 1, %47 ], [ %119, %118 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %118, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %48, align 8, !tbaa !72
  %63 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %43, i64 noundef 0, i64 noundef %57, i64 noundef %62, i64 noundef 1, ptr noundef %5) #23
  %64 = icmp eq ptr %63, null
  br i1 %64, label %118, label %65

65:                                               ; preds = %61
  %66 = load i64, ptr %48, align 8, !tbaa !72
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %65
  %69 = load i32, ptr %37, align 8, !tbaa !86
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %68, %99
  %72 = phi i64 [ 0, %68 ], [ %101, %99 ]
  %73 = phi ptr [ %63, %68 ], [ %100, %99 ]
  %74 = load i16, ptr %50, align 4, !tbaa !158
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 2
  store i16 %74, ptr %75, align 2, !tbaa !73
  %76 = load i16, ptr %51, align 2, !tbaa !159
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 1
  store i16 %76, ptr %77, align 2, !tbaa !75
  %78 = load i16, ptr %49, align 8, !tbaa !160
  store i16 %78, ptr %73, align 2, !tbaa !76
  br i1 %70, label %79, label %82

79:                                               ; preds = %71
  %80 = load i16, ptr %52, align 2, !tbaa !115
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  store i16 %80, ptr %81, align 2, !tbaa !77
  br label %99

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  %84 = load i16, ptr %83, align 2, !tbaa !77
  %85 = xor i16 %84, -1
  %86 = uitofp i16 %85 to double
  %87 = fmul double %86, %1
  %88 = fdiv double %87, 1.000000e+02
  %89 = fsub double 6.553500e+04, %88
  %90 = fptrunc double %89 to float
  %91 = fcmp ugt float %90, 0.000000e+00
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = fcmp ult float %90, 6.553500e+04
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = fadd float %90, 5.000000e-01
  %96 = fptoui float %95 to i16
  br label %97

97:                                               ; preds = %82, %92, %94
  %98 = phi i16 [ %96, %94 ], [ 0, %82 ], [ -1, %92 ]
  store i16 %98, ptr %83, align 2, !tbaa !77
  br label %99

99:                                               ; preds = %97, %79
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %101 = add nuw nsw i64 %72, 1
  %102 = icmp eq i64 %101, %66
  br i1 %102, label %103, label %71, !llvm.loop !161

103:                                              ; preds = %99, %65
  %104 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %43, ptr noundef %5) #23
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = load ptr, ptr %53, align 8, !tbaa !80
  %108 = icmp eq ptr %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %103
  %110 = add nsw i64 %58, 1
  %111 = load i64, ptr %44, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #18
  %112 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.39, ptr noundef nonnull %54) #18
  %113 = load ptr, ptr %53, align 8, !tbaa !80
  %114 = load ptr, ptr %55, align 8, !tbaa !81
  %115 = call i32 %113(ptr noundef nonnull %7, i64 noundef %58, i64 noundef %111, ptr noundef %114) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #18
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 0, i32 %106
  br label %118

118:                                              ; preds = %103, %109, %61, %56
  %119 = phi i32 [ 0, %56 ], [ 0, %61 ], [ %117, %109 ], [ %106, %103 ]
  %120 = phi i64 [ %58, %56 ], [ %58, %61 ], [ %110, %109 ], [ %58, %103 ]
  %121 = add nuw nsw i64 %57, 1
  %122 = load i64, ptr %44, align 8, !tbaa !71
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %56, label %124, !llvm.loop !162

124:                                              ; preds = %118, %42
  %125 = call ptr @DestroyCacheView(ptr noundef %43) #18
  %126 = call ptr @BlurImageChannel(ptr noundef nonnull %33, i32 noundef 8, double noundef 0.000000e+00, double noundef %2, ptr noundef %5) #18
  %127 = call ptr @DestroyImage(ptr noundef nonnull %33) #18
  %128 = icmp eq ptr %126, null
  br i1 %128, label %158, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 26
  %131 = load i64, ptr %130, align 8, !tbaa !163
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 7
  %135 = load i64, ptr %134, align 8, !tbaa !72
  store i64 %135, ptr %130, align 8, !tbaa !163
  br label %136

136:                                              ; preds = %133, %129
  %137 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 26, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !164
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 8
  %142 = load i64, ptr %141, align 8, !tbaa !71
  store i64 %142, ptr %137, align 8, !tbaa !164
  br label %143

143:                                              ; preds = %140, %136
  %144 = load i64, ptr %8, align 8, !tbaa !156
  %145 = sub nsw i64 %3, %144
  %146 = load i64, ptr %130, align 8, !tbaa !163
  %147 = add i64 %146, %145
  store i64 %147, ptr %130, align 8, !tbaa !163
  %148 = load i64, ptr %29, align 8, !tbaa !157
  %149 = sub nsw i64 %4, %148
  %150 = load i64, ptr %137, align 8, !tbaa !164
  %151 = add i64 %150, %149
  store i64 %151, ptr %137, align 8, !tbaa !164
  %152 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 26, i32 2
  %153 = load i64, ptr %152, align 8, !tbaa !165
  %154 = add nsw i64 %153, %145
  store i64 %154, ptr %152, align 8, !tbaa !165
  %155 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 26, i32 3
  %156 = load i64, ptr %155, align 8, !tbaa !166
  %157 = add nsw i64 %156, %149
  store i64 %157, ptr %155, align 8, !tbaa !166
  br label %158

158:                                              ; preds = %124, %23, %15, %143
  %159 = phi ptr [ %126, %143 ], [ null, %15 ], [ null, %23 ], [ null, %124 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  ret ptr %159
}

declare ptr @FlopImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @TrimImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @SepiaToneImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4105, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #18
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !71
  %16 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %13, i64 noundef %15, i32 noundef 1, ptr noundef %2) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %167, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %16, i32 noundef 1) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %22) #18
  %23 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #18
  br label %167

24:                                               ; preds = %18
  %25 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #18
  %26 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %16, ptr noundef %2) #18
  %27 = load i64, ptr %14, align 8, !tbaa !71
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %162

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 7
  %31 = fmul double %1, 7.000000e+00
  %32 = fdiv double %31, 6.000000e+00
  %33 = fdiv double %1, 6.000000e+00
  %34 = fdiv double %1, 7.000000e+00
  %35 = fptrunc double %34 to float
  %36 = fcmp ole float %35, 0.000000e+00
  %37 = fcmp oge float %35, 6.553500e+04
  %38 = fadd float %35, 5.000000e-01
  %39 = fptoui float %38 to i16
  %40 = fptrunc double %34 to float
  %41 = fcmp ole float %40, 0.000000e+00
  %42 = fcmp oge float %40, 6.553500e+04
  %43 = fadd float %40, 5.000000e-01
  %44 = fptoui float %43 to i16
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %48 = or i1 %36, %37
  %49 = xor i1 %36, true
  %50 = sext i1 %49 to i16
  %51 = select i1 %48, i16 %50, i16 %39
  %52 = or i1 %41, %42
  %53 = xor i1 %41, true
  %54 = sext i1 %53 to i16
  %55 = select i1 %52, i16 %54, i16 %44
  br label %56

56:                                               ; preds = %29, %148
  %57 = phi i64 [ 0, %29 ], [ %151, %148 ]
  %58 = phi i64 [ 0, %29 ], [ %150, %148 ]
  %59 = phi i32 [ 1, %29 ], [ %149, %148 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %148, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %12, align 8, !tbaa !72
  %63 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef 0, i64 noundef %57, i64 noundef %62, i64 noundef 1, ptr noundef %2) #23
  %64 = load i64, ptr %30, align 8, !tbaa !72
  %65 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %26, i64 noundef 0, i64 noundef %57, i64 noundef %64, i64 noundef 1, ptr noundef %2) #23
  %66 = icmp eq ptr %63, null
  %67 = icmp eq ptr %65, null
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %148, label %69

69:                                               ; preds = %61
  %70 = load i64, ptr %12, align 8, !tbaa !72
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %133

72:                                               ; preds = %69, %124
  %73 = phi ptr [ %129, %124 ], [ %65, %69 ]
  %74 = phi i64 [ %130, %124 ], [ 0, %69 ]
  %75 = phi ptr [ %128, %124 ], [ %63, %69 ]
  %76 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef %75) #23
  %77 = fpext float %76 to double
  %78 = fcmp ogt double %77, %1
  %79 = fadd double %77, 6.553500e+04
  %80 = fsub double %79, %1
  %81 = select i1 %78, double 6.553500e+04, double %80
  %82 = fptrunc double %81 to float
  %83 = fcmp ugt float %82, 0.000000e+00
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = fcmp ult float %82, 6.553500e+04
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = fadd float %82, 5.000000e-01
  %88 = fptoui float %87 to i16
  br label %89

89:                                               ; preds = %72, %84, %86
  %90 = phi i16 [ %88, %86 ], [ 0, %72 ], [ -1, %84 ]
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 2
  store i16 %90, ptr %91, align 2, !tbaa !73
  %92 = fcmp olt double %32, %77
  %93 = fsub double %79, %32
  %94 = select i1 %92, double 6.553500e+04, double %93
  %95 = fptrunc double %94 to float
  %96 = fcmp ugt float %95, 0.000000e+00
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = fcmp ult float %95, 6.553500e+04
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = fadd float %95, 5.000000e-01
  %101 = fptoui float %100 to i16
  br label %102

102:                                              ; preds = %89, %97, %99
  %103 = phi i16 [ %101, %99 ], [ 0, %89 ], [ -1, %97 ]
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 1
  store i16 %103, ptr %104, align 2, !tbaa !75
  %105 = fcmp ogt double %33, %77
  %106 = fsub double %77, %33
  %107 = select i1 %105, double 0.000000e+00, double %106
  %108 = fptrunc double %107 to float
  %109 = fcmp ugt float %108, 0.000000e+00
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = fcmp ult float %108, 6.553500e+04
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = fadd float %108, 5.000000e-01
  %114 = fptoui float %113 to i16
  br label %115

115:                                              ; preds = %102, %110, %112
  %116 = phi i16 [ %114, %112 ], [ 0, %102 ], [ -1, %110 ]
  store i16 %116, ptr %73, align 2, !tbaa !76
  %117 = uitofp i16 %103 to double
  %118 = fcmp ogt double %34, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i16 %51, ptr %104, align 2, !tbaa !75
  br label %120

120:                                              ; preds = %119, %115
  %121 = uitofp i16 %116 to double
  %122 = fcmp ogt double %34, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i16 %55, ptr %73, align 2, !tbaa !76
  br label %124

124:                                              ; preds = %123, %120
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 0, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !77
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  store i16 %126, ptr %127, align 2, !tbaa !77
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %130 = add nuw nsw i64 %74, 1
  %131 = load i64, ptr %12, align 8, !tbaa !72
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %72, label %133, !llvm.loop !167

133:                                              ; preds = %124, %69
  %134 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %26, ptr noundef %2) #23
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = load ptr, ptr %45, align 8, !tbaa !80
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %133
  %140 = add nsw i64 %58, 1
  %141 = load i64, ptr %14, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %142 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.38, ptr noundef nonnull %46) #18
  %143 = load ptr, ptr %45, align 8, !tbaa !80
  %144 = load ptr, ptr %47, align 8, !tbaa !81
  %145 = call i32 %143(ptr noundef nonnull %4, i64 noundef %58, i64 noundef %141, ptr noundef %144) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i32 0, i32 %136
  br label %148

148:                                              ; preds = %133, %139, %61, %56
  %149 = phi i32 [ 0, %56 ], [ 0, %61 ], [ %147, %139 ], [ %136, %133 ]
  %150 = phi i64 [ %58, %56 ], [ %58, %61 ], [ %140, %139 ], [ %58, %133 ]
  %151 = add nuw nsw i64 %57, 1
  %152 = load i64, ptr %14, align 8, !tbaa !71
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %56, label %154, !llvm.loop !168

154:                                              ; preds = %148
  %155 = icmp eq i32 %149, 0
  %156 = call ptr @DestroyCacheView(ptr noundef %26) #18
  %157 = call ptr @DestroyCacheView(ptr noundef %25) #18
  %158 = call i32 @NormalizeImage(ptr noundef nonnull %16) #18
  %159 = call i32 @ContrastImage(ptr noundef nonnull %16, i32 noundef 1) #18
  br i1 %155, label %160, label %167

160:                                              ; preds = %154
  %161 = call ptr @DestroyImage(ptr noundef nonnull %16) #18
  br label %167

162:                                              ; preds = %24
  %163 = tail call ptr @DestroyCacheView(ptr noundef %26) #18
  %164 = tail call ptr @DestroyCacheView(ptr noundef %25) #18
  %165 = tail call i32 @NormalizeImage(ptr noundef nonnull %16) #18
  %166 = tail call i32 @ContrastImage(ptr noundef nonnull %16, i32 noundef 1) #18
  br label %167

167:                                              ; preds = %162, %154, %160, %11, %21
  %168 = phi ptr [ null, %21 ], [ null, %11 ], [ %161, %160 ], [ %16, %154 ], [ %16, %162 ]
  ret ptr %168
}

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @ContrastImage(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BlurImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @SketchImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #18
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !72
  %10 = shl i64 %9, 1
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !71
  %13 = shl i64 %12, 1
  %14 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %10, i64 noundef %13, i32 noundef 1, ptr noundef %4) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %207, label %16

16:                                               ; preds = %5
  %17 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %4) #18
  %18 = tail call i32 @AccelerateRandomImage(ptr noundef nonnull %14, ptr noundef %4) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %174

20:                                               ; preds = %16
  call void @GetMagickPixelPacket(ptr noundef nonnull %14, ptr noundef nonnull %7) #18
  %21 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %22 = call ptr @AcquireAlignedMemory(i64 noundef %21, i64 noundef 8) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %20
  %25 = shl i64 %21, 3
  %26 = call ptr @ResetMagickMemory(ptr noundef nonnull %22, i32 noundef 0, i64 noundef %25) #18
  %27 = icmp sgt i64 %21, 0
  br i1 %27, label %31, label %52

28:                                               ; preds = %31
  %29 = add nuw nsw i64 %32, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %52, label %31, !llvm.loop !69

31:                                               ; preds = %24, %28
  %32 = phi i64 [ %29, %28 ], [ 0, %24 ]
  %33 = call ptr @AcquireRandomInfo() #18
  %34 = getelementptr inbounds ptr, ptr %22, i64 %32
  store ptr %33, ptr %34, align 8, !tbaa !45
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %28

36:                                               ; preds = %31
  %37 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36, %46
  %40 = phi i64 [ %47, %46 ], [ 0, %36 ]
  %41 = getelementptr inbounds ptr, ptr %22, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call ptr @DestroyRandomInfo(ptr noundef nonnull %42) #18
  store ptr %45, ptr %41, align 8, !tbaa !45
  br label %46

46:                                               ; preds = %44, %39
  %47 = add nuw nsw i64 %40, 1
  %48 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %39, label %50, !llvm.loop !70

50:                                               ; preds = %46, %36
  %51 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %22) #18
  br label %52

52:                                               ; preds = %28, %24, %20, %50
  %53 = phi ptr [ %51, %50 ], [ null, %20 ], [ %22, %24 ], [ %22, %28 ]
  %54 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %4) #18
  %55 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !71
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %60 = getelementptr inbounds i8, ptr %7, i64 44
  %61 = getelementptr inbounds i8, ptr %7, i64 48
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %63 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 1
  br label %70

64:                                               ; preds = %153
  %65 = icmp eq i32 %154, 0
  br label %66

66:                                               ; preds = %64, %52
  %67 = phi i1 [ false, %52 ], [ %65, %64 ]
  %68 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %158, label %169

70:                                               ; preds = %58, %153
  %71 = phi i64 [ 0, %58 ], [ %155, %153 ]
  %72 = phi i32 [ 1, %58 ], [ %154, %153 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %153, label %74

74:                                               ; preds = %70
  %75 = load i64, ptr %59, align 8, !tbaa !72
  %76 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %54, i64 noundef 0, i64 noundef %71, i64 noundef %75, i64 noundef 1, ptr noundef %4) #23
  %77 = icmp eq ptr %76, null
  br i1 %77, label %153, label %78

78:                                               ; preds = %74
  %79 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #18
  %80 = load i64, ptr %59, align 8, !tbaa !72
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %149

82:                                               ; preds = %78
  %83 = load float, ptr %61, align 8, !tbaa.struct !169
  %84 = load float, ptr %60, align 4, !tbaa.struct !170
  %85 = fcmp ole float %84, 0.000000e+00
  %86 = fcmp oge float %84, 6.553500e+04
  %87 = fadd float %84, 5.000000e-01
  %88 = fptoui float %87 to i16
  %89 = icmp ne ptr %79, null
  %90 = icmp eq ptr %79, null
  %91 = or i1 %85, %86
  %92 = xor i1 %85, true
  %93 = sext i1 %92 to i16
  %94 = select i1 %91, i16 %93, i16 %88
  br label %95

95:                                               ; preds = %82, %144
  %96 = phi ptr [ %76, %82 ], [ %145, %144 ]
  %97 = phi i64 [ 0, %82 ], [ %146, %144 ]
  %98 = phi float [ %83, %82 ], [ %105, %144 ]
  %99 = load ptr, ptr %53, align 8, !tbaa !45
  %100 = call double @GetPseudoRandomValue(ptr noundef %99) #18
  %101 = fmul double %100, 6.553500e+04
  %102 = fptrunc double %101 to float
  %103 = load i32, ptr %62, align 4, !tbaa !74
  %104 = icmp eq i32 %103, 12
  %105 = select i1 %104, float %102, float %98
  %106 = getelementptr inbounds i16, ptr %79, i64 %97
  %107 = fcmp ugt float %102, 0.000000e+00
  br i1 %107, label %108, label %115

108:                                              ; preds = %95
  %109 = fcmp ult float %102, 6.553500e+04
  %110 = fadd float %102, 5.000000e-01
  %111 = fptoui float %110 to i16
  %112 = select i1 %109, i16 %111, i16 -1
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 %112, ptr %113, align 2, !tbaa !73
  br i1 %109, label %114, label %117

114:                                              ; preds = %108
  br label %117

115:                                              ; preds = %95
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 0, ptr %116, align 2, !tbaa !73
  br label %117

117:                                              ; preds = %115, %114, %108
  %118 = phi i16 [ %111, %114 ], [ -1, %108 ], [ 0, %115 ]
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 1
  store i16 %118, ptr %119, align 2, !tbaa !75
  br i1 %107, label %120, label %125

120:                                              ; preds = %117
  %121 = fcmp ult float %102, 6.553500e+04
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = fadd float %102, 5.000000e-01
  %124 = fptoui float %123 to i16
  br label %125

125:                                              ; preds = %122, %120, %117
  %126 = phi i16 [ %124, %122 ], [ 0, %117 ], [ -1, %120 ]
  store i16 %126, ptr %96, align 2, !tbaa !76
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  store i16 %94, ptr %127, align 2, !tbaa !77
  %128 = load i32, ptr %63, align 4, !tbaa !74
  %129 = icmp eq i32 %128, 12
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %14, align 8, !tbaa !125
  %132 = icmp eq i32 %131, 2
  %133 = and i1 %89, %132
  br i1 %133, label %135, label %144

134:                                              ; preds = %125
  br i1 %90, label %144, label %135

135:                                              ; preds = %134, %130
  %136 = fcmp ugt float %105, 0.000000e+00
  br i1 %136, label %137, label %142

137:                                              ; preds = %135
  %138 = fcmp ult float %105, 6.553500e+04
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = fadd float %105, 5.000000e-01
  %141 = fptoui float %140 to i16
  br label %142

142:                                              ; preds = %139, %137, %135
  %143 = phi i16 [ %141, %139 ], [ 0, %135 ], [ -1, %137 ]
  store i16 %143, ptr %106, align 2, !tbaa !78
  br label %144

144:                                              ; preds = %130, %134, %142
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 1
  %146 = add nuw nsw i64 %97, 1
  %147 = load i64, ptr %59, align 8, !tbaa !72
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %95, label %149, !llvm.loop !171

149:                                              ; preds = %144, %78
  %150 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %54, ptr noundef %4) #23
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i32
  br label %153

153:                                              ; preds = %74, %70, %149
  %154 = phi i32 [ %152, %149 ], [ 0, %70 ], [ 0, %74 ]
  %155 = add nuw nsw i64 %71, 1
  %156 = load i64, ptr %55, align 8, !tbaa !71
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %70, label %64, !llvm.loop !172

158:                                              ; preds = %66, %165
  %159 = phi i64 [ %166, %165 ], [ 0, %66 ]
  %160 = getelementptr inbounds ptr, ptr %53, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !45
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %158
  %164 = call ptr @DestroyRandomInfo(ptr noundef nonnull %161) #18
  store ptr %164, ptr %160, align 8, !tbaa !45
  br label %165

165:                                              ; preds = %163, %158
  %166 = add nuw nsw i64 %159, 1
  %167 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %158, label %169, !llvm.loop !70

169:                                              ; preds = %165, %66
  %170 = call ptr @RelinquishAlignedMemory(ptr noundef %53) #18
  br i1 %67, label %171, label %174

171:                                              ; preds = %169
  %172 = call ptr @DestroyCacheView(ptr noundef %54) #18
  %173 = call ptr @DestroyImage(ptr noundef nonnull %14) #18
  br label %207

174:                                              ; preds = %169, %16
  %175 = phi ptr [ %54, %169 ], [ %17, %16 ]
  %176 = call ptr @DestroyCacheView(ptr noundef %175) #18
  %177 = call ptr @MotionBlurImage(ptr noundef nonnull %14, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #18
  %178 = call ptr @DestroyImage(ptr noundef nonnull %14) #18
  %179 = icmp eq ptr %177, null
  br i1 %179, label %207, label %180

180:                                              ; preds = %174
  %181 = call ptr @EdgeImage(ptr noundef nonnull %177, double noundef %1, ptr noundef %4) #18
  store ptr %181, ptr %6, align 8, !tbaa !45
  %182 = call ptr @DestroyImage(ptr noundef nonnull %177) #18
  %183 = load ptr, ptr %6, align 8, !tbaa !45
  %184 = icmp eq ptr %183, null
  br i1 %184, label %207, label %185

185:                                              ; preds = %180
  %186 = call i32 @NormalizeImage(ptr noundef nonnull %183) #18
  %187 = load ptr, ptr %6, align 8, !tbaa !45
  %188 = call i32 @NegateImage(ptr noundef %187, i32 noundef 0) #18
  %189 = call i32 @TransformImage(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull @.str.40) #18
  %190 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #18
  %191 = icmp eq ptr %190, null
  %192 = load ptr, ptr %6, align 8, !tbaa !45
  br i1 %191, label %193, label %195

193:                                              ; preds = %185
  %194 = call ptr @DestroyImage(ptr noundef %192) #18
  store ptr %194, ptr %6, align 8, !tbaa !45
  br label %207

195:                                              ; preds = %185
  %196 = call i32 @CompositeImage(ptr noundef nonnull %190, i32 noundef 9, ptr noundef %192, i64 noundef 0, i64 noundef 0) #18
  %197 = load ptr, ptr %6, align 8, !tbaa !45
  %198 = call ptr @DestroyImage(ptr noundef %197) #18
  store ptr %198, ptr %6, align 8, !tbaa !45
  %199 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #18
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = call ptr @DestroyImage(ptr noundef nonnull %190) #18
  br label %207

203:                                              ; preds = %195
  %204 = call i32 @SetImageArtifact(ptr noundef nonnull %199, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #18
  %205 = call i32 @CompositeImage(ptr noundef nonnull %190, i32 noundef 4, ptr noundef nonnull %199, i64 noundef 0, i64 noundef 0) #18
  %206 = call ptr @DestroyImage(ptr noundef nonnull %199) #18
  br label %207

207:                                              ; preds = %180, %174, %5, %203, %201, %193, %171
  %208 = phi ptr [ %173, %171 ], [ null, %193 ], [ null, %201 ], [ %190, %203 ], [ null, %5 ], [ null, %174 ], [ null, %180 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret ptr %208
}

declare i32 @AccelerateRandomImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #3

declare ptr @MotionBlurImage(ptr noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SolarizeImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @SolarizeImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, ptr noundef nonnull %3), !range !142
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SolarizeImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !68
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4590, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !74
  switch i32 %14, label %17 [
    i32 19, label %15
    i32 17, label %15
    i32 2, label %15
  ]

15:                                               ; preds = %12, %12, %12
  %16 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #18
  br label %17

17:                                               ; preds = %12, %15
  %18 = load i32, ptr %0, align 8, !tbaa !125
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %22 = load i64, ptr %21, align 8, !tbaa !173
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = and i32 %1, 1
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %28 = and i32 %1, 2
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %31 = and i32 %1, 4
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %34

34:                                               ; preds = %24, %62
  %35 = phi i64 [ 0, %24 ], [ %63, %62 ]
  br i1 %26, label %44, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %27, align 8, !tbaa !174
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %35, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !73
  %40 = uitofp i16 %39 to double
  %41 = fcmp ogt double %40, %2
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = xor i16 %39, -1
  store i16 %43, ptr %38, align 2, !tbaa !73
  br label %44

44:                                               ; preds = %36, %42, %34
  br i1 %29, label %53, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %30, align 8, !tbaa !174
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 %35, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !75
  %49 = uitofp i16 %48 to double
  %50 = fcmp ogt double %49, %2
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = xor i16 %48, -1
  store i16 %52, ptr %47, align 2, !tbaa !75
  br label %53

53:                                               ; preds = %45, %51, %44
  br i1 %32, label %62, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %33, align 8, !tbaa !174
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %35
  %57 = load i16, ptr %56, align 2, !tbaa !76
  %58 = uitofp i16 %57 to double
  %59 = fcmp ogt double %58, %2
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = xor i16 %57, -1
  store i16 %61, ptr %56, align 2, !tbaa !76
  br label %62

62:                                               ; preds = %53, %60, %54
  %63 = add nuw nsw i64 %35, 1
  %64 = icmp eq i64 %63, %22
  br i1 %64, label %65, label %34, !llvm.loop !175

65:                                               ; preds = %62, %20, %17
  %66 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #18
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %68 = load i64, ptr %67, align 8, !tbaa !71
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %143

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %72 = and i32 %1, 1
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %1, 2
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %1, 4
  %77 = icmp eq i32 %76, 0
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %81

81:                                               ; preds = %70, %137
  %82 = phi i64 [ 0, %70 ], [ %140, %137 ]
  %83 = phi i64 [ 0, %70 ], [ %139, %137 ]
  %84 = phi i32 [ 1, %70 ], [ %138, %137 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %137, label %86

86:                                               ; preds = %81
  %87 = load i64, ptr %71, align 8, !tbaa !72
  %88 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %66, i64 noundef 0, i64 noundef %82, i64 noundef %87, i64 noundef 1, ptr noundef %3) #23
  %89 = icmp eq ptr %88, null
  br i1 %89, label %137, label %90

90:                                               ; preds = %86
  %91 = load i64, ptr %71, align 8, !tbaa !72
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %90, %118
  %94 = phi ptr [ %119, %118 ], [ %88, %90 ]
  %95 = phi i64 [ %120, %118 ], [ 0, %90 ]
  br i1 %73, label %103, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  %98 = load i16, ptr %97, align 2, !tbaa !73
  %99 = uitofp i16 %98 to double
  %100 = fcmp ogt double %99, %2
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = xor i16 %98, -1
  store i16 %102, ptr %97, align 2, !tbaa !73
  br label %103

103:                                              ; preds = %96, %101, %93
  br i1 %75, label %111, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 1
  %106 = load i16, ptr %105, align 2, !tbaa !75
  %107 = uitofp i16 %106 to double
  %108 = fcmp ogt double %107, %2
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = xor i16 %106, -1
  store i16 %110, ptr %105, align 2, !tbaa !75
  br label %111

111:                                              ; preds = %104, %109, %103
  br i1 %77, label %118, label %112

112:                                              ; preds = %111
  %113 = load i16, ptr %94, align 2, !tbaa !76
  %114 = uitofp i16 %113 to double
  %115 = fcmp ogt double %114, %2
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = xor i16 %113, -1
  store i16 %117, ptr %94, align 2, !tbaa !76
  br label %118

118:                                              ; preds = %112, %116, %111
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %120 = add nuw nsw i64 %95, 1
  %121 = icmp eq i64 %120, %91
  br i1 %121, label %122, label %93, !llvm.loop !176

122:                                              ; preds = %118, %90
  %123 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %66, ptr noundef %3) #23
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load ptr, ptr %78, align 8, !tbaa !80
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %122
  %129 = add nsw i64 %83, 1
  %130 = load i64, ptr %67, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %131 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.43, ptr noundef nonnull %79) #18
  %132 = load ptr, ptr %78, align 8, !tbaa !80
  %133 = load ptr, ptr %80, align 8, !tbaa !81
  %134 = call i32 %132(ptr noundef nonnull %5, i64 noundef %83, i64 noundef %130, ptr noundef %133) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, i32 0, i32 %125
  br label %137

137:                                              ; preds = %122, %128, %86, %81
  %138 = phi i32 [ 0, %81 ], [ 0, %86 ], [ %136, %128 ], [ %125, %122 ]
  %139 = phi i64 [ %83, %81 ], [ %83, %86 ], [ %129, %128 ], [ %83, %122 ]
  %140 = add nuw nsw i64 %82, 1
  %141 = load i64, ptr %67, align 8, !tbaa !71
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %81, label %143, !llvm.loop !177

143:                                              ; preds = %137, %65
  %144 = phi i32 [ 1, %65 ], [ %138, %137 ]
  %145 = call ptr @DestroyCacheView(ptr noundef %66) #18
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SteganoImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !68
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4748, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %196, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %13, i32 noundef 1) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %19) #18
  %20 = tail call ptr @DestroyImage(ptr noundef nonnull %13) #18
  br label %196

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 9
  store i64 16, ptr %22, align 8, !tbaa !178
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 23
  %24 = load i64, ptr %23, align 8, !tbaa !179
  %25 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %2) #18
  %26 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %13, ptr noundef %2) #18
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %29 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 7
  %30 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %34

34:                                               ; preds = %21, %179
  %35 = phi i64 [ %24, %21 ], [ %168, %179 ]
  %36 = phi i64 [ 0, %21 ], [ %167, %179 ]
  %37 = phi i64 [ 15, %21 ], [ %181, %179 ]
  %38 = phi i32 [ 1, %21 ], [ %180, %179 ]
  %39 = phi i32 [ 0, %21 ], [ %166, %179 ]
  %40 = load i64, ptr %27, align 8, !tbaa !71
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %165

42:                                               ; preds = %34
  %43 = shl nuw i64 1, %37
  %44 = shl nuw i64 1, %37
  %45 = shl nuw i64 1, %37
  br label %46

46:                                               ; preds = %42, %156
  %47 = phi i64 [ 0, %42 ], [ %160, %156 ]
  %48 = phi i64 [ %35, %42 ], [ %159, %156 ]
  %49 = phi i64 [ %36, %42 ], [ %158, %156 ]
  %50 = phi i32 [ %39, %42 ], [ %157, %156 ]
  %51 = load i64, ptr %28, align 8, !tbaa !72
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %156

53:                                               ; preds = %46, %138
  %54 = phi i64 [ %146, %138 ], [ %48, %46 ]
  %55 = phi i64 [ %150, %138 ], [ %49, %46 ]
  %56 = phi i64 [ %151, %138 ], [ 0, %46 ]
  %57 = phi i32 [ %141, %138 ], [ %50, %46 ]
  %58 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %25, i64 noundef %56, i64 noundef %47, ptr noundef nonnull %5, ptr noundef %2) #18
  %59 = load i64, ptr %29, align 8, !tbaa !72
  %60 = sdiv i64 %54, %59
  %61 = srem i64 %54, %59
  %62 = load i64, ptr %30, align 8, !tbaa !71
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %53
  %65 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %26, i64 noundef %61, i64 noundef %60, i64 noundef 1, i64 noundef 1, ptr noundef %2) #23
  %66 = icmp eq ptr %65, null
  br i1 %66, label %156, label %67

67:                                               ; preds = %64
  switch i32 %57, label %135 [
    i32 0, label %68
    i32 1, label %91
    i32 2, label %114
  ]

68:                                               ; preds = %67
  %69 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %5) #23
  %70 = fcmp ugt float %69, 0.000000e+00
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = fcmp ult float %69, 6.553500e+04
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = fadd float %69, 5.000000e-01
  %75 = fptoui float %74 to i16
  br label %76

76:                                               ; preds = %68, %71, %73
  %77 = phi i16 [ %75, %73 ], [ 0, %68 ], [ -1, %71 ]
  %78 = zext i16 %77 to i64
  %79 = and i64 %45, %78
  %80 = icmp eq i64 %79, 0
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 2
  %82 = load i16, ptr %81, align 2, !tbaa !73
  %83 = zext i16 %82 to i64
  %84 = shl nuw nsw i64 1, %55
  %85 = or i64 %84, %83
  %86 = xor i64 %84, -1
  %87 = and i64 %83, %86
  %88 = select i1 %80, i64 %87, i64 %85
  %89 = trunc i64 %88 to i16
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 2
  store i16 %89, ptr %90, align 2, !tbaa !73
  br label %135

91:                                               ; preds = %67
  %92 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %5) #23
  %93 = fcmp ugt float %92, 0.000000e+00
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = fcmp ult float %92, 6.553500e+04
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = fadd float %92, 5.000000e-01
  %98 = fptoui float %97 to i16
  br label %99

99:                                               ; preds = %91, %94, %96
  %100 = phi i16 [ %98, %96 ], [ 0, %91 ], [ -1, %94 ]
  %101 = zext i16 %100 to i64
  %102 = and i64 %44, %101
  %103 = icmp eq i64 %102, 0
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 1
  %105 = load i16, ptr %104, align 2, !tbaa !75
  %106 = zext i16 %105 to i64
  %107 = shl nuw nsw i64 1, %55
  %108 = or i64 %107, %106
  %109 = xor i64 %107, -1
  %110 = and i64 %106, %109
  %111 = select i1 %103, i64 %110, i64 %108
  %112 = trunc i64 %111 to i16
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 1
  store i16 %112, ptr %113, align 2, !tbaa !75
  br label %135

114:                                              ; preds = %67
  %115 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %5) #23
  %116 = fcmp ugt float %115, 0.000000e+00
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = fcmp ult float %115, 6.553500e+04
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = fadd float %115, 5.000000e-01
  %121 = fptoui float %120 to i16
  br label %122

122:                                              ; preds = %114, %117, %119
  %123 = phi i16 [ %121, %119 ], [ 0, %114 ], [ -1, %117 ]
  %124 = zext i16 %123 to i64
  %125 = and i64 %43, %124
  %126 = icmp eq i64 %125, 0
  %127 = load i16, ptr %65, align 2, !tbaa !76
  %128 = zext i16 %127 to i64
  %129 = shl nuw nsw i64 1, %55
  %130 = or i64 %129, %128
  %131 = xor i64 %129, -1
  %132 = and i64 %128, %131
  %133 = select i1 %126, i64 %132, i64 %130
  %134 = trunc i64 %133 to i16
  store i16 %134, ptr %65, align 2, !tbaa !76
  br label %135

135:                                              ; preds = %67, %122, %99, %76
  %136 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %26, ptr noundef %2) #23
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %156, label %138

138:                                              ; preds = %135
  %139 = add nsw i32 %57, 1
  %140 = icmp eq i32 %139, 3
  %141 = select i1 %140, i32 0, i32 %139
  %142 = add nsw i64 %54, 1
  %143 = load i64, ptr %29, align 8, !tbaa !72
  %144 = mul i64 %143, %143
  %145 = icmp eq i64 %142, %144
  %146 = select i1 %145, i64 0, i64 %142
  %147 = load i64, ptr %23, align 8, !tbaa !179
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i64
  %150 = add nsw i64 %55, %149
  %151 = add nuw nsw i64 %56, 1
  %152 = load i64, ptr %28, align 8, !tbaa !72
  %153 = icmp slt i64 %151, %152
  %154 = icmp slt i64 %150, 16
  %155 = select i1 %153, i1 %154, i1 false
  br i1 %155, label %53, label %156, !llvm.loop !180

156:                                              ; preds = %135, %64, %53, %138, %46
  %157 = phi i32 [ %50, %46 ], [ %57, %135 ], [ %57, %64 ], [ %57, %53 ], [ %141, %138 ]
  %158 = phi i64 [ %49, %46 ], [ %55, %135 ], [ %55, %64 ], [ %55, %53 ], [ %150, %138 ]
  %159 = phi i64 [ %48, %46 ], [ %54, %135 ], [ %54, %64 ], [ %54, %53 ], [ %146, %138 ]
  %160 = add nuw nsw i64 %47, 1
  %161 = load i64, ptr %27, align 8, !tbaa !71
  %162 = icmp slt i64 %160, %161
  %163 = icmp slt i64 %158, 16
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %46, label %165, !llvm.loop !181

165:                                              ; preds = %156, %34
  %166 = phi i32 [ %39, %34 ], [ %157, %156 ]
  %167 = phi i64 [ %36, %34 ], [ %158, %156 ]
  %168 = phi i64 [ %35, %34 ], [ %159, %156 ]
  %169 = load ptr, ptr %31, align 8, !tbaa !80
  %170 = icmp eq ptr %169, null
  br i1 %170, label %179, label %171

171:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %172 = sub nuw nsw i64 16, %37
  %173 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.44, ptr noundef nonnull %32) #18
  %174 = load ptr, ptr %31, align 8, !tbaa !80
  %175 = load ptr, ptr %33, align 8, !tbaa !81
  %176 = call i32 %174(ptr noundef nonnull %4, i64 noundef %172, i64 noundef 16, ptr noundef %175) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i32 0, i32 %38
  br label %179

179:                                              ; preds = %165, %171
  %180 = phi i32 [ %178, %171 ], [ %38, %165 ]
  %181 = add nsw i64 %37, -1
  %182 = icmp ne i64 %37, 0
  %183 = icmp slt i64 %167, 16
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %34, label %185, !llvm.loop !182

185:                                              ; preds = %179
  %186 = call ptr @DestroyCacheView(ptr noundef %26) #18
  %187 = call ptr @DestroyCacheView(ptr noundef %25) #18
  %188 = load i32, ptr %13, align 8, !tbaa !125
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = call i32 @SyncImage(ptr noundef nonnull %13) #18
  br label %192

192:                                              ; preds = %190, %185
  %193 = icmp eq i32 %180, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %192
  %195 = call ptr @DestroyImage(ptr noundef nonnull %13) #18
  br label %196

196:                                              ; preds = %192, %194, %12, %18
  %197 = phi ptr [ null, %18 ], [ null, %12 ], [ %195, %194 ], [ %13, %192 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %197
}

declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @StereoImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @StereoAnaglyphImage(ptr noundef %0, ptr noundef %1, i64 noundef 0, i64 noundef 0, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StereoAnaglyphImage(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4908, ptr noundef nonnull @.str.22, ptr noundef nonnull %11) #18
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !72
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !71
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4918, i32 noundef 465, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, ptr noundef nonnull %26) #18
  br label %118

28:                                               ; preds = %19
  %29 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %15, i64 noundef %21, i32 noundef 1, ptr noundef %4) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %118, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %29, i32 noundef 1) #18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %35) #18
  %36 = tail call ptr @DestroyImage(ptr noundef nonnull %29) #18
  br label %118

37:                                               ; preds = %31
  %38 = tail call i32 @SetImageColorspace(ptr noundef nonnull %29, i32 noundef 13) #18
  %39 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !71
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %118

42:                                               ; preds = %37
  %43 = sub nsw i64 0, %2
  %44 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %52

48:                                               ; preds = %111
  %49 = add nuw nsw i64 %53, 1
  %50 = load i64, ptr %39, align 8, !tbaa !71
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %114, !llvm.loop !183

52:                                               ; preds = %42, %48
  %53 = phi i64 [ 0, %42 ], [ %49, %48 ]
  %54 = phi i32 [ 1, %42 ], [ %112, %48 ]
  %55 = sub nsw i64 %53, %3
  %56 = load i64, ptr %14, align 8, !tbaa !72
  %57 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %43, i64 noundef %55, i64 noundef %56, i64 noundef 1, ptr noundef %4) #18
  %58 = load i64, ptr %16, align 8, !tbaa !72
  %59 = call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef 0, i64 noundef %53, i64 noundef %58, i64 noundef 1, ptr noundef %4) #18
  %60 = load i64, ptr %44, align 8, !tbaa !72
  %61 = call ptr @QueueAuthenticPixels(ptr noundef nonnull %29, i64 noundef 0, i64 noundef %53, i64 noundef %60, i64 noundef 1, ptr noundef %4) #18
  %62 = icmp eq ptr %57, null
  %63 = icmp eq ptr %59, null
  %64 = select i1 %62, i1 true, i1 %63
  %65 = icmp eq ptr %61, null
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %111, label %67

67:                                               ; preds = %52
  %68 = load i64, ptr %44, align 8, !tbaa !72
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %67, %70
  %71 = phi ptr [ %94, %70 ], [ %61, %67 ]
  %72 = phi i64 [ %95, %70 ], [ 0, %67 ]
  %73 = phi ptr [ %93, %70 ], [ %59, %67 ]
  %74 = phi ptr [ %92, %70 ], [ %57, %67 ]
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  %76 = load i16, ptr %75, align 2, !tbaa !73
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  store i16 %76, ptr %77, align 2, !tbaa !73
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !75
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  store i16 %79, ptr %80, align 2, !tbaa !75
  %81 = load i16, ptr %73, align 2, !tbaa !76
  store i16 %81, ptr %71, align 2, !tbaa !76
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  %83 = load i16, ptr %82, align 2, !tbaa !77
  %84 = zext i16 %83 to i32
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  %86 = load i16, ptr %85, align 2, !tbaa !77
  %87 = zext i16 %86 to i32
  %88 = add nuw nsw i32 %87, %84
  %89 = lshr i32 %88, 1
  %90 = trunc i32 %89 to i16
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  store i16 %90, ptr %91, align 2, !tbaa !77
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %95 = add nuw nsw i64 %72, 1
  %96 = icmp eq i64 %95, %68
  br i1 %96, label %97, label %70, !llvm.loop !184

97:                                               ; preds = %70, %67
  %98 = call i32 @SyncAuthenticPixels(ptr noundef nonnull %29, ptr noundef %4) #18
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %45, align 8, !tbaa !80
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %100
  %104 = load i64, ptr %39, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #18
  %105 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.46, ptr noundef nonnull %46) #18
  %106 = load ptr, ptr %45, align 8, !tbaa !80
  %107 = load ptr, ptr %47, align 8, !tbaa !81
  %108 = call i32 %106(ptr noundef nonnull %6, i64 noundef %53, i64 noundef %104, ptr noundef %107) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #18
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 0, i32 %54
  br label %111

111:                                              ; preds = %100, %103, %97, %52
  %112 = phi i32 [ %54, %52 ], [ %54, %97 ], [ %110, %103 ], [ %54, %100 ]
  %113 = phi i1 [ false, %52 ], [ false, %97 ], [ true, %103 ], [ true, %100 ]
  br i1 %113, label %48, label %114

114:                                              ; preds = %111, %48
  %115 = icmp eq i32 %112, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %117 = call ptr @DestroyImage(ptr noundef nonnull %29) #18
  br label %118

118:                                              ; preds = %37, %114, %116, %28, %34, %25
  %119 = phi ptr [ null, %25 ], [ null, %34 ], [ null, %28 ], [ %117, %116 ], [ %29, %114 ], [ %29, %37 ]
  ret ptr %119
}

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @QueueAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @SwirlImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #18
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5050, ptr noundef nonnull @.str.22, ptr noundef nonnull %11) #18
  br label %13

13:                                               ; preds = %10, %3
  %14 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %205, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %14, i32 noundef 1) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %20) #18
  %21 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #18
  br label %205

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 12, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !115
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !86
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %30 = load i64, ptr %29, align 8, !tbaa !72
  %31 = uitofp i64 %30 to double
  %32 = fmul double %31, 5.000000e-01
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !71
  %35 = uitofp i64 %34 to double
  %36 = fmul double %35, 5.000000e-01
  %37 = fcmp ogt double %32, %36
  %38 = select i1 %37, double %32, double %36
  %39 = icmp ugt i64 %30, %34
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = fdiv double %31, %35
  br label %46

42:                                               ; preds = %28
  %43 = icmp ult i64 %30, %34
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = fdiv double %35, %31
  br label %46

46:                                               ; preds = %42, %44, %40
  %47 = phi double [ 1.000000e+00, %40 ], [ %45, %44 ], [ 1.000000e+00, %42 ]
  %48 = phi double [ %41, %40 ], [ 1.000000e+00, %44 ], [ 1.000000e+00, %42 ]
  %49 = fmul double %1, 0x400921FB54442D18
  %50 = fdiv double %49, 1.800000e+02
  call void @GetMagickPixelPacket(ptr noundef nonnull %14, ptr noundef nonnull %5) #18
  %51 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #18
  %52 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %2) #18
  %53 = load i64, ptr %33, align 8, !tbaa !71
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %202

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %57 = fmul double %38, %38
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %62 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 1
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %67

67:                                               ; preds = %55, %190
  %68 = phi i32 [ 1, %55 ], [ %192, %190 ]
  %69 = phi i64 [ 0, %55 ], [ %191, %190 ]
  %70 = phi i64 [ 0, %55 ], [ %193, %190 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #18
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %190, label %72

72:                                               ; preds = %67
  %73 = load i64, ptr %56, align 8, !tbaa !72
  %74 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %52, i64 noundef 0, i64 noundef %70, i64 noundef %73, i64 noundef 1, ptr noundef %2) #23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %190, label %76

76:                                               ; preds = %72
  %77 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #18
  %78 = sitofp i64 %70 to double
  %79 = fsub double %78, %36
  %80 = fmul double %48, %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !116
  %81 = load i64, ptr %29, align 8, !tbaa !72
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %175

83:                                               ; preds = %76
  %84 = fmul double %80, %80
  %85 = icmp ne ptr %77, null
  %86 = icmp eq ptr %77, null
  br label %87

87:                                               ; preds = %83, %170
  %88 = phi ptr [ %74, %83 ], [ %171, %170 ]
  %89 = phi i64 [ 0, %83 ], [ %172, %170 ]
  %90 = sitofp i64 %89 to double
  %91 = fsub double %90, %32
  %92 = fmul double %47, %91
  %93 = call double @llvm.fmuladd.f64(double %92, double %92, double %84)
  %94 = fcmp olt double %93, %57
  br i1 %94, label %95, label %170

95:                                               ; preds = %87
  %96 = call double @sqrt(double noundef %93) #18
  %97 = fdiv double %96, %38
  %98 = fsub double 1.000000e+00, %97
  %99 = fmul double %50, %98
  %100 = fmul double %98, %99
  %101 = call double @sin(double noundef %100) #18
  %102 = call double @cos(double noundef %100) #18
  %103 = fneg double %101
  %104 = fmul double %80, %103
  %105 = call double @llvm.fmuladd.f64(double %102, double %92, double %104)
  %106 = fdiv double %105, %47
  %107 = fadd double %32, %106
  %108 = fmul double %80, %102
  %109 = call double @llvm.fmuladd.f64(double %101, double %92, double %108)
  %110 = fdiv double %109, %48
  %111 = fadd double %36, %110
  %112 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %51, i32 noundef 0, double noundef %107, double noundef %111, ptr noundef nonnull %6, ptr noundef %2) #18
  %113 = getelementptr inbounds i16, ptr %77, i64 %89
  %114 = load float, ptr %58, align 8, !tbaa !120
  %115 = fcmp ugt float %114, 0.000000e+00
  br i1 %115, label %116, label %121

116:                                              ; preds = %95
  %117 = fcmp ult float %114, 6.553500e+04
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = fadd float %114, 5.000000e-01
  %120 = fptoui float %119 to i16
  br label %121

121:                                              ; preds = %118, %116, %95
  %122 = phi i16 [ %120, %118 ], [ 0, %95 ], [ -1, %116 ]
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 2
  store i16 %122, ptr %123, align 2, !tbaa !73
  %124 = load float, ptr %59, align 4, !tbaa !122
  %125 = fcmp ugt float %124, 0.000000e+00
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = fcmp ult float %124, 6.553500e+04
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = fadd float %124, 5.000000e-01
  %130 = fptoui float %129 to i16
  br label %131

131:                                              ; preds = %128, %126, %121
  %132 = phi i16 [ %130, %128 ], [ 0, %121 ], [ -1, %126 ]
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 1
  store i16 %132, ptr %133, align 2, !tbaa !75
  %134 = load float, ptr %60, align 8, !tbaa !123
  %135 = fcmp ugt float %134, 0.000000e+00
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = fcmp ult float %134, 6.553500e+04
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = fadd float %134, 5.000000e-01
  %140 = fptoui float %139 to i16
  br label %141

141:                                              ; preds = %138, %136, %131
  %142 = phi i16 [ %140, %138 ], [ 0, %131 ], [ -1, %136 ]
  store i16 %142, ptr %88, align 2, !tbaa !76
  %143 = load float, ptr %61, align 4, !tbaa !124
  %144 = fcmp ugt float %143, 0.000000e+00
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = fcmp ult float %143, 6.553500e+04
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = fadd float %143, 5.000000e-01
  %149 = fptoui float %148 to i16
  br label %150

150:                                              ; preds = %147, %145, %141
  %151 = phi i16 [ %149, %147 ], [ 0, %141 ], [ -1, %145 ]
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 3
  store i16 %151, ptr %152, align 2, !tbaa !77
  %153 = load i32, ptr %62, align 4, !tbaa !74
  %154 = icmp eq i32 %153, 12
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = load i32, ptr %14, align 8, !tbaa !125
  %157 = icmp eq i32 %156, 2
  %158 = and i1 %85, %157
  br i1 %158, label %160, label %170

159:                                              ; preds = %150
  br i1 %86, label %170, label %160

160:                                              ; preds = %159, %155
  %161 = load float, ptr %63, align 8, !tbaa !126
  %162 = fcmp ugt float %161, 0.000000e+00
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = fcmp ult float %161, 6.553500e+04
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = fadd float %161, 5.000000e-01
  %167 = fptoui float %166 to i16
  br label %168

168:                                              ; preds = %165, %163, %160
  %169 = phi i16 [ %167, %165 ], [ 0, %160 ], [ -1, %163 ]
  store i16 %169, ptr %113, align 2, !tbaa !78
  br label %170

170:                                              ; preds = %168, %159, %155, %87
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1
  %172 = add nuw nsw i64 %89, 1
  %173 = load i64, ptr %29, align 8, !tbaa !72
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %87, label %175, !llvm.loop !185

175:                                              ; preds = %170, %76
  %176 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %52, ptr noundef %2) #23
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = load ptr, ptr %64, align 8, !tbaa !80
  %180 = icmp eq ptr %179, null
  br i1 %180, label %190, label %181

181:                                              ; preds = %175
  %182 = add nsw i64 %69, 1
  %183 = load i64, ptr %33, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %184 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.47, ptr noundef nonnull %65) #18
  %185 = load ptr, ptr %64, align 8, !tbaa !80
  %186 = load ptr, ptr %66, align 8, !tbaa !81
  %187 = call i32 %185(ptr noundef nonnull %4, i64 noundef %69, i64 noundef %183, ptr noundef %186) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  %188 = icmp eq i32 %187, 0
  %189 = select i1 %188, i32 0, i32 %178
  br label %190

190:                                              ; preds = %175, %181, %72, %67
  %191 = phi i64 [ %69, %67 ], [ %69, %72 ], [ %182, %181 ], [ %69, %175 ]
  %192 = phi i32 [ 0, %67 ], [ 0, %72 ], [ %189, %181 ], [ %178, %175 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #18
  %193 = add nuw nsw i64 %70, 1
  %194 = load i64, ptr %33, align 8, !tbaa !71
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %67, label %196, !llvm.loop !186

196:                                              ; preds = %190
  %197 = icmp eq i32 %192, 0
  %198 = call ptr @DestroyCacheView(ptr noundef %52) #18
  %199 = call ptr @DestroyCacheView(ptr noundef %51) #18
  br i1 %197, label %200, label %205

200:                                              ; preds = %196
  %201 = call ptr @DestroyImage(ptr noundef nonnull %14) #18
  br label %205

202:                                              ; preds = %46
  %203 = call ptr @DestroyCacheView(ptr noundef %52) #18
  %204 = call ptr @DestroyCacheView(ptr noundef %51) #18
  br label %205

205:                                              ; preds = %202, %196, %200, %13, %19
  %206 = phi ptr [ null, %19 ], [ null, %13 ], [ %201, %200 ], [ %14, %196 ], [ %14, %202 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #18
  ret ptr %206
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local ptr @TintImage(ptr noundef %0, ptr noundef %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._GeometryInfo, align 8
  %7 = trunc i64 %2 to i16
  %8 = lshr i64 %2, 16
  %9 = trunc i64 %8 to i16
  %10 = lshr i64 %2, 32
  %11 = trunc i64 %10 to i16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5240, ptr noundef nonnull @.str.22, ptr noundef nonnull %16) #18
  br label %18

18:                                               ; preds = %15, %4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !71
  %23 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %20, i64 noundef %22, i32 noundef 1, ptr noundef %3) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %261, label %25

25:                                               ; preds = %18
  %26 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %23, i32 noundef 1) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %29) #18
  %30 = tail call ptr @DestroyImage(ptr noundef nonnull %23) #18
  br label %261

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !74
  switch i32 %33, label %53 [
    i32 19, label %34
    i32 17, label %34
    i32 2, label %34
  ]

34:                                               ; preds = %31, %31, %31
  %35 = uitofp i16 %11 to float
  %36 = uitofp i16 %9 to float
  %37 = fsub float %35, %36
  %38 = fcmp olt float %37, 0.000000e+00
  %39 = fneg float %37
  %40 = select i1 %38, float %39, float %37
  %41 = fpext float %40 to double
  %42 = fcmp olt double %41, 1.000000e-15
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = uitofp i16 %7 to float
  %45 = fsub float %36, %44
  %46 = fcmp olt float %45, 0.000000e+00
  %47 = fneg float %45
  %48 = select i1 %46, float %47, float %45
  %49 = fpext float %48 to double
  %50 = fcmp olt double %49, 1.000000e-15
  br i1 %50, label %53, label %51

51:                                               ; preds = %43, %34
  %52 = tail call i32 @SetImageColorspace(ptr noundef nonnull %23, i32 noundef 13) #18
  br label %53

53:                                               ; preds = %31, %43, %51
  %54 = icmp eq ptr %1, null
  br i1 %54, label %261, label %55

55:                                               ; preds = %53
  %56 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %6) #18
  %57 = load double, ptr %6, align 8, !tbaa !87
  %58 = fptrunc double %57 to float
  %59 = and i32 %56, 8
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %62 = load double, ptr %61, align 8
  %63 = fptrunc double %62 to float
  %64 = select i1 %60, float %58, float %63
  %65 = and i32 %56, 1
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 2
  %68 = load double, ptr %67, align 8
  %69 = fptrunc double %68 to float
  %70 = select i1 %66, float %58, float %69
  %71 = uitofp i16 %11 to float
  %72 = fmul float %71, %58
  %73 = fpext float %72 to double
  %74 = fdiv double %73, 1.000000e+02
  %75 = icmp eq i16 %11, %9
  %76 = icmp eq i16 %9, %7
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %92, label %78

78:                                               ; preds = %55
  %79 = uitofp i16 %11 to double
  %80 = uitofp i16 %9 to double
  %81 = fmul double %80, 0x3FE6E29307AF20EA
  %82 = call double @llvm.fmuladd.f64(double %79, double 2.126560e-01, double %81)
  %83 = uitofp i16 %7 to double
  %84 = call double @llvm.fmuladd.f64(double %83, double 7.218600e-02, double %82)
  %85 = fptrunc double %84 to float
  %86 = fcmp ugt float %85, 0.000000e+00
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = fcmp ult float %85, 6.553500e+04
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = fadd float %85, 5.000000e-01
  %91 = fptoui float %90 to i16
  br label %92

92:                                               ; preds = %55, %78, %87, %89
  %93 = phi i16 [ %91, %89 ], [ 0, %78 ], [ -1, %87 ], [ %11, %55 ]
  %94 = uitofp i16 %93 to double
  %95 = fsub double %74, %94
  %96 = fptrunc double %95 to float
  %97 = uitofp i16 %9 to float
  %98 = fmul float %64, %97
  %99 = fpext float %98 to double
  %100 = fdiv double %99, 1.000000e+02
  br i1 %77, label %115, label %101

101:                                              ; preds = %92
  %102 = uitofp i16 %11 to double
  %103 = uitofp i16 %9 to double
  %104 = fmul double %103, 0x3FE6E29307AF20EA
  %105 = call double @llvm.fmuladd.f64(double %102, double 2.126560e-01, double %104)
  %106 = uitofp i16 %7 to double
  %107 = call double @llvm.fmuladd.f64(double %106, double 7.218600e-02, double %105)
  %108 = fptrunc double %107 to float
  %109 = fcmp ugt float %108, 0.000000e+00
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = fcmp ult float %108, 6.553500e+04
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = fadd float %108, 5.000000e-01
  %114 = fptoui float %113 to i16
  br label %115

115:                                              ; preds = %92, %101, %110, %112
  %116 = phi i16 [ %114, %112 ], [ 0, %101 ], [ -1, %110 ], [ %11, %92 ]
  %117 = uitofp i16 %116 to double
  %118 = fsub double %100, %117
  %119 = fptrunc double %118 to float
  %120 = uitofp i16 %7 to float
  %121 = fmul float %70, %120
  %122 = fpext float %121 to double
  %123 = fdiv double %122, 1.000000e+02
  br i1 %77, label %138, label %124

124:                                              ; preds = %115
  %125 = uitofp i16 %11 to double
  %126 = uitofp i16 %9 to double
  %127 = fmul double %126, 0x3FE6E29307AF20EA
  %128 = call double @llvm.fmuladd.f64(double %125, double 2.126560e-01, double %127)
  %129 = uitofp i16 %7 to double
  %130 = call double @llvm.fmuladd.f64(double %129, double 7.218600e-02, double %128)
  %131 = fptrunc double %130 to float
  %132 = fcmp ugt float %131, 0.000000e+00
  br i1 %132, label %133, label %138

133:                                              ; preds = %124
  %134 = fcmp ult float %131, 6.553500e+04
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = fadd float %131, 5.000000e-01
  %137 = fptoui float %136 to i16
  br label %138

138:                                              ; preds = %115, %124, %133, %135
  %139 = phi i16 [ %137, %135 ], [ 0, %124 ], [ -1, %133 ], [ %11, %115 ]
  %140 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #18
  %141 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %23, ptr noundef %3) #18
  %142 = load i64, ptr %21, align 8, !tbaa !71
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %258

144:                                              ; preds = %138
  %145 = uitofp i16 %139 to double
  %146 = fsub double %123, %145
  %147 = fptrunc double %146 to float
  %148 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 7
  %149 = fpext float %96 to double
  %150 = fpext float %119 to double
  %151 = fpext float %147 to double
  %152 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %153 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %154 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %155

155:                                              ; preds = %144, %246
  %156 = phi i32 [ 1, %144 ], [ %248, %246 ]
  %157 = phi i64 [ 0, %144 ], [ %247, %246 ]
  %158 = phi i64 [ 0, %144 ], [ %249, %246 ]
  %159 = icmp eq i32 %156, 0
  br i1 %159, label %246, label %160

160:                                              ; preds = %155
  %161 = load i64, ptr %19, align 8, !tbaa !72
  %162 = call ptr @GetCacheViewVirtualPixels(ptr noundef %140, i64 noundef 0, i64 noundef %158, i64 noundef %161, i64 noundef 1, ptr noundef %3) #23
  %163 = load i64, ptr %148, align 8, !tbaa !72
  %164 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %141, i64 noundef 0, i64 noundef %158, i64 noundef %163, i64 noundef 1, ptr noundef %3) #23
  %165 = icmp eq ptr %162, null
  %166 = icmp eq ptr %164, null
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %246, label %168

168:                                              ; preds = %160
  %169 = load i64, ptr %19, align 8, !tbaa !72
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %231

171:                                              ; preds = %168, %222
  %172 = phi i64 [ %229, %222 ], [ 0, %168 ]
  %173 = phi ptr [ %228, %222 ], [ %164, %168 ]
  %174 = phi ptr [ %227, %222 ], [ %162, %168 ]
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 2
  %176 = load i16, ptr %175, align 2, !tbaa !73
  %177 = uitofp i16 %176 to double
  %178 = call double @llvm.fmuladd.f64(double %177, double 0x3EF0001000100010, double -5.000000e-01)
  %179 = fmul double %178, %178
  %180 = call double @llvm.fmuladd.f64(double %179, double -4.000000e+00, double 1.000000e+00)
  %181 = call double @llvm.fmuladd.f64(double %149, double %180, double %177)
  %182 = fptrunc double %181 to float
  %183 = fcmp ugt float %182, 0.000000e+00
  br i1 %183, label %184, label %189

184:                                              ; preds = %171
  %185 = fcmp ult float %182, 6.553500e+04
  br i1 %185, label %186, label %189

186:                                              ; preds = %184
  %187 = fadd float %182, 5.000000e-01
  %188 = fptoui float %187 to i16
  br label %189

189:                                              ; preds = %171, %184, %186
  %190 = phi i16 [ %188, %186 ], [ 0, %171 ], [ -1, %184 ]
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %173, i64 0, i32 2
  store i16 %190, ptr %191, align 2, !tbaa !73
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 1
  %193 = load i16, ptr %192, align 2, !tbaa !75
  %194 = uitofp i16 %193 to double
  %195 = call double @llvm.fmuladd.f64(double %194, double 0x3EF0001000100010, double -5.000000e-01)
  %196 = fmul double %195, %195
  %197 = call double @llvm.fmuladd.f64(double %196, double -4.000000e+00, double 1.000000e+00)
  %198 = call double @llvm.fmuladd.f64(double %150, double %197, double %194)
  %199 = fptrunc double %198 to float
  %200 = fcmp ugt float %199, 0.000000e+00
  br i1 %200, label %201, label %206

201:                                              ; preds = %189
  %202 = fcmp ult float %199, 6.553500e+04
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = fadd float %199, 5.000000e-01
  %205 = fptoui float %204 to i16
  br label %206

206:                                              ; preds = %189, %201, %203
  %207 = phi i16 [ %205, %203 ], [ 0, %189 ], [ -1, %201 ]
  %208 = getelementptr inbounds %struct._PixelPacket, ptr %173, i64 0, i32 1
  store i16 %207, ptr %208, align 2, !tbaa !75
  %209 = load i16, ptr %174, align 2, !tbaa !76
  %210 = uitofp i16 %209 to double
  %211 = call double @llvm.fmuladd.f64(double %210, double 0x3EF0001000100010, double -5.000000e-01)
  %212 = fmul double %211, %211
  %213 = call double @llvm.fmuladd.f64(double %212, double -4.000000e+00, double 1.000000e+00)
  %214 = call double @llvm.fmuladd.f64(double %151, double %213, double %210)
  %215 = fptrunc double %214 to float
  %216 = fcmp ugt float %215, 0.000000e+00
  br i1 %216, label %217, label %222

217:                                              ; preds = %206
  %218 = fcmp ult float %215, 6.553500e+04
  br i1 %218, label %219, label %222

219:                                              ; preds = %217
  %220 = fadd float %215, 5.000000e-01
  %221 = fptoui float %220 to i16
  br label %222

222:                                              ; preds = %206, %217, %219
  %223 = phi i16 [ %221, %219 ], [ 0, %206 ], [ -1, %217 ]
  store i16 %223, ptr %173, align 2, !tbaa !76
  %224 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 3
  %225 = load i16, ptr %224, align 2, !tbaa !77
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %173, i64 0, i32 3
  store i16 %225, ptr %226, align 2, !tbaa !77
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 1
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %173, i64 1
  %229 = add nuw nsw i64 %172, 1
  %230 = icmp eq i64 %229, %169
  br i1 %230, label %231, label %171, !llvm.loop !187

231:                                              ; preds = %222, %168
  %232 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %141, ptr noundef %3) #23
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i32
  %235 = load ptr, ptr %152, align 8, !tbaa !80
  %236 = icmp eq ptr %235, null
  br i1 %236, label %246, label %237

237:                                              ; preds = %231
  %238 = add nsw i64 %157, 1
  %239 = load i64, ptr %21, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %240 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.48, ptr noundef nonnull %153) #18
  %241 = load ptr, ptr %152, align 8, !tbaa !80
  %242 = load ptr, ptr %154, align 8, !tbaa !81
  %243 = call i32 %241(ptr noundef nonnull %5, i64 noundef %157, i64 noundef %239, ptr noundef %242) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %244, i32 0, i32 %234
  br label %246

246:                                              ; preds = %231, %237, %160, %155
  %247 = phi i64 [ %157, %155 ], [ %157, %160 ], [ %238, %237 ], [ %157, %231 ]
  %248 = phi i32 [ 0, %155 ], [ 0, %160 ], [ %245, %237 ], [ %234, %231 ]
  %249 = add nuw nsw i64 %158, 1
  %250 = load i64, ptr %21, align 8, !tbaa !71
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %155, label %252, !llvm.loop !188

252:                                              ; preds = %246
  %253 = icmp eq i32 %248, 0
  %254 = call ptr @DestroyCacheView(ptr noundef %141) #18
  %255 = call ptr @DestroyCacheView(ptr noundef %140) #18
  br i1 %253, label %256, label %261

256:                                              ; preds = %252
  %257 = call ptr @DestroyImage(ptr noundef nonnull %23) #18
  br label %261

258:                                              ; preds = %138
  %259 = call ptr @DestroyCacheView(ptr noundef %141) #18
  %260 = call ptr @DestroyCacheView(ptr noundef %140) #18
  br label %261

261:                                              ; preds = %258, %252, %256, %53, %18, %28
  %262 = phi ptr [ null, %28 ], [ null, %18 ], [ %23, %53 ], [ %257, %256 ], [ %23, %252 ], [ %23, %258 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  ret ptr %262
}

; Function Attrs: nounwind uwtable
define dso_local ptr @VignetteImage(ptr noundef %0, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #18
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5405, ptr noundef nonnull @.str.22, ptr noundef nonnull %12) #18
  br label %14

14:                                               ; preds = %11, %6
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %74, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %15, i32 noundef 1) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %21) #18
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #18
  br label %74

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 6
  store i32 1, ptr %24, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !72
  %27 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !71
  %29 = tail call ptr @CloneImage(ptr noundef nonnull %15, i64 noundef %26, i64 noundef %28, i32 noundef 1, ptr noundef %5) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #18
  br label %74

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 12
  %35 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.49, ptr noundef nonnull %34, ptr noundef %5) #18
  %36 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %29) #18
  %37 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #18
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 5
  %39 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.50, ptr noundef nonnull %38, ptr noundef %5) #18
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 6
  %41 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.50, ptr noundef nonnull %40, ptr noundef %5) #18
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !72
  %44 = uitofp i64 %43 to double
  %45 = fmul double %44, 5.000000e-01
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !71
  %48 = uitofp i64 %47 to double
  %49 = fmul double %48, 5.000000e-01
  %50 = sitofp i64 %3 to double
  %51 = fsub double %45, %50
  %52 = sitofp i64 %4 to double
  %53 = fsub double %49, %52
  %54 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.51, double noundef %45, double noundef %49, double noundef %51, double noundef %53) #18
  %55 = call ptr @AcquireString(ptr noundef nonnull %7) #18
  store ptr %55, ptr %37, align 8, !tbaa !189
  %56 = call i32 @DrawImage(ptr noundef nonnull %29, ptr noundef nonnull %37) #18
  %57 = call ptr @DestroyDrawInfo(ptr noundef nonnull %37) #18
  %58 = call ptr @BlurImage(ptr noundef nonnull %29, double noundef %1, double noundef %2, ptr noundef %5) #18
  %59 = call ptr @DestroyImage(ptr noundef nonnull %29) #18
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %33
  %62 = call ptr @DestroyImage(ptr noundef nonnull %15) #18
  br label %74

63:                                               ; preds = %33
  %64 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 6
  store i32 0, ptr %64, align 8, !tbaa !86
  %65 = call i32 @CompositeImage(ptr noundef nonnull %15, i32 noundef 17, ptr noundef nonnull %58, i64 noundef 0, i64 noundef 0) #18
  %66 = call ptr @DestroyImage(ptr noundef nonnull %58) #18
  %67 = call ptr @MergeImageLayers(ptr noundef nonnull %15, i32 noundef 14, ptr noundef %5) #18
  %68 = call ptr @DestroyImage(ptr noundef nonnull %15) #18
  %69 = icmp eq ptr %67, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !74
  %73 = call i32 @TransformImageColorspace(ptr noundef nonnull %67, i32 noundef %72) #18
  br label %74

74:                                               ; preds = %63, %70, %14, %61, %31, %20
  %75 = phi ptr [ null, %20 ], [ null, %31 ], [ null, %61 ], [ null, %14 ], [ %67, %70 ], [ %67, %63 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #18
  ret ptr %75
}

declare i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @MergeImageLayers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare i32 @SetCacheViewVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #11

declare ptr @StringToken(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ClearMagickException(ptr noundef) local_unnamed_addr #3

declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acosh(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare double @j1(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @asinh(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atanh(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #11

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #18
  %22 = load ptr, ptr %0, align 8, !tbaa !41
  %23 = tail call i64 @GetImageIndexInList(ptr noundef %22) #18
  %24 = sitofp i64 %2 to double
  %25 = sitofp i64 %3 to double
  %26 = tail call ptr @__ctype_b_loc() #20
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds i8, ptr %4, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !67
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %27, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !78
  %33 = and i16 %32, 1024
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %147

35:                                               ; preds = %6
  %36 = load i8, ptr %4, align 1, !tbaa !67
  %37 = sext i8 %36 to i32
  %38 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.153, i32 %37, i64 4)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %35
  switch i8 %36, label %41 [
    i8 118, label %44
    i8 117, label %45
  ]

41:                                               ; preds = %40
  %42 = load ptr, ptr %0, align 8, !tbaa !41
  %43 = tail call i64 @GetImageIndexInList(ptr noundef %42) #18
  br label %45

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %40, %44, %41
  %46 = phi i64 [ %43, %41 ], [ 1, %44 ], [ 0, %40 ]
  %47 = load i8, ptr %28, align 1, !tbaa !67
  %48 = icmp eq i8 %47, 91
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %4, i64 2
  br label %51

51:                                               ; preds = %61, %49
  %52 = phi i64 [ 1, %49 ], [ %62, %61 ]
  %53 = phi ptr [ %50, %49 ], [ %63, %61 ]
  %54 = phi ptr [ %7, %49 ], [ %64, %61 ]
  %55 = load i8, ptr %53, align 1, !tbaa !67
  switch i8 %55, label %61 [
    i8 0, label %65
    i8 91, label %56
    i8 93, label %58
  ]

56:                                               ; preds = %51
  %57 = add i64 %52, 1
  br label %61

58:                                               ; preds = %51
  %59 = add i64 %52, -1
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %51, %58, %56
  %62 = phi i64 [ %57, %56 ], [ %59, %58 ], [ %52, %51 ]
  %63 = getelementptr inbounds i8, ptr %53, i64 1
  %64 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 %55, ptr %54, align 1, !tbaa !67
  br label %51, !llvm.loop !190

65:                                               ; preds = %51, %58
  %66 = phi i64 [ 0, %58 ], [ %52, %51 ]
  store i8 0, ptr %54, align 1, !tbaa !67
  %67 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5)
  %68 = fadd double %67, 5.000000e-01
  %69 = fptosi double %68 to i64
  %70 = getelementptr inbounds i8, ptr %53, i64 1
  br label %71

71:                                               ; preds = %65, %45
  %72 = phi i64 [ %69, %65 ], [ %46, %45 ]
  %73 = phi i64 [ %66, %65 ], [ 0, %45 ]
  %74 = phi ptr [ %70, %65 ], [ %28, %45 ]
  %75 = load i8, ptr %74, align 1, !tbaa !67
  %76 = icmp eq i8 %75, 46
  %77 = zext i1 %76 to i64
  %78 = getelementptr inbounds i8, ptr %74, i64 %77
  br label %79

79:                                               ; preds = %71, %35
  %80 = phi i64 [ %23, %35 ], [ %72, %71 ]
  %81 = phi i64 [ 0, %35 ], [ %73, %71 ]
  %82 = phi ptr [ %4, %35 ], [ %78, %71 ]
  %83 = load i8, ptr %82, align 1, !tbaa !67
  %84 = icmp eq i8 %83, 112
  br i1 %84, label %85, label %147

85:                                               ; preds = %79
  %86 = load ptr, ptr %26, align 8, !tbaa !45
  %87 = getelementptr inbounds i8, ptr %82, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !67
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds i16, ptr %86, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !78
  %92 = and i16 %91, 1024
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %147

94:                                               ; preds = %85
  switch i8 %88, label %139 [
    i8 123, label %95
    i8 91, label %116
  ]

95:                                               ; preds = %94
  %96 = add i64 %81, 1
  %97 = getelementptr inbounds i8, ptr %82, i64 2
  br label %98

98:                                               ; preds = %108, %95
  %99 = phi i64 [ %96, %95 ], [ %109, %108 ]
  %100 = phi ptr [ %97, %95 ], [ %110, %108 ]
  %101 = phi ptr [ %7, %95 ], [ %111, %108 ]
  %102 = load i8, ptr %100, align 1, !tbaa !67
  switch i8 %102, label %108 [
    i8 0, label %112
    i8 123, label %103
    i8 125, label %105
  ]

103:                                              ; preds = %98
  %104 = add i64 %99, 1
  br label %108

105:                                              ; preds = %98
  %106 = add i64 %99, -1
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %98, %105, %103
  %109 = phi i64 [ %104, %103 ], [ %106, %105 ], [ %99, %98 ]
  %110 = getelementptr inbounds i8, ptr %100, i64 1
  %111 = getelementptr inbounds i8, ptr %101, i64 1
  store i8 %102, ptr %101, align 1, !tbaa !67
  br label %98, !llvm.loop !191

112:                                              ; preds = %98, %105
  store i8 0, ptr %101, align 1, !tbaa !67
  %113 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5)
  %114 = load double, ptr %9, align 8, !tbaa !95
  %115 = getelementptr inbounds i8, ptr %100, i64 1
  br label %139

116:                                              ; preds = %94
  %117 = add i64 %81, 1
  %118 = getelementptr inbounds i8, ptr %82, i64 2
  br label %119

119:                                              ; preds = %129, %116
  %120 = phi i64 [ %117, %116 ], [ %130, %129 ]
  %121 = phi ptr [ %118, %116 ], [ %131, %129 ]
  %122 = phi ptr [ %7, %116 ], [ %132, %129 ]
  %123 = load i8, ptr %121, align 1, !tbaa !67
  switch i8 %123, label %129 [
    i8 0, label %133
    i8 91, label %124
    i8 93, label %126
  ]

124:                                              ; preds = %119
  %125 = add i64 %120, 1
  br label %129

126:                                              ; preds = %119
  %127 = add i64 %120, -1
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %119, %126, %124
  %130 = phi i64 [ %125, %124 ], [ %127, %126 ], [ %120, %119 ]
  %131 = getelementptr inbounds i8, ptr %121, i64 1
  %132 = getelementptr inbounds i8, ptr %122, i64 1
  store i8 %123, ptr %122, align 1, !tbaa !67
  br label %119, !llvm.loop !192

133:                                              ; preds = %119, %126
  store i8 0, ptr %122, align 1, !tbaa !67
  %134 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5)
  %135 = fadd double %134, %24
  %136 = load double, ptr %9, align 8, !tbaa !95
  %137 = fadd double %136, %25
  %138 = getelementptr inbounds i8, ptr %121, i64 1
  br label %139

139:                                              ; preds = %94, %133, %112
  %140 = phi double [ %113, %112 ], [ %135, %133 ], [ %24, %94 ]
  %141 = phi double [ %114, %112 ], [ %137, %133 ], [ %25, %94 ]
  %142 = phi ptr [ %115, %112 ], [ %138, %133 ], [ %87, %94 ]
  %143 = load i8, ptr %142, align 1, !tbaa !67
  %144 = icmp eq i8 %143, 46
  %145 = zext i1 %144 to i64
  %146 = getelementptr inbounds i8, ptr %142, i64 %145
  br label %147

147:                                              ; preds = %139, %79, %85, %6
  %148 = phi i64 [ %80, %85 ], [ %80, %79 ], [ %23, %6 ], [ %80, %139 ]
  %149 = phi double [ %24, %85 ], [ %24, %79 ], [ %24, %6 ], [ %140, %139 ]
  %150 = phi double [ %25, %85 ], [ %25, %79 ], [ %25, %6 ], [ %141, %139 ]
  %151 = phi ptr [ %82, %85 ], [ %82, %79 ], [ %4, %6 ], [ %146, %139 ]
  %152 = load ptr, ptr %0, align 8, !tbaa !41
  %153 = call i64 @GetImageListLength(ptr noundef %152) #18
  %154 = lshr i64 %148, 63
  %155 = call i64 @llvm.smax.i64(i64 %148, i64 0)
  %156 = add i64 %148, %154
  %157 = sub i64 %155, %156
  %158 = call i64 @llvm.umax.i64(i64 %153, i64 1)
  %159 = udiv i64 %157, %158
  %160 = add i64 %154, %159
  %161 = mul i64 %153, %160
  %162 = add i64 %148, %161
  %163 = urem i64 %162, %153
  %164 = load ptr, ptr %0, align 8, !tbaa !41
  %165 = call ptr @GetImageFromList(ptr noundef %164, i64 noundef %163) #18
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %147
  %168 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1447, i32 noundef 410, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.3, ptr noundef %4) #18
  br label %806

169:                                              ; preds = %147
  call void @GetMagickPixelPacket(ptr noundef %165, ptr noundef nonnull %10) #18
  %170 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !44
  %172 = getelementptr inbounds ptr, ptr %171, i64 %163
  %173 = load ptr, ptr %172, align 8, !tbaa !45
  %174 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 70
  %175 = load i32, ptr %174, align 8, !tbaa !193
  %176 = call i32 @InterpolateMagickPixelPacket(ptr noundef %165, ptr noundef %173, i32 noundef %175, double noundef %149, double noundef %150, ptr noundef nonnull %10, ptr noundef %5) #18
  %177 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %151) #24
  %178 = icmp ugt i64 %177, 2
  br i1 %178, label %179, label %237

179:                                              ; preds = %169
  %180 = call i32 @LocaleCompare(ptr noundef %151, ptr noundef nonnull @.str.98) #18
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %237, label %182

182:                                              ; preds = %179
  %183 = call i32 @LocaleCompare(ptr noundef %151, ptr noundef nonnull @.str.155) #18
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %237, label %185

185:                                              ; preds = %182
  %186 = call i32 @LocaleCompare(ptr noundef %151, ptr noundef nonnull @.str.156) #18
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %237, label %188

188:                                              ; preds = %185
  %189 = call i32 @LocaleCompare(ptr noundef %151, ptr noundef nonnull @.str.95) #18
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %237, label %191

191:                                              ; preds = %188
  %192 = call i32 @LocaleCompare(ptr noundef %151, ptr noundef nonnull @.str.130) #18
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %237, label %194

194:                                              ; preds = %191
  %195 = call i32 @LocaleCompare(ptr noundef %151, ptr noundef nonnull @.str.109) #18
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %237, label %197

197:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #18
  %198 = call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef %151, i64 noundef 4096) #18
  %199 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #24
  %200 = getelementptr i8, ptr %11, i64 %199
  br label %201

201:                                              ; preds = %205, %197
  %202 = phi ptr [ %200, %197 ], [ %203, %205 ]
  %203 = getelementptr inbounds i8, ptr %202, i64 -1
  %204 = icmp ugt ptr %203, %11
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i8, ptr %203, align 1, !tbaa !67
  switch i8 %206, label %201 [
    i8 41, label %208
    i8 46, label %207
  ], !llvm.loop !194

207:                                              ; preds = %205
  store i8 0, ptr %203, align 1, !tbaa !67
  br label %208

208:                                              ; preds = %205, %201, %207
  %209 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #24
  %210 = icmp ugt i64 %209, 2
  br i1 %210, label %211, label %235

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !43
  %214 = call ptr @GetValueFromSplayTree(ptr noundef %213, ptr noundef nonnull %11) #18
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %235

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !42
  %219 = call ptr @GetValueFromSplayTree(ptr noundef %218, ptr noundef nonnull %11) #18
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %219, i64 56, i1 false), !tbaa.struct !116
  br label %232

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %224 = load ptr, ptr %223, align 8, !tbaa !38
  %225 = call i32 @QueryMagickColor(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef %224) #18
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %235, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr %217, align 8, !tbaa !42
  %229 = call ptr @ConstantString(ptr noundef nonnull %11) #18
  %230 = call ptr @CloneMagickPixelPacket(ptr noundef nonnull %10) #18
  %231 = call i32 @AddValueToSplayTree(ptr noundef %228, ptr noundef %229, ptr noundef %230) #18
  br label %232

232:                                              ; preds = %227, %221
  %233 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #24
  %234 = getelementptr inbounds i8, ptr %151, i64 %233
  br label %235

235:                                              ; preds = %232, %222, %211, %208
  %236 = phi ptr [ %151, %211 ], [ %151, %208 ], [ %151, %222 ], [ %234, %232 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #18
  br label %237

237:                                              ; preds = %235, %194, %191, %188, %185, %182, %179, %169
  %238 = phi ptr [ %236, %235 ], [ %151, %194 ], [ %151, %191 ], [ %151, %188 ], [ %151, %185 ], [ %151, %182 ], [ %151, %179 ], [ %151, %169 ]
  %239 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef %238, i64 noundef 4096) #18
  call void @StripString(ptr noundef nonnull %8) #18
  %240 = load i8, ptr %8, align 16, !tbaa !67
  switch i8 %240, label %797 [
    i8 0, label %241
    i8 65, label %316
    i8 97, label %316
    i8 66, label %325
    i8 98, label %325
    i8 67, label %333
    i8 99, label %333
    i8 68, label %412
    i8 100, label %412
    i8 71, label %417
    i8 103, label %417
    i8 75, label %425
    i8 107, label %425
    i8 72, label %445
    i8 104, label %445
    i8 73, label %487
    i8 105, label %487
    i8 74, label %564
    i8 106, label %564
    i8 76, label %567
    i8 108, label %567
    i8 77, label %636
    i8 109, label %636
    i8 78, label %659
    i8 110, label %659
    i8 79, label %666
    i8 111, label %666
    i8 80, label %674
    i8 112, label %674
    i8 82, label %702
    i8 114, label %702
    i8 83, label %722
    i8 115, label %722
    i8 84, label %767
    i8 116, label %767
    i8 87, label %774
    i8 119, label %774
    i8 89, label %781
    i8 121, label %781
    i8 90, label %789
    i8 122, label %789
  ]

241:                                              ; preds = %237
  switch i32 %1, label %314 [
    i32 1, label %242
    i32 2, label %247
    i32 4, label %252
    i32 8, label %257
    i32 32, label %267
    i32 134217719, label %279
  ]

242:                                              ; preds = %241
  %243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %244 = load float, ptr %243, align 8, !tbaa !120
  %245 = fpext float %244 to double
  %246 = fmul double %245, 0x3EF0001000100010
  br label %806

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %249 = load float, ptr %248, align 4, !tbaa !122
  %250 = fpext float %249 to double
  %251 = fmul double %250, 0x3EF0001000100010
  br label %806

252:                                              ; preds = %241
  %253 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %254 = load float, ptr %253, align 8, !tbaa !123
  %255 = fpext float %254 to double
  %256 = fmul double %255, 0x3EF0001000100010
  br label %806

257:                                              ; preds = %241
  %258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 2
  %259 = load i32, ptr %258, align 8, !tbaa !195
  %260 = icmp eq i32 %259, 0
  %261 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %262 = load float, ptr %261, align 4
  %263 = fsub float 6.553500e+04, %262
  %264 = fpext float %263 to double
  %265 = fmul double %264, 0x3EF0001000100010
  %266 = select i1 %260, double 1.000000e+00, double %265
  br label %806

267:                                              ; preds = %241
  %268 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 1
  %269 = load i32, ptr %268, align 4, !tbaa !74
  %270 = icmp eq i32 %269, 12
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 53
  %273 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1521, i32 noundef 465, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.3, ptr noundef nonnull %272) #18
  br label %806

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %276 = load float, ptr %275, align 8, !tbaa !126
  %277 = fpext float %276 to double
  %278 = fmul double %277, 0x3EF0001000100010
  br label %806

279:                                              ; preds = %241
  %280 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 1
  %281 = load i32, ptr %280, align 4, !tbaa !196
  %282 = icmp eq i32 %281, 2
  %283 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %284 = load float, ptr %283, align 8, !tbaa !120
  br i1 %282, label %285, label %292

285:                                              ; preds = %279
  %286 = fcmp ugt float %284, 0.000000e+00
  br i1 %286, label %287, label %310

287:                                              ; preds = %285
  %288 = fcmp ult float %284, 6.553500e+04
  br i1 %288, label %289, label %310

289:                                              ; preds = %287
  %290 = fadd float %284, 5.000000e-01
  %291 = fptoui float %290 to i16
  br label %310

292:                                              ; preds = %279
  %293 = fpext float %284 to double
  %294 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %295 = load float, ptr %294, align 4, !tbaa !122
  %296 = fpext float %295 to double
  %297 = fmul double %296, 0x3FE6E29307AF20EA
  %298 = call double @llvm.fmuladd.f64(double %293, double 2.126560e-01, double %297)
  %299 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %300 = load float, ptr %299, align 8, !tbaa !123
  %301 = fpext float %300 to double
  %302 = call double @llvm.fmuladd.f64(double %301, double 7.218600e-02, double %298)
  %303 = fptrunc double %302 to float
  %304 = fcmp ugt float %303, 0.000000e+00
  br i1 %304, label %305, label %310

305:                                              ; preds = %292
  %306 = fcmp ult float %303, 6.553500e+04
  br i1 %306, label %307, label %310

307:                                              ; preds = %305
  %308 = fadd float %303, 5.000000e-01
  %309 = fptoui float %308 to i16
  br label %310

310:                                              ; preds = %285, %287, %289, %292, %305, %307
  %311 = phi i16 [ %291, %289 ], [ 0, %285 ], [ -1, %287 ], [ %309, %307 ], [ 0, %292 ], [ -1, %305 ]
  %312 = uitofp i16 %311 to double
  %313 = fmul double %312, 0x3EF0001000100010
  br label %806

314:                                              ; preds = %241
  %315 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, i32 noundef 410, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef %238) #18
  br label %806

316:                                              ; preds = %237, %237
  %317 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.69) #18
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %797

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %321 = load float, ptr %320, align 4, !tbaa !124
  %322 = fsub float 6.553500e+04, %321
  %323 = fpext float %322 to double
  %324 = fmul double %323, 0x3EF0001000100010
  br label %806

325:                                              ; preds = %237, %237
  %326 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.70) #18
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %797

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %330 = load float, ptr %329, align 8, !tbaa !123
  %331 = fpext float %330 to double
  %332 = fmul double %331, 0x3EF0001000100010
  br label %806

333:                                              ; preds = %237, %237
  %334 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.158, i64 noundef 7) #18
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %404

336:                                              ; preds = %333
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #18
  %337 = getelementptr inbounds i8, ptr %8, i64 7
  %338 = call i32 @ParseGeometry(ptr noundef nonnull %337, ptr noundef nonnull %12) #18
  %339 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 1
  %340 = load i32, ptr %339, align 4, !tbaa !74
  %341 = icmp eq i32 %340, 12
  br i1 %341, label %342, label %372

342:                                              ; preds = %336
  switch i32 %1, label %402 [
    i32 1, label %343
    i32 2, label %348
    i32 4, label %354
    i32 32, label %360
    i32 8, label %366
  ]

343:                                              ; preds = %342
  %344 = and i32 %338, 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %402, label %346

346:                                              ; preds = %343
  %347 = load double, ptr %12, align 8, !tbaa !87
  br label %402

348:                                              ; preds = %342
  %349 = and i32 %338, 8
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %402, label %351

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 1
  %353 = load double, ptr %352, align 8, !tbaa !197
  br label %402

354:                                              ; preds = %342
  %355 = and i32 %338, 1
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %402, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 2
  %359 = load double, ptr %358, align 8, !tbaa !198
  br label %402

360:                                              ; preds = %342
  %361 = and i32 %338, 2
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %402, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 3
  %365 = load double, ptr %364, align 8, !tbaa !199
  br label %402

366:                                              ; preds = %342
  %367 = and i32 %338, 16
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %402, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 4
  %371 = load double, ptr %370, align 8, !tbaa !200
  br label %402

372:                                              ; preds = %336
  switch i32 %1, label %402 [
    i32 1, label %373
    i32 2, label %378
    i32 4, label %384
    i32 8, label %390
    i32 32, label %396
  ]

373:                                              ; preds = %372
  %374 = and i32 %338, 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %402, label %376

376:                                              ; preds = %373
  %377 = load double, ptr %12, align 8, !tbaa !87
  br label %402

378:                                              ; preds = %372
  %379 = and i32 %338, 8
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %402, label %381

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 1
  %383 = load double, ptr %382, align 8, !tbaa !197
  br label %402

384:                                              ; preds = %372
  %385 = and i32 %338, 1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %402, label %387

387:                                              ; preds = %384
  %388 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 2
  %389 = load double, ptr %388, align 8, !tbaa !198
  br label %402

390:                                              ; preds = %372
  %391 = and i32 %338, 2
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %402, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 3
  %395 = load double, ptr %394, align 8, !tbaa !199
  br label %402

396:                                              ; preds = %372
  %397 = and i32 %338, 16
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 4
  %401 = load double, ptr %400, align 8, !tbaa !200
  br label %402

402:                                              ; preds = %372, %396, %390, %384, %378, %373, %342, %366, %360, %354, %348, %343, %399, %393, %387, %381, %376, %369, %363, %357, %351, %346
  %403 = phi double [ %371, %369 ], [ %365, %363 ], [ %359, %357 ], [ %353, %351 ], [ %347, %346 ], [ %401, %399 ], [ %395, %393 ], [ %389, %387 ], [ %383, %381 ], [ %377, %376 ], [ 0.000000e+00, %343 ], [ 0.000000e+00, %348 ], [ 0.000000e+00, %354 ], [ 0.000000e+00, %360 ], [ 0.000000e+00, %366 ], [ 0.000000e+00, %342 ], [ 0.000000e+00, %373 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %384 ], [ 0.000000e+00, %390 ], [ 0.000000e+00, %396 ], [ 0.000000e+00, %372 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #18
  br label %806

404:                                              ; preds = %333
  %405 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.74) #18
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %797

407:                                              ; preds = %404
  %408 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %409 = load float, ptr %408, align 8, !tbaa !120
  %410 = fpext float %409 to double
  %411 = fmul double %410, 0x3EF0001000100010
  br label %806

412:                                              ; preds = %237, %237
  %413 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.159, i64 noundef 5) #18
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %797

415:                                              ; preds = %412
  %416 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %165, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5)
  br label %806

417:                                              ; preds = %237, %237
  %418 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.93) #18
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %797

420:                                              ; preds = %417
  %421 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %422 = load float, ptr %421, align 4, !tbaa !122
  %423 = fpext float %422 to double
  %424 = fmul double %423, 0x3EF0001000100010
  br label %806

425:                                              ; preds = %237, %237
  %426 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.160, i64 noundef 8) #18
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %425
  %429 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %165, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5)
  br label %806

430:                                              ; preds = %425
  %431 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.97) #18
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %797

433:                                              ; preds = %430
  %434 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 1
  %435 = load i32, ptr %434, align 4, !tbaa !74
  %436 = icmp eq i32 %435, 12
  br i1 %436, label %440, label %437

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 53
  %439 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1666, i32 noundef 410, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.3, ptr noundef nonnull %438) #18
  br label %806

440:                                              ; preds = %433
  %441 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %442 = load float, ptr %441, align 8, !tbaa !126
  %443 = fpext float %442 to double
  %444 = fmul double %443, 0x3EF0001000100010
  br label %806

445:                                              ; preds = %237, %237
  %446 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.94) #18
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 8
  %450 = load i64, ptr %449, align 8, !tbaa !71
  %451 = uitofp i64 %450 to double
  br label %806

452:                                              ; preds = %445
  %453 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.95) #18
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %797

455:                                              ; preds = %452
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #18
  %456 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %457 = load float, ptr %456, align 8, !tbaa !120
  %458 = fcmp ugt float %457, 0.000000e+00
  br i1 %458, label %459, label %464

459:                                              ; preds = %455
  %460 = fcmp ult float %457, 6.553500e+04
  br i1 %460, label %461, label %464

461:                                              ; preds = %459
  %462 = fadd float %457, 5.000000e-01
  %463 = fptoui float %462 to i16
  br label %464

464:                                              ; preds = %455, %459, %461
  %465 = phi i16 [ %463, %461 ], [ 0, %455 ], [ -1, %459 ]
  %466 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %467 = load float, ptr %466, align 4, !tbaa !122
  %468 = fcmp ugt float %467, 0.000000e+00
  br i1 %468, label %469, label %474

469:                                              ; preds = %464
  %470 = fcmp ult float %467, 6.553500e+04
  br i1 %470, label %471, label %474

471:                                              ; preds = %469
  %472 = fadd float %467, 5.000000e-01
  %473 = fptoui float %472 to i16
  br label %474

474:                                              ; preds = %464, %469, %471
  %475 = phi i16 [ %473, %471 ], [ 0, %464 ], [ -1, %469 ]
  %476 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %477 = load float, ptr %476, align 8, !tbaa !123
  %478 = fcmp ugt float %477, 0.000000e+00
  br i1 %478, label %479, label %484

479:                                              ; preds = %474
  %480 = fcmp ult float %477, 6.553500e+04
  br i1 %480, label %481, label %484

481:                                              ; preds = %479
  %482 = fadd float %477, 5.000000e-01
  %483 = fptoui float %482 to i16
  br label %484

484:                                              ; preds = %474, %479, %481
  %485 = phi i16 [ %483, %481 ], [ 0, %474 ], [ -1, %479 ]
  call void @ConvertRGBToHSL(i16 noundef zeroext %465, i16 noundef zeroext %475, i16 noundef zeroext %485, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %14) #18
  %486 = load double, ptr %13, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  br label %806

487:                                              ; preds = %237, %237
  %488 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.161) #18
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %508, label %490

490:                                              ; preds = %487
  %491 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.162) #18
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %508, label %493

493:                                              ; preds = %490
  %494 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.163) #18
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %508, label %496

496:                                              ; preds = %493
  %497 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.164) #18
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %508, label %499

499:                                              ; preds = %496
  %500 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.165) #18
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %508, label %502

502:                                              ; preds = %499
  %503 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.166) #18
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %502
  %506 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.167) #18
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %505, %502, %499, %496, %493, %490, %487
  %509 = getelementptr inbounds i8, ptr %8, i64 6
  %510 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %165, i32 noundef %1, ptr noundef nonnull %509, ptr noundef %5)
  br label %806

511:                                              ; preds = %505
  %512 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.168) #18
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %517

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 24
  %516 = load double, ptr %515, align 8, !tbaa !201
  br label %806

517:                                              ; preds = %511
  %518 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.169) #18
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %523

520:                                              ; preds = %517
  %521 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 25
  %522 = load double, ptr %521, align 8, !tbaa !202
  br label %806

523:                                              ; preds = %517
  %524 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.98) #18
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %561

526:                                              ; preds = %523
  %527 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 1
  %528 = load i32, ptr %527, align 4, !tbaa !196
  %529 = icmp eq i32 %528, 2
  %530 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %531 = load float, ptr %530, align 8, !tbaa !120
  br i1 %529, label %532, label %539

532:                                              ; preds = %526
  %533 = fcmp ugt float %531, 0.000000e+00
  br i1 %533, label %534, label %557

534:                                              ; preds = %532
  %535 = fcmp ult float %531, 6.553500e+04
  br i1 %535, label %536, label %557

536:                                              ; preds = %534
  %537 = fadd float %531, 5.000000e-01
  %538 = fptoui float %537 to i16
  br label %557

539:                                              ; preds = %526
  %540 = fpext float %531 to double
  %541 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %542 = load float, ptr %541, align 4, !tbaa !122
  %543 = fpext float %542 to double
  %544 = fmul double %543, 0x3FE6E29307AF20EA
  %545 = call double @llvm.fmuladd.f64(double %540, double 2.126560e-01, double %544)
  %546 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %547 = load float, ptr %546, align 8, !tbaa !123
  %548 = fpext float %547 to double
  %549 = call double @llvm.fmuladd.f64(double %548, double 7.218600e-02, double %545)
  %550 = fptrunc double %549 to float
  %551 = fcmp ugt float %550, 0.000000e+00
  br i1 %551, label %552, label %557

552:                                              ; preds = %539
  %553 = fcmp ult float %550, 6.553500e+04
  br i1 %553, label %554, label %557

554:                                              ; preds = %552
  %555 = fadd float %550, 5.000000e-01
  %556 = fptoui float %555 to i16
  br label %557

557:                                              ; preds = %532, %534, %536, %539, %552, %554
  %558 = phi i16 [ %538, %536 ], [ 0, %532 ], [ -1, %534 ], [ %556, %554 ], [ 0, %539 ], [ -1, %552 ]
  %559 = uitofp i16 %558 to double
  %560 = fmul double %559, 0x3EF0001000100010
  br label %806

561:                                              ; preds = %523
  %562 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.101) #18
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %806, label %797

564:                                              ; preds = %237, %237
  %565 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.102) #18
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %806, label %797

567:                                              ; preds = %237, %237
  %568 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.109) #18
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %602

570:                                              ; preds = %567
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #18
  %571 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %572 = load float, ptr %571, align 8, !tbaa !120
  %573 = fcmp ugt float %572, 0.000000e+00
  br i1 %573, label %574, label %579

574:                                              ; preds = %570
  %575 = fcmp ult float %572, 6.553500e+04
  br i1 %575, label %576, label %579

576:                                              ; preds = %574
  %577 = fadd float %572, 5.000000e-01
  %578 = fptoui float %577 to i16
  br label %579

579:                                              ; preds = %570, %574, %576
  %580 = phi i16 [ %578, %576 ], [ 0, %570 ], [ -1, %574 ]
  %581 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %582 = load float, ptr %581, align 4, !tbaa !122
  %583 = fcmp ugt float %582, 0.000000e+00
  br i1 %583, label %584, label %589

584:                                              ; preds = %579
  %585 = fcmp ult float %582, 6.553500e+04
  br i1 %585, label %586, label %589

586:                                              ; preds = %584
  %587 = fadd float %582, 5.000000e-01
  %588 = fptoui float %587 to i16
  br label %589

589:                                              ; preds = %579, %584, %586
  %590 = phi i16 [ %588, %586 ], [ 0, %579 ], [ -1, %584 ]
  %591 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %592 = load float, ptr %591, align 8, !tbaa !123
  %593 = fcmp ugt float %592, 0.000000e+00
  br i1 %593, label %594, label %599

594:                                              ; preds = %589
  %595 = fcmp ult float %592, 6.553500e+04
  br i1 %595, label %596, label %599

596:                                              ; preds = %594
  %597 = fadd float %592, 5.000000e-01
  %598 = fptoui float %597 to i16
  br label %599

599:                                              ; preds = %589, %594, %596
  %600 = phi i16 [ %598, %596 ], [ 0, %589 ], [ -1, %594 ]
  call void @ConvertRGBToHSL(i16 noundef zeroext %580, i16 noundef zeroext %590, i16 noundef zeroext %600, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef nonnull %17) #18
  %601 = load double, ptr %17, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #18
  br label %806

602:                                              ; preds = %567
  %603 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.155) #18
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %619

605:                                              ; preds = %602
  %606 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %607 = load float, ptr %606, align 8, !tbaa !120
  %608 = fpext float %607 to double
  %609 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %610 = load float, ptr %609, align 4, !tbaa !122
  %611 = fpext float %610 to double
  %612 = fmul double %611, 0x3FE6E29307AF20EA
  %613 = call double @llvm.fmuladd.f64(double %608, double 2.126560e-01, double %612)
  %614 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %615 = load float, ptr %614, align 8, !tbaa !123
  %616 = fpext float %615 to double
  %617 = call double @llvm.fmuladd.f64(double %616, double 7.218600e-02, double %613)
  %618 = fmul double %617, 0x3EF0001000100010
  br label %806

619:                                              ; preds = %602
  %620 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.156) #18
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %797

622:                                              ; preds = %619
  %623 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %624 = load float, ptr %623, align 8, !tbaa !120
  %625 = fpext float %624 to double
  %626 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %627 = load float, ptr %626, align 4, !tbaa !122
  %628 = fpext float %627 to double
  %629 = fmul double %628, 0x3FE6E29307AF20EA
  %630 = call double @llvm.fmuladd.f64(double %625, double 2.126560e-01, double %629)
  %631 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %632 = load float, ptr %631, align 8, !tbaa !123
  %633 = fpext float %632 to double
  %634 = call double @llvm.fmuladd.f64(double %633, double 7.218600e-02, double %630)
  %635 = fmul double %634, 0x3EF0001000100010
  br label %806

636:                                              ; preds = %237, %237
  %637 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.111, i64 noundef 6) #18
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %641

639:                                              ; preds = %636
  %640 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %165, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5)
  br label %806

641:                                              ; preds = %636
  %642 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.170, i64 noundef 4) #18
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %646

644:                                              ; preds = %641
  %645 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %165, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5)
  br label %806

646:                                              ; preds = %641
  %647 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.113, i64 noundef 6) #18
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %651

649:                                              ; preds = %646
  %650 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %165, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5)
  br label %806

651:                                              ; preds = %646
  %652 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.116) #18
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %797

654:                                              ; preds = %651
  %655 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %656 = load float, ptr %655, align 8, !tbaa !123
  %657 = fpext float %656 to double
  %658 = fmul double %657, 0x3EF0001000100010
  br label %806

659:                                              ; preds = %237, %237
  %660 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.118) #18
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %797

662:                                              ; preds = %659
  %663 = load ptr, ptr %0, align 8, !tbaa !41
  %664 = call i64 @GetImageListLength(ptr noundef %663) #18
  %665 = uitofp i64 %664 to double
  br label %806

666:                                              ; preds = %237, %237
  %667 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.120) #18
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %797

669:                                              ; preds = %666
  %670 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %671 = load float, ptr %670, align 4, !tbaa !124
  %672 = fpext float %671 to double
  %673 = fmul double %672, 0x3EF0001000100010
  br label %806

674:                                              ; preds = %237, %237
  %675 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.171) #18
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %681

677:                                              ; preds = %674
  %678 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 26, i32 1
  %679 = load i64, ptr %678, align 8, !tbaa !164
  %680 = uitofp i64 %679 to double
  br label %806

681:                                              ; preds = %674
  %682 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.172) #18
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %688

684:                                              ; preds = %681
  %685 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 26
  %686 = load i64, ptr %685, align 8, !tbaa !163
  %687 = uitofp i64 %686 to double
  br label %806

688:                                              ; preds = %681
  %689 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.173) #18
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %695

691:                                              ; preds = %688
  %692 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 26, i32 2
  %693 = load i64, ptr %692, align 8, !tbaa !165
  %694 = sitofp i64 %693 to double
  br label %806

695:                                              ; preds = %688
  %696 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.174) #18
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %698, label %797

698:                                              ; preds = %695
  %699 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 26, i32 3
  %700 = load i64, ptr %699, align 8, !tbaa !166
  %701 = sitofp i64 %700 to double
  br label %806

702:                                              ; preds = %237, %237
  %703 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.175) #18
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %708

705:                                              ; preds = %702
  %706 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 24
  %707 = load double, ptr %706, align 8, !tbaa !201
  br label %806

708:                                              ; preds = %702
  %709 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.176) #18
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %708
  %712 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 25
  %713 = load double, ptr %712, align 8, !tbaa !202
  br label %806

714:                                              ; preds = %708
  %715 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.129) #18
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %797

717:                                              ; preds = %714
  %718 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %719 = load float, ptr %718, align 8, !tbaa !120
  %720 = fpext float %719 to double
  %721 = fmul double %720, 0x3EF0001000100010
  br label %806

722:                                              ; preds = %237, %237
  %723 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.130) #18
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %757

725:                                              ; preds = %722
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #18
  %726 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %727 = load float, ptr %726, align 8, !tbaa !120
  %728 = fcmp ugt float %727, 0.000000e+00
  br i1 %728, label %729, label %734

729:                                              ; preds = %725
  %730 = fcmp ult float %727, 6.553500e+04
  br i1 %730, label %731, label %734

731:                                              ; preds = %729
  %732 = fadd float %727, 5.000000e-01
  %733 = fptoui float %732 to i16
  br label %734

734:                                              ; preds = %725, %729, %731
  %735 = phi i16 [ %733, %731 ], [ 0, %725 ], [ -1, %729 ]
  %736 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %737 = load float, ptr %736, align 4, !tbaa !122
  %738 = fcmp ugt float %737, 0.000000e+00
  br i1 %738, label %739, label %744

739:                                              ; preds = %734
  %740 = fcmp ult float %737, 6.553500e+04
  br i1 %740, label %741, label %744

741:                                              ; preds = %739
  %742 = fadd float %737, 5.000000e-01
  %743 = fptoui float %742 to i16
  br label %744

744:                                              ; preds = %734, %739, %741
  %745 = phi i16 [ %743, %741 ], [ 0, %734 ], [ -1, %739 ]
  %746 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %747 = load float, ptr %746, align 8, !tbaa !123
  %748 = fcmp ugt float %747, 0.000000e+00
  br i1 %748, label %749, label %754

749:                                              ; preds = %744
  %750 = fcmp ult float %747, 6.553500e+04
  br i1 %750, label %751, label %754

751:                                              ; preds = %749
  %752 = fadd float %747, 5.000000e-01
  %753 = fptoui float %752 to i16
  br label %754

754:                                              ; preds = %744, %749, %751
  %755 = phi i16 [ %753, %751 ], [ 0, %744 ], [ -1, %749 ]
  call void @ConvertRGBToHSL(i16 noundef zeroext %735, i16 noundef zeroext %745, i16 noundef zeroext %755, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %20) #18
  %756 = load double, ptr %21, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #18
  br label %806

757:                                              ; preds = %722
  %758 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.177, i64 noundef 8) #18
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %762

760:                                              ; preds = %757
  %761 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %165, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5)
  br label %806

762:                                              ; preds = %757
  %763 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.178, i64 noundef 18) #18
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %797

765:                                              ; preds = %762
  %766 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %165, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5)
  br label %806

767:                                              ; preds = %237, %237
  %768 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.142) #18
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %770, label %797

770:                                              ; preds = %767
  %771 = load ptr, ptr %0, align 8, !tbaa !41
  %772 = call i64 @GetImageIndexInList(ptr noundef %771) #18
  %773 = sitofp i64 %772 to double
  br label %806

774:                                              ; preds = %237, %237
  %775 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.146) #18
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %797

777:                                              ; preds = %774
  %778 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 7
  %779 = load i64, ptr %778, align 8, !tbaa !72
  %780 = uitofp i64 %779 to double
  br label %806

781:                                              ; preds = %237, %237
  %782 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.147) #18
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %797

784:                                              ; preds = %781
  %785 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %786 = load float, ptr %785, align 4, !tbaa !122
  %787 = fpext float %786 to double
  %788 = fmul double %787, 0x3EF0001000100010
  br label %806

789:                                              ; preds = %237, %237
  %790 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.148) #18
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %797

792:                                              ; preds = %789
  %793 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %794 = load ptr, ptr %793, align 8, !tbaa !38
  %795 = call i64 @GetImageChannelDepth(ptr noundef %165, i32 noundef %1, ptr noundef %794) #18
  %796 = uitofp i64 %795 to double
  br label %806

797:                                              ; preds = %237, %789, %781, %774, %767, %762, %714, %695, %666, %659, %651, %619, %564, %561, %452, %430, %417, %412, %404, %325, %316
  %798 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %799 = load ptr, ptr %798, align 8, !tbaa !43
  %800 = call ptr @GetValueFromSplayTree(ptr noundef %799, ptr noundef nonnull %8) #18
  %801 = icmp eq ptr %800, null
  br i1 %801, label %804, label %802

802:                                              ; preds = %797
  %803 = call double @InterpretLocaleValue(ptr noundef nonnull %800, ptr noundef null) #18
  br label %806

804:                                              ; preds = %797
  %805 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1864, i32 noundef 410, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull %8) #18
  br label %806

806:                                              ; preds = %564, %561, %804, %802, %792, %784, %777, %770, %765, %760, %754, %717, %711, %705, %698, %691, %684, %677, %669, %662, %654, %649, %644, %639, %622, %605, %599, %557, %520, %514, %508, %484, %448, %440, %437, %428, %420, %415, %407, %402, %328, %319, %314, %310, %274, %271, %257, %252, %247, %242, %167
  %807 = phi double [ 0.000000e+00, %167 ], [ 0.000000e+00, %314 ], [ %313, %310 ], [ 0.000000e+00, %271 ], [ %278, %274 ], [ %266, %257 ], [ %256, %252 ], [ %251, %247 ], [ %246, %242 ], [ %803, %802 ], [ 0.000000e+00, %804 ], [ %796, %792 ], [ %788, %784 ], [ %780, %777 ], [ %773, %770 ], [ %756, %754 ], [ %761, %760 ], [ %766, %765 ], [ %707, %705 ], [ %713, %711 ], [ %721, %717 ], [ %680, %677 ], [ %687, %684 ], [ %694, %691 ], [ %701, %698 ], [ %673, %669 ], [ %665, %662 ], [ %640, %639 ], [ %645, %644 ], [ %650, %649 ], [ %658, %654 ], [ %601, %599 ], [ %618, %605 ], [ %635, %622 ], [ %510, %508 ], [ %516, %514 ], [ %522, %520 ], [ %560, %557 ], [ %451, %448 ], [ %486, %484 ], [ %429, %428 ], [ 0.000000e+00, %437 ], [ %444, %440 ], [ %424, %420 ], [ %416, %415 ], [ %403, %402 ], [ %411, %407 ], [ %332, %328 ], [ %324, %319 ], [ %24, %561 ], [ %25, %564 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #18
  ret double %807
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cosh(double noundef) local_unnamed_addr #11

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @GetMagickPrecision() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #11

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define internal fastcc i64 @FxGCD(i64 noundef %0, i64 noundef %1) unnamed_addr #14 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi i64 [ %0, %2 ], [ %5, %7 ]
  %5 = phi i64 [ %1, %2 ], [ %8, %7 ]
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = srem i64 %4, %5
  br label %3

9:                                                ; preds = %3
  ret i64 %4
}

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare double @j0(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sinh(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #11

declare double @InterpretSiPrefixValue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #3

declare ptr @GetImageFromList(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CloneMagickPixelPacket(ptr noundef) local_unnamed_addr #3

declare void @StripString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #18
  br label %21

21:                                               ; preds = %24, %5
  %22 = phi ptr [ %3, %5 ], [ %25, %24 ]
  %23 = load i8, ptr %22, align 1, !tbaa !67
  switch i8 %23, label %24 [
    i8 46, label %26
    i8 0, label %26
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  br label %21, !llvm.loop !203

26:                                               ; preds = %21, %21
  store i8 0, ptr %6, align 16, !tbaa !67
  %27 = icmp eq i8 %23, 46
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  %30 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %29, i64 noundef 4096) #18
  %31 = call i64 @ParseCommandOption(i32 noundef 4, i32 noundef 1, ptr noundef nonnull %6) #18
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i64 %31, 0
  %34 = select i1 %33, i32 %2, i32 %32
  br label %35

35:                                               ; preds = %28, %26
  %36 = phi i32 [ %34, %28 ], [ %2, %26 ]
  %37 = uitofp i32 %36 to double
  %38 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.179, ptr noundef %1, double noundef %37, ptr noundef %3) #18
  %39 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = call ptr @GetValueFromSplayTree(ptr noundef %40, ptr noundef nonnull %7) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %117

43:                                               ; preds = %35
  %44 = load ptr, ptr %39, align 8, !tbaa !43
  %45 = call i32 @DeleteNodeFromSplayTree(ptr noundef %44, ptr noundef nonnull %7) #18
  %46 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.159, i64 noundef 5) #18
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i64 @GetImageChannelDepth(ptr noundef %1, i32 noundef %36, ptr noundef %4) #18
  %50 = uitofp i64 %49 to double
  %51 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.180, double noundef %50) #18
  br label %52

52:                                               ; preds = %48, %43
  %53 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.160, i64 noundef 8) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %56 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %4) #18
  %57 = load double, ptr %9, align 8, !tbaa !95
  %58 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %57) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %59

59:                                               ; preds = %55, %52
  %60 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.111, i64 noundef 6) #18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  %63 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %4) #18
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.69) #18
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load double, ptr %11, align 8, !tbaa !95
  %68 = fsub double 6.553500e+04, %67
  store double %68, ptr %11, align 8, !tbaa !95
  br label %69

69:                                               ; preds = %66, %62
  %70 = load double, ptr %11, align 8, !tbaa !95
  %71 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %70) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %72

72:                                               ; preds = %69, %59
  %73 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.170, i64 noundef 4) #18
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  %76 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %4) #18
  %77 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.69) #18
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load double, ptr %13, align 8, !tbaa !95
  %81 = fsub double 6.553500e+04, %80
  store double %81, ptr %13, align 8, !tbaa !95
  br label %82

82:                                               ; preds = %79, %75
  %83 = load double, ptr %13, align 8, !tbaa !95
  %84 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %83) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  br label %85

85:                                               ; preds = %82, %72
  %86 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.113, i64 noundef 6) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #18
  %89 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %4) #18
  %90 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.69) #18
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load double, ptr %16, align 8, !tbaa !95
  %94 = fsub double 6.553500e+04, %93
  store double %94, ptr %16, align 8, !tbaa !95
  br label %95

95:                                               ; preds = %92, %88
  %96 = load double, ptr %16, align 8, !tbaa !95
  %97 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %96) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  br label %98

98:                                               ; preds = %95, %85
  %99 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.177, i64 noundef 8) #18
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #18
  %102 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %4) #18
  %103 = load double, ptr %18, align 8, !tbaa !95
  %104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %103) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  br label %105

105:                                              ; preds = %101, %98
  %106 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.178, i64 noundef 18) #18
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #18
  %109 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %4) #18
  %110 = load double, ptr %20, align 8, !tbaa !95
  %111 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %110) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #18
  br label %112

112:                                              ; preds = %108, %105
  %113 = load ptr, ptr %39, align 8, !tbaa !43
  %114 = call ptr @ConstantString(ptr noundef nonnull %7) #18
  %115 = call ptr @ConstantString(ptr noundef nonnull %8) #18
  %116 = call i32 @AddValueToSplayTree(ptr noundef %113, ptr noundef %114, ptr noundef %115) #18
  br label %117

117:                                              ; preds = %35, %112
  %118 = phi ptr [ %8, %112 ], [ %41, %35 ]
  %119 = call double @InterpretLocaleValue(ptr noundef nonnull %118, ptr noundef null) #18
  %120 = fmul double %119, 0x3EF0001000100010
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #18
  ret double %120
}

declare void @ConvertRGBToHSL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @GetImageChannelDepth(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @GetImageChannelKurtosis(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @GetImageChannelRange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @GetImageChannelMean(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { hot nounwind }
attributes #24 = { nounwind willreturn memory(read) }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 56}
!39 = !{!"_FxInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!39, !40, i64 0}
!42 = !{!39, !40, i64 24}
!43 = !{!39, !40, i64 32}
!44 = !{!39, !40, i64 40}
!45 = !{!40, !40, i64 0}
!46 = !{!47, !40, i64 13104}
!47 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !48, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !40, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !51, i64 104, !52, i64 112, !35, i64 208, !40, i64 216, !35, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !48, i64 256, !51, i64 264, !51, i64 272, !54, i64 280, !54, i64 312, !54, i64 344, !51, i64 376, !51, i64 384, !51, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !40, i64 424, !48, i64 432, !48, i64 440, !48, i64 448, !48, i64 456, !48, i64 464, !48, i64 472, !55, i64 480, !56, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !48, i64 12904, !48, i64 12912, !58, i64 12920, !35, i64 12976, !48, i64 12984, !40, i64 12992, !59, i64 13000, !59, i64 13032, !40, i64 13064, !48, i64 13072, !48, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !35, i64 13112, !35, i64 13116, !49, i64 13120, !40, i64 13128, !54, i64 13136, !40, i64 13168, !40, i64 13176, !35, i64 13184, !35, i64 13188, !60, i64 13192, !35, i64 13200, !48, i64 13208, !48, i64 13216, !35, i64 13224, !48, i64 13232}
!48 = !{!"long", !36, i64 0}
!49 = !{!"_PixelPacket", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6}
!50 = !{!"short", !36, i64 0}
!51 = !{!"double", !36, i64 0}
!52 = !{!"_ChromaticityInfo", !53, i64 0, !53, i64 24, !53, i64 48, !53, i64 72}
!53 = !{!"_PrimaryInfo", !51, i64 0, !51, i64 8, !51, i64 16}
!54 = !{!"_RectangleInfo", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!55 = !{!"_ErrorInfo", !51, i64 0, !51, i64 8, !51, i64 16}
!56 = !{!"_TimerInfo", !57, i64 0, !57, i64 24, !35, i64 48, !48, i64 56}
!57 = !{!"_Timer", !51, i64 0, !51, i64 8, !51, i64 16}
!58 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !40, i64 40, !48, i64 48}
!59 = !{!"_ProfileInfo", !40, i64 0, !48, i64 8, !40, i64 16, !48, i64 24}
!60 = !{!"long long", !36, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!39, !40, i64 48}
!65 = !{!39, !40, i64 8}
!66 = !{!39, !40, i64 16}
!67 = !{!36, !36, i64 0}
!68 = !{!47, !35, i64 12976}
!69 = distinct !{!69, !62, !63}
!70 = distinct !{!70, !62, !63}
!71 = !{!47, !48, i64 48}
!72 = !{!47, !48, i64 40}
!73 = !{!49, !50, i64 4}
!74 = !{!47, !35, i64 4}
!75 = !{!49, !50, i64 2}
!76 = !{!49, !50, i64 0}
!77 = !{!49, !50, i64 6}
!78 = !{!50, !50, i64 0}
!79 = distinct !{!79, !62, !63}
!80 = !{!47, !40, i64 568}
!81 = !{!47, !40, i64 576}
!82 = distinct !{!82, !62, !63}
!83 = distinct !{!83, !62, !63}
!84 = distinct !{!84, !62, !63}
!85 = !{!47, !35, i64 13224}
!86 = !{!47, !35, i64 32}
!87 = !{!88, !51, i64 0}
!88 = !{!"_GeometryInfo", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32}
!89 = distinct !{!89, !62, !63}
!90 = distinct !{!90, !62, !63}
!91 = !{!92, !48, i64 16}
!92 = !{!"KernelInfo", !35, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !40, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !40, i64 88, !48, i64 96}
!93 = !{!92, !48, i64 8}
!94 = !{!92, !40, i64 40}
!95 = !{!51, !51, i64 0}
!96 = distinct !{!96, !62, !63}
!97 = distinct !{!97, !62, !63}
!98 = distinct !{!98, !62, !63}
!99 = distinct !{!99, !62, !63}
!100 = distinct !{!100, !62, !63}
!101 = distinct !{!101, !62, !63}
!102 = distinct !{!102, !62, !63}
!103 = distinct !{!103, !62, !63}
!104 = !{!58, !35, i64 0}
!105 = distinct !{!105, !62, !63}
!106 = distinct !{!106, !62, !63}
!107 = distinct !{!107, !62, !63}
!108 = distinct !{!108, !62, !63}
!109 = distinct !{!109, !62, !63}
!110 = distinct !{!110, !62, !63}
!111 = distinct !{!111, !62, !63}
!112 = distinct !{!112, !62, !63}
!113 = distinct !{!113, !62, !63}
!114 = distinct !{!114, !62, !63}
!115 = !{!47, !50, i64 86}
!116 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 16, i64 8, !95, i64 24, i64 8, !117, i64 32, i64 4, !118, i64 36, i64 4, !118, i64 40, i64 4, !118, i64 44, i64 4, !118, i64 48, i64 4, !118}
!117 = !{!48, !48, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"float", !36, i64 0}
!120 = !{!121, !119, i64 32}
!121 = !{!"_MagickPixelPacket", !35, i64 0, !35, i64 4, !35, i64 8, !51, i64 16, !48, i64 24, !119, i64 32, !119, i64 36, !119, i64 40, !119, i64 44, !119, i64 48}
!122 = !{!121, !119, i64 36}
!123 = !{!121, !119, i64 40}
!124 = !{!121, !119, i64 44}
!125 = !{!47, !35, i64 0}
!126 = !{!121, !119, i64 48}
!127 = distinct !{!127, !62, !63}
!128 = distinct !{!128, !62, !63}
!129 = distinct !{!129, !62, !63}
!130 = distinct !{!130, !62, !63}
!131 = !{!47, !35, i64 400}
!132 = !{!47, !51, i64 384}
!133 = distinct !{!133, !62, !63}
!134 = distinct !{!134, !62, !63}
!135 = distinct !{!135, !62, !63}
!136 = !{!137, !51, i64 16}
!137 = !{!"_SegmentInfo", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24}
!138 = !{!137, !51, i64 0}
!139 = !{!137, !51, i64 24}
!140 = !{!137, !51, i64 8}
!141 = !{i64 0, i64 8, !95, i64 8, i64 8, !95, i64 16, i64 8, !95, i64 24, i64 8, !95}
!142 = !{i32 0, i32 2}
!143 = !{!144, !51, i64 16}
!144 = !{!"_TypeMetric", !145, i64 0, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !137, i64 72, !145, i64 104}
!145 = !{!"_PointInfo", !51, i64 0, !51, i64 8}
!146 = !{!144, !51, i64 24}
!147 = !{!148, !35, i64 96}
!148 = !{!"_DrawInfo", !40, i64 0, !40, i64 8, !54, i64 16, !149, i64 48, !35, i64 96, !49, i64 100, !49, i64 108, !51, i64 120, !150, i64 128, !40, i64 256, !40, i64 264, !40, i64 272, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !48, i64 304, !51, i64 312, !35, i64 320, !35, i64 324, !40, i64 328, !48, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !35, i64 368, !35, i64 372, !48, i64 376, !40, i64 384, !51, i64 392, !40, i64 400, !35, i64 408, !49, i64 412, !49, i64 420, !40, i64 432, !40, i64 440, !40, i64 448, !137, i64 456, !35, i64 488, !50, i64 492, !35, i64 496, !151, i64 504, !35, i64 672, !48, i64 680, !51, i64 688, !51, i64 696, !51, i64 704, !35, i64 712}
!149 = !{!"_AffineMatrix", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40}
!150 = !{!"_GradientInfo", !35, i64 0, !54, i64 8, !137, i64 40, !40, i64 72, !48, i64 80, !35, i64 88, !35, i64 92, !48, i64 96, !145, i64 104, !119, i64 120}
!151 = !{!"_ElementReference", !40, i64 0, !35, i64 8, !150, i64 16, !48, i64 144, !40, i64 152, !40, i64 160}
!152 = distinct !{!152, !62, !63}
!153 = distinct !{!153, !62, !63}
!154 = distinct !{!154, !62, !63}
!155 = !{!47, !35, i64 416}
!156 = !{!54, !48, i64 0}
!157 = !{!54, !48, i64 8}
!158 = !{!47, !50, i64 84}
!159 = !{!47, !50, i64 82}
!160 = !{!47, !50, i64 80}
!161 = distinct !{!161, !62, !63}
!162 = distinct !{!162, !62, !63}
!163 = !{!47, !48, i64 280}
!164 = !{!47, !48, i64 288}
!165 = !{!47, !48, i64 296}
!166 = !{!47, !48, i64 304}
!167 = distinct !{!167, !62, !63}
!168 = distinct !{!168, !62, !63}
!169 = !{i64 0, i64 4, !118}
!170 = !{i64 0, i64 4, !118, i64 4, i64 4, !118}
!171 = distinct !{!171, !62, !63}
!172 = distinct !{!172, !62, !63}
!173 = !{!47, !48, i64 64}
!174 = !{!47, !40, i64 72}
!175 = distinct !{!175, !62, !63}
!176 = distinct !{!176, !62, !63}
!177 = distinct !{!177, !62, !63}
!178 = !{!47, !48, i64 56}
!179 = !{!47, !48, i64 256}
!180 = distinct !{!180, !62, !63}
!181 = distinct !{!181, !62, !63}
!182 = distinct !{!182, !62, !63}
!183 = distinct !{!183, !62, !63}
!184 = distinct !{!184, !62, !63}
!185 = distinct !{!185, !62, !63}
!186 = distinct !{!186, !62, !63}
!187 = distinct !{!187, !62, !63}
!188 = distinct !{!188, !62, !63}
!189 = !{!148, !40, i64 0}
!190 = distinct !{!190, !62, !63}
!191 = distinct !{!191, !62, !63}
!192 = distinct !{!192, !62, !63}
!193 = !{!47, !35, i64 13112}
!194 = distinct !{!194, !62, !63}
!195 = !{!121, !35, i64 8}
!196 = !{!121, !35, i64 4}
!197 = !{!88, !51, i64 8}
!198 = !{!88, !51, i64 16}
!199 = !{!88, !51, i64 24}
!200 = !{!88, !51, i64 32}
!201 = !{!47, !51, i64 264}
!202 = !{!47, !51, i64 272}
!203 = distinct !{!203, !62, !63}
