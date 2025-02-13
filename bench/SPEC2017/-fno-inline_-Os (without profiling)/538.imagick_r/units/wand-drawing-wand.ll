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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClearDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 484, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %10, %12 ], [ %23, %14 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = tail call ptr @DestroyDrawInfo(ptr noundef %18) #20
  %20 = load ptr, ptr %13, align 8, !tbaa !14
  %21 = load i64, ptr %9, align 8, !tbaa !13
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %19, ptr %22, align 8, !tbaa !15
  %23 = add i64 %21, -1
  store i64 %23, ptr %9, align 8, !tbaa !13
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !16

25:                                               ; preds = %14, %8
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = tail call ptr @DestroyDrawInfo(ptr noundef %28) #20
  %30 = load ptr, ptr %26, align 8, !tbaa !14
  %31 = load i64, ptr %9, align 8, !tbaa !13
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %29, ptr %32, align 8, !tbaa !15
  %33 = load ptr, ptr %26, align 8, !tbaa !14
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #20
  store ptr %34, ptr %26, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = tail call ptr @DestroyString(ptr noundef nonnull %36) #20
  store ptr %39, ptr %35, align 8, !tbaa !18
  br label %40

40:                                               ; preds = %38, %25
  %41 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = tail call ptr @DestroyString(ptr noundef %42) #20
  store ptr %43, ptr %41, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 17
  %45 = load i32, ptr %44, align 8, !tbaa !20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @DestroyImage(ptr noundef nonnull %49) #20
  store ptr %52, ptr %48, align 8, !tbaa !21
  br label %55

53:                                               ; preds = %47, %40
  %54 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  store ptr null, ptr %54, align 8, !tbaa !21
  br label %55

55:                                               ; preds = %53, %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %41, i8 0, i64 88, i1 false)
  %56 = tail call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #21
  store ptr %56, ptr %26, align 8, !tbaa !14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %62 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %60, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 513, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %61) #20
  br label %75

63:                                               ; preds = %55
  %64 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #20
  %65 = load ptr, ptr %26, align 8, !tbaa !14
  %66 = load i64, ptr %9, align 8, !tbaa !13
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %64, ptr %67, align 8, !tbaa !15
  %68 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  store i32 1, ptr %68, align 8, !tbaa !23
  %69 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %70 = tail call ptr @AcquireImage(ptr noundef null) #20
  %71 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  store ptr %70, ptr %71, align 8, !tbaa !21
  %72 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !22
  tail call void @ClearMagickException(ptr noundef %73) #20
  store i32 1, ptr %44, align 8, !tbaa !20
  %74 = tail call i32 @IsEventLogging() #20
  store i32 %74, ptr %2, align 4, !tbaa !5
  br label %75

75:                                               ; preds = %63, %58
  ret void
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 560, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %1
  %11 = tail call dereferenceable_or_null(4256) ptr @AcquireMagickMemory(i64 noundef 4256) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  call void @GetExceptionInfo(ptr noundef nonnull %2) #20
  %14 = tail call ptr @__errno_location() #23
  %15 = load i32, ptr %14, align 4, !tbaa !24
  %16 = call ptr @GetExceptionMessage(i32 noundef %15) #20
  %17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 564, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %16) #20
  call void @CatchException(ptr noundef nonnull %2) #20
  %18 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #20
  call void @MagickWandTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

19:                                               ; preds = %10
  %20 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 4256) #20
  %21 = tail call i64 @AcquireWandId() #20
  store i64 %21, ptr %11, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 1
  %23 = uitofp i64 %21 to double
  %24 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %22, i64 noundef 4096, ptr noundef nonnull @.str.5, double noundef %23) #20
  %25 = tail call ptr @AcquireExceptionInfo() #20
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  tail call void @InheritException(ptr noundef %25, ptr noundef %28) #20
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = tail call ptr @AcquireString(ptr noundef %30) #20
  %32 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !19
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #25
  %34 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 6
  store i64 %33, ptr %34, align 8, !tbaa !26
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  %36 = load i64, ptr %35, align 8, !tbaa !26
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 5
  store i64 %37, ptr %38, align 8, !tbaa !27
  %39 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !28
  %41 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 7
  store i64 %40, ptr %41, align 8, !tbaa !28
  %42 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !18
  %44 = tail call ptr @AcquireString(ptr noundef %43) #20
  %45 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 8
  store ptr %44, ptr %45, align 8, !tbaa !18
  %46 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 10
  %47 = load i64, ptr %46, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 10
  store i64 %47, ptr %48, align 8, !tbaa !29
  %49 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 9
  %50 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(32) %50, i64 32, i1 false), !tbaa.struct !30
  %51 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %52 = load i64, ptr %51, align 8, !tbaa !13
  %53 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 11
  store i64 %52, ptr %53, align 8, !tbaa !13
  %54 = add i64 %52, 1
  %55 = tail call ptr @AcquireQuantumMemory(i64 noundef %54, i64 noundef 8) #26
  %56 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 12
  store ptr %55, ptr %56, align 8, !tbaa !14
  %57 = icmp eq ptr %55, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %19
  %59 = load i64, ptr %51, align 8, !tbaa !13
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  br label %69

63:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  call void @GetExceptionInfo(ptr noundef nonnull %3) #20
  %64 = tail call ptr @__errno_location() #23
  %65 = load i32, ptr %64, align 4, !tbaa !24
  %66 = call ptr @GetExceptionMessage(i32 noundef %65) #20
  %67 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 583, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %66) #20
  call void @CatchException(ptr noundef nonnull %3) #20
  %68 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #20
  call void @MagickWandTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

69:                                               ; preds = %61, %69
  %70 = phi i64 [ 0, %61 ], [ %77, %69 ]
  %71 = load ptr, ptr %62, align 8, !tbaa !14
  %72 = getelementptr inbounds ptr, ptr %71, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !15
  %74 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %73) #20
  %75 = load ptr, ptr %56, align 8, !tbaa !14
  %76 = getelementptr inbounds ptr, ptr %75, i64 %70
  store ptr %74, ptr %76, align 8, !tbaa !15
  %77 = add nuw nsw i64 %70, 1
  %78 = load i64, ptr %51, align 8, !tbaa !13
  %79 = icmp slt i64 %70, %78
  br i1 %79, label %69, label %80, !llvm.loop !32

80:                                               ; preds = %69, %58
  %81 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %82 = load i32, ptr %81, align 8, !tbaa !23
  %83 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 13
  store i32 %82, ptr %83, align 8, !tbaa !23
  %84 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %85 = load i64, ptr %84, align 8, !tbaa !33
  %86 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 14
  store i64 %85, ptr %86, align 8, !tbaa !33
  %87 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %88 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 15
  %89 = load <2 x i32>, ptr %87, align 8, !tbaa !24
  store <2 x i32> %89, ptr %88, align 8, !tbaa !24
  %90 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !21
  %92 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 2
  store ptr %91, ptr %92, align 8, !tbaa !21
  %93 = icmp eq ptr %91, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %80
  %95 = load ptr, ptr %26, align 8, !tbaa !22
  %96 = tail call ptr @CloneImage(ptr noundef nonnull %91, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %95) #20
  store ptr %96, ptr %92, align 8, !tbaa !21
  br label %97

97:                                               ; preds = %94, %80
  %98 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 17
  store i32 1, ptr %98, align 8, !tbaa !20
  %99 = tail call i32 @IsEventLogging() #20
  %100 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 18
  store i32 %99, ptr %100, align 4, !tbaa !5
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 598, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #20
  br label %104

104:                                              ; preds = %102, %97
  %105 = getelementptr inbounds %struct._DrawingWand, ptr %11, i64 0, i32 19
  store i64 2880220587, ptr %105, align 8, !tbaa !34
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickWandTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @AcquireWandId() local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 632, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %10, %12 ], [ %23, %14 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = tail call ptr @DestroyDrawInfo(ptr noundef %18) #20
  %20 = load ptr, ptr %13, align 8, !tbaa !14
  %21 = load i64, ptr %9, align 8, !tbaa !13
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %19, ptr %22, align 8, !tbaa !15
  %23 = add i64 %21, -1
  store i64 %23, ptr %9, align 8, !tbaa !13
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !35

25:                                               ; preds = %14, %8
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = tail call ptr @DestroyDrawInfo(ptr noundef %28) #20
  %30 = load ptr, ptr %26, align 8, !tbaa !14
  %31 = load i64, ptr %9, align 8, !tbaa !13
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %29, ptr %32, align 8, !tbaa !15
  %33 = load ptr, ptr %26, align 8, !tbaa !14
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #20
  store ptr %34, ptr %26, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = tail call ptr @DestroyString(ptr noundef nonnull %36) #20
  store ptr %39, ptr %35, align 8, !tbaa !18
  br label %40

40:                                               ; preds = %38, %25
  %41 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = tail call ptr @DestroyString(ptr noundef %42) #20
  store ptr %43, ptr %41, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 17
  %45 = load i32, ptr %44, align 8, !tbaa !20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @DestroyImage(ptr noundef nonnull %49) #20
  br label %53

53:                                               ; preds = %51, %47, %40
  %54 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  store ptr null, ptr %54, align 8, !tbaa !21
  %55 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = tail call ptr @DestroyExceptionInfo(ptr noundef %56) #20
  store ptr %57, ptr %55, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 19
  store i64 -2880220588, ptr %58, align 8, !tbaa !34
  %59 = load i64, ptr %0, align 8, !tbaa !25
  tail call void @RelinquishWandId(i64 noundef %59) #20
  %60 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #20
  ret ptr %60
}

; Function Attrs: optsize
declare void @RelinquishWandId(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawAffine(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 682, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  tail call fastcc void @AdjustAffine(ptr noundef nonnull %0, ptr noundef %1) #27
  %10 = load double, ptr %1, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %18 = load double, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %20 = load double, ptr %19, align 8, !tbaa !43
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, double noundef %10, double noundef %12, double noundef %14, double noundef %16, double noundef %18, double noundef %20) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @AdjustAffine(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 438, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = load <2 x double>, ptr %1, align 8, !tbaa !44
  %11 = extractelement <2 x double> %10, i64 0
  %12 = fcmp une double %11, 1.000000e+00
  %13 = extractelement <2 x double> %10, i64 1
  %14 = fcmp une double %13, 0.000000e+00
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !40
  %19 = fcmp une double %18, 0.000000e+00
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %22 = load double, ptr %21, align 8, !tbaa !41
  %23 = fcmp une double %22, 1.000000e+00
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %26 = load double, ptr %25, align 8, !tbaa !42
  %27 = fcmp une double %26, 0.000000e+00
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %30 = load double, ptr %29, align 8, !tbaa !43
  %31 = fcmp une double %30, 0.000000e+00
  br i1 %31, label %32, label %76

32:                                               ; preds = %9, %28, %24, %20, %16
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %36 = load i64, ptr %35, align 8, !tbaa !13
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3
  %40 = load double, ptr %39, align 8, !tbaa.struct !45
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 1
  %42 = load double, ptr %41, align 8, !tbaa.struct !46
  %43 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 2
  %44 = load double, ptr %43, align 8, !tbaa.struct !47
  %45 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 3
  %46 = load double, ptr %45, align 8, !tbaa.struct !48
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 4
  %48 = load double, ptr %47, align 8, !tbaa.struct !49
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 3, i32 5
  %50 = load double, ptr %49, align 8, !tbaa.struct !50
  %51 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %52 = load <2 x double>, ptr %51, align 8, !tbaa !44
  %53 = insertelement <2 x double> poison, double %42, i64 0
  %54 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x double> %54, %52
  %56 = insertelement <2 x double> poison, double %40, i64 0
  %57 = shufflevector <2 x double> %56, <2 x double> poison, <2 x i32> zeroinitializer
  %58 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %57, <2 x double> %55)
  store <2 x double> %58, ptr %39, align 8, !tbaa !44
  %59 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %60 = load <2 x double>, ptr %1, align 8, !tbaa !44
  %61 = insertelement <2 x double> poison, double %46, i64 0
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = fmul <2 x double> %62, %52
  %64 = insertelement <2 x double> poison, double %44, i64 0
  %65 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> zeroinitializer
  %66 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %65, <2 x double> %63)
  store <2 x double> %66, ptr %43, align 8, !tbaa !44
  %67 = load <2 x double>, ptr %51, align 8, !tbaa !44
  %68 = insertelement <2 x double> poison, double %50, i64 0
  %69 = shufflevector <2 x double> %68, <2 x double> poison, <2 x i32> zeroinitializer
  %70 = fmul <2 x double> %69, %67
  %71 = insertelement <2 x double> poison, double %48, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %72, <2 x double> %70)
  %74 = load <2 x double>, ptr %59, align 8, !tbaa !44
  %75 = fadd <2 x double> %74, %73
  store <2 x double> %75, ptr %47, align 8, !tbaa !44
  br label %76

76:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MvgPrintf(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 285, ptr noundef nonnull @.str.2, ptr noundef %1) #20
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  %15 = load i64, ptr %14, align 8, !tbaa !27
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !26
  br label %29

18:                                               ; preds = %9
  %19 = tail call dereferenceable_or_null(81920) ptr @AcquireQuantumMemory(i64 noundef 81920, i64 noundef 1) #26
  store ptr %19, ptr %10, align 8, !tbaa !19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 295, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #20
  br label %111

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  store i64 81920, ptr %27, align 8, !tbaa !27
  %28 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  store i64 0, ptr %28, align 8, !tbaa !26
  br label %29

29:                                               ; preds = %13, %26
  %30 = phi ptr [ %11, %13 ], [ %19, %26 ]
  %31 = phi i64 [ %17, %13 ], [ 0, %26 ]
  %32 = phi i64 [ %15, %13 ], [ 81920, %26 ]
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  %34 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  %35 = add i64 %31, 40960
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = add i64 %32, 81920
  %39 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %30, i64 noundef %38, i64 noundef 1) #28
  store ptr %39, ptr %10, align 8, !tbaa !19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %45 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 309, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %44) #20
  br label %111

46:                                               ; preds = %37
  store i64 %38, ptr %33, align 8, !tbaa !27
  %47 = load i64, ptr %34, align 8, !tbaa !26
  br label %48

48:                                               ; preds = %46, %29
  %49 = phi i64 [ %47, %46 ], [ %31, %29 ]
  %50 = phi ptr [ %39, %46 ], [ %30, %29 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %51 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 7
  %52 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %53 = load i64, ptr %51, align 8, !tbaa !28
  %54 = load i64, ptr %52, align 8, !tbaa !33
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48, %56
  %57 = phi i64 [ %61, %56 ], [ %49, %48 ]
  %58 = load ptr, ptr %10, align 8, !tbaa !19
  %59 = getelementptr inbounds i8, ptr %58, i64 %57
  store i8 32, ptr %59, align 1, !tbaa !51
  %60 = load i64, ptr %34, align 8, !tbaa !26
  %61 = add i64 %60, 1
  store i64 %61, ptr %34, align 8, !tbaa !26
  %62 = load i64, ptr %51, align 8, !tbaa !28
  %63 = add i64 %62, 1
  store i64 %63, ptr %51, align 8, !tbaa !28
  %64 = load i64, ptr %52, align 8, !tbaa !33
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %56, label %66, !llvm.loop !52

66:                                               ; preds = %56
  %67 = load ptr, ptr %10, align 8, !tbaa !19
  br label %68

68:                                               ; preds = %66, %48
  %69 = phi i64 [ %61, %66 ], [ %49, %48 ]
  %70 = phi ptr [ %67, %66 ], [ %50, %48 ]
  %71 = getelementptr inbounds i8, ptr %70, i64 %69
  store i8 0, ptr %71, align 1, !tbaa !51
  %72 = load i64, ptr %33, align 8, !tbaa !27
  %73 = load i64, ptr %34, align 8, !tbaa !26
  %74 = xor i64 %73, -1
  %75 = add i64 %72, %74
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  call void @llvm.va_start(ptr nonnull %3)
  %78 = load ptr, ptr %10, align 8, !tbaa !19
  %79 = load i64, ptr %34, align 8, !tbaa !26
  %80 = getelementptr inbounds i8, ptr %78, i64 %79
  %81 = call i32 @vsnprintf(ptr noundef %80, i64 noundef %75, ptr noundef %1, ptr noundef nonnull %3) #20
  call void @llvm.va_end(ptr nonnull %3)
  %82 = icmp slt i32 %81, 0
  %83 = trunc i64 %75 to i32
  %84 = icmp sgt i32 %81, %83
  %85 = or i1 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %68, %77
  %87 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !22
  %89 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %88, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 344, i32 noundef 460, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef %1) #20
  %90 = load i64, ptr %34, align 8, !tbaa !26
  br label %97

91:                                               ; preds = %77
  %92 = zext nneg i32 %81 to i64
  %93 = load i64, ptr %34, align 8, !tbaa !26
  %94 = add i64 %93, %92
  store i64 %94, ptr %34, align 8, !tbaa !26
  %95 = load i64, ptr %51, align 8, !tbaa !28
  %96 = add i64 %95, %92
  store i64 %96, ptr %51, align 8, !tbaa !28
  br label %97

