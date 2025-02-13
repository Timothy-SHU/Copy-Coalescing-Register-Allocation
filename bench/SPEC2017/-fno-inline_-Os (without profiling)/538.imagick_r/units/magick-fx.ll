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
@.str.150 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireFxInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #21
  %6 = tail call dereferenceable_or_null(64) ptr @AcquireMagickMemory(i64 noundef 64) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  call void @GetExceptionInfo(ptr noundef nonnull %4) #23
  %9 = tail call ptr @__errno_location() #24
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #23
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 175, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #23
  %13 = call ptr @DestroyString(ptr noundef %11) #23
  call void @CatchException(ptr noundef nonnull %4) #23
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #25
  unreachable

15:                                               ; preds = %2
  %16 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 64) #23
  %17 = tail call ptr @AcquireExceptionInfo() #23
  %18 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !9
  store ptr %0, ptr %6, align 8, !tbaa !12
  %19 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishAlignedMemory) #23
  %20 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !13
  %21 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #23
  %22 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !14
  %23 = load ptr, ptr %6, align 8, !tbaa !12
  %24 = tail call i64 @GetImageListLength(ptr noundef %23) #23
  %25 = tail call ptr @AcquireQuantumMemory(i64 noundef %24, i64 noundef 8) #26
  %26 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !15
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #21
  call void @GetExceptionInfo(ptr noundef nonnull %5) #23
  %29 = tail call ptr @__errno_location() #24
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = call ptr @GetExceptionMessage(i32 noundef %30) #23
  %32 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 186, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %31) #23
  %33 = call ptr @DestroyString(ptr noundef %31) #23
  call void @CatchException(ptr noundef nonnull %5) #23
  %34 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #25
  unreachable

35:                                               ; preds = %15
  %36 = load ptr, ptr %6, align 8, !tbaa !12
  %37 = tail call ptr @GetFirstImageInList(ptr noundef %36) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %48, %39 ], [ %37, %35 ]
  %41 = phi i64 [ %46, %39 ], [ 0, %35 ]
  %42 = load ptr, ptr %18, align 8, !tbaa !9
  %43 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %40, ptr noundef %42) #23
  %44 = load ptr, ptr %26, align 8, !tbaa !15
  %45 = getelementptr inbounds ptr, ptr %44, i64 %41
  store ptr %43, ptr %45, align 8, !tbaa !16
  %46 = add nuw nsw i64 %41, 1
  %47 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 69
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %39, !llvm.loop !32

50:                                               ; preds = %39, %35
  %51 = tail call ptr @AcquireRandomInfo() #23
  %52 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 6
  store ptr %51, ptr %52, align 8, !tbaa !34
  %53 = tail call ptr @ConstantString(ptr noundef %1) #23
  %54 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !35
  %55 = load ptr, ptr @stderr, align 8, !tbaa !16
  %56 = getelementptr inbounds %struct._FxInfo, ptr %6, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !36
  %57 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #23
  %58 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #23
  %59 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #23
  %60 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #23
  %61 = tail call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #23
  %62 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %62, align 1, !tbaa !37
  store i8 -11, ptr %3, align 1, !tbaa !37
  %63 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.13, ptr noundef nonnull %3) #23
  store i8 -10, ptr %3, align 1, !tbaa !37
  %64 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.14, ptr noundef nonnull %3) #23
  store i8 -9, ptr %3, align 1, !tbaa !37
  %65 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #23
  store i8 -8, ptr %3, align 1, !tbaa !37
  %66 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.16, ptr noundef nonnull %3) #23
  store i8 -7, ptr %3, align 1, !tbaa !37
  %67 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.17, ptr noundef nonnull %3) #23
  store i8 -6, ptr %3, align 1, !tbaa !37
  %68 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #23
  store i8 -5, ptr %3, align 1, !tbaa !37
  %69 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.19, ptr noundef nonnull %3) #23
  store i8 -4, ptr %3, align 1, !tbaa !37
  %70 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #23
  store i8 -3, ptr %3, align 1, !tbaa !37
  %71 = call i32 @SubstituteString(ptr noundef nonnull %54, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #21
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
  %4 = tail call ptr @AddNoiseImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, ptr noundef %2) #27
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AddNoiseImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 313, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #23
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call ptr @AccelerateAddNoiseImage(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %171

14:                                               ; preds = %11
  %15 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %171, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %15, i32 noundef 1) #23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %21) #23
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %171

23:                                               ; preds = %17
  %24 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc double @StringToDouble(ptr noundef nonnull %24) #27
  %28 = fptrunc double %27 to float
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi float [ %28, %26 ], [ 1.000000e+00, %23 ]
  %31 = tail call fastcc ptr @AcquireRandomInfoThreadSet() #27
  %32 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #23
  %33 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %3) #23
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !39
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %167

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %39 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %40 = and i32 %1, 1
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %43 = and i32 %1, 2
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %1, 4
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %1, 8
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %1, 32
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %52

52:                                               ; preds = %37, %154
  %53 = phi i64 [ 0, %37 ], [ %157, %154 ]
  %54 = phi i64 [ 0, %37 ], [ %156, %154 ]
  %55 = phi i32 [ 1, %37 ], [ %155, %154 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %154, label %57

57:                                               ; preds = %52
  %58 = load i64, ptr %38, align 8, !tbaa !40
  %59 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %32, i64 noundef 0, i64 noundef %53, i64 noundef %58, i64 noundef 1, ptr noundef %3) #28
  %60 = load i64, ptr %39, align 8, !tbaa !40
  %61 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %53, i64 noundef %60, i64 noundef 1, ptr noundef %3) #28
  %62 = icmp eq ptr %59, null
  %63 = icmp eq ptr %61, null
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %154, label %65

65:                                               ; preds = %57
  %66 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %32) #23
  %67 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %33) #23
  %68 = load i64, ptr %38, align 8, !tbaa !40
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %142

70:                                               ; preds = %65
  %71 = icmp eq ptr %67, null
  %72 = icmp eq ptr %66, null
  br label %73

73:                                               ; preds = %70, %136
  %74 = phi ptr [ %61, %70 ], [ %138, %136 ]
  %75 = phi i64 [ 0, %70 ], [ %139, %136 ]
  %76 = phi ptr [ %59, %70 ], [ %137, %136 ]
  br i1 %41, label %85, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %31, align 8, !tbaa !16
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  %80 = load i16, ptr %79, align 2, !tbaa !41
  %81 = tail call double @GenerateDifferentialNoise(ptr noundef %78, i16 noundef zeroext %80, i32 noundef %2, float noundef %30) #23
  %82 = fptrunc double %81 to float
  %83 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %82) #27
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  store i16 %83, ptr %84, align 2, !tbaa !41
  br label %85

85:                                               ; preds = %77, %73
  %86 = load i32, ptr %42, align 4, !tbaa !42
  %87 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %86) #27, !range !43
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  %91 = load i16, ptr %90, align 2, !tbaa !41
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  store i16 %91, ptr %92, align 2, !tbaa !44
  br label %109

93:                                               ; preds = %85
  br i1 %44, label %102, label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %31, align 8, !tbaa !16
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !44
  %98 = tail call double @GenerateDifferentialNoise(ptr noundef %95, i16 noundef zeroext %97, i32 noundef %2, float noundef %30) #23
  %99 = fptrunc double %98 to float
  %100 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %99) #27
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  store i16 %100, ptr %101, align 2, !tbaa !44
  br label %102

102:                                              ; preds = %94, %93
  br i1 %46, label %111, label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %31, align 8, !tbaa !16
  %105 = load i16, ptr %76, align 2, !tbaa !45
  %106 = tail call double @GenerateDifferentialNoise(ptr noundef %104, i16 noundef zeroext %105, i32 noundef %2, float noundef %30) #23
  %107 = fptrunc double %106 to float
  %108 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %107) #27
  br label %109

109:                                              ; preds = %89, %103
  %110 = phi i16 [ %108, %103 ], [ %91, %89 ]
  store i16 %110, ptr %74, align 2, !tbaa !45
  br label %111

111:                                              ; preds = %109, %102
  br i1 %48, label %120, label %112

112:                                              ; preds = %111
  %113 = load ptr, ptr %31, align 8, !tbaa !16
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 3
  %115 = load i16, ptr %114, align 2, !tbaa !46
  %116 = tail call double @GenerateDifferentialNoise(ptr noundef %113, i16 noundef zeroext %115, i32 noundef %2, float noundef %30) #23
  %117 = fptrunc double %116 to float
  %118 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %117) #27
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  store i16 %118, ptr %119, align 2, !tbaa !46
  br label %120

120:                                              ; preds = %112, %111
  br i1 %50, label %136, label %121

121:                                              ; preds = %120
  %122 = load i32, ptr %42, align 4, !tbaa !42
  %123 = icmp eq i32 %122, 12
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = getelementptr inbounds i16, ptr %67, i64 %75
  br i1 %71, label %136, label %126

126:                                              ; preds = %124
  %127 = load ptr, ptr %31, align 8, !tbaa !16
  br i1 %72, label %131, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds i16, ptr %66, i64 %75
  %130 = load i16, ptr %129, align 2, !tbaa !47
  br label %131

131:                                              ; preds = %126, %128
  %132 = phi i16 [ %130, %128 ], [ 0, %126 ]
  %133 = tail call double @GenerateDifferentialNoise(ptr noundef %127, i16 noundef zeroext %132, i32 noundef %2, float noundef %30) #23
  %134 = fptrunc double %133 to float
  %135 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %134) #27
  store i16 %135, ptr %125, align 2, !tbaa !47
  br label %136

136:                                              ; preds = %124, %131, %121, %120
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %139 = add nuw nsw i64 %75, 1
  %140 = load i64, ptr %38, align 8, !tbaa !40
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %73, label %142, !llvm.loop !48

142:                                              ; preds = %136, %65
  %143 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %33, ptr noundef %3) #28
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load ptr, ptr %51, align 8, !tbaa !49
  %147 = icmp eq ptr %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = add nsw i64 %54, 1
  %150 = load i64, ptr %34, align 8, !tbaa !39
  %151 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef %54, i64 noundef %150) #27
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 0, i32 %145
  br label %154

154:                                              ; preds = %142, %148, %57, %52
  %155 = phi i32 [ 0, %52 ], [ 0, %57 ], [ %153, %148 ], [ %145, %142 ]
  %156 = phi i64 [ %54, %52 ], [ %54, %57 ], [ %149, %148 ], [ %54, %142 ]
  %157 = add nuw nsw i64 %53, 1
  %158 = load i64, ptr %34, align 8, !tbaa !39
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %52, label %160, !llvm.loop !50

160:                                              ; preds = %154
  %161 = icmp eq i32 %155, 0
  %162 = tail call ptr @DestroyCacheView(ptr noundef %33) #23
  %163 = tail call ptr @DestroyCacheView(ptr noundef %32) #23
  %164 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %31) #27
  br i1 %161, label %165, label %171

165:                                              ; preds = %160
  %166 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %171

167:                                              ; preds = %29
  %168 = tail call ptr @DestroyCacheView(ptr noundef %33) #23
  %169 = tail call ptr @DestroyCacheView(ptr noundef %32) #23
  %170 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %31) #27
  br label %171

171:                                              ; preds = %167, %160, %165, %14, %11, %20
  %172 = phi ptr [ null, %20 ], [ %12, %11 ], [ null, %14 ], [ %166, %165 ], [ %15, %160 ], [ %15, %167 ]
  ret ptr %172
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
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #23
  ret double %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireRandomInfoThreadSet() unnamed_addr #0 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %2 = tail call ptr @AcquireAlignedMemory(i64 noundef %1, i64 noundef 8) #26
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #23
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !51

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call ptr @AcquireRandomInfo() #23
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !16
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef nonnull %2) #27
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #8 {
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
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #8 {
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
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef nonnull %10) #23
  %12 = load ptr, ptr %6, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #23
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #21
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %7) #23
  store ptr %10, ptr %6, align 8, !tbaa !16
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !53

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #23
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlueShiftImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 494, ptr noundef nonnull @.str.22, ptr noundef nonnull %8) #23
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !39
  %15 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %12, i64 noundef %14, i32 noundef 1, ptr noundef %2) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %122, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %15, i32 noundef 1) #23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %21) #23
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %122

23:                                               ; preds = %17
  %24 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #23
  %25 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %2) #23
  %26 = load i64, ptr %13, align 8, !tbaa !39
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %119

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %31

31:                                               ; preds = %28, %107
  %32 = phi i64 [ 0, %28 ], [ %110, %107 ]
  %33 = phi i64 [ 0, %28 ], [ %109, %107 ]
  %34 = phi i32 [ 1, %28 ], [ %108, %107 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %107, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %11, align 8, !tbaa !40
  %38 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %24, i64 noundef 0, i64 noundef %32, i64 noundef %37, i64 noundef 1, ptr noundef %2) #28
  %39 = load i64, ptr %29, align 8, !tbaa !40
  %40 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %25, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %2) #28
  %41 = icmp eq ptr %38, null
  %42 = icmp eq ptr %40, null
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %107, label %44

44:                                               ; preds = %36
  %45 = load i64, ptr %11, align 8, !tbaa !40
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %92, %47 ], [ %40, %44 ]
  %49 = phi i64 [ %93, %47 ], [ 0, %44 ]
  %50 = phi ptr [ %91, %47 ], [ %38, %44 ]
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 2
  %52 = load i16, ptr %51, align 2, !tbaa !41
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !44
  %55 = tail call i16 @llvm.umin.i16(i16 %54, i16 %52)
  %56 = load i16, ptr %50, align 2, !tbaa !45
  %57 = tail call i16 @llvm.umin.i16(i16 %56, i16 %55)
  %58 = uitofp i16 %52 to double
  %59 = uitofp i16 %57 to double
  %60 = tail call double @llvm.fmuladd.f64(double %1, double %59, double %58)
  %61 = fmul double %60, 5.000000e-01
  %62 = fptrunc double %61 to float
  %63 = uitofp i16 %54 to double
  %64 = tail call double @llvm.fmuladd.f64(double %1, double %59, double %63)
  %65 = fmul double %64, 5.000000e-01
  %66 = fptrunc double %65 to float
  %67 = uitofp i16 %56 to double
  %68 = tail call double @llvm.fmuladd.f64(double %1, double %59, double %67)
  %69 = fmul double %68, 5.000000e-01
  %70 = fptrunc double %69 to float
  %71 = tail call i16 @llvm.umax.i16(i16 %54, i16 %52)
  %72 = tail call i16 @llvm.umax.i16(i16 %56, i16 %71)
  %73 = fpext float %62 to double
  %74 = uitofp i16 %72 to double
  %75 = tail call double @llvm.fmuladd.f64(double %1, double %74, double %73)
  %76 = fmul double %75, 5.000000e-01
  %77 = fptrunc double %76 to float
  %78 = fpext float %66 to double
  %79 = tail call double @llvm.fmuladd.f64(double %1, double %74, double %78)
  %80 = fmul double %79, 5.000000e-01
  %81 = fptrunc double %80 to float
  %82 = fpext float %70 to double
  %83 = tail call double @llvm.fmuladd.f64(double %1, double %74, double %82)
  %84 = fmul double %83, 5.000000e-01
  %85 = fptrunc double %84 to float
  %86 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %77) #27
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 0, i32 2
  store i16 %86, ptr %87, align 2, !tbaa !41
  %88 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #27
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 0, i32 1
  store i16 %88, ptr %89, align 2, !tbaa !44
  %90 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %85) #27
  store i16 %90, ptr %48, align 2, !tbaa !45
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 1
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 1
  %93 = add nuw nsw i64 %49, 1
  %94 = icmp eq i64 %93, %45
  br i1 %94, label %95, label %47, !llvm.loop !54

95:                                               ; preds = %47, %44
  %96 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef %2) #28
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load ptr, ptr %30, align 8, !tbaa !49
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = add nsw i64 %33, 1
  %103 = load i64, ptr %13, align 8, !tbaa !39
  %104 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, i64 noundef %33, i64 noundef %103) #27
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i32 0, i32 %98
  br label %107

107:                                              ; preds = %95, %101, %36, %31
  %108 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %106, %101 ], [ %98, %95 ]
  %109 = phi i64 [ %33, %31 ], [ %33, %36 ], [ %102, %101 ], [ %33, %95 ]
  %110 = add nuw nsw i64 %32, 1
  %111 = load i64, ptr %13, align 8, !tbaa !39
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %31, label %113, !llvm.loop !55

113:                                              ; preds = %107
  %114 = icmp eq i32 %108, 0
  %115 = tail call ptr @DestroyCacheView(ptr noundef %24) #23
  %116 = tail call ptr @DestroyCacheView(ptr noundef %25) #23
  br i1 %114, label %117, label %122

117:                                              ; preds = %113
  %118 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %122

119:                                              ; preds = %23
  %120 = tail call ptr @DestroyCacheView(ptr noundef %24) #23
  %121 = tail call ptr @DestroyCacheView(ptr noundef %25) #23
  br label %122

122:                                              ; preds = %119, %113, %117, %10, %20
  %123 = phi ptr [ null, %20 ], [ null, %10 ], [ %118, %117 ], [ %15, %113 ], [ %15, %119 ]
  ret ptr %123
}

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CharcoalImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 638, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #23
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @EdgeImage(ptr noundef nonnull %12, double noundef %1, ptr noundef %3) #23
  %16 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #23
  %17 = icmp eq ptr %15, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @BlurImage(ptr noundef nonnull %15, double noundef %1, double noundef %2, ptr noundef %3) #23
  %20 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  %21 = icmp eq ptr %19, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @NormalizeImage(ptr noundef nonnull %19) #23
  %24 = tail call i32 @NegateImage(ptr noundef nonnull %19, i32 noundef 0) #23
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = tail call i32 @GrayscaleImage(ptr noundef nonnull %19, i32 noundef %26) #23
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
  %6 = alloca %struct._GeometryInfo, align 8
  store i64 %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !38
  %9 = icmp eq i32 %8, 0
  %10 = lshr i64 %2, 48
  %11 = trunc i64 %10 to i16
  %12 = lshr i64 %2, 32
  %13 = trunc i64 %12 to i16
  %14 = lshr i64 %2, 16
  %15 = insertelement <2 x i64> poison, i64 %2, i64 0
  %16 = insertelement <2 x i64> %15, i64 %14, i64 1
  %17 = trunc <2 x i64> %16 to <2 x i16>
  br i1 %9, label %21, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 727, ptr noundef nonnull @.str.22, ptr noundef nonnull %19) #23
  br label %21

21:                                               ; preds = %18, %4
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !40
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !39
  %26 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %23, i64 noundef %25, i32 noundef 1, ptr noundef %3) #23
  %27 = icmp eq ptr %26, null
  br i1 %27, label %173, label %28

28:                                               ; preds = %21
  %29 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %26, i32 noundef 1) #23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %32) #23
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %26) #23
  br label %173

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !42
  %37 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %36) #27, !range !43
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call fastcc i32 @IsPixelGray(ptr noundef nonnull %5) #27, !range !43
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %34
  %43 = tail call i32 @SetImageColorspace(ptr noundef nonnull %26, i32 noundef 13) #23
  br label %44

44:                                               ; preds = %42, %39
  %45 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !57
  %47 = icmp eq i32 %46, 0
  %48 = icmp ne i16 %11, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %26, i32 noundef 6) #23
  br label %52

52:                                               ; preds = %50, %44
  %53 = icmp eq ptr %1, null
  br i1 %53, label %173, label %54

54:                                               ; preds = %52
  %55 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %6) #23
  %56 = load double, ptr %6, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %58 = load <2 x double>, ptr %57, align 8
  %59 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 3
  %60 = load double, ptr %59, align 8
  %61 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #23
  %62 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %26, ptr noundef %3) #23
  %63 = load i64, ptr %24, align 8, !tbaa !39
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %170

65:                                               ; preds = %54
  %66 = and i32 %55, 2
  %67 = icmp eq i32 %66, 0
  %68 = fptrunc double %60 to float
  %69 = select i1 %67, float 0.000000e+00, float %68
  %70 = insertelement <2 x i32> poison, i32 %55, i64 0
  %71 = shufflevector <2 x i32> %70, <2 x i32> poison, <2 x i32> zeroinitializer
  %72 = and <2 x i32> %71, <i32 1, i32 8>
  %73 = fptrunc double %56 to float
  %74 = fptrunc <2 x double> %58 to <2 x float>
  %75 = shufflevector <2 x float> %74, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %76 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 7
  %77 = fpext float %73 to double
  %78 = fsub double 1.000000e+02, %77
  %79 = uitofp i16 %13 to float
  %80 = fmul float %73, %79
  %81 = fpext float %80 to double
  %82 = uitofp <2 x i16> %17 to <2 x float>
  %83 = icmp eq <2 x i32> %72, zeroinitializer
  %84 = insertelement <2 x float> poison, float %73, i64 0
  %85 = shufflevector <2 x float> %84, <2 x float> poison, <2 x i32> zeroinitializer
  %86 = select <2 x i1> %83, <2 x float> %85, <2 x float> %75
  %87 = fpext <2 x float> %86 to <2 x double>
  %88 = fmul <2 x float> %86, %82
  %89 = fsub <2 x double> <double 1.000000e+02, double 1.000000e+02>, %87
  %90 = fpext <2 x float> %88 to <2 x double>
  %91 = fpext float %69 to double
  %92 = fsub double 1.000000e+02, %91
  %93 = uitofp i16 %11 to float
  %94 = fmul float %69, %93
  %95 = fpext float %94 to double
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %97

97:                                               ; preds = %65, %158
  %98 = phi i64 [ 0, %65 ], [ %161, %158 ]
  %99 = phi i32 [ 1, %65 ], [ %160, %158 ]
  %100 = phi i64 [ 0, %65 ], [ %159, %158 ]
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %158, label %102

102:                                              ; preds = %97
  %103 = load i64, ptr %22, align 8, !tbaa !40
  %104 = call ptr @GetCacheViewVirtualPixels(ptr noundef %61, i64 noundef 0, i64 noundef %98, i64 noundef %103, i64 noundef 1, ptr noundef %3) #28
  %105 = load i64, ptr %76, align 8, !tbaa !40
  %106 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %62, i64 noundef 0, i64 noundef %98, i64 noundef %105, i64 noundef 1, ptr noundef %3) #28
  %107 = icmp eq ptr %104, null
  %108 = icmp eq ptr %106, null
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %158, label %110

110:                                              ; preds = %102
  %111 = load i64, ptr %22, align 8, !tbaa !40
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %110
  %114 = load i32, ptr %45, align 8, !tbaa !57
  %115 = icmp eq i32 %114, 0
  br label %116

116:                                              ; preds = %113, %139
  %117 = phi ptr [ %106, %113 ], [ %143, %139 ]
  %118 = phi i64 [ 0, %113 ], [ %144, %139 ]
  %119 = phi ptr [ %104, %113 ], [ %142, %139 ]
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 0, i32 2
  %121 = load i16, ptr %120, align 2, !tbaa !41
  %122 = uitofp i16 %121 to double
  %123 = call double @llvm.fmuladd.f64(double %122, double %78, double %81)
  %124 = fdiv double %123, 1.000000e+02
  %125 = fptoui double %124 to i16
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  store i16 %125, ptr %126, align 2, !tbaa !41
  %127 = load <2 x i16>, ptr %119, align 2, !tbaa !47
  %128 = uitofp <2 x i16> %127 to <2 x double>
  %129 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %128, <2 x double> %89, <2 x double> %90)
  %130 = fdiv <2 x double> %129, <double 1.000000e+02, double 1.000000e+02>
  %131 = fptoui <2 x double> %130 to <2 x i16>
  store <2 x i16> %131, ptr %117, align 2, !tbaa !47
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 0, i32 3
  %133 = load i16, ptr %132, align 2, !tbaa !46
  br i1 %115, label %139, label %134

134:                                              ; preds = %116
  %135 = uitofp i16 %133 to double
  %136 = call double @llvm.fmuladd.f64(double %135, double %92, double %95)
  %137 = fdiv double %136, 1.000000e+02
  %138 = fptoui double %137 to i16
  br label %139

139:                                              ; preds = %116, %134
  %140 = phi i16 [ %138, %134 ], [ %133, %116 ]
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  store i16 %140, ptr %141, align 2
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 1
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %144 = add nuw nsw i64 %118, 1
  %145 = icmp eq i64 %144, %111
  br i1 %145, label %146, label %116, !llvm.loop !60

146:                                              ; preds = %139, %110
  %147 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef %3) #28
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = load ptr, ptr %96, align 8, !tbaa !49
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = add nsw i64 %100, 1
  %154 = load i64, ptr %24, align 8, !tbaa !39
  %155 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, i64 noundef %100, i64 noundef %154) #27
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %156, i32 0, i32 %149
  br label %158

158:                                              ; preds = %146, %152, %102, %97
  %159 = phi i64 [ %100, %97 ], [ %100, %102 ], [ %153, %152 ], [ %100, %146 ]
  %160 = phi i32 [ 0, %97 ], [ 0, %102 ], [ %157, %152 ], [ %149, %146 ]
  %161 = add nuw nsw i64 %98, 1
  %162 = load i64, ptr %24, align 8, !tbaa !39
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %97, label %164, !llvm.loop !61

164:                                              ; preds = %158
  %165 = icmp eq i32 %160, 0
  %166 = call ptr @DestroyCacheView(ptr noundef %61) #23
  %167 = call ptr @DestroyCacheView(ptr noundef %62) #23
  br i1 %165, label %168, label %173

168:                                              ; preds = %164
  %169 = call ptr @DestroyImage(ptr noundef nonnull %26) #23
  br label %173

170:                                              ; preds = %54
  %171 = call ptr @DestroyCacheView(ptr noundef %61) #23
  %172 = call ptr @DestroyCacheView(ptr noundef %62) #23
  br label %173

173:                                              ; preds = %170, %164, %168, %52, %21, %31
  %174 = phi ptr [ null, %31 ], [ null, %21 ], [ %26, %52 ], [ %169, %168 ], [ %26, %164 ], [ %26, %170 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  ret ptr %174
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !47
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #27
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !45
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #27
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ColorMatrixImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [6 x [6 x double]], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %4, i8 0, i64 288, i1 false)
  store double 1.000000e+00, ptr %4, align 16
  %7 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 1, i64 1
  store double 1.000000e+00, ptr %7, align 8
  %8 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 2, i64 2
  store double 1.000000e+00, ptr %8, align 16
  %9 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 3, i64 3
  store double 1.000000e+00, ptr %9, align 8
  %10 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 4, i64 4
  store double 1.000000e+00, ptr %10, align 16
  %11 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 5, i64 5
  store double 1.000000e+00, ptr %11, align 8
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 912, ptr noundef nonnull @.str.22, ptr noundef nonnull %16) #23
  br label %18

18:                                               ; preds = %15, %3
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !62
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !64
  %25 = icmp sgt i64 %24, 0
  %26 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 5
  br label %27

27:                                               ; preds = %22, %46
  %28 = phi i64 [ 0, %22 ], [ %48, %46 ]
  %29 = phi i64 [ 0, %22 ], [ %47, %46 ]
  br i1 %25, label %30, label %46

30:                                               ; preds = %27
  %31 = icmp ult i64 %28, 6
  br label %32

32:                                               ; preds = %30, %42
  %33 = phi i64 [ 0, %30 ], [ %44, %42 ]
  %34 = phi i64 [ %29, %30 ], [ %43, %42 ]
  %35 = icmp ult i64 %33, 6
  %36 = and i1 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load ptr, ptr %26, align 8, !tbaa !65
  %39 = getelementptr inbounds double, ptr %38, i64 %34
  %40 = load double, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 %28, i64 %33
  store double %40, ptr %41, align 8, !tbaa !66
  br label %42

42:                                               ; preds = %37, %32
  %43 = add nsw i64 %34, 1
  %44 = add nuw nsw i64 %33, 1
  %45 = icmp eq i64 %44, %24
  br i1 %45, label %46, label %32, !llvm.loop !67

46:                                               ; preds = %42, %27
  %47 = phi i64 [ %29, %27 ], [ %43, %42 ]
  %48 = add nuw nsw i64 %28, 1
  %49 = icmp eq i64 %48, %20
  br i1 %49, label %50, label %27, !llvm.loop !68

50:                                               ; preds = %46, %18
  %51 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #23
  %52 = icmp eq ptr %51, null
  br i1 %52, label %238, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %51, i32 noundef 1) #23
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %57) #23
  %58 = tail call ptr @DestroyImage(ptr noundef nonnull %51) #23
  br label %238

59:                                               ; preds = %53
  %60 = load i32, ptr %12, align 8, !tbaa !38
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %63 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, ptr noundef nonnull @.str.27) #23
  %64 = tail call ptr @AcquireString(ptr noundef nonnull @.str.1) #23
  store ptr %64, ptr %6, align 8, !tbaa !16
  br label %65

65:                                               ; preds = %62, %79
  %66 = phi i64 [ 0, %62 ], [ %82, %79 ]
  %67 = load ptr, ptr %6, align 8, !tbaa !16
  store i8 0, ptr %67, align 1, !tbaa !37
  %68 = sitofp i64 %66 to double
  %69 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.28, double noundef %68) #23
  %70 = call i32 @ConcatenateString(ptr noundef nonnull %6, ptr noundef nonnull %5) #23
  br label %71

