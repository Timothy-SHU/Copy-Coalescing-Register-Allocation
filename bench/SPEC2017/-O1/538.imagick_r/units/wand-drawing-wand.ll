; ModuleID = 'wand/drawing-wand.c'
source_filename = "wand/drawing-wand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._DrawingWand = type { i64, [4096 x i8], ptr, ptr, ptr, i64, i64, i64, ptr, %struct._RectangleInfo, i64, i64, ptr, i32, i64, i32, i32, i32, i32, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._PointInfo = type { double, double }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._SegmentInfo = type { double, double, double, double }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [20 x i8] c"wand/drawing-wand.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"DrawingWand-%.20g\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"affine %.20g %.20g %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"text %.20g %.20g '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"arc %.20g %.20g %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"bezier\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"circle %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"MIFF\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%.20g bytes\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"image %s %.20g %.20g %.20g %.20g 'data:%s;base64,\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%.76s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"color %.20g %.20g '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"#%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"ellipse %.20g %.20g %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"drawing-wand\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"clip-path\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"clip-units\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"decorate\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"fill-opacity\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"fill-rule\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"font-family\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"font-stretch\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"font-style\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"font-weight\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"stroke-antialias\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"stroke-dasharray\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"stroke-dashoffset\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"stroke-linecap\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"stroke-linejoin\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"stroke-miterlimit\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"stroke-opacity\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"stroke-width\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"text-align\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"text-antialias\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"text-undercolor\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"vector-graphics\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"line %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"matte %.20g %.20g '%s'\0A\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"path '\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"point %.20g %.20g\0A\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"polygon\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"polyline\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"pop clip-path\0A\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"pop defs\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"ContainsNoImages\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"NotCurrentlyPushingPatternDefinition\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"pop pattern\0A\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"push clip-path %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"push defs\0A\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"AlreadyPushingPatternDefinition\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"push pattern %s %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"rectangle %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"MVG:\0A'%s'\0A\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"rotate %.20g\0A\00", align 1
@.str.74 = private unnamed_addr constant [52 x i8] c"roundrectangle %.20g %.20g %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"scale %.20g %.20g\0A\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"border-color '\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"clip-path url(#%s)\0A\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"clip-rule '%s'\0A\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"clip-units '%s'\0A\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"fill '\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"fill-opacity %.20g\0A\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"%.20gx%.20g\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"opacity %.20g\0A\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"NotARelativeURL\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"URLNotFound\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"url(%s)\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"fill %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"fill-rule '%s'\0A\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"font '%s'\0A\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"font-family '%s'\0A\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"font-size %.20g\0A\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"font-stretch '%s'\0A\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"font-style '%s'\0A\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"font-weight %.20g\0A\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"gravity '%s'\0A\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"stroke '\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"stroke %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"stroke-antialias %i\0A\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"stroke-dasharray \00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"stroke-dashoffset %.20g\0A\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"stroke-linecap '%s'\0A\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"stroke-linejoin '%s'\0A\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"stroke-miterlimit %.20g\0A\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"stroke-opacity %.20g\0A\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"stroke-width %.20g\0A\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"text-align '%s'\0A\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"text-antialias %i\0A\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"decorate '%s'\0A\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"direction '%s'\0A\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"encoding '%s'\0A\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"kerning %lf\0A\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"interline-spacing %lf\0A\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"interword-spacing %lf\0A\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"text-undercolor '\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"skewX %.20g\0A\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"skewY %.20g\0A\00", align 1
@.str.118 = private unnamed_addr constant [23 x i8] c"translate %.20g %.20g\0A\00", align 1
@.str.119 = private unnamed_addr constant [33 x i8] c"viewbox %.20g %.20g %.20g %.20g\0A\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"DrawingWand\00", align 1
@.str.121 = private unnamed_addr constant [21 x i8] c"QuantumDepthMismatch\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"UnbalancedGraphicContextPushPop\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"pop graphic-context\0A\00", align 1
@.str.125 = private unnamed_addr constant [22 x i8] c"push graphic-context\0A\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"UnableToPrint\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c" %.20g %.20g\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"%c%.20g %.20g %.20g %.20g %.20g %.20g\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c" %.20g %.20g %.20g %.20g %.20g %.20g\00", align 1
@.str.130 = private unnamed_addr constant [26 x i8] c"%c%.20g %.20g %.20g %.20g\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c" %.20g %.20g %.20g %.20g\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"%c%.20g %.20g\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"%c%.20g %.20g %.20g %u %u %.20g %.20g\00", align 1
@.str.134 = private unnamed_addr constant [37 x i8] c" %.20g %.20g %.20g %u %u %.20g %.20g\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"%c%.20g\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c" %.20g\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ClearDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 484, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %10 = load i64, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %10, %12 ], [ %23, %14 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = tail call ptr @DestroyDrawInfo(ptr noundef %18) #15
  %20 = load ptr, ptr %13, align 8, !tbaa !43
  %21 = load i64, ptr %9, align 8, !tbaa !42
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %19, ptr %22, align 8, !tbaa !44
  %23 = add i64 %21, -1
  store i64 %23, ptr %9, align 8, !tbaa !42
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !45

25:                                               ; preds = %14, %8
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = tail call ptr @DestroyDrawInfo(ptr noundef %28) #15
  %30 = load ptr, ptr %26, align 8, !tbaa !43
  %31 = load i64, ptr %9, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %29, ptr %32, align 8, !tbaa !44
  %33 = load ptr, ptr %26, align 8, !tbaa !43
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #15
  store ptr %34, ptr %26, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = tail call ptr @DestroyString(ptr noundef nonnull %36) #15
  store ptr %39, ptr %35, align 8, !tbaa !48
  br label %40

40:                                               ; preds = %38, %25
  %41 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = tail call ptr @DestroyString(ptr noundef %42) #15
  store ptr %43, ptr %41, align 8, !tbaa !49
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 17
  %45 = load i32, ptr %44, align 8, !tbaa !50
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !51
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @DestroyImage(ptr noundef nonnull %49) #15
  store ptr %52, ptr %48, align 8, !tbaa !51
  br label %55

53:                                               ; preds = %47, %40
  %54 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  store ptr null, ptr %54, align 8, !tbaa !51
  br label %55

55:                                               ; preds = %53, %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %41, i8 0, i64 88, i1 false)
  %56 = tail call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #16
  store ptr %56, ptr %26, align 8, !tbaa !43
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  %61 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %62 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %60, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 513, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %61) #15
  br label %75

63:                                               ; preds = %55
  %64 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #15
  %65 = load ptr, ptr %26, align 8, !tbaa !43
  %66 = load i64, ptr %9, align 8, !tbaa !42
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %64, ptr %67, align 8, !tbaa !44
  %68 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  store i32 1, ptr %68, align 8, !tbaa !53
  %69 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %70 = tail call ptr @AcquireImage(ptr noundef null) #15
  %71 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  store ptr %70, ptr %71, align 8, !tbaa !51
  %72 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  tail call void @ClearMagickException(ptr noundef %73) #15
  store i32 1, ptr %44, align 8, !tbaa !50
  %74 = tail call i32 @IsEventLogging() #15
  store i32 %74, ptr %2, align 4, !tbaa !34
  br label %75

75:                                               ; preds = %63, %58
  ret void
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #1

declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 560, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %1
  %11 = tail call dereferenceable_or_null(4256) ptr @AcquireMagickMemory(i64 noundef 4256) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @GetExceptionInfo(ptr noundef nonnull %2) #15
  %14 = tail call ptr @__errno_location() #17
  %15 = load i32, ptr %14, align 4, !tbaa !54
  %16 = call ptr @GetExceptionMessage(i32 noundef %15) #15
  %17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 564, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %16) #15
  call void @CatchException(ptr noundef nonnull %2) #15
  %18 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #15
  call void @MagickWandTerminus() #15
  call void @_exit(i32 noundef 1) #18
  unreachable

19:                                               ; preds = %10
  %20 = tail call ptr @ResetMagickMemory(ptr noundef %11, i32 noundef 0, i64 noundef 4256) #15
  %21 = tail call i64 @AcquireWandId() #15
  store i64 %21, ptr %11, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 1
  %23 = uitofp i64 %21 to double
  %24 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %22, i64 noundef 4096, ptr noundef nonnull @.str.5, double noundef %23) #15
  %25 = tail call ptr @AcquireExceptionInfo() #15
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  tail call void @InheritException(ptr noundef %25, ptr noundef %28) #15
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = tail call ptr @AcquireString(ptr noundef %30) #15
  %32 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !49
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #19
  %34 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 6
  store i64 %33, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  %36 = load i64, ptr %35, align 8, !tbaa !56
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 5
  store i64 %37, ptr %38, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 7
  store i64 %40, ptr %41, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = tail call ptr @AcquireString(ptr noundef %43) #15
  %45 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 8
  store ptr %44, ptr %45, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 10
  %47 = load i64, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 10
  store i64 %47, ptr %48, align 8, !tbaa !59
  %49 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 9
  %50 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(32) %50, i64 32, i1 false), !tbaa.struct !60
  %51 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %52 = load i64, ptr %51, align 8, !tbaa !42
  %53 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 11
  store i64 %52, ptr %53, align 8, !tbaa !42
  %54 = load i64, ptr %51, align 8, !tbaa !42
  %55 = add i64 %54, 1
  %56 = tail call ptr @AcquireQuantumMemory(i64 noundef %55, i64 noundef 8) #20
  %57 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 12
  store ptr %56, ptr %57, align 8, !tbaa !43
  %58 = icmp eq ptr %56, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %19
  %60 = load i64, ptr %51, align 8, !tbaa !42
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  br label %70

64:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @GetExceptionInfo(ptr noundef nonnull %3) #15
  %65 = tail call ptr @__errno_location() #17
  %66 = load i32, ptr %65, align 4, !tbaa !54
  %67 = call ptr @GetExceptionMessage(i32 noundef %66) #15
  %68 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 583, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %67) #15
  call void @CatchException(ptr noundef nonnull %3) #15
  %69 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #15
  call void @MagickWandTerminus() #15
  call void @_exit(i32 noundef 1) #18
  unreachable

70:                                               ; preds = %62, %70
  %71 = phi i64 [ 0, %62 ], [ %78, %70 ]
  %72 = load ptr, ptr %63, align 8, !tbaa !43
  %73 = getelementptr inbounds ptr, ptr %72, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %74) #15
  %76 = load ptr, ptr %57, align 8, !tbaa !43
  %77 = getelementptr inbounds ptr, ptr %76, i64 %71
  store ptr %75, ptr %77, align 8, !tbaa !44
  %78 = add nuw nsw i64 %71, 1
  %79 = load i64, ptr %51, align 8, !tbaa !42
  %80 = icmp slt i64 %71, %79
  br i1 %80, label %70, label %81, !llvm.loop !62

81:                                               ; preds = %70, %59
  %82 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !53
  %84 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 13
  store i32 %83, ptr %84, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %86 = load i64, ptr %85, align 8, !tbaa !63
  %87 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 14
  store i64 %86, ptr %87, align 8, !tbaa !63
  %88 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %89 = load i32, ptr %88, align 8, !tbaa !64
  %90 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 15
  store i32 %89, ptr %90, align 8, !tbaa !64
  %91 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %92 = load i32, ptr %91, align 4, !tbaa !65
  %93 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 16
  store i32 %92, ptr %93, align 4, !tbaa !65
  %94 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !51
  %96 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 2
  store ptr %95, ptr %96, align 8, !tbaa !51
  %97 = load ptr, ptr %94, align 8, !tbaa !51
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %81
  %100 = load ptr, ptr %26, align 8, !tbaa !52
  %101 = tail call ptr @CloneImage(ptr noundef nonnull %97, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %100) #15
  store ptr %101, ptr %96, align 8, !tbaa !51
  br label %102

102:                                              ; preds = %99, %81
  %103 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 17
  store i32 1, ptr %103, align 8, !tbaa !50
  %104 = tail call i32 @IsEventLogging() #15
  %105 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 18
  store i32 %104, ptr %105, align 4, !tbaa !34
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 598, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #15
  br label %109

109:                                              ; preds = %107, %102
  %110 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 19
  store i64 2880220587, ptr %110, align 8, !tbaa !66
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @MagickWandTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @AcquireWandId() local_unnamed_addr #1

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 632, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %10 = load i64, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %10, %12 ], [ %23, %14 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = tail call ptr @DestroyDrawInfo(ptr noundef %18) #15
  %20 = load ptr, ptr %13, align 8, !tbaa !43
  %21 = load i64, ptr %9, align 8, !tbaa !42
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %19, ptr %22, align 8, !tbaa !44
  %23 = add i64 %21, -1
  store i64 %23, ptr %9, align 8, !tbaa !42
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !67

25:                                               ; preds = %14, %8
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = tail call ptr @DestroyDrawInfo(ptr noundef %28) #15
  %30 = load ptr, ptr %26, align 8, !tbaa !43
  %31 = load i64, ptr %9, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %29, ptr %32, align 8, !tbaa !44
  %33 = load ptr, ptr %26, align 8, !tbaa !43
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #15
  store ptr %34, ptr %26, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = tail call ptr @DestroyString(ptr noundef nonnull %36) #15
  store ptr %39, ptr %35, align 8, !tbaa !48
  br label %40

40:                                               ; preds = %38, %25
  %41 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = tail call ptr @DestroyString(ptr noundef %42) #15
  store ptr %43, ptr %41, align 8, !tbaa !49
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 17
  %45 = load i32, ptr %44, align 8, !tbaa !50
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !51
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @DestroyImage(ptr noundef nonnull %49) #15
  store ptr %52, ptr %48, align 8, !tbaa !51
  br label %53

53:                                               ; preds = %51, %47, %40
  %54 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  store ptr null, ptr %54, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = tail call ptr @DestroyExceptionInfo(ptr noundef %56) #15
  store ptr %57, ptr %55, align 8, !tbaa !52
  %58 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 19
  store i64 -2880220588, ptr %58, align 8, !tbaa !66
  %59 = load i64, ptr %0, align 8, !tbaa !55
  tail call void @RelinquishWandId(i64 noundef %59) #15
  %60 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #15
  ret ptr %60
}