97:                                               ; preds = %91, %86
  %98 = phi i64 [ %94, %91 ], [ %90, %86 ]
  %99 = load ptr, ptr %10, align 8, !tbaa !19
  %100 = getelementptr inbounds i8, ptr %99, i64 %98
  store i8 0, ptr %100, align 1, !tbaa !51
  %101 = load i64, ptr %34, align 8, !tbaa !26
  %102 = icmp ugt i64 %101, 1
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load ptr, ptr %10, align 8, !tbaa !19
  %105 = getelementptr i8, ptr %104, i64 %101
  %106 = getelementptr i8, ptr %105, i64 -1
  %107 = load i8, ptr %106, align 1, !tbaa !51
  %108 = icmp eq i8 %107, 10
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i64 0, ptr %51, align 8, !tbaa !28
  br label %110

110:                                              ; preds = %109, %103, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %111

111:                                              ; preds = %110, %41, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @DrawAllocateWand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @NewDrawingWand() #27
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 11
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = tail call ptr @DestroyDrawInfo(ptr noundef %11) #20
  %13 = load ptr, ptr %6, align 8, !tbaa !14
  %14 = load i64, ptr %8, align 8, !tbaa !13
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  store ptr %12, ptr %15, align 8, !tbaa !15
  %16 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %0) #20
  %17 = load ptr, ptr %6, align 8, !tbaa !14
  %18 = load i64, ptr %8, align 8, !tbaa !13
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  store ptr %16, ptr %19, align 8, !tbaa !15
  br label %20

20:                                               ; preds = %5, %2
  %21 = icmp eq ptr %1, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  %25 = tail call ptr @DestroyImage(ptr noundef %24) #20
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 17
  store i32 0, ptr %26, align 8, !tbaa !20
  br label %27

27:                                               ; preds = %22, %20
  %28 = getelementptr inbounds %struct._DrawingWand, ptr %3, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewDrawingWand() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %5 = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %1) #20
  %6 = load i64, ptr %1, align 8, !tbaa !31
  %7 = icmp eq i64 %6, 16
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  call void @GetExceptionInfo(ptr noundef nonnull %2) #20
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6731, i32 noundef 470, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.4, ptr noundef %5) #20
  call void @CatchException(ptr noundef nonnull %2) #20
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #20
  call void @MagickWandTerminus() #20
  call void @_exit(i32 noundef -229) #24
  unreachable

11:                                               ; preds = %0
  %12 = call dereferenceable_or_null(4256) ptr @AcquireMagickMemory(i64 noundef 4256) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  call void @GetExceptionInfo(ptr noundef nonnull %3) #20
  %15 = tail call ptr @__errno_location() #23
  %16 = load i32, ptr %15, align 4, !tbaa !24
  %17 = call ptr @GetExceptionMessage(i32 noundef %16) #20
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6735, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %17) #20
  call void @CatchException(ptr noundef nonnull %3) #20
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #20
  call void @MagickWandTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

20:                                               ; preds = %11
  %21 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 4256) #20
  %22 = call i64 @AcquireWandId() #20
  store i64 %22, ptr %12, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 1
  %24 = uitofp i64 %22 to double
  %25 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %23, i64 noundef 4096, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120, double noundef %24) #20
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 18
  %27 = load i32, ptr %26, align 4, !tbaa !5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6741, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #20
  br label %31

31:                                               ; preds = %29, %20
  %32 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %32, i8 0, i64 88, i1 false)
  %33 = call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #21
  %34 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 12
  store ptr %33, ptr %34, align 8, !tbaa !14
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  call void @GetExceptionInfo(ptr noundef nonnull %4) #20
  %37 = tail call ptr @__errno_location() #23
  %38 = load i32, ptr %37, align 4, !tbaa !24
  %39 = call ptr @GetExceptionMessage(i32 noundef %38) #20
  %40 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6757, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %39) #20
  call void @CatchException(ptr noundef nonnull %4) #20
  %41 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #20
  call void @MagickWandTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 11
  %44 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 13
  store i32 1, ptr %44, align 8, !tbaa !23
  %45 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %46 = call ptr @AcquireImage(ptr noundef null) #20
  %47 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !21
  %48 = call ptr @AcquireExceptionInfo() #20
  %49 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 17
  store i32 1, ptr %50, align 8, !tbaa !20
  %51 = call i32 @IsEventLogging() #20
  store i32 %51, ptr %26, align 4, !tbaa !5
  %52 = getelementptr inbounds %struct._DrawingWand, ptr %12, i64 0, i32 19
  store i64 2880220587, ptr %52, align 8, !tbaa !34
  %53 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #20
  %54 = load ptr, ptr %34, align 8, !tbaa !14
  %55 = load i64, ptr %43, align 8, !tbaa !13
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  store ptr %53, ptr %56, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawAnnotation(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 772, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %4
  %12 = tail call ptr @EscapeString(ptr noundef %3, i8 noundef signext 39) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, double noundef %1, double noundef %2, ptr noundef nonnull %12) #27
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %12) #20
  br label %16

16:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: optsize
declare ptr @EscapeString(ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawArc(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 824, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #20
  br label %14

14:                                               ; preds = %11, %7
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawBezier(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 862, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @MvgAppendPointsCommand(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MvgAppendPointsCommand(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %1) #27
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %13, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %12, %6 ], [ %3, %4 ]
  %9 = load double, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct._PointInfo, ptr %8, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !55
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef nonnull @.str.127, double noundef %9, double noundef %11) #27
  %12 = getelementptr inbounds %struct._PointInfo, ptr %8, i64 1
  %13 = add i64 %7, -1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !56

15:                                               ; preds = %6, %4
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawCircle(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 904, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawClearException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 935, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  tail call void @ClearMagickException(ptr noundef %10) #20
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawComposite(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1016, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #20
  br label %17

17:                                               ; preds = %14, %7
  %18 = tail call ptr @GetImageFromMagickWand(ptr noundef %6) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %67, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = tail call ptr @CloneImage(ptr noundef nonnull %18, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %22) #20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %67, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @AcquireImageInfo() #20
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %26, i64 0, i32 48
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %27, ptr noundef nonnull @.str.11, i64 noundef 4096) #20
  store i64 2048, ptr %8, align 8, !tbaa !31
  %29 = load ptr, ptr %21, align 8, !tbaa !22
  %30 = call ptr @ImageToBlob(ptr noundef %26, ptr noundef nonnull %23, ptr noundef nonnull %8, ptr noundef %29) #20
  %31 = call ptr @DestroyImageInfo(ptr noundef %26) #20
  %32 = call ptr @DestroyImageList(ptr noundef nonnull %23) #20
  %33 = icmp eq ptr %30, null
  br i1 %33, label %67, label %34

34:                                               ; preds = %25
  store i64 0, ptr %9, align 8, !tbaa !31
  %35 = load i64, ptr %8, align 8, !tbaa !31
  %36 = call ptr @Base64Encode(ptr noundef nonnull %30, i64 noundef %35, ptr noundef nonnull %9) #20
  %37 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %30) #20
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #22
  %40 = load i64, ptr %8, align 8, !tbaa !31
  %41 = shl i64 %40, 2
  %42 = udiv i64 %41, 3
  %43 = add nuw nsw i64 %42, 4
  %44 = uitofp i64 %43 to double
  %45 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %10, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %44) #20
  %46 = load ptr, ptr %21, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %48 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %46, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1044, i32 noundef 300, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %47) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #22
  br label %67

49:                                               ; preds = %34
  %50 = zext i32 %1 to i64
  %51 = call ptr @CommandOptionToMnemonic(i32 noundef 11, i64 noundef %50) #20
  %52 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 55
  %53 = call ptr @MagickToMime(ptr noundef nonnull %52) #20
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, ptr noundef %51, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %53) #27
  %54 = load i64, ptr %9, align 8, !tbaa !31
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %36) #27
  %57 = icmp ugt i64 %54, 76
  br i1 %57, label %58, label %64

58:                                               ; preds = %56, %58
  %59 = phi ptr [ %61, %58 ], [ %36, %56 ]
  %60 = phi i64 [ %62, %58 ], [ %54, %56 ]
  %61 = getelementptr inbounds i8, ptr %59, i64 76
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15) #27
  %62 = add nsw i64 %60, -76
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %61) #27
  %63 = icmp ugt i64 %62, 76
  br i1 %63, label %58, label %64, !llvm.loop !57

64:                                               ; preds = %58, %56, %49
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.16) #27
  %65 = call ptr @DestroyString(ptr noundef %53) #20
  %66 = call ptr @DestroyString(ptr noundef nonnull %36) #20
  br label %67

67:                                               ; preds = %25, %20, %17, %64, %39
  %68 = phi i32 [ 0, %39 ], [ 1, %64 ], [ 0, %17 ], [ 0, %20 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  ret i32 %68
}

; Function Attrs: optsize
declare ptr @GetImageFromMagickWand(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ImageToBlob(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Base64Encode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @MagickToMime(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawColor(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1107, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %4
  %12 = zext i32 %3 to i64
  %13 = tail call ptr @CommandOptionToMnemonic(i32 noundef 43, i64 noundef %12) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, double noundef %1, double noundef %2, ptr noundef %13) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawComment(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawEllipse(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1182, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #20
  br label %14

14:                                               ; preds = %11, %7
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawGetBorderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1220, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 34
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %16) #20
  ret void
}

; Function Attrs: optsize
declare void @PixelSetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DrawGetClipPath(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1252, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #20
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetClipRule(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1286, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !66
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetClipUnits(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1317, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 39
  %16 = load i32, ptr %15, align 8, !tbaa !67
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @DrawGetException(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1356, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = load i32, ptr %12, align 8, !tbaa !68
  store i32 %13, ptr %1, align 4, !tbaa !24
  %14 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #26
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  call void @GetExceptionInfo(ptr noundef nonnull %3) #20
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1363, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #20
  call void @CatchException(ptr noundef nonnull %3) #20
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #20
  call void @MagickWandTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

20:                                               ; preds = %10
  store i8 0, ptr %14, align 1, !tbaa !51
  %21 = load ptr, ptr %11, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct._ExceptionInfo, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %21, align 8, !tbaa !68
  %27 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %26, ptr noundef nonnull %23) #20
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %14, ptr noundef %27, i64 noundef 4096) #20
  %29 = load ptr, ptr %11, align 8, !tbaa !22
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi ptr [ %29, %25 ], [ %21, %20 ]
  %32 = getelementptr inbounds %struct._ExceptionInfo, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.20, i64 noundef 4096) #20
  %37 = load ptr, ptr %11, align 8, !tbaa !22
  %38 = load i32, ptr %37, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct._ExceptionInfo, ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %38, ptr noundef %40) #20
  %42 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef %41, i64 noundef 4096) #20
  %43 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.21, i64 noundef 4096) #20
  br label %44

44:                                               ; preds = %35, %30
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetExceptionType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1408, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load i32, ptr %10, align 8, !tbaa !68
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawGetFillColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1443, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 5
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %16) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetFillOpacity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1478, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 5, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !72
  %17 = xor i16 %16, -1
  %18 = uitofp i16 %17 to double
  %19 = fmul double %18, 0x3EF0001000100010
  ret double %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetFillRule(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1510, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !66
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DrawGetFont(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1543, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #20
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DrawGetFontFamily(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1577, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 25
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #20
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawGetFontResolution(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1616, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %3
  store double 7.200000e+01, ptr %1, align 8, !tbaa !44
  store double 7.200000e+01, ptr %2, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %15 = load i64, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct._DrawInfo, ptr %17, i64 0, i32 31
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %22 = call i32 @ParseGeometry(ptr noundef nonnull %19, ptr noundef nonnull %4) #20
  %23 = load double, ptr %4, align 8, !tbaa !76
  store double %23, ptr %1, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !78
  store double %25, ptr %2, align 8, !tbaa !44
  %26 = and i32 %22, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load double, ptr %1, align 8, !tbaa !44
  store double %29, ptr %2, align 8, !tbaa !44
  br label %30

30:                                               ; preds = %28, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  br label %31

31:                                               ; preds = %30, %11
  ret i32 1
}

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetFontSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1663, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 30
  %16 = load double, ptr %15, align 8, !tbaa !79
  ret double %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetFontStretch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1694, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 27
  %16 = load i32, ptr %15, align 4, !tbaa !80
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetFontStyle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1725, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !81
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @DrawGetFontWeight(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1756, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 28
  %16 = load i64, ptr %15, align 8, !tbaa !82
  ret i64 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetGravity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1788, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !83
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetOpacity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1823, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 40
  %16 = load i16, ptr %15, align 4, !tbaa !84
  %17 = xor i16 %16, -1
  %18 = uitofp i16 %17 to double
  %19 = fmul double %18, 0x3EF0001000100010
  ret double %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetStrokeAntialias(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1858, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !85
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawGetStrokeColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1894, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 6
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %16) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DrawGetStrokeDashArray(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1946, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 36
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = load double, ptr %17, align 8, !tbaa !44
  %21 = fcmp une double %20, 0.000000e+00
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  store i64 0, ptr %1, align 8, !tbaa !31
  br label %55

23:                                               ; preds = %9
  store i64 0, ptr %1, align 8, !tbaa !31
  br label %55

24:                                               ; preds = %19, %24
  %25 = phi i64 [ %28, %24 ], [ 0, %19 ]
  %26 = phi ptr [ %27, %24 ], [ %17, %19 ]
  %27 = getelementptr inbounds double, ptr %26, i64 1
  %28 = add i64 %25, 1
  %29 = load double, ptr %27, align 8, !tbaa !44
  %30 = fcmp une double %29, 0.000000e+00
  br i1 %30, label %24, label %31, !llvm.loop !87

31:                                               ; preds = %24
  store i64 %28, ptr %1, align 8, !tbaa !31
  %32 = icmp eq i64 %28, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %31
  %34 = add i64 %25, 2
  %35 = tail call ptr @AcquireQuantumMemory(i64 noundef %34, i64 noundef 8) #26
  %36 = icmp ult i64 %25, 9223372036854775807
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load ptr, ptr %10, align 8, !tbaa !14
  %39 = load i64, ptr %12, align 8, !tbaa !13
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %41, i64 0, i32 36
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  br label %44

44:                                               ; preds = %37, %44
  %45 = phi i64 [ %51, %44 ], [ 0, %37 ]
  %46 = phi ptr [ %50, %44 ], [ %35, %37 ]
  %47 = phi ptr [ %48, %44 ], [ %43, %37 ]
  %48 = getelementptr inbounds double, ptr %47, i64 1
  %49 = load double, ptr %47, align 8, !tbaa !44
  %50 = getelementptr inbounds double, ptr %46, i64 1
  store double %49, ptr %46, align 8, !tbaa !44
  %51 = add nuw nsw i64 %45, 1
  %52 = icmp eq i64 %45, %25
  br i1 %52, label %53, label %44, !llvm.loop !88

53:                                               ; preds = %44, %33
  %54 = phi ptr [ %35, %33 ], [ %50, %44 ]
  store double 0.000000e+00, ptr %54, align 8, !tbaa !44
  br label %55

55:                                               ; preds = %22, %23, %53, %31
  %56 = phi ptr [ %35, %53 ], [ null, %31 ], [ null, %23 ], [ null, %22 ]
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetStrokeDashOffset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1996, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 18
  %16 = load double, ptr %15, align 8, !tbaa !89
  ret double %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetStrokeLineCap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2029, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 15
  %16 = load i32, ptr %15, align 4, !tbaa !90
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetStrokeLineJoin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2063, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !91
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @DrawGetStrokeMiterLimit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2098, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 17
  %16 = load i64, ptr %15, align 8, !tbaa !92
  ret i64 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetStrokeOpacity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2132, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 6, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !93
  %17 = xor i16 %16, -1
  %18 = uitofp i16 %17 to double
  %19 = fmul double %18, 0x3EF0001000100010
  ret double %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetStrokeWidth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2165, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 7
  %16 = load double, ptr %15, align 8, !tbaa !94
  ret double %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetTextAlignment(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2197, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 32
  %16 = load i32, ptr %15, align 8, !tbaa !95
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetTextAntialias(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2229, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !96
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetTextDecoration(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2261, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 19
  %16 = load i32, ptr %15, align 8, !tbaa !97
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGetTextDirection(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2293, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 48
  %16 = load i32, ptr %15, align 8, !tbaa !98
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DrawGetTextEncoding(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2326, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 29
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call ptr @AcquireString(ptr noundef nonnull %16) #20
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetTextKerning(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2360, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 45
  %16 = load double, ptr %15, align 8, !tbaa !100
  ret double %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetTextInterlineSpacing(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2391, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 47
  %16 = load double, ptr %15, align 8, !tbaa !101
  ret double %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @DrawGetTextInterwordSpacing(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2422, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 46
  %16 = load double, ptr %15, align 8, !tbaa !102
  ret double %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DrawGetVectorGraphics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2485, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %1
  %12 = tail call ptr @NewXMLTreeTag(ptr noundef nonnull @.str.22) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %477, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  call void @GetMagickPixelPacket(ptr noundef %16, ptr noundef nonnull %3) #20
  %17 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.23, i64 noundef 0) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %23 = load i64, ptr %22, align 8, !tbaa !13
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %25, i64 0, i32 37
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = call ptr @SetXMLTreeContent(ptr noundef nonnull %17, ptr noundef %27) #20
  br label %29

29:                                               ; preds = %19, %14
  %30 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.24, i64 noundef 0) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %36 = load i64, ptr %35, align 8, !tbaa !13
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = getelementptr inbounds %struct._DrawInfo, ptr %38, i64 0, i32 39
  %40 = load i32, ptr %39, align 8, !tbaa !67
  %41 = zext i32 %40 to i64
  %42 = call ptr @CommandOptionToMnemonic(i32 noundef 6, i64 noundef %41) #20
  %43 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %42, i64 noundef 4096) #20
  %44 = call ptr @SetXMLTreeContent(ptr noundef nonnull %30, ptr noundef nonnull %2) #20
  br label %45

45:                                               ; preds = %32, %29
  %46 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.25, i64 noundef 0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !14
  %51 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %52 = load i64, ptr %51, align 8, !tbaa !13
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct._DrawInfo, ptr %54, i64 0, i32 19
  %56 = load i32, ptr %55, align 8, !tbaa !97
  %57 = zext i32 %56 to i64
  %58 = call ptr @CommandOptionToMnemonic(i32 noundef 16, i64 noundef %57) #20
  %59 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %58, i64 noundef 4096) #20
  %60 = call ptr @SetXMLTreeContent(ptr noundef nonnull %46, ptr noundef nonnull %2) #20
  br label %61

61:                                               ; preds = %48, %45
  %62 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.26, i64 noundef 0) #20
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %68 = load i64, ptr %67, align 8, !tbaa !13
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !15
  %71 = getelementptr inbounds %struct._DrawInfo, ptr %70, i64 0, i32 29
  %72 = load ptr, ptr %71, align 8, !tbaa !99
  %73 = call ptr @SetXMLTreeContent(ptr noundef nonnull %62, ptr noundef %72) #20
  br label %74

74:                                               ; preds = %64, %61
  %75 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.27, i64 noundef 0) #20
  %76 = icmp eq ptr %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  %80 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %81 = load i64, ptr %80, align 8, !tbaa !13
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !15
  %84 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 5, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !72
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  store i32 1, ptr %88, align 8, !tbaa !103
  br label %89

89:                                               ; preds = %87, %77
  %90 = load ptr, ptr %15, align 8, !tbaa !21
  %91 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 5
  call fastcc void @SetMagickPixelPacket(ptr noundef %90, ptr noundef nonnull %91, ptr noundef nonnull %3) #27
  call void @GetColorTuple(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #20
  %92 = call ptr @SetXMLTreeContent(ptr noundef nonnull %75, ptr noundef nonnull %2) #20
  br label %93

93:                                               ; preds = %89, %74
  %94 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.28, i64 noundef 0) #20
  %95 = icmp eq ptr %94, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %98 = load ptr, ptr %97, align 8, !tbaa !14
  %99 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %100 = load i64, ptr %99, align 8, !tbaa !13
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !15
  %103 = getelementptr inbounds %struct._DrawInfo, ptr %102, i64 0, i32 5, i32 3
  %104 = load i16, ptr %103, align 2, !tbaa !72
  %105 = xor i16 %104, -1
  %106 = uitofp i16 %105 to double
  %107 = fmul double %106, 0x3EF0001000100010
  %108 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %107) #20
  %109 = call ptr @SetXMLTreeContent(ptr noundef nonnull %94, ptr noundef nonnull %2) #20
  br label %110

110:                                              ; preds = %96, %93
  %111 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, i64 noundef 0) #20
  %112 = icmp eq ptr %111, null
  br i1 %112, label %126, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !14
  %116 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %117 = load i64, ptr %116, align 8, !tbaa !13
  %118 = getelementptr inbounds ptr, ptr %115, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !15
  %120 = getelementptr inbounds %struct._DrawInfo, ptr %119, i64 0, i32 14
  %121 = load i32, ptr %120, align 8, !tbaa !66
  %122 = zext i32 %121 to i64
  %123 = call ptr @CommandOptionToMnemonic(i32 noundef 24, i64 noundef %122) #20
  %124 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %123, i64 noundef 4096) #20
  %125 = call ptr @SetXMLTreeContent(ptr noundef nonnull %111, ptr noundef nonnull %2) #20
  br label %126

126:                                              ; preds = %113, %110
  %127 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.31, i64 noundef 0) #20
  %128 = icmp eq ptr %127, null
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %131 = load ptr, ptr %130, align 8, !tbaa !14
  %132 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %133 = load i64, ptr %132, align 8, !tbaa !13
  %134 = getelementptr inbounds ptr, ptr %131, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !15
  %136 = getelementptr inbounds %struct._DrawInfo, ptr %135, i64 0, i32 23
  %137 = load ptr, ptr %136, align 8, !tbaa !73
  %138 = call ptr @SetXMLTreeContent(ptr noundef nonnull %127, ptr noundef %137) #20
  br label %139

139:                                              ; preds = %129, %126
  %140 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.32, i64 noundef 0) #20
  %141 = icmp eq ptr %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %144 = load ptr, ptr %143, align 8, !tbaa !14
  %145 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %146 = load i64, ptr %145, align 8, !tbaa !13
  %147 = getelementptr inbounds ptr, ptr %144, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !15
  %149 = getelementptr inbounds %struct._DrawInfo, ptr %148, i64 0, i32 25
  %150 = load ptr, ptr %149, align 8, !tbaa !74
  %151 = call ptr @SetXMLTreeContent(ptr noundef nonnull %140, ptr noundef %150) #20
  br label %152

152:                                              ; preds = %142, %139
  %153 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.33, i64 noundef 0) #20
  %154 = icmp eq ptr %153, null
  br i1 %154, label %166, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %157 = load ptr, ptr %156, align 8, !tbaa !14
  %158 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %159 = load i64, ptr %158, align 8, !tbaa !13
  %160 = getelementptr inbounds ptr, ptr %157, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !15
  %162 = getelementptr inbounds %struct._DrawInfo, ptr %161, i64 0, i32 30
  %163 = load double, ptr %162, align 8, !tbaa !79
  %164 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %163) #20
  %165 = call ptr @SetXMLTreeContent(ptr noundef nonnull %153, ptr noundef nonnull %2) #20
  br label %166