71:                                               ; preds = %65, %71
  %72 = phi i64 [ 0, %65 ], [ %77, %71 ]
  %73 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 %66, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !66
  %75 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %74) #23
  %76 = call i32 @ConcatenateString(ptr noundef nonnull %6, ptr noundef nonnull %5) #23
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, 6
  br i1 %78, label %79, label %71, !llvm.loop !69

79:                                               ; preds = %71
  %80 = load ptr, ptr %6, align 8, !tbaa !16
  %81 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 955, ptr noundef nonnull @.str.22, ptr noundef %80) #23
  %82 = add nuw nsw i64 %66, 1
  %83 = icmp eq i64 %82, 6
  br i1 %83, label %84, label %65, !llvm.loop !70

84:                                               ; preds = %79
  %85 = load ptr, ptr %6, align 8, !tbaa !16
  %86 = call ptr @DestroyString(ptr noundef %85) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #21
  br label %87

87:                                               ; preds = %84, %59
  %88 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #23
  %89 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %51, ptr noundef %2) #23
  %90 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %91 = load i64, ptr %90, align 8, !tbaa !39
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %235

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %95 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %99

99:                                               ; preds = %93, %223
  %100 = phi i64 [ 0, %93 ], [ %226, %223 ]
  %101 = phi i64 [ 0, %93 ], [ %225, %223 ]
  %102 = phi i32 [ 1, %93 ], [ %224, %223 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %223, label %104

104:                                              ; preds = %99
  %105 = load i64, ptr %94, align 8, !tbaa !40
  %106 = call ptr @GetCacheViewVirtualPixels(ptr noundef %88, i64 noundef 0, i64 noundef %100, i64 noundef %105, i64 noundef 1, ptr noundef %2) #28
  %107 = load i64, ptr %95, align 8, !tbaa !40
  %108 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %89, i64 noundef 0, i64 noundef %100, i64 noundef %107, i64 noundef 1, ptr noundef %2) #28
  %109 = icmp eq ptr %106, null
  %110 = icmp eq ptr %108, null
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %223, label %112

112:                                              ; preds = %104
  %113 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %88) #23
  %114 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %89) #23
  %115 = load i64, ptr %94, align 8, !tbaa !40
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %211

117:                                              ; preds = %112
  %118 = load i64, ptr %19, align 8, !tbaa !62
  %119 = call i64 @llvm.umin.i64(i64 %118, i64 6)
  %120 = icmp eq i64 %118, 0
  %121 = icmp eq ptr %113, null
  %122 = icmp eq ptr %114, null
  br label %123

123:                                              ; preds = %117, %206
  %124 = phi ptr [ %108, %117 ], [ %208, %206 ]
  %125 = phi i64 [ 0, %117 ], [ %209, %206 ]
  %126 = phi ptr [ %106, %117 ], [ %207, %206 ]
  br i1 %120, label %206, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 2
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 1
  %130 = load i32, ptr %96, align 8, !tbaa !57
  %131 = icmp eq i32 %130, 0
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 0, i32 3
  %133 = load i32, ptr %97, align 4, !tbaa !42
  %134 = icmp eq i32 %133, 12
  %135 = getelementptr inbounds i16, ptr %113, i64 %125
  %136 = icmp ne i32 %133, 12
  %137 = select i1 %136, i1 true, i1 %122
  %138 = getelementptr inbounds i16, ptr %114, i64 %125
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 0, i32 3
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 0, i32 1
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 0, i32 2
  br label %142

142:                                              ; preds = %127, %203
  %143 = phi i64 [ 0, %127 ], [ %204, %203 ]
  %144 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 %143
  %145 = load double, ptr %144, align 16, !tbaa !66
  %146 = load i16, ptr %128, align 2, !tbaa !41
  %147 = uitofp i16 %146 to double
  %148 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 %143, i64 1
  %149 = load double, ptr %148, align 8, !tbaa !66
  %150 = load i16, ptr %129, align 2, !tbaa !44
  %151 = uitofp i16 %150 to double
  %152 = fmul double %149, %151
  %153 = call double @llvm.fmuladd.f64(double %145, double %147, double %152)
  %154 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 %143, i64 2
  %155 = load double, ptr %154, align 16, !tbaa !66
  %156 = load i16, ptr %126, align 2, !tbaa !45
  %157 = uitofp i16 %156 to double
  %158 = call double @llvm.fmuladd.f64(double %155, double %157, double %153)
  %159 = fptrunc double %158 to float
  br i1 %131, label %169, label %160

160:                                              ; preds = %142
  %161 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 %143, i64 3
  %162 = load double, ptr %161, align 8, !tbaa !66
  %163 = load i16, ptr %132, align 2, !tbaa !46
  %164 = xor i16 %163, -1
  %165 = uitofp i16 %164 to double
  %166 = fpext float %159 to double
  %167 = call double @llvm.fmuladd.f64(double %162, double %165, double %166)
  %168 = fptrunc double %167 to float
  br label %169

169:                                              ; preds = %160, %142
  %170 = phi float [ %168, %160 ], [ %159, %142 ]
  br i1 %134, label %171, label %183

171:                                              ; preds = %169
  %172 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 %143, i64 4
  %173 = load double, ptr %172, align 16, !tbaa !66
  br i1 %121, label %177, label %174

174:                                              ; preds = %171
  %175 = load i16, ptr %135, align 2, !tbaa !47
  %176 = zext i16 %175 to i32
  br label %177

177:                                              ; preds = %171, %174
  %178 = phi i32 [ %176, %174 ], [ 0, %171 ]
  %179 = sitofp i32 %178 to double
  %180 = fpext float %170 to double
  %181 = call double @llvm.fmuladd.f64(double %173, double %179, double %180)
  %182 = fptrunc double %181 to float
  br label %183

183:                                              ; preds = %177, %169
  %184 = phi float [ %182, %177 ], [ %170, %169 ]
  %185 = getelementptr inbounds [6 x [6 x double]], ptr %4, i64 0, i64 %143, i64 5
  %186 = load double, ptr %185, align 8, !tbaa !66
  %187 = fpext float %184 to double
  %188 = call double @llvm.fmuladd.f64(double %186, double 6.553500e+04, double %187)
  %189 = fptrunc double %188 to float
  switch i64 %143, label %203 [
    i64 0, label %190
    i64 1, label %192
    i64 2, label %194
    i64 3, label %196
    i64 4, label %200
  ]

190:                                              ; preds = %183
  %191 = call fastcc zeroext i16 @ClampToQuantum(float noundef %189) #27
  store i16 %191, ptr %141, align 2, !tbaa !41
  br label %203

192:                                              ; preds = %183
  %193 = call fastcc zeroext i16 @ClampToQuantum(float noundef %189) #27
  store i16 %193, ptr %140, align 2, !tbaa !44
  br label %203

194:                                              ; preds = %183
  %195 = call fastcc zeroext i16 @ClampToQuantum(float noundef %189) #27
  store i16 %195, ptr %124, align 2, !tbaa !45
  br label %203

196:                                              ; preds = %183
  br i1 %131, label %203, label %197

197:                                              ; preds = %196
  %198 = call fastcc zeroext i16 @ClampToQuantum(float noundef %189) #27
  %199 = xor i16 %198, -1
  store i16 %199, ptr %139, align 2, !tbaa !46
  br label %203

200:                                              ; preds = %183
  br i1 %137, label %203, label %201

201:                                              ; preds = %200
  %202 = call fastcc zeroext i16 @ClampToQuantum(float noundef %189) #27
  store i16 %202, ptr %138, align 2, !tbaa !47
  br label %203

203:                                              ; preds = %190, %192, %194, %183, %197, %196, %201, %200
  %204 = add nuw nsw i64 %143, 1
  %205 = icmp eq i64 %204, %119
  br i1 %205, label %206, label %142, !llvm.loop !71

206:                                              ; preds = %203, %123
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 1
  %208 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 1
  %209 = add nuw nsw i64 %125, 1
  %210 = icmp eq i64 %209, %115
  br i1 %210, label %211, label %123, !llvm.loop !72

211:                                              ; preds = %206, %112
  %212 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %89, ptr noundef %2) #28
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = load ptr, ptr %98, align 8, !tbaa !49
  %216 = icmp eq ptr %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = add nsw i64 %101, 1
  %219 = load i64, ptr %90, align 8, !tbaa !39
  %220 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i64 noundef %101, i64 noundef %219) #27
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, i32 0, i32 %214
  br label %223

223:                                              ; preds = %211, %217, %104, %99
  %224 = phi i32 [ 0, %99 ], [ 0, %104 ], [ %222, %217 ], [ %214, %211 ]
  %225 = phi i64 [ %101, %99 ], [ %101, %104 ], [ %218, %217 ], [ %101, %211 ]
  %226 = add nuw nsw i64 %100, 1
  %227 = load i64, ptr %90, align 8, !tbaa !39
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %99, label %229, !llvm.loop !73

229:                                              ; preds = %223
  %230 = icmp eq i32 %224, 0
  %231 = call ptr @DestroyCacheView(ptr noundef %89) #23
  %232 = call ptr @DestroyCacheView(ptr noundef %88) #23
  br i1 %230, label %233, label %238

233:                                              ; preds = %229
  %234 = call ptr @DestroyImage(ptr noundef nonnull %51) #23
  br label %238

235:                                              ; preds = %87
  %236 = call ptr @DestroyCacheView(ptr noundef %89) #23
  %237 = call ptr @DestroyCacheView(ptr noundef %88) #23
  br label %238

238:                                              ; preds = %235, %229, %233, %50, %56
  %239 = phi ptr [ null, %56 ], [ null, %50 ], [ %234, %233 ], [ %51, %229 ], [ %51, %235 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %4) #21
  ret ptr %239
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyFxInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #23
  store ptr %4, ptr %2, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call ptr @DestroyString(ptr noundef %6) #23
  store ptr %7, ptr %5, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = tail call ptr @DestroySplayTree(ptr noundef %9) #23
  store ptr %10, ptr %8, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = tail call ptr @DestroySplayTree(ptr noundef %12) #23
  store ptr %13, ptr %11, align 8, !tbaa !13
  %14 = load ptr, ptr %0, align 8, !tbaa !12
  %15 = tail call i64 @GetImageListLength(ptr noundef %14) #23
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %15, %17 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = load ptr, ptr %18, align 8, !tbaa !15
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = tail call ptr @DestroyCacheView(ptr noundef %24) #23
  %26 = load ptr, ptr %18, align 8, !tbaa !15
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  store ptr %25, ptr %27, align 8, !tbaa !16
  %28 = icmp ugt i64 %20, 1
  br i1 %28, label %19, label %29, !llvm.loop !74

29:                                               ; preds = %19, %1
  %30 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = tail call ptr @RelinquishMagickMemory(ptr noundef %31) #23
  store ptr %32, ptr %30, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = tail call ptr @DestroyRandomInfo(ptr noundef %34) #23
  store ptr %35, ptr %33, align 8, !tbaa !34
  %36 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #23
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FxEvaluateExpression(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @FxEvaluateChannelExpression(ptr noundef %0, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %1, ptr noundef %2) #27, !range !43
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FxEvaluateChannelExpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  store double 0.000000e+00, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %9, ptr noundef nonnull %7, ptr noundef %5) #27
  store double %10, ptr %4, align 8, !tbaa !66
  %11 = load i32, ptr %5, align 8, !tbaa !75
  %12 = icmp ne i32 %11, 410
  %13 = zext i1 %12 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FxPreprocessExpression(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  store ptr null, ptr %4, align 8, !tbaa !36
  %6 = tail call i32 @FxEvaluateChannelExpression(ptr noundef %0, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %1, ptr noundef %2) #27, !range !43
  store ptr %5, ptr %4, align 8, !tbaa !36
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #21
  store double 0.000000e+00, ptr %5, align 8, !tbaa !66
  %11 = load i32, ptr %6, align 8, !tbaa !75
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %811

13:                                               ; preds = %7
  %14 = tail call ptr @__ctype_b_loc() #24
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %24, %16 ], [ %4, %13 ]
  %18 = load i8, ptr %17, align 1, !tbaa !37
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i16, ptr %15, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !47
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  br i1 %23, label %25, label %16, !llvm.loop !76

25:                                               ; preds = %16
  %26 = icmp eq i8 %18, 0
  br i1 %26, label %811, label %27

27:                                               ; preds = %25
  store i8 0, ptr %9, align 16, !tbaa !37
  %28 = tail call fastcc ptr @FxOperatorPrecedence(ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  %29 = icmp eq ptr %28, null
  br i1 %29, label %224, label %30

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %17 to i64
  %33 = sub i64 %31, %32
  %34 = add i64 %33, 1
  %35 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %17, i64 noundef %34) #23
  %36 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %37 = load i8, ptr %28, align 1, !tbaa !37
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
  %40 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %39, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %41 = fptoui double %40 to i64
  %42 = xor i64 %41, -1
  %43 = uitofp i64 %42 to double
  store double %43, ptr %5, align 8, !tbaa !66
  br label %811

44:                                               ; preds = %30
  %45 = getelementptr inbounds i8, ptr %28, i64 1
  %46 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %45, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %46, ptr %5, align 8, !tbaa !66
  %47 = fcmp oeq double %46, 0.000000e+00
  %48 = select i1 %47, double 1.000000e+00, double 0.000000e+00
  br label %811

49:                                               ; preds = %30
  %50 = getelementptr inbounds i8, ptr %28, i64 1
  %51 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %50, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %52 = call double @pow(double noundef %36, double noundef %51) #23
  store double %52, ptr %5, align 8, !tbaa !66
  br label %811

53:                                               ; preds = %30, %30
  %54 = getelementptr inbounds i8, ptr %28, i64 1
  %55 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %54, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %55, ptr %5, align 8, !tbaa !66
  %56 = fmul double %36, %55
  br label %811

57:                                               ; preds = %30
  %58 = getelementptr inbounds i8, ptr %28, i64 1
  %59 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %58, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %59, ptr %5, align 8, !tbaa !66
  %60 = fcmp oeq double %59, 0.000000e+00
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, ptr %6, align 8, !tbaa !75
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %811

64:                                               ; preds = %61
  %65 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2176, i32 noundef 410, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull %17) #23
  br label %811

66:                                               ; preds = %57
  %67 = fdiv double %36, %59
  br label %811

68:                                               ; preds = %30
  %69 = getelementptr inbounds i8, ptr %28, i64 1
  %70 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %69, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %71 = fadd double %70, 5.000000e-01
  %72 = call double @llvm.floor.f64(double %71)
  %73 = call double @llvm.fabs.f64(double %72)
  store double %73, ptr %5, align 8, !tbaa !66
  %74 = fcmp oeq double %72, 0.000000e+00
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2188, i32 noundef 410, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull %17) #23
  br label %811

77:                                               ; preds = %68
  %78 = call double @fmod(double noundef %36, double noundef %73) #23
  br label %811

79:                                               ; preds = %30
  %80 = getelementptr inbounds i8, ptr %28, i64 1
  %81 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %80, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %81, ptr %5, align 8, !tbaa !66
  %82 = fadd double %36, %81
  br label %811

83:                                               ; preds = %30
  %84 = getelementptr inbounds i8, ptr %28, i64 1
  %85 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %84, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %85, ptr %5, align 8, !tbaa !66
  %86 = fsub double %36, %85
  br label %811

87:                                               ; preds = %30
  %88 = getelementptr inbounds i8, ptr %28, i64 1
  %89 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %88, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %90 = fadd double %36, 5.000000e-01
  %91 = fptoui double %90 to i64
  %92 = fadd double %89, 5.000000e-01
  %93 = fptoui double %92 to i64
  %94 = shl i64 %91, %93
  %95 = uitofp i64 %94 to double
  store double %95, ptr %5, align 8, !tbaa !66
  br label %811

96:                                               ; preds = %30
  %97 = getelementptr inbounds i8, ptr %28, i64 1
  %98 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %97, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %99 = fadd double %36, 5.000000e-01
  %100 = fptoui double %99 to i64
  %101 = fadd double %98, 5.000000e-01
  %102 = fptoui double %101 to i64
  %103 = lshr i64 %100, %102
  %104 = uitofp i64 %103 to double
  store double %104, ptr %5, align 8, !tbaa !66
  br label %811

105:                                              ; preds = %30
  %106 = getelementptr inbounds i8, ptr %28, i64 1
  %107 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %106, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %107, ptr %5, align 8, !tbaa !66
  %108 = fcmp olt double %36, %107
  %109 = select i1 %108, double 1.000000e+00, double 0.000000e+00
  br label %811

110:                                              ; preds = %30
  %111 = getelementptr inbounds i8, ptr %28, i64 1
  %112 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %111, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %112, ptr %5, align 8, !tbaa !66
  %113 = fcmp ole double %36, %112
  %114 = select i1 %113, double 1.000000e+00, double 0.000000e+00
  br label %811

115:                                              ; preds = %30
  %116 = getelementptr inbounds i8, ptr %28, i64 1
  %117 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %116, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %117, ptr %5, align 8, !tbaa !66
  %118 = fcmp ogt double %36, %117
  %119 = select i1 %118, double 1.000000e+00, double 0.000000e+00
  br label %811

120:                                              ; preds = %30
  %121 = getelementptr inbounds i8, ptr %28, i64 1
  %122 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %121, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %122, ptr %5, align 8, !tbaa !66
  %123 = fcmp oge double %36, %122
  %124 = select i1 %123, double 1.000000e+00, double 0.000000e+00
  br label %811

125:                                              ; preds = %30
  %126 = getelementptr inbounds i8, ptr %28, i64 1
  %127 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %126, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %127, ptr %5, align 8, !tbaa !66
  %128 = fsub double %36, %127
  %129 = call double @llvm.fabs.f64(double %128)
  %130 = fcmp olt double %129, 1.000000e-15
  %131 = select i1 %130, double 1.000000e-15, double 0.000000e+00
  br label %811

132:                                              ; preds = %30
  %133 = getelementptr inbounds i8, ptr %28, i64 1
  %134 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %133, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %134, ptr %5, align 8, !tbaa !66
  %135 = fsub double %36, %134
  %136 = call double @llvm.fabs.f64(double %135)
  %137 = fcmp oge double %136, 1.000000e-15
  %138 = select i1 %137, double 1.000000e+00, double 0.000000e+00
  br label %811

139:                                              ; preds = %30
  %140 = getelementptr inbounds i8, ptr %28, i64 1
  %141 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %140, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %142 = fadd double %36, 5.000000e-01
  %143 = fptoui double %142 to i64
  %144 = fadd double %141, 5.000000e-01
  %145 = fptoui double %144 to i64
  %146 = and i64 %145, %143
  %147 = uitofp i64 %146 to double
  store double %147, ptr %5, align 8, !tbaa !66
  br label %811

148:                                              ; preds = %30
  %149 = getelementptr inbounds i8, ptr %28, i64 1
  %150 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %149, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %151 = fadd double %36, 5.000000e-01
  %152 = fptoui double %151 to i64
  %153 = fadd double %150, 5.000000e-01
  %154 = fptoui double %153 to i64
  %155 = or i64 %154, %152
  %156 = uitofp i64 %155 to double
  store double %156, ptr %5, align 8, !tbaa !66
  br label %811

157:                                              ; preds = %30
  %158 = getelementptr inbounds i8, ptr %28, i64 1
  %159 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %158, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %160 = fcmp ogt double %36, 0.000000e+00
  %161 = fcmp ogt double %159, 0.000000e+00
  %162 = select i1 %160, i1 %161, i1 false
  %163 = select i1 %162, double 1.000000e+00, double 0.000000e+00
  store double %163, ptr %5, align 8, !tbaa !66
  br label %811

164:                                              ; preds = %30
  %165 = getelementptr inbounds i8, ptr %28, i64 1
  %166 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %165, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %167 = fcmp ogt double %36, 0.000000e+00
  %168 = fcmp ogt double %166, 0.000000e+00
  %169 = select i1 %167, i1 true, i1 %168
  %170 = select i1 %169, double 1.000000e+00, double 0.000000e+00
  store double %170, ptr %5, align 8, !tbaa !66
  br label %811

171:                                              ; preds = %30
  %172 = getelementptr inbounds i8, ptr %28, i64 1
  %173 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %172, i64 noundef 4096) #23
  store ptr %9, ptr %8, align 8, !tbaa !16
  %174 = call ptr @StringToken(ptr noundef nonnull @.str.55, ptr noundef nonnull %8) #23
  %175 = load ptr, ptr %8, align 8, !tbaa !16
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2280, i32 noundef 410, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #23
  br label %811

179:                                              ; preds = %171
  %180 = call double @llvm.fabs.f64(double %36)
  %181 = fcmp ult double %180, 1.000000e-15
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %174, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  br label %811

184:                                              ; preds = %179
  %185 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %175, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  br label %811

186:                                              ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #21
  br label %187

187:                                              ; preds = %187, %186
  %188 = phi ptr [ %9, %186 ], [ %196, %187 ]
  store ptr %188, ptr %8, align 8, !tbaa !16
  %189 = load ptr, ptr %14, align 8, !tbaa !16
  %190 = load i8, ptr %188, align 1, !tbaa !37
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds i16, ptr %189, i64 %191
  %193 = load i16, ptr %192, align 2, !tbaa !47
  %194 = and i16 %193, 1024
  %195 = icmp eq i16 %194, 0
  %196 = getelementptr inbounds i8, ptr %188, i64 1
  br i1 %195, label %197, label %187, !llvm.loop !77

197:                                              ; preds = %187
  %198 = icmp eq i8 %190, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %197
  %200 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2300, i32 noundef 410, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #23
  br label %213

201:                                              ; preds = %197
  call void @ClearMagickException(ptr noundef nonnull %6) #23
  %202 = getelementptr inbounds i8, ptr %28, i64 1
  %203 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %202, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %203, ptr %5, align 8, !tbaa !66
  %204 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %10, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %203) #23
  %205 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !14
  %207 = call i32 @DeleteNodeFromSplayTree(ptr noundef %206, ptr noundef nonnull %9) #23
  %208 = load ptr, ptr %205, align 8, !tbaa !14
  %209 = call ptr @ConstantString(ptr noundef nonnull %9) #23
  %210 = call ptr @ConstantString(ptr noundef nonnull %10) #23
  %211 = call i32 @AddValueToSplayTree(ptr noundef %208, ptr noundef %209, ptr noundef %210) #23
  %212 = load double, ptr %5, align 8, !tbaa !66
  br label %213

213:                                              ; preds = %201, %199
  %214 = phi double [ 0.000000e+00, %199 ], [ %212, %201 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #21
  br label %811

215:                                              ; preds = %30
  %216 = getelementptr inbounds i8, ptr %28, i64 1
  %217 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %216, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %217, ptr %5, align 8, !tbaa !66
  br label %811

218:                                              ; preds = %30
  %219 = getelementptr inbounds i8, ptr %28, i64 1
  %220 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %219, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  store double %220, ptr %5, align 8, !tbaa !66
  br label %811

221:                                              ; preds = %30
  %222 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %28, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %223 = fmul double %36, %222
  br label %811

224:                                              ; preds = %27
  %225 = load i8, ptr %17, align 1, !tbaa !37
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
  %227 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %24, i64 noundef 4096) #23
  %228 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #29
  %229 = add i64 %228, -1
  %230 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 %229
  store i8 0, ptr %230, align 1, !tbaa !37
  %231 = call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  br label %811

232:                                              ; preds = %224
  %233 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  br label %811

234:                                              ; preds = %224
  %235 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %236 = fneg double %235
  br label %811

237:                                              ; preds = %224
  %238 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %239 = fadd double %238, 5.000000e-01
  %240 = fptoui double %239 to i64
  %241 = xor i64 %240, -1
  %242 = uitofp i64 %241 to double
  br label %811

243:                                              ; preds = %224, %224
  %244 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.59, i64 noundef 3) #23
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = getelementptr inbounds i8, ptr %17, i64 3
  %248 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %247, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %249 = tail call double @llvm.fabs.f64(double %248)
  br label %811

250:                                              ; preds = %243
  %251 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.60, i64 noundef 5) #23
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = getelementptr inbounds i8, ptr %17, i64 5
  %255 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %254, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %256 = tail call double @acosh(double noundef %255) #23
  br label %811

257:                                              ; preds = %250
  %258 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.61, i64 noundef 4) #23
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = getelementptr inbounds i8, ptr %17, i64 4
  %262 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %261, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %263 = tail call double @acos(double noundef %262) #23
  br label %811

264:                                              ; preds = %257
  %265 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.62, i64 noundef 4) #23
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %264
  %268 = getelementptr inbounds i8, ptr %17, i64 4
  %269 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %268, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %270 = fcmp oeq double %269, 0.000000e+00
  br i1 %270, label %811, label %271

271:                                              ; preds = %267
  %272 = fmul double %269, 0x400921FB54442D18
  %273 = tail call double @j1(double noundef %272) #23
  %274 = fmul double %273, 2.000000e+00
  %275 = fdiv double %274, %272
  %276 = fmul double %275, %275
  br label %811

277:                                              ; preds = %264
  %278 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.63, i64 noundef 5) #23
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %17, i64 5
  %282 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %281, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %283 = tail call double @asinh(double noundef %282) #23
  br label %811

284:                                              ; preds = %277
  %285 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.64, i64 noundef 4) #23
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = getelementptr inbounds i8, ptr %17, i64 4
  %289 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %288, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %290 = tail call double @asin(double noundef %289) #23
  br label %811

291:                                              ; preds = %284
  %292 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.65, i64 noundef 3) #23
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, ptr %17, i64 3
  %296 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %295, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %297 = fptosi double %296 to i64
  %298 = and i64 %297, 1
  %299 = icmp eq i64 %298, 0
  %300 = select i1 %299, double 1.000000e+00, double -1.000000e+00
  br label %811

301:                                              ; preds = %291
  %302 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.66, i64 noundef 5) #23
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %17, i64 5
  %306 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %305, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %307 = load double, ptr %5, align 8, !tbaa !66
  %308 = tail call double @atan2(double noundef %306, double noundef %307) #23
  br label %811

309:                                              ; preds = %301
  %310 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.67, i64 noundef 5) #23
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = getelementptr inbounds i8, ptr %17, i64 5
  %314 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %313, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %315 = tail call double @atanh(double noundef %314) #23
  br label %811

316:                                              ; preds = %309
  %317 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.68, i64 noundef 4) #23
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = getelementptr inbounds i8, ptr %17, i64 4
  %321 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %320, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %322 = tail call double @atan(double noundef %321) #23
  br label %811

323:                                              ; preds = %316
  %324 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.69) #23
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %805

326:                                              ; preds = %323
  %327 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

328:                                              ; preds = %224, %224
  %329 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.70) #23
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %805

331:                                              ; preds = %328
  %332 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

333:                                              ; preds = %224, %224
  %334 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.71, i64 noundef 4) #23
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = getelementptr inbounds i8, ptr %17, i64 4
  %338 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %337, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %339 = tail call double @llvm.ceil.f64(double %338)
  br label %811

340:                                              ; preds = %333
  %341 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.72, i64 noundef 4) #23
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = getelementptr inbounds i8, ptr %17, i64 4
  %345 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %344, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %346 = tail call double @cosh(double noundef %345) #23
  br label %811

347:                                              ; preds = %340
  %348 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.73, i64 noundef 3) #23
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = getelementptr inbounds i8, ptr %17, i64 3
  %352 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %351, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %353 = tail call double @cos(double noundef %352) #23
  br label %811

354:                                              ; preds = %347
  %355 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.74) #23
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %805

357:                                              ; preds = %354
  %358 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

359:                                              ; preds = %224, %224
  %360 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.75, i64 noundef 5) #23
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %402

362:                                              ; preds = %359
  %363 = getelementptr inbounds i8, ptr %17, i64 5
  %364 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %363, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %365 = load ptr, ptr %0, align 8, !tbaa !12
  %366 = getelementptr inbounds %struct._Image, ptr %365, i64 0, i32 1
  %367 = load i32, ptr %366, align 4, !tbaa !42
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
  %383 = phi ptr [ @.str.81, %374 ], [ @.str.80, %373 ], [ @.str.79, %372 ], [ @.str.78, %371 ], [ @.str.77, %370 ], [ @.str.76, %369 ], [ %381, %378 ], [ @.str.81, %375 ]
  %384 = getelementptr inbounds i8, ptr %17, i64 6
  %385 = call i64 @CopyMagickString(ptr noundef nonnull %9, ptr noundef nonnull %384, i64 noundef 4096) #23
  %386 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #29
  %387 = icmp ugt i64 %386, 1
  br i1 %387, label %388, label %391

388:                                              ; preds = %382
  %389 = add i64 %386, -1
  %390 = getelementptr inbounds [4096 x i8], ptr %9, i64 0, i64 %389
  store i8 0, ptr %390, align 1, !tbaa !37
  br label %391

391:                                              ; preds = %388, %382
  %392 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 2
  %393 = load ptr, ptr %392, align 8, !tbaa !36
  %394 = icmp eq ptr %393, null
  br i1 %394, label %811, label %395

395:                                              ; preds = %391
  %396 = load ptr, ptr %0, align 8, !tbaa !12
  %397 = getelementptr inbounds %struct._Image, ptr %396, i64 0, i32 53
  %398 = sitofp i64 %2 to double
  %399 = sitofp i64 %3 to double
  %400 = call i32 @GetMagickPrecision() #23
  %401 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %393, ptr noundef nonnull @.str.85, ptr noundef nonnull %397, double noundef %398, double noundef %399, ptr noundef nonnull %383, ptr noundef nonnull %9, i32 noundef %400, double noundef %364) #23
  br label %811