declare void @RelinquishWandId(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawAffine(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 682, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  tail call fastcc void @AdjustAffine(ptr noundef %0, ptr noundef %1)
  %10 = load double, ptr %1, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %18 = load double, ptr %17, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %20 = load double, ptr %19, align 8, !tbaa !75
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.6, double noundef %10, double noundef %12, double noundef %14, double noundef %16, double noundef %18, double noundef %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @AdjustAffine(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 438, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = load double, ptr %1, align 8, !tbaa !68
  %11 = fcmp une double %10, 1.000000e+00
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !71
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !72
  %19 = fcmp une double %18, 0.000000e+00
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %22 = load double, ptr %21, align 8, !tbaa !73
  %23 = fcmp une double %22, 1.000000e+00
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %26 = load double, ptr %25, align 8, !tbaa !74
  %27 = fcmp une double %26, 0.000000e+00
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %30 = load double, ptr %29, align 8, !tbaa !75
  %31 = fcmp une double %30, 0.000000e+00
  br i1 %31, label %32, label %79

32:                                               ; preds = %28, %24, %20, %16, %12, %9
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %36 = load i64, ptr %35, align 8, !tbaa !42
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3
  %40 = load double, ptr %39, align 8, !tbaa.struct !76
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 1
  %42 = load double, ptr %41, align 8, !tbaa.struct !78
  %43 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 2
  %44 = load double, ptr %43, align 8, !tbaa.struct !79
  %45 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 3
  %46 = load double, ptr %45, align 8, !tbaa.struct !80
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 4
  %48 = load double, ptr %47, align 8, !tbaa.struct !81
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 5
  %50 = load double, ptr %49, align 8, !tbaa.struct !82
  %51 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %52 = load double, ptr %51, align 8, !tbaa !72
  %53 = fmul double %42, %52
  %54 = tail call double @llvm.fmuladd.f64(double %10, double %40, double %53)
  store double %54, ptr %39, align 8, !tbaa !83
  %55 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  %56 = load double, ptr %55, align 8, !tbaa !71
  %57 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %58 = load double, ptr %57, align 8, !tbaa !73
  %59 = fmul double %42, %58
  %60 = tail call double @llvm.fmuladd.f64(double %56, double %40, double %59)
  store double %60, ptr %41, align 8, !tbaa !92
  %61 = load double, ptr %1, align 8, !tbaa !68
  %62 = fmul double %46, %52
  %63 = tail call double @llvm.fmuladd.f64(double %61, double %44, double %62)
  store double %63, ptr %43, align 8, !tbaa !93
  %64 = load double, ptr %55, align 8, !tbaa !71
  %65 = fmul double %46, %58
  %66 = tail call double @llvm.fmuladd.f64(double %64, double %44, double %65)
  store double %66, ptr %45, align 8, !tbaa !94
  %67 = load double, ptr %51, align 8, !tbaa !72
  %68 = fmul double %50, %67
  %69 = tail call double @llvm.fmuladd.f64(double %61, double %48, double %68)
  %70 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %71 = load double, ptr %70, align 8, !tbaa !74
  %72 = fadd double %71, %69
  store double %72, ptr %47, align 8, !tbaa !95
  %73 = load double, ptr %57, align 8, !tbaa !73
  %74 = fmul double %50, %73
  %75 = tail call double @llvm.fmuladd.f64(double %64, double %48, double %74)
  %76 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %77 = load double, ptr %76, align 8, !tbaa !75
  %78 = fadd double %77, %75
  store double %78, ptr %49, align 8, !tbaa !96
  br label %79

79:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MvgPrintf(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 285, ptr noundef nonnull @.str.2, ptr noundef %1) #15
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = tail call dereferenceable_or_null(81920) ptr @AcquireQuantumMemory(i64 noundef 81920, i64 noundef 1) #20
  store ptr %14, ptr %10, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 295, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #15
  br label %102

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  store i64 81920, ptr %22, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  store i64 0, ptr %23, align 8, !tbaa !56
  br label %24

24:                                               ; preds = %21, %9
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  %26 = load i64, ptr %25, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  %28 = load i64, ptr %27, align 8, !tbaa !56
  %29 = add i64 %28, 40960
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = add i64 %26, 81920
  %33 = load ptr, ptr %10, align 8, !tbaa !49
  %34 = tail call ptr @ResizeQuantumMemory(ptr noundef %33, i64 noundef %32, i64 noundef 1) #21
  store ptr %34, ptr %10, align 8, !tbaa !49
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 309, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %39) #15
  br label %102

41:                                               ; preds = %31
  store i64 %32, ptr %25, align 8, !tbaa !57
  br label %42

42:                                               ; preds = %41, %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %43 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %45 = load i64, ptr %43, align 8, !tbaa !58
  %46 = load i64, ptr %44, align 8, !tbaa !63
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42, %48
  %49 = load ptr, ptr %10, align 8, !tbaa !49
  %50 = load i64, ptr %27, align 8, !tbaa !56
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  store i8 32, ptr %51, align 1, !tbaa !97
  %52 = load i64, ptr %27, align 8, !tbaa !56
  %53 = add i64 %52, 1
  store i64 %53, ptr %27, align 8, !tbaa !56
  %54 = load i64, ptr %43, align 8, !tbaa !58
  %55 = add i64 %54, 1
  store i64 %55, ptr %43, align 8, !tbaa !58
  %56 = load i64, ptr %44, align 8, !tbaa !63
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %48, label %58, !llvm.loop !98

58:                                               ; preds = %48, %42
  %59 = load ptr, ptr %10, align 8, !tbaa !49
  %60 = load i64, ptr %27, align 8, !tbaa !56
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store i8 0, ptr %61, align 1, !tbaa !97
  %62 = load i64, ptr %25, align 8, !tbaa !57
  %63 = load i64, ptr %27, align 8, !tbaa !56
  %64 = xor i64 %63, -1
  %65 = add i64 %62, %64
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  call void @llvm.va_start(ptr nonnull %3)
  %68 = load ptr, ptr %10, align 8, !tbaa !49
  %69 = load i64, ptr %27, align 8, !tbaa !56
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  %71 = call i32 @vsnprintf(ptr noundef %70, i64 noundef %65, ptr noundef %1, ptr noundef nonnull %3) #15
  call void @llvm.va_end(ptr %3)
  br label %72

72:                                               ; preds = %67, %58
  %73 = phi i32 [ %71, %67 ], [ -1, %58 ]
  %74 = icmp slt i32 %73, 0
  %75 = trunc i64 %65 to i32
  %76 = icmp sgt i32 %73, %75
  %77 = or i1 %74, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  %81 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %80, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 344, i32 noundef 460, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef %1) #15
  br label %88

82:                                               ; preds = %72
  %83 = zext nneg i32 %73 to i64
  %84 = load i64, ptr %27, align 8, !tbaa !56
  %85 = add i64 %84, %83
  store i64 %85, ptr %27, align 8, !tbaa !56
  %86 = load i64, ptr %43, align 8, !tbaa !58
  %87 = add i64 %86, %83
  store i64 %87, ptr %43, align 8, !tbaa !58
  br label %88

88:                                               ; preds = %82, %78
  %89 = load ptr, ptr %10, align 8, !tbaa !49
  %90 = load i64, ptr %27, align 8, !tbaa !56
  %91 = getelementptr inbounds i8, ptr %89, i64 %90
  store i8 0, ptr %91, align 1, !tbaa !97
  %92 = load i64, ptr %27, align 8, !tbaa !56
  %93 = icmp ugt i64 %92, 1
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load ptr, ptr %10, align 8, !tbaa !49
  %96 = getelementptr i8, ptr %95, i64 %92
  %97 = getelementptr i8, ptr %96, i64 -1
  %98 = load i8, ptr %97, align 1, !tbaa !97
  %99 = icmp eq i8 %98, 10
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i64 0, ptr %43, align 8, !tbaa !58
  br label %101

101:                                              ; preds = %100, %94, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %102

102:                                              ; preds = %101, %36, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @DrawAllocateWand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @NewDrawingWand()
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 11
  %9 = load i64, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = tail call ptr @DestroyDrawInfo(ptr noundef %11) #15
  %13 = load ptr, ptr %6, align 8, !tbaa !43
  %14 = load i64, ptr %8, align 8, !tbaa !42
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  store ptr %12, ptr %15, align 8, !tbaa !44
  %16 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %0) #15
  %17 = load ptr, ptr %6, align 8, !tbaa !43
  %18 = load i64, ptr %8, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  store ptr %16, ptr %19, align 8, !tbaa !44
  br label %20

20:                                               ; preds = %5, %2
  %21 = icmp eq ptr %1, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = tail call ptr @DestroyImage(ptr noundef %24) #15
  store ptr %25, ptr %23, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 17
  store i32 0, ptr %26, align 8, !tbaa !50
  br label %27

27:                                               ; preds = %22, %20
  %28 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @NewDrawingWand() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  %5 = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %1) #15
  %6 = load i64, ptr %1, align 8, !tbaa !61
  %7 = icmp eq i64 %6, 16
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @GetExceptionInfo(ptr noundef nonnull %2) #15
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6731, i32 noundef 470, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.4, ptr noundef %5) #15
  call void @CatchException(ptr noundef nonnull %2) #15
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #15
  call void @MagickWandTerminus() #15
  call void @_exit(i32 noundef -229) #18
  unreachable

11:                                               ; preds = %0
  %12 = call dereferenceable_or_null(4256) ptr @AcquireMagickMemory(i64 noundef 4256) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @GetExceptionInfo(ptr noundef nonnull %3) #15
  %15 = tail call ptr @__errno_location() #17
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = call ptr @GetExceptionMessage(i32 noundef %16) #15
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6735, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %17) #15
  call void @CatchException(ptr noundef nonnull %3) #15
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #15
  call void @MagickWandTerminus() #15
  call void @_exit(i32 noundef 1) #18
  unreachable

20:                                               ; preds = %11
  %21 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 4256) #15
  %22 = call i64 @AcquireWandId() #15
  store i64 %22, ptr %12, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 1
  %24 = uitofp i64 %22 to double
  %25 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %23, i64 noundef 4096, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120, double noundef %24) #15
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 18
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6741, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #15
  br label %31

31:                                               ; preds = %29, %20
  %32 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %32, i8 0, i64 88, i1 false)
  %33 = call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #16
  %34 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 12
  store ptr %33, ptr %34, align 8, !tbaa !43
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  call void @GetExceptionInfo(ptr noundef nonnull %4) #15
  %37 = tail call ptr @__errno_location() #17
  %38 = load i32, ptr %37, align 4, !tbaa !54
  %39 = call ptr @GetExceptionMessage(i32 noundef %38) #15
  %40 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6757, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %39) #15
  call void @CatchException(ptr noundef nonnull %4) #15
  %41 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #15
  call void @MagickWandTerminus() #15
  call void @_exit(i32 noundef 1) #18
  unreachable

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 11
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 13
  store i32 1, ptr %44, align 8, !tbaa !53
  %45 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %46 = call ptr @AcquireImage(ptr noundef null) #15
  %47 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !51
  %48 = call ptr @AcquireExceptionInfo() #15
  %49 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 17
  store i32 1, ptr %50, align 8, !tbaa !50
  %51 = call i32 @IsEventLogging() #15
  store i32 %51, ptr %26, align 4, !tbaa !34
  %52 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 19
  store i64 2880220587, ptr %52, align 8, !tbaa !66
  %53 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #15
  %54 = load ptr, ptr %34, align 8, !tbaa !43
  %55 = load i64, ptr %43, align 8, !tbaa !42
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  store ptr %53, ptr %56, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawAnnotation(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 772, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call ptr @EscapeString(ptr noundef %3, i8 noundef signext 39) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %1, double noundef %2, ptr noundef nonnull %12)
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %12) #15
  br label %16

16:                                               ; preds = %14, %11
  ret void
}

declare ptr @EscapeString(ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawArc(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 824, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %11, %7
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.8, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawBezier(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 862, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9)
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ %19, %12 ], [ %1, %10 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %10 ]
  %15 = load double, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !100
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %15, double noundef %17)
  %18 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 1
  %19 = add i64 %13, -1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %12, !llvm.loop !101

21:                                               ; preds = %12, %10
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawCircle(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 904, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.10, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawClearException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 935, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  tail call void @ClearMagickException(ptr noundef %10) #15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawComposite(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1016, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #15
  br label %17

17:                                               ; preds = %14, %7
  %18 = tail call ptr @GetImageFromMagickWand(ptr noundef %6) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = tail call ptr @CloneImage(ptr noundef nonnull %18, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %22) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %68, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @AcquireImageInfo() #15
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %26, i64 0, i32 48
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %27, ptr noundef nonnull @.str.11, i64 noundef 4096) #15
  store i64 2048, ptr %8, align 8, !tbaa !61
  %29 = load ptr, ptr %21, align 8, !tbaa !52
  %30 = call ptr @ImageToBlob(ptr noundef %26, ptr noundef nonnull %23, ptr noundef nonnull %8, ptr noundef %29) #15
  %31 = call ptr @DestroyImageInfo(ptr noundef %26) #15
  %32 = call ptr @DestroyImageList(ptr noundef nonnull %23) #15
  %33 = icmp eq ptr %30, null
  br i1 %33, label %68, label %34

34:                                               ; preds = %25
  store i64 0, ptr %9, align 8, !tbaa !61
  %35 = load i64, ptr %8, align 8, !tbaa !61
  %36 = call ptr @Base64Encode(ptr noundef nonnull %30, i64 noundef %35, ptr noundef nonnull %9) #15
  %37 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %30) #15
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #15
  %40 = load i64, ptr %8, align 8, !tbaa !61
  %41 = shl i64 %40, 2
  %42 = udiv i64 %41, 3
  %43 = add nuw nsw i64 %42, 4
  %44 = uitofp i64 %43 to double
  %45 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %10, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %44) #15
  %46 = load ptr, ptr %21, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %48 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %46, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1044, i32 noundef 300, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %47) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #15
  br label %68

49:                                               ; preds = %34
  %50 = zext i32 %1 to i64
  %51 = call ptr @CommandOptionToMnemonic(i32 noundef 11, i64 noundef %50) #15
  %52 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 55
  %53 = call ptr @MagickToMime(ptr noundef nonnull %52) #15
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %51, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %53)
  %54 = load i64, ptr %9, align 8, !tbaa !61
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49, %62
  %57 = phi i64 [ %63, %62 ], [ %54, %49 ]
  %58 = phi ptr [ %59, %62 ], [ %36, %49 ]
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %58)
  %59 = getelementptr inbounds i8, ptr %58, i64 76
  %60 = icmp sgt i64 %57, 76
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15)
  br label %62

62:                                               ; preds = %56, %61
  %63 = add nsw i64 %57, -76
  %64 = icmp sgt i64 %57, 76
  br i1 %64, label %56, label %65, !llvm.loop !102

65:                                               ; preds = %62, %49
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.16)
  %66 = call ptr @DestroyString(ptr noundef %53) #15
  %67 = call ptr @DestroyString(ptr noundef nonnull %36) #15
  br label %68

68:                                               ; preds = %25, %20, %17, %65, %39
  %69 = phi i32 [ 0, %39 ], [ 1, %65 ], [ 0, %17 ], [ 0, %20 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  ret i32 %69
}

declare ptr @GetImageFromMagickWand(ptr noundef) local_unnamed_addr #1

declare ptr @AcquireImageInfo() local_unnamed_addr #1

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ImageToBlob(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #1

declare ptr @Base64Encode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @MagickToMime(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawColor(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1107, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %4
  %12 = zext i32 %3 to i64
  %13 = tail call ptr @CommandOptionToMnemonic(i32 noundef 43, i64 noundef %12) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.17, double noundef %1, double noundef %2, ptr noundef %13)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawComment(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawEllipse(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1182, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %11, %7
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.19, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawGetBorderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1220, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 34
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %16) #15
  ret void
}

declare void @PixelSetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DrawGetClipPath(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1252, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetClipRule(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1286, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !104
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetClipUnits(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1317, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 39
  %16 = load i32, ptr %15, align 8, !tbaa !105
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @DrawGetException(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1356, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = load i32, ptr %12, align 8, !tbaa !106
  store i32 %13, ptr %1, align 4, !tbaa !54
  %14 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @GetExceptionInfo(ptr noundef nonnull %3) #15
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1363, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #15
  call void @CatchException(ptr noundef nonnull %3) #15
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #15
  call void @MagickWandTerminus() #15
  call void @_exit(i32 noundef 1) #18
  unreachable

20:                                               ; preds = %10
  store i8 0, ptr %14, align 1, !tbaa !97
  %21 = load ptr, ptr %11, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct._ExceptionInfo, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !108
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %21, align 8, !tbaa !106
  %27 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %26, ptr noundef nonnull %23) #15
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %14, ptr noundef %27, i64 noundef 4096) #15
  br label %29

29:                                               ; preds = %25, %20
  %30 = load ptr, ptr %11, align 8, !tbaa !52
  %31 = getelementptr inbounds %struct._ExceptionInfo, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !109
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.20, i64 noundef 4096) #15
  %36 = load ptr, ptr %11, align 8, !tbaa !52
  %37 = load i32, ptr %36, align 8, !tbaa !106
  %38 = getelementptr inbounds %struct._ExceptionInfo, ptr %36, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !109
  %40 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %37, ptr noundef %39) #15
  %41 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef %40, i64 noundef 4096) #15
  %42 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.21, i64 noundef 4096) #15
  br label %43

43:                                               ; preds = %34, %29
  ret ptr %14
}