166:                                              ; preds = %155, %152
  %167 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.34, i64 noundef 0) #20
  %168 = icmp eq ptr %167, null
  br i1 %168, label %182, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %171 = load ptr, ptr %170, align 8, !tbaa !14
  %172 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %173 = load i64, ptr %172, align 8, !tbaa !13
  %174 = getelementptr inbounds ptr, ptr %171, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !15
  %176 = getelementptr inbounds %struct._DrawInfo, ptr %175, i64 0, i32 27
  %177 = load i32, ptr %176, align 4, !tbaa !80
  %178 = zext i32 %177 to i64
  %179 = call ptr @CommandOptionToMnemonic(i32 noundef 63, i64 noundef %178) #20
  %180 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %179, i64 noundef 4096) #20
  %181 = call ptr @SetXMLTreeContent(ptr noundef nonnull %167, ptr noundef nonnull %2) #20
  br label %182

182:                                              ; preds = %169, %166
  %183 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.35, i64 noundef 0) #20
  %184 = icmp eq ptr %183, null
  br i1 %184, label %198, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %187 = load ptr, ptr %186, align 8, !tbaa !14
  %188 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %189 = load i64, ptr %188, align 8, !tbaa !13
  %190 = getelementptr inbounds ptr, ptr %187, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !15
  %192 = getelementptr inbounds %struct._DrawInfo, ptr %191, i64 0, i32 26
  %193 = load i32, ptr %192, align 8, !tbaa !81
  %194 = zext i32 %193 to i64
  %195 = call ptr @CommandOptionToMnemonic(i32 noundef 64, i64 noundef %194) #20
  %196 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %195, i64 noundef 4096) #20
  %197 = call ptr @SetXMLTreeContent(ptr noundef nonnull %183, ptr noundef nonnull %2) #20
  br label %198

198:                                              ; preds = %185, %182
  %199 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.36, i64 noundef 0) #20
  %200 = icmp eq ptr %199, null
  br i1 %200, label %213, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %203 = load ptr, ptr %202, align 8, !tbaa !14
  %204 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %205 = load i64, ptr %204, align 8, !tbaa !13
  %206 = getelementptr inbounds ptr, ptr %203, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !15
  %208 = getelementptr inbounds %struct._DrawInfo, ptr %207, i64 0, i32 28
  %209 = load i64, ptr %208, align 8, !tbaa !82
  %210 = uitofp i64 %209 to double
  %211 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %210) #20
  %212 = call ptr @SetXMLTreeContent(ptr noundef nonnull %199, ptr noundef nonnull %2) #20
  br label %213

213:                                              ; preds = %201, %198
  %214 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.37, i64 noundef 0) #20
  %215 = icmp eq ptr %214, null
  br i1 %215, label %229, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %218 = load ptr, ptr %217, align 8, !tbaa !14
  %219 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %220 = load i64, ptr %219, align 8, !tbaa !13
  %221 = getelementptr inbounds ptr, ptr %218, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !15
  %223 = getelementptr inbounds %struct._DrawInfo, ptr %222, i64 0, i32 4
  %224 = load i32, ptr %223, align 8, !tbaa !83
  %225 = zext i32 %224 to i64
  %226 = call ptr @CommandOptionToMnemonic(i32 noundef 30, i64 noundef %225) #20
  %227 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %226, i64 noundef 4096) #20
  %228 = call ptr @SetXMLTreeContent(ptr noundef nonnull %214, ptr noundef nonnull %2) #20
  br label %229

229:                                              ; preds = %216, %213
  %230 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.38, i64 noundef 0) #20
  %231 = icmp eq ptr %230, null
  br i1 %231, label %248, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %234 = load ptr, ptr %233, align 8, !tbaa !14
  %235 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %236 = load i64, ptr %235, align 8, !tbaa !13
  %237 = getelementptr inbounds ptr, ptr %234, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !15
  %239 = getelementptr inbounds %struct._DrawInfo, ptr %238, i64 0, i32 6, i32 3
  %240 = load i16, ptr %239, align 2, !tbaa !93
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %232
  %243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  store i32 1, ptr %243, align 8, !tbaa !103
  br label %244

244:                                              ; preds = %242, %232
  %245 = load ptr, ptr %15, align 8, !tbaa !21
  %246 = getelementptr inbounds %struct._DrawInfo, ptr %238, i64 0, i32 6
  call fastcc void @SetMagickPixelPacket(ptr noundef %245, ptr noundef nonnull %246, ptr noundef nonnull %3) #27
  call void @GetColorTuple(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #20
  %247 = call ptr @SetXMLTreeContent(ptr noundef nonnull %230, ptr noundef nonnull %2) #20
  br label %248

248:                                              ; preds = %244, %229
  %249 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.39, i64 noundef 0) #20
  %250 = icmp eq ptr %249, null
  br i1 %250, label %264, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %253 = load ptr, ptr %252, align 8, !tbaa !14
  %254 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %255 = load i64, ptr %254, align 8, !tbaa !13
  %256 = getelementptr inbounds ptr, ptr %253, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !15
  %258 = getelementptr inbounds %struct._DrawInfo, ptr %257, i64 0, i32 12
  %259 = load i32, ptr %258, align 8, !tbaa !85
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %261) #20
  %263 = call ptr @SetXMLTreeContent(ptr noundef nonnull %249, ptr noundef nonnull %2) #20
  br label %264

264:                                              ; preds = %251, %248
  %265 = call ptr @AddChildToXMLTree(ptr noundef nonnull %12, ptr noundef nonnull @.str.41, i64 noundef 0) #20
  %266 = icmp eq ptr %265, null
  br i1 %266, label %324, label %267

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %269 = load ptr, ptr %268, align 8, !tbaa !14
  %270 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %271 = load i64, ptr %270, align 8, !tbaa !13
  %272 = getelementptr inbounds ptr, ptr %269, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !15
  %274 = getelementptr inbounds %struct._DrawInfo, ptr %273, i64 0, i32 36
  %275 = load ptr, ptr %274, align 8, !tbaa !86
  %276 = icmp eq ptr %275, null
  br i1 %276, label %324, label %277

277:                                              ; preds = %267
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %278 = call ptr @AcquireString(ptr noundef null) #20
  store ptr %278, ptr %4, align 8, !tbaa !15
  %279 = load ptr, ptr %268, align 8, !tbaa !14
  %280 = load i64, ptr %270, align 8, !tbaa !13
  %281 = getelementptr inbounds ptr, ptr %279, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !15
  %283 = getelementptr inbounds %struct._DrawInfo, ptr %282, i64 0, i32 36
  %284 = load ptr, ptr %283, align 8, !tbaa !86
  %285 = load double, ptr %284, align 8, !tbaa !44
  %286 = fcmp une double %285, 0.000000e+00
  br i1 %286, label %287, label %319

287:                                              ; preds = %277, %296
  %288 = phi i64 [ %309, %296 ], [ %280, %277 ]
  %289 = phi ptr [ %308, %296 ], [ %279, %277 ]
  %290 = phi i64 [ %307, %296 ], [ 0, %277 ]
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %287
  %293 = call i32 @ConcatenateString(ptr noundef nonnull %4, ptr noundef nonnull @.str.42) #20
  %294 = load ptr, ptr %268, align 8, !tbaa !14
  %295 = load i64, ptr %270, align 8, !tbaa !13
  br label %296

296:                                              ; preds = %292, %287
  %297 = phi i64 [ %295, %292 ], [ %288, %287 ]
  %298 = phi ptr [ %294, %292 ], [ %289, %287 ]
  %299 = getelementptr inbounds ptr, ptr %298, i64 %297
  %300 = load ptr, ptr %299, align 8, !tbaa !15
  %301 = getelementptr inbounds %struct._DrawInfo, ptr %300, i64 0, i32 36
  %302 = load ptr, ptr %301, align 8, !tbaa !86
  %303 = getelementptr inbounds double, ptr %302, i64 %290
  %304 = load double, ptr %303, align 8, !tbaa !44
  %305 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %304) #20
  %306 = call i32 @ConcatenateString(ptr noundef nonnull %4, ptr noundef nonnull %2) #20
  %307 = add nuw nsw i64 %290, 1
  %308 = load ptr, ptr %268, align 8, !tbaa !14
  %309 = load i64, ptr %270, align 8, !tbaa !13
  %310 = getelementptr inbounds ptr, ptr %308, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !15
  %312 = getelementptr inbounds %struct._DrawInfo, ptr %311, i64 0, i32 36
  %313 = load ptr, ptr %312, align 8, !tbaa !86
  %314 = getelementptr inbounds double, ptr %313, i64 %307
  %315 = load double, ptr %314, align 8, !tbaa !44
  %316 = fcmp une double %315, 0.000000e+00
  br i1 %316, label %287, label %317, !llvm.loop !105

317:                                              ; preds = %296
  %318 = load ptr, ptr %4, align 8, !tbaa !15
  br label %319

319:                                              ; preds = %317, %277
  %320 = phi ptr [ %318, %317 ], [ %278, %277 ]
  %321 = call ptr @SetXMLTreeContent(ptr noundef nonnull %265, ptr noundef %320) #20
  %322 = load ptr, ptr %4, align 8, !tbaa !15
  %323 = call ptr @DestroyString(ptr noundef %322) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %324

324:                                              ; preds = %319, %267, %264
  %325 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.43, i64 noundef 0) #20
  %326 = icmp eq ptr %325, null
  br i1 %326, label %338, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %329 = load ptr, ptr %328, align 8, !tbaa !14
  %330 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %331 = load i64, ptr %330, align 8, !tbaa !13
  %332 = getelementptr inbounds ptr, ptr %329, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !15
  %334 = getelementptr inbounds %struct._DrawInfo, ptr %333, i64 0, i32 18
  %335 = load double, ptr %334, align 8, !tbaa !89
  %336 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %335) #20
  %337 = call ptr @SetXMLTreeContent(ptr noundef nonnull %325, ptr noundef nonnull %2) #20
  br label %338

338:                                              ; preds = %327, %324
  %339 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.44, i64 noundef 0) #20
  %340 = icmp eq ptr %339, null
  br i1 %340, label %354, label %341

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %343 = load ptr, ptr %342, align 8, !tbaa !14
  %344 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %345 = load i64, ptr %344, align 8, !tbaa !13
  %346 = getelementptr inbounds ptr, ptr %343, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !15
  %348 = getelementptr inbounds %struct._DrawInfo, ptr %347, i64 0, i32 15
  %349 = load i32, ptr %348, align 4, !tbaa !90
  %350 = zext i32 %349 to i64
  %351 = call ptr @CommandOptionToMnemonic(i32 noundef 36, i64 noundef %350) #20
  %352 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %351, i64 noundef 4096) #20
  %353 = call ptr @SetXMLTreeContent(ptr noundef nonnull %339, ptr noundef nonnull %2) #20
  br label %354