402:                                              ; preds = %359
  %403 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.86, i64 noundef 3) #23
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %805

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %17, i64 3
  %407 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %406, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %408 = load double, ptr %5, align 8, !tbaa !66
  %409 = fadd double %407, -1.000000e+00
  %410 = tail call double @llvm.fmuladd.f64(double %408, double %409, double 1.000000e+00)
  %411 = fdiv double %407, %410
  br label %811

412:                                              ; preds = %224, %224
  %413 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.87) #23
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %811, label %415

415:                                              ; preds = %412
  %416 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.88, i64 noundef 3) #23
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %415
  %419 = getelementptr inbounds i8, ptr %17, i64 3
  %420 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %419, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %421 = tail call double @exp(double noundef %420) #23
  br label %811

422:                                              ; preds = %415
  %423 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.89) #23
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %811, label %805

425:                                              ; preds = %224, %224
  %426 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.90, i64 noundef 5) #23
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %805

428:                                              ; preds = %425
  %429 = getelementptr inbounds i8, ptr %17, i64 5
  %430 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %429, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %431 = tail call double @llvm.floor.f64(double %430)
  br label %811

432:                                              ; preds = %224, %224
  %433 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.91, i64 noundef 5) #23
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %443

435:                                              ; preds = %432
  %436 = getelementptr inbounds i8, ptr %17, i64 5
  %437 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %436, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %438 = fneg double %437
  %439 = fmul double %437, %438
  %440 = fmul double %439, 5.000000e-01
  %441 = tail call double @exp(double noundef %440) #23
  %442 = fdiv double %441, 0x40040D931FF62705
  br label %811

443:                                              ; preds = %432
  %444 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.92, i64 noundef 3) #23
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %456

446:                                              ; preds = %443
  %447 = getelementptr inbounds i8, ptr %17, i64 3
  %448 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %447, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %449 = fadd double %448, 5.000000e-01
  %450 = fptosi double %449 to i64
  %451 = load double, ptr %5, align 8, !tbaa !66
  %452 = fadd double %451, 5.000000e-01
  %453 = fptosi double %452 to i64
  %454 = tail call fastcc i64 @FxGCD(i64 noundef %450, i64 noundef %453) #27
  %455 = sitofp i64 %454 to double
  br label %811

456:                                              ; preds = %443
  %457 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.93) #23
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %805

459:                                              ; preds = %456
  %460 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

461:                                              ; preds = %224, %224
  %462 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.94) #23
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

466:                                              ; preds = %461
  %467 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.95) #23
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %466
  %470 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

471:                                              ; preds = %466
  %472 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.96, i64 noundef 5) #23
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %805

474:                                              ; preds = %471
  %475 = getelementptr inbounds i8, ptr %17, i64 5
  %476 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %475, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %477 = load double, ptr %5, align 8, !tbaa !66
  %478 = tail call double @hypot(double noundef %476, double noundef %477) #23
  br label %811

479:                                              ; preds = %224, %224
  %480 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.97) #23
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %805

482:                                              ; preds = %479
  %483 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

484:                                              ; preds = %224, %224
  %485 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.98) #23
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %484
  %488 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

489:                                              ; preds = %484
  %490 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.99, i64 noundef 3) #23
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %496

492:                                              ; preds = %489
  %493 = getelementptr inbounds i8, ptr %17, i64 3
  %494 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %493, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %495 = tail call double @llvm.floor.f64(double %494)
  br label %811

496:                                              ; preds = %489
  %497 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.100, i64 noundef 5) #23
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %496
  %500 = getelementptr inbounds i8, ptr %17, i64 5
  %501 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %500, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %502 = fcmp uno double %501, 0.000000e+00
  %503 = uitofp i1 %502 to double
  br label %811

504:                                              ; preds = %496
  %505 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.101) #23
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %805

507:                                              ; preds = %504
  %508 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

509:                                              ; preds = %224, %224
  %510 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.102) #23
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %509
  %513 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

514:                                              ; preds = %509
  %515 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.103, i64 noundef 2) #23
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %17, i64 2
  %519 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %518, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %520 = tail call double @j0(double noundef %519) #23
  br label %811

521:                                              ; preds = %514
  %522 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.104, i64 noundef 2) #23
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %521
  %525 = getelementptr inbounds i8, ptr %17, i64 2
  %526 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %525, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %527 = tail call double @j1(double noundef %526) #23
  br label %811

528:                                              ; preds = %521
  %529 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.105, i64 noundef 4) #23
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %805

531:                                              ; preds = %528
  %532 = getelementptr inbounds i8, ptr %17, i64 4
  %533 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %532, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %534 = fcmp oeq double %533, 0.000000e+00
  br i1 %534, label %811, label %535

535:                                              ; preds = %531
  %536 = fmul double %533, 0x400921FB54442D18
  %537 = tail call double @j1(double noundef %536) #23
  %538 = fmul double %537, 2.000000e+00
  %539 = fdiv double %538, %536
  br label %811

540:                                              ; preds = %224, %224
  %541 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.106, i64 noundef 2) #23
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %547

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %17, i64 2
  %545 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %544, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %546 = tail call double @log(double noundef %545) #23
  br label %811

547:                                              ; preds = %540
  %548 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.107, i64 noundef 6) #23
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %555

550:                                              ; preds = %547
  %551 = getelementptr inbounds i8, ptr %17, i64 6
  %552 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %551, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %553 = tail call double @log10(double noundef %552) #23
  %554 = fdiv double %553, 0x3FD34413509F79FF
  br label %811

555:                                              ; preds = %547
  %556 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.108, i64 noundef 3) #23
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %562

558:                                              ; preds = %555
  %559 = getelementptr inbounds i8, ptr %17, i64 3
  %560 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %559, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %561 = tail call double @log10(double noundef %560) #23
  br label %811

562:                                              ; preds = %555
  %563 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.109) #23
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %805

565:                                              ; preds = %562
  %566 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

567:                                              ; preds = %224, %224
  %568 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.110) #23
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %811, label %570

570:                                              ; preds = %567
  %571 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.111, i64 noundef 6) #23
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %805, label %573

573:                                              ; preds = %570
  %574 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.112, i64 noundef 3) #23
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %582

576:                                              ; preds = %573
  %577 = getelementptr inbounds i8, ptr %17, i64 3
  %578 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %577, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %579 = load double, ptr %5, align 8, !tbaa !66
  %580 = fcmp ogt double %578, %579
  %581 = select i1 %580, double %578, double %579
  br label %811

582:                                              ; preds = %573
  %583 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.113, i64 noundef 6) #23
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %805, label %585

585:                                              ; preds = %582
  %586 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.114, i64 noundef 3) #23
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %594

588:                                              ; preds = %585
  %589 = getelementptr inbounds i8, ptr %17, i64 3
  %590 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %589, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %591 = load double, ptr %5, align 8, !tbaa !66
  %592 = fcmp olt double %590, %591
  %593 = select i1 %592, double %590, double %591
  br label %811

594:                                              ; preds = %585
  %595 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.115, i64 noundef 3) #23
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %605

597:                                              ; preds = %594
  %598 = getelementptr inbounds i8, ptr %17, i64 3
  %599 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %598, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %600 = load double, ptr %5, align 8, !tbaa !66
  %601 = fdiv double %599, %600
  %602 = tail call double @llvm.floor.f64(double %601)
  %603 = fneg double %602
  %604 = tail call double @llvm.fmuladd.f64(double %603, double %600, double %599)
  br label %811

605:                                              ; preds = %594
  %606 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.116) #23
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %805

608:                                              ; preds = %605
  %609 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

610:                                              ; preds = %224, %224
  %611 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.117, i64 noundef 3) #23
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %618

613:                                              ; preds = %610
  %614 = getelementptr inbounds i8, ptr %17, i64 3
  %615 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %614, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %616 = fcmp olt double %615, 1.000000e-15
  %617 = uitofp i1 %616 to double
  br label %811

618:                                              ; preds = %610
  %619 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.118) #23
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %805

621:                                              ; preds = %618
  %622 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

623:                                              ; preds = %224, %224
  %624 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.119) #23
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %811, label %626

626:                                              ; preds = %623
  %627 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.120) #23
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %805

629:                                              ; preds = %626
  %630 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

631:                                              ; preds = %224, %224
  %632 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.121) #23
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %811, label %634

634:                                              ; preds = %631
  %635 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.122) #23
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %811, label %637

637:                                              ; preds = %634
  %638 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.123, i64 noundef 3) #23
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %645

640:                                              ; preds = %637
  %641 = getelementptr inbounds i8, ptr %17, i64 3
  %642 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %641, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %643 = load double, ptr %5, align 8, !tbaa !66
  %644 = tail call double @pow(double noundef %642, double noundef %643) #23
  br label %811

645:                                              ; preds = %637
  %646 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.124) #23
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %805

648:                                              ; preds = %645
  %649 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

650:                                              ; preds = %224, %224
  %651 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.125) #23
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %811, label %653

653:                                              ; preds = %650
  %654 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.126) #23
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %811, label %805

656:                                              ; preds = %224, %224
  %657 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.127, i64 noundef 4) #23
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 6
  %661 = load ptr, ptr %660, align 8, !tbaa !34
  %662 = tail call double @GetPseudoRandomValue(ptr noundef %661) #23
  br label %811

663:                                              ; preds = %656
  %664 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.128, i64 noundef 5) #23
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %663
  %667 = getelementptr inbounds i8, ptr %17, i64 5
  %668 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %667, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %669 = fadd double %668, 5.000000e-01
  %670 = tail call double @llvm.floor.f64(double %669)
  br label %811

671:                                              ; preds = %663
  %672 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.129) #23
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %805

674:                                              ; preds = %671
  %675 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

676:                                              ; preds = %224, %224
  %677 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.130) #23
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %681

679:                                              ; preds = %676
  %680 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

681:                                              ; preds = %676
  %682 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.131, i64 noundef 4) #23
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %689

684:                                              ; preds = %681
  %685 = getelementptr inbounds i8, ptr %17, i64 4
  %686 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %685, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %687 = fcmp olt double %686, 0.000000e+00
  %688 = select i1 %687, double -1.000000e+00, double 1.000000e+00
  br label %811

689:                                              ; preds = %681
  %690 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.132, i64 noundef 4) #23
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %700

692:                                              ; preds = %689
  %693 = getelementptr inbounds i8, ptr %17, i64 4
  %694 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %693, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %695 = fcmp oeq double %694, 0.000000e+00
  br i1 %695, label %811, label %696

696:                                              ; preds = %692
  %697 = fmul double %694, 0x400921FB54442D18
  %698 = tail call double @sin(double noundef %697) #23
  %699 = fdiv double %698, %697
  br label %811

700:                                              ; preds = %689
  %701 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.133, i64 noundef 4) #23
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %707

703:                                              ; preds = %700
  %704 = getelementptr inbounds i8, ptr %17, i64 4
  %705 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %704, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %706 = tail call double @sinh(double noundef %705) #23
  br label %811

707:                                              ; preds = %700
  %708 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.134, i64 noundef 3) #23
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %710, label %714

710:                                              ; preds = %707
  %711 = getelementptr inbounds i8, ptr %17, i64 3
  %712 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %711, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %713 = tail call double @sin(double noundef %712) #23
  br label %811

714:                                              ; preds = %707
  %715 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.135, i64 noundef 4) #23
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %721

717:                                              ; preds = %714
  %718 = getelementptr inbounds i8, ptr %17, i64 4
  %719 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %718, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %720 = tail call double @sqrt(double noundef %719) #23
  br label %811

721:                                              ; preds = %714
  %722 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.136, i64 noundef 6) #23
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %731

724:                                              ; preds = %721
  %725 = getelementptr inbounds i8, ptr %17, i64 6
  %726 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %725, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %727 = fneg double %726
  %728 = tail call double @exp(double noundef %727) #23
  %729 = fadd double %728, 1.000000e+00
  %730 = fdiv double 1.000000e+00, %729
  br label %811

731:                                              ; preds = %721
  %732 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.137) #23
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %805

734:                                              ; preds = %731
  %735 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

736:                                              ; preds = %224, %224
  %737 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.138, i64 noundef 4) #23
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %743

739:                                              ; preds = %736
  %740 = getelementptr inbounds i8, ptr %17, i64 4
  %741 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %740, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %742 = tail call double @tanh(double noundef %741) #23
  br label %811

743:                                              ; preds = %736
  %744 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.139, i64 noundef 3) #23
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %750

746:                                              ; preds = %743
  %747 = getelementptr inbounds i8, ptr %17, i64 3
  %748 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %747, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %749 = tail call double @tan(double noundef %748) #23
  br label %811

750:                                              ; preds = %743
  %751 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.140) #23
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %811, label %753

753:                                              ; preds = %750
  %754 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.141, i64 noundef 5) #23
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %764

756:                                              ; preds = %753
  %757 = getelementptr inbounds i8, ptr %17, i64 5
  %758 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %757, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %759 = fcmp ult double %758, 0.000000e+00
  br i1 %759, label %762, label %760

760:                                              ; preds = %756
  %761 = tail call double @llvm.floor.f64(double %758)
  br label %811

762:                                              ; preds = %756
  %763 = tail call double @llvm.ceil.f64(double %758)
  br label %811

764:                                              ; preds = %753
  %765 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.142) #23
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %805

767:                                              ; preds = %764
  %768 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

769:                                              ; preds = %224, %224
  %770 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.143) #23
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %805

772:                                              ; preds = %769
  %773 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

774:                                              ; preds = %224, %224
  %775 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.144) #23
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %805

777:                                              ; preds = %774
  %778 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

779:                                              ; preds = %224, %224
  %780 = tail call i32 @LocaleNCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.145, i64 noundef 5) #23
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %790

782:                                              ; preds = %779
  %783 = getelementptr inbounds i8, ptr %17, i64 5
  br label %784

784:                                              ; preds = %782, %784
  %785 = tail call fastcc double @FxEvaluateSubexpression(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %783, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %786 = tail call double @llvm.fabs.f64(double %785)
  %787 = fcmp ult double %786, 1.000000e-15
  br i1 %787, label %788, label %784, !llvm.loop !78

788:                                              ; preds = %784
  %789 = load double, ptr %5, align 8, !tbaa !66
  br label %811

790:                                              ; preds = %779
  %791 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.146) #23
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %805

793:                                              ; preds = %790
  %794 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

795:                                              ; preds = %224, %224
  %796 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.147) #23
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %805

798:                                              ; preds = %795
  %799 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

800:                                              ; preds = %224, %224
  %801 = tail call i32 @LocaleCompare(ptr noundef nonnull %17, ptr noundef nonnull @.str.148) #23
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %805

803:                                              ; preds = %800
  %804 = tail call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

805:                                              ; preds = %224, %800, %795, %790, %774, %769, %764, %731, %671, %653, %645, %626, %618, %605, %582, %570, %562, %528, %504, %479, %471, %456, %425, %422, %402, %354, %328, %323
  store ptr %17, ptr %8, align 8, !tbaa !16
  %806 = call double @InterpretSiPrefixValue(ptr noundef nonnull %17, ptr noundef nonnull %8) #23
  %807 = load ptr, ptr %8, align 8, !tbaa !16
  %808 = icmp eq ptr %807, %17
  br i1 %808, label %809, label %811

809:                                              ; preds = %805
  %810 = call fastcc double @FxGetSymbol(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %6) #27
  br label %811

811:                                              ; preds = %805, %750, %692, %653, %650, %634, %631, %623, %567, %531, %422, %412, %391, %395, %267, %177, %184, %182, %61, %64, %25, %7, %809, %803, %798, %793, %788, %777, %772, %767, %762, %760, %746, %739, %734, %724, %717, %710, %703, %696, %684, %679, %674, %666, %659, %648, %640, %629, %621, %613, %608, %597, %588, %576, %565, %558, %550, %543, %535, %524, %517, %512, %507, %499, %492, %487, %482, %474, %469, %464, %459, %446, %435, %428, %418, %405, %357, %350, %343, %336, %331, %326, %319, %312, %304, %294, %287, %280, %271, %260, %253, %246, %237, %234, %232, %226, %221, %218, %215, %213, %164, %157, %148, %139, %132, %125, %120, %115, %110, %105, %96, %87, %83, %79, %77, %75, %66, %53, %49, %44, %38
  %812 = phi double [ %223, %221 ], [ %220, %218 ], [ %36, %215 ], [ %214, %213 ], [ %170, %164 ], [ %163, %157 ], [ %156, %148 ], [ %147, %139 ], [ %138, %132 ], [ %131, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %110 ], [ %109, %105 ], [ %104, %96 ], [ %95, %87 ], [ %86, %83 ], [ %82, %79 ], [ 0.000000e+00, %75 ], [ %78, %77 ], [ %67, %66 ], [ %56, %53 ], [ %52, %49 ], [ %48, %44 ], [ %43, %38 ], [ %231, %226 ], [ %810, %809 ], [ %804, %803 ], [ %799, %798 ], [ %789, %788 ], [ %794, %793 ], [ %778, %777 ], [ %773, %772 ], [ %742, %739 ], [ %749, %746 ], [ %761, %760 ], [ %763, %762 ], [ %768, %767 ], [ %680, %679 ], [ %688, %684 ], [ %699, %696 ], [ %706, %703 ], [ %713, %710 ], [ %720, %717 ], [ %730, %724 ], [ %735, %734 ], [ %662, %659 ], [ %670, %666 ], [ %675, %674 ], [ %644, %640 ], [ %649, %648 ], [ %630, %629 ], [ %617, %613 ], [ %622, %621 ], [ %581, %576 ], [ %593, %588 ], [ %604, %597 ], [ %609, %608 ], [ %546, %543 ], [ %554, %550 ], [ %561, %558 ], [ %566, %565 ], [ %513, %512 ], [ %520, %517 ], [ %527, %524 ], [ %539, %535 ], [ %488, %487 ], [ %495, %492 ], [ %503, %499 ], [ %508, %507 ], [ %483, %482 ], [ %465, %464 ], [ %470, %469 ], [ %478, %474 ], [ %442, %435 ], [ %455, %446 ], [ %460, %459 ], [ %431, %428 ], [ %421, %418 ], [ %411, %405 ], [ %339, %336 ], [ %346, %343 ], [ %353, %350 ], [ %358, %357 ], [ %332, %331 ], [ %249, %246 ], [ %256, %253 ], [ %263, %260 ], [ %276, %271 ], [ %283, %280 ], [ %290, %287 ], [ %300, %294 ], [ %308, %304 ], [ %315, %312 ], [ %322, %319 ], [ %327, %326 ], [ %242, %237 ], [ %236, %234 ], [ %233, %232 ], [ 0.000000e+00, %7 ], [ 0.000000e+00, %25 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %61 ], [ 0.000000e+00, %177 ], [ %183, %182 ], [ %185, %184 ], [ 1.000000e+00, %267 ], [ 0.000000e+00, %395 ], [ 0.000000e+00, %391 ], [ 1.000000e-15, %412 ], [ 0x4005BF0A8B145769, %422 ], [ 1.000000e+00, %531 ], [ 6.553500e+04, %567 ], [ 1.000000e+00, %623 ], [ 0x3FF9E3779B97F4A8, %631 ], [ 0x400921FB54442D18, %634 ], [ 6.553500e+04, %650 ], [ 0x3EF0001000100010, %653 ], [ 1.000000e+00, %692 ], [ 0.000000e+00, %750 ], [ %806, %805 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  ret double %812
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FxImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @FxImageChannel(ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2) #27
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FxImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3066, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #23
  br label %12

12:                                               ; preds = %9, %4
  %13 = tail call fastcc ptr @AcquireFxThreadSet(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #27
  %14 = icmp eq ptr %13, null
  br i1 %14, label %149, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @DestroyFxThreadSet(ptr noundef nonnull %13) #27
  br label %149

20:                                               ; preds = %15
  %21 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %16, i32 noundef 1) #23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %24) #23
  %25 = tail call fastcc ptr @DestroyFxThreadSet(ptr noundef nonnull %13) #27
  %26 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #23
  br label %149

27:                                               ; preds = %20
  %28 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %16, ptr noundef %3) #23
  %29 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !39
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %146

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 7
  %34 = and i32 %1, 1
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %1, 2
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %1, 4
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %1, 8
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %43 = and i32 %1, 32
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 1
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %48

48:                                               ; preds = %32, %134
  %49 = phi i64 [ 0, %32 ], [ %137, %134 ]
  %50 = phi i64 [ 0, %32 ], [ %136, %134 ]
  %51 = phi i32 [ 1, %32 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %134, label %53

53:                                               ; preds = %48
  %54 = load i64, ptr %33, align 8, !tbaa !40
  %55 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %28, i64 noundef 0, i64 noundef %49, i64 noundef %54, i64 noundef 1, ptr noundef %3) #28
  %56 = icmp eq ptr %55, null
  br i1 %56, label %134, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %28) #23
  store double 0.000000e+00, ptr %5, align 8, !tbaa !66
  %59 = load i64, ptr %33, align 8, !tbaa !40
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %122

61:                                               ; preds = %57
  %62 = icmp eq ptr %58, null
  br label %63

63:                                               ; preds = %61, %117
  %64 = phi ptr [ %55, %61 ], [ %118, %117 ]
  %65 = phi i64 [ 0, %61 ], [ %119, %117 ]
  br i1 %35, label %74, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %13, align 8, !tbaa !16
  %68 = call i32 @FxEvaluateChannelExpression(ptr noundef %67, i32 noundef 1, i64 noundef %65, i64 noundef %49, ptr noundef nonnull %5, ptr noundef %3) #27, !range !43
  %69 = load double, ptr %5, align 8, !tbaa !66
  %70 = fmul double %69, 6.553500e+04
  %71 = fptrunc double %70 to float
  %72 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %71) #27
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  store i16 %72, ptr %73, align 2, !tbaa !41
  br label %74

74:                                               ; preds = %66, %63
  br i1 %37, label %83, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %13, align 8, !tbaa !16
  %77 = call i32 @FxEvaluateChannelExpression(ptr noundef %76, i32 noundef 2, i64 noundef %65, i64 noundef %49, ptr noundef nonnull %5, ptr noundef %3) #27, !range !43
  %78 = load double, ptr %5, align 8, !tbaa !66
  %79 = fmul double %78, 6.553500e+04
  %80 = fptrunc double %79 to float
  %81 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %80) #27
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 1
  store i16 %81, ptr %82, align 2, !tbaa !44
  br label %83

83:                                               ; preds = %75, %74
  br i1 %39, label %91, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %13, align 8, !tbaa !16
  %86 = call i32 @FxEvaluateChannelExpression(ptr noundef %85, i32 noundef 4, i64 noundef %65, i64 noundef %49, ptr noundef nonnull %5, ptr noundef %3) #27, !range !43
  %87 = load double, ptr %5, align 8, !tbaa !66
  %88 = fmul double %87, 6.553500e+04
  %89 = fptrunc double %88 to float
  %90 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %89) #27
  store i16 %90, ptr %64, align 2, !tbaa !45
  br label %91

91:                                               ; preds = %84, %83
  br i1 %41, label %104, label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr %13, align 8, !tbaa !16
  %94 = call i32 @FxEvaluateChannelExpression(ptr noundef %93, i32 noundef 8, i64 noundef %65, i64 noundef %49, ptr noundef nonnull %5, ptr noundef %3) #27, !range !43
  %95 = load i32, ptr %42, align 8, !tbaa !57
  %96 = icmp eq i32 %95, 0
  %97 = load double, ptr %5, align 8, !tbaa !66
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 3
  %99 = fmul double %97, 6.553500e+04
  %100 = tail call double @llvm.fmuladd.f64(double %97, double -6.553500e+04, double 6.553500e+04)
  %101 = select i1 %96, double %99, double %100
  %102 = fptrunc double %101 to float
  %103 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %102) #27
  store i16 %103, ptr %98, align 2, !tbaa !46
  br label %104

104:                                              ; preds = %92, %91
  br i1 %44, label %117, label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %45, align 4, !tbaa !42
  %107 = icmp eq i32 %106, 12
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load ptr, ptr %13, align 8, !tbaa !16
  %110 = call i32 @FxEvaluateChannelExpression(ptr noundef %109, i32 noundef 32, i64 noundef %65, i64 noundef %49, ptr noundef nonnull %5, ptr noundef %3) #27, !range !43
  br i1 %62, label %117, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds i16, ptr %58, i64 %65
  %113 = load double, ptr %5, align 8, !tbaa !66
  %114 = fmul double %113, 6.553500e+04
  %115 = fptrunc double %114 to float
  %116 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %115) #27
  store i16 %116, ptr %112, align 2, !tbaa !47
  br label %117

117:                                              ; preds = %108, %111, %105, %104
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %119 = add nuw nsw i64 %65, 1
  %120 = load i64, ptr %33, align 8, !tbaa !40
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %63, label %122, !llvm.loop !79

122:                                              ; preds = %117, %57
  %123 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %28, ptr noundef %3) #28
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load ptr, ptr %46, align 8, !tbaa !49
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = add nsw i64 %50, 1
  %130 = load i64, ptr %47, align 8, !tbaa !39
  %131 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i64 noundef %50, i64 noundef %130) #27
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 0, i32 %125
  br label %134

134:                                              ; preds = %122, %128, %53, %48
  %135 = phi i32 [ 0, %48 ], [ 0, %53 ], [ %133, %128 ], [ %125, %122 ]
  %136 = phi i64 [ %50, %48 ], [ %50, %53 ], [ %129, %128 ], [ %50, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  %137 = add nuw nsw i64 %49, 1
  %138 = load i64, ptr %29, align 8, !tbaa !39
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %48, label %140, !llvm.loop !80

140:                                              ; preds = %134
  %141 = icmp eq i32 %135, 0
  %142 = tail call ptr @DestroyCacheView(ptr noundef %28) #23
  %143 = tail call fastcc ptr @DestroyFxThreadSet(ptr noundef nonnull %13) #27
  br i1 %141, label %144, label %149

144:                                              ; preds = %140
  %145 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #23
  br label %149

146:                                              ; preds = %27
  %147 = tail call ptr @DestroyCacheView(ptr noundef %28) #23
  %148 = tail call fastcc ptr @DestroyFxThreadSet(ptr noundef nonnull %13) #27
  br label %149

149:                                              ; preds = %146, %140, %144, %12, %23, %18
  %150 = phi ptr [ null, %18 ], [ null, %23 ], [ null, %12 ], [ %145, %144 ], [ %16, %140 ], [ %16, %146 ]
  ret ptr %150
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireFxThreadSet(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %6 = tail call ptr @AcquireQuantumMemory(i64 noundef %5, i64 noundef 8) #26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3003, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #23
  br label %38

11:                                               ; preds = %3
  %12 = shl i64 %5, 3
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef %12) #23
  %14 = load i8, ptr %1, align 1, !tbaa !37
  %15 = icmp eq i8 %14, 64
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @ConstantString(ptr noundef nonnull %1) #23
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  %20 = tail call ptr @FileToString(ptr noundef nonnull %19, i64 noundef -1, ptr noundef %2) #23
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %17, %16 ], [ %20, %18 ]
  %23 = icmp sgt i64 %5, 0
  br i1 %23, label %27, label %36

24:                                               ; preds = %27
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %5
  br i1 %26, label %36, label %27, !llvm.loop !81

27:                                               ; preds = %21, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %21 ]
  %29 = tail call ptr @AcquireFxInfo(ptr noundef %0, ptr noundef %22) #27
  %30 = getelementptr inbounds ptr, ptr %6, i64 %28
  store ptr %29, ptr %30, align 8, !tbaa !16
  %31 = call i32 @FxPreprocessExpression(ptr noundef %29, ptr noundef nonnull %4, ptr noundef %2) #27, !range !43
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %24

33:                                               ; preds = %27
  %34 = tail call ptr @DestroyString(ptr noundef %22) #23
  %35 = tail call fastcc ptr @DestroyFxThreadSet(ptr noundef nonnull %6) #27
  br label %38

36:                                               ; preds = %24, %21
  %37 = tail call ptr @DestroyString(ptr noundef %22) #23
  br label %38

38:                                               ; preds = %33, %36, %8
  %39 = phi ptr [ null, %8 ], [ %35, %33 ], [ %6, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyFxThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyFxInfo(ptr noundef nonnull %7) #27
  store ptr %10, ptr %6, align 8, !tbaa !16
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #23
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !82

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #23
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ImplodeImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3254, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #23
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %135, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %13, i32 noundef 1) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %19) #23
  %20 = tail call ptr @DestroyImage(ptr noundef nonnull %13) #23
  br label %135

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 12, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !83
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 6
  store i32 1, ptr %26, align 8, !tbaa !57
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !40
  %30 = uitofp i64 %29 to double
  %31 = fmul double %30, 5.000000e-01
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !39
  %34 = uitofp i64 %33 to double
  %35 = fmul double %34, 5.000000e-01
  %36 = icmp ugt i64 %29, %33
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = fdiv double %30, %34
  br label %43

39:                                               ; preds = %27
  %40 = icmp ult i64 %29, %33
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = fdiv double %34, %30
  br label %43