declare ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetExceptionType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1408, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = load i32, ptr %10, align 8, !tbaa !106
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawGetFillColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1443, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 5
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %16) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetFillOpacity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1478, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 5, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !110
  %17 = xor i16 %16, -1
  %18 = uitofp i16 %17 to double
  %19 = fmul double %18, 0x3EF0001000100010
  ret double %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetFillRule(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1510, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !104
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DrawGetFont(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1543, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DrawGetFontFamily(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1577, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 25
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawGetFontResolution(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1616, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %3
  store double 7.200000e+01, ptr %1, align 8, !tbaa !77
  store double 7.200000e+01, ptr %2, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %15 = load i64, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct._DrawInfo, ptr %17, i64 0, i32 31
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  %22 = load ptr, ptr %16, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %22, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = call i32 @ParseGeometry(ptr noundef %24, ptr noundef nonnull %4) #15
  %26 = load double, ptr %4, align 8, !tbaa !114
  store double %26, ptr %1, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %28 = load double, ptr %27, align 8, !tbaa !116
  store double %28, ptr %2, align 8, !tbaa !77
  %29 = and i32 %25, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load double, ptr %1, align 8, !tbaa !77
  store double %32, ptr %2, align 8, !tbaa !77
  br label %33

33:                                               ; preds = %31, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  br label %34

34:                                               ; preds = %33, %11
  ret i32 1
}

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetFontSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1663, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 30
  %16 = load double, ptr %15, align 8, !tbaa !117
  ret double %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetFontStretch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1694, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 27
  %16 = load i32, ptr %15, align 4, !tbaa !118
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetFontStyle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1725, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !119
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i64 @DrawGetFontWeight(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1756, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 28
  %16 = load i64, ptr %15, align 8, !tbaa !120
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetGravity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1788, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !121
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetOpacity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1823, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 40
  %16 = load i16, ptr %15, align 4, !tbaa !122
  %17 = xor i16 %16, -1
  %18 = uitofp i16 %17 to double
  %19 = fmul double %18, 0x3EF0001000100010
  ret double %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetStrokeAntialias(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1858, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !123
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawGetStrokeColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1894, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 6
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %16) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DrawGetStrokeDashArray(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1946, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 36
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %9
  %20 = load double, ptr %17, align 8, !tbaa !77
  %21 = fcmp une double %20, 0.000000e+00
  br i1 %21, label %22, label %29

22:                                               ; preds = %19, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %19 ]
  %24 = phi ptr [ %25, %22 ], [ %17, %19 ]
  %25 = getelementptr inbounds double, ptr %24, i64 1
  %26 = add i64 %23, 1
  %27 = load double, ptr %25, align 8, !tbaa !77
  %28 = fcmp une double %27, 0.000000e+00
  br i1 %28, label %22, label %29, !llvm.loop !125

29:                                               ; preds = %22, %19, %9
  %30 = phi i64 [ 0, %9 ], [ 0, %19 ], [ %26, %22 ]
  store i64 %30, ptr %1, align 8, !tbaa !61
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %29
  %33 = add i64 %30, 1
  %34 = tail call ptr @AcquireQuantumMemory(i64 noundef %33, i64 noundef 8) #20
  %35 = icmp sgt i64 %30, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load ptr, ptr %10, align 8, !tbaa !43
  %38 = load i64, ptr %12, align 8, !tbaa !42
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %40, i64 0, i32 36
  %42 = load ptr, ptr %41, align 8, !tbaa !124
  br label %43

43:                                               ; preds = %36, %43
  %44 = phi i64 [ %50, %43 ], [ 0, %36 ]
  %45 = phi ptr [ %49, %43 ], [ %34, %36 ]
  %46 = phi ptr [ %47, %43 ], [ %42, %36 ]
  %47 = getelementptr inbounds double, ptr %46, i64 1
  %48 = load double, ptr %46, align 8, !tbaa !77
  %49 = getelementptr inbounds double, ptr %45, i64 1
  store double %48, ptr %45, align 8, !tbaa !77
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %30
  br i1 %51, label %52, label %43, !llvm.loop !126

52:                                               ; preds = %43, %32
  %53 = phi ptr [ %34, %32 ], [ %49, %43 ]
  store double 0.000000e+00, ptr %53, align 8, !tbaa !77
  br label %54

54:                                               ; preds = %52, %29
  %55 = phi ptr [ %34, %52 ], [ null, %29 ]
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetStrokeDashOffset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1996, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 18
  %16 = load double, ptr %15, align 8, !tbaa !127
  ret double %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetStrokeLineCap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2029, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 15
  %16 = load i32, ptr %15, align 4, !tbaa !128
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetStrokeLineJoin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2063, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !129
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i64 @DrawGetStrokeMiterLimit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2098, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 17
  %16 = load i64, ptr %15, align 8, !tbaa !130
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetStrokeOpacity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2132, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 6, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !131
  %17 = xor i16 %16, -1
  %18 = uitofp i16 %17 to double
  %19 = fmul double %18, 0x3EF0001000100010
  ret double %19
}

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetStrokeWidth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2165, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 7
  %16 = load double, ptr %15, align 8, !tbaa !132
  ret double %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetTextAlignment(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2197, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 32
  %16 = load i32, ptr %15, align 8, !tbaa !133
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetTextAntialias(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2229, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !134
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetTextDecoration(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2261, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 19
  %16 = load i32, ptr %15, align 8, !tbaa !135
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGetTextDirection(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2293, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 48
  %16 = load i32, ptr %15, align 8, !tbaa !136
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DrawGetTextEncoding(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2326, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 29
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetTextKerning(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2360, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 45
  %16 = load double, ptr %15, align 8, !tbaa !138
  ret double %16
}

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetTextInterlineSpacing(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2391, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 47
  %16 = load double, ptr %15, align 8, !tbaa !139
  ret double %16
}

; Function Attrs: nounwind uwtable
define dso_local double @DrawGetTextInterwordSpacing(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2422, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 46
  %16 = load double, ptr %15, align 8, !tbaa !140
  ret double %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DrawGetVectorGraphics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2485, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %1
  %12 = tail call ptr @NewXMLTreeTag(ptr noundef nonnull @.str.22) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %525, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  call void @GetMagickPixelPacket(ptr noundef %16, ptr noundef nonnull %3) #15
  %17 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.23, i64 noundef 0) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %23 = load i64, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %25, i64 0, i32 37
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = call ptr @SetXMLTreeContent(ptr noundef nonnull %17, ptr noundef %27) #15
  br label %29

29:                                               ; preds = %19, %14
  %30 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.24, i64 noundef 0) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %36 = load i64, ptr %35, align 8, !tbaa !42
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 39
  %40 = load i32, ptr %39, align 8, !tbaa !105
  %41 = zext i32 %40 to i64
  %42 = call ptr @CommandOptionToMnemonic(i32 noundef 6, i64 noundef %41) #15
  %43 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %42, i64 noundef 4096) #15
  %44 = call ptr @SetXMLTreeContent(ptr noundef nonnull %30, ptr noundef nonnull %2) #15
  br label %45

45:                                               ; preds = %32, %29
  %46 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.25, i64 noundef 0) #15
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %52 = load i64, ptr %51, align 8, !tbaa !42
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = getelementptr inbounds %struct._DrawInfo, ptr %54, i64 0, i32 19
  %56 = load i32, ptr %55, align 8, !tbaa !135
  %57 = zext i32 %56 to i64
  %58 = call ptr @CommandOptionToMnemonic(i32 noundef 16, i64 noundef %57) #15
  %59 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %58, i64 noundef 4096) #15
  %60 = call ptr @SetXMLTreeContent(ptr noundef nonnull %46, ptr noundef nonnull %2) #15
  br label %61

61:                                               ; preds = %48, %45
  %62 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.26, i64 noundef 0) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  %67 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %68 = load i64, ptr %67, align 8, !tbaa !42
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct._DrawInfo, ptr %70, i64 0, i32 29
  %72 = load ptr, ptr %71, align 8, !tbaa !137
  %73 = call ptr @SetXMLTreeContent(ptr noundef nonnull %62, ptr noundef %72) #15
  br label %74

74:                                               ; preds = %64, %61
  %75 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.27, i64 noundef 0) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %111, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  %80 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %81 = load i64, ptr %80, align 8, !tbaa !42
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 5, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !141
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  store i32 1, ptr %88, align 8, !tbaa !142
  br label %89

89:                                               ; preds = %87, %77
  %90 = load ptr, ptr %15, align 8, !tbaa !51
  %91 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 5
  %92 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 5, i32 2
  %93 = load i16, ptr %92, align 2, !tbaa !144
  %94 = uitofp i16 %93 to float
  %95 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %94, ptr %95, align 8, !tbaa !145
  %96 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 5, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !146
  %98 = uitofp i16 %97 to float
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %98, ptr %99, align 4, !tbaa !147
  %100 = load i16, ptr %91, align 2, !tbaa !148
  %101 = uitofp i16 %100 to float
  %102 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %101, ptr %102, align 8, !tbaa !149
  %103 = getelementptr inbounds %struct._Image, ptr %90, i64 0, i32 6
  %104 = load i32, ptr %103, align 8, !tbaa !150
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %89
  %107 = uitofp i16 %85 to float
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %107, ptr %108, align 4, !tbaa !159
  br label %109

109:                                              ; preds = %89, %106
  call void @GetColorTuple(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #15
  %110 = call ptr @SetXMLTreeContent(ptr noundef nonnull %75, ptr noundef nonnull %2) #15
  br label %111

111:                                              ; preds = %109, %74
  %112 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.28, i64 noundef 0) #15
  %113 = icmp eq ptr %112, null
  br i1 %113, label %128, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %116 = load ptr, ptr %115, align 8, !tbaa !43
  %117 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %118 = load i64, ptr %117, align 8, !tbaa !42
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !44
  %121 = getelementptr inbounds %struct._DrawInfo, ptr %120, i64 0, i32 5, i32 3
  %122 = load i16, ptr %121, align 2, !tbaa !110
  %123 = xor i16 %122, -1
  %124 = uitofp i16 %123 to double
  %125 = fmul double %124, 0x3EF0001000100010
  %126 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %125) #15
  %127 = call ptr @SetXMLTreeContent(ptr noundef nonnull %112, ptr noundef nonnull %2) #15
  br label %128

128:                                              ; preds = %114, %111
  %129 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.30, i64 noundef 0) #15
  %130 = icmp eq ptr %129, null
  br i1 %130, label %144, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %133 = load ptr, ptr %132, align 8, !tbaa !43
  %134 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %135 = load i64, ptr %134, align 8, !tbaa !42
  %136 = getelementptr inbounds ptr, ptr %133, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !44
  %138 = getelementptr inbounds %struct._DrawInfo, ptr %137, i64 0, i32 14
  %139 = load i32, ptr %138, align 8, !tbaa !104
  %140 = zext i32 %139 to i64
  %141 = call ptr @CommandOptionToMnemonic(i32 noundef 24, i64 noundef %140) #15
  %142 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %141, i64 noundef 4096) #15
  %143 = call ptr @SetXMLTreeContent(ptr noundef nonnull %129, ptr noundef nonnull %2) #15
  br label %144

144:                                              ; preds = %131, %128
  %145 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.31, i64 noundef 0) #15
  %146 = icmp eq ptr %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !43
  %150 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %151 = load i64, ptr %150, align 8, !tbaa !42
  %152 = getelementptr inbounds ptr, ptr %149, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !44
  %154 = getelementptr inbounds %struct._DrawInfo, ptr %153, i64 0, i32 23
  %155 = load ptr, ptr %154, align 8, !tbaa !111
  %156 = call ptr @SetXMLTreeContent(ptr noundef nonnull %145, ptr noundef %155) #15
  br label %157

157:                                              ; preds = %147, %144
  %158 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.32, i64 noundef 0) #15
  %159 = icmp eq ptr %158, null
  br i1 %159, label %170, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %162 = load ptr, ptr %161, align 8, !tbaa !43
  %163 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %164 = load i64, ptr %163, align 8, !tbaa !42
  %165 = getelementptr inbounds ptr, ptr %162, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !44
  %167 = getelementptr inbounds %struct._DrawInfo, ptr %166, i64 0, i32 25
  %168 = load ptr, ptr %167, align 8, !tbaa !112
  %169 = call ptr @SetXMLTreeContent(ptr noundef nonnull %158, ptr noundef %168) #15
  br label %170

170:                                              ; preds = %160, %157
  %171 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.33, i64 noundef 0) #15
  %172 = icmp eq ptr %171, null
  br i1 %172, label %184, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %175 = load ptr, ptr %174, align 8, !tbaa !43
  %176 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %177 = load i64, ptr %176, align 8, !tbaa !42
  %178 = getelementptr inbounds ptr, ptr %175, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !44
  %180 = getelementptr inbounds %struct._DrawInfo, ptr %179, i64 0, i32 30
  %181 = load double, ptr %180, align 8, !tbaa !117
  %182 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %181) #15
  %183 = call ptr @SetXMLTreeContent(ptr noundef nonnull %171, ptr noundef nonnull %2) #15
  br label %184

184:                                              ; preds = %173, %170
  %185 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.34, i64 noundef 0) #15
  %186 = icmp eq ptr %185, null
  br i1 %186, label %200, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %189 = load ptr, ptr %188, align 8, !tbaa !43
  %190 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %191 = load i64, ptr %190, align 8, !tbaa !42
  %192 = getelementptr inbounds ptr, ptr %189, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !44
  %194 = getelementptr inbounds %struct._DrawInfo, ptr %193, i64 0, i32 27
  %195 = load i32, ptr %194, align 4, !tbaa !118
  %196 = zext i32 %195 to i64
  %197 = call ptr @CommandOptionToMnemonic(i32 noundef 63, i64 noundef %196) #15
  %198 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %197, i64 noundef 4096) #15
  %199 = call ptr @SetXMLTreeContent(ptr noundef nonnull %185, ptr noundef nonnull %2) #15
  br label %200

200:                                              ; preds = %187, %184
  %201 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.35, i64 noundef 0) #15
  %202 = icmp eq ptr %201, null
  br i1 %202, label %216, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %205 = load ptr, ptr %204, align 8, !tbaa !43
  %206 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %207 = load i64, ptr %206, align 8, !tbaa !42
  %208 = getelementptr inbounds ptr, ptr %205, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !44
  %210 = getelementptr inbounds %struct._DrawInfo, ptr %209, i64 0, i32 26
  %211 = load i32, ptr %210, align 8, !tbaa !119
  %212 = zext i32 %211 to i64
  %213 = call ptr @CommandOptionToMnemonic(i32 noundef 64, i64 noundef %212) #15
  %214 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %213, i64 noundef 4096) #15
  %215 = call ptr @SetXMLTreeContent(ptr noundef nonnull %201, ptr noundef nonnull %2) #15
  br label %216

216:                                              ; preds = %203, %200
  %217 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.36, i64 noundef 0) #15
  %218 = icmp eq ptr %217, null
  br i1 %218, label %231, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %221 = load ptr, ptr %220, align 8, !tbaa !43
  %222 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %223 = load i64, ptr %222, align 8, !tbaa !42
  %224 = getelementptr inbounds ptr, ptr %221, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !44
  %226 = getelementptr inbounds %struct._DrawInfo, ptr %225, i64 0, i32 28
  %227 = load i64, ptr %226, align 8, !tbaa !120
  %228 = uitofp i64 %227 to double
  %229 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %228) #15
  %230 = call ptr @SetXMLTreeContent(ptr noundef nonnull %217, ptr noundef nonnull %2) #15
  br label %231

231:                                              ; preds = %219, %216
  %232 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.37, i64 noundef 0) #15
  %233 = icmp eq ptr %232, null
  br i1 %233, label %247, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %236 = load ptr, ptr %235, align 8, !tbaa !43
  %237 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %238 = load i64, ptr %237, align 8, !tbaa !42
  %239 = getelementptr inbounds ptr, ptr %236, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !44
  %241 = getelementptr inbounds %struct._DrawInfo, ptr %240, i64 0, i32 4
  %242 = load i32, ptr %241, align 8, !tbaa !121
  %243 = zext i32 %242 to i64
  %244 = call ptr @CommandOptionToMnemonic(i32 noundef 30, i64 noundef %243) #15
  %245 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %244, i64 noundef 4096) #15
  %246 = call ptr @SetXMLTreeContent(ptr noundef nonnull %232, ptr noundef nonnull %2) #15
  br label %247

247:                                              ; preds = %234, %231
  %248 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.38, i64 noundef 0) #15
  %249 = icmp eq ptr %248, null
  br i1 %249, label %284, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %252 = load ptr, ptr %251, align 8, !tbaa !43
  %253 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %254 = load i64, ptr %253, align 8, !tbaa !42
  %255 = getelementptr inbounds ptr, ptr %252, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !44
  %257 = getelementptr inbounds %struct._DrawInfo, ptr %256, i64 0, i32 6, i32 3
  %258 = load i16, ptr %257, align 2, !tbaa !141
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  store i32 1, ptr %261, align 8, !tbaa !142
  br label %262

262:                                              ; preds = %260, %250
  %263 = load ptr, ptr %15, align 8, !tbaa !51
  %264 = getelementptr inbounds %struct._DrawInfo, ptr %256, i64 0, i32 6
  %265 = getelementptr inbounds %struct._DrawInfo, ptr %256, i64 0, i32 6, i32 2
  %266 = load i16, ptr %265, align 2, !tbaa !144
  %267 = uitofp i16 %266 to float
  %268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %267, ptr %268, align 8, !tbaa !145
  %269 = getelementptr inbounds %struct._DrawInfo, ptr %256, i64 0, i32 6, i32 1
  %270 = load i16, ptr %269, align 2, !tbaa !146
  %271 = uitofp i16 %270 to float
  %272 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %271, ptr %272, align 4, !tbaa !147
  %273 = load i16, ptr %264, align 2, !tbaa !148
  %274 = uitofp i16 %273 to float
  %275 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %274, ptr %275, align 8, !tbaa !149
  %276 = getelementptr inbounds %struct._Image, ptr %263, i64 0, i32 6
  %277 = load i32, ptr %276, align 8, !tbaa !150
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %262
  %280 = uitofp i16 %258 to float
  %281 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %280, ptr %281, align 4, !tbaa !159
  br label %282

282:                                              ; preds = %262, %279
  call void @GetColorTuple(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #15
  %283 = call ptr @SetXMLTreeContent(ptr noundef nonnull %248, ptr noundef nonnull %2) #15
  br label %284

284:                                              ; preds = %282, %247
  %285 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.39, i64 noundef 0) #15
  %286 = icmp eq ptr %285, null
  br i1 %286, label %300, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %289 = load ptr, ptr %288, align 8, !tbaa !43
  %290 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %291 = load i64, ptr %290, align 8, !tbaa !42
  %292 = getelementptr inbounds ptr, ptr %289, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !44
  %294 = getelementptr inbounds %struct._DrawInfo, ptr %293, i64 0, i32 12
  %295 = load i32, ptr %294, align 8, !tbaa !123
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i32
  %298 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %297) #15
  %299 = call ptr @SetXMLTreeContent(ptr noundef nonnull %285, ptr noundef nonnull %2) #15
  br label %300

300:                                              ; preds = %287, %284
  %301 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.41, i64 noundef 0) #15
  %302 = icmp eq ptr %301, null
  br i1 %302, label %354, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %305 = load ptr, ptr %304, align 8, !tbaa !43
  %306 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %307 = load i64, ptr %306, align 8, !tbaa !42
  %308 = getelementptr inbounds ptr, ptr %305, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !44
  %310 = getelementptr inbounds %struct._DrawInfo, ptr %309, i64 0, i32 36
  %311 = load ptr, ptr %310, align 8, !tbaa !124
  %312 = icmp eq ptr %311, null
  br i1 %312, label %354, label %313

313:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %314 = call ptr @AcquireString(ptr noundef null) #15
  store ptr %314, ptr %4, align 8, !tbaa !44
  %315 = load ptr, ptr %304, align 8, !tbaa !43
  %316 = load i64, ptr %306, align 8, !tbaa !42
  %317 = getelementptr inbounds ptr, ptr %315, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !44
  %319 = getelementptr inbounds %struct._DrawInfo, ptr %318, i64 0, i32 36
  %320 = load ptr, ptr %319, align 8, !tbaa !124
  %321 = load double, ptr %320, align 8, !tbaa !77
  %322 = fcmp une double %321, 0.000000e+00
  br i1 %322, label %323, label %349

323:                                              ; preds = %313, %328
  %324 = phi i64 [ %339, %328 ], [ 0, %313 ]
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %323
  %327 = call i32 @ConcatenateString(ptr noundef nonnull %4, ptr noundef nonnull @.str.42) #15
  br label %328

328:                                              ; preds = %326, %323
  %329 = load ptr, ptr %304, align 8, !tbaa !43
  %330 = load i64, ptr %306, align 8, !tbaa !42
  %331 = getelementptr inbounds ptr, ptr %329, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !44
  %333 = getelementptr inbounds %struct._DrawInfo, ptr %332, i64 0, i32 36
  %334 = load ptr, ptr %333, align 8, !tbaa !124
  %335 = getelementptr inbounds double, ptr %334, i64 %324
  %336 = load double, ptr %335, align 8, !tbaa !77
  %337 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %336) #15
  %338 = call i32 @ConcatenateString(ptr noundef nonnull %4, ptr noundef nonnull %2) #15
  %339 = add nuw nsw i64 %324, 1
  %340 = load ptr, ptr %304, align 8, !tbaa !43
  %341 = load i64, ptr %306, align 8, !tbaa !42
  %342 = getelementptr inbounds ptr, ptr %340, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !44
  %344 = getelementptr inbounds %struct._DrawInfo, ptr %343, i64 0, i32 36
  %345 = load ptr, ptr %344, align 8, !tbaa !124
  %346 = getelementptr inbounds double, ptr %345, i64 %339
  %347 = load double, ptr %346, align 8, !tbaa !77
  %348 = fcmp une double %347, 0.000000e+00
  br i1 %348, label %323, label %349, !llvm.loop !160

349:                                              ; preds = %328, %313
  %350 = load ptr, ptr %4, align 8, !tbaa !44
  %351 = call ptr @SetXMLTreeContent(ptr noundef nonnull %301, ptr noundef %350) #15
  %352 = load ptr, ptr %4, align 8, !tbaa !44
  %353 = call ptr @DestroyString(ptr noundef %352) #15
  store ptr %353, ptr %4, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %354

354:                                              ; preds = %349, %303, %300
  %355 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.43, i64 noundef 0) #15
  %356 = icmp eq ptr %355, null
  br i1 %356, label %368, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %359 = load ptr, ptr %358, align 8, !tbaa !43
  %360 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %361 = load i64, ptr %360, align 8, !tbaa !42
  %362 = getelementptr inbounds ptr, ptr %359, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !44
  %364 = getelementptr inbounds %struct._DrawInfo, ptr %363, i64 0, i32 18
  %365 = load double, ptr %364, align 8, !tbaa !127
  %366 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %365) #15
  %367 = call ptr @SetXMLTreeContent(ptr noundef nonnull %355, ptr noundef nonnull %2) #15
  br label %368