354:                                              ; preds = %341, %338
  %355 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.45, i64 noundef 0) #20
  %356 = icmp eq ptr %355, null
  br i1 %356, label %370, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %359 = load ptr, ptr %358, align 8, !tbaa !14
  %360 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %361 = load i64, ptr %360, align 8, !tbaa !13
  %362 = getelementptr inbounds ptr, ptr %359, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !15
  %364 = getelementptr inbounds %struct._DrawInfo, ptr %363, i64 0, i32 16
  %365 = load i32, ptr %364, align 8, !tbaa !91
  %366 = zext i32 %365 to i64
  %367 = call ptr @CommandOptionToMnemonic(i32 noundef 37, i64 noundef %366) #20
  %368 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %367, i64 noundef 4096) #20
  %369 = call ptr @SetXMLTreeContent(ptr noundef nonnull %355, ptr noundef nonnull %2) #20
  br label %370

370:                                              ; preds = %357, %354
  %371 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.46, i64 noundef 0) #20
  %372 = icmp eq ptr %371, null
  br i1 %372, label %385, label %373

373:                                              ; preds = %370
  %374 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %375 = load ptr, ptr %374, align 8, !tbaa !14
  %376 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %377 = load i64, ptr %376, align 8, !tbaa !13
  %378 = getelementptr inbounds ptr, ptr %375, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !15
  %380 = getelementptr inbounds %struct._DrawInfo, ptr %379, i64 0, i32 17
  %381 = load i64, ptr %380, align 8, !tbaa !92
  %382 = uitofp i64 %381 to double
  %383 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %382) #20
  %384 = call ptr @SetXMLTreeContent(ptr noundef nonnull %371, ptr noundef nonnull %2) #20
  br label %385

385:                                              ; preds = %373, %370
  %386 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.47, i64 noundef 0) #20
  %387 = icmp eq ptr %386, null
  br i1 %387, label %402, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %390 = load ptr, ptr %389, align 8, !tbaa !14
  %391 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %392 = load i64, ptr %391, align 8, !tbaa !13
  %393 = getelementptr inbounds ptr, ptr %390, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !15
  %395 = getelementptr inbounds %struct._DrawInfo, ptr %394, i64 0, i32 6, i32 3
  %396 = load i16, ptr %395, align 2, !tbaa !93
  %397 = xor i16 %396, -1
  %398 = uitofp i16 %397 to double
  %399 = fmul double %398, 0x3EF0001000100010
  %400 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %399) #20
  %401 = call ptr @SetXMLTreeContent(ptr noundef nonnull %386, ptr noundef nonnull %2) #20
  br label %402

402:                                              ; preds = %388, %385
  %403 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.48, i64 noundef 0) #20
  %404 = icmp eq ptr %403, null
  br i1 %404, label %416, label %405

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %407 = load ptr, ptr %406, align 8, !tbaa !14
  %408 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %409 = load i64, ptr %408, align 8, !tbaa !13
  %410 = getelementptr inbounds ptr, ptr %407, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !15
  %412 = getelementptr inbounds %struct._DrawInfo, ptr %411, i64 0, i32 7
  %413 = load double, ptr %412, align 8, !tbaa !94
  %414 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.29, double noundef %413) #20
  %415 = call ptr @SetXMLTreeContent(ptr noundef nonnull %403, ptr noundef nonnull %2) #20
  br label %416

416:                                              ; preds = %405, %402
  %417 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.49, i64 noundef 0) #20
  %418 = icmp eq ptr %417, null
  br i1 %418, label %432, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %421 = load ptr, ptr %420, align 8, !tbaa !14
  %422 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %423 = load i64, ptr %422, align 8, !tbaa !13
  %424 = getelementptr inbounds ptr, ptr %421, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !15
  %426 = getelementptr inbounds %struct._DrawInfo, ptr %425, i64 0, i32 32
  %427 = load i32, ptr %426, align 8, !tbaa !95
  %428 = zext i32 %427 to i64
  %429 = call ptr @CommandOptionToMnemonic(i32 noundef 0, i64 noundef %428) #20
  %430 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %429, i64 noundef 4096) #20
  %431 = call ptr @SetXMLTreeContent(ptr noundef nonnull %417, ptr noundef nonnull %2) #20
  br label %432

432:                                              ; preds = %419, %416
  %433 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.50, i64 noundef 0) #20
  %434 = icmp eq ptr %433, null
  br i1 %434, label %448, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %437 = load ptr, ptr %436, align 8, !tbaa !14
  %438 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %439 = load i64, ptr %438, align 8, !tbaa !13
  %440 = getelementptr inbounds ptr, ptr %437, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !15
  %442 = getelementptr inbounds %struct._DrawInfo, ptr %441, i64 0, i32 13
  %443 = load i32, ptr %442, align 4, !tbaa !96
  %444 = icmp ne i32 %443, 0
  %445 = zext i1 %444 to i32
  %446 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %445) #20
  %447 = call ptr @SetXMLTreeContent(ptr noundef nonnull %433, ptr noundef nonnull %2) #20
  br label %448

448:                                              ; preds = %435, %432
  %449 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.51, i64 noundef 0) #20
  %450 = icmp eq ptr %449, null
  br i1 %450, label %467, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %453 = load ptr, ptr %452, align 8, !tbaa !14
  %454 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %455 = load i64, ptr %454, align 8, !tbaa !13
  %456 = getelementptr inbounds ptr, ptr %453, i64 %455
  %457 = load ptr, ptr %456, align 8, !tbaa !15
  %458 = getelementptr inbounds %struct._DrawInfo, ptr %457, i64 0, i32 33, i32 3
  %459 = load i16, ptr %458, align 2, !tbaa !106
  %460 = icmp eq i16 %459, 0
  br i1 %460, label %463, label %461

461:                                              ; preds = %451
  %462 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  store i32 1, ptr %462, align 8, !tbaa !103
  br label %463