43:                                               ; preds = %39, %41, %37
  %44 = phi double [ %38, %37 ], [ 1.000000e+00, %41 ], [ 1.000000e+00, %39 ]
  %45 = phi double [ 1.000000e+00, %37 ], [ %42, %41 ], [ 1.000000e+00, %39 ]
  %46 = phi double [ %31, %37 ], [ %35, %41 ], [ %31, %39 ]
  call void @GetMagickPixelPacket(ptr noundef nonnull %13, ptr noundef nonnull %4) #23
  %47 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #23
  %48 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %13, ptr noundef %2) #23
  %49 = load i64, ptr %32, align 8, !tbaa !39
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %132

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 7
  %53 = fmul double %46, %46
  %54 = fneg double %1
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %56

56:                                               ; preds = %51, %120
  %57 = phi i64 [ 0, %51 ], [ %123, %120 ]
  %58 = phi i32 [ 1, %51 ], [ %122, %120 ]
  %59 = phi i64 [ 0, %51 ], [ %121, %120 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #21
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %120, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %52, align 8, !tbaa !40
  %63 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %48, i64 noundef 0, i64 noundef %57, i64 noundef %62, i64 noundef 1, ptr noundef %2) #28
  %64 = icmp eq ptr %63, null
  br i1 %64, label %120, label %65

65:                                               ; preds = %61
  %66 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %48) #23
  %67 = sitofp i64 %57 to double
  %68 = fsub double %67, %35
  %69 = fmul double %44, %68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !84
  %70 = load i64, ptr %28, align 8, !tbaa !40
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %65
  %73 = fmul double %69, %69
  br label %74

74:                                               ; preds = %72, %103
  %75 = phi i64 [ %70, %72 ], [ %104, %103 ]
  %76 = phi ptr [ %63, %72 ], [ %105, %103 ]
  %77 = phi i64 [ 0, %72 ], [ %106, %103 ]
  %78 = sitofp i64 %77 to double
  %79 = fsub double %78, %31
  %80 = fmul double %45, %79
  %81 = call double @llvm.fmuladd.f64(double %80, double %80, double %73)
  %82 = fcmp olt double %81, %53
  br i1 %82, label %83, label %103

83:                                               ; preds = %74
  %84 = fcmp ogt double %81, 0.000000e+00
  br i1 %84, label %85, label %92

85:                                               ; preds = %83
  %86 = call double @llvm.sqrt.f64(double %81)
  %87 = fmul double %86, 0x400921FB54442D18
  %88 = fdiv double %87, %46
  %89 = fmul double %88, 5.000000e-01
  %90 = call double @sin(double noundef %89) #23
  %91 = call double @pow(double noundef %90, double noundef %54) #23
  br label %92

92:                                               ; preds = %85, %83
  %93 = phi double [ %91, %85 ], [ 1.000000e+00, %83 ]
  %94 = fmul double %80, %93
  %95 = fdiv double %94, %45
  %96 = fadd double %31, %95
  %97 = fmul double %69, %93
  %98 = fdiv double %97, %44
  %99 = fadd double %35, %98
  %100 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %47, i32 noundef 0, double noundef %96, double noundef %99, ptr noundef nonnull %5, ptr noundef %2) #23
  %101 = getelementptr inbounds i16, ptr %66, i64 %77
  call fastcc void @SetPixelPacket(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %76, ptr noundef %101) #27
  %102 = load i64, ptr %28, align 8, !tbaa !40
  br label %103

103:                                              ; preds = %92, %74
  %104 = phi i64 [ %102, %92 ], [ %75, %74 ]
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %106 = add nuw nsw i64 %77, 1
  %107 = icmp slt i64 %106, %104
  br i1 %107, label %74, label %108, !llvm.loop !88

108:                                              ; preds = %103, %65
  %109 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %48, ptr noundef %2) #28
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load ptr, ptr %55, align 8, !tbaa !49
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = add nsw i64 %59, 1
  %116 = load i64, ptr %32, align 8, !tbaa !39
  %117 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, i64 noundef %59, i64 noundef %116) #27
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 0, i32 %111
  br label %120

120:                                              ; preds = %108, %114, %61, %56
  %121 = phi i64 [ %59, %56 ], [ %59, %61 ], [ %115, %114 ], [ %59, %108 ]
  %122 = phi i32 [ 0, %56 ], [ 0, %61 ], [ %119, %114 ], [ %111, %108 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #21
  %123 = add nuw nsw i64 %57, 1
  %124 = load i64, ptr %32, align 8, !tbaa !39
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %56, label %126, !llvm.loop !89

126:                                              ; preds = %120
  %127 = icmp eq i32 %122, 0
  %128 = call ptr @DestroyCacheView(ptr noundef %48) #23
  %129 = call ptr @DestroyCacheView(ptr noundef %47) #23
  br i1 %127, label %130, label %135

130:                                              ; preds = %126
  %131 = call ptr @DestroyImage(ptr noundef nonnull %13) #23
  br label %135

132:                                              ; preds = %43
  %133 = call ptr @DestroyCacheView(ptr noundef %48) #23
  %134 = call ptr @DestroyCacheView(ptr noundef %47) #23
  br label %135

135:                                              ; preds = %132, %126, %130, %12, %18
  %136 = phi ptr [ null, %18 ], [ null, %12 ], [ %131, %130 ], [ %13, %126 ], [ %13, %132 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #21
  ret ptr %136
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #14 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !90
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #27
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !41
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !92
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #27
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !44
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !93
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #27
  store i16 %15, ptr %2, align 2, !tbaa !45
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !94
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #27
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !46
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !42
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !95
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !96
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #27
  store i16 %33, ptr %3, align 2, !tbaa !47
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MorphImages(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3441, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #23
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #23
  store ptr %12, ptr %4, align 8, !tbaa !16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %246, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %237, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i64 %1, 0
  %22 = uitofp i64 %1 to double
  %23 = fadd double %22, 1.000000e+00
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %49

25:                                               ; preds = %14
  %26 = icmp sgt i64 %1, 1
  br i1 %26, label %27, label %46

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %29

29:                                               ; preds = %27, %41
  %30 = phi i64 [ 1, %27 ], [ %42, %41 ]
  %31 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !16
  %35 = call ptr @DestroyImageList(ptr noundef %34) #23
  br label %246

36:                                               ; preds = %29
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %31) #23
  %37 = load ptr, ptr %28, align 8, !tbaa !49
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i64 noundef %30, i64 noundef %1) #27
  br label %41

41:                                               ; preds = %36, %39
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, %1
  br i1 %43, label %44, label %29, !llvm.loop !97

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 8, !tbaa !16
  br label %46

46:                                               ; preds = %44, %25
  %47 = phi ptr [ %45, %44 ], [ %12, %25 ]
  %48 = call ptr @GetFirstImageInList(ptr noundef %47) #23
  br label %246

49:                                               ; preds = %20, %231
  %50 = phi i32 [ 1, %20 ], [ %232, %231 ]
  %51 = phi ptr [ %0, %20 ], [ %234, %231 ]
  %52 = phi i64 [ 0, %20 ], [ %233, %231 ]
  br i1 %21, label %53, label %213

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %55 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 8
  %56 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 32
  %57 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 30
  br label %58

58:                                               ; preds = %53, %206
  %59 = phi i32 [ %50, %53 ], [ %207, %206 ]
  %60 = phi i64 [ 0, %53 ], [ %211, %206 ]
  %61 = sitofp i64 %60 to double
  %62 = fadd double %61, 1.000000e+00
  %63 = fdiv double %62, %23
  %64 = fsub double 1.000000e+00, %63
  %65 = load i64, ptr %54, align 8, !tbaa !40
  %66 = uitofp i64 %65 to double
  %67 = call ptr @GetNextImageInList(ptr noundef %51) #23
  %68 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !40
  %70 = uitofp i64 %69 to double
  %71 = fmul double %63, %70
  %72 = call double @llvm.fmuladd.f64(double %64, double %66, double %71)
  %73 = fadd double %72, 5.000000e-01
  %74 = fptoui double %73 to i64
  %75 = load i64, ptr %55, align 8, !tbaa !39
  %76 = uitofp i64 %75 to double
  %77 = call ptr @GetNextImageInList(ptr noundef %51) #23
  %78 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 8
  %79 = load i64, ptr %78, align 8, !tbaa !39
  %80 = uitofp i64 %79 to double
  %81 = fmul double %63, %80
  %82 = call double @llvm.fmuladd.f64(double %64, double %76, double %81)
  %83 = fadd double %82, 5.000000e-01
  %84 = fptoui double %83 to i64
  %85 = load i32, ptr %56, align 8, !tbaa !98
  %86 = load double, ptr %57, align 8, !tbaa !99
  %87 = call ptr @ResizeImage(ptr noundef %51, i64 noundef %74, i64 noundef %84, i32 noundef %85, double noundef %86, ptr noundef %2) #23
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %58
  %90 = load ptr, ptr %4, align 8, !tbaa !16
  %91 = call ptr @DestroyImageList(ptr noundef %90) #23
  br label %246

92:                                               ; preds = %58
  %93 = call i32 @SetImageStorageClass(ptr noundef nonnull %87, i32 noundef 1) #23
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 58
  call void @InheritException(ptr noundef %2, ptr noundef nonnull %96) #23
  %97 = call ptr @DestroyImage(ptr noundef nonnull %87) #23
  br label %246

98:                                               ; preds = %92
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %87) #23
  %99 = load ptr, ptr %4, align 8, !tbaa !16
  %100 = call ptr @GetLastImageInList(ptr noundef %99) #23
  store ptr %100, ptr %4, align 8, !tbaa !16
  %101 = call ptr @GetNextImageInList(ptr noundef nonnull %51) #23
  %102 = load ptr, ptr %4, align 8, !tbaa !16
  %103 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 7
  %104 = load i64, ptr %103, align 8, !tbaa !40
  %105 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 8
  %106 = load i64, ptr %105, align 8, !tbaa !39
  %107 = call ptr @GetNextImageInList(ptr noundef nonnull %51) #23
  %108 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 32
  %109 = load i32, ptr %108, align 8, !tbaa !98
  %110 = call ptr @GetNextImageInList(ptr noundef nonnull %51) #23
  %111 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 30
  %112 = load double, ptr %111, align 8, !tbaa !99
  %113 = call ptr @ResizeImage(ptr noundef %101, i64 noundef %104, i64 noundef %106, i32 noundef %109, double noundef %112, ptr noundef %2) #23
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %98
  %116 = load ptr, ptr %4, align 8, !tbaa !16
  %117 = call ptr @DestroyImageList(ptr noundef %116) #23
  br label %246

118:                                              ; preds = %98
  %119 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %113, ptr noundef %2) #23
  %120 = load ptr, ptr %4, align 8, !tbaa !16
  %121 = call ptr @AcquireAuthenticCacheView(ptr noundef %120, ptr noundef %2) #23
  %122 = load ptr, ptr %4, align 8, !tbaa !16
  %123 = getelementptr inbounds %struct._Image, ptr %122, i64 0, i32 8
  %124 = load i64, ptr %123, align 8, !tbaa !39
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %206

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 7
  br label %128

128:                                              ; preds = %126, %199
  %129 = phi ptr [ %122, %126 ], [ %200, %199 ]
  %130 = phi i32 [ %59, %126 ], [ %201, %199 ]
  %131 = phi i64 [ 0, %126 ], [ %202, %199 ]
  %132 = icmp eq i32 %130, 0
  br i1 %132, label %199, label %133

133:                                              ; preds = %128
  %134 = load i64, ptr %127, align 8, !tbaa !40
  %135 = call ptr @GetCacheViewVirtualPixels(ptr noundef %119, i64 noundef 0, i64 noundef %131, i64 noundef %134, i64 noundef 1, ptr noundef %2) #28
  %136 = load ptr, ptr %4, align 8, !tbaa !16
  %137 = getelementptr inbounds %struct._Image, ptr %136, i64 0, i32 7
  %138 = load i64, ptr %137, align 8, !tbaa !40
  %139 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %121, i64 noundef 0, i64 noundef %131, i64 noundef %138, i64 noundef 1, ptr noundef %2) #28
  %140 = icmp eq ptr %135, null
  %141 = icmp eq ptr %139, null
  %142 = select i1 %140, i1 true, i1 %141
  %143 = load ptr, ptr %4, align 8, !tbaa !16
  br i1 %142, label %199, label %144

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct._Image, ptr %143, i64 0, i32 7
  %146 = load i64, ptr %145, align 8, !tbaa !40
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %194

148:                                              ; preds = %144, %148
  %149 = phi ptr [ %191, %148 ], [ %139, %144 ]
  %150 = phi i64 [ %192, %148 ], [ 0, %144 ]
  %151 = phi ptr [ %190, %148 ], [ %135, %144 ]
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 2
  %153 = load i16, ptr %152, align 2, !tbaa !41
  %154 = uitofp i16 %153 to double
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 2
  %156 = load i16, ptr %155, align 2, !tbaa !41
  %157 = uitofp i16 %156 to double
  %158 = fmul double %63, %157
  %159 = call double @llvm.fmuladd.f64(double %64, double %154, double %158)
  %160 = fptrunc double %159 to float
  %161 = call fastcc zeroext i16 @ClampToQuantum(float noundef %160) #27
  store i16 %161, ptr %152, align 2, !tbaa !41
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 1
  %163 = load i16, ptr %162, align 2, !tbaa !44
  %164 = uitofp i16 %163 to double
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 1
  %166 = load i16, ptr %165, align 2, !tbaa !44
  %167 = uitofp i16 %166 to double
  %168 = fmul double %63, %167
  %169 = call double @llvm.fmuladd.f64(double %64, double %164, double %168)
  %170 = fptrunc double %169 to float
  %171 = call fastcc zeroext i16 @ClampToQuantum(float noundef %170) #27
  store i16 %171, ptr %162, align 2, !tbaa !44
  %172 = load i16, ptr %149, align 2, !tbaa !45
  %173 = uitofp i16 %172 to double
  %174 = load i16, ptr %151, align 2, !tbaa !45
  %175 = uitofp i16 %174 to double
  %176 = fmul double %63, %175
  %177 = call double @llvm.fmuladd.f64(double %64, double %173, double %176)
  %178 = fptrunc double %177 to float
  %179 = call fastcc zeroext i16 @ClampToQuantum(float noundef %178) #27
  store i16 %179, ptr %149, align 2, !tbaa !45
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 3
  %181 = load i16, ptr %180, align 2, !tbaa !46
  %182 = uitofp i16 %181 to double
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 3
  %184 = load i16, ptr %183, align 2, !tbaa !46
  %185 = uitofp i16 %184 to double
  %186 = fmul double %63, %185
  %187 = call double @llvm.fmuladd.f64(double %64, double %182, double %186)
  %188 = fptrunc double %187 to float
  %189 = call fastcc zeroext i16 @ClampToQuantum(float noundef %188) #27
  store i16 %189, ptr %180, align 2, !tbaa !46
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 1
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 1
  %192 = add nuw nsw i64 %150, 1
  %193 = icmp eq i64 %192, %146
  br i1 %193, label %194, label %148, !llvm.loop !100

194:                                              ; preds = %148, %144
  %195 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %121, ptr noundef %2) #28
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = load ptr, ptr %4, align 8, !tbaa !16
  br label %199

199:                                              ; preds = %133, %128, %194
  %200 = phi ptr [ %198, %194 ], [ %129, %128 ], [ %143, %133 ]
  %201 = phi i32 [ %197, %194 ], [ 0, %128 ], [ 0, %133 ]
  %202 = add nuw nsw i64 %131, 1
  %203 = getelementptr inbounds %struct._Image, ptr %200, i64 0, i32 8
  %204 = load i64, ptr %203, align 8, !tbaa !39
  %205 = icmp slt i64 %202, %204
  br i1 %205, label %128, label %206, !llvm.loop !101

206:                                              ; preds = %199, %118
  %207 = phi i32 [ %59, %118 ], [ %201, %199 ]
  %208 = call ptr @DestroyCacheView(ptr noundef %121) #23
  %209 = call ptr @DestroyCacheView(ptr noundef %119) #23
  %210 = call ptr @DestroyImage(ptr noundef nonnull %113) #23
  %211 = add nuw nsw i64 %60, 1
  %212 = icmp eq i64 %211, %1
  br i1 %212, label %213, label %58, !llvm.loop !102

213:                                              ; preds = %206, %49
  %214 = phi i32 [ %50, %49 ], [ %207, %206 ]
  %215 = call ptr @GetNextImageInList(ptr noundef %51) #23
  %216 = call ptr @CloneImage(ptr noundef %215, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #23
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load ptr, ptr %4, align 8, !tbaa !16
  %220 = call ptr @DestroyImageList(ptr noundef %219) #23
  br label %246

221:                                              ; preds = %213
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %216) #23
  %222 = load ptr, ptr %4, align 8, !tbaa !16
  %223 = call ptr @GetLastImageInList(ptr noundef %222) #23
  store ptr %223, ptr %4, align 8, !tbaa !16
  %224 = load ptr, ptr %24, align 8, !tbaa !49
  %225 = icmp eq ptr %224, null
  br i1 %225, label %231, label %226

226:                                              ; preds = %221
  %227 = call i64 @GetImageListLength(ptr noundef nonnull %0) #23
  %228 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i64 noundef %52, i64 noundef %227) #27
  %229 = icmp eq i32 %228, 0
  %230 = select i1 %229, i32 0, i32 %214
  br label %231

231:                                              ; preds = %226, %221
  %232 = phi i32 [ %230, %226 ], [ %214, %221 ]
  %233 = add nuw nsw i64 %52, 1
  %234 = call ptr @GetNextImageInList(ptr noundef %51) #23
  %235 = call ptr @GetNextImageInList(ptr noundef %234) #23
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %49, !llvm.loop !103

237:                                              ; preds = %231, %17
  %238 = phi ptr [ %0, %17 ], [ %234, %231 ]
  %239 = call ptr @GetNextImageInList(ptr noundef %238) #23
  %240 = icmp eq ptr %239, null
  %241 = load ptr, ptr %4, align 8, !tbaa !16
  br i1 %240, label %244, label %242

242:                                              ; preds = %237
  %243 = call ptr @DestroyImageList(ptr noundef %241) #23
  br label %246

244:                                              ; preds = %237
  %245 = call ptr @GetFirstImageInList(ptr noundef %241) #23
  br label %246

246:                                              ; preds = %115, %95, %89, %11, %244, %242, %218, %46, %33
  %247 = phi ptr [ null, %33 ], [ %48, %46 ], [ null, %242 ], [ %245, %244 ], [ null, %218 ], [ null, %11 ], [ null, %89 ], [ null, %95 ], [ null, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %247
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._PixelPacket, align 2
  %8 = alloca %struct._PixelPacket, align 2
  %9 = alloca %struct._SegmentInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %10 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !104
  %12 = load double, ptr %3, align 8, !tbaa !106
  %13 = fsub double %11, %12
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %17 = load double, ptr %16, align 8, !tbaa !107
  %18 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %19 = load double, ptr %18, align 8, !tbaa !108
  %20 = fsub double %17, %19
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %378, label %22

22:                                               ; preds = %15, %6
  %23 = icmp eq i64 %5, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %25 = add i64 %5, -1
  %26 = add i64 %4, 1
  %27 = fadd double %11, %12
  %28 = fmul double %27, 5.000000e-01
  %29 = fadd double %28, -5.000000e-01
  %30 = tail call double @llvm.ceil.f64(double %29)
  %31 = fptosi double %30 to i64
  %32 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !108
  %34 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %35 = load double, ptr %34, align 8, !tbaa !107
  %36 = fadd double %33, %35
  %37 = fmul double %36, 5.000000e-01
  %38 = fadd double %37, -5.000000e-01
  %39 = tail call double @llvm.ceil.f64(double %38)
  %40 = fptosi double %39 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !109
  %41 = sitofp i64 %31 to double
  %42 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 2
  store double %41, ptr %42, align 8, !tbaa !104
  %43 = sitofp i64 %40 to double
  %44 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 3
  store double %43, ptr %44, align 8, !tbaa !107
  %45 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25) #27, !range !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !109
  %46 = getelementptr inbounds %struct._SegmentInfo, ptr %9, i64 0, i32 1
  store double %43, ptr %46, align 8, !tbaa !108
  store double %41, ptr %42, align 8, !tbaa !104
  %47 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25) #27, !range !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 24, i1 false), !tbaa.struct !109
  store double %41, ptr %9, align 8, !tbaa !106
  store double %43, ptr %44, align 8, !tbaa !107
  %48 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25) #27, !range !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !109
  store double %41, ptr %9, align 8, !tbaa !106
  store double %43, ptr %46, align 8, !tbaa !108
  %49 = call i32 @PlasmaImageProxy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %26, i64 noundef %25) #27, !range !43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  br label %378

50:                                               ; preds = %22
  %51 = fadd double %11, %12
  %52 = fmul double %51, 5.000000e-01
  %53 = fadd double %52, -5.000000e-01
  %54 = tail call double @llvm.ceil.f64(double %53)
  %55 = fptosi double %54 to i64
  %56 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 1
  %57 = load double, ptr %56, align 8, !tbaa !108
  %58 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 3
  %59 = load double, ptr %58, align 8, !tbaa !107
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
  %89 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %85, i64 noundef %88, ptr noundef nonnull %7, ptr noundef nonnull %75) #23
  %90 = load double, ptr %58, align 8, !tbaa !107
  %91 = fadd double %90, -5.000000e-01
  %92 = call double @llvm.ceil.f64(double %91)
  %93 = fptosi double %92 to i64
  %94 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %85, i64 noundef %93, ptr noundef nonnull %8, ptr noundef nonnull %75) #23
  %95 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %85, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #28
  %96 = icmp eq ptr %95, null
  br i1 %96, label %378, label %97

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %99 = load i16, ptr %98, align 2, !tbaa !41
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !41
  %103 = zext i16 %102 to i32
  %104 = add nuw nsw i32 %103, %100
  %105 = sitofp i32 %104 to double
  %106 = fmul double %105, 5.000000e-01
  %107 = fptrunc double %106 to float
  %108 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %107, double noundef %78) #27
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 2
  store i16 %108, ptr %109, align 2, !tbaa !41
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %111 = load i16, ptr %110, align 2, !tbaa !44
  %112 = zext i16 %111 to i32
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %114 = load i16, ptr %113, align 2, !tbaa !44
  %115 = zext i16 %114 to i32
  %116 = add nuw nsw i32 %115, %112
  %117 = sitofp i32 %116 to double
  %118 = fmul double %117, 5.000000e-01
  %119 = fptrunc double %118 to float
  %120 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %119, double noundef %78) #27
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !44
  %122 = load i16, ptr %7, align 2, !tbaa !45
  %123 = zext i16 %122 to i32
  %124 = load i16, ptr %8, align 2, !tbaa !45
  %125 = zext i16 %124 to i32
  %126 = add nuw nsw i32 %125, %123
  %127 = sitofp i32 %126 to double
  %128 = fmul double %127, 5.000000e-01
  %129 = fptrunc double %128 to float
  %130 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %129, double noundef %78) #27
  store i16 %130, ptr %95, align 2, !tbaa !45
  %131 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #28
  %132 = load double, ptr %3, align 8, !tbaa !106
  %133 = load double, ptr %10, align 8, !tbaa !104
  %134 = fcmp une double %132, %133
  %135 = load double, ptr %56, align 8, !tbaa !108
  br i1 %134, label %136, label %183

136:                                              ; preds = %97
  %137 = fadd double %133, -5.000000e-01
  %138 = call double @llvm.ceil.f64(double %137)
  %139 = fptosi double %138 to i64
  %140 = fadd double %135, -5.000000e-01
  %141 = call double @llvm.ceil.f64(double %140)
  %142 = fptosi double %141 to i64
  %143 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %139, i64 noundef %142, ptr noundef nonnull %7, ptr noundef nonnull %75) #23
  %144 = load double, ptr %58, align 8, !tbaa !107
  %145 = fadd double %144, -5.000000e-01
  %146 = call double @llvm.ceil.f64(double %145)
  %147 = fptosi double %146 to i64
  %148 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %139, i64 noundef %147, ptr noundef nonnull %8, ptr noundef nonnull %75) #23
  %149 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %139, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #28
  %150 = icmp eq ptr %149, null
  br i1 %150, label %378, label %151

151:                                              ; preds = %136
  %152 = load i16, ptr %98, align 2, !tbaa !41
  %153 = zext i16 %152 to i32
  %154 = load i16, ptr %101, align 2, !tbaa !41
  %155 = zext i16 %154 to i32
  %156 = add nuw nsw i32 %155, %153
  %157 = sitofp i32 %156 to double
  %158 = fmul double %157, 5.000000e-01
  %159 = fptrunc double %158 to float
  %160 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %159, double noundef %78) #27
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 2
  store i16 %160, ptr %161, align 2, !tbaa !41
  %162 = load i16, ptr %110, align 2, !tbaa !44
  %163 = zext i16 %162 to i32
  %164 = load i16, ptr %113, align 2, !tbaa !44
  %165 = zext i16 %164 to i32
  %166 = add nuw nsw i32 %165, %163
  %167 = sitofp i32 %166 to double
  %168 = fmul double %167, 5.000000e-01
  %169 = fptrunc double %168 to float
  %170 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %169, double noundef %78) #27
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 1
  store i16 %170, ptr %171, align 2, !tbaa !44
  %172 = load i16, ptr %7, align 2, !tbaa !45
  %173 = zext i16 %172 to i32
  %174 = load i16, ptr %8, align 2, !tbaa !45
  %175 = zext i16 %174 to i32
  %176 = add nuw nsw i32 %175, %173
  %177 = sitofp i32 %176 to double
  %178 = fmul double %177, 5.000000e-01
  %179 = fptrunc double %178 to float
  %180 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %179, double noundef %78) #27
  store i16 %180, ptr %149, align 2, !tbaa !45
  %181 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #28
  %182 = load double, ptr %56, align 8, !tbaa !108
  br label %183

183:                                              ; preds = %74, %151, %97
  %184 = phi double [ %57, %74 ], [ %182, %151 ], [ %135, %97 ]
  %185 = sitofp i64 %64 to double
  %186 = fcmp une double %184, %185
  %187 = load double, ptr %58, align 8, !tbaa !107
  %188 = fcmp une double %187, %185
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %190, label %303

190:                                              ; preds = %183
  %191 = load double, ptr %3, align 8, !tbaa !106
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
  %202 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %201, i64 noundef %198, ptr noundef nonnull %7, ptr noundef nonnull %75) #23
  %203 = load double, ptr %10, align 8, !tbaa !104
  %204 = fadd double %203, -5.000000e-01
  %205 = call double @llvm.ceil.f64(double %204)
  %206 = fptosi double %205 to i64
  %207 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %206, i64 noundef %198, ptr noundef nonnull %8, ptr noundef nonnull %75) #23
  %208 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %198, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #28
  %209 = icmp eq ptr %208, null
  br i1 %209, label %378, label %210

210:                                              ; preds = %195
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %212 = load i16, ptr %211, align 2, !tbaa !41
  %213 = zext i16 %212 to i32
  %214 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %215 = load i16, ptr %214, align 2, !tbaa !41
  %216 = zext i16 %215 to i32
  %217 = add nuw nsw i32 %216, %213
  %218 = sitofp i32 %217 to double
  %219 = fmul double %218, 5.000000e-01
  %220 = fptrunc double %219 to float
  %221 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %220, double noundef %78) #27
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %208, i64 0, i32 2
  store i16 %221, ptr %222, align 2, !tbaa !41
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %224 = load i16, ptr %223, align 2, !tbaa !44
  %225 = zext i16 %224 to i32
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %227 = load i16, ptr %226, align 2, !tbaa !44
  %228 = zext i16 %227 to i32
  %229 = add nuw nsw i32 %228, %225
  %230 = sitofp i32 %229 to double
  %231 = fmul double %230, 5.000000e-01
  %232 = fptrunc double %231 to float
  %233 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %232, double noundef %78) #27
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %208, i64 0, i32 1
  store i16 %233, ptr %234, align 2, !tbaa !44
  %235 = load i16, ptr %7, align 2, !tbaa !45
  %236 = zext i16 %235 to i32
  %237 = load i16, ptr %8, align 2, !tbaa !45
  %238 = zext i16 %237 to i32
  %239 = add nuw nsw i32 %238, %236
  %240 = sitofp i32 %239 to double
  %241 = fmul double %240, 5.000000e-01
  %242 = fptrunc double %241 to float
  %243 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %242, double noundef %78) #27
  store i16 %243, ptr %208, align 2, !tbaa !45
  %244 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #28
  %245 = load double, ptr %56, align 8, !tbaa !108
  %246 = load double, ptr %58, align 8, !tbaa !107
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
  %255 = load double, ptr %3, align 8, !tbaa !106
  %256 = fadd double %255, -5.000000e-01
  %257 = call double @llvm.ceil.f64(double %256)
  %258 = fptosi double %257 to i64
  %259 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %258, i64 noundef %254, ptr noundef nonnull %7, ptr noundef nonnull %75) #23
  %260 = load double, ptr %10, align 8, !tbaa !104
  %261 = fadd double %260, -5.000000e-01
  %262 = call double @llvm.ceil.f64(double %261)
  %263 = fptosi double %262 to i64
  %264 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %263, i64 noundef %254, ptr noundef nonnull %8, ptr noundef nonnull %75) #23
  %265 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %254, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #28
  %266 = icmp eq ptr %265, null
  br i1 %266, label %378, label %267