368:                                              ; preds = %357, %354
  %369 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.44, i64 noundef 0) #15
  %370 = icmp eq ptr %369, null
  br i1 %370, label %384, label %371

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %373 = load ptr, ptr %372, align 8, !tbaa !43
  %374 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %375 = load i64, ptr %374, align 8, !tbaa !42
  %376 = getelementptr inbounds ptr, ptr %373, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !44
  %378 = getelementptr inbounds %struct._DrawInfo, ptr %377, i64 0, i32 15
  %379 = load i32, ptr %378, align 4, !tbaa !128
  %380 = zext i32 %379 to i64
  %381 = call ptr @CommandOptionToMnemonic(i32 noundef 36, i64 noundef %380) #15
  %382 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %381, i64 noundef 4096) #15
  %383 = call ptr @SetXMLTreeContent(ptr noundef nonnull %369, ptr noundef nonnull %2) #15
  br label %384

384:                                              ; preds = %371, %368
  %385 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.45, i64 noundef 0) #15
  %386 = icmp eq ptr %385, null
  br i1 %386, label %400, label %387

387:                                              ; preds = %384
  %388 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %389 = load ptr, ptr %388, align 8, !tbaa !43
  %390 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %391 = load i64, ptr %390, align 8, !tbaa !42
  %392 = getelementptr inbounds ptr, ptr %389, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !44
  %394 = getelementptr inbounds %struct._DrawInfo, ptr %393, i64 0, i32 16
  %395 = load i32, ptr %394, align 8, !tbaa !129
  %396 = zext i32 %395 to i64
  %397 = call ptr @CommandOptionToMnemonic(i32 noundef 37, i64 noundef %396) #15
  %398 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %397, i64 noundef 4096) #15
  %399 = call ptr @SetXMLTreeContent(ptr noundef nonnull %385, ptr noundef nonnull %2) #15
  br label %400

400:                                              ; preds = %387, %384
  %401 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.46, i64 noundef 0) #15
  %402 = icmp eq ptr %401, null
  br i1 %402, label %415, label %403

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %405 = load ptr, ptr %404, align 8, !tbaa !43
  %406 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %407 = load i64, ptr %406, align 8, !tbaa !42
  %408 = getelementptr inbounds ptr, ptr %405, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !44
  %410 = getelementptr inbounds %struct._DrawInfo, ptr %409, i64 0, i32 17
  %411 = load i64, ptr %410, align 8, !tbaa !130
  %412 = uitofp i64 %411 to double
  %413 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %412) #15
  %414 = call ptr @SetXMLTreeContent(ptr noundef nonnull %401, ptr noundef nonnull %2) #15
  br label %415

415:                                              ; preds = %403, %400
  %416 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.47, i64 noundef 0) #15
  %417 = icmp eq ptr %416, null
  br i1 %417, label %432, label %418

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %420 = load ptr, ptr %419, align 8, !tbaa !43
  %421 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %422 = load i64, ptr %421, align 8, !tbaa !42
  %423 = getelementptr inbounds ptr, ptr %420, i64 %422
  %424 = load ptr, ptr %423, align 8, !tbaa !44
  %425 = getelementptr inbounds %struct._DrawInfo, ptr %424, i64 0, i32 6, i32 3
  %426 = load i16, ptr %425, align 2, !tbaa !131
  %427 = xor i16 %426, -1
  %428 = uitofp i16 %427 to double
  %429 = fmul double %428, 0x3EF0001000100010
  %430 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %429) #15
  %431 = call ptr @SetXMLTreeContent(ptr noundef nonnull %416, ptr noundef nonnull %2) #15
  br label %432

432:                                              ; preds = %418, %415
  %433 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.48, i64 noundef 0) #15
  %434 = icmp eq ptr %433, null
  br i1 %434, label %446, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %437 = load ptr, ptr %436, align 8, !tbaa !43
  %438 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %439 = load i64, ptr %438, align 8, !tbaa !42
  %440 = getelementptr inbounds ptr, ptr %437, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !44
  %442 = getelementptr inbounds %struct._DrawInfo, ptr %441, i64 0, i32 7
  %443 = load double, ptr %442, align 8, !tbaa !132
  %444 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %443) #15
  %445 = call ptr @SetXMLTreeContent(ptr noundef nonnull %433, ptr noundef nonnull %2) #15
  br label %446

446:                                              ; preds = %435, %432
  %447 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.49, i64 noundef 0) #15
  %448 = icmp eq ptr %447, null
  br i1 %448, label %462, label %449

449:                                              ; preds = %446
  %450 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %451 = load ptr, ptr %450, align 8, !tbaa !43
  %452 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %453 = load i64, ptr %452, align 8, !tbaa !42
  %454 = getelementptr inbounds ptr, ptr %451, i64 %453
  %455 = load ptr, ptr %454, align 8, !tbaa !44
  %456 = getelementptr inbounds %struct._DrawInfo, ptr %455, i64 0, i32 32
  %457 = load i32, ptr %456, align 8, !tbaa !133
  %458 = zext i32 %457 to i64
  %459 = call ptr @CommandOptionToMnemonic(i32 noundef 0, i64 noundef %458) #15
  %460 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %459, i64 noundef 4096) #15
  %461 = call ptr @SetXMLTreeContent(ptr noundef nonnull %447, ptr noundef nonnull %2) #15
  br label %462

462:                                              ; preds = %449, %446
  %463 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.50, i64 noundef 0) #15
  %464 = icmp eq ptr %463, null
  br i1 %464, label %478, label %465

465:                                              ; preds = %462
  %466 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %467 = load ptr, ptr %466, align 8, !tbaa !43
  %468 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %469 = load i64, ptr %468, align 8, !tbaa !42
  %470 = getelementptr inbounds ptr, ptr %467, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !44
  %472 = getelementptr inbounds %struct._DrawInfo, ptr %471, i64 0, i32 13
  %473 = load i32, ptr %472, align 4, !tbaa !134
  %474 = icmp ne i32 %473, 0
  %475 = zext i1 %474 to i32
  %476 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %475) #15
  %477 = call ptr @SetXMLTreeContent(ptr noundef nonnull %463, ptr noundef nonnull %2) #15
  br label %478

478:                                              ; preds = %465, %462
  %479 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.51, i64 noundef 0) #15
  %480 = icmp eq ptr %479, null
  br i1 %480, label %515, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %483 = load ptr, ptr %482, align 8, !tbaa !43
  %484 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %485 = load i64, ptr %484, align 8, !tbaa !42
  %486 = getelementptr inbounds ptr, ptr %483, i64 %485
  %487 = load ptr, ptr %486, align 8, !tbaa !44
  %488 = getelementptr inbounds %struct._DrawInfo, ptr %487, i64 0, i32 33, i32 3
  %489 = load i16, ptr %488, align 2, !tbaa !141
  %490 = icmp eq i16 %489, 0
  br i1 %490, label %493, label %491

491:                                              ; preds = %481
  %492 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  store i32 1, ptr %492, align 8, !tbaa !142
  br label %493

493:                                              ; preds = %491, %481
  %494 = load ptr, ptr %15, align 8, !tbaa !51
  %495 = getelementptr inbounds %struct._DrawInfo, ptr %487, i64 0, i32 33
  %496 = getelementptr inbounds %struct._DrawInfo, ptr %487, i64 0, i32 33, i32 2
  %497 = load i16, ptr %496, align 2, !tbaa !144
  %498 = uitofp i16 %497 to float
  %499 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %498, ptr %499, align 8, !tbaa !145
  %500 = getelementptr inbounds %struct._DrawInfo, ptr %487, i64 0, i32 33, i32 1
  %501 = load i16, ptr %500, align 2, !tbaa !146
  %502 = uitofp i16 %501 to float
  %503 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %502, ptr %503, align 4, !tbaa !147
  %504 = load i16, ptr %495, align 2, !tbaa !148
  %505 = uitofp i16 %504 to float
  %506 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %505, ptr %506, align 8, !tbaa !149
  %507 = getelementptr inbounds %struct._Image, ptr %494, i64 0, i32 6
  %508 = load i32, ptr %507, align 8, !tbaa !150
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %513, label %510

510:                                              ; preds = %493
  %511 = uitofp i16 %489 to float
  %512 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %511, ptr %512, align 4, !tbaa !159
  br label %513

513:                                              ; preds = %493, %510
  call void @GetColorTuple(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #15
  %514 = call ptr @SetXMLTreeContent(ptr noundef nonnull %479, ptr noundef nonnull %2) #15
  br label %515

515:                                              ; preds = %513, %478
  %516 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.52, i64 noundef 0) #15
  %517 = icmp eq ptr %516, null
  br i1 %517, label %522, label %518

518:                                              ; preds = %515
  %519 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %520 = load ptr, ptr %519, align 8, !tbaa !49
  %521 = call ptr @SetXMLTreeContent(ptr noundef nonnull %516, ptr noundef %520) #15
  br label %522

522:                                              ; preds = %518, %515
  %523 = call ptr @XMLTreeInfoToXML(ptr noundef %12) #15
  %524 = call ptr @DestroyXMLTree(ptr noundef %12) #15
  br label %525

525:                                              ; preds = %11, %522
  %526 = phi ptr [ %523, %522 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #15
  ret ptr %526
}

declare ptr @NewXMLTreeTag(ptr noundef) local_unnamed_addr #1

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AddChildToXMLTree(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @SetXMLTreeContent(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @XMLTreeInfoToXML(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawGetTextUnderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2723, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 33
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %16) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawLine(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2765, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.53, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawMatte(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2814, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %4
  %12 = zext i32 %3 to i64
  %13 = tail call ptr @CommandOptionToMnemonic(i32 noundef 43, i64 noundef %12) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.54, double noundef %1, double noundef %2, ptr noundef %13)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathClose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2849, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 4, !tbaa !65
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, ptr @.str.55, ptr @.str.56
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 4095, ptr noundef %1, ptr noundef nonnull %4) #15
  call void @llvm.va_end(ptr %4)
  %6 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 4095
  store i8 0, ptr %6, align 1, !tbaa !97
  %7 = icmp slt i32 %5, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 378, i32 noundef 460, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef %1) #15
  br label %26

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !58
  %15 = zext nneg i32 %5 to i64
  %16 = add i64 %14, %15
  %17 = icmp ugt i64 %16, 78
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = add nsw i32 %5, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !97
  %23 = icmp eq i8 %22, 10
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15)
  br label %25

25:                                               ; preds = %24, %18, %12
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3)
  br label %26

26:                                               ; preds = %25, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathCurveToAbsolute(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2922, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i32, ptr %8, align 4, !tbaa !34
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2902, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #15
  br label %20

20:                                               ; preds = %17, %14
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !64
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !65
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %20
  store i32 2, ptr %21, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %29, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.128, i32 noundef 67, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  br label %31

30:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.129, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  br label %31

31:                                               ; preds = %28, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathCurveToRelative(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2972, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i32, ptr %8, align 4, !tbaa !34
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2902, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #15
  br label %20

20:                                               ; preds = %17, %14
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !64
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !65
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %20
  store i32 2, ptr %21, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %29, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.128, i32 noundef 99, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  br label %31

30:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.129, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  br label %31

31:                                               ; preds = %28, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathCurveToQuadraticBezierAbsolute(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3036, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = load i32, ptr %6, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3017, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #15
  br label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !64
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18
  store i32 3, ptr %19, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %27, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.130, i32 noundef 81, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %29

28:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.131, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %29

29:                                               ; preds = %26, %28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathCurveToQuadraticBezierRelative(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3080, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = load i32, ptr %6, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3017, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #15
  br label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !64
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18
  store i32 3, ptr %19, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %27, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.130, i32 noundef 113, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %29

28:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.131, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %29

29:                                               ; preds = %26, %28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathCurveToQuadraticBezierSmoothAbsolute(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3148, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i32, ptr %4, align 4, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3129, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  store i32 4, ptr %17, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %25, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.132, i32 noundef 84, double noundef %1, double noundef %2)
  br label %27

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %1, double noundef %2)
  br label %27

27:                                               ; preds = %24, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathCurveToQuadraticBezierSmoothRelative(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3129, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 4, !tbaa !65
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10
  store i32 4, ptr %11, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %19, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.132, i32 noundef 116, double noundef %1, double noundef %2)
  br label %21

20:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %1, double noundef %2)
  br label %21

21:                                               ; preds = %18, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathCurveToSmoothAbsolute(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3262, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = load i32, ptr %6, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3243, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #15
  br label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !64
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18
  store i32 5, ptr %19, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %27, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.130, i32 noundef 83, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %29

28:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.131, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %29

29:                                               ; preds = %26, %28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathCurveToSmoothRelative(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3312, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = load i32, ptr %6, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3243, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #15
  br label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !64
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18
  store i32 5, ptr %19, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %27, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.130, i32 noundef 115, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %29

28:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.131, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %29

29:                                               ; preds = %26, %28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathEllipticArcAbsolute(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3396, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #15
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i32, ptr %9, align 4, !tbaa !34
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3373, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #15
  br label %21

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !64
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %27 = load i32, ptr %26, align 4, !tbaa !65
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %21
  store i32 6, ptr %22, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %30, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.133, i32 noundef 65, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7)
  br label %32

31:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.134, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7)
  br label %32

32:                                               ; preds = %29, %31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathEllipticArcRelative(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3373, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #15
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i32 %17, 6
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !65
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15
  store i32 6, ptr %16, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %24, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.133, i32 noundef 97, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7)
  br label %26

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.134, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7)
  br label %26

26:                                               ; preds = %23, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathFinish(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3484, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.16)
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  store i32 0, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 0, ptr %10, align 4, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathLineToAbsolute(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3544, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i32, ptr %4, align 4, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3525, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  store i32 8, ptr %17, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %25, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.132, i32 noundef 76, double noundef %1, double noundef %2)
  br label %27

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %1, double noundef %2)
  br label %27

27:                                               ; preds = %24, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathLineToRelative(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3583, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i32, ptr %4, align 4, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3525, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  store i32 8, ptr %17, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %25, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.132, i32 noundef 108, double noundef %1, double noundef %2)
  br label %27

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %1, double noundef %2)
  br label %27

27:                                               ; preds = %24, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathLineToHorizontalAbsolute(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3640, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %3, align 4, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3621, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #15
  br label %15

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !65
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15
  store i32 7, ptr %16, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %24, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.135, i32 noundef 72, double noundef %1)
  br label %26

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.136, double noundef %1)
  br label %26

26:                                               ; preds = %23, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathLineToHorizontalRelative(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3621, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !64
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9
  store i32 7, ptr %10, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %18, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.135, i32 noundef 104, double noundef %1)
  br label %20

19:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.136, double noundef %1)
  br label %20

20:                                               ; preds = %17, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathLineToVerticalAbsolute(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3729, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %3, align 4, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3711, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #15
  br label %15

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !65
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15
  store i32 9, ptr %16, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %24, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.135, i32 noundef 86, double noundef %1)
  br label %26

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.136, double noundef %1)
  br label %26

26:                                               ; preds = %23, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathLineToVerticalRelative(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3765, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %3, align 4, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3711, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #15
  br label %15

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !65
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15
  store i32 9, ptr %16, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %24, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.135, i32 noundef 118, double noundef %1)
  br label %26

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.136, double noundef %1)
  br label %26

26:                                               ; preds = %23, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathMoveToAbsolute(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3823, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i32, ptr %4, align 4, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3804, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  store i32 10, ptr %17, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 1, ptr %25, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.132, i32 noundef 77, double noundef %1, double noundef %2)
  br label %27

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %1, double noundef %2)
  br label %27

27:                                               ; preds = %24, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathMoveToRelative(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3862, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i32, ptr %4, align 4, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3804, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #15
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  store i32 10, ptr %17, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 2, ptr %25, align 4, !tbaa !65
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.132, i32 noundef 109, double noundef %1, double noundef %2)
  br label %27

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %1, double noundef %2)
  br label %27

27:                                               ; preds = %24, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPathStart(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3897, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.57)
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  store i32 0, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 0, ptr %10, align 4, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPoint(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3934, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.58, double noundef %1, double noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPolygon(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3972, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.59)
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ %19, %12 ], [ %1, %10 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %10 ]
  %15 = load double, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !100
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %15, double noundef %17)
  %18 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 1
  %19 = add i64 %13, -1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %12, !llvm.loop !101

21:                                               ; preds = %12, %10
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPolyline(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4010, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.60)
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ %19, %12 ], [ %1, %10 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %10 ]
  %15 = load double, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !100
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %15, double noundef %17)
  %18 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 1
  %19 = add i64 %13, -1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %12, !llvm.loop !101

21:                                               ; preds = %12, %10
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPopClipPath(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4041, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %10 = load i64, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = add i64 %10, -1
  store i64 %13, ptr %9, align 8, !tbaa !63
  br label %14

14:                                               ; preds = %12, %8
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.61)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPopDefs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4074, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %10 = load i64, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = add i64 %10, -1
  store i64 %13, ptr %9, align 8, !tbaa !63
  br label %14

14:                                               ; preds = %12, %8
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.62)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawPopPattern(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4111, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4113, i32 noundef 470, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #15
  br label %19

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4117, i32 noundef 360, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.4, ptr noundef nonnull %26) #15
  br label %61