463:                                              ; preds = %461, %451
  %464 = load ptr, ptr %15, align 8, !tbaa !21
  %465 = getelementptr inbounds %struct._DrawInfo, ptr %457, i64 0, i32 33
  call fastcc void @SetMagickPixelPacket(ptr noundef %464, ptr noundef nonnull %465, ptr noundef nonnull %3) #27
  call void @GetColorTuple(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #20
  %466 = call ptr @SetXMLTreeContent(ptr noundef nonnull %449, ptr noundef nonnull %2) #20
  br label %467

467:                                              ; preds = %463, %448
  %468 = call ptr @AddChildToXMLTree(ptr noundef %12, ptr noundef nonnull @.str.52, i64 noundef 0) #20
  %469 = icmp eq ptr %468, null
  br i1 %469, label %474, label %470

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %472 = load ptr, ptr %471, align 8, !tbaa !19
  %473 = call ptr @SetXMLTreeContent(ptr noundef nonnull %468, ptr noundef %472) #20
  br label %474

474:                                              ; preds = %470, %467
  %475 = call ptr @XMLTreeInfoToXML(ptr noundef %12) #20
  %476 = call ptr @DestroyXMLTree(ptr noundef %12) #20
  br label %477

477:                                              ; preds = %11, %474
  %478 = phi ptr [ %475, %474 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #22
  ret ptr %478
}

; Function Attrs: optsize
declare ptr @NewXMLTreeTag(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AddChildToXMLTree(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @SetXMLTreeContent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %6 = load <2 x i16>, ptr %5, align 2, !tbaa !107
  %7 = uitofp <2 x i16> %6 to <2 x float>
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %8, ptr %4, align 8, !tbaa !108
  %9 = load i16, ptr %1, align 2, !tbaa !109
  %10 = uitofp i16 %9 to float
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %10, ptr %11, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !111
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !120
  %18 = uitofp i16 %17 to float
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %18, ptr %19, align 4, !tbaa !121
  br label %20

20:                                               ; preds = %3, %15
  ret void
}

; Function Attrs: optsize
declare void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @XMLTreeInfoToXML(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawGetTextUnderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2723, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 33
  tail call void @PixelSetQuantumColor(ptr noundef %1, ptr noundef nonnull %16) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawLine(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2765, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.53, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawMatte(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2814, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %4
  %12 = zext i32 %3 to i64
  %13 = tail call ptr @CommandOptionToMnemonic(i32 noundef 43, i64 noundef %12) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.54, double noundef %1, double noundef %2, ptr noundef %13) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathClose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2849, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 4, !tbaa !122
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, ptr @.str.55, ptr @.str.56
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MvgAutoWrapPrintf(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 4095, ptr noundef %1, ptr noundef nonnull %4) #20
  call void @llvm.va_end(ptr nonnull %4)
  %6 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 4095
  store i8 0, ptr %6, align 1, !tbaa !51
  %7 = icmp slt i32 %5, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 378, i32 noundef 460, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef %1) #20
  br label %26

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !28
  %15 = zext nneg i32 %5 to i64
  %16 = add i64 %14, %15
  %17 = icmp ugt i64 %16, 78
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = add nsw i32 %5, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !51
  %23 = icmp eq i8 %22, 10
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #27
  br label %25

25:                                               ; preds = %24, %18, %12
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #27
  br label %26

26:                                               ; preds = %25, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathCurveToAbsolute(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2922, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #20
  br label %14

14:                                               ; preds = %11, %7
  tail call fastcc void @DrawPathCurveTo(ptr noundef nonnull %0, i32 noundef 1, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathCurveTo(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2902, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #20
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !123
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !122
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %15
  store i32 2, ptr %16, align 8, !tbaa !123
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %24, align 4, !tbaa !122
  %25 = icmp eq i32 %1, 1
  %26 = select i1 %25, i32 67, i32 99
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.128, i32 noundef %26, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7) #27
  br label %28

27:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.129, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7) #27
  br label %28

28:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathCurveToRelative(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2972, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #20
  br label %14

14:                                               ; preds = %11, %7
  tail call fastcc void @DrawPathCurveTo(ptr noundef nonnull %0, i32 noundef 2, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathCurveToQuadraticBezierAbsolute(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3036, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  tail call fastcc void @DrawPathCurveToQuadraticBezier(ptr noundef nonnull %0, i32 noundef 1, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathCurveToQuadraticBezier(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3017, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #20
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !123
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %19 = load i32, ptr %18, align 4, !tbaa !122
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %13
  store i32 3, ptr %14, align 8, !tbaa !123
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %22, align 4, !tbaa !122
  %23 = icmp eq i32 %1, 1
  %24 = select i1 %23, i32 81, i32 113
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.130, i32 noundef %24, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #27
  br label %26

25:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.131, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #27
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathCurveToQuadraticBezierRelative(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3080, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  tail call fastcc void @DrawPathCurveToQuadraticBezier(ptr noundef nonnull %0, i32 noundef 2, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathCurveToQuadraticBezierSmoothAbsolute(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3148, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @DrawPathCurveToQuadraticBezierSmooth(ptr noundef nonnull %0, i32 noundef 1, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathCurveToQuadraticBezierSmooth(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3129, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !123
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %17 = load i32, ptr %16, align 4, !tbaa !122
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %11
  store i32 4, ptr %12, align 8, !tbaa !123
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %20, align 4, !tbaa !122
  %21 = icmp eq i32 %1, 1
  %22 = select i1 %21, i32 84, i32 116
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.132, i32 noundef %22, double noundef %2, double noundef %3) #27
  br label %24

23:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.127, double noundef %2, double noundef %3) #27
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathCurveToQuadraticBezierSmoothRelative(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @DrawPathCurveToQuadraticBezierSmooth(ptr noundef %0, i32 noundef 2, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathCurveToSmoothAbsolute(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3262, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  tail call fastcc void @DrawPathCurveToSmooth(ptr noundef nonnull %0, i32 noundef 1, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathCurveToSmooth(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3243, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #20
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !123
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %19 = load i32, ptr %18, align 4, !tbaa !122
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %13
  store i32 5, ptr %14, align 8, !tbaa !123
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %22, align 4, !tbaa !122
  %23 = icmp eq i32 %1, 1
  %24 = select i1 %23, i32 83, i32 115
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.130, i32 noundef %24, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #27
  br label %26

25:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.131, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #27
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathCurveToSmoothRelative(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3312, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  tail call fastcc void @DrawPathCurveToSmooth(ptr noundef nonnull %0, i32 noundef 2, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathEllipticArcAbsolute(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3396, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #20
  br label %15

15:                                               ; preds = %12, %8
  tail call fastcc void @DrawPathEllipticArc(ptr noundef nonnull %0, i32 noundef 1, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathEllipticArc(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6, double noundef %7, double noundef %8) unnamed_addr #0 {
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3373, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #20
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !123
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !122
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %16
  store i32 6, ptr %17, align 8, !tbaa !123
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %25, align 4, !tbaa !122
  %26 = icmp eq i32 %1, 1
  %27 = select i1 %26, i32 65, i32 97
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.133, i32 noundef %27, double noundef %2, double noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6, double noundef %7, double noundef %8) #27
  br label %29

28:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.134, double noundef %2, double noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6, double noundef %7, double noundef %8) #27
  br label %29

29:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathEllipticArcRelative(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #0 {
  tail call fastcc void @DrawPathEllipticArc(ptr noundef %0, i32 noundef 2, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathFinish(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3484, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #27
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  store i32 0, ptr %9, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 0, ptr %10, align 4, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathLineToAbsolute(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3544, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @DrawPathLineTo(ptr noundef nonnull %0, i32 noundef 1, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathLineTo(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3525, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !123
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %17 = load i32, ptr %16, align 4, !tbaa !122
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %11
  store i32 8, ptr %12, align 8, !tbaa !123
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %20, align 4, !tbaa !122
  %21 = icmp eq i32 %1, 1
  %22 = select i1 %21, i32 76, i32 108
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.132, i32 noundef %22, double noundef %2, double noundef %3) #27
  br label %24

23:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.127, double noundef %2, double noundef %3) #27
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathLineToRelative(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3583, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @DrawPathLineTo(ptr noundef nonnull %0, i32 noundef 2, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathLineToHorizontalAbsolute(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3640, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  tail call fastcc void @DrawPathLineToHorizontal(ptr noundef nonnull %0, i32 noundef 1, double noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathLineToHorizontal(ptr noundef %0, i32 noundef %1, double noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3621, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 8, !tbaa !123
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 4, !tbaa !122
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %10
  store i32 7, ptr %11, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %19, align 4, !tbaa !122
  %20 = icmp eq i32 %1, 1
  %21 = select i1 %20, i32 72, i32 104
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.135, i32 noundef %21, double noundef %2) #27
  br label %23

22:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.136, double noundef %2) #27
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathLineToHorizontalRelative(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @DrawPathLineToHorizontal(ptr noundef %0, i32 noundef 2, double noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathLineToVerticalAbsolute(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3729, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  tail call fastcc void @DrawPathLineToVertical(ptr noundef nonnull %0, i32 noundef 1, double noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathLineToVertical(ptr noundef %0, i32 noundef %1, double noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3711, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 8, !tbaa !123
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 4, !tbaa !122
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %10
  store i32 9, ptr %11, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %19, align 4, !tbaa !122
  %20 = icmp eq i32 %1, 1
  %21 = select i1 %20, i32 86, i32 118
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.135, i32 noundef %21, double noundef %2) #27
  br label %23

22:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.136, double noundef %2) #27
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathLineToVerticalRelative(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3765, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  tail call fastcc void @DrawPathLineToVertical(ptr noundef nonnull %0, i32 noundef 2, double noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathMoveToAbsolute(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3823, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @DrawPathMoveTo(ptr noundef nonnull %0, i32 noundef 1, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawPathMoveTo(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3804, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !123
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  %17 = load i32, ptr %16, align 4, !tbaa !122
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %11
  store i32 10, ptr %12, align 8, !tbaa !123
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 %1, ptr %20, align 4, !tbaa !122
  %21 = icmp eq i32 %1, 1
  %22 = select i1 %21, i32 77, i32 109
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.132, i32 noundef %22, double noundef %2, double noundef %3) #27
  br label %24

23:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @MvgAutoWrapPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.127, double noundef %2, double noundef %3) #27
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathMoveToRelative(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3862, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @DrawPathMoveTo(ptr noundef nonnull %0, i32 noundef 2, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPathStart(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3897, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #27
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 15
  store i32 0, ptr %9, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 16
  store i32 0, ptr %10, align 4, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPoint(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3934, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPolygon(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3972, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @MvgAppendPointsCommand(ptr noundef nonnull %0, ptr noundef nonnull @.str.59, i64 noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPolyline(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4010, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @MvgAppendPointsCommand(ptr noundef nonnull %0, ptr noundef nonnull @.str.60, i64 noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPopClipPath(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4041, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %10 = load i64, ptr %9, align 8, !tbaa !33
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = add i64 %10, -1
  store i64 %13, ptr %9, align 8, !tbaa !33
  br label %14

14:                                               ; preds = %12, %8
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.61) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPopDefs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4074, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %10 = load i64, ptr %9, align 8, !tbaa !33
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = add i64 %10, -1
  store i64 %13, ptr %9, align 8, !tbaa !33
  br label %14

14:                                               ; preds = %12, %8
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.62) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawPopPattern(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4111, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4113, i32 noundef 470, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #20
  br label %19

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4117, i32 noundef 360, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.4, ptr noundef nonnull %26) #20
  br label %61

28:                                               ; preds = %19
  %29 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #20
  %30 = load ptr, ptr %11, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 10
  %34 = load i64, ptr %33, align 8, !tbaa !29
  %35 = getelementptr inbounds i8, ptr %32, i64 %34
  %36 = call i32 @SetImageArtifact(ptr noundef %30, ptr noundef nonnull %3, ptr noundef %35) #20
  %37 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9
  %38 = load i64, ptr %37, align 8, !tbaa !124
  %39 = uitofp i64 %38 to double
  %40 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !125
  %42 = uitofp i64 %41 to double
  %43 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !126
  %45 = sitofp i64 %44 to double
  %46 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !127
  %48 = sitofp i64 %47 to double
  %49 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.65, double noundef %39, double noundef %42, double noundef %45, double noundef %48) #20
  %50 = load ptr, ptr %11, align 8, !tbaa !21
  %51 = call i32 @SetImageArtifact(ptr noundef %50, ptr noundef nonnull %3, ptr noundef nonnull %2) #20
  %52 = load ptr, ptr %20, align 8, !tbaa !18
  %53 = call ptr @DestroyString(ptr noundef %52) #20
  store ptr %53, ptr %20, align 8, !tbaa !18
  %54 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %37, i8 0, i64 40, i1 false)
  store i32 1, ptr %54, align 8, !tbaa !23
  %55 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %56 = load i64, ptr %55, align 8, !tbaa !33
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %28
  %59 = add i64 %56, -1
  store i64 %59, ptr %55, align 8, !tbaa !33
  br label %60

60:                                               ; preds = %58, %28
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.66) #27
  br label %61

61:                                               ; preds = %60, %23
  %62 = phi i32 [ 0, %23 ], [ 1, %60 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #22
  ret i32 %62
}

; Function Attrs: optsize
declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPushClipPath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4170, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.67, ptr noundef %1) #27
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %11 = load i64, ptr %10, align 8, !tbaa !33
  %12 = add i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawPushDefs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4205, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.68) #27
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %10 = load i64, ptr %9, align 8, !tbaa !33
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawPushPattern(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4256, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #20
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4261, i32 noundef 460, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #20
  br label %46

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  store i32 1, ptr %22, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.70, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #27
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %24 = load i64, ptr %23, align 8, !tbaa !33
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !33
  %26 = tail call ptr @AcquireString(ptr noundef %1) #20
  store ptr %26, ptr %14, align 8, !tbaa !18
  %27 = fadd double %2, -5.000000e-01
  %28 = tail call double @llvm.ceil.f64(double %27)
  %29 = fptosi double %28 to i64
  %30 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9
  %31 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 2
  store i64 %29, ptr %31, align 8, !tbaa !126
  %32 = fadd double %3, -5.000000e-01
  %33 = tail call double @llvm.ceil.f64(double %32)
  %34 = fptosi double %33 to i64
  %35 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 3
  store i64 %34, ptr %35, align 8, !tbaa !127
  %36 = fadd double %4, 5.000000e-01
  %37 = tail call double @llvm.floor.f64(double %36)
  %38 = fptoui double %37 to i64
  store i64 %38, ptr %30, align 8, !tbaa !124
  %39 = fadd double %5, 5.000000e-01
  %40 = tail call double @llvm.floor.f64(double %39)
  %41 = fptoui double %40 to i64
  %42 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 9, i32 1
  store i64 %41, ptr %42, align 8, !tbaa !125
  %43 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  %44 = load i64, ptr %43, align 8, !tbaa !26
  %45 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 10
  store i64 %44, ptr %45, align 8, !tbaa !29
  br label %46

46:                                               ; preds = %21, %17
  %47 = phi i32 [ 0, %17 ], [ 1, %21 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawRectangle(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4313, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.71, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawRender(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %11 = load i64, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  store ptr %7, ptr %13, align 8, !tbaa !128
  br label %29

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4347, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #20
  %17 = load i32, ptr %2, align 4, !tbaa !5
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %24 = load i64, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  store ptr %20, ptr %26, align 8, !tbaa !128
  br i1 %18, label %29, label %27

27:                                               ; preds = %14
  %28 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4350, ptr noundef nonnull @.str.72, ptr noundef %20) #20
  br label %29

29:                                               ; preds = %5, %27, %14
  %30 = phi ptr [ %10, %5 ], [ %23, %27 ], [ %23, %14 ]
  %31 = phi ptr [ %8, %5 ], [ %21, %27 ], [ %21, %14 ]
  %32 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4352, i32 noundef 470, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, ptr noundef nonnull %38) #20
  %40 = load ptr, ptr %32, align 8, !tbaa !21
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi ptr [ %40, %35 ], [ %33, %29 ]
  %43 = load ptr, ptr %31, align 8, !tbaa !14
  %44 = load i64, ptr %30, align 8, !tbaa !13
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !15
  %47 = tail call i32 @DrawImage(ptr noundef %42, ptr noundef %46) #20
  %48 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = load ptr, ptr %32, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 58
  tail call void @InheritException(ptr noundef %49, ptr noundef nonnull %51) #20
  %52 = load ptr, ptr %31, align 8, !tbaa !14
  %53 = load i64, ptr %30, align 8, !tbaa !13
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !15
  store ptr null, ptr %55, align 8, !tbaa !128
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawResetVectorGraphics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4387, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyString(ptr noundef nonnull %10) #20
  store ptr %13, ptr %9, align 8, !tbaa !19
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawRotate(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4424, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.73, double noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawRoundRectangle(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4471, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #20
  br label %14

14:                                               ; preds = %11, %7
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.74, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawScale(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4508, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.75, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetBorderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._PixelPacket, align 8
  %4 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4562, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %2
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %3) #20
  %12 = load i64, ptr %3, align 8
  store i64 %12, ptr %4, align 8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %13, align 8, !tbaa !14
  %19 = load i64, ptr %14, align 8, !tbaa !13
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  br i1 %17, label %22, label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %21, i64 0, i32 34
  %24 = call fastcc i32 @IsColorEqual(ptr noundef nonnull %23, ptr noundef nonnull %4) #27, !range !129
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11, %22
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %21, i64 0, i32 34
  store i64 %12, ptr %27, align 4
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76) #27
  call fastcc void @MvgAppendColor(ptr noundef nonnull %0, ptr noundef nonnull %3) #27
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #27
  br label %28

28:                                               ; preds = %26, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare void @PixelGetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @IsColorEqual(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !130
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !130
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !131
  %11 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !131
  %13 = icmp eq i16 %10, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load i16, ptr %0, align 2, !tbaa !109
  %16 = load i16, ptr %1, align 2, !tbaa !109
  %17 = icmp eq i16 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !120
  %21 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !120
  %23 = icmp eq i16 %20, %22
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %18, %14, %8, %2
  %26 = phi i32 [ 0, %2 ], [ 0, %8 ], [ 0, %14 ], [ %24, %18 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MvgAppendColor(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !130
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !131
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i16, ptr %1, align 2, !tbaa !109
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !120
  %18 = icmp eq i16 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.137) #27
  br label %32

20:                                               ; preds = %15, %12, %8, %2
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %21 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  call void @GetMagickPixelPacket(ptr noundef %22, ptr noundef nonnull %4) #20
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 1
  store i32 13, ptr %23, align 4, !tbaa !132
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 2
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %26 = load <4 x i16>, ptr %1, align 2, !tbaa !107
  %27 = extractelement <4 x i16> %26, i64 3
  %28 = icmp ne i16 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, ptr %24, align 8, !tbaa !103
  %30 = uitofp <4 x i16> %26 to <4 x float>
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %31, ptr %25, align 8, !tbaa !108
  call void @GetColorTuple(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %3) #20
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  br label %32

32:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawSetClipPath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4608, ptr noundef nonnull @.str.2, ptr noundef %1) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %14, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = tail call i32 @LocaleCompare(ptr noundef nonnull %16, ptr noundef %1) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %9, align 8, !tbaa !14
  %27 = load i64, ptr %11, align 8, !tbaa !13
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  br label %30

30:                                               ; preds = %25, %18, %8
  %31 = phi ptr [ %29, %25 ], [ %14, %18 ], [ %14, %8 ]
  %32 = getelementptr inbounds %struct._DrawInfo, ptr %31, i64 0, i32 37
  %33 = tail call ptr @CloneString(ptr noundef nonnull %32, ptr noundef %1) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.77, ptr noundef %1) #27
  br label %34

34:                                               ; preds = %30, %22
  ret i32 1
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetClipRule(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4656, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 14
  %21 = load i32, ptr %20, align 8, !tbaa !66
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 14
  store i32 %1, ptr %24, align 8, !tbaa !66
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 24, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetClipUnits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._AffineMatrix, align 8
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4698, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !23
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  br i1 %13, label %20, label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 39
  %22 = load i32, ptr %21, align 8, !tbaa !67
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %45, label %24

24:                                               ; preds = %10, %20
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 39
  store i32 %1, ptr %25, align 8, !tbaa !67
  %26 = icmp eq i32 %1, 3
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #22
  call void @GetAffineMatrix(ptr noundef nonnull %3) #20
  %30 = load ptr, ptr %29, align 8, !tbaa !14
  %31 = load i64, ptr %28, align 8, !tbaa !13
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %33, i64 0, i32 38, i32 2
  %35 = load double, ptr %34, align 8, !tbaa !133
  store double %35, ptr %3, align 8, !tbaa !36
  %36 = getelementptr inbounds %struct._DrawInfo, ptr %33, i64 0, i32 38, i32 3
  %37 = load double, ptr %36, align 8, !tbaa !134
  %38 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 3
  store double %37, ptr %38, align 8, !tbaa !41
  %39 = getelementptr inbounds %struct._DrawInfo, ptr %33, i64 0, i32 38
  %40 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 4
  %41 = load <2 x double>, ptr %39, align 8, !tbaa !44
  store <2 x double> %41, ptr %40, align 8, !tbaa !44
  call fastcc void @AdjustAffine(ptr noundef nonnull %0, ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #22
  br label %42

42:                                               ; preds = %27, %24
  %43 = zext i32 %1 to i64
  %44 = call ptr @CommandOptionToMnemonic(i32 noundef 6, i64 noundef %43) #20
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.79, ptr noundef %44) #27
  br label %45

45:                                               ; preds = %42, %20
  ret void
}

; Function Attrs: optsize
declare void @GetAffineMatrix(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetFillColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._PixelPacket, align 8
  %4 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4754, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %2
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %3) #20
  %12 = load i64, ptr %3, align 8
  store i64 %12, ptr %4, align 8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %13, align 8, !tbaa !14
  %19 = load i64, ptr %14, align 8, !tbaa !13
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  br i1 %17, label %22, label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %21, i64 0, i32 5
  %24 = call fastcc i32 @IsColorEqual(ptr noundef nonnull %23, ptr noundef nonnull %4) #27, !range !129
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11, %22
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %21, i64 0, i32 5
  store i64 %12, ptr %27, align 4
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.80) #27
  call fastcc void @MvgAppendColor(ptr noundef nonnull %0, ptr noundef nonnull %3) #27
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #27
  br label %28

28:                                               ; preds = %26, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetFillOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4802, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = fsub double 1.000000e+00, %1
  %11 = fmul double %10, 6.553500e+04
  %12 = fptrunc double %11 to float
  %13 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %12) #27
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !23
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %20 = load i64, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  br i1 %16, label %23, label %27

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %22, i64 0, i32 5, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !72
  %26 = icmp eq i16 %25, %13
  br i1 %26, label %29, label %27

27:                                               ; preds = %9, %23
  %28 = getelementptr inbounds %struct._DrawInfo, ptr %22, i64 0, i32 5, i32 3
  store i16 %13, ptr %28, align 2, !tbaa !72
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.81, double noundef %1) #27
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #12 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawSetFontResolution(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4848, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %3
  %12 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.82, double noundef %1, double noundef %2) #20
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 31
  %20 = call ptr @CloneString(ptr noundef nonnull %19, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #22
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4888, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  br label %34

20:                                               ; preds = %9
  %21 = fsub double 1.000000e+00, %1
  %22 = fmul double %21, 6.553500e+04
  %23 = fptrunc double %22 to float
  %24 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %23) #27
  %25 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %28 = load i64, ptr %27, align 8, !tbaa !13
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %30, i64 0, i32 40
  %32 = load i16, ptr %31, align 4, !tbaa !84
  %33 = icmp eq i16 %32, %24
  br i1 %33, label %38, label %34

34:                                               ; preds = %13, %20
  %35 = phi ptr [ %19, %13 ], [ %30, %20 ]
  %36 = fptoui double %1 to i16
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %35, i64 0, i32 40
  store i16 %36, ptr %37, align 4, !tbaa !84
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, double noundef %1) #27
  br label %38

38:                                               ; preds = %34, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawSetFillPatternURL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4936, ptr noundef nonnull @.str.2, ptr noundef %1) #20
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4938, i32 noundef 470, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #20
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i8, ptr %1, align 1, !tbaa !51
  %21 = icmp eq i8 %20, 35
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4942, i32 noundef 460, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #20
  br label %51

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %27) #20
  %29 = load ptr, ptr %11, align 8, !tbaa !21
  %30 = call ptr @GetImageArtifact(ptr noundef %29, ptr noundef nonnull %3) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4948, i32 noundef 460, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #20
  br label %51

36:                                               ; preds = %26
  %37 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.86, ptr noundef nonnull %1) #20
  %38 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %41 = load i64, ptr %40, align 8, !tbaa !13
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %43, i64 0, i32 5, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !72
  %46 = icmp eq i16 %45, -1
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct._DrawInfo, ptr %43, i64 0, i32 40
  %49 = load i16, ptr %48, align 4, !tbaa !84
  store i16 %49, ptr %44, align 2, !tbaa !72
  br label %50

50:                                               ; preds = %47, %36
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.87, ptr noundef nonnull %4) #27
  br label %51

51:                                               ; preds = %50, %32, %22
  %52 = phi i32 [ 0, %22 ], [ 0, %32 ], [ 1, %50 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  ret i32 %52
}

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetFillRule(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4991, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 14
  %21 = load i32, ptr %20, align 8, !tbaa !66
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 14
  store i32 %1, ptr %24, align 8, !tbaa !66
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 24, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.88, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawSetFont(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5032, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %21, ptr noundef %1) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %13, %9
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %30 = load i64, ptr %29, align 8, !tbaa !13
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %32, i64 0, i32 23
  %34 = tail call ptr @CloneString(ptr noundef nonnull %33, ptr noundef %1) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.89, ptr noundef %1) #27
  br label %35

35:                                               ; preds = %26, %23
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawSetFontFamily(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5075, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %21, ptr noundef %1) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %13, %9
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %30 = load i64, ptr %29, align 8, !tbaa !13
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %32, i64 0, i32 25
  %34 = tail call ptr @CloneString(ptr noundef nonnull %33, ptr noundef %1) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.90, ptr noundef %1) #27
  br label %35

35:                                               ; preds = %26, %23
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetFontSize(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5116, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %25

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 30
  %21 = load double, ptr %20, align 8, !tbaa !79
  %22 = fsub double %21, %1
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %27, label %25

25:                                               ; preds = %9, %19
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 30
  store double %1, ptr %26, align 8, !tbaa !79
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.91, double noundef %1) #27
  br label %27

27:                                               ; preds = %25, %19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetFontStretch(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5160, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 27
  %21 = load i32, ptr %20, align 4, !tbaa !80
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 27
  store i32 %1, ptr %24, align 4, !tbaa !80
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 63, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.92, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetFontStyle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5200, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 26
  %21 = load i32, ptr %20, align 8, !tbaa !81
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 26
  store i32 %1, ptr %24, align 8, !tbaa !81
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 64, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.93, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetFontWeight(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5241, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 28
  %21 = load i64, ptr %20, align 8, !tbaa !82
  %22 = icmp eq i64 %21, %1
  br i1 %22, label %26, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 28
  store i64 %1, ptr %24, align 8, !tbaa !82
  %25 = uitofp i64 %1 to double
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.94, double noundef %25) #27
  br label %26

26:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetGravity(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5283, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %24

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !83
  %22 = or i32 %21, %1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %9, %19
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 4
  store i32 %1, ptr %25, align 8, !tbaa !83
  %26 = zext i32 %1 to i64
  %27 = tail call ptr @CommandOptionToMnemonic(i32 noundef 30, i64 noundef %26) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.95, ptr noundef %27) #27
  br label %28

28:                                               ; preds = %19, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetStrokeColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._PixelPacket, align 8
  %4 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5329, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %2
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %4) #20
  %12 = load i64, ptr %4, align 8
  store i64 %12, ptr %3, align 8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %13, align 8, !tbaa !14
  %19 = load i64, ptr %14, align 8, !tbaa !13
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  br i1 %17, label %22, label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %21, i64 0, i32 6
  %24 = call fastcc i32 @IsColorEqual(ptr noundef nonnull %23, ptr noundef nonnull %3) #27, !range !129
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11, %22
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %21, i64 0, i32 6
  store i64 %12, ptr %27, align 4
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.96) #27
  call fastcc void @MvgAppendColor(ptr noundef nonnull %0, ptr noundef nonnull %4) #27
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #27
  br label %28

28:                                               ; preds = %26, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawSetStrokePatternURL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5379, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5381, i32 noundef 470, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #20
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i8, ptr %1, align 1, !tbaa !51
  %22 = icmp eq i8 %21, 35
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5384, i32 noundef 460, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #20
  br label %27

27:                                               ; preds = %23, %20
  %28 = getelementptr inbounds i8, ptr %1, i64 1
  %29 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %28) #20
  %30 = load ptr, ptr %12, align 8, !tbaa !21
  %31 = call ptr @GetImageArtifact(ptr noundef %30, ptr noundef nonnull %3) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5388, i32 noundef 460, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #20
  br label %52

37:                                               ; preds = %27
  %38 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.86, ptr noundef nonnull %1) #20
  %39 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %42 = load i64, ptr %41, align 8, !tbaa !13
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct._DrawInfo, ptr %44, i64 0, i32 6, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !93
  %47 = icmp eq i16 %46, -1
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %44, i64 0, i32 40
  %50 = load i16, ptr %49, align 4, !tbaa !84
  store i16 %50, ptr %45, align 2, !tbaa !93
  br label %51

51:                                               ; preds = %48, %37
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.97, ptr noundef nonnull %4) #27
  br label %52

52:                                               ; preds = %51, %33
  %53 = phi i32 [ 0, %33 ], [ 1, %51 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetStrokeAntialias(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5436, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !85
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 12
  store i32 %1, ptr %24, align 8, !tbaa !85
  %25 = icmp ne i32 %1, 0
  %26 = zext i1 %25 to i32
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.98, i32 noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawSetStrokeDashArray(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5501, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %14 = load i64, ptr %13, align 8, !tbaa !13
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct._DrawInfo, ptr %16, i64 0, i32 36
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %10
  %21 = load double, ptr %18, align 8, !tbaa !44
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %20 ]
  %25 = phi ptr [ %26, %23 ], [ %18, %20 ]
  %26 = getelementptr inbounds double, ptr %25, i64 1
  %27 = add i64 %24, 1
  %28 = load double, ptr %26, align 8, !tbaa !44
  %29 = fcmp une double %28, 0.000000e+00
  br i1 %29, label %23, label %30, !llvm.loop !135

30:                                               ; preds = %23, %20, %10
  %31 = phi i64 [ 0, %10 ], [ 0, %20 ], [ %27, %23 ]
  %32 = icmp eq i64 %1, 0
  %33 = or i64 %31, %1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %30
  %36 = icmp eq i64 %31, %1
  br i1 %36, label %37, label %61

37:                                               ; preds = %35
  %38 = icmp ne ptr %18, null
  %39 = icmp ne ptr %2, null
  %40 = and i1 %39, %38
  %41 = icmp sgt i64 %1, 0
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37, %52
  %44 = phi i64 [ %55, %52 ], [ 0, %37 ]
  %45 = phi ptr [ %54, %52 ], [ %18, %37 ]
  %46 = phi ptr [ %53, %52 ], [ %2, %37 ]
  %47 = load double, ptr %46, align 8, !tbaa !44
  %48 = load double, ptr %45, align 8, !tbaa !44
  %49 = fsub double %47, %48
  %50 = tail call double @llvm.fabs.f64(double %49)
  %51 = fcmp ult double %50, 1.000000e-15
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = getelementptr inbounds double, ptr %46, i64 1
  %54 = getelementptr inbounds double, ptr %45, i64 1
  %55 = add nuw nsw i64 %44, 1
  %56 = icmp eq i64 %55, %1
  br i1 %56, label %57, label %43, !llvm.loop !136

57:                                               ; preds = %52, %30, %37
  %58 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %59 = load i32, ptr %58, align 8, !tbaa !23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %118, label %61

61:                                               ; preds = %43, %35, %57
  br i1 %19, label %69, label %62

62:                                               ; preds = %61
  %63 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %18) #20
  %64 = load ptr, ptr %11, align 8, !tbaa !14
  %65 = load i64, ptr %13, align 8, !tbaa !13
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !15
  %68 = getelementptr inbounds %struct._DrawInfo, ptr %67, i64 0, i32 36
  store ptr %63, ptr %68, align 8, !tbaa !86
  br label %69

69:                                               ; preds = %62, %61
  br i1 %32, label %70, label %71

70:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.99) #27
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.100) #27
  br label %118

71:                                               ; preds = %69
  %72 = add i64 %1, 1
  %73 = tail call ptr @AcquireQuantumMemory(i64 noundef %72, i64 noundef 8) #26
  %74 = load ptr, ptr %11, align 8, !tbaa !14
  %75 = load i64, ptr %13, align 8, !tbaa !13
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !15
  %78 = getelementptr inbounds %struct._DrawInfo, ptr %77, i64 0, i32 36
  store ptr %73, ptr %78, align 8, !tbaa !86
  %79 = load ptr, ptr %76, align 8, !tbaa !15
  %80 = getelementptr inbounds %struct._DrawInfo, ptr %79, i64 0, i32 36
  %81 = load ptr, ptr %80, align 8, !tbaa !86
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %71
  %84 = icmp sgt i64 %1, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %83
  %86 = icmp eq ptr %2, null
  br label %92

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !22
  %90 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %91 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %89, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5543, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %90) #20
  br label %118

92:                                               ; preds = %85, %98
  %93 = phi i64 [ 0, %85 ], [ %99, %98 ]
  %94 = getelementptr inbounds double, ptr %81, i64 %93
  store double 0.000000e+00, ptr %94, align 8, !tbaa !44
  br i1 %86, label %98, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds double, ptr %2, i64 %93
  %97 = load double, ptr %96, align 8, !tbaa !44
  store double %97, ptr %94, align 8, !tbaa !44
  br label %98

98:                                               ; preds = %92, %95
  %99 = add nuw nsw i64 %93, 1
  %100 = icmp eq i64 %99, %1
  br i1 %100, label %101, label %92, !llvm.loop !137

101:                                              ; preds = %98
  %102 = getelementptr inbounds double, ptr %81, i64 %1
  store double 0.000000e+00, ptr %102, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.99) #27
  %103 = icmp eq ptr %2, null
  br i1 %103, label %118, label %107

104:                                              ; preds = %83
  %105 = getelementptr inbounds double, ptr %81, i64 %1
  store double 0.000000e+00, ptr %105, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.99) #27
  %106 = icmp eq ptr %2, null
  br i1 %106, label %118, label %117

107:                                              ; preds = %101
  br i1 %84, label %108, label %117

108:                                              ; preds = %107, %112
  %109 = phi i64 [ %115, %112 ], [ 0, %107 ]
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.42) #27
  br label %112

112:                                              ; preds = %111, %108
  %113 = getelementptr inbounds double, ptr %2, i64 %109
  %114 = load double, ptr %113, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.29, double noundef %114) #27
  %115 = add nuw nsw i64 %109, 1
  %116 = icmp eq i64 %115, %1
  br i1 %116, label %117, label %108, !llvm.loop !138

117:                                              ; preds = %112, %104, %107
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef %0, ptr noundef nonnull @.str.15) #27
  br label %118

118:                                              ; preds = %104, %57, %101, %117, %70, %87
  %119 = phi i32 [ 0, %87 ], [ 1, %70 ], [ 1, %117 ], [ 1, %101 ], [ 1, %57 ], [ 1, %104 ]
  ret i32 %119
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetStrokeDashOffset(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5604, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %25

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 18
  %21 = load double, ptr %20, align 8, !tbaa !89
  %22 = fsub double %21, %1
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %27, label %25

25:                                               ; preds = %9, %19
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 18
  store double %1, ptr %26, align 8, !tbaa !89
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.101, double noundef %1) #27
  br label %27

27:                                               ; preds = %25, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetStrokeLineCap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5645, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !90
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 15
  store i32 %1, ptr %24, align 4, !tbaa !90
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 36, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.102, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetStrokeLineJoin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5687, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !91
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 16
  store i32 %1, ptr %24, align 8, !tbaa !91
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 37, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.103, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetStrokeMiterLimit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5732, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 17
  %17 = load i64, ptr %16, align 8, !tbaa !92
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  store i64 %1, ptr %16, align 8, !tbaa !92
  %20 = uitofp i64 %1 to double
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.104, double noundef %20) #27
  br label %21

21:                                               ; preds = %19, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetStrokeOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5774, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = fsub double 1.000000e+00, %1
  %11 = fmul double %10, 6.553500e+04
  %12 = fptrunc double %11 to float
  %13 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %12) #27
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !23
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %20 = load i64, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  br i1 %16, label %23, label %27

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %22, i64 0, i32 6, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !93
  %26 = icmp eq i16 %25, %13
  br i1 %26, label %29, label %27

27:                                               ; preds = %9, %23
  %28 = getelementptr inbounds %struct._DrawInfo, ptr %22, i64 0, i32 6, i32 3
  store i16 %13, ptr %28, align 2, !tbaa !93
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.105, double noundef %1) #27
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetStrokeWidth(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5815, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %25

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 7
  %21 = load double, ptr %20, align 8, !tbaa !94
  %22 = fsub double %21, %1
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %27, label %25

25:                                               ; preds = %9, %19
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 7
  store double %1, ptr %26, align 8, !tbaa !94
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.106, double noundef %1) #27
  br label %27

27:                                               ; preds = %25, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextAlignment(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5856, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 32
  %21 = load i32, ptr %20, align 8, !tbaa !95
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 32
  store i32 %1, ptr %24, align 8, !tbaa !95
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 0, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.107, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextAntialias(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5899, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 13
  %21 = load i32, ptr %20, align 4, !tbaa !96
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 13
  store i32 %1, ptr %24, align 4, !tbaa !96
  %25 = icmp ne i32 %1, 0
  %26 = zext i1 %25 to i32
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.108, i32 noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextDecoration(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5941, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 19
  %21 = load i32, ptr %20, align 8, !tbaa !97
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 19
  store i32 %1, ptr %24, align 8, !tbaa !97
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 16, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.109, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextDirection(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5985, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br i1 %12, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 48
  %21 = load i32, ptr %20, align 8, !tbaa !98
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %19
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %18, i64 0, i32 48
  store i32 %1, ptr %24, align 8, !tbaa !98
  %25 = zext i32 %1 to i64
  %26 = tail call ptr @CommandOptionToMnemonic(i32 noundef 18, i64 noundef %25) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.110, ptr noundef %26) #27
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextEncoding(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6029, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 29
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %21, ptr noundef %1) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %13, %9
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %30 = load i64, ptr %29, align 8, !tbaa !13
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %32, i64 0, i32 29
  %34 = tail call ptr @CloneString(ptr noundef nonnull %33, ptr noundef %1) #20
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.111, ptr noundef %1) #27
  br label %35

35:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextKerning(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6070, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 45
  %21 = load double, ptr %20, align 8, !tbaa !100
  %22 = fcmp une double %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store double %1, ptr %20, align 8, !tbaa !100
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.112, double noundef %1) #27
  br label %24

24:                                               ; preds = %23, %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextInterlineSpacing(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6111, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 47
  %21 = load double, ptr %20, align 8, !tbaa !101
  %22 = fcmp une double %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store double %1, ptr %20, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.113, double noundef %1) #27
  br label %24

24:                                               ; preds = %23, %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextInterwordSpacing(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6152, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 46
  %21 = load double, ptr %20, align 8, !tbaa !102
  %22 = fcmp une double %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store double %1, ptr %20, align 8, !tbaa !102
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.114, double noundef %1) #27
  br label %24

24:                                               ; preds = %23, %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetTextUnderColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6196, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %2
  call void @PixelGetQuantumColor(ptr noundef %1, ptr noundef nonnull %3) #20
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !23
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  br i1 %13, label %20, label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 33
  %22 = call fastcc i32 @IsColorEqual(ptr noundef nonnull %21, ptr noundef nonnull %3) #27, !range !129
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %10, %20
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %19, i64 0, i32 33
  %26 = load i64, ptr %3, align 8
  store i64 %26, ptr %25, align 4
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.115) #27
  call fastcc void @MvgAppendColor(ptr noundef nonnull %0, ptr noundef nonnull %3) #27
  call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #27
  br label %27

27:                                               ; preds = %24, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawSetVectorGraphics(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6263, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #20
  br label %13

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = tail call ptr @DestroyDrawInfo(ptr noundef %19) #20
  %21 = load ptr, ptr %14, align 8, !tbaa !14
  %22 = load i64, ptr %16, align 8, !tbaa !13
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  store ptr %20, ptr %23, align 8, !tbaa !15
  %24 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #20
  %25 = load ptr, ptr %14, align 8, !tbaa !14
  %26 = load i64, ptr %16, align 8, !tbaa !13
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  store ptr %24, ptr %27, align 8, !tbaa !15
  %28 = icmp eq ptr %1, null
  br i1 %28, label %488, label %29

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = tail call ptr @NewXMLTree(ptr noundef nonnull %1, ptr noundef %31) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %488, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.23) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %14, align 8, !tbaa !14
  %39 = load i64, ptr %16, align 8, !tbaa !13
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %41, i64 0, i32 37
  %43 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %35) #20
  %44 = tail call ptr @CloneString(ptr noundef nonnull %42, ptr noundef %43) #20
  br label %45

45:                                               ; preds = %37, %34
  %46 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.24) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @ParseCommandOption(i32 noundef 6, i32 noundef 0, ptr noundef nonnull %49) #20
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr %14, align 8, !tbaa !14
  %55 = load i64, ptr %16, align 8, !tbaa !13
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !15
  %58 = getelementptr inbounds %struct._DrawInfo, ptr %57, i64 0, i32 39
  store i32 %53, ptr %58, align 8, !tbaa !67
  br label %59

59:                                               ; preds = %48, %51, %45
  %60 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.25) #20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %60) #20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = tail call i64 @ParseCommandOption(i32 noundef 16, i32 noundef 0, ptr noundef nonnull %63) #20
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %14, align 8, !tbaa !14
  %69 = load i64, ptr %16, align 8, !tbaa !13
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !15
  %72 = getelementptr inbounds %struct._DrawInfo, ptr %71, i64 0, i32 19
  store i32 %67, ptr %72, align 8, !tbaa !97
  br label %73

73:                                               ; preds = %62, %65, %59
  %74 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.26) #20
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %14, align 8, !tbaa !14
  %78 = load i64, ptr %16, align 8, !tbaa !13
  %79 = getelementptr inbounds ptr, ptr %77, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !15
  %81 = getelementptr inbounds %struct._DrawInfo, ptr %80, i64 0, i32 29
  %82 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %74) #20
  %83 = tail call ptr @CloneString(ptr noundef nonnull %81, ptr noundef %82) #20
  br label %84

84:                                               ; preds = %76, %73
  %85 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.27) #20
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %84
  %88 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %85) #20
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %14, align 8, !tbaa !14
  %92 = load i64, ptr %16, align 8, !tbaa !13
  %93 = getelementptr inbounds ptr, ptr %91, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !15
  %95 = getelementptr inbounds %struct._DrawInfo, ptr %94, i64 0, i32 5
  %96 = load ptr, ptr %30, align 8, !tbaa !22
  %97 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %88, ptr noundef nonnull %95, ptr noundef %96) #20
  br label %98

98:                                               ; preds = %87, %90, %84
  %99 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.28) #20
  %100 = icmp eq ptr %99, null
  br i1 %100, label %115, label %101

101:                                              ; preds = %98
  %102 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %99) #20
  %103 = icmp eq ptr %102, null
  br i1 %103, label %115, label %104

104:                                              ; preds = %101
  %105 = tail call fastcc double @StringToDouble(ptr noundef nonnull %102) #27
  %106 = fsub double 1.000000e+00, %105
  %107 = fmul double %106, 6.553500e+04
  %108 = fptrunc double %107 to float
  %109 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %108) #27
  %110 = load ptr, ptr %14, align 8, !tbaa !14
  %111 = load i64, ptr %16, align 8, !tbaa !13
  %112 = getelementptr inbounds ptr, ptr %110, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !15
  %114 = getelementptr inbounds %struct._DrawInfo, ptr %113, i64 0, i32 5, i32 3
  store i16 %109, ptr %114, align 2, !tbaa !72
  br label %115

115:                                              ; preds = %101, %104, %98
  %116 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.30) #20
  %117 = icmp eq ptr %116, null
  br i1 %117, label %129, label %118

118:                                              ; preds = %115
  %119 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %116) #20
  %120 = icmp eq ptr %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = tail call i64 @ParseCommandOption(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %119) #20
  %123 = trunc i64 %122 to i32
  %124 = load ptr, ptr %14, align 8, !tbaa !14
  %125 = load i64, ptr %16, align 8, !tbaa !13
  %126 = getelementptr inbounds ptr, ptr %124, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !15
  %128 = getelementptr inbounds %struct._DrawInfo, ptr %127, i64 0, i32 14
  store i32 %123, ptr %128, align 8, !tbaa !66
  br label %129

129:                                              ; preds = %118, %121, %115
  %130 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.31) #20
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %14, align 8, !tbaa !14
  %134 = load i64, ptr %16, align 8, !tbaa !13
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !15
  %137 = getelementptr inbounds %struct._DrawInfo, ptr %136, i64 0, i32 23
  %138 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %130) #20
  %139 = tail call ptr @CloneString(ptr noundef nonnull %137, ptr noundef %138) #20
  br label %140