267:                                              ; preds = %251
  %268 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %269 = load i16, ptr %268, align 2, !tbaa !41
  %270 = zext i16 %269 to i32
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %272 = load i16, ptr %271, align 2, !tbaa !41
  %273 = zext i16 %272 to i32
  %274 = add nuw nsw i32 %273, %270
  %275 = sitofp i32 %274 to double
  %276 = fmul double %275, 5.000000e-01
  %277 = fptrunc double %276 to float
  %278 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %277, double noundef %78) #27
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 0, i32 2
  store i16 %278, ptr %279, align 2, !tbaa !41
  %280 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %281 = load i16, ptr %280, align 2, !tbaa !44
  %282 = zext i16 %281 to i32
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %284 = load i16, ptr %283, align 2, !tbaa !44
  %285 = zext i16 %284 to i32
  %286 = add nuw nsw i32 %285, %282
  %287 = sitofp i32 %286 to double
  %288 = fmul double %287, 5.000000e-01
  %289 = fptrunc double %288 to float
  %290 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %289, double noundef %78) #27
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 0, i32 1
  store i16 %290, ptr %291, align 2, !tbaa !44
  %292 = load i16, ptr %7, align 2, !tbaa !45
  %293 = zext i16 %292 to i32
  %294 = load i16, ptr %8, align 2, !tbaa !45
  %295 = zext i16 %294 to i32
  %296 = add nuw nsw i32 %295, %293
  %297 = sitofp i32 %296 to double
  %298 = fmul double %297, 5.000000e-01
  %299 = fptrunc double %298 to float
  %300 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %299, double noundef %78) #27
  store i16 %300, ptr %265, align 2, !tbaa !45
  %301 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #28
  %302 = load double, ptr %56, align 8, !tbaa !108
  br label %303

303:                                              ; preds = %183, %267, %247
  %304 = phi double [ %302, %267 ], [ %249, %247 ], [ %184, %183 ]
  %305 = load double, ptr %3, align 8, !tbaa !106
  %306 = load double, ptr %10, align 8, !tbaa !104
  %307 = fcmp une double %305, %306
  br i1 %307, label %311, label %308

308:                                              ; preds = %303
  %309 = load double, ptr %58, align 8, !tbaa !107
  %310 = fcmp une double %304, %309
  br i1 %310, label %311, label %367

311:                                              ; preds = %308, %303
  %312 = fadd double %305, -5.000000e-01
  %313 = call double @llvm.ceil.f64(double %312)
  %314 = fptosi double %313 to i64
  %315 = fadd double %304, -5.000000e-01
  %316 = call double @llvm.ceil.f64(double %315)
  %317 = fptosi double %316 to i64
  %318 = call i32 @GetOneVirtualPixel(ptr noundef %0, i64 noundef %314, i64 noundef %317, ptr noundef nonnull %7, ptr noundef nonnull %75) #23
  %319 = load double, ptr %10, align 8, !tbaa !104
  %320 = fadd double %319, -5.000000e-01
  %321 = call double @llvm.ceil.f64(double %320)
  %322 = fptosi double %321 to i64
  %323 = load double, ptr %58, align 8, !tbaa !107
  %324 = fadd double %323, -5.000000e-01
  %325 = call double @llvm.ceil.f64(double %324)
  %326 = fptosi double %325 to i64
  %327 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %1, i64 noundef %322, i64 noundef %326, ptr noundef nonnull %8, ptr noundef nonnull %75) #23
  %328 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %55, i64 noundef %64, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %75) #28
  %329 = icmp eq ptr %328, null
  br i1 %329, label %378, label %330

330:                                              ; preds = %311
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 2
  %332 = load i16, ptr %331, align 2, !tbaa !41
  %333 = zext i16 %332 to i32
  %334 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %335 = load i16, ptr %334, align 2, !tbaa !41
  %336 = zext i16 %335 to i32
  %337 = add nuw nsw i32 %336, %333
  %338 = sitofp i32 %337 to double
  %339 = fmul double %338, 5.000000e-01
  %340 = fptrunc double %339 to float
  %341 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %340, double noundef %78) #27
  %342 = getelementptr inbounds %struct._PixelPacket, ptr %328, i64 0, i32 2
  store i16 %341, ptr %342, align 2, !tbaa !41
  %343 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 1
  %344 = load i16, ptr %343, align 2, !tbaa !44
  %345 = zext i16 %344 to i32
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 1
  %347 = load i16, ptr %346, align 2, !tbaa !44
  %348 = zext i16 %347 to i32
  %349 = add nuw nsw i32 %348, %345
  %350 = sitofp i32 %349 to double
  %351 = fmul double %350, 5.000000e-01
  %352 = fptrunc double %351 to float
  %353 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %352, double noundef %78) #27
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %328, i64 0, i32 1
  store i16 %353, ptr %354, align 2, !tbaa !44
  %355 = load i16, ptr %7, align 2, !tbaa !45
  %356 = zext i16 %355 to i32
  %357 = load i16, ptr %8, align 2, !tbaa !45
  %358 = zext i16 %357 to i32
  %359 = add nuw nsw i32 %358, %356
  %360 = sitofp i32 %359 to double
  %361 = fmul double %360, 5.000000e-01
  %362 = fptrunc double %361 to float
  %363 = call fastcc zeroext i16 @PlasmaPixel(ptr noundef %2, float noundef %362, double noundef %78) #27
  store i16 %363, ptr %328, align 2, !tbaa !45
  %364 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef nonnull %75) #28
  %365 = load double, ptr %10, align 8, !tbaa !104
  %366 = load double, ptr %3, align 8, !tbaa !106
  br label %367

367:                                              ; preds = %330, %308
  %368 = phi double [ %366, %330 ], [ %305, %308 ]
  %369 = phi double [ %365, %330 ], [ %306, %308 ]
  %370 = fsub double %369, %368
  %371 = fcmp olt double %370, 3.000000e+00
  br i1 %371, label %372, label %377

372:                                              ; preds = %367
  %373 = load double, ptr %58, align 8, !tbaa !107
  %374 = load double, ptr %56, align 8, !tbaa !108
  %375 = fsub double %373, %374
  %376 = fcmp olt double %375, 3.000000e+00
  br i1 %376, label %378, label %377

377:                                              ; preds = %372, %367
  br label %378

378:                                              ; preds = %311, %251, %195, %82, %136, %372, %69, %15, %377, %24
  %379 = phi i32 [ %49, %24 ], [ 0, %377 ], [ 1, %15 ], [ 0, %69 ], [ 1, %372 ], [ 1, %136 ], [ 1, %82 ], [ 1, %195 ], [ 1, %251 ], [ 1, %311 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret i32 %379
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: optsize
declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i16 @PlasmaPixel(ptr noundef %0, float noundef %1, double noundef %2) unnamed_addr #0 {
  %4 = fpext float %1 to double
  %5 = tail call double @GetPseudoRandomValue(ptr noundef %0) #23
  %6 = tail call double @llvm.fmuladd.f64(double %2, double %5, double %4)
  %7 = fmul double %2, 5.000000e-01
  %8 = fsub double %6, %7
  %9 = fptrunc double %8 to float
  %10 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %9) #27
  ret i16 %10
}

; Function Attrs: optsize
declare i32 @GetOneVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PlasmaImage(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3850, ptr noundef nonnull @.str.34) #23
  %10 = load i32, ptr %5, align 8, !tbaa !38
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3854, ptr noundef nonnull @.str.34) #23
  br label %14

14:                                               ; preds = %4, %12, %8
  %15 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %19 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %18) #23
  %20 = tail call ptr @AcquireRandomInfo() #23
  %21 = tail call i32 @PlasmaImageProxy(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %20, ptr noundef %1, i64 noundef %2, i64 noundef %3) #27, !range !43
  %22 = tail call ptr @DestroyRandomInfo(ptr noundef %20) #23
  %23 = tail call ptr @DestroyCacheView(ptr noundef %19) #23
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
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3921, ptr noundef nonnull @.str.22, ptr noundef nonnull %12) #23
  br label %14

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !40
  %17 = uitofp i64 %16 to double
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !39
  %20 = uitofp i64 %19 to double
  %21 = tail call fastcc double @MagickMax(double noundef %17, double noundef %20) #27
  %22 = fdiv double %21, 2.500000e+01
  %23 = tail call fastcc double @MagickMax(double noundef %22, double noundef 1.000000e+01) #27
  %24 = fptosi double %23 to i64
  %25 = shl nsw i64 %24, 1
  %26 = add i64 %25, %19
  %27 = tail call ptr @GetImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.35) #23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %81, label %29

29:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #21
  %30 = load i64, ptr %15, align 8, !tbaa !40
  %31 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %30, i64 noundef 1, i32 noundef 1, ptr noundef %3) #23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %161

34:                                               ; preds = %29
  %35 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #23
  %36 = tail call ptr @InterpretImageProperties(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %27) #23
  store ptr %36, ptr %5, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %35, i64 0, i32 21
  %38 = tail call ptr @CloneString(ptr noundef nonnull %37, ptr noundef %36) #23
  %39 = call i64 @FormatMagickCaption(ptr noundef nonnull %31, ptr noundef %35, i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %5) #23
  %40 = load i64, ptr %15, align 8, !tbaa !40
  %41 = add nsw i64 %39, 1
  %42 = sitofp i64 %41 to double
  %43 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 1
  %44 = load double, ptr %43, align 8, !tbaa !110
  %45 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 2
  %46 = load double, ptr %45, align 8, !tbaa !113
  %47 = fsub double %44, %46
  %48 = call double @llvm.fmuladd.f64(double %42, double %47, double 5.000000e-01)
  %49 = fptoui double %48 to i64
  %50 = call i32 @SetImageExtent(ptr noundef nonnull %31, i64 noundef %40, i64 noundef %49) #23
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = call ptr @DestroyImage(ptr noundef nonnull %31) #23
  br label %75

54:                                               ; preds = %34
  %55 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 12
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %55, align 8
  %58 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %31) #23
  %59 = load ptr, ptr %5, align 8, !tbaa !16
  %60 = call ptr @CloneString(ptr noundef nonnull %37, ptr noundef %59) #23
  %61 = load double, ptr %43, align 8, !tbaa !110
  %62 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.36, double noundef %61) #23
  %63 = getelementptr inbounds %struct._DrawInfo, ptr %35, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !114
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct._DrawInfo, ptr %35, i64 0, i32 1
  %68 = call ptr @AcquireString(ptr noundef nonnull %6) #23
  %69 = call ptr @CloneString(ptr noundef nonnull %67, ptr noundef %68) #23
  br label %70

70:                                               ; preds = %66, %54
  %71 = call i32 @AnnotateImage(ptr noundef nonnull %31, ptr noundef nonnull %35) #23
  %72 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %73 = load i64, ptr %72, align 8, !tbaa !39
  %74 = add i64 %73, %26
  br label %75

75:                                               ; preds = %52, %70
  %76 = phi i64 [ %26, %52 ], [ %74, %70 ]
  %77 = phi ptr [ %53, %52 ], [ %31, %70 ]
  %78 = call ptr @DestroyDrawInfo(ptr noundef %35) #23
  %79 = load ptr, ptr %5, align 8, !tbaa !16
  %80 = call ptr @DestroyString(ptr noundef %79) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %81

81:                                               ; preds = %75, %14
  %82 = phi i64 [ %76, %75 ], [ %26, %14 ]
  %83 = phi ptr [ %77, %75 ], [ null, %14 ]
  %84 = load i64, ptr %15, align 8, !tbaa !40
  %85 = add i64 %84, %25
  %86 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %85, i64 noundef %82, i32 noundef 1, ptr noundef %3) #23
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = icmp eq ptr %83, null
  br i1 %89, label %161, label %90

90:                                               ; preds = %88
  %91 = call ptr @DestroyImage(ptr noundef nonnull %83) #23
  br label %161

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 12
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %95 = load i64, ptr %94, align 8
  store i64 %95, ptr %93, align 8
  %96 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %86) #23
  %97 = call i32 @CompositeImage(ptr noundef nonnull %86, i32 noundef 40, ptr noundef nonnull %0, i64 noundef %24, i64 noundef %24) #23
  %98 = icmp eq ptr %83, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i64, ptr %18, align 8, !tbaa !39
  %101 = mul nsw i64 %24, 3
  %102 = sdiv i64 %101, 2
  %103 = add i64 %100, %102
  %104 = call i32 @CompositeImage(ptr noundef nonnull %86, i32 noundef 40, ptr noundef nonnull %83, i64 noundef %24, i64 noundef %103) #23
  %105 = call ptr @DestroyImage(ptr noundef nonnull %83) #23
  br label %106

106:                                              ; preds = %99, %92
  %107 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.37, ptr noundef nonnull %93, ptr noundef %3) #23
  %108 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %86, i32 noundef 6) #23
  %109 = call ptr @RotateImage(ptr noundef nonnull %86, double noundef 9.000000e+01, ptr noundef %3) #23
  %110 = call ptr @DestroyImage(ptr noundef nonnull %86) #23
  %111 = icmp eq ptr %109, null
  br i1 %111, label %161, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 8
  %114 = load i64, ptr %113, align 8, !tbaa !39
  %115 = uitofp i64 %114 to double
  %116 = fmul double %115, 1.000000e-02
  %117 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 7
  %118 = load i64, ptr %117, align 8, !tbaa !40
  %119 = uitofp i64 %118 to double
  %120 = fmul double %119, 2.000000e+00
  %121 = call ptr @WaveImage(ptr noundef nonnull %109, double noundef %116, double noundef %120, ptr noundef %3) #27
  %122 = call ptr @DestroyImage(ptr noundef nonnull %109) #23
  %123 = icmp eq ptr %121, null
  br i1 %123, label %161, label %124

124:                                              ; preds = %112
  %125 = getelementptr inbounds %struct._Image, ptr %121, i64 0, i32 58
  call void @InheritException(ptr noundef nonnull %125, ptr noundef %3) #23
  %126 = call ptr @RotateImage(ptr noundef nonnull %121, double noundef -9.000000e+01, ptr noundef %3) #23
  %127 = call ptr @DestroyImage(ptr noundef nonnull %121) #23
  %128 = icmp eq ptr %126, null
  br i1 %128, label %161, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 12
  %131 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %132 = load i64, ptr %131, align 8
  store i64 %132, ptr %130, align 8
  %133 = sdiv i64 %24, 3
  %134 = call ptr @ShadowImage(ptr noundef nonnull %126, double noundef 8.000000e+01, double noundef 2.000000e+00, i64 noundef %133, i64 noundef %133, ptr noundef %3) #27
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = call ptr @DestroyImage(ptr noundef nonnull %126) #23
  br label %161

138:                                              ; preds = %129
  %139 = call ptr @FlopImage(ptr noundef nonnull %134, ptr noundef %3) #23
  %140 = call ptr @DestroyImage(ptr noundef nonnull %134) #23
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call ptr @DestroyImage(ptr noundef nonnull %126) #23
  br label %161

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 7
  %146 = load i64, ptr %145, align 8, !tbaa !40
  %147 = uitofp i64 %146 to double
  %148 = fmul double %147, -1.000000e-02
  %149 = fmul double %148, 5.000000e-01
  %150 = fptosi double %149 to i64
  %151 = call i32 @CompositeImage(ptr noundef nonnull %139, i32 noundef 40, ptr noundef nonnull %126, i64 noundef %150, i64 noundef 0) #23
  %152 = call ptr @DestroyImage(ptr noundef nonnull %126) #23
  %153 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 12
  %154 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.37, ptr noundef nonnull %153, ptr noundef %3) #23
  %155 = call ptr @RotateImage(ptr noundef nonnull %139, double noundef %2, ptr noundef %3) #23
  %156 = call ptr @DestroyImage(ptr noundef nonnull %139) #23
  %157 = icmp eq ptr %155, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %144
  %159 = call ptr @TrimImage(ptr noundef nonnull %155, ptr noundef %3) #23
  %160 = call ptr @DestroyImage(ptr noundef nonnull %155) #23
  br label %161

161:                                              ; preds = %33, %158, %144, %124, %112, %106, %88, %90, %142, %136
  %162 = phi ptr [ %137, %136 ], [ %143, %142 ], [ null, %90 ], [ null, %88 ], [ null, %106 ], [ null, %112 ], [ null, %124 ], [ null, %144 ], [ %159, %158 ], [ null, %33 ]
  ret ptr %162
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #8 {
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
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #21
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !38
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5519, ptr noundef nonnull @.str.22, ptr noundef nonnull %11) #23
  br label %13

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !39
  %18 = uitofp i64 %17 to double
  %19 = tail call double @llvm.fabs.f64(double %1)
  %20 = tail call double @llvm.fmuladd.f64(double %19, double 2.000000e+00, double %18)
  %21 = fptoui double %20 to i64
  %22 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %15, i64 noundef %21, i32 noundef 1, ptr noundef %3) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %127, label %24

24:                                               ; preds = %13
  %25 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %22, i32 noundef 1) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %28) #23
  %29 = tail call ptr @DestroyImage(ptr noundef nonnull %22) #23
  br label %127

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 12, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !83
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 6
  store i32 1, ptr %35, align 8, !tbaa !57
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !40
  %39 = tail call ptr @AcquireQuantumMemory(i64 noundef %38, i64 noundef 4) #26
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i64, ptr %37, align 8, !tbaa !40
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %48, label %60

44:                                               ; preds = %36
  %45 = tail call ptr @DestroyImage(ptr noundef nonnull %22) #23
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %47 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5542, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %46) #23
  br label %127

48:                                               ; preds = %41, %48
  %49 = phi i64 [ %57, %48 ], [ 0, %41 ]
  %50 = sitofp i64 %49 to double
  %51 = fmul double %50, 0x401921FB54442D18
  %52 = fdiv double %51, %2
  %53 = tail call double @sin(double noundef %52) #23
  %54 = tail call double @llvm.fmuladd.f64(double %1, double %53, double %19)
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds float, ptr %39, i64 %49
  store float %55, ptr %56, align 4, !tbaa !86
  %57 = add nuw nsw i64 %49, 1
  %58 = load i64, ptr %37, align 8, !tbaa !40
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %48, label %60, !llvm.loop !119

60:                                               ; preds = %48, %41
  call void @GetMagickPixelPacket(ptr noundef nonnull %22, ptr noundef nonnull %5) #23
  %61 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #23
  %62 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %22, ptr noundef %3) #23
  %63 = call i32 @SetCacheViewVirtualPixelMethod(ptr noundef %61, i32 noundef 1) #23
  %64 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !39
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %123

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %69

69:                                               ; preds = %67, %110
  %70 = phi i64 [ 0, %67 ], [ %113, %110 ]
  %71 = phi i64 [ 0, %67 ], [ %112, %110 ]
  %72 = phi i32 [ 1, %67 ], [ %111, %110 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %110, label %74

74:                                               ; preds = %69
  %75 = load i64, ptr %37, align 8, !tbaa !40
  %76 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %62, i64 noundef 0, i64 noundef %70, i64 noundef %75, i64 noundef 1, ptr noundef %3) #28
  %77 = icmp eq ptr %76, null
  br i1 %77, label %110, label %78

78:                                               ; preds = %74
  %79 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %62) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !84
  %80 = load i64, ptr %37, align 8, !tbaa !40
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = sitofp i64 %70 to float
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ 0, %82 ], [ %95, %84 ]
  %86 = phi ptr [ %76, %82 ], [ %94, %84 ]
  %87 = sitofp i64 %85 to double
  %88 = getelementptr inbounds float, ptr %39, i64 %85
  %89 = load float, ptr %88, align 4, !tbaa !86
  %90 = fsub float %83, %89
  %91 = fpext float %90 to double
  %92 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %61, i32 noundef 0, double noundef %87, double noundef %91, ptr noundef nonnull %6, ptr noundef %3) #23
  %93 = getelementptr inbounds i16, ptr %79, i64 %85
  call fastcc void @SetPixelPacket(ptr noundef nonnull %22, ptr noundef nonnull %6, ptr noundef nonnull %86, ptr noundef %93) #27
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 1
  %95 = add nuw nsw i64 %85, 1
  %96 = load i64, ptr %37, align 8, !tbaa !40
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %84, label %98, !llvm.loop !120

98:                                               ; preds = %84, %78
  %99 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef %3) #28
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load ptr, ptr %68, align 8, !tbaa !49
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = add nsw i64 %71, 1
  %106 = load i64, ptr %16, align 8, !tbaa !39
  %107 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.52, i64 noundef %71, i64 noundef %106) #27
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 0, i32 %101
  br label %110

110:                                              ; preds = %98, %104, %74, %69
  %111 = phi i32 [ 0, %69 ], [ 0, %74 ], [ %109, %104 ], [ %101, %98 ]
  %112 = phi i64 [ %71, %69 ], [ %71, %74 ], [ %105, %104 ], [ %71, %98 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  %113 = add nuw nsw i64 %70, 1
  %114 = load i64, ptr %64, align 8, !tbaa !39
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %69, label %116, !llvm.loop !121

116:                                              ; preds = %110
  %117 = icmp eq i32 %111, 0
  %118 = call ptr @DestroyCacheView(ptr noundef %62) #23
  %119 = call ptr @DestroyCacheView(ptr noundef %61) #23
  %120 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %39) #23
  br i1 %117, label %121, label %127

121:                                              ; preds = %116
  %122 = call ptr @DestroyImage(ptr noundef nonnull %22) #23
  br label %127

123:                                              ; preds = %60
  %124 = call ptr @DestroyCacheView(ptr noundef %62) #23
  %125 = call ptr @DestroyCacheView(ptr noundef %61) #23
  %126 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %39) #23
  br label %127

127:                                              ; preds = %123, %116, %121, %13, %44, %27
  %128 = phi ptr [ null, %27 ], [ null, %44 ], [ null, %13 ], [ %122, %121 ], [ %22, %116 ], [ %22, %123 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #21
  ret ptr %128
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShadowImage(ptr noundef %0, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4261, ptr noundef nonnull @.str.22, ptr noundef nonnull %12) #23
  br label %14

14:                                               ; preds = %11, %6
  %15 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %144, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !42
  %20 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %19) #27, !range !43
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @SetImageColorspace(ptr noundef nonnull %15, i32 noundef 13) #23
  br label %24

24:                                               ; preds = %22, %17
  %25 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %15, i32 noundef 4) #23
  %26 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 36
  store i32 40, ptr %26, align 8, !tbaa !122
  %27 = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 5.000000e-01)
  %28 = tail call double @llvm.floor.f64(double %27)
  %29 = fptoui double %28 to i64
  store i64 %29, ptr %7, align 8, !tbaa !123
  %30 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !124
  %31 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 2
  %32 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %33 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.37, ptr noundef nonnull %32, ptr noundef %5) #23
  %34 = call ptr @BorderImage(ptr noundef nonnull %15, ptr noundef nonnull %7, ptr noundef %5) #23
  %35 = call ptr @DestroyImage(ptr noundef nonnull %15) #23
  %36 = icmp eq ptr %34, null
  br i1 %36, label %144, label %37

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !57
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %34, i32 noundef 6) #23
  br label %43

43:                                               ; preds = %41, %37
  %44 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %34, ptr noundef %5) #23
  %45 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !39
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %50 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 12
  %51 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 12, i32 2
  %52 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 12, i32 3
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %54

54:                                               ; preds = %48, %104
  %55 = phi i64 [ 0, %48 ], [ %107, %104 ]
  %56 = phi i64 [ 0, %48 ], [ %106, %104 ]
  %57 = phi i32 [ 1, %48 ], [ %105, %104 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %104, label %59

59:                                               ; preds = %54
  %60 = load i64, ptr %49, align 8, !tbaa !40
  %61 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %44, i64 noundef 0, i64 noundef %55, i64 noundef %60, i64 noundef 1, ptr noundef %5) #28
  %62 = icmp eq ptr %61, null
  br i1 %62, label %104, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %49, align 8, !tbaa !40
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %63
  %67 = load i32, ptr %38, align 8, !tbaa !57
  %68 = icmp eq i32 %67, 0
  %69 = load i16, ptr %51, align 4, !tbaa !125
  %70 = load <2 x i16>, ptr %50, align 8, !tbaa !47
  br label %71

71:                                               ; preds = %66, %88
  %72 = phi i64 [ 0, %66 ], [ %90, %88 ]
  %73 = phi ptr [ %61, %66 ], [ %89, %88 ]
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 2
  store i16 %69, ptr %74, align 2, !tbaa !41
  store <2 x i16> %70, ptr %73, align 2, !tbaa !47
  br i1 %68, label %75, label %78

75:                                               ; preds = %71
  %76 = load i16, ptr %52, align 2, !tbaa !83
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  store i16 %76, ptr %77, align 2, !tbaa !46
  br label %88

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  %80 = load i16, ptr %79, align 2, !tbaa !46
  %81 = xor i16 %80, -1
  %82 = uitofp i16 %81 to double
  %83 = fmul double %82, %1
  %84 = fdiv double %83, 1.000000e+02
  %85 = fsub double 6.553500e+04, %84
  %86 = fptrunc double %85 to float
  %87 = call fastcc zeroext i16 @ClampToQuantum(float noundef %86) #27
  store i16 %87, ptr %79, align 2, !tbaa !46
  br label %88

88:                                               ; preds = %78, %75
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %90 = add nuw nsw i64 %72, 1
  %91 = icmp eq i64 %90, %64
  br i1 %91, label %92, label %71, !llvm.loop !126

92:                                               ; preds = %88, %63
  %93 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %44, ptr noundef %5) #28
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load ptr, ptr %53, align 8, !tbaa !49
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = add nsw i64 %56, 1
  %100 = load i64, ptr %45, align 8, !tbaa !39
  %101 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, i64 noundef %56, i64 noundef %100) #27
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 0, i32 %95
  br label %104

104:                                              ; preds = %92, %98, %59, %54
  %105 = phi i32 [ 0, %54 ], [ 0, %59 ], [ %103, %98 ], [ %95, %92 ]
  %106 = phi i64 [ %56, %54 ], [ %56, %59 ], [ %99, %98 ], [ %56, %92 ]
  %107 = add nuw nsw i64 %55, 1
  %108 = load i64, ptr %45, align 8, !tbaa !39
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %54, label %110, !llvm.loop !127

110:                                              ; preds = %104, %43
  %111 = call ptr @DestroyCacheView(ptr noundef %44) #23
  %112 = call ptr @BlurImageChannel(ptr noundef nonnull %34, i32 noundef 8, double noundef 0.000000e+00, double noundef %2, ptr noundef %5) #23
  %113 = call ptr @DestroyImage(ptr noundef nonnull %34) #23
  %114 = icmp eq ptr %112, null
  br i1 %114, label %144, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 26
  %117 = load i64, ptr %116, align 8, !tbaa !128
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 7
  %121 = load i64, ptr %120, align 8, !tbaa !40
  br label %122

122:                                              ; preds = %119, %115
  %123 = phi i64 [ %121, %119 ], [ %117, %115 ]
  %124 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 26, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !129
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 8
  %129 = load i64, ptr %128, align 8, !tbaa !39
  br label %130

130:                                              ; preds = %127, %122
  %131 = phi i64 [ %129, %127 ], [ %125, %122 ]
  %132 = load i64, ptr %7, align 8, !tbaa !123
  %133 = sub nsw i64 %3, %132
  %134 = add i64 %123, %133
  store i64 %134, ptr %116, align 8, !tbaa !128
  %135 = load i64, ptr %30, align 8, !tbaa !124
  %136 = sub nsw i64 %4, %135
  %137 = add i64 %131, %136
  store i64 %137, ptr %124, align 8, !tbaa !129
  %138 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 26, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !130
  %140 = add nsw i64 %139, %133
  store i64 %140, ptr %138, align 8, !tbaa !130
  %141 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 26, i32 3
  %142 = load i64, ptr %141, align 8, !tbaa !131
  %143 = add nsw i64 %142, %136
  store i64 %143, ptr %141, align 8, !tbaa !131
  br label %144

144:                                              ; preds = %110, %24, %14, %130
  %145 = phi ptr [ %112, %130 ], [ null, %14 ], [ null, %24 ], [ null, %110 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret ptr %145
}

; Function Attrs: optsize
declare ptr @FlopImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @TrimImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SepiaToneImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4105, ptr noundef nonnull @.str.22, ptr noundef nonnull %8) #23
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !39
  %15 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %12, i64 noundef %14, i32 noundef 1, ptr noundef %2) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %131, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %15, i32 noundef 1) #23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %21) #23
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %131

23:                                               ; preds = %17
  %24 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #23
  %25 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %2) #23
  %26 = load i64, ptr %13, align 8, !tbaa !39
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %126

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %30 = fmul double %1, 7.000000e+00
  %31 = fdiv double %30, 6.000000e+00
  %32 = insertelement <2 x double> poison, double %1, i64 0
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer
  %34 = fdiv <2 x double> %33, <double 7.000000e+00, double 6.000000e+00>
  %35 = extractelement <2 x double> %34, i64 0
  %36 = fptrunc double %35 to float
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %38 = extractelement <2 x double> %34, i64 1
  br label %39