28:                                               ; preds = %19
  %29 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #15
  %30 = load ptr, ptr %11, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 10
  %34 = load i64, ptr %33, align 8, !tbaa !59
  %35 = getelementptr inbounds i8, ptr %32, i64 %34
  %36 = call i32 @SetImageArtifact(ptr noundef %30, ptr noundef nonnull %3, ptr noundef %35) #15
  %37 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9
  %38 = load i64, ptr %37, align 8, !tbaa !161
  %39 = uitofp i64 %38 to double
  %40 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !162
  %42 = uitofp i64 %41 to double
  %43 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !163
  %45 = sitofp i64 %44 to double
  %46 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !164
  %48 = sitofp i64 %47 to double
  %49 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.65, double noundef %39, double noundef %42, double noundef %45, double noundef %48) #15
  %50 = load ptr, ptr %11, align 8, !tbaa !51
  %51 = call i32 @SetImageArtifact(ptr noundef %50, ptr noundef nonnull %3, ptr noundef nonnull %2) #15
  %52 = load ptr, ptr %20, align 8, !tbaa !48
  %53 = call ptr @DestroyString(ptr noundef %52) #15
  store ptr %53, ptr %20, align 8, !tbaa !48
  %54 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %37, i8 0, i64 40, i1 false)
  store i32 1, ptr %54, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %56 = load i64, ptr %55, align 8, !tbaa !63
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %28
  %59 = add i64 %56, -1
  store i64 %59, ptr %55, align 8, !tbaa !63
  br label %60

60:                                               ; preds = %58, %28
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.66)
  br label %61

61:                                               ; preds = %60, %23
  %62 = phi i32 [ 0, %23 ], [ 1, %60 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #15
  ret i32 %62
}

declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawPushClipPath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4170, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %1)
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %11 = load i64, ptr %10, align 8, !tbaa !63
  %12 = add i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawPushDefs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4205, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.68)
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %10 = load i64, ptr %9, align 8, !tbaa !63
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawPushPattern(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4256, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #15
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4261, i32 noundef 460, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #15
  br label %46

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  store i32 1, ptr %22, align 8, !tbaa !53
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5)
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %24 = load i64, ptr %23, align 8, !tbaa !63
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !63
  %26 = tail call ptr @AcquireString(ptr noundef %1) #15
  store ptr %26, ptr %14, align 8, !tbaa !48
  %27 = fadd double %2, -5.000000e-01
  %28 = tail call double @llvm.ceil.f64(double %27)
  %29 = fptosi double %28 to i64
  %30 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9
  %31 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 2
  store i64 %29, ptr %31, align 8, !tbaa !163
  %32 = fadd double %3, -5.000000e-01
  %33 = tail call double @llvm.ceil.f64(double %32)
  %34 = fptosi double %33 to i64
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 3
  store i64 %34, ptr %35, align 8, !tbaa !164
  %36 = fadd double %4, 5.000000e-01
  %37 = tail call double @llvm.floor.f64(double %36)
  %38 = fptoui double %37 to i64
  store i64 %38, ptr %30, align 8, !tbaa !161
  %39 = fadd double %5, 5.000000e-01
  %40 = tail call double @llvm.floor.f64(double %39)
  %41 = fptoui double %40 to i64
  %42 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 1
  store i64 %41, ptr %42, align 8, !tbaa !162
  %43 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  %44 = load i64, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 10
  store i64 %44, ptr %45, align 8, !tbaa !59
  br label %46

46:                                               ; preds = %21, %17
  %47 = phi i32 [ 0, %17 ], [ 1, %21 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: nounwind uwtable
define dso_local void @DrawRectangle(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4313, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.71, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawRender(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4347, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  store ptr %10, ptr %16, align 8, !tbaa !165
  %17 = load i32, ptr %2, align 4, !tbaa !34
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4350, ptr noundef nonnull @.str.72, ptr noundef %10) #15
  br label %21

21:                                               ; preds = %19, %8
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4352, i32 noundef 470, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, ptr noundef nonnull %28) #15
  br label %30

30:                                               ; preds = %25, %21
  %31 = load ptr, ptr %22, align 8, !tbaa !51
  %32 = load ptr, ptr %11, align 8, !tbaa !43
  %33 = load i64, ptr %13, align 8, !tbaa !42
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = tail call i32 @DrawImage(ptr noundef %31, ptr noundef %35) #15
  %37 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = load ptr, ptr %22, align 8, !tbaa !51
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 58
  tail call void @InheritException(ptr noundef %38, ptr noundef nonnull %40) #15
  %41 = load ptr, ptr %11, align 8, !tbaa !43
  %42 = load i64, ptr %13, align 8, !tbaa !42
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  store ptr null, ptr %44, align 8, !tbaa !165
  ret i32 %36
}

declare i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawResetVectorGraphics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4387, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyString(ptr noundef nonnull %10) #15
  store ptr %13, ptr %9, align 8, !tbaa !49
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawRotate(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4424, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.73, double noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawRoundRectangle(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4471, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %11, %7
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.74, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawScale(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4508, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.75, double noundef %1, double noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetBorderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4562, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %3) #15
  %11 = load i64, ptr %3, align 8
  %12 = trunc i64 %11 to i16
  %13 = lshr i64 %11, 16
  %14 = trunc i64 %13 to i16
  %15 = lshr i64 %11, 48
  %16 = trunc i64 %15 to i16
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !53
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %10
  %23 = lshr i64 %11, 32
  %24 = trunc i64 %23 to i16
  %25 = load ptr, ptr %17, align 8, !tbaa !43
  %26 = load i64, ptr %18, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 34
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 34, i32 2
  %31 = load i16, ptr %30, align 2, !tbaa !144
  %32 = icmp eq i16 %31, %24
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 34, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !146
  %36 = icmp eq i16 %35, %14
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i16, ptr %29, align 2, !tbaa !148
  %39 = icmp eq i16 %38, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 34, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !141
  %43 = icmp eq i16 %42, %16
  br i1 %43, label %50, label %44

44:                                               ; preds = %22, %33, %37, %40, %10
  %45 = load ptr, ptr %17, align 8, !tbaa !43
  %46 = load i64, ptr %18, align 8, !tbaa !42
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %48, i64 0, i32 34
  store i64 %11, ptr %49, align 4
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.76)
  call fastcc void @MvgAppendColor(ptr noundef %0, ptr noundef nonnull %3)
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.16)
  br label %50

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

declare void @PixelGetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @MvgAppendColor(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !144
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !146
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i16, ptr %1, align 2, !tbaa !148
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !141
  %18 = icmp eq i16 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.137)
  br label %41

20:                                               ; preds = %15, %12, %8, %2
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  call void @GetMagickPixelPacket(ptr noundef %22, ptr noundef nonnull %4) #15
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 1
  store i32 13, ptr %23, align 4, !tbaa !166
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !141
  %26 = icmp ne i16 %25, 0
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 2
  store i32 %27, ptr %28, align 8, !tbaa !142
  %29 = load i16, ptr %5, align 2, !tbaa !144
  %30 = uitofp i16 %29 to float
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %30, ptr %31, align 8, !tbaa !145
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !146
  %34 = uitofp i16 %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %34, ptr %35, align 4, !tbaa !147
  %36 = load i16, ptr %1, align 2, !tbaa !148
  %37 = uitofp i16 %36 to float
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %37, ptr %38, align 8, !tbaa !149
  %39 = uitofp i16 %25 to float
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %39, ptr %40, align 4, !tbaa !159
  call void @GetColorTuple(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %3) #15
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  br label %41

41:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawSetClipPath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4608, ptr noundef nonnull @.str.2, ptr noundef %1) #15
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !53
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = tail call i32 @LocaleCompare(ptr noundef nonnull %16, ptr noundef %1) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22, %18, %8
  %26 = load ptr, ptr %9, align 8, !tbaa !43
  %27 = load i64, ptr %11, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 37
  %31 = tail call ptr @CloneString(ptr noundef nonnull %30, ptr noundef %1) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %1)
  br label %32

32:                                               ; preds = %25, %22
  ret i32 1
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetClipRule(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4656, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 14
  %21 = load i32, ptr %20, align 8, !tbaa !104
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 14
  store i32 %1, ptr %30, align 8, !tbaa !104
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 24, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetClipUnits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._AffineMatrix, align 8
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4698, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct._DrawInfo, ptr %20, i64 0, i32 39
  %22 = load i32, ptr %21, align 8, !tbaa !105
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %52, label %24

24:                                               ; preds = %14, %10
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %28 = load i64, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %30, i64 0, i32 39
  store i32 %1, ptr %31, align 8, !tbaa !105
  %32 = icmp eq i32 %1, 3
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #15
  call void @GetAffineMatrix(ptr noundef nonnull %3) #15
  %34 = load ptr, ptr %25, align 8, !tbaa !43
  %35 = load i64, ptr %27, align 8, !tbaa !42
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 38, i32 2
  %39 = load double, ptr %38, align 8, !tbaa !167
  store double %39, ptr %3, align 8, !tbaa !68
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 38, i32 3
  %41 = load double, ptr %40, align 8, !tbaa !168
  %42 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 3
  store double %41, ptr %42, align 8, !tbaa !73
  %43 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 38
  %44 = load double, ptr %43, align 8, !tbaa !169
  %45 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 4
  store double %44, ptr %45, align 8, !tbaa !74
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 38, i32 1
  %47 = load double, ptr %46, align 8, !tbaa !170
  %48 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 5
  store double %47, ptr %48, align 8, !tbaa !75
  call fastcc void @AdjustAffine(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #15
  br label %49

49:                                               ; preds = %33, %24
  %50 = zext i32 %1 to i64
  %51 = call ptr @CommandOptionToMnemonic(i32 noundef 6, i64 noundef %50) #15
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef %51)
  br label %52

52:                                               ; preds = %49, %14
  ret void
}

declare void @GetAffineMatrix(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetFillColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4754, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %3) #15
  %11 = load i64, ptr %3, align 8
  %12 = trunc i64 %11 to i16
  %13 = lshr i64 %11, 16
  %14 = trunc i64 %13 to i16
  %15 = lshr i64 %11, 48
  %16 = trunc i64 %15 to i16
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !53
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %10
  %23 = lshr i64 %11, 32
  %24 = trunc i64 %23 to i16
  %25 = load ptr, ptr %17, align 8, !tbaa !43
  %26 = load i64, ptr %18, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 5
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 5, i32 2
  %31 = load i16, ptr %30, align 2, !tbaa !144
  %32 = icmp eq i16 %31, %24
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 5, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !146
  %36 = icmp eq i16 %35, %14
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i16, ptr %29, align 2, !tbaa !148
  %39 = icmp eq i16 %38, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 5, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !141
  %43 = icmp eq i16 %42, %16
  br i1 %43, label %50, label %44

44:                                               ; preds = %22, %33, %37, %40, %10
  %45 = load ptr, ptr %17, align 8, !tbaa !43
  %46 = load i64, ptr %18, align 8, !tbaa !42
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %48, i64 0, i32 5
  store i64 %11, ptr %49, align 4
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.80)
  call fastcc void @MvgAppendColor(ptr noundef %0, ptr noundef nonnull %3)
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.16)
  br label %50

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetFillOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4802, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = fsub double 1.000000e+00, %1
  %11 = fmul double %10, 6.553500e+04
  %12 = fptrunc double %11 to float
  %13 = fcmp ugt float %12, 0.000000e+00
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = fcmp ult float %12, 6.553500e+04
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = fadd float %12, 5.000000e-01
  %18 = fptoui float %17 to i16
  br label %19

19:                                               ; preds = %9, %14, %16
  %20 = phi i16 [ %18, %16 ], [ 0, %9 ], [ -1, %14 ]
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %28 = load i64, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %30, i64 0, i32 5, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !110
  %33 = icmp eq i16 %32, %20
  br i1 %33, label %42, label %34

34:                                               ; preds = %24, %19
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %38 = load i64, ptr %37, align 8, !tbaa !42
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %40, i64 0, i32 5, i32 3
  store i16 %20, ptr %41, align 2, !tbaa !110
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.81, double noundef %1)
  br label %42

42:                                               ; preds = %34, %24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawSetFontResolution(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4848, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %3
  %12 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.82, double noundef %1, double noundef %2) #15
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 31
  %20 = call ptr @CloneString(ptr noundef nonnull %19, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4888, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = fsub double 1.000000e+00, %1
  %11 = fmul double %10, 6.553500e+04
  %12 = fptrunc double %11 to float
  %13 = fcmp ugt float %12, 0.000000e+00
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = fcmp ult float %12, 6.553500e+04
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = fadd float %12, 5.000000e-01
  %18 = fptoui float %17 to i16
  br label %19

19:                                               ; preds = %9, %14, %16
  %20 = phi i16 [ %18, %16 ], [ 0, %9 ], [ -1, %14 ]
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %28 = load i64, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %30, i64 0, i32 40
  %32 = load i16, ptr %31, align 4, !tbaa !122
  %33 = icmp eq i16 %32, %20
  br i1 %33, label %43, label %34

34:                                               ; preds = %24, %19
  %35 = fptoui double %1 to i16
  %36 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %39 = load i64, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %41, i64 0, i32 40
  store i16 %35, ptr %42, align 4, !tbaa !122
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.83, double noundef %1)
  br label %43

43:                                               ; preds = %34, %24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawSetFillPatternURL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4936, ptr noundef nonnull @.str.2, ptr noundef %1) #15
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4938, i32 noundef 470, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #15
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i8, ptr %1, align 1, !tbaa !97
  %21 = icmp eq i8 %20, 35
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4942, i32 noundef 460, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #15
  br label %51

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %27) #15
  %29 = load ptr, ptr %11, align 8, !tbaa !51
  %30 = call ptr @GetImageArtifact(ptr noundef %29, ptr noundef nonnull %3) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4948, i32 noundef 460, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #15
  br label %51

36:                                               ; preds = %26
  %37 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.86, ptr noundef nonnull %1) #15
  %38 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %41 = load i64, ptr %40, align 8, !tbaa !42
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %43, i64 0, i32 5, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !110
  %46 = icmp eq i16 %45, -1
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct._DrawInfo, ptr %43, i64 0, i32 40
  %49 = load i16, ptr %48, align 4, !tbaa !122
  store i16 %49, ptr %44, align 2, !tbaa !110
  br label %50

50:                                               ; preds = %47, %36
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.87, ptr noundef nonnull %4)
  br label %51

51:                                               ; preds = %50, %32, %22
  %52 = phi i32 [ 0, %22 ], [ 0, %32 ], [ 1, %50 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  ret i32 %52
}

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetFillRule(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4991, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 14
  %21 = load i32, ptr %20, align 8, !tbaa !104
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 14
  store i32 %1, ptr %30, align 8, !tbaa !104
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 24, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawSetFont(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5032, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !111
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %21, ptr noundef %1) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %13, %9
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %30 = load i64, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %32, i64 0, i32 23
  %34 = tail call ptr @CloneString(ptr noundef nonnull %33, ptr noundef %1) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.89, ptr noundef %1)
  br label %35

35:                                               ; preds = %26, %23
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawSetFontFamily(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5075, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %21, ptr noundef %1) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %13, %9
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %30 = load i64, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %32, i64 0, i32 25
  %34 = tail call ptr @CloneString(ptr noundef nonnull %33, ptr noundef %1) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef %1)
  br label %35

35:                                               ; preds = %26, %23
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetFontSize(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5116, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 30
  %21 = load double, ptr %20, align 8, !tbaa !117
  %22 = fsub double %21, %1
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %33, label %25

25:                                               ; preds = %13, %9
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %29 = load i64, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct._DrawInfo, ptr %31, i64 0, i32 30
  store double %1, ptr %32, align 8, !tbaa !117
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.91, double noundef %1)
  br label %33

33:                                               ; preds = %25, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetFontStretch(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5160, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 27
  %21 = load i32, ptr %20, align 4, !tbaa !118
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 27
  store i32 %1, ptr %30, align 4, !tbaa !118
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 63, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetFontStyle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5200, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 26
  %21 = load i32, ptr %20, align 8, !tbaa !119
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 26
  store i32 %1, ptr %30, align 8, !tbaa !119
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 64, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetFontWeight(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5241, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 28
  %21 = load i64, ptr %20, align 8, !tbaa !120
  %22 = icmp eq i64 %21, %1
  br i1 %22, label %32, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 28
  store i64 %1, ptr %30, align 8, !tbaa !120
  %31 = uitofp i64 %1 to double
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.94, double noundef %31)
  br label %32

32:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetGravity(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5283, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !121
  %22 = or i32 %21, %1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %13, %9
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %28 = load i64, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %30, i64 0, i32 4
  store i32 %1, ptr %31, align 8, !tbaa !121
  %32 = zext i32 %1 to i64
  %33 = tail call ptr @CommandOptionToMnemonic(i32 noundef 30, i64 noundef %32) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %33)
  br label %34

34:                                               ; preds = %13, %24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetStrokeColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5329, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %3) #15
  %11 = load i64, ptr %3, align 8
  %12 = trunc i64 %11 to i16
  %13 = lshr i64 %11, 16
  %14 = trunc i64 %13 to i16
  %15 = lshr i64 %11, 48
  %16 = trunc i64 %15 to i16
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !53
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %10
  %23 = lshr i64 %11, 32
  %24 = trunc i64 %23 to i16
  %25 = load ptr, ptr %17, align 8, !tbaa !43
  %26 = load i64, ptr %18, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 6
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 6, i32 2
  %31 = load i16, ptr %30, align 2, !tbaa !144
  %32 = icmp eq i16 %31, %24
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 6, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !146
  %36 = icmp eq i16 %35, %14
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i16, ptr %29, align 2, !tbaa !148
  %39 = icmp eq i16 %38, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %28, i64 0, i32 6, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !141
  %43 = icmp eq i16 %42, %16
  br i1 %43, label %50, label %44

44:                                               ; preds = %22, %33, %37, %40, %10
  %45 = load ptr, ptr %17, align 8, !tbaa !43
  %46 = load i64, ptr %18, align 8, !tbaa !42
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %48, i64 0, i32 6
  store i64 %11, ptr %49, align 4
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.96)
  call fastcc void @MvgAppendColor(ptr noundef %0, ptr noundef nonnull %3)
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.16)
  br label %50

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawSetStrokePatternURL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5379, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5381, i32 noundef 470, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #15
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i8, ptr %1, align 1, !tbaa !97
  %22 = icmp eq i8 %21, 35
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5384, i32 noundef 460, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #15
  br label %27

27:                                               ; preds = %23, %20
  %28 = getelementptr inbounds i8, ptr %1, i64 1
  %29 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %28) #15
  %30 = load ptr, ptr %12, align 8, !tbaa !51
  %31 = call ptr @GetImageArtifact(ptr noundef %30, ptr noundef nonnull %3) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  %36 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5388, i32 noundef 460, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #15
  br label %52