140:                                              ; preds = %132, %129
  %141 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.32) #20
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %14, align 8, !tbaa !14
  %145 = load i64, ptr %16, align 8, !tbaa !13
  %146 = getelementptr inbounds ptr, ptr %144, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !15
  %148 = getelementptr inbounds %struct._DrawInfo, ptr %147, i64 0, i32 25
  %149 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %141) #20
  %150 = tail call ptr @CloneString(ptr noundef nonnull %148, ptr noundef %149) #20
  br label %151

151:                                              ; preds = %143, %140
  %152 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.33) #20
  %153 = icmp eq ptr %152, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %152) #20
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %154
  %158 = tail call fastcc double @StringToDouble(ptr noundef nonnull %155) #27
  %159 = load ptr, ptr %14, align 8, !tbaa !14
  %160 = load i64, ptr %16, align 8, !tbaa !13
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !15
  %163 = getelementptr inbounds %struct._DrawInfo, ptr %162, i64 0, i32 30
  store double %158, ptr %163, align 8, !tbaa !79
  br label %164

164:                                              ; preds = %154, %157, %151
  %165 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.34) #20
  %166 = icmp eq ptr %165, null
  br i1 %166, label %178, label %167

167:                                              ; preds = %164
  %168 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %165) #20
  %169 = icmp eq ptr %168, null
  br i1 %169, label %178, label %170