39:                                               ; preds = %28, %112
  %40 = phi i64 [ 0, %28 ], [ %115, %112 ]
  %41 = phi i64 [ 0, %28 ], [ %114, %112 ]
  %42 = phi i32 [ 1, %28 ], [ %113, %112 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %112, label %44

44:                                               ; preds = %39
  %45 = load i64, ptr %11, align 8, !tbaa !40
  %46 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %24, i64 noundef 0, i64 noundef %40, i64 noundef %45, i64 noundef 1, ptr noundef %2) #28
  %47 = load i64, ptr %29, align 8, !tbaa !40
  %48 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %25, i64 noundef 0, i64 noundef %40, i64 noundef %47, i64 noundef 1, ptr noundef %2) #28
  %49 = icmp eq ptr %46, null
  %50 = icmp eq ptr %48, null
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %112, label %52

52:                                               ; preds = %44
  %53 = load i64, ptr %11, align 8, !tbaa !40
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %52, %91
  %56 = phi ptr [ %96, %91 ], [ %48, %52 ]
  %57 = phi i64 [ %97, %91 ], [ 0, %52 ]
  %58 = phi ptr [ %95, %91 ], [ %46, %52 ]
  %59 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %58) #28
  %60 = fpext float %59 to double
  %61 = fcmp ogt double %60, %1
  %62 = fadd double %60, 6.553500e+04
  %63 = fsub double %62, %1
  %64 = select i1 %61, double 6.553500e+04, double %63
  %65 = fptrunc double %64 to float
  %66 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %65) #27
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  store i16 %66, ptr %67, align 2, !tbaa !41
  %68 = fcmp olt double %31, %60
  %69 = fsub double %62, %31
  %70 = select i1 %68, double 6.553500e+04, double %69
  %71 = fptrunc double %70 to float
  %72 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %71) #27
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  store i16 %72, ptr %73, align 2, !tbaa !44
  %74 = fsub double %60, %38
  %75 = uitofp i16 %72 to double
  %76 = insertelement <2 x double> poison, double %75, i64 0
  %77 = insertelement <2 x double> %76, double %60, i64 1
  %78 = fcmp ogt <2 x double> %34, %77
  %79 = extractelement <2 x i1> %78, i64 1
  %80 = fptrunc double %74 to float
  %81 = select i1 %79, float 0.000000e+00, float %80
  %82 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #27
  store i16 %82, ptr %56, align 2, !tbaa !45
  %83 = extractelement <2 x i1> %78, i64 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %55
  %85 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %36) #27
  store i16 %85, ptr %73, align 2, !tbaa !44
  br label %86

86:                                               ; preds = %84, %55
  %87 = uitofp i16 %82 to double
  %88 = fcmp ogt double %35, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %36) #27
  store i16 %90, ptr %56, align 2, !tbaa !45
  br label %91

91:                                               ; preds = %89, %86
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !46
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  store i16 %93, ptr %94, align 2, !tbaa !46
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %97 = add nuw nsw i64 %57, 1
  %98 = load i64, ptr %11, align 8, !tbaa !40
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %55, label %100, !llvm.loop !132

100:                                              ; preds = %91, %52
  %101 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef %2) #28
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load ptr, ptr %37, align 8, !tbaa !49
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = add nsw i64 %41, 1
  %108 = load i64, ptr %13, align 8, !tbaa !39
  %109 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, i64 noundef %41, i64 noundef %108) #27
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 0, i32 %103
  br label %112

112:                                              ; preds = %100, %106, %44, %39
  %113 = phi i32 [ 0, %39 ], [ 0, %44 ], [ %111, %106 ], [ %103, %100 ]
  %114 = phi i64 [ %41, %39 ], [ %41, %44 ], [ %107, %106 ], [ %41, %100 ]
  %115 = add nuw nsw i64 %40, 1
  %116 = load i64, ptr %13, align 8, !tbaa !39
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %39, label %118, !llvm.loop !133

118:                                              ; preds = %112
  %119 = icmp eq i32 %113, 0
  %120 = tail call ptr @DestroyCacheView(ptr noundef %25) #23
  %121 = tail call ptr @DestroyCacheView(ptr noundef %24) #23
  %122 = tail call i32 @NormalizeImage(ptr noundef nonnull %15) #23
  %123 = tail call i32 @ContrastImage(ptr noundef nonnull %15, i32 noundef 1) #23
  br i1 %119, label %124, label %131

124:                                              ; preds = %118
  %125 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %131

126:                                              ; preds = %23
  %127 = tail call ptr @DestroyCacheView(ptr noundef %25) #23
  %128 = tail call ptr @DestroyCacheView(ptr noundef %24) #23
  %129 = tail call i32 @NormalizeImage(ptr noundef nonnull %15) #23
  %130 = tail call i32 @ContrastImage(ptr noundef nonnull %15, i32 noundef 1) #23
  br label %131

131:                                              ; preds = %126, %118, %124, %10, %20
  %132 = phi ptr [ null, %20 ], [ null, %10 ], [ %125, %124 ], [ %15, %118 ], [ %15, %126 ]
  ret ptr %132
}

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @ContrastImage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: optsize
declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BlurImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SketchImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #21
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %10 = load i64, ptr %9, align 8, !tbaa !40
  %11 = shl i64 %10, 1
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !39
  %14 = shl i64 %13, 1
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %11, i64 noundef %14, i32 noundef 1, ptr noundef %4) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %110, label %17

17:                                               ; preds = %5
  %18 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %4) #23
  %19 = tail call i32 @AccelerateRandomImage(ptr noundef nonnull %15, ptr noundef %4) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  call void @GetMagickPixelPacket(ptr noundef nonnull %15, ptr noundef nonnull %7) #23
  %22 = call fastcc ptr @AcquireRandomInfoThreadSet() #27
  %23 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %4) #23
  %24 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !39
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %22) #27
  br label %79

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  br label %36

36:                                               ; preds = %29, %68
  %37 = phi i64 [ 0, %29 ], [ %70, %68 ]
  %38 = phi i32 [ 1, %29 ], [ %69, %68 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %36
  %41 = load i64, ptr %30, align 8, !tbaa !40
  %42 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %23, i64 noundef 0, i64 noundef %37, i64 noundef %41, i64 noundef 1, ptr noundef %4) #28
  %43 = icmp eq ptr %42, null
  br i1 %43, label %68, label %44

44:                                               ; preds = %40
  %45 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %23) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !84
  %46 = load i64, ptr %30, align 8, !tbaa !40
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44, %58
  %49 = phi ptr [ %60, %58 ], [ %42, %44 ]
  %50 = phi i64 [ %61, %58 ], [ 0, %44 ]
  %51 = load ptr, ptr %22, align 8, !tbaa !16
  %52 = call double @GetPseudoRandomValue(ptr noundef %51) #23
  %53 = fmul double %52, 6.553500e+04
  %54 = fptrunc double %53 to float
  store float %54, ptr %31, align 8, !tbaa !90
  store float %54, ptr %32, align 4, !tbaa !92
  store float %54, ptr %33, align 8, !tbaa !93
  %55 = load i32, ptr %34, align 4, !tbaa !42
  %56 = icmp eq i32 %55, 12
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store float %54, ptr %35, align 8, !tbaa !96
  br label %58

58:                                               ; preds = %57, %48
  %59 = getelementptr inbounds i16, ptr %45, i64 %50
  call fastcc void @SetPixelPacket(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %49, ptr noundef %59) #27
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 1
  %61 = add nuw nsw i64 %50, 1
  %62 = load i64, ptr %30, align 8, !tbaa !40
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %48, label %64, !llvm.loop !134

64:                                               ; preds = %58, %44
  %65 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %23, ptr noundef %4) #28
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %40, %36, %64
  %69 = phi i32 [ %67, %64 ], [ 0, %36 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #21
  %70 = add nuw nsw i64 %37, 1
  %71 = load i64, ptr %24, align 8, !tbaa !39
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %36, label %73, !llvm.loop !135

73:                                               ; preds = %68
  %74 = icmp eq i32 %69, 0
  %75 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %22) #27
  br i1 %74, label %76, label %79

76:                                               ; preds = %73
  %77 = call ptr @DestroyCacheView(ptr noundef %23) #23
  %78 = call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %110

79:                                               ; preds = %27, %73, %17
  %80 = phi ptr [ %23, %73 ], [ %18, %17 ], [ %23, %27 ]
  %81 = call ptr @DestroyCacheView(ptr noundef %80) #23
  %82 = call ptr @MotionBlurImage(ptr noundef nonnull %15, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #23
  %83 = call ptr @DestroyImage(ptr noundef nonnull %15) #23
  %84 = icmp eq ptr %82, null
  br i1 %84, label %110, label %85

85:                                               ; preds = %79
  %86 = call ptr @EdgeImage(ptr noundef nonnull %82, double noundef %1, ptr noundef %4) #23
  store ptr %86, ptr %6, align 8, !tbaa !16
  %87 = call ptr @DestroyImage(ptr noundef nonnull %82) #23
  %88 = icmp eq ptr %86, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %85
  %90 = call i32 @NormalizeImage(ptr noundef nonnull %86) #23
  %91 = call i32 @NegateImage(ptr noundef nonnull %86, i32 noundef 0) #23
  %92 = call i32 @TransformImage(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull @.str.40) #23
  %93 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #23
  %94 = icmp eq ptr %93, null
  %95 = load ptr, ptr %6, align 8, !tbaa !16
  br i1 %94, label %96, label %98

96:                                               ; preds = %89
  %97 = call ptr @DestroyImage(ptr noundef %95) #23
  br label %110

98:                                               ; preds = %89
  %99 = call i32 @CompositeImage(ptr noundef nonnull %93, i32 noundef 9, ptr noundef %95, i64 noundef 0, i64 noundef 0) #23
  %100 = load ptr, ptr %6, align 8, !tbaa !16
  %101 = call ptr @DestroyImage(ptr noundef %100) #23
  store ptr %101, ptr %6, align 8, !tbaa !16
  %102 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #23
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call ptr @DestroyImage(ptr noundef nonnull %93) #23
  br label %110

106:                                              ; preds = %98
  %107 = call i32 @SetImageArtifact(ptr noundef nonnull %102, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #23
  %108 = call i32 @CompositeImage(ptr noundef nonnull %93, i32 noundef 4, ptr noundef nonnull %102, i64 noundef 0, i64 noundef 0) #23
  %109 = call ptr @DestroyImage(ptr noundef nonnull %102) #23
  br label %110

110:                                              ; preds = %85, %79, %5, %106, %104, %96, %76
  %111 = phi ptr [ %78, %76 ], [ null, %96 ], [ null, %104 ], [ %93, %106 ], [ null, %5 ], [ null, %79 ], [ null, %85 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret ptr %111
}

; Function Attrs: optsize
declare i32 @AccelerateRandomImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @MotionBlurImage(ptr noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SolarizeImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @SolarizeImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, ptr noundef nonnull %3) #27, !range !43
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SolarizeImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4590, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #23
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !42
  %14 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %13) #27, !range !43
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #23
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, ptr %0, align 8, !tbaa !95
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %23 = load i64, ptr %22, align 8, !tbaa !136
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %21
  %26 = and i32 %1, 1
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %29 = and i32 %1, 2
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %1, 4
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %25, %61
  %34 = phi i64 [ 0, %25 ], [ %62, %61 ]
  br i1 %27, label %43, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %28, align 8, !tbaa !137
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %34, i32 2
  %38 = load i16, ptr %37, align 2, !tbaa !41
  %39 = uitofp i16 %38 to double
  %40 = fcmp ogt double %39, %2
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = xor i16 %38, -1
  store i16 %42, ptr %37, align 2, !tbaa !41
  br label %43

43:                                               ; preds = %35, %41, %33
  br i1 %30, label %52, label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr %28, align 8, !tbaa !137
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 %34, i32 1
  %47 = load i16, ptr %46, align 2, !tbaa !44
  %48 = uitofp i16 %47 to double
  %49 = fcmp ogt double %48, %2
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = xor i16 %47, -1
  store i16 %51, ptr %46, align 2, !tbaa !44
  br label %52

52:                                               ; preds = %44, %50, %43
  br i1 %32, label %61, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %28, align 8, !tbaa !137
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 %34
  %56 = load i16, ptr %55, align 2, !tbaa !45
  %57 = uitofp i16 %56 to double
  %58 = fcmp ogt double %57, %2
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = xor i16 %56, -1
  store i16 %60, ptr %55, align 2, !tbaa !45
  br label %61

61:                                               ; preds = %52, %59, %53
  %62 = add nuw nsw i64 %34, 1
  %63 = icmp eq i64 %62, %23
  br i1 %63, label %64, label %33, !llvm.loop !138

64:                                               ; preds = %61, %21, %18
  %65 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #23
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %67 = load i64, ptr %66, align 8, !tbaa !39
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %137

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %71 = and i32 %1, 1
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %1, 2
  %74 = icmp eq i32 %73, 0
  %75 = and i32 %1, 4
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %78

78:                                               ; preds = %69, %131
  %79 = phi i64 [ 0, %69 ], [ %134, %131 ]
  %80 = phi i64 [ 0, %69 ], [ %133, %131 ]
  %81 = phi i32 [ 1, %69 ], [ %132, %131 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %131, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %70, align 8, !tbaa !40
  %85 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %65, i64 noundef 0, i64 noundef %79, i64 noundef %84, i64 noundef 1, ptr noundef %3) #28
  %86 = icmp eq ptr %85, null
  br i1 %86, label %131, label %87

87:                                               ; preds = %83
  %88 = load i64, ptr %70, align 8, !tbaa !40
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %87, %115
  %91 = phi ptr [ %116, %115 ], [ %85, %87 ]
  %92 = phi i64 [ %117, %115 ], [ 0, %87 ]
  br i1 %72, label %100, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 2
  %95 = load i16, ptr %94, align 2, !tbaa !41
  %96 = uitofp i16 %95 to double
  %97 = fcmp ogt double %96, %2
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = xor i16 %95, -1
  store i16 %99, ptr %94, align 2, !tbaa !41
  br label %100

100:                                              ; preds = %93, %98, %90
  br i1 %74, label %108, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 1
  %103 = load i16, ptr %102, align 2, !tbaa !44
  %104 = uitofp i16 %103 to double
  %105 = fcmp ogt double %104, %2
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = xor i16 %103, -1
  store i16 %107, ptr %102, align 2, !tbaa !44
  br label %108

108:                                              ; preds = %101, %106, %100
  br i1 %76, label %115, label %109

109:                                              ; preds = %108
  %110 = load i16, ptr %91, align 2, !tbaa !45
  %111 = uitofp i16 %110 to double
  %112 = fcmp ogt double %111, %2
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = xor i16 %110, -1
  store i16 %114, ptr %91, align 2, !tbaa !45
  br label %115

115:                                              ; preds = %109, %113, %108
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %117 = add nuw nsw i64 %92, 1
  %118 = icmp eq i64 %117, %88
  br i1 %118, label %119, label %90, !llvm.loop !139

119:                                              ; preds = %115, %87
  %120 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %65, ptr noundef %3) #28
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = load ptr, ptr %77, align 8, !tbaa !49
  %124 = icmp eq ptr %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = add nsw i64 %80, 1
  %127 = load i64, ptr %66, align 8, !tbaa !39
  %128 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, i64 noundef %80, i64 noundef %127) #27
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 0, i32 %122
  br label %131

131:                                              ; preds = %119, %125, %83, %78
  %132 = phi i32 [ 0, %78 ], [ 0, %83 ], [ %130, %125 ], [ %122, %119 ]
  %133 = phi i64 [ %80, %78 ], [ %80, %83 ], [ %126, %125 ], [ %80, %119 ]
  %134 = add nuw nsw i64 %79, 1
  %135 = load i64, ptr %66, align 8, !tbaa !39
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %78, label %137, !llvm.loop !140

137:                                              ; preds = %131, %64
  %138 = phi i32 [ 1, %64 ], [ %132, %131 ]
  %139 = tail call ptr @DestroyCacheView(ptr noundef %65) #23
  ret i32 %138
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SteganoImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4748, ptr noundef nonnull @.str.22, ptr noundef nonnull %9) #23
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %173, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %12, i32 noundef 1) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %18) #23
  %19 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #23
  br label %173

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 9
  store i64 16, ptr %21, align 8, !tbaa !141
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 23
  %23 = load i64, ptr %22, align 8, !tbaa !142
  %24 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %2) #23
  %25 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %12, ptr noundef %2) #23
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
  %37 = load i64, ptr %26, align 8, !tbaa !39
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
  %47 = load i64, ptr %27, align 8, !tbaa !40
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %136

49:                                               ; preds = %41, %113
  %50 = phi i64 [ %121, %113 ], [ %44, %41 ]
  %51 = phi i64 [ %125, %113 ], [ %45, %41 ]
  %52 = phi i64 [ %126, %113 ], [ 0, %41 ]
  %53 = phi i32 [ %116, %113 ], [ %46, %41 ]
  %54 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %24, i64 noundef %52, i64 noundef %43, ptr noundef nonnull %4, ptr noundef %2) #23
  %55 = load i64, ptr %28, align 8, !tbaa !40
  %56 = sdiv i64 %50, %55
  %57 = srem i64 %50, %55
  %58 = load i64, ptr %29, align 8, !tbaa !39
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %131

60:                                               ; preds = %49
  %61 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %25, i64 noundef %57, i64 noundef %56, i64 noundef 1, i64 noundef 1, ptr noundef %2) #28
  %62 = icmp eq ptr %61, null
  br i1 %62, label %131, label %63

63:                                               ; preds = %60
  switch i32 %53, label %110 [
    i32 0, label %64
    i32 1, label %80
    i32 2, label %96
  ]

64:                                               ; preds = %63
  %65 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %4) #28
  %66 = call fastcc zeroext i16 @ClampToQuantum(float noundef %65) #27
  %67 = zext i16 %66 to i64
  %68 = and i64 %40, %67
  %69 = icmp eq i64 %68, 0
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 2
  %71 = load i16, ptr %70, align 2, !tbaa !41
  %72 = zext i16 %71 to i64
  %73 = shl nuw nsw i64 1, %51
  %74 = or i64 %73, %72
  %75 = xor i64 %73, -1
  %76 = and i64 %72, %75
  %77 = select i1 %69, i64 %76, i64 %74
  %78 = trunc i64 %77 to i16
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 2
  store i16 %78, ptr %79, align 2, !tbaa !41
  br label %110

80:                                               ; preds = %63
  %81 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %4) #28
  %82 = call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #27
  %83 = zext i16 %82 to i64
  %84 = and i64 %40, %83
  %85 = icmp eq i64 %84, 0
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 1
  %87 = load i16, ptr %86, align 2, !tbaa !44
  %88 = zext i16 %87 to i64
  %89 = shl nuw nsw i64 1, %51
  %90 = or i64 %89, %88
  %91 = xor i64 %89, -1
  %92 = and i64 %88, %91
  %93 = select i1 %85, i64 %92, i64 %90
  %94 = trunc i64 %93 to i16
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 1
  store i16 %94, ptr %95, align 2, !tbaa !44
  br label %110

96:                                               ; preds = %63
  %97 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %4) #28
  %98 = call fastcc zeroext i16 @ClampToQuantum(float noundef %97) #27
  %99 = zext i16 %98 to i64
  %100 = and i64 %40, %99
  %101 = icmp eq i64 %100, 0
  %102 = load i16, ptr %61, align 2, !tbaa !45
  %103 = zext i16 %102 to i64
  %104 = shl nuw nsw i64 1, %51
  %105 = or i64 %104, %103
  %106 = xor i64 %104, -1
  %107 = and i64 %103, %106
  %108 = select i1 %101, i64 %107, i64 %105
  %109 = trunc i64 %108 to i16
  store i16 %109, ptr %61, align 2, !tbaa !45
  br label %110

110:                                              ; preds = %63, %96, %80, %64
  %111 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef %2) #28
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %110
  %114 = add nsw i32 %53, 1
  %115 = icmp eq i32 %114, 3
  %116 = select i1 %115, i32 0, i32 %114
  %117 = add nsw i64 %50, 1
  %118 = load i64, ptr %28, align 8, !tbaa !40
  %119 = mul i64 %118, %118
  %120 = icmp eq i64 %117, %119
  %121 = select i1 %120, i64 0, i64 %117
  %122 = load i64, ptr %22, align 8, !tbaa !142
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i64
  %125 = add nsw i64 %51, %124
  %126 = add nuw nsw i64 %52, 1
  %127 = load i64, ptr %27, align 8, !tbaa !40
  %128 = icmp slt i64 %126, %127
  %129 = icmp slt i64 %125, 16
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %49, label %131, !llvm.loop !143

131:                                              ; preds = %113, %49, %60, %110
  %132 = phi i32 [ %53, %110 ], [ %53, %60 ], [ %53, %49 ], [ %116, %113 ]
  %133 = phi i64 [ %51, %110 ], [ %51, %60 ], [ %51, %49 ], [ %125, %113 ]
  %134 = phi i64 [ %50, %110 ], [ %50, %60 ], [ %50, %49 ], [ %121, %113 ]
  %135 = load i64, ptr %26, align 8, !tbaa !39
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
  br i1 %144, label %41, label %145, !llvm.loop !144

145:                                              ; preds = %136, %31
  %146 = phi i32 [ %36, %31 ], [ %138, %136 ]
  %147 = phi i64 [ %33, %31 ], [ %139, %136 ]
  %148 = phi i64 [ %32, %31 ], [ %140, %136 ]
  %149 = load ptr, ptr %30, align 8, !tbaa !49
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = sub nuw nsw i64 16, %34
  %153 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, i64 noundef %152, i64 noundef 16) #27
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %154, i32 0, i32 %35
  br label %156

156:                                              ; preds = %145, %151
  %157 = phi i32 [ %155, %151 ], [ %35, %145 ]
  %158 = add nsw i64 %34, -1
  %159 = icmp ne i64 %34, 0
  %160 = icmp slt i64 %147, 16
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %31, label %162, !llvm.loop !145

162:                                              ; preds = %156
  %163 = call ptr @DestroyCacheView(ptr noundef %25) #23
  %164 = call ptr @DestroyCacheView(ptr noundef %24) #23
  %165 = load i32, ptr %12, align 8, !tbaa !95
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = call i32 @SyncImage(ptr noundef nonnull %12) #23
  br label %169

169:                                              ; preds = %167, %162
  %170 = icmp eq i32 %157, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %169
  %172 = call ptr @DestroyImage(ptr noundef nonnull %12) #23
  br label %173

173:                                              ; preds = %169, %171, %11, %17
  %174 = phi ptr [ null, %17 ], [ null, %11 ], [ %172, %171 ], [ %12, %169 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %174
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StereoImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @StereoAnaglyphImage(ptr noundef %0, ptr noundef %1, i64 noundef 0, i64 noundef 0, ptr noundef %2) #27
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StereoAnaglyphImage(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4908, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #23
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !40
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !39
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4918, i32 noundef 465, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, ptr noundef nonnull %25) #23
  br label %108

27:                                               ; preds = %18
  %28 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %14, i64 noundef %20, i32 noundef 1, ptr noundef %4) #23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %108, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %28, i32 noundef 1) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %34) #23
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #23
  br label %108

36:                                               ; preds = %30
  %37 = tail call i32 @SetImageColorspace(ptr noundef nonnull %28, i32 noundef 13) #23
  %38 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %39 = load i64, ptr %38, align 8, !tbaa !39
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
  %49 = load i64, ptr %13, align 8, !tbaa !40
  %50 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef %42, i64 noundef %48, i64 noundef %49, i64 noundef 1, ptr noundef %4) #23
  %51 = load i64, ptr %15, align 8, !tbaa !40
  %52 = tail call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef 0, i64 noundef %46, i64 noundef %51, i64 noundef 1, ptr noundef %4) #23
  %53 = load i64, ptr %43, align 8, !tbaa !40
  %54 = tail call ptr @QueueAuthenticPixels(ptr noundef nonnull %28, i64 noundef 0, i64 noundef %46, i64 noundef %53, i64 noundef 1, ptr noundef %4) #23
  %55 = icmp eq ptr %50, null
  %56 = icmp eq ptr %52, null
  %57 = select i1 %55, i1 true, i1 %56
  %58 = icmp eq ptr %54, null
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %103, label %60

60:                                               ; preds = %45
  %61 = load i64, ptr %43, align 8, !tbaa !40
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %84, %63 ], [ %54, %60 ]
  %65 = phi i64 [ %85, %63 ], [ 0, %60 ]
  %66 = phi ptr [ %83, %63 ], [ %52, %60 ]
  %67 = phi ptr [ %82, %63 ], [ %50, %60 ]
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 2
  %69 = load i16, ptr %68, align 2, !tbaa !41
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  store i16 %69, ptr %70, align 2, !tbaa !41
  %71 = load <2 x i16>, ptr %66, align 2, !tbaa !47
  store <2 x i16> %71, ptr %64, align 2, !tbaa !47
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  %73 = load i16, ptr %72, align 2, !tbaa !46
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 3
  %76 = load i16, ptr %75, align 2, !tbaa !46
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %77, %74
  %79 = lshr i32 %78, 1
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 3
  store i16 %80, ptr %81, align 2, !tbaa !46
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %85 = add nuw nsw i64 %65, 1
  %86 = icmp eq i64 %85, %61
  br i1 %86, label %87, label %63, !llvm.loop !146

87:                                               ; preds = %63, %60
  %88 = tail call i32 @SyncAuthenticPixels(ptr noundef nonnull %28, ptr noundef %4) #23
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %44, align 8, !tbaa !49
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load i64, ptr %38, align 8, !tbaa !39
  %95 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.46, i64 noundef %46, i64 noundef %94) #27
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 0, i32 %47
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi i32 [ %47, %90 ], [ %97, %93 ]
  %100 = add nuw nsw i64 %46, 1
  %101 = load i64, ptr %38, align 8, !tbaa !39
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %45, label %103, !llvm.loop !147

103:                                              ; preds = %98, %87, %45
  %104 = phi i32 [ %99, %98 ], [ %47, %87 ], [ %47, %45 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #23
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
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5050, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #23
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %135, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %13, i32 noundef 1) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %19) #23
  %20 = tail call ptr @DestroyImage(ptr noundef nonnull %13) #23
  br label %135

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 12, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !83
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 6
  store i32 1, ptr %26, align 8, !tbaa !57
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !40
  %30 = uitofp i64 %29 to double
  %31 = fmul double %30, 5.000000e-01
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !39
  %34 = uitofp i64 %33 to double
  %35 = fmul double %34, 5.000000e-01
  %36 = tail call fastcc double @MagickMax(double noundef %31, double noundef %35) #27
  %37 = icmp ugt i64 %29, %33
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = fdiv double %30, %34
  br label %44

40:                                               ; preds = %27
  %41 = icmp ult i64 %29, %33
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = fdiv double %34, %30
  br label %44

44:                                               ; preds = %40, %42, %38
  %45 = phi double [ 1.000000e+00, %38 ], [ %43, %42 ], [ 1.000000e+00, %40 ]
  %46 = phi double [ %39, %38 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %40 ]
  %47 = tail call fastcc double @DegreesToRadians(double noundef %1) #27
  call void @GetMagickPixelPacket(ptr noundef nonnull %13, ptr noundef nonnull %4) #23
  %48 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #23
  %49 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %13, ptr noundef %2) #23
  %50 = load i64, ptr %32, align 8, !tbaa !39
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %132

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 7
  %54 = fmul double %36, %36
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %56

56:                                               ; preds = %52, %120
  %57 = phi i32 [ 1, %52 ], [ %122, %120 ]
  %58 = phi i64 [ 0, %52 ], [ %121, %120 ]
  %59 = phi i64 [ 0, %52 ], [ %123, %120 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #21
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %120, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %53, align 8, !tbaa !40
  %63 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %49, i64 noundef 0, i64 noundef %59, i64 noundef %62, i64 noundef 1, ptr noundef %2) #28
  %64 = icmp eq ptr %63, null
  br i1 %64, label %120, label %65

65:                                               ; preds = %61
  %66 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %49) #23
  %67 = sitofp i64 %59 to double
  %68 = fsub double %67, %35
  %69 = fmul double %46, %68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !84
  %70 = load i64, ptr %28, align 8, !tbaa !40
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %65
  %73 = fmul double %69, %69
  br label %74

74:                                               ; preds = %72, %103
  %75 = phi i64 [ %70, %72 ], [ %104, %103 ]
  %76 = phi ptr [ %63, %72 ], [ %105, %103 ]
  %77 = phi i64 [ 0, %72 ], [ %106, %103 ]
  %78 = sitofp i64 %77 to double
  %79 = fsub double %78, %31
  %80 = fmul double %45, %79
  %81 = call double @llvm.fmuladd.f64(double %80, double %80, double %73)
  %82 = fcmp olt double %81, %54
  br i1 %82, label %83, label %103

83:                                               ; preds = %74
  %84 = call double @llvm.sqrt.f64(double %81)
  %85 = fdiv double %84, %36
  %86 = fsub double 1.000000e+00, %85
  %87 = fmul double %47, %86
  %88 = fmul double %86, %87
  %89 = call double @sin(double noundef %88) #23
  %90 = call double @cos(double noundef %88) #23
  %91 = fneg double %89
  %92 = fmul double %69, %91
  %93 = call double @llvm.fmuladd.f64(double %90, double %80, double %92)
  %94 = fdiv double %93, %45
  %95 = fadd double %31, %94
  %96 = fmul double %69, %90
  %97 = call double @llvm.fmuladd.f64(double %89, double %80, double %96)
  %98 = fdiv double %97, %46
  %99 = fadd double %35, %98
  %100 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %48, i32 noundef 0, double noundef %95, double noundef %99, ptr noundef nonnull %5, ptr noundef %2) #23
  %101 = getelementptr inbounds i16, ptr %66, i64 %77
  call fastcc void @SetPixelPacket(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %76, ptr noundef %101) #27
  %102 = load i64, ptr %28, align 8, !tbaa !40
  br label %103