37:                                               ; preds = %27
  %38 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.86, ptr noundef nonnull %1) #15
  %39 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %42 = load i64, ptr %41, align 8, !tbaa !42
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct._DrawInfo, ptr %44, i64 0, i32 6, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !131
  %47 = icmp eq i16 %46, -1
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %44, i64 0, i32 40
  %50 = load i16, ptr %49, align 4, !tbaa !122
  store i16 %50, ptr %45, align 2, !tbaa !131
  br label %51

51:                                               ; preds = %48, %37
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef nonnull %4)
  br label %52

52:                                               ; preds = %51, %33
  %53 = phi i32 [ 0, %33 ], [ 1, %51 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetStrokeAntialias(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5436, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !123
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 12
  store i32 %1, ptr %30, align 8, !tbaa !123
  %31 = icmp ne i32 %1, 0
  %32 = zext i1 %31 to i32
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.98, i32 noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawSetStrokeDashArray(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5501, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct._DrawInfo, ptr %16, i64 0, i32 36
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %10
  %21 = load double, ptr %18, align 8, !tbaa !77
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %20 ]
  %25 = phi ptr [ %26, %23 ], [ %18, %20 ]
  %26 = getelementptr inbounds double, ptr %25, i64 1
  %27 = add i64 %24, 1
  %28 = load double, ptr %26, align 8, !tbaa !77
  %29 = fcmp une double %28, 0.000000e+00
  br i1 %29, label %23, label %30, !llvm.loop !171

30:                                               ; preds = %23, %20, %10
  %31 = phi i64 [ 0, %10 ], [ 0, %20 ], [ %27, %23 ]
  %32 = icmp eq i64 %1, 0
  %33 = or i64 %31, %1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %30
  %36 = icmp eq i64 %31, %1
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = icmp ne ptr %18, null
  %39 = icmp ne ptr %2, null
  %40 = and i1 %39, %38
  %41 = icmp sgt i64 %1, 0
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37, %43
  %44 = phi i64 [ %54, %43 ], [ 0, %37 ]
  %45 = phi ptr [ %53, %43 ], [ %18, %37 ]
  %46 = phi ptr [ %52, %43 ], [ %2, %37 ]
  %47 = load double, ptr %46, align 8, !tbaa !77
  %48 = load double, ptr %45, align 8, !tbaa !77
  %49 = fsub double %47, %48
  %50 = tail call double @llvm.fabs.f64(double %49)
  %51 = fcmp oge double %50, 1.000000e-15
  %52 = getelementptr inbounds double, ptr %46, i64 1
  %53 = getelementptr inbounds double, ptr %45, i64 1
  %54 = add nuw nsw i64 %44, 1
  %55 = icmp eq i64 %54, %1
  %56 = select i1 %51, i1 true, i1 %55
  br i1 %56, label %57, label %43, !llvm.loop !172

57:                                               ; preds = %43, %35, %30, %37
  %58 = phi i1 [ false, %37 ], [ false, %30 ], [ true, %35 ], [ %51, %43 ]
  %59 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %60 = load i32, ptr %59, align 8, !tbaa !53
  %61 = icmp ne i32 %60, 0
  %62 = or i1 %58, %61
  br i1 %62, label %63, label %118

63:                                               ; preds = %57
  br i1 %19, label %71, label %64

64:                                               ; preds = %63
  %65 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %18) #15
  %66 = load ptr, ptr %11, align 8, !tbaa !43
  %67 = load i64, ptr %13, align 8, !tbaa !42
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = getelementptr inbounds %struct._DrawInfo, ptr %69, i64 0, i32 36
  store ptr %65, ptr %70, align 8, !tbaa !124
  br label %71

71:                                               ; preds = %64, %63
  br i1 %32, label %107, label %72

72:                                               ; preds = %71
  %73 = add i64 %1, 1
  %74 = tail call ptr @AcquireQuantumMemory(i64 noundef %73, i64 noundef 8) #20
  %75 = load ptr, ptr %11, align 8, !tbaa !43
  %76 = load i64, ptr %13, align 8, !tbaa !42
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !44
  %79 = getelementptr inbounds %struct._DrawInfo, ptr %78, i64 0, i32 36
  store ptr %74, ptr %79, align 8, !tbaa !124
  %80 = load ptr, ptr %77, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct._DrawInfo, ptr %80, i64 0, i32 36
  %82 = load ptr, ptr %81, align 8, !tbaa !124
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %72
  %85 = icmp sgt i64 %1, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %84
  %87 = icmp eq ptr %2, null
  br label %93

88:                                               ; preds = %72
  %89 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !52
  %91 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %92 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %90, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5543, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %91) #15
  br label %118

93:                                               ; preds = %86, %99
  %94 = phi i64 [ 0, %86 ], [ %100, %99 ]
  %95 = getelementptr inbounds double, ptr %82, i64 %94
  store double 0.000000e+00, ptr %95, align 8, !tbaa !77
  br i1 %87, label %99, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds double, ptr %2, i64 %94
  %98 = load double, ptr %97, align 8, !tbaa !77
  store double %98, ptr %95, align 8, !tbaa !77
  br label %99

99:                                               ; preds = %93, %96
  %100 = add nuw nsw i64 %94, 1
  %101 = icmp eq i64 %100, %1
  br i1 %101, label %102, label %93, !llvm.loop !173

102:                                              ; preds = %99, %84
  %103 = getelementptr inbounds double, ptr %82, i64 %1
  store double 0.000000e+00, ptr %103, align 8, !tbaa !77
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.99)
  %104 = icmp eq ptr %2, null
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = icmp sgt i64 %1, 0
  br i1 %106, label %108, label %117

107:                                              ; preds = %71
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.99)
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.100)
  br label %118

108:                                              ; preds = %105, %112
  %109 = phi i64 [ %115, %112 ], [ 0, %105 ]
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.42)
  br label %112

112:                                              ; preds = %111, %108
  %113 = getelementptr inbounds double, ptr %2, i64 %109
  %114 = load double, ptr %113, align 8, !tbaa !77
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.29, double noundef %114)
  %115 = add nuw nsw i64 %109, 1
  %116 = icmp eq i64 %115, %1
  br i1 %116, label %117, label %108, !llvm.loop !174

117:                                              ; preds = %112, %105
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15)
  br label %118

118:                                              ; preds = %57, %102, %117, %107, %88
  %119 = phi i32 [ 0, %88 ], [ 1, %107 ], [ 1, %117 ], [ 1, %102 ], [ 1, %57 ]
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetStrokeDashOffset(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5604, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 18
  %21 = load double, ptr %20, align 8, !tbaa !127
  %22 = fsub double %21, %1
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %33, label %25

25:                                               ; preds = %13, %9
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %29 = load i64, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct._DrawInfo, ptr %31, i64 0, i32 18
  store double %1, ptr %32, align 8, !tbaa !127
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.101, double noundef %1)
  br label %33

33:                                               ; preds = %25, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetStrokeLineCap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5645, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !128
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 15
  store i32 %1, ptr %30, align 4, !tbaa !128
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 36, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetStrokeLineJoin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5687, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !129
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 16
  store i32 %1, ptr %30, align 8, !tbaa !129
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 37, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetStrokeMiterLimit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5732, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 17
  %17 = load i64, ptr %16, align 8, !tbaa !130
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  store i64 %1, ptr %16, align 8, !tbaa !130
  %20 = uitofp i64 %1 to double
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.104, double noundef %20)
  br label %21

21:                                               ; preds = %19, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetStrokeOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5774, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = fsub double 1.000000e+00, %1
  %11 = fmul double %10, 6.553500e+04
  %12 = fptrunc double %11 to float
  %13 = fcmp ugt float %12, 0.000000e+00
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = fcmp ult float %12, 6.553500e+04
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = fadd float %12, 5.000000e-01
  %18 = fptoui float %17 to i16
  br label %19

19:                                               ; preds = %9, %14, %16
  %20 = phi i16 [ %18, %16 ], [ 0, %9 ], [ -1, %14 ]
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %28 = load i64, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %30, i64 0, i32 6, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !131
  %33 = icmp eq i16 %32, %20
  br i1 %33, label %42, label %34

34:                                               ; preds = %24, %19
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %38 = load i64, ptr %37, align 8, !tbaa !42
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %40, i64 0, i32 6, i32 3
  store i16 %20, ptr %41, align 2, !tbaa !131
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.105, double noundef %1)
  br label %42

42:                                               ; preds = %34, %24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetStrokeWidth(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5815, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 7
  %21 = load double, ptr %20, align 8, !tbaa !132
  %22 = fsub double %21, %1
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %33, label %25

25:                                               ; preds = %13, %9
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %29 = load i64, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct._DrawInfo, ptr %31, i64 0, i32 7
  store double %1, ptr %32, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.106, double noundef %1)
  br label %33

33:                                               ; preds = %25, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextAlignment(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5856, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 32
  %21 = load i32, ptr %20, align 8, !tbaa !133
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 32
  store i32 %1, ptr %30, align 8, !tbaa !133
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 0, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.107, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextAntialias(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5899, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 13
  %21 = load i32, ptr %20, align 4, !tbaa !134
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 13
  store i32 %1, ptr %30, align 4, !tbaa !134
  %31 = icmp ne i32 %1, 0
  %32 = zext i1 %31 to i32
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextDecoration(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5941, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 19
  %21 = load i32, ptr %20, align 8, !tbaa !135
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 19
  store i32 %1, ptr %30, align 8, !tbaa !135
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 16, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.109, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextDirection(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5985, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 48
  %21 = load i32, ptr %20, align 8, !tbaa !136
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13, %9
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %29, i64 0, i32 48
  store i32 %1, ptr %30, align 8, !tbaa !136
  %31 = zext i32 %1 to i64
  %32 = tail call ptr @CommandOptionToMnemonic(i32 noundef 18, i64 noundef %31) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.110, ptr noundef %32)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextEncoding(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6029, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 29
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %21, ptr noundef %1) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %13, %9
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %30 = load i64, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %32, i64 0, i32 29
  %34 = tail call ptr @CloneString(ptr noundef nonnull %33, ptr noundef %1) #15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.111, ptr noundef %1)
  br label %35

35:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextKerning(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6070, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 45
  %21 = load double, ptr %20, align 8, !tbaa !138
  %22 = fcmp une double %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store double %1, ptr %20, align 8, !tbaa !138
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.112, double noundef %1)
  br label %24

24:                                               ; preds = %23, %13, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextInterlineSpacing(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6111, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 47
  %21 = load double, ptr %20, align 8, !tbaa !139
  %22 = fcmp une double %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store double %1, ptr %20, align 8, !tbaa !139
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.113, double noundef %1)
  br label %24

24:                                               ; preds = %23, %13, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextInterwordSpacing(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6152, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 46
  %21 = load double, ptr %20, align 8, !tbaa !140
  %22 = fcmp une double %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store double %1, ptr %20, align 8, !tbaa !140
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.114, double noundef %1)
  br label %24

24:                                               ; preds = %23, %13, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetTextUnderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6196, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %2
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %3) #15
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct._DrawInfo, ptr %20, i64 0, i32 33
  %22 = getelementptr inbounds %struct._DrawInfo, ptr %20, i64 0, i32 33, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !144
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 2
  %25 = load i16, ptr %24, align 4, !tbaa !144
  %26 = icmp eq i16 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct._DrawInfo, ptr %20, i64 0, i32 33, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !146
  %30 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !146
  %32 = icmp eq i16 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i16, ptr %21, align 2, !tbaa !148
  %35 = load i16, ptr %3, align 8, !tbaa !148
  %36 = icmp eq i16 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %20, i64 0, i32 33, i32 3
  %39 = load i16, ptr %38, align 2, !tbaa !141
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !141
  %42 = icmp eq i16 %39, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %14, %27, %33, %37, %10
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %47 = load i64, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct._DrawInfo, ptr %49, i64 0, i32 33
  %51 = load i64, ptr %3, align 8
  store i64 %51, ptr %50, align 4
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.115)
  call fastcc void @MvgAppendColor(ptr noundef %0, ptr noundef nonnull %3)
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.16)
  br label %52

52:                                               ; preds = %43, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawSetVectorGraphics(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct._ExceptionInfo, align 8
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6263, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #15
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %19 = load i64, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = tail call ptr @DestroyDrawInfo(ptr noundef %21) #15
  %23 = load ptr, ptr %16, align 8, !tbaa !43
  %24 = load i64, ptr %18, align 8, !tbaa !42
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %22, ptr %25, align 8, !tbaa !44
  %26 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #15
  %27 = load ptr, ptr %16, align 8, !tbaa !43
  %28 = load i64, ptr %18, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  store ptr %26, ptr %29, align 8, !tbaa !44
  %30 = icmp eq ptr %1, null
  br i1 %30, label %521, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = tail call ptr @NewXMLTree(ptr noundef nonnull %1, ptr noundef %33) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %521, label %36

36:                                               ; preds = %31
  %37 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.23) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %16, align 8, !tbaa !43
  %41 = load i64, ptr %18, align 8, !tbaa !42
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %43, i64 0, i32 37
  %45 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %37) #15
  %46 = tail call ptr @CloneString(ptr noundef nonnull %44, ptr noundef %45) #15
  br label %47

47:                                               ; preds = %39, %36
  %48 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.24) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %48) #15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @ParseCommandOption(i32 noundef 6, i32 noundef 0, ptr noundef nonnull %51) #15
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %16, align 8, !tbaa !43
  %57 = load i64, ptr %18, align 8, !tbaa !42
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !44
  %60 = getelementptr inbounds %struct._DrawInfo, ptr %59, i64 0, i32 39
  store i32 %55, ptr %60, align 8, !tbaa !105
  br label %61

61:                                               ; preds = %50, %53, %47
  %62 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.25) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %62) #15
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @ParseCommandOption(i32 noundef 16, i32 noundef 0, ptr noundef nonnull %65) #15
  %69 = trunc i64 %68 to i32
  %70 = load ptr, ptr %16, align 8, !tbaa !43
  %71 = load i64, ptr %18, align 8, !tbaa !42
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !44
  %74 = getelementptr inbounds %struct._DrawInfo, ptr %73, i64 0, i32 19
  store i32 %69, ptr %74, align 8, !tbaa !135
  br label %75

75:                                               ; preds = %64, %67, %61
  %76 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.26) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %16, align 8, !tbaa !43
  %80 = load i64, ptr %18, align 8, !tbaa !42
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = getelementptr inbounds %struct._DrawInfo, ptr %82, i64 0, i32 29
  %84 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %76) #15
  %85 = tail call ptr @CloneString(ptr noundef nonnull %83, ptr noundef %84) #15
  br label %86

86:                                               ; preds = %78, %75
  %87 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.27) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %87) #15
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %16, align 8, !tbaa !43
  %94 = load i64, ptr %18, align 8, !tbaa !42
  %95 = getelementptr inbounds ptr, ptr %93, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !44
  %97 = getelementptr inbounds %struct._DrawInfo, ptr %96, i64 0, i32 5
  %98 = load ptr, ptr %32, align 8, !tbaa !52
  %99 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %90, ptr noundef nonnull %97, ptr noundef %98) #15
  br label %100

100:                                              ; preds = %89, %92, %86
  %101 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.28) #15
  %102 = icmp eq ptr %101, null
  br i1 %102, label %124, label %103

103:                                              ; preds = %100
  %104 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %101) #15
  %105 = icmp eq ptr %104, null
  br i1 %105, label %124, label %106

106:                                              ; preds = %103
  %107 = tail call double @InterpretLocaleValue(ptr noundef nonnull %104, ptr noundef null) #15
  %108 = fsub double 1.000000e+00, %107
  %109 = fmul double %108, 6.553500e+04
  %110 = fptrunc double %109 to float
  %111 = fcmp ugt float %110, 0.000000e+00
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = fcmp ult float %110, 6.553500e+04
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = fadd float %110, 5.000000e-01
  %116 = fptoui float %115 to i16
  br label %117

117:                                              ; preds = %106, %112, %114
  %118 = phi i16 [ %116, %114 ], [ 0, %106 ], [ -1, %112 ]
  %119 = load ptr, ptr %16, align 8, !tbaa !43
  %120 = load i64, ptr %18, align 8, !tbaa !42
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !44
  %123 = getelementptr inbounds %struct._DrawInfo, ptr %122, i64 0, i32 5, i32 3
  store i16 %118, ptr %123, align 2, !tbaa !110
  br label %124

124:                                              ; preds = %103, %117, %100
  %125 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.30) #15
  %126 = icmp eq ptr %125, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %124
  %128 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %125) #15
  %129 = icmp eq ptr %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %127
  %131 = tail call i64 @ParseCommandOption(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %128) #15
  %132 = trunc i64 %131 to i32
  %133 = load ptr, ptr %16, align 8, !tbaa !43
  %134 = load i64, ptr %18, align 8, !tbaa !42
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !44
  %137 = getelementptr inbounds %struct._DrawInfo, ptr %136, i64 0, i32 14
  store i32 %132, ptr %137, align 8, !tbaa !104
  br label %138

138:                                              ; preds = %127, %130, %124
  %139 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.31) #15
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %16, align 8, !tbaa !43
  %143 = load i64, ptr %18, align 8, !tbaa !42
  %144 = getelementptr inbounds ptr, ptr %142, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !44
  %146 = getelementptr inbounds %struct._DrawInfo, ptr %145, i64 0, i32 23
  %147 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %139) #15
  %148 = tail call ptr @CloneString(ptr noundef nonnull %146, ptr noundef %147) #15
  br label %149

149:                                              ; preds = %141, %138
  %150 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.32) #15
  %151 = icmp eq ptr %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %16, align 8, !tbaa !43
  %154 = load i64, ptr %18, align 8, !tbaa !42
  %155 = getelementptr inbounds ptr, ptr %153, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !44
  %157 = getelementptr inbounds %struct._DrawInfo, ptr %156, i64 0, i32 25
  %158 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %150) #15
  %159 = tail call ptr @CloneString(ptr noundef nonnull %157, ptr noundef %158) #15
  br label %160