170:                                              ; preds = %167
  %171 = tail call i64 @ParseCommandOption(i32 noundef 63, i32 noundef 0, ptr noundef nonnull %168) #20
  %172 = trunc i64 %171 to i32
  %173 = load ptr, ptr %14, align 8, !tbaa !14
  %174 = load i64, ptr %16, align 8, !tbaa !13
  %175 = getelementptr inbounds ptr, ptr %173, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !15
  %177 = getelementptr inbounds %struct._DrawInfo, ptr %176, i64 0, i32 27
  store i32 %172, ptr %177, align 4, !tbaa !80
  br label %178

178:                                              ; preds = %167, %170, %164
  %179 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.35) #20
  %180 = icmp eq ptr %179, null
  br i1 %180, label %192, label %181

181:                                              ; preds = %178
  %182 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %179) #20
  %183 = icmp eq ptr %182, null
  br i1 %183, label %192, label %184

184:                                              ; preds = %181
  %185 = tail call i64 @ParseCommandOption(i32 noundef 64, i32 noundef 0, ptr noundef nonnull %182) #20
  %186 = trunc i64 %185 to i32
  %187 = load ptr, ptr %14, align 8, !tbaa !14
  %188 = load i64, ptr %16, align 8, !tbaa !13
  %189 = getelementptr inbounds ptr, ptr %187, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !15
  %191 = getelementptr inbounds %struct._DrawInfo, ptr %190, i64 0, i32 26
  store i32 %186, ptr %191, align 8, !tbaa !81
  br label %192

192:                                              ; preds = %181, %184, %178
  %193 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.36) #20
  %194 = icmp eq ptr %193, null
  br i1 %194, label %205, label %195

195:                                              ; preds = %192
  %196 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %193) #20
  %197 = icmp eq ptr %196, null
  br i1 %197, label %205, label %198

198:                                              ; preds = %195
  %199 = tail call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %196) #27
  %200 = load ptr, ptr %14, align 8, !tbaa !14
  %201 = load i64, ptr %16, align 8, !tbaa !13
  %202 = getelementptr inbounds ptr, ptr %200, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !15
  %204 = getelementptr inbounds %struct._DrawInfo, ptr %203, i64 0, i32 28
  store i64 %199, ptr %204, align 8, !tbaa !82
  br label %205

205:                                              ; preds = %195, %198, %192
  %206 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.37) #20
  %207 = icmp eq ptr %206, null
  br i1 %207, label %219, label %208

208:                                              ; preds = %205
  %209 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %206) #20
  %210 = icmp eq ptr %209, null
  br i1 %210, label %219, label %211

211:                                              ; preds = %208
  %212 = tail call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %209) #20
  %213 = trunc i64 %212 to i32
  %214 = load ptr, ptr %14, align 8, !tbaa !14
  %215 = load i64, ptr %16, align 8, !tbaa !13
  %216 = getelementptr inbounds ptr, ptr %214, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !15
  %218 = getelementptr inbounds %struct._DrawInfo, ptr %217, i64 0, i32 4
  store i32 %213, ptr %218, align 8, !tbaa !83
  br label %219

219:                                              ; preds = %208, %211, %205
  %220 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.38) #20
  %221 = icmp eq ptr %220, null
  br i1 %221, label %233, label %222

222:                                              ; preds = %219
  %223 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %220) #20
  %224 = icmp eq ptr %223, null
  br i1 %224, label %233, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr %14, align 8, !tbaa !14
  %227 = load i64, ptr %16, align 8, !tbaa !13
  %228 = getelementptr inbounds ptr, ptr %226, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !15
  %230 = getelementptr inbounds %struct._DrawInfo, ptr %229, i64 0, i32 6
  %231 = load ptr, ptr %30, align 8, !tbaa !22
  %232 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %223, ptr noundef nonnull %230, ptr noundef %231) #20
  br label %233

233:                                              ; preds = %222, %225, %219
  %234 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.39) #20
  %235 = icmp eq ptr %234, null
  br i1 %235, label %248, label %236

236:                                              ; preds = %233
  %237 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %234) #20
  %238 = icmp eq ptr %237, null
  br i1 %238, label %248, label %239

239:                                              ; preds = %236
  %240 = tail call fastcc i64 @StringToLong(ptr noundef nonnull %237) #27
  %241 = icmp ne i64 %240, 0
  %242 = zext i1 %241 to i32
  %243 = load ptr, ptr %14, align 8, !tbaa !14
  %244 = load i64, ptr %16, align 8, !tbaa !13
  %245 = getelementptr inbounds ptr, ptr %243, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !15
  %247 = getelementptr inbounds %struct._DrawInfo, ptr %246, i64 0, i32 12
  store i32 %242, ptr %247, align 8, !tbaa !85
  br label %248

248:                                              ; preds = %236, %239, %233
  %249 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %32, ptr noundef nonnull @.str.41) #20
  %250 = icmp eq ptr %249, null
  br i1 %250, label %347, label %251

251:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %252 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %249) #20
  %253 = icmp eq ptr %252, null
  br i1 %253, label %346, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %14, align 8, !tbaa !14
  %256 = load i64, ptr %16, align 8, !tbaa !13
  %257 = getelementptr inbounds ptr, ptr %255, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !15
  %259 = getelementptr inbounds %struct._DrawInfo, ptr %258, i64 0, i32 36
  %260 = load ptr, ptr %259, align 8, !tbaa !86
  %261 = icmp eq ptr %260, null
  br i1 %261, label %269, label %262

262:                                              ; preds = %254
  %263 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %260) #20
  %264 = load ptr, ptr %14, align 8, !tbaa !14
  %265 = load i64, ptr %16, align 8, !tbaa !13
  %266 = getelementptr inbounds ptr, ptr %264, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !15
  %268 = getelementptr inbounds %struct._DrawInfo, ptr %267, i64 0, i32 36
  store ptr %263, ptr %268, align 8, !tbaa !86
  br label %269

269:                                              ; preds = %262, %254
  store ptr %252, ptr %4, align 8, !tbaa !15
  %270 = tail call fastcc i32 @IsPoint(ptr noundef nonnull %252) #27, !range !129
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %346, label %272

272:                                              ; preds = %269
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr %252, ptr %5, align 8, !tbaa !15
  call void @GetMagickToken(ptr noundef nonnull %252, ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  %273 = load i8, ptr %3, align 16, !tbaa !51
  %274 = icmp eq i8 %273, 44
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load ptr, ptr %5, align 8, !tbaa !15
  call void @GetMagickToken(ptr noundef %276, ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  br label %277

277:                                              ; preds = %275, %272
  %278 = call fastcc i32 @IsPoint(ptr noundef nonnull %3) #27, !range !129
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %291, label %280

280:                                              ; preds = %277, %287
  %281 = phi i64 [ %288, %287 ], [ 0, %277 ]
  %282 = load ptr, ptr %5, align 8, !tbaa !15
  call void @GetMagickToken(ptr noundef %282, ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  %283 = load i8, ptr %3, align 16, !tbaa !51
  %284 = icmp eq i8 %283, 44
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = load ptr, ptr %5, align 8, !tbaa !15
  call void @GetMagickToken(ptr noundef %286, ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  br label %287

287:                                              ; preds = %280, %285
  %288 = add nuw nsw i64 %281, 1
  %289 = call fastcc i32 @IsPoint(ptr noundef nonnull %3) #27, !range !129
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %280, !llvm.loop !139

291:                                              ; preds = %287, %277
  %292 = phi i64 [ 0, %277 ], [ %288, %287 ]
  %293 = shl nuw i64 %292, 1
  %294 = or disjoint i64 %293, 1
  %295 = call ptr @AcquireQuantumMemory(i64 noundef %294, i64 noundef 8) #26
  %296 = load ptr, ptr %14, align 8, !tbaa !14
  %297 = load i64, ptr %16, align 8, !tbaa !13
  %298 = getelementptr inbounds ptr, ptr %296, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !15
  %300 = getelementptr inbounds %struct._DrawInfo, ptr %299, i64 0, i32 36
  store ptr %295, ptr %300, align 8, !tbaa !86
  %301 = load ptr, ptr %298, align 8, !tbaa !15
  %302 = getelementptr inbounds %struct._DrawInfo, ptr %301, i64 0, i32 36
  %303 = load ptr, ptr %302, align 8, !tbaa !86
  %304 = icmp eq ptr %303, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %291
  %306 = icmp eq i64 %292, 0
  br i1 %306, label %342, label %311

307:                                              ; preds = %291
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #22
  call void @GetExceptionInfo(ptr noundef nonnull %6) #20
  %308 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %309 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6417, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %308) #20
  call void @CatchException(ptr noundef nonnull %6) #20
  %310 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #20
  call void @MagickWandTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

311:                                              ; preds = %305, %318
  %312 = phi i64 [ %327, %318 ], [ 0, %305 ]
  %313 = load ptr, ptr %4, align 8, !tbaa !15
  call void @GetMagickToken(ptr noundef %313, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %314 = load i8, ptr %3, align 16, !tbaa !51
  %315 = icmp eq i8 %314, 44
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = load ptr, ptr %4, align 8, !tbaa !15
  call void @GetMagickToken(ptr noundef %317, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  br label %318

318:                                              ; preds = %316, %311
  %319 = call fastcc double @StringToDouble(ptr noundef nonnull %3) #27
  %320 = load ptr, ptr %14, align 8, !tbaa !14
  %321 = load i64, ptr %16, align 8, !tbaa !13
  %322 = getelementptr inbounds ptr, ptr %320, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !15
  %324 = getelementptr inbounds %struct._DrawInfo, ptr %323, i64 0, i32 36
  %325 = load ptr, ptr %324, align 8, !tbaa !86
  %326 = getelementptr inbounds double, ptr %325, i64 %312
  store double %319, ptr %326, align 8, !tbaa !44
  %327 = add nuw i64 %312, 1
  %328 = icmp eq i64 %327, %292
  br i1 %328, label %329, label %311, !llvm.loop !140

329:                                              ; preds = %318
  %330 = and i64 %292, 1
  %331 = icmp ne i64 %330, 0
  %332 = icmp slt i64 %292, %293
  %333 = and i1 %331, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %329, %334
  %335 = phi i64 [ %340, %334 ], [ %292, %329 ]
  %336 = sub nuw nsw i64 %335, %292
  %337 = getelementptr inbounds double, ptr %325, i64 %336
  %338 = load double, ptr %337, align 8, !tbaa !44
  %339 = getelementptr inbounds double, ptr %325, i64 %335
  store double %338, ptr %339, align 8, !tbaa !44
  %340 = add nuw nsw i64 %335, 1
  %341 = icmp eq i64 %340, %293
  br i1 %341, label %342, label %334, !llvm.loop !141

342:                                              ; preds = %334, %305, %329
  %343 = phi ptr [ %325, %329 ], [ %303, %305 ], [ %325, %334 ]
  %344 = phi i64 [ %292, %329 ], [ 0, %305 ], [ %293, %334 ]
  %345 = getelementptr inbounds double, ptr %343, i64 %344
  store double 0.000000e+00, ptr %345, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %346

346:                                              ; preds = %269, %342, %251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  br label %347

347:                                              ; preds = %346, %248
  %348 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.43) #20
  %349 = icmp eq ptr %348, null
  br i1 %349, label %360, label %350

350:                                              ; preds = %347
  %351 = call ptr @GetXMLTreeContent(ptr noundef nonnull %348) #20
  %352 = icmp eq ptr %351, null
  br i1 %352, label %360, label %353

353:                                              ; preds = %350
  %354 = call fastcc double @StringToDouble(ptr noundef nonnull %351) #27
  %355 = load ptr, ptr %14, align 8, !tbaa !14
  %356 = load i64, ptr %16, align 8, !tbaa !13
  %357 = getelementptr inbounds ptr, ptr %355, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !15
  %359 = getelementptr inbounds %struct._DrawInfo, ptr %358, i64 0, i32 18
  store double %354, ptr %359, align 8, !tbaa !89
  br label %360

360:                                              ; preds = %350, %353, %347
  %361 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.44) #20
  %362 = icmp eq ptr %361, null
  br i1 %362, label %374, label %363

363:                                              ; preds = %360
  %364 = call ptr @GetXMLTreeContent(ptr noundef nonnull %361) #20
  %365 = icmp eq ptr %364, null
  br i1 %365, label %374, label %366

366:                                              ; preds = %363
  %367 = call i64 @ParseCommandOption(i32 noundef 36, i32 noundef 0, ptr noundef nonnull %364) #20
  %368 = trunc i64 %367 to i32
  %369 = load ptr, ptr %14, align 8, !tbaa !14
  %370 = load i64, ptr %16, align 8, !tbaa !13
  %371 = getelementptr inbounds ptr, ptr %369, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !15
  %373 = getelementptr inbounds %struct._DrawInfo, ptr %372, i64 0, i32 15
  store i32 %368, ptr %373, align 4, !tbaa !90
  br label %374

374:                                              ; preds = %363, %366, %360
  %375 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.45) #20
  %376 = icmp eq ptr %375, null
  br i1 %376, label %388, label %377

377:                                              ; preds = %374
  %378 = call ptr @GetXMLTreeContent(ptr noundef nonnull %375) #20
  %379 = icmp eq ptr %378, null
  br i1 %379, label %388, label %380

380:                                              ; preds = %377
  %381 = call i64 @ParseCommandOption(i32 noundef 37, i32 noundef 0, ptr noundef nonnull %378) #20
  %382 = trunc i64 %381 to i32
  %383 = load ptr, ptr %14, align 8, !tbaa !14
  %384 = load i64, ptr %16, align 8, !tbaa !13
  %385 = getelementptr inbounds ptr, ptr %383, i64 %384
  %386 = load ptr, ptr %385, align 8, !tbaa !15
  %387 = getelementptr inbounds %struct._DrawInfo, ptr %386, i64 0, i32 16
  store i32 %382, ptr %387, align 8, !tbaa !91
  br label %388

388:                                              ; preds = %377, %380, %374
  %389 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.46) #20
  %390 = icmp eq ptr %389, null
  br i1 %390, label %401, label %391

391:                                              ; preds = %388
  %392 = call ptr @GetXMLTreeContent(ptr noundef nonnull %389) #20
  %393 = icmp eq ptr %392, null
  br i1 %393, label %401, label %394

394:                                              ; preds = %391
  %395 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %392) #27
  %396 = load ptr, ptr %14, align 8, !tbaa !14
  %397 = load i64, ptr %16, align 8, !tbaa !13
  %398 = getelementptr inbounds ptr, ptr %396, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !15
  %400 = getelementptr inbounds %struct._DrawInfo, ptr %399, i64 0, i32 17
  store i64 %395, ptr %400, align 8, !tbaa !92
  br label %401

401:                                              ; preds = %391, %394, %388
  %402 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.47) #20
  %403 = icmp eq ptr %402, null
  br i1 %403, label %418, label %404

404:                                              ; preds = %401
  %405 = call ptr @GetXMLTreeContent(ptr noundef nonnull %402) #20
  %406 = icmp eq ptr %405, null
  br i1 %406, label %418, label %407