103:                                              ; preds = %83, %74
  %104 = phi i64 [ %102, %83 ], [ %75, %74 ]
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %106 = add nuw nsw i64 %77, 1
  %107 = icmp slt i64 %106, %104
  br i1 %107, label %74, label %108, !llvm.loop !148

108:                                              ; preds = %103, %65
  %109 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %49, ptr noundef %2) #28
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load ptr, ptr %55, align 8, !tbaa !49
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = add nsw i64 %58, 1
  %116 = load i64, ptr %32, align 8, !tbaa !39
  %117 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, i64 noundef %58, i64 noundef %116) #27
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 0, i32 %111
  br label %120

120:                                              ; preds = %108, %114, %61, %56
  %121 = phi i64 [ %58, %56 ], [ %58, %61 ], [ %115, %114 ], [ %58, %108 ]
  %122 = phi i32 [ 0, %56 ], [ 0, %61 ], [ %119, %114 ], [ %111, %108 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #21
  %123 = add nuw nsw i64 %59, 1
  %124 = load i64, ptr %32, align 8, !tbaa !39
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %56, label %126, !llvm.loop !149

126:                                              ; preds = %120
  %127 = icmp eq i32 %122, 0
  %128 = call ptr @DestroyCacheView(ptr noundef %49) #23
  %129 = call ptr @DestroyCacheView(ptr noundef %48) #23
  br i1 %127, label %130, label %135

130:                                              ; preds = %126
  %131 = call ptr @DestroyImage(ptr noundef nonnull %13) #23
  br label %135

132:                                              ; preds = %44
  %133 = call ptr @DestroyCacheView(ptr noundef %49) #23
  %134 = call ptr @DestroyCacheView(ptr noundef %48) #23
  br label %135

135:                                              ; preds = %132, %126, %130, %12, %18
  %136 = phi ptr [ null, %18 ], [ null, %12 ], [ %131, %130 ], [ %13, %126 ], [ %13, %132 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #21
  ret ptr %136
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #8 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TintImage(ptr noundef %0, ptr noundef %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._PixelPacket, align 8
  %6 = alloca %struct._GeometryInfo, align 8
  store i64 %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !38
  %9 = icmp eq i32 %8, 0
  %10 = lshr i64 %2, 32
  %11 = trunc i64 %10 to i16
  %12 = lshr i64 %2, 16
  %13 = trunc i64 %12 to i16
  %14 = trunc i64 %2 to i16
  br i1 %9, label %18, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5240, ptr noundef nonnull @.str.22, ptr noundef nonnull %16) #23
  br label %18

18:                                               ; preds = %15, %4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !39
  %23 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %20, i64 noundef %22, i32 noundef 1, ptr noundef %3) #23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %171, label %25

25:                                               ; preds = %18
  %26 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %23, i32 noundef 1) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %29) #23
  %30 = tail call ptr @DestroyImage(ptr noundef nonnull %23) #23
  br label %171

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !42
  %34 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %33) #27, !range !43
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = call fastcc i32 @IsPixelGray(ptr noundef nonnull %5) #27, !range !43
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = tail call i32 @SetImageColorspace(ptr noundef nonnull %23, i32 noundef 13) #23
  br label %41

41:                                               ; preds = %39, %36, %31
  %42 = icmp eq ptr %1, null
  br i1 %42, label %171, label %43

43:                                               ; preds = %41
  %44 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %6) #23
  %45 = load double, ptr %6, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 2
  %49 = load double, ptr %48, align 8
  %50 = call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef nonnull %5) #27
  %51 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #23
  %52 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %23, ptr noundef %3) #23
  %53 = load i64, ptr %21, align 8, !tbaa !39
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %168

55:                                               ; preds = %43
  %56 = and i32 %44, 1
  %57 = icmp eq i32 %56, 0
  %58 = fptrunc double %45 to float
  %59 = fptrunc double %49 to float
  %60 = select i1 %57, float %58, float %59
  %61 = uitofp i16 %14 to float
  %62 = fmul float %60, %61
  %63 = fpext float %62 to double
  %64 = fdiv double %63, 1.000000e+02
  %65 = uitofp i16 %50 to double
  %66 = fsub double %64, %65
  %67 = fptrunc double %66 to float
  %68 = and i32 %44, 8
  %69 = icmp eq i32 %68, 0
  %70 = fptrunc double %47 to float
  %71 = select i1 %69, float %58, float %70
  %72 = uitofp i16 %13 to float
  %73 = fmul float %71, %72
  %74 = fpext float %73 to double
  %75 = fdiv double %74, 1.000000e+02
  %76 = fsub double %75, %65
  %77 = fptrunc double %76 to float
  %78 = uitofp i16 %11 to float
  %79 = fmul float %58, %78
  %80 = fpext float %79 to double
  %81 = fdiv double %80, 1.000000e+02
  %82 = fsub double %81, %65
  %83 = fptrunc double %82 to float
  %84 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 7
  %85 = fpext float %83 to double
  %86 = fpext float %77 to double
  %87 = fpext float %67 to double
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %89

89:                                               ; preds = %55, %156
  %90 = phi i32 [ 1, %55 ], [ %158, %156 ]
  %91 = phi i64 [ 0, %55 ], [ %157, %156 ]
  %92 = phi i64 [ 0, %55 ], [ %159, %156 ]
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %156, label %94

94:                                               ; preds = %89
  %95 = load i64, ptr %19, align 8, !tbaa !40
  %96 = call ptr @GetCacheViewVirtualPixels(ptr noundef %51, i64 noundef 0, i64 noundef %92, i64 noundef %95, i64 noundef 1, ptr noundef %3) #28
  %97 = load i64, ptr %84, align 8, !tbaa !40
  %98 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %52, i64 noundef 0, i64 noundef %92, i64 noundef %97, i64 noundef 1, ptr noundef %3) #28
  %99 = icmp eq ptr %96, null
  %100 = icmp eq ptr %98, null
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %156, label %102

102:                                              ; preds = %94
  %103 = load i64, ptr %19, align 8, !tbaa !40
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %144

105:                                              ; preds = %102, %105
  %106 = phi i64 [ %142, %105 ], [ 0, %102 ]
  %107 = phi ptr [ %141, %105 ], [ %98, %102 ]
  %108 = phi ptr [ %140, %105 ], [ %96, %102 ]
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  %110 = load i16, ptr %109, align 2, !tbaa !41
  %111 = uitofp i16 %110 to double
  %112 = call double @llvm.fmuladd.f64(double %111, double 0x3EF0001000100010, double -5.000000e-01)
  %113 = fmul double %112, %112
  %114 = call double @llvm.fmuladd.f64(double %113, double -4.000000e+00, double 1.000000e+00)
  %115 = call double @llvm.fmuladd.f64(double %85, double %114, double %111)
  %116 = fptrunc double %115 to float
  %117 = call fastcc zeroext i16 @ClampToQuantum(float noundef %116) #27
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %117, ptr %118, align 2, !tbaa !41
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  %120 = load i16, ptr %119, align 2, !tbaa !44
  %121 = uitofp i16 %120 to double
  %122 = call double @llvm.fmuladd.f64(double %121, double 0x3EF0001000100010, double -5.000000e-01)
  %123 = fmul double %122, %122
  %124 = call double @llvm.fmuladd.f64(double %123, double -4.000000e+00, double 1.000000e+00)
  %125 = call double @llvm.fmuladd.f64(double %86, double %124, double %121)
  %126 = fptrunc double %125 to float
  %127 = call fastcc zeroext i16 @ClampToQuantum(float noundef %126) #27
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 1
  store i16 %127, ptr %128, align 2, !tbaa !44
  %129 = load i16, ptr %108, align 2, !tbaa !45
  %130 = uitofp i16 %129 to double
  %131 = call double @llvm.fmuladd.f64(double %130, double 0x3EF0001000100010, double -5.000000e-01)
  %132 = fmul double %131, %131
  %133 = call double @llvm.fmuladd.f64(double %132, double -4.000000e+00, double 1.000000e+00)
  %134 = call double @llvm.fmuladd.f64(double %87, double %133, double %130)
  %135 = fptrunc double %134 to float
  %136 = call fastcc zeroext i16 @ClampToQuantum(float noundef %135) #27
  store i16 %136, ptr %107, align 2, !tbaa !45
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !46
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 3
  store i16 %138, ptr %139, align 2, !tbaa !46
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 1
  %142 = add nuw nsw i64 %106, 1
  %143 = icmp eq i64 %142, %103
  br i1 %143, label %144, label %105, !llvm.loop !150

144:                                              ; preds = %105, %102
  %145 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %52, ptr noundef %3) #28
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = load ptr, ptr %88, align 8, !tbaa !49
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %144
  %151 = add nsw i64 %91, 1
  %152 = load i64, ptr %21, align 8, !tbaa !39
  %153 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.48, i64 noundef %91, i64 noundef %152) #27
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %154, i32 0, i32 %147
  br label %156

156:                                              ; preds = %144, %150, %94, %89
  %157 = phi i64 [ %91, %89 ], [ %91, %94 ], [ %151, %150 ], [ %91, %144 ]
  %158 = phi i32 [ 0, %89 ], [ 0, %94 ], [ %155, %150 ], [ %147, %144 ]
  %159 = add nuw nsw i64 %92, 1
  %160 = load i64, ptr %21, align 8, !tbaa !39
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %89, label %162, !llvm.loop !151

162:                                              ; preds = %156
  %163 = icmp eq i32 %158, 0
  %164 = call ptr @DestroyCacheView(ptr noundef %52) #23
  %165 = call ptr @DestroyCacheView(ptr noundef %51) #23
  br i1 %163, label %166, label %171

166:                                              ; preds = %162
  %167 = call ptr @DestroyImage(ptr noundef nonnull %23) #23
  br label %171

168:                                              ; preds = %43
  %169 = call ptr @DestroyCacheView(ptr noundef %52) #23
  %170 = call ptr @DestroyCacheView(ptr noundef %51) #23
  br label %171

171:                                              ; preds = %168, %162, %166, %41, %18, %28
  %172 = phi ptr [ null, %28 ], [ null, %18 ], [ %23, %41 ], [ %167, %166 ], [ %23, %162 ], [ %23, %168 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  ret ptr %172
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @PixelPacketIntensity(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !41
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !44
  %6 = icmp eq i16 %3, %5
  %7 = load i16, ptr %0, align 2, !tbaa !45
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
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #27
  br label %19

19:                                               ; preds = %1, %10
  %20 = phi i16 [ %18, %10 ], [ %3, %1 ]
  ret i16 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @VignetteImage(ptr noundef %0, double noundef %1, double noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #21
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5405, ptr noundef nonnull @.str.22, ptr noundef nonnull %12) #23
  br label %14

14:                                               ; preds = %11, %6
  %15 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %74, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %15, i32 noundef 1) #23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %21) #23
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %74

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 6
  store i32 1, ptr %24, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !40
  %27 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !39
  %29 = tail call ptr @CloneImage(ptr noundef nonnull %15, i64 noundef %26, i64 noundef %28, i32 noundef 1, ptr noundef %5) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %74

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 12
  %35 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.49, ptr noundef nonnull %34, ptr noundef %5) #23
  %36 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %29) #23
  %37 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #23
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 5
  %39 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.50, ptr noundef nonnull %38, ptr noundef %5) #23
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 6
  %41 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.50, ptr noundef nonnull %40, ptr noundef %5) #23
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !40
  %44 = uitofp i64 %43 to double
  %45 = fmul double %44, 5.000000e-01
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !39
  %48 = uitofp i64 %47 to double
  %49 = fmul double %48, 5.000000e-01
  %50 = sitofp i64 %3 to double
  %51 = fsub double %45, %50
  %52 = sitofp i64 %4 to double
  %53 = fsub double %49, %52
  %54 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.51, double noundef %45, double noundef %49, double noundef %51, double noundef %53) #23
  %55 = call ptr @AcquireString(ptr noundef nonnull %7) #23
  store ptr %55, ptr %37, align 8, !tbaa !152
  %56 = call i32 @DrawImage(ptr noundef nonnull %29, ptr noundef nonnull %37) #23
  %57 = call ptr @DestroyDrawInfo(ptr noundef nonnull %37) #23
  %58 = call ptr @BlurImage(ptr noundef nonnull %29, double noundef %1, double noundef %2, ptr noundef %5) #23
  %59 = call ptr @DestroyImage(ptr noundef nonnull %29) #23
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %33
  %62 = call ptr @DestroyImage(ptr noundef nonnull %15) #23
  br label %74

63:                                               ; preds = %33
  %64 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 6
  store i32 0, ptr %64, align 8, !tbaa !57
  %65 = call i32 @CompositeImage(ptr noundef nonnull %15, i32 noundef 17, ptr noundef nonnull %58, i64 noundef 0, i64 noundef 0) #23
  %66 = call ptr @DestroyImage(ptr noundef nonnull %58) #23
  %67 = call ptr @MergeImageLayers(ptr noundef nonnull %15, i32 noundef 14, ptr noundef %5) #23
  %68 = call ptr @DestroyImage(ptr noundef nonnull %15) #23
  %69 = icmp eq ptr %67, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !42
  %73 = call i32 @TransformImageColorspace(ptr noundef nonnull %67, i32 noundef %72) #23
  br label %74

74:                                               ; preds = %63, %70, %14, %61, %31, %20
  %75 = phi ptr [ null, %20 ], [ null, %31 ], [ null, %61 ], [ null, %14 ], [ %67, %70 ], [ null, %63 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #21
  ret ptr %75
}

; Function Attrs: optsize
declare i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @MergeImageLayers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: optsize
declare i32 @SetCacheViewVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #8 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @FxOperatorPrecedence(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !37
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %155, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__ctype_b_loc() #24
  br label %7

7:                                                ; preds = %5, %148
  %8 = phi i8 [ %3, %5 ], [ %153, %148 ]
  %9 = phi i64 [ 0, %5 ], [ %74, %148 ]
  %10 = phi i32 [ 0, %5 ], [ %152, %148 ]
  %11 = phi ptr [ null, %5 ], [ %144, %148 ]
  %12 = phi i32 [ 1, %5 ], [ %143, %148 ]
  %13 = phi ptr [ %0, %5 ], [ %151, %148 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !16
  %15 = icmp eq i32 %10, 64
  br label %16

16:                                               ; preds = %7, %25
  %17 = phi i8 [ %8, %7 ], [ %27, %25 ]
  %18 = phi ptr [ %13, %7 ], [ %26, %25 ]
  %19 = zext i8 %17 to i64
  %20 = getelementptr inbounds i16, ptr %14, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !47
  %22 = and i16 %21, 8192
  %23 = icmp ne i16 %22, 0
  %24 = select i1 %23, i1 true, i1 %15
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = getelementptr inbounds i8, ptr %18, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !37
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %155, label %16, !llvm.loop !153

29:                                               ; preds = %16
  switch i8 %17, label %67 [
    i8 65, label %30
    i8 97, label %30
    i8 74, label %50
    i8 106, label %50
    i8 35, label %58
  ]

30:                                               ; preds = %29, %29
  %31 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.60, i64 noundef 5) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %18, i64 5
  br label %67

35:                                               ; preds = %30
  %36 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.63, i64 noundef 5) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %18, i64 5
  br label %67

40:                                               ; preds = %35
  %41 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.67, i64 noundef 5) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %18, i64 5
  br label %67

45:                                               ; preds = %40
  %46 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.66, i64 noundef 5) #23
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i64 5, i64 0
  %49 = getelementptr inbounds i8, ptr %18, i64 %48
  br label %67

50:                                               ; preds = %29, %29
  %51 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.103, i64 noundef 2) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @LocaleNCompare(ptr noundef nonnull %18, ptr noundef nonnull @.str.104, i64 noundef 2) #23
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds i8, ptr %18, i64 2
  br label %67

58:                                               ; preds = %29, %58
  %59 = phi ptr [ %60, %58 ], [ %18, %29 ]
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !37
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i16, ptr %14, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !47
  %65 = and i16 %64, 4096
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %58, !llvm.loop !154

67:                                               ; preds = %58, %45, %29, %53, %56, %43, %38, %33
  %68 = phi ptr [ %18, %29 ], [ %57, %56 ], [ %18, %53 ], [ %34, %33 ], [ %39, %38 ], [ %44, %43 ], [ %49, %45 ], [ %59, %58 ]
  %69 = and i32 %10, -33
  %70 = icmp eq i32 %69, 91
  %71 = icmp eq i32 %69, 93
  %72 = sext i1 %71 to i64
  %73 = select i1 %70, i64 1, i64 %72
  %74 = add i64 %73, %9
  %75 = icmp eq i64 %74, 0
  %76 = load i8, ptr %68, align 1, !tbaa !37
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
  %81 = load ptr, ptr %6, align 8, !tbaa !16
  %82 = and i32 %10, 255
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds i16, ptr %81, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !47
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
  %93 = load i16, ptr %92, align 2, !tbaa !47
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
  %105 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.150, i32 %104, i64 3)
  %106 = icmp eq ptr %105, null
  %107 = select i1 %106, i32 5, i32 0
  br label %137

108:                                              ; preds = %77, %77, %77
  br label %137

109:                                              ; preds = %77, %77
  %110 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.151, i32 %10, i64 15)
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %6, align 8, !tbaa !16
  %114 = sext i32 %10 to i64
  %115 = getelementptr inbounds i16, ptr %113, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !47
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
  %146 = tail call fastcc ptr @FxSubexpression(ptr noundef nonnull %68, ptr noundef %1) #27
  %147 = load i8, ptr %146, align 1, !tbaa !37
  br label %148

148:                                              ; preds = %142, %145
  %149 = phi i8 [ %147, %145 ], [ %76, %142 ]
  %150 = phi ptr [ %146, %145 ], [ %68, %142 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  %152 = sext i8 %149 to i32
  %153 = load i8, ptr %151, align 1, !tbaa !37
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %7, !llvm.loop !153

155:                                              ; preds = %148, %25, %2
  %156 = phi ptr [ null, %2 ], [ %11, %25 ], [ %144, %148 ]
  ret ptr %156
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @StringToken(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acosh(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize
declare double @j1(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asinh(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atanh(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #13

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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !12
  %23 = tail call i64 @GetImageIndexInList(ptr noundef %22) #23
  %24 = sitofp i64 %2 to double
  %25 = sitofp i64 %3 to double
  %26 = tail call ptr @__ctype_b_loc() #24
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = getelementptr inbounds i8, ptr %4, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !37
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %27, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !47
  %33 = and i16 %32, 1024
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %151

35:                                               ; preds = %6
  %36 = load i8, ptr %4, align 1, !tbaa !37
  %37 = sext i8 %36 to i32
  %38 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.153, i32 %37, i64 4)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %83, label %40

40:                                               ; preds = %35
  switch i8 %36, label %41 [
    i8 118, label %45
    i8 117, label %46
  ]

41:                                               ; preds = %40
  %42 = load ptr, ptr %0, align 8, !tbaa !12
  %43 = tail call i64 @GetImageIndexInList(ptr noundef %42) #23
  %44 = load i8, ptr %28, align 1, !tbaa !37
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
  %56 = load i8, ptr %54, align 1, !tbaa !37
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
  store i8 %56, ptr %55, align 1, !tbaa !37
  br label %52, !llvm.loop !155

66:                                               ; preds = %52, %59
  %67 = phi i64 [ 0, %59 ], [ %53, %52 ]
  store i8 0, ptr %55, align 1, !tbaa !37
  %68 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5) #27
  %69 = fadd double %68, 5.000000e-01
  %70 = fptosi double %69 to i64
  %71 = getelementptr inbounds i8, ptr %54, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !37
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
  %82 = load i8, ptr %81, align 1, !tbaa !37
  br label %83

83:                                               ; preds = %73, %35
  %84 = phi i8 [ %82, %73 ], [ %36, %35 ]
  %85 = phi i64 [ %75, %73 ], [ %23, %35 ]
  %86 = phi i64 [ %76, %73 ], [ 0, %35 ]
  %87 = phi ptr [ %81, %73 ], [ %4, %35 ]
  %88 = icmp eq i8 %84, 112
  br i1 %88, label %89, label %151

89:                                               ; preds = %83
  %90 = load ptr, ptr %26, align 8, !tbaa !16
  %91 = getelementptr inbounds i8, ptr %87, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !37
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds i16, ptr %90, i64 %93
  %95 = load i16, ptr %94, align 2, !tbaa !47
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
  %106 = load i8, ptr %104, align 1, !tbaa !37
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
  store i8 %106, ptr %105, align 1, !tbaa !37
  br label %102, !llvm.loop !156

116:                                              ; preds = %102, %109
  store i8 0, ptr %105, align 1, !tbaa !37
  %117 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5) #27
  %118 = load double, ptr %9, align 8, !tbaa !66
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
  %127 = load i8, ptr %125, align 1, !tbaa !37
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
  store i8 %127, ptr %126, align 1, !tbaa !37
  br label %123, !llvm.loop !157

137:                                              ; preds = %123, %130
  store i8 0, ptr %126, align 1, !tbaa !37
  %138 = call fastcc double @FxEvaluateSubexpression(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %5) #27
  %139 = fadd double %138, %24
  %140 = load double, ptr %9, align 8, !tbaa !66
  %141 = fadd double %140, %25
  %142 = getelementptr inbounds i8, ptr %125, i64 1
  br label %143

143:                                              ; preds = %98, %137, %116
  %144 = phi double [ %117, %116 ], [ %139, %137 ], [ %24, %98 ]
  %145 = phi double [ %118, %116 ], [ %141, %137 ], [ %25, %98 ]
  %146 = phi ptr [ %119, %116 ], [ %142, %137 ], [ %91, %98 ]
  %147 = load i8, ptr %146, align 1, !tbaa !37
  %148 = icmp eq i8 %147, 46
  %149 = zext i1 %148 to i64
  %150 = getelementptr inbounds i8, ptr %146, i64 %149
  br label %151

151:                                              ; preds = %143, %83, %89, %6
  %152 = phi i64 [ %85, %89 ], [ %85, %83 ], [ %23, %6 ], [ %85, %143 ]
  %153 = phi double [ %24, %89 ], [ %24, %83 ], [ %24, %6 ], [ %144, %143 ]
  %154 = phi double [ %25, %89 ], [ %25, %83 ], [ %25, %6 ], [ %145, %143 ]
  %155 = phi ptr [ %87, %89 ], [ %87, %83 ], [ %4, %6 ], [ %150, %143 ]
  %156 = load ptr, ptr %0, align 8, !tbaa !12
  %157 = call i64 @GetImageListLength(ptr noundef %156) #23
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
  %168 = load ptr, ptr %0, align 8, !tbaa !12
  %169 = call ptr @GetImageFromList(ptr noundef %168, i64 noundef %167) #23
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %151
  %172 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1447, i32 noundef 410, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.3, ptr noundef %4) #23
  br label %685

173:                                              ; preds = %151
  call void @GetMagickPixelPacket(ptr noundef nonnull %169, ptr noundef nonnull %10) #23
  %174 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !15
  %176 = getelementptr inbounds ptr, ptr %175, i64 %167
  %177 = load ptr, ptr %176, align 8, !tbaa !16
  %178 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 70
  %179 = load i32, ptr %178, align 8, !tbaa !158
  %180 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %169, ptr noundef %177, i32 noundef %179, double noundef %153, double noundef %154, ptr noundef nonnull %10, ptr noundef %5) #23
  %181 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %155) #29
  %182 = icmp ugt i64 %181, 2
  br i1 %182, label %183, label %241

183:                                              ; preds = %173
  %184 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.98) #23
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %241, label %186

186:                                              ; preds = %183
  %187 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.155) #23
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %241, label %189

189:                                              ; preds = %186
  %190 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.156) #23
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %241, label %192

192:                                              ; preds = %189
  %193 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.95) #23
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %241, label %195

195:                                              ; preds = %192
  %196 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.130) #23
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %241, label %198

198:                                              ; preds = %195
  %199 = call i32 @LocaleCompare(ptr noundef nonnull %155, ptr noundef nonnull @.str.109) #23
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %241, label %201

201:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #21
  %202 = call i64 @CopyMagickString(ptr noundef nonnull %11, ptr noundef nonnull %155, i64 noundef 4096) #23
  %203 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #29
  %204 = getelementptr i8, ptr %11, i64 %203
  br label %205

205:                                              ; preds = %209, %201
  %206 = phi ptr [ %204, %201 ], [ %207, %209 ]
  %207 = getelementptr inbounds i8, ptr %206, i64 -1
  %208 = icmp ugt ptr %207, %11
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i8, ptr %207, align 1, !tbaa !37
  switch i8 %210, label %205 [
    i8 41, label %212
    i8 46, label %211
  ], !llvm.loop !159

211:                                              ; preds = %209
  store i8 0, ptr %207, align 1, !tbaa !37
  br label %212

212:                                              ; preds = %209, %205, %211
  %213 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #29
  %214 = icmp ugt i64 %213, 2
  br i1 %214, label %215, label %239

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !14
  %218 = call ptr @GetValueFromSplayTree(ptr noundef %217, ptr noundef nonnull %11) #23
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %239

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !13
  %223 = call ptr @GetValueFromSplayTree(ptr noundef %222, ptr noundef nonnull %11) #23
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %223, i64 56, i1 false), !tbaa.struct !84
  br label %236

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %228 = load ptr, ptr %227, align 8, !tbaa !9
  %229 = call i32 @QueryMagickColor(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef %228) #23
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %226
  %232 = load ptr, ptr %221, align 8, !tbaa !13
  %233 = call ptr @ConstantString(ptr noundef nonnull %11) #23
  %234 = call ptr @CloneMagickPixelPacket(ptr noundef nonnull %10) #23
  %235 = call i32 @AddValueToSplayTree(ptr noundef %232, ptr noundef %233, ptr noundef %234) #23
  br label %236

236:                                              ; preds = %231, %225
  %237 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #29
  %238 = getelementptr inbounds i8, ptr %155, i64 %237
  br label %239

239:                                              ; preds = %236, %226, %215, %212
  %240 = phi ptr [ %155, %215 ], [ %155, %212 ], [ %155, %226 ], [ %238, %236 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #21
  br label %241

241:                                              ; preds = %239, %198, %195, %192, %189, %186, %183, %173
  %242 = phi ptr [ %240, %239 ], [ %155, %198 ], [ %155, %195 ], [ %155, %192 ], [ %155, %189 ], [ %155, %186 ], [ %155, %183 ], [ %155, %173 ]
  %243 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef %242, i64 noundef 4096) #23
  call void @StripString(ptr noundef nonnull %8) #23
  %244 = load i8, ptr %8, align 16, !tbaa !37
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
  %248 = load float, ptr %247, align 8, !tbaa !90
  %249 = fpext float %248 to double
  %250 = fmul double %249, 0x3EF0001000100010
  br label %685

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %253 = load float, ptr %252, align 4, !tbaa !92
  %254 = fpext float %253 to double
  %255 = fmul double %254, 0x3EF0001000100010
  br label %685

256:                                              ; preds = %245
  %257 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %258 = load float, ptr %257, align 8, !tbaa !93
  %259 = fpext float %258 to double
  %260 = fmul double %259, 0x3EF0001000100010
  br label %685

261:                                              ; preds = %245
  %262 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 2
  %263 = load i32, ptr %262, align 8, !tbaa !160
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
  %273 = load i32, ptr %272, align 4, !tbaa !42
  %274 = icmp eq i32 %273, 12
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 53
  %277 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1521, i32 noundef 465, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.3, ptr noundef nonnull %276) #23
  br label %685

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %280 = load float, ptr %279, align 8, !tbaa !96
  %281 = fpext float %280 to double
  %282 = fmul double %281, 0x3EF0001000100010
  br label %685

283:                                              ; preds = %245
  %284 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %10) #27
  %285 = uitofp i16 %284 to double
  %286 = fmul double %285, 0x3EF0001000100010
  br label %685

287:                                              ; preds = %245
  %288 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, i32 noundef 410, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef %242) #23
  br label %685

289:                                              ; preds = %241, %241
  %290 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.69) #23
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %676

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %294 = load float, ptr %293, align 4, !tbaa !94
  %295 = fsub float 6.553500e+04, %294
  %296 = fpext float %295 to double
  %297 = fmul double %296, 0x3EF0001000100010
  br label %685

298:                                              ; preds = %241, %241
  %299 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.70) #23
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %676

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %303 = load float, ptr %302, align 8, !tbaa !93
  %304 = fpext float %303 to double
  %305 = fmul double %304, 0x3EF0001000100010
  br label %685

306:                                              ; preds = %241, %241
  %307 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.158, i64 noundef 7) #23
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %377

309:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #21
  %310 = getelementptr inbounds i8, ptr %8, i64 7
  %311 = call i32 @ParseGeometry(ptr noundef nonnull %310, ptr noundef nonnull %12) #23
  %312 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 1
  %313 = load i32, ptr %312, align 4, !tbaa !42
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
  %320 = load double, ptr %12, align 8, !tbaa !58
  br label %375