160:                                              ; preds = %152, %149
  %161 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.33) #15
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %160
  %164 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %161) #15
  %165 = icmp eq ptr %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %163
  %167 = tail call double @InterpretLocaleValue(ptr noundef nonnull %164, ptr noundef null) #15
  %168 = load ptr, ptr %16, align 8, !tbaa !43
  %169 = load i64, ptr %18, align 8, !tbaa !42
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !44
  %172 = getelementptr inbounds %struct._DrawInfo, ptr %171, i64 0, i32 30
  store double %167, ptr %172, align 8, !tbaa !117
  br label %173

173:                                              ; preds = %163, %166, %160
  %174 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.34) #15
  %175 = icmp eq ptr %174, null
  br i1 %175, label %187, label %176

176:                                              ; preds = %173
  %177 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %174) #15
  %178 = icmp eq ptr %177, null
  br i1 %178, label %187, label %179

179:                                              ; preds = %176
  %180 = tail call i64 @ParseCommandOption(i32 noundef 63, i32 noundef 0, ptr noundef nonnull %177) #15
  %181 = trunc i64 %180 to i32
  %182 = load ptr, ptr %16, align 8, !tbaa !43
  %183 = load i64, ptr %18, align 8, !tbaa !42
  %184 = getelementptr inbounds ptr, ptr %182, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !44
  %186 = getelementptr inbounds %struct._DrawInfo, ptr %185, i64 0, i32 27
  store i32 %181, ptr %186, align 4, !tbaa !118
  br label %187

187:                                              ; preds = %176, %179, %173
  %188 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.35) #15
  %189 = icmp eq ptr %188, null
  br i1 %189, label %201, label %190

190:                                              ; preds = %187
  %191 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %188) #15
  %192 = icmp eq ptr %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %190
  %194 = tail call i64 @ParseCommandOption(i32 noundef 64, i32 noundef 0, ptr noundef nonnull %191) #15
  %195 = trunc i64 %194 to i32
  %196 = load ptr, ptr %16, align 8, !tbaa !43
  %197 = load i64, ptr %18, align 8, !tbaa !42
  %198 = getelementptr inbounds ptr, ptr %196, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !44
  %200 = getelementptr inbounds %struct._DrawInfo, ptr %199, i64 0, i32 26
  store i32 %195, ptr %200, align 8, !tbaa !119
  br label %201

201:                                              ; preds = %190, %193, %187
  %202 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.36) #15
  %203 = icmp eq ptr %202, null
  br i1 %203, label %214, label %204

204:                                              ; preds = %201
  %205 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %202) #15
  %206 = icmp eq ptr %205, null
  br i1 %206, label %214, label %207

207:                                              ; preds = %204
  %208 = tail call i64 @strtoul(ptr nocapture noundef nonnull %205, ptr noundef null, i32 noundef 10) #15
  %209 = load ptr, ptr %16, align 8, !tbaa !43
  %210 = load i64, ptr %18, align 8, !tbaa !42
  %211 = getelementptr inbounds ptr, ptr %209, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !44
  %213 = getelementptr inbounds %struct._DrawInfo, ptr %212, i64 0, i32 28
  store i64 %208, ptr %213, align 8, !tbaa !120
  br label %214

214:                                              ; preds = %204, %207, %201
  %215 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.37) #15
  %216 = icmp eq ptr %215, null
  br i1 %216, label %228, label %217

217:                                              ; preds = %214
  %218 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %215) #15
  %219 = icmp eq ptr %218, null
  br i1 %219, label %228, label %220

220:                                              ; preds = %217
  %221 = tail call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %218) #15
  %222 = trunc i64 %221 to i32
  %223 = load ptr, ptr %16, align 8, !tbaa !43
  %224 = load i64, ptr %18, align 8, !tbaa !42
  %225 = getelementptr inbounds ptr, ptr %223, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !44
  %227 = getelementptr inbounds %struct._DrawInfo, ptr %226, i64 0, i32 4
  store i32 %222, ptr %227, align 8, !tbaa !121
  br label %228

228:                                              ; preds = %217, %220, %214
  %229 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.38) #15
  %230 = icmp eq ptr %229, null
  br i1 %230, label %242, label %231

231:                                              ; preds = %228
  %232 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %229) #15
  %233 = icmp eq ptr %232, null
  br i1 %233, label %242, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %16, align 8, !tbaa !43
  %236 = load i64, ptr %18, align 8, !tbaa !42
  %237 = getelementptr inbounds ptr, ptr %235, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !44
  %239 = getelementptr inbounds %struct._DrawInfo, ptr %238, i64 0, i32 6
  %240 = load ptr, ptr %32, align 8, !tbaa !52
  %241 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %232, ptr noundef nonnull %239, ptr noundef %240) #15
  br label %242

242:                                              ; preds = %231, %234, %228
  %243 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.39) #15
  %244 = icmp eq ptr %243, null
  br i1 %244, label %257, label %245

245:                                              ; preds = %242
  %246 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %243) #15
  %247 = icmp eq ptr %246, null
  br i1 %247, label %257, label %248

248:                                              ; preds = %245
  %249 = tail call i64 @strtol(ptr nocapture noundef nonnull %246, ptr noundef null, i32 noundef 10) #15
  %250 = icmp ne i64 %249, 0
  %251 = zext i1 %250 to i32
  %252 = load ptr, ptr %16, align 8, !tbaa !43
  %253 = load i64, ptr %18, align 8, !tbaa !42
  %254 = getelementptr inbounds ptr, ptr %252, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !44
  %256 = getelementptr inbounds %struct._DrawInfo, ptr %255, i64 0, i32 12
  store i32 %251, ptr %256, align 8, !tbaa !123
  br label %257

257:                                              ; preds = %245, %248, %242
  %258 = tail call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.41) #15
  %259 = icmp eq ptr %258, null
  br i1 %259, label %373, label %260

260:                                              ; preds = %257
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %261 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %258) #15
  %262 = icmp eq ptr %261, null
  br i1 %262, label %372, label %263

263:                                              ; preds = %260
  %264 = load ptr, ptr %16, align 8, !tbaa !43
  %265 = load i64, ptr %18, align 8, !tbaa !42
  %266 = getelementptr inbounds ptr, ptr %264, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !44
  %268 = getelementptr inbounds %struct._DrawInfo, ptr %267, i64 0, i32 36
  %269 = load ptr, ptr %268, align 8, !tbaa !124
  %270 = icmp eq ptr %269, null
  br i1 %270, label %278, label %271

271:                                              ; preds = %263
  %272 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %269) #15
  %273 = load ptr, ptr %16, align 8, !tbaa !43
  %274 = load i64, ptr %18, align 8, !tbaa !42
  %275 = getelementptr inbounds ptr, ptr %273, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !44
  %277 = getelementptr inbounds %struct._DrawInfo, ptr %276, i64 0, i32 36
  store ptr %272, ptr %277, align 8, !tbaa !124
  br label %278

278:                                              ; preds = %271, %263
  store ptr %261, ptr %6, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %279 = call i64 @strtol(ptr noundef nonnull %261, ptr noundef nonnull %4, i32 noundef 10) #15
  %280 = load ptr, ptr %4, align 8, !tbaa !44
  %281 = icmp eq ptr %280, %261
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br i1 %281, label %372, label %282

282:                                              ; preds = %278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %283 = load ptr, ptr %6, align 8, !tbaa !44
  store ptr %283, ptr %7, align 8, !tbaa !44
  call void @GetMagickToken(ptr noundef %283, ptr noundef nonnull %7, ptr noundef nonnull %5) #15
  %284 = load i8, ptr %5, align 16, !tbaa !97
  %285 = icmp eq i8 %284, 44
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = load ptr, ptr %7, align 8, !tbaa !44
  call void @GetMagickToken(ptr noundef %287, ptr noundef nonnull %7, ptr noundef nonnull %5) #15
  br label %288

288:                                              ; preds = %286, %282
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %289 = call i64 @strtol(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 10) #15
  %290 = load ptr, ptr %3, align 8, !tbaa !44
  %291 = icmp eq ptr %290, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br i1 %291, label %304, label %292

292:                                              ; preds = %288, %299
  %293 = phi i64 [ %300, %299 ], [ 0, %288 ]
  %294 = load ptr, ptr %7, align 8, !tbaa !44
  call void @GetMagickToken(ptr noundef %294, ptr noundef nonnull %7, ptr noundef nonnull %5) #15
  %295 = load i8, ptr %5, align 16, !tbaa !97
  %296 = icmp eq i8 %295, 44
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = load ptr, ptr %7, align 8, !tbaa !44
  call void @GetMagickToken(ptr noundef %298, ptr noundef nonnull %7, ptr noundef nonnull %5) #15
  br label %299

299:                                              ; preds = %292, %297
  %300 = add nuw nsw i64 %293, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %301 = call i64 @strtol(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 10) #15
  %302 = load ptr, ptr %3, align 8, !tbaa !44
  %303 = icmp eq ptr %302, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br i1 %303, label %304, label %292, !llvm.loop !175

304:                                              ; preds = %299, %288
  %305 = phi i64 [ 0, %288 ], [ %300, %299 ]
  %306 = shl nuw i64 %305, 1
  %307 = or disjoint i64 %306, 1
  %308 = call ptr @AcquireQuantumMemory(i64 noundef %307, i64 noundef 8) #20
  %309 = load ptr, ptr %16, align 8, !tbaa !43
  %310 = load i64, ptr %18, align 8, !tbaa !42
  %311 = getelementptr inbounds ptr, ptr %309, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !44
  %313 = getelementptr inbounds %struct._DrawInfo, ptr %312, i64 0, i32 36
  store ptr %308, ptr %313, align 8, !tbaa !124
  %314 = load ptr, ptr %311, align 8, !tbaa !44
  %315 = getelementptr inbounds %struct._DrawInfo, ptr %314, i64 0, i32 36
  %316 = load ptr, ptr %315, align 8, !tbaa !124
  %317 = icmp eq ptr %316, null
  br i1 %317, label %320, label %318

318:                                              ; preds = %304
  %319 = icmp eq i64 %305, 0
  br i1 %319, label %342, label %324

320:                                              ; preds = %304
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #15
  call void @GetExceptionInfo(ptr noundef nonnull %8) #15
  %321 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %322 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6417, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %321) #15
  call void @CatchException(ptr noundef nonnull %8) #15
  %323 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %8) #15
  call void @MagickWandTerminus() #15
  call void @_exit(i32 noundef 1) #18
  unreachable

324:                                              ; preds = %318, %331
  %325 = phi i64 [ %340, %331 ], [ 0, %318 ]
  %326 = load ptr, ptr %6, align 8, !tbaa !44
  call void @GetMagickToken(ptr noundef %326, ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  %327 = load i8, ptr %5, align 16, !tbaa !97
  %328 = icmp eq i8 %327, 44
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load ptr, ptr %6, align 8, !tbaa !44
  call void @GetMagickToken(ptr noundef %330, ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  br label %331

331:                                              ; preds = %329, %324
  %332 = call double @InterpretLocaleValue(ptr noundef nonnull %5, ptr noundef null) #15
  %333 = load ptr, ptr %16, align 8, !tbaa !43
  %334 = load i64, ptr %18, align 8, !tbaa !42
  %335 = getelementptr inbounds ptr, ptr %333, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !44
  %337 = getelementptr inbounds %struct._DrawInfo, ptr %336, i64 0, i32 36
  %338 = load ptr, ptr %337, align 8, !tbaa !124
  %339 = getelementptr inbounds double, ptr %338, i64 %325
  store double %332, ptr %339, align 8, !tbaa !77
  %340 = add nuw i64 %325, 1
  %341 = icmp eq i64 %340, %305
  br i1 %341, label %342, label %324, !llvm.loop !176

342:                                              ; preds = %331, %318
  %343 = phi i64 [ 0, %318 ], [ %305, %331 ]
  %344 = and i64 %305, 1
  %345 = icmp ne i64 %344, 0
  %346 = icmp slt i64 %343, %306
  %347 = and i1 %345, %346
  br i1 %347, label %348, label %363

348:                                              ; preds = %342
  %349 = load ptr, ptr %16, align 8, !tbaa !43
  %350 = load i64, ptr %18, align 8, !tbaa !42
  %351 = getelementptr inbounds ptr, ptr %349, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !44
  %353 = getelementptr inbounds %struct._DrawInfo, ptr %352, i64 0, i32 36
  %354 = load ptr, ptr %353, align 8, !tbaa !124
  br label %355

355:                                              ; preds = %348, %355
  %356 = phi i64 [ %343, %348 ], [ %361, %355 ]
  %357 = sub nuw nsw i64 %356, %305
  %358 = getelementptr inbounds double, ptr %354, i64 %357
  %359 = load double, ptr %358, align 8, !tbaa !77
  %360 = getelementptr inbounds double, ptr %354, i64 %356
  store double %359, ptr %360, align 8, !tbaa !77
  %361 = add nuw nsw i64 %356, 1
  %362 = icmp eq i64 %361, %306
  br i1 %362, label %363, label %355, !llvm.loop !177

363:                                              ; preds = %355, %342
  %364 = phi i64 [ %343, %342 ], [ %361, %355 ]
  %365 = load ptr, ptr %16, align 8, !tbaa !43
  %366 = load i64, ptr %18, align 8, !tbaa !42
  %367 = getelementptr inbounds ptr, ptr %365, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !44
  %369 = getelementptr inbounds %struct._DrawInfo, ptr %368, i64 0, i32 36
  %370 = load ptr, ptr %369, align 8, !tbaa !124
  %371 = getelementptr inbounds double, ptr %370, i64 %364
  store double 0.000000e+00, ptr %371, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %372

372:                                              ; preds = %278, %363, %260
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  br label %373

373:                                              ; preds = %372, %257
  %374 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.43) #15
  %375 = icmp eq ptr %374, null
  br i1 %375, label %386, label %376

376:                                              ; preds = %373
  %377 = call ptr @GetXMLTreeContent(ptr noundef nonnull %374) #15
  %378 = icmp eq ptr %377, null
  br i1 %378, label %386, label %379

379:                                              ; preds = %376
  %380 = call double @InterpretLocaleValue(ptr noundef nonnull %377, ptr noundef null) #15
  %381 = load ptr, ptr %16, align 8, !tbaa !43
  %382 = load i64, ptr %18, align 8, !tbaa !42
  %383 = getelementptr inbounds ptr, ptr %381, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !44
  %385 = getelementptr inbounds %struct._DrawInfo, ptr %384, i64 0, i32 18
  store double %380, ptr %385, align 8, !tbaa !127
  br label %386

386:                                              ; preds = %376, %379, %373
  %387 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.44) #15
  %388 = icmp eq ptr %387, null
  br i1 %388, label %400, label %389

389:                                              ; preds = %386
  %390 = call ptr @GetXMLTreeContent(ptr noundef nonnull %387) #15
  %391 = icmp eq ptr %390, null
  br i1 %391, label %400, label %392

392:                                              ; preds = %389
  %393 = call i64 @ParseCommandOption(i32 noundef 36, i32 noundef 0, ptr noundef nonnull %390) #15
  %394 = trunc i64 %393 to i32
  %395 = load ptr, ptr %16, align 8, !tbaa !43
  %396 = load i64, ptr %18, align 8, !tbaa !42
  %397 = getelementptr inbounds ptr, ptr %395, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !44
  %399 = getelementptr inbounds %struct._DrawInfo, ptr %398, i64 0, i32 15
  store i32 %394, ptr %399, align 4, !tbaa !128
  br label %400

400:                                              ; preds = %389, %392, %386
  %401 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.45) #15
  %402 = icmp eq ptr %401, null
  br i1 %402, label %414, label %403

403:                                              ; preds = %400
  %404 = call ptr @GetXMLTreeContent(ptr noundef nonnull %401) #15
  %405 = icmp eq ptr %404, null
  br i1 %405, label %414, label %406

406:                                              ; preds = %403
  %407 = call i64 @ParseCommandOption(i32 noundef 37, i32 noundef 0, ptr noundef nonnull %404) #15
  %408 = trunc i64 %407 to i32
  %409 = load ptr, ptr %16, align 8, !tbaa !43
  %410 = load i64, ptr %18, align 8, !tbaa !42
  %411 = getelementptr inbounds ptr, ptr %409, i64 %410
  %412 = load ptr, ptr %411, align 8, !tbaa !44
  %413 = getelementptr inbounds %struct._DrawInfo, ptr %412, i64 0, i32 16
  store i32 %408, ptr %413, align 8, !tbaa !129
  br label %414

414:                                              ; preds = %403, %406, %400
  %415 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.46) #15
  %416 = icmp eq ptr %415, null
  br i1 %416, label %427, label %417

417:                                              ; preds = %414
  %418 = call ptr @GetXMLTreeContent(ptr noundef nonnull %415) #15
  %419 = icmp eq ptr %418, null
  br i1 %419, label %427, label %420

420:                                              ; preds = %417
  %421 = call i64 @strtoul(ptr nocapture noundef nonnull %418, ptr noundef null, i32 noundef 10) #15
  %422 = load ptr, ptr %16, align 8, !tbaa !43
  %423 = load i64, ptr %18, align 8, !tbaa !42
  %424 = getelementptr inbounds ptr, ptr %422, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !44
  %426 = getelementptr inbounds %struct._DrawInfo, ptr %425, i64 0, i32 17
  store i64 %421, ptr %426, align 8, !tbaa !130
  br label %427

427:                                              ; preds = %417, %420, %414
  %428 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.47) #15
  %429 = icmp eq ptr %428, null
  br i1 %429, label %451, label %430

430:                                              ; preds = %427
  %431 = call ptr @GetXMLTreeContent(ptr noundef nonnull %428) #15
  %432 = icmp eq ptr %431, null
  br i1 %432, label %451, label %433

433:                                              ; preds = %430
  %434 = call double @InterpretLocaleValue(ptr noundef nonnull %431, ptr noundef null) #15
  %435 = fsub double 1.000000e+00, %434
  %436 = fmul double %435, 6.553500e+04
  %437 = fptrunc double %436 to float
  %438 = fcmp ugt float %437, 0.000000e+00
  br i1 %438, label %439, label %444

439:                                              ; preds = %433
  %440 = fcmp ult float %437, 6.553500e+04
  br i1 %440, label %441, label %444