407:                                              ; preds = %404
  %408 = call fastcc double @StringToDouble(ptr noundef nonnull %405) #27
  %409 = fsub double 1.000000e+00, %408
  %410 = fmul double %409, 6.553500e+04
  %411 = fptrunc double %410 to float
  %412 = call fastcc zeroext i16 @ClampToQuantum(float noundef %411) #27
  %413 = load ptr, ptr %14, align 8, !tbaa !14
  %414 = load i64, ptr %16, align 8, !tbaa !13
  %415 = getelementptr inbounds ptr, ptr %413, i64 %414
  %416 = load ptr, ptr %415, align 8, !tbaa !15
  %417 = getelementptr inbounds %struct._DrawInfo, ptr %416, i64 0, i32 6, i32 3
  store i16 %412, ptr %417, align 2, !tbaa !93
  br label %418

418:                                              ; preds = %404, %407, %401
  %419 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.48) #20
  %420 = icmp eq ptr %419, null
  br i1 %420, label %431, label %421

421:                                              ; preds = %418
  %422 = call ptr @GetXMLTreeContent(ptr noundef nonnull %419) #20
  %423 = icmp eq ptr %422, null
  br i1 %423, label %431, label %424

424:                                              ; preds = %421
  %425 = call fastcc double @StringToDouble(ptr noundef nonnull %422) #27
  %426 = load ptr, ptr %14, align 8, !tbaa !14
  %427 = load i64, ptr %16, align 8, !tbaa !13
  %428 = getelementptr inbounds ptr, ptr %426, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !15
  %430 = getelementptr inbounds %struct._DrawInfo, ptr %429, i64 0, i32 7
  store double %425, ptr %430, align 8, !tbaa !94
  br label %431

431:                                              ; preds = %421, %424, %418
  %432 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.49) #20
  %433 = icmp eq ptr %432, null
  br i1 %433, label %445, label %434

434:                                              ; preds = %431
  %435 = call ptr @GetXMLTreeContent(ptr noundef nonnull %432) #20
  %436 = icmp eq ptr %435, null
  br i1 %436, label %445, label %437

437:                                              ; preds = %434
  %438 = call i64 @ParseCommandOption(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %435) #20
  %439 = trunc i64 %438 to i32
  %440 = load ptr, ptr %14, align 8, !tbaa !14
  %441 = load i64, ptr %16, align 8, !tbaa !13
  %442 = getelementptr inbounds ptr, ptr %440, i64 %441
  %443 = load ptr, ptr %442, align 8, !tbaa !15
  %444 = getelementptr inbounds %struct._DrawInfo, ptr %443, i64 0, i32 32
  store i32 %439, ptr %444, align 8, !tbaa !95
  br label %445

445:                                              ; preds = %434, %437, %431
  %446 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.50) #20
  %447 = icmp eq ptr %446, null
  br i1 %447, label %460, label %448

448:                                              ; preds = %445
  %449 = call ptr @GetXMLTreeContent(ptr noundef nonnull %446) #20
  %450 = icmp eq ptr %449, null
  br i1 %450, label %460, label %451

451:                                              ; preds = %448
  %452 = call fastcc i64 @StringToLong(ptr noundef nonnull %449) #27
  %453 = icmp ne i64 %452, 0
  %454 = zext i1 %453 to i32
  %455 = load ptr, ptr %14, align 8, !tbaa !14
  %456 = load i64, ptr %16, align 8, !tbaa !13
  %457 = getelementptr inbounds ptr, ptr %455, i64 %456
  %458 = load ptr, ptr %457, align 8, !tbaa !15
  %459 = getelementptr inbounds %struct._DrawInfo, ptr %458, i64 0, i32 13
  store i32 %454, ptr %459, align 4, !tbaa !96
  br label %460

460:                                              ; preds = %448, %451, %445
  %461 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.51) #20
  %462 = icmp eq ptr %461, null
  br i1 %462, label %474, label %463

463:                                              ; preds = %460
  %464 = call ptr @GetXMLTreeContent(ptr noundef nonnull %461) #20
  %465 = icmp eq ptr %464, null
  br i1 %465, label %474, label %466

466:                                              ; preds = %463
  %467 = load ptr, ptr %14, align 8, !tbaa !14
  %468 = load i64, ptr %16, align 8, !tbaa !13
  %469 = getelementptr inbounds ptr, ptr %467, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !15
  %471 = getelementptr inbounds %struct._DrawInfo, ptr %470, i64 0, i32 33
  %472 = load ptr, ptr %30, align 8, !tbaa !22
  %473 = call i32 @QueryColorDatabase(ptr noundef nonnull %464, ptr noundef nonnull %471, ptr noundef %472) #20
  br label %474

474:                                              ; preds = %463, %466, %460
  %475 = call ptr @GetXMLTreeChild(ptr noundef %32, ptr noundef nonnull @.str.52) #20
  %476 = icmp eq ptr %475, null
  br i1 %476, label %486, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %479 = call ptr @GetXMLTreeContent(ptr noundef nonnull %475) #20
  %480 = call ptr @CloneString(ptr noundef nonnull %478, ptr noundef %479) #20
  %481 = load ptr, ptr %478, align 8, !tbaa !19
  %482 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %481) #25
  %483 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 6
  store i64 %482, ptr %483, align 8, !tbaa !26
  %484 = add i64 %482, 1
  %485 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 5
  store i64 %484, ptr %485, align 8, !tbaa !27
  br label %486

486:                                              ; preds = %477, %474
  %487 = call ptr @DestroyXMLTree(ptr noundef %32) #20
  br label %488

488:                                              ; preds = %29, %13, %486
  %489 = phi i32 [ 1, %486 ], [ 0, %13 ], [ 0, %29 ]
  ret i32 %489
}

; Function Attrs: optsize
declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #20
  ret double %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #20
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #20
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i32 @IsPoint(ptr noundef %0) unnamed_addr #13 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = call i64 @strtol(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #20
  %4 = load ptr, ptr %2, align 8, !tbaa !15
  %5 = icmp ne ptr %4, %0
  %6 = zext i1 %5 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret i32 %6
}

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSkewX(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6544, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.116, double noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSkewY(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6578, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #20
  br label %9

9:                                                ; preds = %6, %2
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.117, double noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawTranslate(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6616, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #20
  br label %10

10:                                               ; preds = %7, %3
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.118, double noundef %1, double noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DrawSetViewbox(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6661, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #20
  br label %12

12:                                               ; preds = %9, %5
  %13 = sitofp i64 %1 to double
  %14 = sitofp i64 %2 to double
  %15 = sitofp i64 %3 to double
  %16 = sitofp i64 %4 to double
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.119, double noundef %13, double noundef %14, double noundef %15, double noundef %16) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 19
  %5 = load i64, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i64 %5, 2880220587
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.120, i64 noundef 11) #20
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PeekDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6801, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %14) #20
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %15, i64 0, i32 3
  tail call void @GetAffineMatrix(ptr noundef nonnull %16) #20
  %17 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = tail call ptr @CloneString(ptr noundef %15, ptr noundef %18) #20
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PopDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6838, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6841, i32 noundef 460, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #20
  br label %33

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = getelementptr inbounds ptr, ptr %19, i64 %10
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = tail call ptr @DestroyDrawInfo(ptr noundef %21) #20
  %23 = load ptr, ptr %18, align 8, !tbaa !14
  %24 = load i64, ptr %9, align 8, !tbaa !13
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %22, ptr %25, align 8, !tbaa !15
  %26 = add i64 %24, -1
  store i64 %26, ptr %9, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %28 = load i64, ptr %27, align 8, !tbaa !33
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %17
  %31 = add i64 %28, -1
  store i64 %31, ptr %27, align 8, !tbaa !33
  br label %32

32:                                               ; preds = %30, %17
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.124) #27
  br label %33

33:                                               ; preds = %32, %12
  %34 = phi i32 [ 0, %12 ], [ 1, %32 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PushDrawingWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6893, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 11
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = add i64 %10, 2
  %15 = tail call ptr @ResizeQuantumMemory(ptr noundef %13, i64 noundef %14, i64 noundef 8) #28
  store ptr %15, ptr %12, align 8, !tbaa !14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 1
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 6900, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #20
  br label %34

22:                                               ; preds = %8
  %23 = load i64, ptr %9, align 8, !tbaa !13
  %24 = getelementptr ptr, ptr %15, i64 %23
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %26) #20
  %28 = load ptr, ptr %12, align 8, !tbaa !14
  %29 = load i64, ptr %9, align 8, !tbaa !13
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %27, ptr %30, align 8, !tbaa !15
  tail call void (ptr, ptr, ...) @MvgPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.125) #27
  %31 = getelementptr inbounds %struct._DrawingWand, ptr %0, i64 0, i32 14
  %32 = load i64, ptr %31, align 8, !tbaa !33
  %33 = add i64 %32, 1
  store i64 %33, ptr %31, align 8, !tbaa !33
  br label %34

34:                                               ; preds = %22, %17
  %35 = phi i32 [ 0, %17 ], [ 1, %22 ]
  ret i32 %35
}

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize willreturn memory(none) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind optsize allocsize(0,1) }
attributes #27 = { optsize }
attributes #28 = { nounwind optsize allocsize(1,2) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 4244}
!6 = !{!"_DrawingWand", !7, i64 0, !8, i64 8, !10, i64 4104, !10, i64 4112, !10, i64 4120, !7, i64 4128, !7, i64 4136, !7, i64 4144, !10, i64 4152, !11, i64 4160, !7, i64 4192, !7, i64 4200, !10, i64 4208, !12, i64 4216, !7, i64 4224, !12, i64 4232, !12, i64 4236, !12, i64 4240, !12, i64 4244, !7, i64 4248}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"_RectangleInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"int", !8, i64 0}
!13 = !{!6, !7, i64 4200}
!14 = !{!6, !10, i64 4208}
!15 = !{!10, !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!6, !10, i64 4152}
!19 = !{!6, !10, i64 4120}
!20 = !{!6, !12, i64 4240}
!21 = !{!6, !10, i64 4104}
!22 = !{!6, !10, i64 4112}
!23 = !{!6, !12, i64 4216}
!24 = !{!12, !12, i64 0}
!25 = !{!6, !7, i64 0}
!26 = !{!6, !7, i64 4136}
!27 = !{!6, !7, i64 4128}
!28 = !{!6, !7, i64 4144}
!29 = !{!6, !7, i64 4192}
!30 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 8, !31, i64 24, i64 8, !31}
!31 = !{!7, !7, i64 0}
!32 = distinct !{!32, !17}
!33 = !{!6, !7, i64 4224}
!34 = !{!6, !7, i64 4248}
!35 = distinct !{!35, !17}
!36 = !{!37, !38, i64 0}
!37 = !{!"_AffineMatrix", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40}
!38 = !{!"double", !8, i64 0}
!39 = !{!37, !38, i64 8}
!40 = !{!37, !38, i64 16}
!41 = !{!37, !38, i64 24}
!42 = !{!37, !38, i64 32}
!43 = !{!37, !38, i64 40}
!44 = !{!38, !38, i64 0}
!45 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !44}
!46 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44}
!47 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44}
!48 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44}
!49 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!50 = !{i64 0, i64 8, !44}
!51 = !{!8, !8, i64 0}
!52 = distinct !{!52, !17}
!53 = !{!54, !38, i64 0}
!54 = !{!"_PointInfo", !38, i64 0, !38, i64 8}
!55 = !{!54, !38, i64 8}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = !{!59, !10, i64 448}
!59 = !{!"_DrawInfo", !10, i64 0, !10, i64 8, !11, i64 16, !37, i64 48, !12, i64 96, !60, i64 100, !60, i64 108, !38, i64 120, !62, i64 128, !10, i64 256, !10, i64 264, !10, i64 272, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !7, i64 304, !38, i64 312, !12, i64 320, !12, i64 324, !10, i64 328, !7, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !12, i64 368, !12, i64 372, !7, i64 376, !10, i64 384, !38, i64 392, !10, i64 400, !12, i64 408, !60, i64 412, !60, i64 420, !10, i64 432, !10, i64 440, !10, i64 448, !63, i64 456, !12, i64 488, !61, i64 492, !12, i64 496, !65, i64 504, !12, i64 672, !7, i64 680, !38, i64 688, !38, i64 696, !38, i64 704, !12, i64 712}
!60 = !{!"_PixelPacket", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6}
!61 = !{!"short", !8, i64 0}
!62 = !{!"_GradientInfo", !12, i64 0, !11, i64 8, !63, i64 40, !10, i64 72, !7, i64 80, !12, i64 88, !12, i64 92, !7, i64 96, !54, i64 104, !64, i64 120}
!63 = !{!"_SegmentInfo", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!64 = !{!"float", !8, i64 0}
!65 = !{!"_ElementReference", !10, i64 0, !12, i64 8, !62, i64 16, !7, i64 144, !10, i64 152, !10, i64 160}
!66 = !{!59, !12, i64 288}
!67 = !{!59, !12, i64 488}
!68 = !{!69, !12, i64 0}
!69 = !{!"_ExceptionInfo", !12, i64 0, !12, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !10, i64 40, !7, i64 48}
!70 = !{!69, !10, i64 8}
!71 = !{!69, !10, i64 16}
!72 = !{!59, !61, i64 106}
!73 = !{!59, !10, i64 344}
!74 = !{!59, !10, i64 360}
!75 = !{!59, !10, i64 400}
!76 = !{!77, !38, i64 0}
!77 = !{!"_GeometryInfo", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32}
!78 = !{!77, !38, i64 8}
!79 = !{!59, !38, i64 392}
!80 = !{!59, !12, i64 372}
!81 = !{!59, !12, i64 368}
!82 = !{!59, !7, i64 376}
!83 = !{!59, !12, i64 96}
!84 = !{!59, !61, i64 492}
!85 = !{!59, !12, i64 280}
!86 = !{!59, !10, i64 440}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = !{!59, !38, i64 312}
!90 = !{!59, !12, i64 292}
!91 = !{!59, !12, i64 296}
!92 = !{!59, !7, i64 304}
!93 = !{!59, !61, i64 114}
!94 = !{!59, !38, i64 120}
!95 = !{!59, !12, i64 408}
!96 = !{!59, !12, i64 284}
!97 = !{!59, !12, i64 320}
!98 = !{!59, !12, i64 712}
!99 = !{!59, !10, i64 384}
!100 = !{!59, !38, i64 688}
!101 = !{!59, !38, i64 704}
!102 = !{!59, !38, i64 696}
!103 = !{!104, !12, i64 8}
!104 = !{!"_MagickPixelPacket", !12, i64 0, !12, i64 4, !12, i64 8, !38, i64 16, !7, i64 24, !64, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !64, i64 48}
!105 = distinct !{!105, !17}
!106 = !{!59, !61, i64 418}
!107 = !{!61, !61, i64 0}
!108 = !{!64, !64, i64 0}
!109 = !{!60, !61, i64 0}
!110 = !{!104, !64, i64 40}
!111 = !{!112, !12, i64 32}
!112 = !{!"_Image", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !38, i64 104, !113, i64 112, !12, i64 208, !10, i64 216, !12, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !7, i64 256, !38, i64 264, !38, i64 272, !11, i64 280, !11, i64 312, !11, i64 344, !38, i64 376, !38, i64 384, !38, i64 392, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !12, i64 420, !10, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !115, i64 480, !116, i64 504, !10, i64 568, !10, i64 576, !10, i64 584, !10, i64 592, !10, i64 600, !10, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !7, i64 12904, !7, i64 12912, !69, i64 12920, !12, i64 12976, !7, i64 12984, !10, i64 12992, !118, i64 13000, !118, i64 13032, !10, i64 13064, !7, i64 13072, !7, i64 13080, !10, i64 13088, !10, i64 13096, !10, i64 13104, !12, i64 13112, !12, i64 13116, !60, i64 13120, !10, i64 13128, !11, i64 13136, !10, i64 13168, !10, i64 13176, !12, i64 13184, !12, i64 13188, !119, i64 13192, !12, i64 13200, !7, i64 13208, !7, i64 13216, !12, i64 13224, !7, i64 13232}
!113 = !{!"_ChromaticityInfo", !114, i64 0, !114, i64 24, !114, i64 48, !114, i64 72}
!114 = !{!"_PrimaryInfo", !38, i64 0, !38, i64 8, !38, i64 16}
!115 = !{!"_ErrorInfo", !38, i64 0, !38, i64 8, !38, i64 16}
!116 = !{!"_TimerInfo", !117, i64 0, !117, i64 24, !12, i64 48, !7, i64 56}
!117 = !{!"_Timer", !38, i64 0, !38, i64 8, !38, i64 16}
!118 = !{!"_ProfileInfo", !10, i64 0, !7, i64 8, !10, i64 16, !7, i64 24}
!119 = !{!"long long", !8, i64 0}
!120 = !{!60, !61, i64 6}
!121 = !{!104, !64, i64 44}
!122 = !{!6, !12, i64 4236}
!123 = !{!6, !12, i64 4232}
!124 = !{!6, !7, i64 4160}
!125 = !{!6, !7, i64 4168}
!126 = !{!6, !7, i64 4176}
!127 = !{!6, !7, i64 4184}
!128 = !{!59, !10, i64 0}
!129 = !{i32 0, i32 2}
!130 = !{!60, !61, i64 4}
!131 = !{!60, !61, i64 2}
!132 = !{!104, !12, i64 4}
!133 = !{!59, !38, i64 472}
!134 = !{!59, !38, i64 480}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