321:                                              ; preds = %315
  %322 = and i32 %311, 8
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %375, label %324

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 1
  %326 = load double, ptr %325, align 8, !tbaa !161
  br label %375

327:                                              ; preds = %315
  %328 = and i32 %311, 1
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %375, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 2
  %332 = load double, ptr %331, align 8, !tbaa !162
  br label %375

333:                                              ; preds = %315
  %334 = and i32 %311, 2
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %375, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 3
  %338 = load double, ptr %337, align 8, !tbaa !163
  br label %375

339:                                              ; preds = %315
  %340 = and i32 %311, 16
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %375, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 4
  %344 = load double, ptr %343, align 8, !tbaa !164
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
  %350 = load double, ptr %12, align 8, !tbaa !58
  br label %375

351:                                              ; preds = %345
  %352 = and i32 %311, 8
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %375, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 1
  %356 = load double, ptr %355, align 8, !tbaa !161
  br label %375

357:                                              ; preds = %345
  %358 = and i32 %311, 1
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %375, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 2
  %362 = load double, ptr %361, align 8, !tbaa !162
  br label %375

363:                                              ; preds = %345
  %364 = and i32 %311, 2
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %375, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 3
  %368 = load double, ptr %367, align 8, !tbaa !163
  br label %375

369:                                              ; preds = %345
  %370 = and i32 %311, 16
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct._GeometryInfo, ptr %12, i64 0, i32 4
  %374 = load double, ptr %373, align 8, !tbaa !164
  br label %375

375:                                              ; preds = %345, %369, %363, %357, %351, %346, %315, %339, %333, %327, %321, %316, %372, %366, %360, %354, %349, %342, %336, %330, %324, %319
  %376 = phi double [ %344, %342 ], [ %338, %336 ], [ %332, %330 ], [ %326, %324 ], [ %320, %319 ], [ %374, %372 ], [ %368, %366 ], [ %362, %360 ], [ %356, %354 ], [ %350, %349 ], [ 0.000000e+00, %316 ], [ 0.000000e+00, %321 ], [ 0.000000e+00, %327 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %339 ], [ 0.000000e+00, %315 ], [ 0.000000e+00, %346 ], [ 0.000000e+00, %351 ], [ 0.000000e+00, %357 ], [ 0.000000e+00, %363 ], [ 0.000000e+00, %369 ], [ 0.000000e+00, %345 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #21
  br label %685

377:                                              ; preds = %306
  %378 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.74) #23
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %676

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %382 = load float, ptr %381, align 8, !tbaa !90
  %383 = fpext float %382 to double
  %384 = fmul double %383, 0x3EF0001000100010
  br label %685

385:                                              ; preds = %241, %241
  %386 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.159, i64 noundef 5) #23
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %676

388:                                              ; preds = %385
  %389 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #27
  br label %685

390:                                              ; preds = %241, %241
  %391 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.93) #23
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %676

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %395 = load float, ptr %394, align 4, !tbaa !92
  %396 = fpext float %395 to double
  %397 = fmul double %396, 0x3EF0001000100010
  br label %685

398:                                              ; preds = %241, %241
  %399 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.160, i64 noundef 8) #23
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #27
  br label %685

403:                                              ; preds = %398
  %404 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.97) #23
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %676

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 1
  %408 = load i32, ptr %407, align 4, !tbaa !42
  %409 = icmp eq i32 %408, 12
  br i1 %409, label %413, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 53
  %412 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1666, i32 noundef 410, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.3, ptr noundef nonnull %411) #23
  br label %685

413:                                              ; preds = %406
  %414 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %415 = load float, ptr %414, align 8, !tbaa !96
  %416 = fpext float %415 to double
  %417 = fmul double %416, 0x3EF0001000100010
  br label %685

418:                                              ; preds = %241, %241
  %419 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.94) #23
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 8
  %423 = load i64, ptr %422, align 8, !tbaa !39
  %424 = uitofp i64 %423 to double
  br label %685

425:                                              ; preds = %418
  %426 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.95) #23
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %676

428:                                              ; preds = %425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  %429 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %430 = load float, ptr %429, align 8, !tbaa !90
  %431 = call fastcc zeroext i16 @ClampToQuantum(float noundef %430) #27
  %432 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %433 = load float, ptr %432, align 4, !tbaa !92
  %434 = call fastcc zeroext i16 @ClampToQuantum(float noundef %433) #27
  %435 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %436 = load float, ptr %435, align 8, !tbaa !93
  %437 = call fastcc zeroext i16 @ClampToQuantum(float noundef %436) #27
  call void @ConvertRGBToHSL(i16 noundef zeroext %431, i16 noundef zeroext %434, i16 noundef zeroext %437, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %14) #23
  %438 = load double, ptr %13, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  br label %685

439:                                              ; preds = %241, %241
  %440 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.161) #23
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %460, label %442

442:                                              ; preds = %439
  %443 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.162) #23
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %460, label %445

445:                                              ; preds = %442
  %446 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.163) #23
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %460, label %448

448:                                              ; preds = %445
  %449 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.164) #23
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %460, label %451

451:                                              ; preds = %448
  %452 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.165) #23
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %460, label %454

454:                                              ; preds = %451
  %455 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.166) #23
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %454
  %458 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.167) #23
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %457, %454, %451, %448, %445, %442, %439
  %461 = getelementptr inbounds i8, ptr %8, i64 6
  %462 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %461, ptr noundef %5) #27
  br label %685

463:                                              ; preds = %457
  %464 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.168) #23
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 24
  %468 = load double, ptr %467, align 8, !tbaa !165
  br label %685

469:                                              ; preds = %463
  %470 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.169) #23
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 25
  %474 = load double, ptr %473, align 8, !tbaa !166
  br label %685

475:                                              ; preds = %469
  %476 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.98) #23
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %475
  %479 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %10) #27
  %480 = uitofp i16 %479 to double
  %481 = fmul double %480, 0x3EF0001000100010
  br label %685

482:                                              ; preds = %475
  %483 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.101) #23
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %685, label %676

485:                                              ; preds = %241, %241
  %486 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.102) #23
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %685, label %676

488:                                              ; preds = %241, %241
  %489 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.109) #23
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %502

491:                                              ; preds = %488
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  %492 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %493 = load float, ptr %492, align 8, !tbaa !90
  %494 = call fastcc zeroext i16 @ClampToQuantum(float noundef %493) #27
  %495 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %496 = load float, ptr %495, align 4, !tbaa !92
  %497 = call fastcc zeroext i16 @ClampToQuantum(float noundef %496) #27
  %498 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %499 = load float, ptr %498, align 8, !tbaa !93
  %500 = call fastcc zeroext i16 @ClampToQuantum(float noundef %499) #27
  call void @ConvertRGBToHSL(i16 noundef zeroext %494, i16 noundef zeroext %497, i16 noundef zeroext %500, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef nonnull %17) #23
  %501 = load double, ptr %17, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  br label %685

502:                                              ; preds = %488
  %503 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.155) #23
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %519

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %507 = load float, ptr %506, align 8, !tbaa !90
  %508 = fpext float %507 to double
  %509 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %510 = load float, ptr %509, align 4, !tbaa !92
  %511 = fpext float %510 to double
  %512 = fmul double %511, 0x3FE6E29307AF20EA
  %513 = call double @llvm.fmuladd.f64(double %508, double 2.126560e-01, double %512)
  %514 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %515 = load float, ptr %514, align 8, !tbaa !93
  %516 = fpext float %515 to double
  %517 = call double @llvm.fmuladd.f64(double %516, double 7.218600e-02, double %513)
  %518 = fmul double %517, 0x3EF0001000100010
  br label %685

519:                                              ; preds = %502
  %520 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.156) #23
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %676

522:                                              ; preds = %519
  %523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %524 = load float, ptr %523, align 8, !tbaa !90
  %525 = fpext float %524 to double
  %526 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %527 = load float, ptr %526, align 4, !tbaa !92
  %528 = fpext float %527 to double
  %529 = fmul double %528, 0x3FE6E29307AF20EA
  %530 = call double @llvm.fmuladd.f64(double %525, double 2.126560e-01, double %529)
  %531 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %532 = load float, ptr %531, align 8, !tbaa !93
  %533 = fpext float %532 to double
  %534 = call double @llvm.fmuladd.f64(double %533, double 7.218600e-02, double %530)
  %535 = fmul double %534, 0x3EF0001000100010
  br label %685

536:                                              ; preds = %241, %241
  %537 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.111, i64 noundef 6) #23
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %541

539:                                              ; preds = %536
  %540 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #27
  br label %685

541:                                              ; preds = %536
  %542 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.170, i64 noundef 4) #23
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %546

544:                                              ; preds = %541
  %545 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #27
  br label %685

546:                                              ; preds = %541
  %547 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.113, i64 noundef 6) #23
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  %550 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #27
  br label %685

551:                                              ; preds = %546
  %552 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.116) #23
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %676

554:                                              ; preds = %551
  %555 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %556 = load float, ptr %555, align 8, !tbaa !93
  %557 = fpext float %556 to double
  %558 = fmul double %557, 0x3EF0001000100010
  br label %685

559:                                              ; preds = %241, %241
  %560 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.118) #23
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %676

562:                                              ; preds = %559
  %563 = load ptr, ptr %0, align 8, !tbaa !12
  %564 = call i64 @GetImageListLength(ptr noundef %563) #23
  %565 = uitofp i64 %564 to double
  br label %685

566:                                              ; preds = %241, %241
  %567 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.120) #23
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %676

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %571 = load float, ptr %570, align 4, !tbaa !94
  %572 = fpext float %571 to double
  %573 = fmul double %572, 0x3EF0001000100010
  br label %685

574:                                              ; preds = %241, %241
  %575 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.171) #23
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %581

577:                                              ; preds = %574
  %578 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 26, i32 1
  %579 = load i64, ptr %578, align 8, !tbaa !129
  %580 = uitofp i64 %579 to double
  br label %685

581:                                              ; preds = %574
  %582 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.172) #23
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %588

584:                                              ; preds = %581
  %585 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 26
  %586 = load i64, ptr %585, align 8, !tbaa !128
  %587 = uitofp i64 %586 to double
  br label %685

588:                                              ; preds = %581
  %589 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.173) #23
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %595

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 26, i32 2
  %593 = load i64, ptr %592, align 8, !tbaa !130
  %594 = sitofp i64 %593 to double
  br label %685

595:                                              ; preds = %588
  %596 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.174) #23
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %676

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 26, i32 3
  %600 = load i64, ptr %599, align 8, !tbaa !131
  %601 = sitofp i64 %600 to double
  br label %685

602:                                              ; preds = %241, %241
  %603 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.175) #23
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602
  %606 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 24
  %607 = load double, ptr %606, align 8, !tbaa !165
  br label %685

608:                                              ; preds = %602
  %609 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.176) #23
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %614

611:                                              ; preds = %608
  %612 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 25
  %613 = load double, ptr %612, align 8, !tbaa !166
  br label %685

614:                                              ; preds = %608
  %615 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.129) #23
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %676

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %619 = load float, ptr %618, align 8, !tbaa !90
  %620 = fpext float %619 to double
  %621 = fmul double %620, 0x3EF0001000100010
  br label %685

622:                                              ; preds = %241, %241
  %623 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.130) #23
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %636

625:                                              ; preds = %622
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #21
  %626 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %627 = load float, ptr %626, align 8, !tbaa !90
  %628 = call fastcc zeroext i16 @ClampToQuantum(float noundef %627) #27
  %629 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %630 = load float, ptr %629, align 4, !tbaa !92
  %631 = call fastcc zeroext i16 @ClampToQuantum(float noundef %630) #27
  %632 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %633 = load float, ptr %632, align 8, !tbaa !93
  %634 = call fastcc zeroext i16 @ClampToQuantum(float noundef %633) #27
  call void @ConvertRGBToHSL(i16 noundef zeroext %628, i16 noundef zeroext %631, i16 noundef zeroext %634, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %20) #23
  %635 = load double, ptr %21, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  br label %685

636:                                              ; preds = %622
  %637 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.177, i64 noundef 8) #23
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %641

639:                                              ; preds = %636
  %640 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #27
  br label %685

641:                                              ; preds = %636
  %642 = call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.178, i64 noundef 18) #23
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %676

644:                                              ; preds = %641
  %645 = call fastcc double @FxChannelStatistics(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %1, ptr noundef nonnull %8, ptr noundef %5) #27
  br label %685

646:                                              ; preds = %241, %241
  %647 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.142) #23
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %676

649:                                              ; preds = %646
  %650 = load ptr, ptr %0, align 8, !tbaa !12
  %651 = call i64 @GetImageIndexInList(ptr noundef %650) #23
  %652 = sitofp i64 %651 to double
  br label %685

653:                                              ; preds = %241, %241
  %654 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.146) #23
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %676

656:                                              ; preds = %653
  %657 = getelementptr inbounds %struct._Image, ptr %169, i64 0, i32 7
  %658 = load i64, ptr %657, align 8, !tbaa !40
  %659 = uitofp i64 %658 to double
  br label %685

660:                                              ; preds = %241, %241
  %661 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.147) #23
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %676

663:                                              ; preds = %660
  %664 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %665 = load float, ptr %664, align 4, !tbaa !92
  %666 = fpext float %665 to double
  %667 = fmul double %666, 0x3EF0001000100010
  br label %685

668:                                              ; preds = %241, %241
  %669 = call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.148) #23
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %676

671:                                              ; preds = %668
  %672 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 7
  %673 = load ptr, ptr %672, align 8, !tbaa !9
  %674 = call i64 @GetImageChannelDepth(ptr noundef %169, i32 noundef %1, ptr noundef %673) #23
  %675 = uitofp i64 %674 to double
  br label %685

676:                                              ; preds = %241, %668, %660, %653, %646, %641, %614, %595, %566, %559, %551, %519, %485, %482, %425, %403, %390, %385, %377, %298, %289
  %677 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %678 = load ptr, ptr %677, align 8, !tbaa !14
  %679 = call ptr @GetValueFromSplayTree(ptr noundef %678, ptr noundef nonnull %8) #23
  %680 = icmp eq ptr %679, null
  br i1 %680, label %683, label %681

681:                                              ; preds = %676
  %682 = call fastcc double @StringToDouble(ptr noundef nonnull %679) #27
  br label %685

683:                                              ; preds = %676
  %684 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1864, i32 noundef 410, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull %8) #23
  br label %685

685:                                              ; preds = %485, %482, %683, %681, %671, %663, %656, %649, %644, %639, %625, %617, %611, %605, %598, %591, %584, %577, %569, %562, %554, %549, %544, %539, %522, %505, %491, %478, %472, %466, %460, %428, %421, %413, %410, %401, %393, %388, %380, %375, %301, %292, %287, %283, %278, %275, %261, %256, %251, %246, %171
  %686 = phi double [ 0.000000e+00, %171 ], [ 0.000000e+00, %287 ], [ %286, %283 ], [ 0.000000e+00, %275 ], [ %282, %278 ], [ %270, %261 ], [ %260, %256 ], [ %255, %251 ], [ %250, %246 ], [ %682, %681 ], [ 0.000000e+00, %683 ], [ %675, %671 ], [ %667, %663 ], [ %659, %656 ], [ %652, %649 ], [ %635, %625 ], [ %640, %639 ], [ %645, %644 ], [ %607, %605 ], [ %613, %611 ], [ %621, %617 ], [ %580, %577 ], [ %587, %584 ], [ %594, %591 ], [ %601, %598 ], [ %573, %569 ], [ %565, %562 ], [ %540, %539 ], [ %545, %544 ], [ %550, %549 ], [ %558, %554 ], [ %501, %491 ], [ %518, %505 ], [ %535, %522 ], [ %462, %460 ], [ %468, %466 ], [ %474, %472 ], [ %481, %478 ], [ %424, %421 ], [ %438, %428 ], [ %402, %401 ], [ 0.000000e+00, %410 ], [ %417, %413 ], [ %397, %393 ], [ %389, %388 ], [ %376, %375 ], [ %384, %380 ], [ %305, %301 ], [ %297, %292 ], [ %24, %482 ], [ %25, %485 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #21
  ret double %686
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cosh(double noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @FxGCD(i64 noundef %0, i64 noundef %1) unnamed_addr #17 {
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
declare double @hypot(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: nounwind optsize
declare double @j0(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sinh(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare double @InterpretSiPrefixValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @FxSubexpression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !37
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
  %20 = load i8, ptr %19, align 1, !tbaa !37
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %5, !llvm.loop !167

22:                                               ; preds = %17, %2
  %23 = phi ptr [ %0, %2 ], [ %19, %17 ]
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1297, i32 noundef 410, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #23
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
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneMagickPixelPacket(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @StripString(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !168
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !90
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !92
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !93
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  %21 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %20) #27
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #21
  br label %21

21:                                               ; preds = %24, %5
  %22 = phi ptr [ %3, %5 ], [ %25, %24 ]
  %23 = load i8, ptr %22, align 1, !tbaa !37
  switch i8 %23, label %24 [
    i8 46, label %26
    i8 0, label %26
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  br label %21, !llvm.loop !169

26:                                               ; preds = %21, %21
  store i8 0, ptr %6, align 16, !tbaa !37
  %27 = icmp eq i8 %23, 46
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  %30 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %29, i64 noundef 4096) #23
  %31 = call i64 @ParseCommandOption(i32 noundef 4, i32 noundef 1, ptr noundef nonnull %6) #23
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i64 %31, 0
  %34 = select i1 %33, i32 %2, i32 %32
  br label %35

35:                                               ; preds = %28, %26
  %36 = phi i32 [ %34, %28 ], [ %2, %26 ]
  %37 = uitofp i32 %36 to double
  %38 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.179, ptr noundef %1, double noundef %37, ptr noundef %3) #23
  %39 = getelementptr inbounds %struct._FxInfo, ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !14
  %41 = call ptr @GetValueFromSplayTree(ptr noundef %40, ptr noundef nonnull %7) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %117

43:                                               ; preds = %35
  %44 = load ptr, ptr %39, align 8, !tbaa !14
  %45 = call i32 @DeleteNodeFromSplayTree(ptr noundef %44, ptr noundef nonnull %7) #23
  %46 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.159, i64 noundef 5) #23
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i64 @GetImageChannelDepth(ptr noundef %1, i32 noundef %36, ptr noundef %4) #23
  %50 = uitofp i64 %49 to double
  %51 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.180, double noundef %50) #23
  br label %52

52:                                               ; preds = %48, %43
  %53 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.160, i64 noundef 8) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  %56 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %4) #23
  %57 = load double, ptr %9, align 8, !tbaa !66
  %58 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %57) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %59

59:                                               ; preds = %55, %52
  %60 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.111, i64 noundef 6) #23
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  %63 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %4) #23
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.69) #23
  %65 = icmp eq i32 %64, 0
  %66 = load double, ptr %11, align 8, !tbaa !66
  br i1 %65, label %67, label %69

67:                                               ; preds = %62
  %68 = fsub double 6.553500e+04, %66
  store double %68, ptr %11, align 8, !tbaa !66
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi double [ %68, %67 ], [ %66, %62 ]
  %71 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %70) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  br label %72

72:                                               ; preds = %69, %59
  %73 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.170, i64 noundef 4) #23
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  %76 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %4) #23
  %77 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.69) #23
  %78 = icmp eq i32 %77, 0
  %79 = load double, ptr %13, align 8, !tbaa !66
  br i1 %78, label %80, label %82

80:                                               ; preds = %75
  %81 = fsub double 6.553500e+04, %79
  store double %81, ptr %13, align 8, !tbaa !66
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi double [ %81, %80 ], [ %79, %75 ]
  %84 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %83) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  br label %85

85:                                               ; preds = %82, %72
  %86 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.113, i64 noundef 6) #23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  %89 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %4) #23
  %90 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.69) #23
  %91 = icmp eq i32 %90, 0
  %92 = load double, ptr %16, align 8, !tbaa !66
  br i1 %91, label %93, label %95

93:                                               ; preds = %88
  %94 = fsub double 6.553500e+04, %92
  store double %94, ptr %16, align 8, !tbaa !66
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi double [ %94, %93 ], [ %92, %88 ]
  %97 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %96) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %98

98:                                               ; preds = %95, %85
  %99 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.177, i64 noundef 8) #23
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  %102 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %4) #23
  %103 = load double, ptr %18, align 8, !tbaa !66
  %104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %103) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  br label %105

105:                                              ; preds = %101, %98
  %106 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.178, i64 noundef 18) #23
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #21
  %109 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %4) #23
  %110 = load double, ptr %20, align 8, !tbaa !66
  %111 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.57, double noundef %110) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  br label %112

112:                                              ; preds = %108, %105
  %113 = load ptr, ptr %39, align 8, !tbaa !14
  %114 = call ptr @ConstantString(ptr noundef nonnull %7) #23
  %115 = call ptr @ConstantString(ptr noundef nonnull %8) #23
  %116 = call i32 @AddValueToSplayTree(ptr noundef %113, ptr noundef %114, ptr noundef %115) #23
  br label %117

117:                                              ; preds = %35, %112
  %118 = phi ptr [ %8, %112 ], [ %41, %35 ]
  %119 = call fastcc double @StringToDouble(ptr noundef nonnull %118) #27
  %120 = fmul double %119, 0x3EF0001000100010
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #21
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

; Function Attrs: optsize
declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize allocsize(0) }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind optsize willreturn memory(none) }
attributes #25 = { noreturn nounwind optsize }
attributes #26 = { nounwind optsize allocsize(0,1) }
attributes #27 = { optsize }
attributes #28 = { hot nounwind optsize }
attributes #29 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 56}
!10 = !{!"_FxInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!10, !11, i64 24}
!14 = !{!10, !11, i64 32}
!15 = !{!10, !11, i64 40}
!16 = !{!11, !11, i64 0}
!17 = !{!18, !11, i64 13104}
!18 = !{!"_Image", !6, i64 0, !6, i64 4, !6, i64 8, !19, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !11, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !22, i64 104, !23, i64 112, !6, i64 208, !11, i64 216, !6, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !19, i64 256, !22, i64 264, !22, i64 272, !25, i64 280, !25, i64 312, !25, i64 344, !22, i64 376, !22, i64 384, !22, i64 392, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !11, i64 424, !19, i64 432, !19, i64 440, !19, i64 448, !19, i64 456, !19, i64 464, !19, i64 472, !26, i64 480, !27, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !7, i64 616, !7, i64 4712, !7, i64 8808, !19, i64 12904, !19, i64 12912, !29, i64 12920, !6, i64 12976, !19, i64 12984, !11, i64 12992, !30, i64 13000, !30, i64 13032, !11, i64 13064, !19, i64 13072, !19, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !6, i64 13112, !6, i64 13116, !20, i64 13120, !11, i64 13128, !25, i64 13136, !11, i64 13168, !11, i64 13176, !6, i64 13184, !6, i64 13188, !31, i64 13192, !6, i64 13200, !19, i64 13208, !19, i64 13216, !6, i64 13224, !19, i64 13232}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_PixelPacket", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6}
!21 = !{!"short", !7, i64 0}
!22 = !{!"double", !7, i64 0}
!23 = !{!"_ChromaticityInfo", !24, i64 0, !24, i64 24, !24, i64 48, !24, i64 72}
!24 = !{!"_PrimaryInfo", !22, i64 0, !22, i64 8, !22, i64 16}
!25 = !{!"_RectangleInfo", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!26 = !{!"_ErrorInfo", !22, i64 0, !22, i64 8, !22, i64 16}
!27 = !{!"_TimerInfo", !28, i64 0, !28, i64 24, !6, i64 48, !19, i64 56}
!28 = !{!"_Timer", !22, i64 0, !22, i64 8, !22, i64 16}
!29 = !{!"_ExceptionInfo", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !11, i64 40, !19, i64 48}
!30 = !{!"_ProfileInfo", !11, i64 0, !19, i64 8, !11, i64 16, !19, i64 24}
!31 = !{!"long long", !7, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!10, !11, i64 48}
!35 = !{!10, !11, i64 8}
!36 = !{!10, !11, i64 16}
!37 = !{!7, !7, i64 0}
!38 = !{!18, !6, i64 12976}
!39 = !{!18, !19, i64 48}
!40 = !{!18, !19, i64 40}
!41 = !{!20, !21, i64 4}
!42 = !{!18, !6, i64 4}
!43 = !{i32 0, i32 2}
!44 = !{!20, !21, i64 2}
!45 = !{!20, !21, i64 0}
!46 = !{!20, !21, i64 6}
!47 = !{!21, !21, i64 0}
!48 = distinct !{!48, !33}
!49 = !{!18, !11, i64 568}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = !{!18, !11, i64 576}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = !{!18, !6, i64 13224}
!57 = !{!18, !6, i64 32}
!58 = !{!59, !22, i64 0}
!59 = !{!"_GeometryInfo", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = !{!63, !19, i64 16}
!63 = !{!"KernelInfo", !6, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !11, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !11, i64 88, !19, i64 96}
!64 = !{!63, !19, i64 8}
!65 = !{!63, !11, i64 40}
!66 = !{!22, !22, i64 0}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33}
!75 = !{!29, !6, i64 0}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !33}
!78 = distinct !{!78, !33}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !33}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = !{!18, !21, i64 86}
!84 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 16, i64 8, !66, i64 24, i64 8, !85, i64 32, i64 4, !86, i64 36, i64 4, !86, i64 40, i64 4, !86, i64 44, i64 4, !86, i64 48, i64 4, !86}
!85 = !{!19, !19, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"float", !7, i64 0}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = !{!91, !87, i64 32}
!91 = !{!"_MagickPixelPacket", !6, i64 0, !6, i64 4, !6, i64 8, !22, i64 16, !19, i64 24, !87, i64 32, !87, i64 36, !87, i64 40, !87, i64 44, !87, i64 48}
!92 = !{!91, !87, i64 36}
!93 = !{!91, !87, i64 40}
!94 = !{!91, !87, i64 44}
!95 = !{!18, !6, i64 0}
!96 = !{!91, !87, i64 48}
!97 = distinct !{!97, !33}
!98 = !{!18, !6, i64 400}
!99 = !{!18, !22, i64 384}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33}
!103 = distinct !{!103, !33}
!104 = !{!105, !22, i64 16}
!105 = !{!"_SegmentInfo", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24}
!106 = !{!105, !22, i64 0}
!107 = !{!105, !22, i64 24}
!108 = !{!105, !22, i64 8}
!109 = !{i64 0, i64 8, !66, i64 8, i64 8, !66, i64 16, i64 8, !66, i64 24, i64 8, !66}
!110 = !{!111, !22, i64 16}
!111 = !{!"_TypeMetric", !112, i64 0, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !105, i64 72, !112, i64 104}
!112 = !{!"_PointInfo", !22, i64 0, !22, i64 8}
!113 = !{!111, !22, i64 24}
!114 = !{!115, !6, i64 96}
!115 = !{!"_DrawInfo", !11, i64 0, !11, i64 8, !25, i64 16, !116, i64 48, !6, i64 96, !20, i64 100, !20, i64 108, !22, i64 120, !117, i64 128, !11, i64 256, !11, i64 264, !11, i64 272, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !19, i64 304, !22, i64 312, !6, i64 320, !6, i64 324, !11, i64 328, !19, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !6, i64 368, !6, i64 372, !19, i64 376, !11, i64 384, !22, i64 392, !11, i64 400, !6, i64 408, !20, i64 412, !20, i64 420, !11, i64 432, !11, i64 440, !11, i64 448, !105, i64 456, !6, i64 488, !21, i64 492, !6, i64 496, !118, i64 504, !6, i64 672, !19, i64 680, !22, i64 688, !22, i64 696, !22, i64 704, !6, i64 712}
!116 = !{!"_AffineMatrix", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40}
!117 = !{!"_GradientInfo", !6, i64 0, !25, i64 8, !105, i64 40, !11, i64 72, !19, i64 80, !6, i64 88, !6, i64 92, !19, i64 96, !112, i64 104, !87, i64 120}
!118 = !{!"_ElementReference", !11, i64 0, !6, i64 8, !117, i64 16, !19, i64 144, !11, i64 152, !11, i64 160}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = !{!18, !6, i64 416}
!123 = !{!25, !19, i64 0}
!124 = !{!25, !19, i64 8}
!125 = !{!18, !21, i64 84}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = !{!18, !19, i64 280}
!129 = !{!18, !19, i64 288}
!130 = !{!18, !19, i64 296}
!131 = !{!18, !19, i64 304}
!132 = distinct !{!132, !33}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = !{!18, !19, i64 64}
!137 = !{!18, !11, i64 72}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = !{!18, !19, i64 56}
!142 = !{!18, !19, i64 256}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = !{!115, !11, i64 0}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = !{!18, !6, i64 13112}
!159 = distinct !{!159, !33}
!160 = !{!91, !6, i64 8}
!161 = !{!59, !22, i64 8}
!162 = !{!59, !22, i64 16}
!163 = !{!59, !22, i64 24}
!164 = !{!59, !22, i64 32}
!165 = !{!18, !22, i64 264}
!166 = !{!18, !22, i64 272}
!167 = distinct !{!167, !33}
!168 = !{!91, !6, i64 4}
!169 = distinct !{!169, !33}