441:                                              ; preds = %439
  %442 = fadd float %437, 5.000000e-01
  %443 = fptoui float %442 to i16
  br label %444

444:                                              ; preds = %433, %439, %441
  %445 = phi i16 [ %443, %441 ], [ 0, %433 ], [ -1, %439 ]
  %446 = load ptr, ptr %16, align 8, !tbaa !43
  %447 = load i64, ptr %18, align 8, !tbaa !42
  %448 = getelementptr inbounds ptr, ptr %446, i64 %447
  %449 = load ptr, ptr %448, align 8, !tbaa !44
  %450 = getelementptr inbounds %struct._DrawInfo, ptr %449, i64 0, i32 6, i32 3
  store i16 %445, ptr %450, align 2, !tbaa !131
  br label %451

451:                                              ; preds = %430, %444, %427
  %452 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.48) #15
  %453 = icmp eq ptr %452, null
  br i1 %453, label %464, label %454

454:                                              ; preds = %451
  %455 = call ptr @GetXMLTreeContent(ptr noundef nonnull %452) #15
  %456 = icmp eq ptr %455, null
  br i1 %456, label %464, label %457

457:                                              ; preds = %454
  %458 = call double @InterpretLocaleValue(ptr noundef nonnull %455, ptr noundef null) #15
  %459 = load ptr, ptr %16, align 8, !tbaa !43
  %460 = load i64, ptr %18, align 8, !tbaa !42
  %461 = getelementptr inbounds ptr, ptr %459, i64 %460
  %462 = load ptr, ptr %461, align 8, !tbaa !44
  %463 = getelementptr inbounds %struct._DrawInfo, ptr %462, i64 0, i32 7
  store double %458, ptr %463, align 8, !tbaa !132
  br label %464

464:                                              ; preds = %454, %457, %451
  %465 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.49) #15
  %466 = icmp eq ptr %465, null
  br i1 %466, label %478, label %467

467:                                              ; preds = %464
  %468 = call ptr @GetXMLTreeContent(ptr noundef nonnull %465) #15
  %469 = icmp eq ptr %468, null
  br i1 %469, label %478, label %470

470:                                              ; preds = %467
  %471 = call i64 @ParseCommandOption(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %468) #15
  %472 = trunc i64 %471 to i32
  %473 = load ptr, ptr %16, align 8, !tbaa !43
  %474 = load i64, ptr %18, align 8, !tbaa !42
  %475 = getelementptr inbounds ptr, ptr %473, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !44
  %477 = getelementptr inbounds %struct._DrawInfo, ptr %476, i64 0, i32 32
  store i32 %472, ptr %477, align 8, !tbaa !133
  br label %478

478:                                              ; preds = %467, %470, %464
  %479 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.50) #15
  %480 = icmp eq ptr %479, null
  br i1 %480, label %493, label %481

481:                                              ; preds = %478
  %482 = call ptr @GetXMLTreeContent(ptr noundef nonnull %479) #15
  %483 = icmp eq ptr %482, null
  br i1 %483, label %493, label %484

484:                                              ; preds = %481
  %485 = call i64 @strtol(ptr nocapture noundef nonnull %482, ptr noundef null, i32 noundef 10) #15
  %486 = icmp ne i64 %485, 0
  %487 = zext i1 %486 to i32
  %488 = load ptr, ptr %16, align 8, !tbaa !43
  %489 = load i64, ptr %18, align 8, !tbaa !42
  %490 = getelementptr inbounds ptr, ptr %488, i64 %489
  %491 = load ptr, ptr %490, align 8, !tbaa !44
  %492 = getelementptr inbounds %struct._DrawInfo, ptr %491, i64 0, i32 13
  store i32 %487, ptr %492, align 4, !tbaa !134
  br label %493

493:                                              ; preds = %481, %484, %478
  %494 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.51) #15
  %495 = icmp eq ptr %494, null
  br i1 %495, label %507, label %496

496:                                              ; preds = %493
  %497 = call ptr @GetXMLTreeContent(ptr noundef nonnull %494) #15
  %498 = icmp eq ptr %497, null
  br i1 %498, label %507, label %499

499:                                              ; preds = %496
  %500 = load ptr, ptr %16, align 8, !tbaa !43
  %501 = load i64, ptr %18, align 8, !tbaa !42
  %502 = getelementptr inbounds ptr, ptr %500, i64 %501
  %503 = load ptr, ptr %502, align 8, !tbaa !44
  %504 = getelementptr inbounds %struct._DrawInfo, ptr %503, i64 0, i32 33
  %505 = load ptr, ptr %32, align 8, !tbaa !52
  %506 = call i32 @QueryColorDatabase(ptr noundef nonnull %497, ptr noundef nonnull %504, ptr noundef %505) #15
  br label %507

507:                                              ; preds = %496, %499, %493
  %508 = call ptr @GetXMLTreeChild(ptr noundef %34, ptr noundef nonnull @.str.52) #15
  %509 = icmp eq ptr %508, null
  br i1 %509, label %519, label %510

510:                                              ; preds = %507
  %511 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %512 = call ptr @GetXMLTreeContent(ptr noundef nonnull %508) #15
  %513 = call ptr @CloneString(ptr noundef nonnull %511, ptr noundef %512) #15
  %514 = load ptr, ptr %511, align 8, !tbaa !49
  %515 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %514) #19
  %516 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  store i64 %515, ptr %516, align 8, !tbaa !56
  %517 = add i64 %515, 1
  %518 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  store i64 %517, ptr %518, align 8, !tbaa !57
  br label %519

519:                                              ; preds = %510, %507
  %520 = call ptr @DestroyXMLTree(ptr noundef %34) #15
  br label %521

521:                                              ; preds = %31, %15, %519
  %522 = phi i32 [ 1, %519 ], [ 0, %15 ], [ 0, %31 ]
  ret i32 %522
}

declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #1

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DrawSkewX(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6544, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.116, double noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSkewY(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6578, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.117, double noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawTranslate(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6616, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.118, double noundef %1, double noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DrawSetViewbox(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6661, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = sitofp i64 %1 to double
  %14 = sitofp i64 %2 to double
  %15 = sitofp i64 %3 to double
  %16 = sitofp i64 %4 to double
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.119, double noundef %13, double noundef %14, double noundef %15, double noundef %16)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 19
  %5 = load i64, ptr %4, align 8, !tbaa !66
  %6 = icmp eq i64 %5, 2880220587
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.120, i64 noundef 11) #15
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %11, %7 ]
  ret i32 %13
}

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PeekDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6801, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %14) #15
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 3
  tail call void @GetAffineMatrix(ptr noundef nonnull %16) #15
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = tail call ptr @CloneString(ptr noundef %15, ptr noundef %18) #15
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PopDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6838, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %10 = load i64, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6841, i32 noundef 460, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #15
  br label %33

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds ptr, ptr %19, i64 %10
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = tail call ptr @DestroyDrawInfo(ptr noundef %21) #15
  %23 = load ptr, ptr %18, align 8, !tbaa !43
  %24 = load i64, ptr %9, align 8, !tbaa !42
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %22, ptr %25, align 8, !tbaa !44
  %26 = add i64 %24, -1
  store i64 %26, ptr %9, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %28 = load i64, ptr %27, align 8, !tbaa !63
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %17
  %31 = add i64 %28, -1
  store i64 %31, ptr %27, align 8, !tbaa !63
  br label %32

32:                                               ; preds = %30, %17
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.124)
  br label %33

33:                                               ; preds = %32, %12
  %34 = phi i32 [ 0, %12 ], [ 1, %32 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PushDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6893, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %10 = load i64, ptr %9, align 8, !tbaa !42
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = add i64 %10, 2
  %15 = tail call ptr @ResizeQuantumMemory(ptr noundef %13, i64 noundef %14, i64 noundef 8) #21
  store ptr %15, ptr %12, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6900, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #15
  br label %34

22:                                               ; preds = %8
  %23 = load i64, ptr %9, align 8, !tbaa !42
  %24 = getelementptr ptr, ptr %15, i64 %23
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %26) #15
  %28 = load ptr, ptr %12, align 8, !tbaa !43
  %29 = load i64, ptr %9, align 8, !tbaa !42
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %27, ptr %30, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.125)
  %31 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %32 = load i64, ptr %31, align 8, !tbaa !63
  %33 = add i64 %32, 1
  store i64 %33, ptr %31, align 8, !tbaa !63
  br label %34

34:                                               ; preds = %22, %17
  %35 = phi i32 [ 0, %17 ], [ 1, %22 ]
  ret i32 %35
}

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(1,2) }

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
!34 = !{!35, !41, i64 4244}
!35 = !{!"_DrawingWand", !36, i64 0, !37, i64 8, !39, i64 4104, !39, i64 4112, !39, i64 4120, !36, i64 4128, !36, i64 4136, !36, i64 4144, !39, i64 4152, !40, i64 4160, !36, i64 4192, !36, i64 4200, !39, i64 4208, !41, i64 4216, !36, i64 4224, !41, i64 4232, !41, i64 4236, !41, i64 4240, !41, i64 4244, !36, i64 4248}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"_RectangleInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"int", !37, i64 0}
!42 = !{!35, !36, i64 4200}
!43 = !{!35, !39, i64 4208}
!44 = !{!39, !39, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!35, !39, i64 4152}
!49 = !{!35, !39, i64 4120}
!50 = !{!35, !41, i64 4240}
!51 = !{!35, !39, i64 4104}
!52 = !{!35, !39, i64 4112}
!53 = !{!35, !41, i64 4216}
!54 = !{!41, !41, i64 0}
!55 = !{!35, !36, i64 0}
!56 = !{!35, !36, i64 4136}
!57 = !{!35, !36, i64 4128}
!58 = !{!35, !36, i64 4144}
!59 = !{!35, !36, i64 4192}
!60 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61}
!61 = !{!36, !36, i64 0}
!62 = distinct !{!62, !46, !47}
!63 = !{!35, !36, i64 4224}
!64 = !{!35, !41, i64 4232}
!65 = !{!35, !41, i64 4236}
!66 = !{!35, !36, i64 4248}
!67 = distinct !{!67, !46, !47}
!68 = !{!69, !70, i64 0}
!69 = !{!"_AffineMatrix", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40}
!70 = !{!"double", !37, i64 0}
!71 = !{!69, !70, i64 8}
!72 = !{!69, !70, i64 16}
!73 = !{!69, !70, i64 24}
!74 = !{!69, !70, i64 32}
!75 = !{!69, !70, i64 40}
!76 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77, i64 24, i64 8, !77, i64 32, i64 8, !77, i64 40, i64 8, !77}
!77 = !{!70, !70, i64 0}
!78 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77, i64 24, i64 8, !77, i64 32, i64 8, !77}
!79 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77, i64 24, i64 8, !77}
!80 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77}
!81 = !{i64 0, i64 8, !77, i64 8, i64 8, !77}
!82 = !{i64 0, i64 8, !77}
!83 = !{!84, !70, i64 48}
!84 = !{!"_DrawInfo", !39, i64 0, !39, i64 8, !40, i64 16, !69, i64 48, !41, i64 96, !85, i64 100, !85, i64 108, !70, i64 120, !87, i64 128, !39, i64 256, !39, i64 264, !39, i64 272, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !36, i64 304, !70, i64 312, !41, i64 320, !41, i64 324, !39, i64 328, !36, i64 336, !39, i64 344, !39, i64 352, !39, i64 360, !41, i64 368, !41, i64 372, !36, i64 376, !39, i64 384, !70, i64 392, !39, i64 400, !41, i64 408, !85, i64 412, !85, i64 420, !39, i64 432, !39, i64 440, !39, i64 448, !88, i64 456, !41, i64 488, !86, i64 492, !41, i64 496, !91, i64 504, !41, i64 672, !36, i64 680, !70, i64 688, !70, i64 696, !70, i64 704, !41, i64 712}
!85 = !{!"_PixelPacket", !86, i64 0, !86, i64 2, !86, i64 4, !86, i64 6}
!86 = !{!"short", !37, i64 0}
!87 = !{!"_GradientInfo", !41, i64 0, !40, i64 8, !88, i64 40, !39, i64 72, !36, i64 80, !41, i64 88, !41, i64 92, !36, i64 96, !89, i64 104, !90, i64 120}
!88 = !{!"_SegmentInfo", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24}
!89 = !{!"_PointInfo", !70, i64 0, !70, i64 8}
!90 = !{!"float", !37, i64 0}
!91 = !{!"_ElementReference", !39, i64 0, !41, i64 8, !87, i64 16, !36, i64 144, !39, i64 152, !39, i64 160}
!92 = !{!84, !70, i64 56}
!93 = !{!84, !70, i64 64}
!94 = !{!84, !70, i64 72}
!95 = !{!84, !70, i64 80}
!96 = !{!84, !70, i64 88}
!97 = !{!37, !37, i64 0}
!98 = distinct !{!98, !46, !47}
!99 = !{!89, !70, i64 0}
!100 = !{!89, !70, i64 8}
!101 = distinct !{!101, !46, !47}
!102 = distinct !{!102, !46, !47}
!103 = !{!84, !39, i64 448}
!104 = !{!84, !41, i64 288}
!105 = !{!84, !41, i64 488}
!106 = !{!107, !41, i64 0}
!107 = !{!"_ExceptionInfo", !41, i64 0, !41, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !41, i64 32, !39, i64 40, !36, i64 48}
!108 = !{!107, !39, i64 8}
!109 = !{!107, !39, i64 16}
!110 = !{!84, !86, i64 106}
!111 = !{!84, !39, i64 344}
!112 = !{!84, !39, i64 360}
!113 = !{!84, !39, i64 400}
!114 = !{!115, !70, i64 0}
!115 = !{!"_GeometryInfo", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32}
!116 = !{!115, !70, i64 8}
!117 = !{!84, !70, i64 392}
!118 = !{!84, !41, i64 372}
!119 = !{!84, !41, i64 368}
!120 = !{!84, !36, i64 376}
!121 = !{!84, !41, i64 96}
!122 = !{!84, !86, i64 492}
!123 = !{!84, !41, i64 280}
!124 = !{!84, !39, i64 440}
!125 = distinct !{!125, !46, !47}
!126 = distinct !{!126, !46, !47}
!127 = !{!84, !70, i64 312}
!128 = !{!84, !41, i64 292}
!129 = !{!84, !41, i64 296}
!130 = !{!84, !36, i64 304}
!131 = !{!84, !86, i64 114}
!132 = !{!84, !70, i64 120}
!133 = !{!84, !41, i64 408}
!134 = !{!84, !41, i64 284}
!135 = !{!84, !41, i64 320}
!136 = !{!84, !41, i64 712}
!137 = !{!84, !39, i64 384}
!138 = !{!84, !70, i64 688}
!139 = !{!84, !70, i64 704}
!140 = !{!84, !70, i64 696}
!141 = !{!85, !86, i64 6}
!142 = !{!143, !41, i64 8}
!143 = !{!"_MagickPixelPacket", !41, i64 0, !41, i64 4, !41, i64 8, !70, i64 16, !36, i64 24, !90, i64 32, !90, i64 36, !90, i64 40, !90, i64 44, !90, i64 48}
!144 = !{!85, !86, i64 4}
!145 = !{!143, !90, i64 32}
!146 = !{!85, !86, i64 2}
!147 = !{!143, !90, i64 36}
!148 = !{!85, !86, i64 0}
!149 = !{!143, !90, i64 40}
!150 = !{!151, !41, i64 32}
!151 = !{!"_Image", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !85, i64 80, !85, i64 88, !85, i64 96, !70, i64 104, !152, i64 112, !41, i64 208, !39, i64 216, !41, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !36, i64 256, !70, i64 264, !70, i64 272, !40, i64 280, !40, i64 312, !40, i64 344, !70, i64 376, !70, i64 384, !70, i64 392, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !154, i64 480, !155, i64 504, !39, i64 568, !39, i64 576, !39, i64 584, !39, i64 592, !39, i64 600, !39, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !36, i64 12904, !36, i64 12912, !107, i64 12920, !41, i64 12976, !36, i64 12984, !39, i64 12992, !157, i64 13000, !157, i64 13032, !39, i64 13064, !36, i64 13072, !36, i64 13080, !39, i64 13088, !39, i64 13096, !39, i64 13104, !41, i64 13112, !41, i64 13116, !85, i64 13120, !39, i64 13128, !40, i64 13136, !39, i64 13168, !39, i64 13176, !41, i64 13184, !41, i64 13188, !158, i64 13192, !41, i64 13200, !36, i64 13208, !36, i64 13216, !41, i64 13224, !36, i64 13232}
!152 = !{!"_ChromaticityInfo", !153, i64 0, !153, i64 24, !153, i64 48, !153, i64 72}
!153 = !{!"_PrimaryInfo", !70, i64 0, !70, i64 8, !70, i64 16}
!154 = !{!"_ErrorInfo", !70, i64 0, !70, i64 8, !70, i64 16}
!155 = !{!"_TimerInfo", !156, i64 0, !156, i64 24, !41, i64 48, !36, i64 56}
!156 = !{!"_Timer", !70, i64 0, !70, i64 8, !70, i64 16}
!157 = !{!"_ProfileInfo", !39, i64 0, !36, i64 8, !39, i64 16, !36, i64 24}
!158 = !{!"long long", !37, i64 0}
!159 = !{!143, !90, i64 44}
!160 = distinct !{!160, !46, !47}
!161 = !{!35, !36, i64 4160}
!162 = !{!35, !36, i64 4168}
!163 = !{!35, !36, i64 4176}
!164 = !{!35, !36, i64 4184}
!165 = !{!84, !39, i64 0}
!166 = !{!143, !41, i64 4}
!167 = !{!84, !70, i64 472}
!168 = !{!84, !70, i64 480}
!169 = !{!84, !70, i64 456}
!170 = !{!84, !70, i64 464}
!171 = distinct !{!171, !46, !47}
!172 = distinct !{!172, !46, !47}
!173 = distinct !{!173, !46, !47}
!174 = distinct !{!174, !46, !47}
!175 = distinct !{!175, !46, !47}
!176 = distinct !{!176, !46, !47}
!177 = distinct !{!177, !46, !47}
