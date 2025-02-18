; ModuleID = 'magick/draw.c'
source_filename = "magick/draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._PointInfo = type { double, double }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._SegmentInfo = type { double, double, double, double }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._PrimitiveInfo = type { %struct._PointInfo, i64, i32, i32, ptr }
%struct._StopInfo = type { %struct._MagickPixelPacket, float }
%struct._PathInfo = type { %struct._PointInfo, i32 }
%struct._EdgeInfo = type { %struct._SegmentInfo, double, ptr, i64, i64, i32, i64 }
%struct._PolygonInfo = type { ptr, i64 }

@.str = private unnamed_addr constant [14 x i8] c"magick/draw.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"UnableToAllocateDashPattern\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"#00000000\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\0Abegin clip-path %s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"#ffffff\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"end clip-path\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"begin draw-image\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"MVG\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"#000000\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"affine\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"bezier\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"border-color\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"clip-path\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"clip-rule\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"clip-units\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"decorate\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ellipse\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"fill-opacity\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"fill-rule\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"font-family\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"font-stretch\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"font-style\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"font-weight\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"bolder\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"lighter\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"gradient-units\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"interline-spacing\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"interword-spacing\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"kerning\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"matte\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"polyline\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"polygon\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"defs\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"gradient\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"graphic-context\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"UnbalancedGraphicContextPushPop\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"radial\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"%s-geometry\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"%gx%g%+.15g%+.15g\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"rectangle\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"roundRectangle\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"skewX\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"skewY\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"stop-color\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"stroke-antialias\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"stroke-dasharray\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"stroke-dashoffset\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"stroke-linecap\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"stroke-linejoin\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"stroke-miterlimit\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"stroke-opacity\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"stroke-width\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"text-align\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"text-anchor\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"text-antialias\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"text-undercolor\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"viewbox\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"  %.*s\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"TooManyBezierCoordinates\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Render/Image\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"end draw-image\00", align 1
@.str.94 = private unnamed_addr constant [40 x i8] c"NonconformingDrawingPrimitiveDefinition\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"begin pattern-path %s %s\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"end pattern-path\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"  begin draw-primitive\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"    affine: %g %g %g %g %g %g\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"%+f%+f\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"data:\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"%gx%g!\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"  end draw-primitive\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"#000F\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"#FFF0\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"strokewidth\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"undercolor\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"floodfill\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"filltoborder\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@__const.LogPrimitiveInfo.methods = private unnamed_addr constant [6 x ptr] [ptr @.str.53, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], align 16
@.str.113 = private unnamed_addr constant [30 x i8] c"PointPrimitive %.20g,%.20g %s\00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"ColorPrimitive %.20g,%.20g %s\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"MattePrimitive %.20g,%.20g %s\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"TextPrimitive %.20g,%.20g\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"ImagePrimitive %.20g,%.20g\00", align 1
@.str.118 = private unnamed_addr constant [23 x i8] c"    begin open (%.20g)\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"      %.20g: %.18g,%.18g\00", align 1
@.str.120 = private unnamed_addr constant [31 x i8] c"      %.20g: %g %g (duplicate)\00", align 1
@.str.121 = private unnamed_addr constant [21 x i8] c"    end last (%.20g)\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"    end open (%.20g)\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"    begin draw-polygon\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"    end draw-polygon\00", align 1
@.str.125 = private unnamed_addr constant [22 x i8] c"    begin vector-path\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"      %g %g %s\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"moveto ghostline\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"moveto open\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"moveto\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"lineto\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"    end vector-path\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"    begin active-edge\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"      edge %.20g:\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"      direction: %s\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.137 = private unnamed_addr constant [20 x i8] c"      ghostline: %s\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.140 = private unnamed_addr constant [28 x i8] c"      bounds: %g %g - %g %g\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"        %g %g\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"    end active-edge\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"    begin draw-dash\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"    end draw-dash\00", align 1
@.str.145 = private unnamed_addr constant [30 x i8] c"    begin draw-stroke-polygon\00", align 1
@.str.146 = private unnamed_addr constant [28 x i8] c"    end draw-stroke-polygon\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"CcSs\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"QqTt\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.149 = private unnamed_addr constant [30 x i8] c"attribute not recognized: %c\0A\00", align 1
@reltable.DrawPolygonPrimitive = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.129 to i64), i64 ptrtoint (ptr @reltable.DrawPolygonPrimitive to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.128 to i64), i64 ptrtoint (ptr @reltable.DrawPolygonPrimitive to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.127 to i64), i64 ptrtoint (ptr @reltable.DrawPolygonPrimitive to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireDrawInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(720) ptr @AcquireMagickMemory(i64 noundef 720) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #24
  call void @GetExceptionInfo(ptr noundef nonnull %1) #24
  %5 = tail call ptr @__errno_location() #25
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #24
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 213, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7) #24
  %9 = call ptr @DestroyString(ptr noundef %7) #24
  call void @CatchException(ptr noundef nonnull %1) #24
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

11:                                               ; preds = %0
  tail call void @GetDrawInfo(ptr noundef null, ptr noundef nonnull %2)
  ret ptr %2
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

; Function Attrs: nounwind uwtable
define dso_local void @GetDrawInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4825, ptr noundef nonnull @.str.5) #24
  %4 = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef 720) #24
  %5 = tail call ptr @CloneImageInfo(ptr noundef %0) #24
  %6 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4779, ptr noundef nonnull @.str.5) #24
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 48) #24
  store double 1.000000e+00, ptr %6, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  store double 1.000000e+00, ptr %9, align 8, !tbaa !41
  %10 = tail call ptr @AcquireExceptionInfo() #24
  %11 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %12 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.103, ptr noundef nonnull %11, ptr noundef %10) #24
  %13 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %14 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.104, ptr noundef nonnull %13, ptr noundef %10) #24
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 12
  store i32 %16, ptr %17, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  store double 1.000000e+00, ptr %18, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 40
  store i16 0, ptr %19, align 4, !tbaa !57
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 14
  store i32 1, ptr %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 15
  store i32 1, ptr %21, align 4, !tbaa !59
  %22 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 16
  store i32 1, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 17
  store i64 10, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 19
  store i32 1, ptr %24, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = tail call ptr @AcquireString(ptr noundef nonnull %26) #24
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  store ptr %29, ptr %30, align 8, !tbaa !64
  br label %31

31:                                               ; preds = %28, %2
  %32 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 21
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @AcquireString(ptr noundef nonnull %33) #24
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 31
  store ptr %36, ptr %37, align 8, !tbaa !66
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, ptr %15, align 4, !tbaa !42
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 13
  store i32 %39, ptr %40, align 4, !tbaa !67
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  store double 1.200000e+01, ptr %41, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 22
  %43 = load double, ptr %42, align 8, !tbaa !69
  %44 = fcmp une double %43, 0.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store double %43, ptr %41, align 8, !tbaa !68
  br label %46

46:                                               ; preds = %45, %38
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33
  %48 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33, i32 3
  store i16 -1, ptr %48, align 2, !tbaa !70
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34
  %50 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 25
  %51 = load i64, ptr %50, align 8
  store i64 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 20
  store i32 40, ptr %52, align 4, !tbaa !71
  %53 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 18
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = tail call ptr @AcquireString(ptr noundef nonnull %54) #24
  %58 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 35
  store ptr %57, ptr %58, align 8, !tbaa !73
  br label %59

59:                                               ; preds = %56, %46
  %60 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 41
  store i32 1, ptr %60, align 8, !tbaa !74
  %61 = tail call i32 @IsEventLogging() #24
  %62 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 43
  store i32 %61, ptr %62, align 8, !tbaa !75
  %63 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.26) #24
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 29
  %67 = tail call ptr @CloneString(ptr noundef nonnull %66, ptr noundef nonnull %63) #24
  br label %68

68:                                               ; preds = %65, %59
  %69 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.47) #24
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = tail call double @InterpretLocaleValue(ptr noundef nonnull %69, ptr noundef null) #24
  %73 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 45
  store double %72, ptr %73, align 8, !tbaa !76
  br label %74

74:                                               ; preds = %71, %68
  %75 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.45) #24
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = tail call double @InterpretLocaleValue(ptr noundef nonnull %75, ptr noundef null) #24
  %79 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 47
  store double %78, ptr %79, align 8, !tbaa !77
  br label %80

80:                                               ; preds = %77, %74
  %81 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 48
  store i32 0, ptr %81, align 8, !tbaa !78
  %82 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.46) #24
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = tail call double @InterpretLocaleValue(ptr noundef nonnull %82, ptr noundef null) #24
  %86 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 46
  store double %85, ptr %86, align 8, !tbaa !79
  br label %87

87:                                               ; preds = %84, %80
  %88 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.24) #24
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = tail call i64 @ParseCommandOption(i32 noundef 18, i32 noundef 0, ptr noundef nonnull %88) #24
  %92 = trunc i64 %91 to i32
  store i32 %92, ptr %81, align 8, !tbaa !78
  br label %93

93:                                               ; preds = %90, %87
  %94 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.27) #24
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %94, ptr noundef nonnull %11, ptr noundef %10) #24
  br label %98

98:                                               ; preds = %96, %93
  %99 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.74) #24
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %99, ptr noundef nonnull %13, ptr noundef %10) #24
  br label %103

103:                                              ; preds = %101, %98
  %104 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.105) #24
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = tail call double @InterpretLocaleValue(ptr noundef nonnull %104, ptr noundef null) #24
  store double %107, ptr %18, align 8, !tbaa !56
  br label %108

108:                                              ; preds = %106, %103
  %109 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.106) #24
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %109, ptr noundef nonnull %47, ptr noundef %10) #24
  br label %113

113:                                              ; preds = %111, %108
  %114 = tail call ptr @GetImageOption(ptr noundef %5, ptr noundef nonnull @.str.43) #24
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = tail call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %114) #24
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 4
  store i32 %118, ptr %119, align 8, !tbaa !80
  br label %120

120:                                              ; preds = %116, %113
  %121 = tail call ptr @DestroyExceptionInfo(ptr noundef %10) #24
  %122 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 44
  store i64 2880220587, ptr %122, align 8, !tbaa !81
  %123 = tail call ptr @DestroyImageInfo(ptr noundef %5) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneDrawInfo(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = tail call dereferenceable_or_null(720) ptr @AcquireMagickMemory(i64 noundef 720) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #24
  call void @GetExceptionInfo(ptr noundef nonnull %3) #24
  %9 = tail call ptr @__errno_location() #25
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #24
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 254, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #24
  %13 = call ptr @DestroyString(ptr noundef %11) #24
  call void @CatchException(ptr noundef nonnull %3) #24
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

15:                                               ; preds = %2
  tail call void @GetDrawInfo(ptr noundef %0, ptr noundef %6)
  %16 = icmp eq ptr %1, null
  br i1 %16, label %250, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %6, align 8, !tbaa !82
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %1, align 8, !tbaa !82
  %22 = tail call ptr @CloneString(ptr noundef nonnull %6, ptr noundef %21) #24
  br label %23

23:                                               ; preds = %20, %17
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 1
  %29 = tail call ptr @CloneString(ptr noundef nonnull %28, ptr noundef nonnull %25) #24
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 2
  %32 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %32, i64 32, i1 false), !tbaa.struct !84
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 3
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull align 8 dereferenceable(48) %34, i64 48, i1 false), !tbaa.struct !86
  %35 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !80
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 4
  store i32 %36, ptr %37, align 8, !tbaa !80
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 5
  %39 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %40 = load i64, ptr %39, align 4
  store i64 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 6
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %43 = load i64, ptr %42, align 4
  store i64 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %45 = load double, ptr %44, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 7
  store double %45, ptr %46, align 8, !tbaa !56
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !89
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %30
  %55 = phi ptr [ %48, %30 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 58
  %57 = tail call ptr @CloneImage(ptr noundef nonnull %55, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %56) #24
  %58 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 9
  store ptr %57, ptr %58, align 8, !tbaa !88
  br label %59

59:                                               ; preds = %54, %50
  %60 = tail call ptr @NewImageList() #24
  %61 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 10
  store ptr %60, ptr %61, align 8, !tbaa !89
  %62 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 11
  %63 = load ptr, ptr %62, align 8, !tbaa !90
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 58
  %67 = tail call ptr @CloneImage(ptr noundef nonnull %63, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %66) #24
  %68 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 11
  store ptr %67, ptr %68, align 8, !tbaa !90
  br label %69

69:                                               ; preds = %65, %59
  %70 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 12
  %71 = load i32, ptr %70, align 8, !tbaa !48
  %72 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 12
  store i32 %71, ptr %72, align 8, !tbaa !48
  %73 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 13
  %74 = load i32, ptr %73, align 4, !tbaa !67
  %75 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 13
  store i32 %74, ptr %75, align 4, !tbaa !67
  %76 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 14
  %77 = load i32, ptr %76, align 8, !tbaa !58
  %78 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 14
  store i32 %77, ptr %78, align 8, !tbaa !58
  %79 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 15
  %80 = load i32, ptr %79, align 4, !tbaa !59
  %81 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 15
  store i32 %80, ptr %81, align 4, !tbaa !59
  %82 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 16
  %83 = load i32, ptr %82, align 8, !tbaa !60
  %84 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 16
  store i32 %83, ptr %84, align 8, !tbaa !60
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 17
  %86 = load i64, ptr %85, align 8, !tbaa !61
  %87 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 17
  store i64 %86, ptr %87, align 8, !tbaa !61
  %88 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 18
  %89 = load double, ptr %88, align 8, !tbaa !91
  %90 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 18
  store double %89, ptr %90, align 8, !tbaa !91
  %91 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 19
  %92 = load i32, ptr %91, align 8, !tbaa !62
  %93 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 19
  store i32 %92, ptr %93, align 8, !tbaa !62
  %94 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 20
  %95 = load i32, ptr %94, align 4, !tbaa !71
  %96 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 20
  store i32 %95, ptr %96, align 4, !tbaa !71
  %97 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %98 = load ptr, ptr %97, align 8, !tbaa !92
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %69
  %101 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 21
  %102 = tail call ptr @CloneString(ptr noundef nonnull %101, ptr noundef nonnull %98) #24
  br label %103

103:                                              ; preds = %100, %69
  %104 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 23
  %109 = tail call ptr @CloneString(ptr noundef nonnull %108, ptr noundef nonnull %105) #24
  br label %110

110:                                              ; preds = %107, %103
  %111 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 24
  %112 = load ptr, ptr %111, align 8, !tbaa !93
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 24
  %116 = tail call ptr @CloneString(ptr noundef nonnull %115, ptr noundef nonnull %112) #24
  br label %117

117:                                              ; preds = %114, %110
  %118 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 25
  %119 = load ptr, ptr %118, align 8, !tbaa !94
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 25
  %123 = tail call ptr @CloneString(ptr noundef nonnull %122, ptr noundef nonnull %119) #24
  br label %124

124:                                              ; preds = %121, %117
  %125 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %126 = load i32, ptr %125, align 8, !tbaa !95
  %127 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 26
  store i32 %126, ptr %127, align 8, !tbaa !95
  %128 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %129 = load i32, ptr %128, align 4, !tbaa !96
  %130 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 27
  store i32 %129, ptr %130, align 4, !tbaa !96
  %131 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %132 = load i64, ptr %131, align 8, !tbaa !97
  %133 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 28
  store i64 %132, ptr %133, align 8, !tbaa !97
  %134 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 29
  %135 = load ptr, ptr %134, align 8, !tbaa !98
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 29
  %139 = tail call ptr @CloneString(ptr noundef nonnull %138, ptr noundef nonnull %135) #24
  br label %140

140:                                              ; preds = %137, %124
  %141 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  %142 = load double, ptr %141, align 8, !tbaa !68
  %143 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 30
  store double %142, ptr %143, align 8, !tbaa !68
  %144 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 45
  %145 = load double, ptr %144, align 8, !tbaa !76
  %146 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 45
  store double %145, ptr %146, align 8, !tbaa !76
  %147 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 47
  %148 = load double, ptr %147, align 8, !tbaa !77
  %149 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 47
  store double %148, ptr %149, align 8, !tbaa !77
  %150 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 46
  %151 = load double, ptr %150, align 8, !tbaa !79
  %152 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 46
  store double %151, ptr %152, align 8, !tbaa !79
  %153 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 48
  %154 = load i32, ptr %153, align 8, !tbaa !78
  %155 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 48
  store i32 %154, ptr %155, align 8, !tbaa !78
  %156 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 31
  %157 = load ptr, ptr %156, align 8, !tbaa !66
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %140
  %160 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 31
  %161 = tail call ptr @CloneString(ptr noundef nonnull %160, ptr noundef nonnull %157) #24
  br label %162

162:                                              ; preds = %159, %140
  %163 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 32
  %164 = load i32, ptr %163, align 8, !tbaa !99
  %165 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 32
  store i32 %164, ptr %165, align 8, !tbaa !99
  %166 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 33
  %167 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33
  %168 = load i64, ptr %167, align 4
  store i64 %168, ptr %166, align 4
  %169 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 34
  %170 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34
  %171 = load i64, ptr %170, align 4
  store i64 %171, ptr %169, align 4
  %172 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 35
  %173 = load ptr, ptr %172, align 8, !tbaa !73
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %162
  %176 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 35
  %177 = tail call ptr @CloneString(ptr noundef nonnull %176, ptr noundef nonnull %173) #24
  br label %178

178:                                              ; preds = %175, %162
  %179 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 36
  %180 = load ptr, ptr %179, align 8, !tbaa !100
  %181 = icmp eq ptr %180, null
  br i1 %181, label %204, label %182

182:                                              ; preds = %178, %182
  %183 = phi i64 [ %187, %182 ], [ 0, %178 ]
  %184 = getelementptr inbounds double, ptr %180, i64 %183
  %185 = load double, ptr %184, align 8, !tbaa !87
  %186 = fcmp une double %185, 0.000000e+00
  %187 = add nuw nsw i64 %183, 1
  br i1 %186, label %182, label %188, !llvm.loop !101

188:                                              ; preds = %182
  %189 = add nuw i64 %183, 1
  %190 = tail call ptr @AcquireQuantumMemory(i64 noundef %189, i64 noundef 8) #27
  %191 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 36
  store ptr %190, ptr %191, align 8, !tbaa !100
  %192 = icmp eq ptr %190, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #24
  call void @GetExceptionInfo(ptr noundef nonnull %4) #24
  %194 = tail call ptr @__errno_location() #25
  %195 = load i32, ptr %194, align 4, !tbaa !34
  %196 = call ptr @GetExceptionMessage(i32 noundef %195) #24
  %197 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 323, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %196) #24
  %198 = call ptr @DestroyString(ptr noundef %196) #24
  call void @CatchException(ptr noundef nonnull %4) #24
  %199 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

200:                                              ; preds = %188
  %201 = load ptr, ptr %179, align 8, !tbaa !100
  %202 = shl i64 %189, 3
  %203 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %190, ptr noundef %201, i64 noundef %202) #24
  br label %204

204:                                              ; preds = %200, %178
  %205 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 8
  %206 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %205, ptr noundef nonnull align 8 dereferenceable(128) %206, i64 128, i1 false), !tbaa.struct !104
  %207 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !107
  %209 = icmp eq ptr %208, null
  br i1 %209, label %227, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 8, i32 4
  %212 = load i64, ptr %211, align 8, !tbaa !108
  %213 = tail call ptr @AcquireQuantumMemory(i64 noundef %212, i64 noundef 64) #27
  %214 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 8, i32 3
  store ptr %213, ptr %214, align 8, !tbaa !107
  %215 = icmp eq ptr %213, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #24
  call void @GetExceptionInfo(ptr noundef nonnull %5) #24
  %217 = tail call ptr @__errno_location() #25
  %218 = load i32, ptr %217, align 4, !tbaa !34
  %219 = call ptr @GetExceptionMessage(i32 noundef %218) #24
  %220 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %219) #24
  %221 = call ptr @DestroyString(ptr noundef %219) #24
  call void @CatchException(ptr noundef nonnull %5) #24
  %222 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

223:                                              ; preds = %210
  %224 = load ptr, ptr %207, align 8, !tbaa !107
  %225 = shl i64 %212, 6
  %226 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %213, ptr noundef %224, i64 noundef %225) #24
  br label %227

227:                                              ; preds = %223, %204
  %228 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 37
  %229 = load ptr, ptr %228, align 8, !tbaa !109
  %230 = icmp eq ptr %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 37
  %233 = tail call ptr @CloneString(ptr noundef nonnull %232, ptr noundef nonnull %229) #24
  br label %234

234:                                              ; preds = %231, %227
  %235 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 38
  %236 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %235, ptr noundef nonnull align 8 dereferenceable(32) %236, i64 32, i1 false), !tbaa.struct !110
  %237 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 39
  %238 = load i32, ptr %237, align 8, !tbaa !111
  %239 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 39
  store i32 %238, ptr %239, align 8, !tbaa !111
  %240 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 41
  %241 = load i32, ptr %240, align 8, !tbaa !74
  %242 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 41
  store i32 %241, ptr %242, align 8, !tbaa !74
  %243 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 40
  %244 = load i16, ptr %243, align 4, !tbaa !57
  %245 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 40
  store i16 %244, ptr %245, align 4, !tbaa !57
  %246 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 42
  %247 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %246, ptr noundef nonnull align 8 dereferenceable(168) %247, i64 168, i1 false), !tbaa.struct !112
  %248 = tail call i32 @IsEventLogging() #24
  %249 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 43
  store i32 %248, ptr %249, align 8, !tbaa !75
  br label %250

250:                                              ; preds = %15, %234
  ret ptr %6
}

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @NewImageList() local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyDrawInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 43
  %3 = load i32, ptr %2, align 8, !tbaa !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 837, ptr noundef nonnull @.str.5) #24
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @DestroyString(ptr noundef nonnull %8) #24
  store ptr %11, ptr %0, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @DestroyString(ptr noundef nonnull %14) #24
  store ptr %17, ptr %13, align 8, !tbaa !92
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @DestroyString(ptr noundef nonnull %20) #24
  store ptr %23, ptr %19, align 8, !tbaa !83
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @DestroyImage(ptr noundef nonnull %26) #24
  store ptr %29, ptr %25, align 8, !tbaa !89
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %32) #24
  store ptr %35, ptr %31, align 8, !tbaa !88
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @DestroyImage(ptr noundef nonnull %38) #24
  store ptr %41, ptr %37, align 8, !tbaa !90
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 23
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @DestroyString(ptr noundef nonnull %44) #24
  store ptr %47, ptr %43, align 8, !tbaa !64
  br label %48

48:                                               ; preds = %46, %42
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 24
  %50 = load ptr, ptr %49, align 8, !tbaa !93
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @DestroyString(ptr noundef nonnull %50) #24
  store ptr %53, ptr %49, align 8, !tbaa !93
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 25
  %56 = load ptr, ptr %55, align 8, !tbaa !94
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call ptr @DestroyString(ptr noundef nonnull %56) #24
  store ptr %59, ptr %55, align 8, !tbaa !94
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 29
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @DestroyString(ptr noundef nonnull %62) #24
  store ptr %65, ptr %61, align 8, !tbaa !98
  br label %66

66:                                               ; preds = %64, %60
  %67 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 31
  %68 = load ptr, ptr %67, align 8, !tbaa !66
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @DestroyString(ptr noundef nonnull %68) #24
  store ptr %71, ptr %67, align 8, !tbaa !66
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 35
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %74) #24
  store ptr %77, ptr %73, align 8, !tbaa !73
  br label %78

78:                                               ; preds = %76, %72
  %79 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 36
  %80 = load ptr, ptr %79, align 8, !tbaa !100
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %80) #24
  store ptr %83, ptr %79, align 8, !tbaa !100
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 8, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !107
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %86) #24
  store ptr %89, ptr %85, align 8, !tbaa !107
  br label %90

90:                                               ; preds = %88, %84
  %91 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 37
  %92 = load ptr, ptr %91, align 8, !tbaa !109
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = tail call ptr @DestroyString(ptr noundef nonnull %92) #24
  store ptr %95, ptr %91, align 8, !tbaa !109
  br label %96

96:                                               ; preds = %94, %90
  %97 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 44
  store i64 -2880220588, ptr %97, align 8, !tbaa !81
  %98 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #24
  ret ptr %98
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawAffineImage(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca [4 x %struct._PointInfo], align 16
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !113
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1151, ptr noundef nonnull @.str.6, ptr noundef nonnull %11) #24
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %16 = load i64, ptr %15, align 8, !tbaa !123
  %17 = uitofp i64 %16 to double
  %18 = fadd double %17, -1.000000e+00
  %19 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 1
  store double %18, ptr %19, align 16, !tbaa !124
  %20 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 1, i32 1
  store double 0.000000e+00, ptr %20, align 8, !tbaa !125
  %21 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 2
  store double %18, ptr %21, align 16, !tbaa !124
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !126
  %24 = uitofp i64 %23 to double
  %25 = fadd double %24, -1.000000e+00
  %26 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 2, i32 1
  store double %25, ptr %26, align 8, !tbaa !125
  %27 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 3
  store double 0.000000e+00, ptr %27, align 16, !tbaa !124
  %28 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 3, i32 1
  store double %25, ptr %28, align 8, !tbaa !125
  %29 = load double, ptr %2, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 2
  %31 = load double, ptr %30, align 8, !tbaa !127
  %32 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 4
  %33 = load double, ptr %32, align 8, !tbaa !128
  %34 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 1
  %35 = load double, ptr %34, align 8, !tbaa !129
  %36 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 3
  %37 = load double, ptr %36, align 8, !tbaa !41
  %38 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 5
  %39 = load double, ptr %38, align 8, !tbaa !130
  br label %40

40:                                               ; preds = %13, %40
  %41 = phi i64 [ 0, %13 ], [ %52, %40 ]
  %42 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %41
  %43 = load double, ptr %42, align 16, !tbaa.struct !131
  %44 = getelementptr inbounds i8, ptr %42, i64 8
  %45 = load double, ptr %44, align 8, !tbaa.struct !132
  %46 = fmul double %45, %31
  %47 = tail call double @llvm.fmuladd.f64(double %43, double %29, double %46)
  %48 = fadd double %33, %47
  store double %48, ptr %42, align 16, !tbaa !124
  %49 = fmul double %45, %37
  %50 = tail call double @llvm.fmuladd.f64(double %43, double %35, double %49)
  %51 = fadd double %39, %50
  store double %51, ptr %44, align 8, !tbaa !125
  %52 = add nuw nsw i64 %41, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %40, !llvm.loop !133

54:                                               ; preds = %40
  %55 = load double, ptr %5, align 16
  %56 = load double, ptr %14, align 8
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi double [ %56, %54 ], [ %70, %57 ]
  %59 = phi double [ %55, %54 ], [ %66, %57 ]
  %60 = phi double [ %56, %54 ], [ %74, %57 ]
  %61 = phi double [ %55, %54 ], [ %72, %57 ]
  %62 = phi i64 [ 1, %54 ], [ %75, %57 ]
  %63 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %62
  %64 = load double, ptr %63, align 16, !tbaa !124
  %65 = fcmp ogt double %59, %64
  %66 = select i1 %65, double %64, double %59
  %67 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %62, i32 1
  %68 = load double, ptr %67, align 8, !tbaa !125
  %69 = fcmp ogt double %58, %68
  %70 = select i1 %69, double %68, double %58
  %71 = fcmp olt double %61, %64
  %72 = select i1 %71, double %64, double %61
  %73 = fcmp olt double %60, %68
  %74 = select i1 %73, double %68, double %60
  %75 = add nuw nsw i64 %62, 1
  %76 = icmp eq i64 %75, 4
  br i1 %76, label %77, label %57, !llvm.loop !134

77:                                               ; preds = %57
  %78 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %424, label %80

80:                                               ; preds = %77
  %81 = fcmp ogt double %66, 0.000000e+00
  %82 = select i1 %81, double %66, double 0.000000e+00
  %83 = fcmp ogt double %70, 0.000000e+00
  %84 = select i1 %83, double %70, double 0.000000e+00
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %86 = load i64, ptr %85, align 8, !tbaa !123
  %87 = uitofp i64 %86 to double
  %88 = fadd double %87, -1.000000e+00
  %89 = fcmp olt double %72, %88
  %90 = select i1 %89, double %72, double %88
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %92 = load i64, ptr %91, align 8, !tbaa !126
  %93 = uitofp i64 %92 to double
  %94 = fadd double %93, -1.000000e+00
  %95 = fcmp olt double %74, %94
  %96 = select i1 %95, double %74, double %94
  %97 = load double, ptr %2, align 8, !tbaa !38, !noalias !135
  %98 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 3
  %99 = load double, ptr %98, align 8, !tbaa !41, !noalias !135
  %100 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 1
  %101 = load double, ptr %100, align 8, !tbaa !129, !noalias !135
  %102 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 2
  %103 = load double, ptr %102, align 8, !tbaa !127, !noalias !135
  %104 = fneg double %101
  %105 = fmul double %103, %104
  %106 = tail call double @llvm.fmuladd.f64(double %97, double %99, double %105)
  %107 = fcmp olt double %106, 0.000000e+00
  %108 = select i1 %107, double -1.000000e+00, double 1.000000e+00
  %109 = fmul double %106, %108
  %110 = fcmp ult double %109, 1.000000e-15
  %111 = fdiv double 1.000000e+00, %106
  %112 = fdiv double %108, 1.000000e-15
  %113 = select i1 %110, double %112, double %111
  %114 = fmul double %99, %113
  %115 = fmul double %113, %104
  %116 = fneg double %103
  %117 = fmul double %113, %116
  %118 = fmul double %97, %113
  %119 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 4
  %120 = load double, ptr %119, align 8, !tbaa !128, !noalias !135
  %121 = fneg double %120
  %122 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 5
  %123 = load double, ptr %122, align 8, !tbaa !130, !noalias !135
  %124 = fneg double %123
  %125 = fmul double %117, %124
  %126 = tail call double @llvm.fmuladd.f64(double %121, double %114, double %125)
  %127 = fmul double %118, %124
  %128 = tail call double @llvm.fmuladd.f64(double %121, double %115, double %127)
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %4) #24
  %129 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %130 = fadd double %84, -5.000000e-01
  %131 = call double @llvm.ceil.f64(double %130)
  %132 = fptosi double %131 to i64
  %133 = fadd double %96, 5.000000e-01
  %134 = call double @llvm.floor.f64(double %133)
  %135 = fptosi double %134 to i64
  %136 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef nonnull %129) #24
  %137 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %129) #24
  %138 = icmp sgt i64 %132, %135
  br i1 %138, label %420, label %139

139:                                              ; preds = %80
  %140 = fcmp ult double %114, 1.000000e-15
  %141 = fcmp olt double %114, -1.000000e-15
  %142 = fcmp ult double %115, 1.000000e-15
  %143 = fcmp olt double %115, -1.000000e-15
  %144 = getelementptr inbounds i8, ptr %4, i64 4
  %145 = getelementptr inbounds i8, ptr %4, i64 48
  %146 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %149 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %151 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %152 = getelementptr inbounds i8, ptr %6, i64 4
  %153 = getelementptr inbounds i8, ptr %6, i64 32
  %154 = getelementptr inbounds i8, ptr %6, i64 36
  %155 = getelementptr inbounds i8, ptr %6, i64 40
  %156 = getelementptr inbounds i8, ptr %6, i64 48
  br label %157

157:                                              ; preds = %139, %416
  %158 = phi i32 [ 1, %139 ], [ %417, %416 ]
  %159 = phi i64 [ %132, %139 ], [ %418, %416 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #24
  %160 = sitofp i64 %159 to double
  %161 = call double @llvm.fmuladd.f64(double %117, double %160, double %126)
  br i1 %140, label %173, label %162

162:                                              ; preds = %157
  %163 = fneg double %161
  %164 = fdiv double %163, %114
  %165 = fcmp ogt double %164, %82
  %166 = select i1 %165, double %164, double %82
  %167 = load i64, ptr %15, align 8, !tbaa !123, !noalias !138
  %168 = uitofp i64 %167 to double
  %169 = fsub double %168, %161
  %170 = fdiv double %169, %114
  %171 = fcmp olt double %170, %90
  br i1 %171, label %172, label %193

172:                                              ; preds = %162
  br label %193

173:                                              ; preds = %157
  br i1 %141, label %174, label %185

174:                                              ; preds = %173
  %175 = fneg double %161
  %176 = load i64, ptr %15, align 8, !tbaa !123, !noalias !138
  %177 = uitofp i64 %176 to double
  %178 = fsub double %177, %161
  %179 = fdiv double %178, %114
  %180 = fcmp ogt double %179, %82
  %181 = select i1 %180, double %179, double %82
  %182 = fdiv double %175, %114
  %183 = fcmp olt double %182, %90
  br i1 %183, label %184, label %193

184:                                              ; preds = %174
  br label %193

185:                                              ; preds = %173
  %186 = fcmp olt double %161, 0.000000e+00
  br i1 %186, label %229, label %187

187:                                              ; preds = %185
  %188 = fadd double %161, 5.000000e-01
  %189 = call double @llvm.floor.f64(double %188)
  %190 = fptoui double %189 to i64
  %191 = load i64, ptr %15, align 8, !tbaa !123, !noalias !138
  %192 = icmp ugt i64 %191, %190
  br i1 %192, label %193, label %229

193:                                              ; preds = %187, %184, %174, %172, %162
  %194 = phi double [ %182, %184 ], [ %90, %174 ], [ %90, %187 ], [ %170, %172 ], [ %90, %162 ]
  %195 = phi double [ %181, %184 ], [ %181, %174 ], [ %82, %187 ], [ %166, %172 ], [ %166, %162 ]
  %196 = call double @llvm.fmuladd.f64(double %118, double %160, double %128)
  br i1 %142, label %208, label %197

197:                                              ; preds = %193
  %198 = fneg double %196
  %199 = fdiv double %198, %115
  %200 = fcmp ogt double %199, %195
  %201 = select i1 %200, double %199, double %195
  %202 = load i64, ptr %22, align 8, !tbaa !126, !noalias !138
  %203 = uitofp i64 %202 to double
  %204 = fsub double %203, %196
  %205 = fdiv double %204, %115
  %206 = fcmp olt double %205, %194
  br i1 %206, label %207, label %229

207:                                              ; preds = %197
  br label %229

208:                                              ; preds = %193
  br i1 %143, label %209, label %220

209:                                              ; preds = %208
  %210 = fneg double %196
  %211 = load i64, ptr %22, align 8, !tbaa !126, !noalias !138
  %212 = uitofp i64 %211 to double
  %213 = fsub double %212, %196
  %214 = fdiv double %213, %115
  %215 = fcmp ogt double %214, %195
  %216 = select i1 %215, double %214, double %195
  %217 = fdiv double %210, %115
  %218 = fcmp olt double %217, %194
  br i1 %218, label %219, label %229

219:                                              ; preds = %209
  br label %229

220:                                              ; preds = %208
  %221 = fcmp olt double %196, 0.000000e+00
  br i1 %221, label %228, label %222

222:                                              ; preds = %220
  %223 = fadd double %196, 5.000000e-01
  %224 = call double @llvm.floor.f64(double %223)
  %225 = fptoui double %224 to i64
  %226 = load i64, ptr %22, align 8, !tbaa !126, !noalias !138
  %227 = icmp ugt i64 %226, %225
  br i1 %227, label %229, label %228

228:                                              ; preds = %222, %220
  br label %229

229:                                              ; preds = %185, %187, %197, %207, %209, %219, %222, %228
  %230 = phi double [ %217, %219 ], [ %194, %209 ], [ %90, %228 ], [ %194, %222 ], [ %205, %207 ], [ %194, %197 ], [ %82, %187 ], [ %82, %185 ]
  %231 = phi double [ %216, %219 ], [ %216, %209 ], [ %195, %228 ], [ %195, %222 ], [ %201, %207 ], [ %201, %197 ], [ %82, %187 ], [ %82, %185 ]
  %232 = fcmp olt double %230, %231
  br i1 %232, label %416, label %233

233:                                              ; preds = %229
  %234 = fadd double %231, -5.000000e-01
  %235 = call double @llvm.ceil.f64(double %234)
  %236 = fptosi double %235 to i64
  %237 = fadd double %230, 5.000000e-01
  %238 = call double @llvm.floor.f64(double %237)
  %239 = fsub double %238, %235
  %240 = fadd double %239, 1.000000e+00
  %241 = fptoui double %240 to i64
  %242 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %137, i64 noundef %236, i64 noundef %159, i64 noundef %241, i64 noundef 1, ptr noundef nonnull %129) #28
  %243 = icmp eq ptr %242, null
  br i1 %243, label %416, label %244

244:                                              ; preds = %233
  %245 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %137) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !141
  %246 = fptosi double %238 to i64
  %247 = icmp sgt i64 %236, %246
  br i1 %247, label %412, label %248

248:                                              ; preds = %244
  %249 = load float, ptr %145, align 8, !tbaa.struct !142
  %250 = load i32, ptr %144, align 4, !tbaa.struct !143
  %251 = fmul double %117, %160
  %252 = fmul double %118, %160
  %253 = icmp ne ptr %245, null
  %254 = icmp eq ptr %245, null
  %255 = add i64 %246, 1
  %256 = sub i64 %255, %236
  br label %257

257:                                              ; preds = %248, %407
  %258 = phi i64 [ 0, %248 ], [ %408, %407 ]
  %259 = phi ptr [ %242, %248 ], [ %409, %407 ]
  %260 = phi i64 [ %236, %248 ], [ %410, %407 ]
  %261 = phi float [ %249, %248 ], [ %360, %407 ]
  %262 = phi i32 [ %250, %248 ], [ %359, %407 ]
  %263 = sitofp i64 %260 to double
  %264 = call double @llvm.fmuladd.f64(double %263, double %114, double %251)
  %265 = fadd double %126, %264
  %266 = call double @llvm.fmuladd.f64(double %263, double %115, double %252)
  %267 = fadd double %128, %266
  %268 = call i32 @InterpolateMagickPixelPacket(ptr noundef %1, ptr noundef %136, i32 noundef 0, double noundef %265, double noundef %267, ptr noundef nonnull %6, ptr noundef nonnull %129) #24
  %269 = getelementptr inbounds i16, ptr %245, i64 %258
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 0, i32 2
  %271 = load i16, ptr %270, align 2, !tbaa !144
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 0, i32 1
  %273 = load i16, ptr %272, align 2, !tbaa !145
  %274 = load i16, ptr %259, align 2, !tbaa !146
  %275 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 0, i32 3
  %276 = load i16, ptr %275, align 2, !tbaa !147
  %277 = load i32, ptr %146, align 4, !tbaa !148
  %278 = icmp eq i32 %277, 12
  %279 = and i1 %253, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %257
  %281 = load i16, ptr %269, align 2, !tbaa !149
  %282 = uitofp i16 %281 to float
  br label %283

283:                                              ; preds = %257, %280
  %284 = phi float [ %282, %280 ], [ %261, %257 ]
  %285 = load float, ptr %147, align 4
  %286 = fcmp oeq float %285, 0.000000e+00
  br i1 %286, label %287, label %293

287:                                              ; preds = %283
  %288 = load i32, ptr %152, align 4, !tbaa.struct !143
  %289 = load float, ptr %153, align 8, !tbaa.struct !150
  %290 = load float, ptr %154, align 4, !tbaa.struct !151
  %291 = load float, ptr %155, align 8, !tbaa.struct !152
  %292 = load float, ptr %156, align 8, !tbaa.struct !142
  br label %354

293:                                              ; preds = %283
  %294 = fpext float %285 to double
  %295 = uitofp i16 %276 to double
  %296 = fmul double %294, 0xBDF0002000300040
  %297 = call double @llvm.fmuladd.f64(double %296, double %295, double 1.000000e+00)
  %298 = fcmp olt double %297, 0.000000e+00
  %299 = select i1 %298, double 0.000000e+00, double %297
  %300 = fsub double 1.000000e+00, %299
  %301 = fmul double %300, 6.553500e+04
  %302 = fptrunc double %301 to float
  %303 = fcmp ult double %299, 1.000000e-15
  %304 = fdiv double 1.000000e+00, %299
  %305 = select i1 %303, double 0x430C6BF52633FFFF, double %304
  %306 = load float, ptr %148, align 8, !tbaa !153
  %307 = call double @llvm.fmuladd.f64(double %294, double 0xBEF0001000100010, double 1.000000e+00)
  %308 = fpext float %306 to double
  %309 = call double @llvm.fmuladd.f64(double %295, double 0xBEF0001000100010, double 1.000000e+00)
  %310 = uitofp i16 %271 to double
  %311 = fmul double %309, %310
  %312 = fmul double %311, 0x3EF0001000100010
  %313 = fmul double %312, %294
  %314 = call double @llvm.fmuladd.f64(double %307, double %308, double %313)
  %315 = fptrunc double %314 to float
  %316 = fpext float %315 to double
  %317 = fmul double %305, %316
  %318 = fptrunc double %317 to float
  %319 = load float, ptr %149, align 4, !tbaa !155
  %320 = fpext float %319 to double
  %321 = uitofp i16 %273 to double
  %322 = fmul double %309, %321
  %323 = fmul double %322, 0x3EF0001000100010
  %324 = fmul double %323, %294
  %325 = call double @llvm.fmuladd.f64(double %307, double %320, double %324)
  %326 = fptrunc double %325 to float
  %327 = fpext float %326 to double
  %328 = fmul double %305, %327
  %329 = fptrunc double %328 to float
  %330 = load float, ptr %150, align 8, !tbaa !156
  %331 = fpext float %330 to double
  %332 = uitofp i16 %274 to double
  %333 = fmul double %309, %332
  %334 = fmul double %333, 0x3EF0001000100010
  %335 = fmul double %334, %294
  %336 = call double @llvm.fmuladd.f64(double %307, double %331, double %335)
  %337 = fptrunc double %336 to float
  %338 = fpext float %337 to double
  %339 = fmul double %305, %338
  %340 = fptrunc double %339 to float
  %341 = icmp eq i32 %262, 12
  br i1 %341, label %342, label %354

342:                                              ; preds = %293
  %343 = load float, ptr %151, align 8, !tbaa !157
  %344 = fpext float %343 to double
  %345 = fpext float %284 to double
  %346 = fmul double %309, %345
  %347 = fmul double %346, 0x3EF0001000100010
  %348 = fmul double %347, %294
  %349 = call double @llvm.fmuladd.f64(double %307, double %344, double %348)
  %350 = fptrunc double %349 to float
  %351 = fpext float %350 to double
  %352 = fmul double %305, %351
  %353 = fptrunc double %352 to float
  br label %354

354:                                              ; preds = %287, %293, %342
  %355 = phi float [ %285, %287 ], [ %302, %342 ], [ %302, %293 ]
  %356 = phi float [ %291, %287 ], [ %340, %342 ], [ %340, %293 ]
  %357 = phi float [ %290, %287 ], [ %329, %342 ], [ %329, %293 ]
  %358 = phi float [ %289, %287 ], [ %318, %342 ], [ %318, %293 ]
  %359 = phi i32 [ %288, %287 ], [ %262, %342 ], [ %262, %293 ]
  %360 = phi float [ %292, %287 ], [ %353, %342 ], [ %284, %293 ]
  %361 = fcmp ugt float %358, 0.000000e+00
  br i1 %361, label %362, label %367

362:                                              ; preds = %354
  %363 = fcmp ult float %358, 6.553500e+04
  br i1 %363, label %364, label %367

364:                                              ; preds = %362
  %365 = fadd float %358, 5.000000e-01
  %366 = fptoui float %365 to i16
  br label %367

367:                                              ; preds = %364, %362, %354
  %368 = phi i16 [ %366, %364 ], [ 0, %354 ], [ -1, %362 ]
  store i16 %368, ptr %270, align 2, !tbaa !144
  %369 = fcmp ugt float %357, 0.000000e+00
  br i1 %369, label %370, label %375

370:                                              ; preds = %367
  %371 = fcmp ult float %357, 6.553500e+04
  br i1 %371, label %372, label %375

372:                                              ; preds = %370
  %373 = fadd float %357, 5.000000e-01
  %374 = fptoui float %373 to i16
  br label %375

375:                                              ; preds = %372, %370, %367
  %376 = phi i16 [ %374, %372 ], [ 0, %367 ], [ -1, %370 ]
  store i16 %376, ptr %272, align 2, !tbaa !145
  %377 = fcmp ugt float %356, 0.000000e+00
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = fcmp ult float %356, 6.553500e+04
  br i1 %379, label %380, label %383

380:                                              ; preds = %378
  %381 = fadd float %356, 5.000000e-01
  %382 = fptoui float %381 to i16
  br label %383

383:                                              ; preds = %380, %378, %375
  %384 = phi i16 [ %382, %380 ], [ 0, %375 ], [ -1, %378 ]
  store i16 %384, ptr %259, align 2, !tbaa !146
  %385 = fcmp ugt float %355, 0.000000e+00
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = fcmp ult float %355, 6.553500e+04
  br i1 %387, label %388, label %391

388:                                              ; preds = %386
  %389 = fadd float %355, 5.000000e-01
  %390 = fptoui float %389 to i16
  br label %391

391:                                              ; preds = %388, %386, %383
  %392 = phi i16 [ %390, %388 ], [ 0, %383 ], [ -1, %386 ]
  store i16 %392, ptr %275, align 2, !tbaa !147
  br i1 %278, label %397, label %393

393:                                              ; preds = %391
  %394 = load i32, ptr %0, align 8, !tbaa !158
  %395 = icmp eq i32 %394, 2
  %396 = and i1 %253, %395
  br i1 %396, label %398, label %407

397:                                              ; preds = %391
  br i1 %254, label %407, label %398

398:                                              ; preds = %397, %393
  %399 = fcmp ugt float %360, 0.000000e+00
  br i1 %399, label %400, label %405

400:                                              ; preds = %398
  %401 = fcmp ult float %360, 6.553500e+04
  br i1 %401, label %402, label %405

402:                                              ; preds = %400
  %403 = fadd float %360, 5.000000e-01
  %404 = fptoui float %403 to i16
  br label %405

405:                                              ; preds = %402, %400, %398
  %406 = phi i16 [ %404, %402 ], [ 0, %398 ], [ -1, %400 ]
  store i16 %406, ptr %269, align 2, !tbaa !149
  br label %407

407:                                              ; preds = %393, %397, %405
  %408 = add nuw i64 %258, 1
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 1
  %410 = add nsw i64 %260, 1
  %411 = icmp eq i64 %408, %256
  br i1 %411, label %412, label %257, !llvm.loop !159

412:                                              ; preds = %407, %244
  %413 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %137, ptr noundef nonnull %129) #28
  %414 = icmp eq i32 %413, 0
  %415 = select i1 %414, i32 0, i32 %158
  br label %416

416:                                              ; preds = %233, %229, %412
  %417 = phi i32 [ %415, %412 ], [ %158, %229 ], [ %158, %233 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #24
  %418 = add i64 %159, 1
  %419 = icmp eq i64 %159, %135
  br i1 %419, label %420, label %157, !llvm.loop !160

420:                                              ; preds = %416, %80
  %421 = phi i32 [ 1, %80 ], [ %417, %416 ]
  %422 = call ptr @DestroyCacheView(ptr noundef %136) #24
  %423 = call ptr @DestroyCacheView(ptr noundef %137) #24
  br label %424

424:                                              ; preds = %77, %420
  %425 = phi i32 [ %421, %420 ], [ 0, %77 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #24
  ret i32 %425
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawClipPath(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1447, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #24
  br label %11

11:                                               ; preds = %8, %3
  %12 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %2) #24
  %13 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %4) #24
  %14 = icmp eq ptr %13, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %17 = load ptr, ptr %16, align 8, !tbaa !161
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !123
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !126
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %25 = call ptr @CloneImage(ptr noundef %0, i64 noundef %21, i64 noundef %23, i32 noundef 1, ptr noundef nonnull %24) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %60, label %27

27:                                               ; preds = %19
  %28 = call i32 @SetImageClipMask(ptr noundef %0, ptr noundef nonnull %25) #24
  %29 = call ptr @DestroyImage(ptr noundef nonnull %25) #24
  br label %30

30:                                               ; preds = %27, %15
  %31 = load ptr, ptr %16, align 8, !tbaa !161
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 12
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %34 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.7, ptr noundef nonnull %32, ptr noundef nonnull %33) #24
  %35 = load ptr, ptr %16, align 8, !tbaa !161
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 12, i32 3
  store i16 -1, ptr %36, align 2, !tbaa !162
  %37 = call i32 @SetImageBackgroundColor(ptr noundef %35) #24
  %38 = load i32, ptr %5, align 8, !tbaa !113
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 37
  %42 = load ptr, ptr %41, align 8, !tbaa !109
  %43 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1470, ptr noundef nonnull @.str.8, ptr noundef %42) #24
  br label %44

44:                                               ; preds = %40, %30
  %45 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1)
  %46 = call ptr @CloneString(ptr noundef %45, ptr noundef nonnull %13) #24
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %45, i64 0, i32 5
  %48 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.9, ptr noundef nonnull %47, ptr noundef nonnull %33) #24
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %45, i64 0, i32 37
  store ptr null, ptr %49, align 8, !tbaa !109
  %50 = load ptr, ptr %16, align 8, !tbaa !161
  %51 = call i32 @DrawImage(ptr noundef %50, ptr noundef %45), !range !163
  %52 = load ptr, ptr %16, align 8, !tbaa !161
  %53 = call i32 @NegateImage(ptr noundef %52, i32 noundef 0) #24
  %54 = and i32 %53, %51
  %55 = call ptr @DestroyDrawInfo(ptr noundef %45)
  %56 = load i32, ptr %5, align 8, !tbaa !113
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %44
  %59 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1480, ptr noundef nonnull @.str.10) #24
  br label %60

60:                                               ; preds = %19, %44, %58, %11
  %61 = phi i32 [ 0, %11 ], [ %54, %58 ], [ %54, %44 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #24
  ret i32 %61
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageClipMask(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca ptr, align 8
  %14 = alloca [4 x %struct._PointInfo], align 16
  %15 = alloca [4096 x i8], align 16
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct._AffineMatrix, align 8
  %20 = alloca %struct._AffineMatrix, align 8
  %21 = alloca [8192 x i8], align 16
  %22 = alloca [4096 x i8], align 16
  %23 = alloca [4096 x i8], align 16
  %24 = alloca [4096 x i8], align 16
  %25 = alloca [4096 x i8], align 16
  %26 = alloca ptr, align 8
  %27 = alloca %struct._PixelPacket, align 8
  %28 = alloca [4096 x i8], align 16
  %29 = alloca [8192 x i8], align 16
  %30 = alloca [4096 x i8], align 16
  %31 = alloca [4096 x i8], align 16
  %32 = alloca %struct._PixelPacket, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #24
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %37 = load i32, ptr %36, align 8, !tbaa !113
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %41 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1775, ptr noundef nonnull @.str.6, ptr noundef nonnull %40) #24
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32, ptr %36, align 8, !tbaa !113
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1779, ptr noundef nonnull @.str.5) #24
  br label %47

47:                                               ; preds = %45, %42
  %48 = load ptr, ptr %1, align 8, !tbaa !82
  %49 = icmp eq ptr %48, null
  br i1 %49, label %2719, label %50

50:                                               ; preds = %47
  %51 = load i8, ptr %48, align 1, !tbaa !164
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %2719, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %36, align 8, !tbaa !113
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1784, ptr noundef nonnull @.str.11) #24
  br label %58

58:                                               ; preds = %56, %53
  %59 = load ptr, ptr %1, align 8, !tbaa !82
  %60 = load i8, ptr %59, align 1, !tbaa !164
  %61 = icmp eq i8 %60, 64
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call ptr @AcquireString(ptr noundef nonnull %59) #24
  br label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds i8, ptr %59, i64 1
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %67 = tail call ptr @FileToString(ptr noundef nonnull %65, i64 noundef -1, ptr noundef nonnull %66) #24
  br label %68

68:                                               ; preds = %64, %62
  %69 = phi ptr [ %63, %62 ], [ %67, %64 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %2719, label %71

71:                                               ; preds = %68
  %72 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #29
  %73 = uitofp i64 %72 to double
  %74 = tail call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %69) #24
  %75 = tail call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #23
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = tail call ptr @DestroyString(ptr noundef nonnull %69) #24
  %79 = icmp eq ptr %0, null
  br i1 %79, label %2719, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %83 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %81, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1803, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %82) #24
  br label %2719

84:                                               ; preds = %71
  %85 = tail call dereferenceable_or_null(262120) ptr @AcquireQuantumMemory(i64 noundef 6553, i64 noundef 40) #27
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = tail call ptr @DestroyString(ptr noundef nonnull %69) #24
  %89 = load ptr, ptr %75, align 8, !tbaa !105
  %90 = tail call ptr @DestroyDrawInfo(ptr noundef %89)
  store ptr %90, ptr %75, align 8, !tbaa !105
  %91 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %75) #24
  %92 = icmp eq ptr %0, null
  br i1 %92, label %2719, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %96 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %94, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1815, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %95) #24
  br label %2719

97:                                               ; preds = %84
  %98 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %1)
  store ptr %98, ptr %75, align 8, !tbaa !105
  %99 = getelementptr inbounds %struct._DrawInfo, ptr %98, i64 0, i32 2
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100, i64 32, i1 false), !tbaa.struct !84
  %101 = load i64, ptr %100, align 8, !tbaa !165
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !166
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103, %97
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %109 = load i64, ptr %108, align 8, !tbaa !123
  %110 = load ptr, ptr %75, align 8, !tbaa !105
  %111 = getelementptr inbounds %struct._DrawInfo, ptr %110, i64 0, i32 2
  store i64 %109, ptr %111, align 8, !tbaa !167
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %113 = load i64, ptr %112, align 8, !tbaa !126
  %114 = getelementptr inbounds %struct._DrawInfo, ptr %110, i64 0, i32 2, i32 1
  store i64 %113, ptr %114, align 8, !tbaa !168
  br label %115

115:                                              ; preds = %107, %103
  %116 = tail call ptr @AcquireString(ptr noundef nonnull %69) #24
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %118 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.13, ptr noundef nonnull %27, ptr noundef nonnull %117) #24
  %119 = call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #24
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %2719, label %121

121:                                              ; preds = %115
  store ptr %69, ptr %26, align 8, !tbaa !105
  %122 = load i8, ptr %69, align 1, !tbaa !164
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %2688, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 3
  %126 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 4
  %127 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 5
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %129 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 1
  %130 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 2
  %131 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 1
  %132 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 2
  %133 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %134 = getelementptr inbounds %struct._AffineMatrix, ptr %20, i64 0, i32 3
  %135 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38
  %136 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38, i32 2
  %137 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38, i32 3
  %138 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 4
  %139 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38, i32 1
  %140 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 5
  %141 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 1
  %142 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 2
  %143 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 4
  %144 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 5
  %145 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 1
  %146 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 2
  %147 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 4
  %148 = getelementptr inbounds %struct._AffineMatrix, ptr %19, i64 0, i32 5
  %149 = getelementptr inbounds %struct._AffineMatrix, ptr %20, i64 0, i32 2
  %150 = getelementptr inbounds %struct._AffineMatrix, ptr %20, i64 0, i32 1
  %151 = getelementptr inbounds %struct._AffineMatrix, ptr %20, i64 0, i32 3
  %152 = getelementptr inbounds %struct._AffineMatrix, ptr %20, i64 0, i32 4
  %153 = getelementptr inbounds %struct._AffineMatrix, ptr %20, i64 0, i32 5
  %154 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 2
  %155 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 1
  %156 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 2, i32 1
  %157 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 1, i32 1
  %158 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 3
  %159 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 3, i32 1
  %160 = getelementptr inbounds i8, ptr %14, i64 8
  %161 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %162 = fptoui double %73 to i64
  %163 = ptrtoint ptr %69 to i64
  %164 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %165 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %166

166:                                              ; preds = %124, %2683
  %167 = phi ptr [ %69, %124 ], [ %2685, %2683 ]
  %168 = phi ptr [ %75, %124 ], [ %1273, %2683 ]
  %169 = phi i32 [ 1, %124 ], [ %2684, %2683 ]
  %170 = phi ptr [ %85, %124 ], [ %1481, %2683 ]
  %171 = phi i64 [ 6553, %124 ], [ %1480, %2683 ]
  %172 = phi i64 [ 0, %124 ], [ %1268, %2683 ]
  br label %173

173:                                              ; preds = %166, %1333
  %174 = phi ptr [ %167, %166 ], [ %1334, %1333 ]
  %175 = phi ptr [ %168, %166 ], [ %1273, %1333 ]
  %176 = phi i32 [ %169, %166 ], [ %1272, %1333 ]
  %177 = phi i64 [ %172, %166 ], [ %1268, %1333 ]
  br label %178

178:                                              ; preds = %173, %188
  %179 = phi ptr [ %174, %173 ], [ %189, %188 ]
  call void @GetMagickToken(ptr noundef nonnull %179, ptr noundef nonnull %26, ptr noundef nonnull %22) #24
  %180 = load i8, ptr %22, align 16, !tbaa !164
  switch i8 %180, label %192 [
    i8 0, label %2688
    i8 35, label %181
  ]

181:                                              ; preds = %178
  %182 = load ptr, ptr %26, align 8, !tbaa !105
  br label %183

183:                                              ; preds = %181, %186
  %184 = phi ptr [ %182, %181 ], [ %187, %186 ]
  %185 = load i8, ptr %184, align 1, !tbaa !164
  switch i8 %185, label %186 [
    i8 10, label %188
    i8 0, label %188
  ]

186:                                              ; preds = %183
  %187 = getelementptr inbounds i8, ptr %184, i64 1
  store ptr %187, ptr %26, align 8, !tbaa !105
  br label %183, !llvm.loop !169

188:                                              ; preds = %183, %183
  %189 = load ptr, ptr %26, align 8, !tbaa !105
  %190 = load i8, ptr %189, align 1, !tbaa !164
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %2688, label %178, !llvm.loop !170

192:                                              ; preds = %178
  %193 = load ptr, ptr %26, align 8, !tbaa !105
  %194 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #29
  %195 = sub i64 0, %194
  %196 = getelementptr inbounds i8, ptr %193, i64 %195
  %197 = getelementptr inbounds i8, ptr %196, i64 -1
  %198 = getelementptr inbounds ptr, ptr %175, i64 %177
  %199 = load ptr, ptr %198, align 8, !tbaa !105
  %200 = getelementptr inbounds %struct._DrawInfo, ptr %199, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(48) %200, i64 48, i1 false), !tbaa.struct !86
  %201 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4779, ptr noundef nonnull @.str.5) #24
  %202 = call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef 48) #24
  store double 1.000000e+00, ptr %19, align 8, !tbaa !38
  store double 1.000000e+00, ptr %125, align 8, !tbaa !41
  %203 = load i8, ptr %22, align 16, !tbaa !164
  switch i8 %203, label %1266 [
    i8 59, label %1267
    i8 97, label %204
    i8 65, label %204
    i8 98, label %250
    i8 66, label %250
    i8 99, label %261
    i8 67, label %261
    i8 100, label %311
    i8 68, label %311
    i8 101, label %333
    i8 69, label %333
    i8 102, label %344
    i8 70, label %344
    i8 103, label %503
    i8 71, label %503
    i8 105, label %519
    i8 73, label %519
    i8 107, label %546
    i8 75, label %546
    i8 108, label %554
    i8 76, label %554
    i8 109, label %559
    i8 77, label %559
    i8 111, label %564
    i8 79, label %564
    i8 112, label %600
    i8 80, label %600
    i8 114, label %884
    i8 82, label %884
    i8 115, label %915
    i8 83, label %915
    i8 116, label %1163
    i8 84, label %1163
    i8 118, label %1219
    i8 86, label %1219
  ]

204:                                              ; preds = %192, %192
  %205 = call i32 @LocaleCompare(ptr noundef nonnull @.str.14, ptr noundef nonnull %22) #24
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %245

207:                                              ; preds = %204
  %208 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %208, ptr noundef nonnull %26, ptr noundef %116) #24
  %209 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %209, ptr %19, align 8, !tbaa !38
  %210 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %210, ptr noundef nonnull %26, ptr noundef %116) #24
  %211 = load i8, ptr %116, align 1, !tbaa !164
  %212 = icmp eq i8 %211, 44
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %214, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  br label %215

215:                                              ; preds = %213, %207
  %216 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %216, ptr %141, align 8, !tbaa !129
  %217 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %217, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  %218 = load i8, ptr %116, align 1, !tbaa !164
  %219 = icmp eq i8 %218, 44
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %221, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  br label %222

222:                                              ; preds = %220, %215
  %223 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %223, ptr %142, align 8, !tbaa !127
  %224 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %224, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  %225 = load i8, ptr %116, align 1, !tbaa !164
  %226 = icmp eq i8 %225, 44
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %228, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  br label %229

229:                                              ; preds = %227, %222
  %230 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %230, ptr %125, align 8, !tbaa !41
  %231 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %231, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  %232 = load i8, ptr %116, align 1, !tbaa !164
  %233 = icmp eq i8 %232, 44
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %235, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  br label %236

236:                                              ; preds = %234, %229
  %237 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %237, ptr %143, align 8, !tbaa !128
  %238 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %238, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  %239 = load i8, ptr %116, align 1, !tbaa !164
  %240 = icmp eq i8 %239, 44
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %242, ptr noundef nonnull %26, ptr noundef nonnull %116) #24
  br label %243

243:                                              ; preds = %241, %236
  %244 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %244, ptr %144, align 8, !tbaa !130
  br label %1267

245:                                              ; preds = %204
  %246 = call i32 @LocaleCompare(ptr noundef nonnull @.str.15, ptr noundef nonnull %22) #24
  %247 = icmp ne i32 %246, 0
  %248 = select i1 %247, i32 0, i32 5
  %249 = select i1 %247, i32 0, i32 %176
  br label %1267

250:                                              ; preds = %192, %192
  %251 = call i32 @LocaleCompare(ptr noundef nonnull @.str.16, ptr noundef nonnull %22) #24
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %1267, label %253

253:                                              ; preds = %250
  %254 = call i32 @LocaleCompare(ptr noundef nonnull @.str.17, ptr noundef nonnull %22) #24
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %1267

256:                                              ; preds = %253
  %257 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %257, ptr noundef nonnull %26, ptr noundef %116) #24
  %258 = load ptr, ptr %198, align 8, !tbaa !105
  %259 = getelementptr inbounds %struct._DrawInfo, ptr %258, i64 0, i32 34
  %260 = call i32 @QueryColorDatabase(ptr noundef %116, ptr noundef nonnull %259, ptr noundef nonnull %117) #24
  br label %1267

261:                                              ; preds = %192, %192
  %262 = call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef nonnull %22) #24
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %261
  %265 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %265, ptr noundef nonnull %26, ptr noundef %116) #24
  %266 = load ptr, ptr %198, align 8, !tbaa !105
  %267 = getelementptr inbounds %struct._DrawInfo, ptr %266, i64 0, i32 37
  %268 = call ptr @CloneString(ptr noundef nonnull %267, ptr noundef %116) #24
  %269 = load ptr, ptr %198, align 8, !tbaa !105
  %270 = getelementptr inbounds %struct._DrawInfo, ptr %269, i64 0, i32 37
  %271 = load ptr, ptr %270, align 8, !tbaa !109
  %272 = call i32 @DrawClipPath(ptr noundef %0, ptr noundef %269, ptr noundef %271), !range !163
  br label %1267

273:                                              ; preds = %261
  %274 = call i32 @LocaleCompare(ptr noundef nonnull @.str.19, ptr noundef nonnull %22) #24
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %273
  %277 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %277, ptr noundef nonnull %26, ptr noundef %116) #24
  %278 = call i64 @ParseCommandOption(i32 noundef 24, i32 noundef 0, ptr noundef %116) #24
  %279 = icmp eq i64 %278, -1
  br i1 %279, label %1267, label %280

280:                                              ; preds = %276
  %281 = trunc i64 %278 to i32
  %282 = load ptr, ptr %198, align 8, !tbaa !105
  %283 = getelementptr inbounds %struct._DrawInfo, ptr %282, i64 0, i32 14
  store i32 %281, ptr %283, align 8, !tbaa !58
  br label %1267

284:                                              ; preds = %273
  %285 = call i32 @LocaleCompare(ptr noundef nonnull @.str.20, ptr noundef nonnull %22) #24
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %303

287:                                              ; preds = %284
  %288 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %288, ptr noundef nonnull %26, ptr noundef %116) #24
  %289 = call i64 @ParseCommandOption(i32 noundef 6, i32 noundef 0, ptr noundef %116) #24
  %290 = icmp eq i64 %289, -1
  br i1 %290, label %1267, label %291

291:                                              ; preds = %287
  %292 = trunc i64 %289 to i32
  %293 = load ptr, ptr %198, align 8, !tbaa !105
  %294 = getelementptr inbounds %struct._DrawInfo, ptr %293, i64 0, i32 39
  store i32 %292, ptr %294, align 8, !tbaa !111
  %295 = icmp eq i64 %289, 3
  br i1 %295, label %296, label %1267

296:                                              ; preds = %291
  %297 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4779, ptr noundef nonnull @.str.5) #24
  %298 = call ptr @ResetMagickMemory(ptr noundef nonnull %20, i32 noundef 0, i64 noundef 48) #24
  store double 1.000000e+00, ptr %20, align 8, !tbaa !38
  store double 1.000000e+00, ptr %134, align 8, !tbaa !41
  %299 = load double, ptr %136, align 8, !tbaa !171
  store double %299, ptr %19, align 8, !tbaa !38
  %300 = load double, ptr %137, align 8, !tbaa !172
  store double %300, ptr %125, align 8, !tbaa !41
  %301 = load double, ptr %135, align 8, !tbaa !173
  store double %301, ptr %138, align 8, !tbaa !128
  %302 = load double, ptr %139, align 8, !tbaa !174
  store double %302, ptr %140, align 8, !tbaa !130
  br label %1267

303:                                              ; preds = %284
  %304 = call i32 @LocaleCompare(ptr noundef nonnull @.str.21, ptr noundef nonnull %22) #24
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %1267, label %306

306:                                              ; preds = %303
  %307 = call i32 @LocaleCompare(ptr noundef nonnull @.str.22, ptr noundef nonnull %22) #24
  %308 = icmp ne i32 %307, 0
  %309 = select i1 %308, i32 0, i32 11
  %310 = select i1 %308, i32 0, i32 %176
  br label %1267

311:                                              ; preds = %192, %192
  %312 = call i32 @LocaleCompare(ptr noundef nonnull @.str.23, ptr noundef nonnull %22) #24
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %322

314:                                              ; preds = %311
  %315 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %315, ptr noundef nonnull %26, ptr noundef %116) #24
  %316 = call i64 @ParseCommandOption(i32 noundef 16, i32 noundef 0, ptr noundef %116) #24
  %317 = icmp eq i64 %316, -1
  br i1 %317, label %1267, label %318

318:                                              ; preds = %314
  %319 = trunc i64 %316 to i32
  %320 = load ptr, ptr %198, align 8, !tbaa !105
  %321 = getelementptr inbounds %struct._DrawInfo, ptr %320, i64 0, i32 19
  store i32 %319, ptr %321, align 8, !tbaa !62
  br label %1267

322:                                              ; preds = %311
  %323 = call i32 @LocaleCompare(ptr noundef nonnull @.str.24, ptr noundef nonnull %22) #24
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %1267

325:                                              ; preds = %322
  %326 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %326, ptr noundef nonnull %26, ptr noundef %116) #24
  %327 = call i64 @ParseCommandOption(i32 noundef 18, i32 noundef 0, ptr noundef %116) #24
  %328 = icmp eq i64 %327, -1
  br i1 %328, label %1267, label %329

329:                                              ; preds = %325
  %330 = trunc i64 %327 to i32
  %331 = load ptr, ptr %198, align 8, !tbaa !105
  %332 = getelementptr inbounds %struct._DrawInfo, ptr %331, i64 0, i32 48
  store i32 %330, ptr %332, align 8, !tbaa !78
  br label %1267

333:                                              ; preds = %192, %192
  %334 = call i32 @LocaleCompare(ptr noundef nonnull @.str.25, ptr noundef nonnull %22) #24
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %1267, label %336

336:                                              ; preds = %333
  %337 = call i32 @LocaleCompare(ptr noundef nonnull @.str.26, ptr noundef nonnull %22) #24
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %1267

339:                                              ; preds = %336
  %340 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %340, ptr noundef nonnull %26, ptr noundef %116) #24
  %341 = load ptr, ptr %198, align 8, !tbaa !105
  %342 = getelementptr inbounds %struct._DrawInfo, ptr %341, i64 0, i32 29
  %343 = call ptr @CloneString(ptr noundef nonnull %342, ptr noundef %116) #24
  br label %1267

344:                                              ; preds = %192, %192
  %345 = call i32 @LocaleCompare(ptr noundef nonnull @.str.27, ptr noundef nonnull %22) #24
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %369

347:                                              ; preds = %344
  %348 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %348, ptr noundef nonnull %26, ptr noundef %116) #24
  %349 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %25, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %116) #24
  %350 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %25) #24
  %351 = icmp eq ptr %350, null
  %352 = load ptr, ptr %198, align 8, !tbaa !105
  br i1 %351, label %356, label %353

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct._DrawInfo, ptr %352, i64 0, i32 9
  %355 = call i32 @DrawPatternPath(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %116, ptr noundef nonnull %354), !range !163
  br label %1267

356:                                              ; preds = %347
  %357 = getelementptr inbounds %struct._DrawInfo, ptr %352, i64 0, i32 5
  %358 = call i32 @QueryColorDatabase(ptr noundef %116, ptr noundef nonnull %357, ptr noundef nonnull %117) #24
  %359 = and i32 %358, %176
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %1267

361:                                              ; preds = %356
  %362 = call ptr @AcquireImageInfo() #24
  %363 = getelementptr inbounds %struct._ImageInfo, ptr %362, i64 0, i32 51
  %364 = call i64 @CopyMagickString(ptr noundef nonnull %363, ptr noundef %116, i64 noundef 4096) #24
  %365 = call ptr @ReadImage(ptr noundef %362, ptr noundef nonnull %117) #24
  %366 = load ptr, ptr %198, align 8, !tbaa !105
  %367 = getelementptr inbounds %struct._DrawInfo, ptr %366, i64 0, i32 9
  store ptr %365, ptr %367, align 8, !tbaa !88
  call void @CatchException(ptr noundef nonnull %117) #24
  %368 = call ptr @DestroyImageInfo(ptr noundef %362) #24
  br label %1267

369:                                              ; preds = %344
  %370 = call i32 @LocaleCompare(ptr noundef nonnull @.str.28, ptr noundef nonnull %22) #24
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %392

372:                                              ; preds = %369
  %373 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %373, ptr noundef nonnull %26, ptr noundef %116) #24
  %374 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %116, i32 noundef 37) #29
  %375 = icmp eq ptr %374, null
  %376 = select i1 %375, double 1.000000e+00, double 1.000000e-02
  %377 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %378 = fneg double %376
  %379 = call double @llvm.fmuladd.f64(double %378, double %377, double 1.000000e+00)
  %380 = fmul double %379, 6.553500e+04
  %381 = fptrunc double %380 to float
  %382 = fcmp ugt float %381, 0.000000e+00
  br i1 %382, label %383, label %388

383:                                              ; preds = %372
  %384 = fcmp ult float %381, 6.553500e+04
  br i1 %384, label %385, label %388

385:                                              ; preds = %383
  %386 = fadd float %381, 5.000000e-01
  %387 = fptoui float %386 to i16
  br label %388

388:                                              ; preds = %372, %383, %385
  %389 = phi i16 [ %387, %385 ], [ 0, %372 ], [ -1, %383 ]
  %390 = load ptr, ptr %198, align 8, !tbaa !105
  %391 = getelementptr inbounds %struct._DrawInfo, ptr %390, i64 0, i32 5, i32 3
  store i16 %389, ptr %391, align 2, !tbaa !175
  br label %1267

392:                                              ; preds = %369
  %393 = call i32 @LocaleCompare(ptr noundef nonnull @.str.29, ptr noundef nonnull %22) #24
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %392
  %396 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %396, ptr noundef nonnull %26, ptr noundef %116) #24
  %397 = call i64 @ParseCommandOption(i32 noundef 24, i32 noundef 0, ptr noundef %116) #24
  %398 = icmp eq i64 %397, -1
  br i1 %398, label %1267, label %399

399:                                              ; preds = %395
  %400 = trunc i64 %397 to i32
  %401 = load ptr, ptr %198, align 8, !tbaa !105
  %402 = getelementptr inbounds %struct._DrawInfo, ptr %401, i64 0, i32 14
  store i32 %400, ptr %402, align 8, !tbaa !58
  br label %1267

403:                                              ; preds = %392
  %404 = call i32 @LocaleCompare(ptr noundef nonnull @.str.30, ptr noundef nonnull %22) #24
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %420

406:                                              ; preds = %403
  %407 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %407, ptr noundef nonnull %26, ptr noundef %116) #24
  %408 = load ptr, ptr %198, align 8, !tbaa !105
  %409 = getelementptr inbounds %struct._DrawInfo, ptr %408, i64 0, i32 23
  %410 = call ptr @CloneString(ptr noundef nonnull %409, ptr noundef %116) #24
  %411 = call i32 @LocaleCompare(ptr noundef nonnull @.str.31, ptr noundef %116) #24
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %1267

413:                                              ; preds = %406
  %414 = load ptr, ptr %198, align 8, !tbaa !105
  %415 = getelementptr inbounds %struct._DrawInfo, ptr %414, i64 0, i32 23
  %416 = load ptr, ptr %415, align 8, !tbaa !64
  %417 = call ptr @RelinquishMagickMemory(ptr noundef %416) #24
  %418 = load ptr, ptr %198, align 8, !tbaa !105
  %419 = getelementptr inbounds %struct._DrawInfo, ptr %418, i64 0, i32 23
  store ptr %417, ptr %419, align 8, !tbaa !64
  br label %1267

420:                                              ; preds = %403
  %421 = call i32 @LocaleCompare(ptr noundef nonnull @.str.32, ptr noundef nonnull %22) #24
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %420
  %424 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %424, ptr noundef nonnull %26, ptr noundef %116) #24
  %425 = load ptr, ptr %198, align 8, !tbaa !105
  %426 = getelementptr inbounds %struct._DrawInfo, ptr %425, i64 0, i32 25
  %427 = call ptr @CloneString(ptr noundef nonnull %426, ptr noundef %116) #24
  br label %1267

428:                                              ; preds = %420
  %429 = call i32 @LocaleCompare(ptr noundef nonnull @.str.33, ptr noundef nonnull %22) #24
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %428
  %432 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %432, ptr noundef nonnull %26, ptr noundef %116) #24
  %433 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %434 = load ptr, ptr %198, align 8, !tbaa !105
  %435 = getelementptr inbounds %struct._DrawInfo, ptr %434, i64 0, i32 30
  store double %433, ptr %435, align 8, !tbaa !68
  br label %1267

436:                                              ; preds = %428
  %437 = call i32 @LocaleCompare(ptr noundef nonnull @.str.34, ptr noundef nonnull %22) #24
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %447

439:                                              ; preds = %436
  %440 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %440, ptr noundef nonnull %26, ptr noundef %116) #24
  %441 = call i64 @ParseCommandOption(i32 noundef 63, i32 noundef 0, ptr noundef %116) #24
  %442 = icmp eq i64 %441, -1
  br i1 %442, label %1267, label %443

443:                                              ; preds = %439
  %444 = trunc i64 %441 to i32
  %445 = load ptr, ptr %198, align 8, !tbaa !105
  %446 = getelementptr inbounds %struct._DrawInfo, ptr %445, i64 0, i32 27
  store i32 %444, ptr %446, align 4, !tbaa !96
  br label %1267

447:                                              ; preds = %436
  %448 = call i32 @LocaleCompare(ptr noundef nonnull @.str.35, ptr noundef nonnull %22) #24
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %458

450:                                              ; preds = %447
  %451 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %451, ptr noundef nonnull %26, ptr noundef %116) #24
  %452 = call i64 @ParseCommandOption(i32 noundef 64, i32 noundef 0, ptr noundef %116) #24
  %453 = icmp eq i64 %452, -1
  br i1 %453, label %1267, label %454

454:                                              ; preds = %450
  %455 = trunc i64 %452 to i32
  %456 = load ptr, ptr %198, align 8, !tbaa !105
  %457 = getelementptr inbounds %struct._DrawInfo, ptr %456, i64 0, i32 26
  store i32 %455, ptr %457, align 8, !tbaa !95
  br label %1267

458:                                              ; preds = %447
  %459 = call i32 @LocaleCompare(ptr noundef nonnull @.str.36, ptr noundef nonnull %22) #24
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %1267

461:                                              ; preds = %458
  %462 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %462, ptr noundef nonnull %26, ptr noundef %116) #24
  %463 = call i64 @strtoul(ptr nocapture noundef %116, ptr noundef null, i32 noundef 10) #24
  %464 = load ptr, ptr %198, align 8, !tbaa !105
  %465 = getelementptr inbounds %struct._DrawInfo, ptr %464, i64 0, i32 28
  store i64 %463, ptr %465, align 8, !tbaa !97
  %466 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.37) #24
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %461
  %469 = load ptr, ptr %198, align 8, !tbaa !105
  %470 = getelementptr inbounds %struct._DrawInfo, ptr %469, i64 0, i32 28
  store i64 0, ptr %470, align 8, !tbaa !97
  br label %471

471:                                              ; preds = %468, %461
  %472 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.38) #24
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %471
  %475 = load ptr, ptr %198, align 8, !tbaa !105
  %476 = getelementptr inbounds %struct._DrawInfo, ptr %475, i64 0, i32 28
  store i64 700, ptr %476, align 8, !tbaa !97
  br label %477

477:                                              ; preds = %474, %471
  %478 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.39) #24
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %487

480:                                              ; preds = %477
  %481 = load ptr, ptr %198, align 8, !tbaa !105
  %482 = getelementptr inbounds %struct._DrawInfo, ptr %481, i64 0, i32 28
  %483 = load i64, ptr %482, align 8, !tbaa !97
  %484 = icmp ult i64 %483, 801
  br i1 %484, label %485, label %487

485:                                              ; preds = %480
  %486 = add nuw nsw i64 %483, 100
  store i64 %486, ptr %482, align 8, !tbaa !97
  br label %487

487:                                              ; preds = %480, %485, %477
  %488 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.40) #24
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %497

490:                                              ; preds = %487
  %491 = load ptr, ptr %198, align 8, !tbaa !105
  %492 = getelementptr inbounds %struct._DrawInfo, ptr %491, i64 0, i32 28
  %493 = load i64, ptr %492, align 8, !tbaa !97
  %494 = icmp ugt i64 %493, 99
  br i1 %494, label %495, label %497

495:                                              ; preds = %490
  %496 = add i64 %493, -100
  store i64 %496, ptr %492, align 8, !tbaa !97
  br label %497

497:                                              ; preds = %490, %495, %487
  %498 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.41) #24
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %1267

500:                                              ; preds = %497
  %501 = load ptr, ptr %198, align 8, !tbaa !105
  %502 = getelementptr inbounds %struct._DrawInfo, ptr %501, i64 0, i32 28
  store i64 400, ptr %502, align 8, !tbaa !97
  br label %1267

503:                                              ; preds = %192, %192
  %504 = call i32 @LocaleCompare(ptr noundef nonnull @.str.42, ptr noundef nonnull %22) #24
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %503
  %507 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %507, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1267

508:                                              ; preds = %503
  %509 = call i32 @LocaleCompare(ptr noundef nonnull @.str.43, ptr noundef nonnull %22) #24
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %1267

511:                                              ; preds = %508
  %512 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %512, ptr noundef nonnull %26, ptr noundef %116) #24
  %513 = call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef %116) #24
  %514 = icmp eq i64 %513, -1
  br i1 %514, label %1267, label %515

515:                                              ; preds = %511
  %516 = trunc i64 %513 to i32
  %517 = load ptr, ptr %198, align 8, !tbaa !105
  %518 = getelementptr inbounds %struct._DrawInfo, ptr %517, i64 0, i32 4
  store i32 %516, ptr %518, align 8, !tbaa !80
  br label %1267

519:                                              ; preds = %192, %192
  %520 = call i32 @LocaleCompare(ptr noundef nonnull @.str.44, ptr noundef nonnull %22) #24
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %530

522:                                              ; preds = %519
  %523 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %523, ptr noundef nonnull %26, ptr noundef %116) #24
  %524 = call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef %116) #24
  %525 = icmp eq i64 %524, -1
  br i1 %525, label %1267, label %526

526:                                              ; preds = %522
  %527 = trunc i64 %524 to i32
  %528 = load ptr, ptr %198, align 8, !tbaa !105
  %529 = getelementptr inbounds %struct._DrawInfo, ptr %528, i64 0, i32 20
  store i32 %527, ptr %529, align 4, !tbaa !71
  br label %1267

530:                                              ; preds = %519
  %531 = call i32 @LocaleCompare(ptr noundef nonnull @.str.45, ptr noundef nonnull %22) #24
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %538

533:                                              ; preds = %530
  %534 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %534, ptr noundef nonnull %26, ptr noundef %116) #24
  %535 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %536 = load ptr, ptr %198, align 8, !tbaa !105
  %537 = getelementptr inbounds %struct._DrawInfo, ptr %536, i64 0, i32 47
  store double %535, ptr %537, align 8, !tbaa !77
  br label %1267

538:                                              ; preds = %530
  %539 = call i32 @LocaleCompare(ptr noundef nonnull @.str.46, ptr noundef nonnull %22) #24
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %1267

541:                                              ; preds = %538
  %542 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %542, ptr noundef nonnull %26, ptr noundef %116) #24
  %543 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %544 = load ptr, ptr %198, align 8, !tbaa !105
  %545 = getelementptr inbounds %struct._DrawInfo, ptr %544, i64 0, i32 46
  store double %543, ptr %545, align 8, !tbaa !79
  br label %1267

546:                                              ; preds = %192, %192
  %547 = call i32 @LocaleCompare(ptr noundef nonnull @.str.47, ptr noundef nonnull %22) #24
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %1267

549:                                              ; preds = %546
  %550 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %550, ptr noundef nonnull %26, ptr noundef %116) #24
  %551 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %552 = load ptr, ptr %198, align 8, !tbaa !105
  %553 = getelementptr inbounds %struct._DrawInfo, ptr %552, i64 0, i32 45
  store double %551, ptr %553, align 8, !tbaa !76
  br label %1267

554:                                              ; preds = %192, %192
  %555 = call i32 @LocaleCompare(ptr noundef nonnull @.str.48, ptr noundef nonnull %22) #24
  %556 = icmp ne i32 %555, 0
  %557 = select i1 %556, i32 0, i32 2
  %558 = select i1 %556, i32 0, i32 %176
  br label %1267

559:                                              ; preds = %192, %192
  %560 = call i32 @LocaleCompare(ptr noundef nonnull @.str.49, ptr noundef nonnull %22) #24
  %561 = icmp ne i32 %560, 0
  %562 = select i1 %561, i32 0, i32 12
  %563 = select i1 %561, i32 0, i32 %176
  br label %1267

564:                                              ; preds = %192, %192
  %565 = call i32 @LocaleCompare(ptr noundef nonnull @.str.50, ptr noundef nonnull %22) #24
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %569

567:                                              ; preds = %564
  %568 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %568, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1267

569:                                              ; preds = %564
  %570 = call i32 @LocaleCompare(ptr noundef nonnull @.str.51, ptr noundef nonnull %22) #24
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %1267

572:                                              ; preds = %569
  %573 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %573, ptr noundef nonnull %26, ptr noundef %116) #24
  %574 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %116, i32 noundef 37) #29
  %575 = icmp eq ptr %574, null
  %576 = select i1 %575, double 1.000000e+00, double 1.000000e-02
  %577 = load ptr, ptr %198, align 8, !tbaa !105
  %578 = getelementptr inbounds %struct._DrawInfo, ptr %577, i64 0, i32 40
  %579 = load i16, ptr %578, align 4, !tbaa !57
  %580 = uitofp i16 %579 to double
  %581 = call double @llvm.fmuladd.f64(double %580, double 0xBEF0001000100010, double 1.000000e+00)
  %582 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %583 = fneg double %581
  %584 = fmul double %576, %583
  %585 = call double @llvm.fmuladd.f64(double %584, double %582, double 1.000000e+00)
  %586 = fmul double %585, 6.553500e+04
  %587 = fptrunc double %586 to float
  %588 = fcmp ugt float %587, 0.000000e+00
  br i1 %588, label %589, label %594

589:                                              ; preds = %572
  %590 = fcmp ult float %587, 6.553500e+04
  br i1 %590, label %591, label %594

591:                                              ; preds = %589
  %592 = fadd float %587, 5.000000e-01
  %593 = fptoui float %592 to i16
  br label %594

594:                                              ; preds = %572, %589, %591
  %595 = phi i16 [ %593, %591 ], [ 0, %572 ], [ -1, %589 ]
  %596 = load ptr, ptr %198, align 8, !tbaa !105
  %597 = getelementptr inbounds %struct._DrawInfo, ptr %596, i64 0, i32 40
  store i16 %595, ptr %597, align 4, !tbaa !57
  %598 = getelementptr inbounds %struct._DrawInfo, ptr %596, i64 0, i32 5, i32 3
  store i16 %595, ptr %598, align 2, !tbaa !175
  %599 = getelementptr inbounds %struct._DrawInfo, ptr %596, i64 0, i32 6, i32 3
  store i16 %595, ptr %599, align 2, !tbaa !176
  br label %1267

600:                                              ; preds = %192, %192
  %601 = call i32 @LocaleCompare(ptr noundef nonnull @.str.52, ptr noundef nonnull %22) #24
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %1267, label %603

603:                                              ; preds = %600
  %604 = call i32 @LocaleCompare(ptr noundef nonnull @.str.53, ptr noundef nonnull %22) #24
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %1267, label %606

606:                                              ; preds = %603
  %607 = call i32 @LocaleCompare(ptr noundef nonnull @.str.54, ptr noundef nonnull %22) #24
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %1267, label %609

609:                                              ; preds = %606
  %610 = call i32 @LocaleCompare(ptr noundef nonnull @.str.55, ptr noundef nonnull %22) #24
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %1267, label %612

612:                                              ; preds = %609
  %613 = call i32 @LocaleCompare(ptr noundef nonnull @.str.56, ptr noundef nonnull %22) #24
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %655

615:                                              ; preds = %612
  %616 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %616, ptr noundef nonnull %26, ptr noundef %116) #24
  %617 = call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef %116) #24
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %1267, label %619

619:                                              ; preds = %615
  %620 = call i32 @LocaleCompare(ptr noundef nonnull @.str.57, ptr noundef %116) #24
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %1267, label %622

622:                                              ; preds = %619
  %623 = call i32 @LocaleCompare(ptr noundef nonnull @.str.58, ptr noundef %116) #24
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %1267, label %625

625:                                              ; preds = %622
  %626 = call i32 @LocaleCompare(ptr noundef nonnull @.str.59, ptr noundef %116) #24
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %651

628:                                              ; preds = %625
  %629 = icmp slt i64 %177, 1
  br i1 %629, label %630, label %632

630:                                              ; preds = %628
  %631 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %117, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2311, i32 noundef 460, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.3, ptr noundef %116) #24
  br label %1267

632:                                              ; preds = %628
  %633 = load ptr, ptr %198, align 8, !tbaa !105
  %634 = getelementptr inbounds %struct._DrawInfo, ptr %633, i64 0, i32 37
  %635 = load ptr, ptr %634, align 8, !tbaa !109
  %636 = icmp eq ptr %635, null
  br i1 %636, label %647, label %637

637:                                              ; preds = %632
  %638 = add nsw i64 %177, -1
  %639 = getelementptr inbounds ptr, ptr %175, i64 %638
  %640 = load ptr, ptr %639, align 8, !tbaa !105
  %641 = getelementptr inbounds %struct._DrawInfo, ptr %640, i64 0, i32 37
  %642 = load ptr, ptr %641, align 8, !tbaa !109
  %643 = call i32 @LocaleCompare(ptr noundef nonnull %635, ptr noundef %642) #24
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %647, label %645

645:                                              ; preds = %637
  %646 = call i32 @SetImageClipMask(ptr noundef %0, ptr noundef null) #24
  br label %647

647:                                              ; preds = %637, %645, %632
  %648 = load ptr, ptr %198, align 8, !tbaa !105
  %649 = call ptr @DestroyDrawInfo(ptr noundef %648)
  store ptr %649, ptr %198, align 8, !tbaa !105
  %650 = add nsw i64 %177, -1
  br label %1267

651:                                              ; preds = %625
  %652 = call i32 @LocaleCompare(ptr noundef nonnull @.str.61, ptr noundef %116) #24
  %653 = icmp eq i32 %652, 0
  %654 = select i1 %653, i32 %176, i32 0
  br label %1267

655:                                              ; preds = %612
  %656 = call i32 @LocaleCompare(ptr noundef nonnull @.str.62, ptr noundef nonnull %22) #24
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %1267

658:                                              ; preds = %655
  %659 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %659, ptr noundef nonnull %26, ptr noundef %116) #24
  %660 = call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef %116) #24
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %689

662:                                              ; preds = %658
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %28) #24
  %663 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %663, ptr noundef nonnull %26, ptr noundef %116) #24
  %664 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %28, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %116) #24
  %665 = load ptr, ptr %26, align 8, !tbaa !105
  %666 = load i8, ptr %665, align 1, !tbaa !164
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %680, label %668

668:                                              ; preds = %662, %672
  %669 = phi ptr [ %673, %672 ], [ %665, %662 ]
  call void @GetMagickToken(ptr noundef nonnull %669, ptr noundef nonnull %26, ptr noundef %116) #24
  %670 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.56) #24
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %676, label %672

672:                                              ; preds = %668, %676
  %673 = load ptr, ptr %26, align 8, !tbaa !105
  %674 = load i8, ptr %673, align 1, !tbaa !164
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %680, label %668, !llvm.loop !177

676:                                              ; preds = %668
  %677 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %677, ptr noundef null, ptr noundef %116) #24
  %678 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.18) #24
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %672

680:                                              ; preds = %672, %676, %662
  %681 = load ptr, ptr %26, align 8, !tbaa !105
  %682 = ptrtoint ptr %681 to i64
  %683 = ptrtoint ptr %665 to i64
  %684 = sub i64 %682, %683
  %685 = add i64 %684, -3
  %686 = call i64 @CopyMagickString(ptr noundef %116, ptr noundef nonnull %665, i64 noundef %685) #24
  %687 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %28, ptr noundef %116) #24
  %688 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %688, ptr noundef nonnull %26, ptr noundef %116) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %28) #24
  br label %1267

689:                                              ; preds = %658
  %690 = call i32 @LocaleCompare(ptr noundef nonnull @.str.58, ptr noundef %116) #24
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %792

692:                                              ; preds = %689
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %29) #24
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %30) #24
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %31) #24
  %693 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %693, ptr noundef nonnull %26, ptr noundef %116) #24
  %694 = call i64 @CopyMagickString(ptr noundef nonnull %30, ptr noundef %116, i64 noundef 4096) #24
  %695 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %695, ptr noundef nonnull %26, ptr noundef %116) #24
  %696 = call i64 @CopyMagickString(ptr noundef nonnull %31, ptr noundef %116, i64 noundef 4096) #24
  %697 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %697, ptr noundef nonnull %26, ptr noundef %116) #24
  %698 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %699 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %699, ptr noundef nonnull %26, ptr noundef %116) #24
  %700 = load i8, ptr %116, align 1, !tbaa !164
  %701 = icmp eq i8 %700, 44
  br i1 %701, label %702, label %704

702:                                              ; preds = %692
  %703 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %703, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %704

704:                                              ; preds = %702, %692
  %705 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %706 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %706, ptr noundef nonnull %26, ptr noundef %116) #24
  %707 = load i8, ptr %116, align 1, !tbaa !164
  %708 = icmp eq i8 %707, 44
  br i1 %708, label %709, label %711

709:                                              ; preds = %704
  %710 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %710, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %711

711:                                              ; preds = %709, %704
  %712 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %713 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %713, ptr noundef nonnull %26, ptr noundef %116) #24
  %714 = load i8, ptr %116, align 1, !tbaa !164
  %715 = icmp eq i8 %714, 44
  br i1 %715, label %716, label %718

716:                                              ; preds = %711
  %717 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %717, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %718

718:                                              ; preds = %716, %711
  %719 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %720 = call i32 @LocaleCompare(ptr noundef nonnull %31, ptr noundef nonnull @.str.63) #24
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %728

722:                                              ; preds = %718
  %723 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %723, ptr noundef nonnull %26, ptr noundef %116) #24
  %724 = load i8, ptr %116, align 1, !tbaa !164
  %725 = icmp eq i8 %724, 44
  br i1 %725, label %726, label %728

726:                                              ; preds = %722
  %727 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %727, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %728

728:                                              ; preds = %722, %726, %718
  %729 = load ptr, ptr %26, align 8, !tbaa !105
  %730 = load i8, ptr %729, align 1, !tbaa !164
  %731 = icmp eq i8 %730, 0
  br i1 %731, label %744, label %732

732:                                              ; preds = %728, %736
  %733 = phi ptr [ %737, %736 ], [ %729, %728 ]
  call void @GetMagickToken(ptr noundef nonnull %733, ptr noundef nonnull %26, ptr noundef %116) #24
  %734 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.56) #24
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %740, label %736

736:                                              ; preds = %732, %740
  %737 = load ptr, ptr %26, align 8, !tbaa !105
  %738 = load i8, ptr %737, align 1, !tbaa !164
  %739 = icmp eq i8 %738, 0
  br i1 %739, label %744, label %732, !llvm.loop !178

740:                                              ; preds = %732
  %741 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %741, ptr noundef null, ptr noundef %116) #24
  %742 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.58) #24
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %736

744:                                              ; preds = %736, %740, %728
  %745 = load ptr, ptr %26, align 8, !tbaa !105
  %746 = ptrtoint ptr %745 to i64
  %747 = ptrtoint ptr %729 to i64
  %748 = sub i64 %746, %747
  %749 = add i64 %748, -3
  %750 = call i64 @CopyMagickString(ptr noundef %116, ptr noundef nonnull %729, i64 noundef %749) #24
  %751 = load ptr, ptr %198, align 8, !tbaa !105
  %752 = getelementptr inbounds %struct._DrawInfo, ptr %751, i64 0, i32 3
  %753 = load double, ptr %752, align 8, !tbaa !179
  %754 = getelementptr inbounds %struct._DrawInfo, ptr %751, i64 0, i32 3, i32 2
  %755 = load double, ptr %754, align 8, !tbaa !180
  %756 = fmul double %705, %755
  %757 = call double @llvm.fmuladd.f64(double %753, double %698, double %756)
  %758 = getelementptr inbounds %struct._DrawInfo, ptr %751, i64 0, i32 3, i32 4
  %759 = load double, ptr %758, align 8, !tbaa !181
  %760 = fadd double %759, %757
  %761 = getelementptr inbounds %struct._DrawInfo, ptr %751, i64 0, i32 3, i32 1
  %762 = load double, ptr %761, align 8, !tbaa !182
  %763 = getelementptr inbounds %struct._DrawInfo, ptr %751, i64 0, i32 3, i32 3
  %764 = load double, ptr %763, align 8, !tbaa !183
  %765 = fmul double %705, %764
  %766 = call double @llvm.fmuladd.f64(double %762, double %698, double %765)
  %767 = getelementptr inbounds %struct._DrawInfo, ptr %751, i64 0, i32 3, i32 5
  %768 = load double, ptr %767, align 8, !tbaa !184
  %769 = fadd double %768, %766
  %770 = fmul double %719, %755
  %771 = call double @llvm.fmuladd.f64(double %753, double %712, double %770)
  %772 = fadd double %759, %771
  %773 = fmul double %719, %764
  %774 = call double @llvm.fmuladd.f64(double %762, double %712, double %773)
  %775 = fadd double %768, %774
  %776 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %29, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %30) #24
  %777 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %29, ptr noundef %116) #24
  %778 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %29, i64 noundef 4096, ptr noundef nonnull @.str.64, ptr noundef nonnull %30) #24
  %779 = fsub double %772, %760
  %780 = fadd double %779, 1.000000e+00
  %781 = call double @llvm.fabs.f64(double %780)
  %782 = fcmp ogt double %781, 1.000000e+00
  %783 = select i1 %782, double %781, double 1.000000e+00
  %784 = fsub double %775, %769
  %785 = fadd double %784, 1.000000e+00
  %786 = call double @llvm.fabs.f64(double %785)
  %787 = fcmp ogt double %786, 1.000000e+00
  %788 = select i1 %787, double %786, double 1.000000e+00
  %789 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %23, i64 noundef 4096, ptr noundef nonnull @.str.65, double noundef %783, double noundef %788, double noundef %760, double noundef %769) #24
  %790 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %23) #24
  %791 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %791, ptr noundef nonnull %26, ptr noundef %116) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %30) #24
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %29) #24
  br label %1267

792:                                              ; preds = %689
  %793 = call i32 @LocaleCompare(ptr noundef nonnull @.str.61, ptr noundef %116) #24
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %795, label %865

795:                                              ; preds = %792
  %796 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %796, ptr noundef nonnull %26, ptr noundef %116) #24
  %797 = call i64 @CopyMagickString(ptr noundef nonnull %24, ptr noundef %116, i64 noundef 4096) #24
  %798 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %798, ptr noundef nonnull %26, ptr noundef %116) #24
  %799 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %800 = fadd double %799, -5.000000e-01
  %801 = call double @llvm.ceil.f64(double %800)
  %802 = fptosi double %801 to i64
  %803 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %803, ptr noundef nonnull %26, ptr noundef %116) #24
  %804 = load i8, ptr %116, align 1, !tbaa !164
  %805 = icmp eq i8 %804, 44
  br i1 %805, label %806, label %808

806:                                              ; preds = %795
  %807 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %807, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %808

808:                                              ; preds = %806, %795
  %809 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %810 = fadd double %809, -5.000000e-01
  %811 = call double @llvm.ceil.f64(double %810)
  %812 = fptosi double %811 to i64
  %813 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %813, ptr noundef nonnull %26, ptr noundef %116) #24
  %814 = load i8, ptr %116, align 1, !tbaa !164
  %815 = icmp eq i8 %814, 44
  br i1 %815, label %816, label %818

816:                                              ; preds = %808
  %817 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %817, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %818

818:                                              ; preds = %816, %808
  %819 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %820 = fadd double %819, 5.000000e-01
  %821 = call double @llvm.floor.f64(double %820)
  %822 = fptoui double %821 to i64
  %823 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %823, ptr noundef nonnull %26, ptr noundef %116) #24
  %824 = load i8, ptr %116, align 1, !tbaa !164
  %825 = icmp eq i8 %824, 44
  br i1 %825, label %826, label %828

826:                                              ; preds = %818
  %827 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %827, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %828

828:                                              ; preds = %826, %818
  %829 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %830 = fadd double %829, 5.000000e-01
  %831 = call double @llvm.floor.f64(double %830)
  %832 = fptoui double %831 to i64
  %833 = load ptr, ptr %26, align 8, !tbaa !105
  %834 = load i8, ptr %833, align 1, !tbaa !164
  %835 = icmp eq i8 %834, 0
  br i1 %835, label %848, label %836

836:                                              ; preds = %828, %840
  %837 = phi ptr [ %841, %840 ], [ %833, %828 ]
  call void @GetMagickToken(ptr noundef nonnull %837, ptr noundef nonnull %26, ptr noundef %116) #24
  %838 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.56) #24
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %844, label %840

840:                                              ; preds = %836, %844
  %841 = load ptr, ptr %26, align 8, !tbaa !105
  %842 = load i8, ptr %841, align 1, !tbaa !164
  %843 = icmp eq i8 %842, 0
  br i1 %843, label %848, label %836, !llvm.loop !185

844:                                              ; preds = %836
  %845 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %845, ptr noundef null, ptr noundef %116) #24
  %846 = call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.61) #24
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %848, label %840

848:                                              ; preds = %840, %844, %828
  %849 = load ptr, ptr %26, align 8, !tbaa !105
  %850 = ptrtoint ptr %849 to i64
  %851 = ptrtoint ptr %833 to i64
  %852 = sub i64 %850, %851
  %853 = add i64 %852, -3
  %854 = call i64 @CopyMagickString(ptr noundef %116, ptr noundef nonnull %833, i64 noundef %853) #24
  %855 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %21, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %24) #24
  %856 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %116) #24
  %857 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %21, i64 noundef 4096, ptr noundef nonnull @.str.64, ptr noundef nonnull %24) #24
  %858 = uitofp i64 %822 to double
  %859 = uitofp i64 %832 to double
  %860 = sitofp i64 %802 to double
  %861 = sitofp i64 %812 to double
  %862 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %23, i64 noundef 4096, ptr noundef nonnull @.str.66, double noundef %858, double noundef %859, double noundef %860, double noundef %861) #24
  %863 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %23) #24
  %864 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %864, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1267

865:                                              ; preds = %792
  %866 = call i32 @LocaleCompare(ptr noundef nonnull @.str.59, ptr noundef %116) #24
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %868, label %880

868:                                              ; preds = %865
  %869 = add nsw i64 %177, 1
  %870 = add nsw i64 %177, 2
  %871 = call ptr @ResizeQuantumMemory(ptr noundef %175, i64 noundef %870, i64 noundef 8) #30
  %872 = icmp eq ptr %871, null
  br i1 %872, label %873, label %875

873:                                              ; preds = %868
  %874 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %117, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2477, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %133) #24
  br label %1267

875:                                              ; preds = %868
  %876 = getelementptr inbounds ptr, ptr %871, i64 %177
  %877 = load ptr, ptr %876, align 8, !tbaa !105
  %878 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %877)
  %879 = getelementptr inbounds ptr, ptr %871, i64 %869
  store ptr %878, ptr %879, align 8, !tbaa !105
  br label %1267

880:                                              ; preds = %865
  %881 = call i32 @LocaleCompare(ptr noundef nonnull @.str.57, ptr noundef %116) #24
  %882 = icmp eq i32 %881, 0
  %883 = select i1 %882, i32 %176, i32 0
  br label %1267

884:                                              ; preds = %192, %192
  %885 = call i32 @LocaleCompare(ptr noundef nonnull @.str.67, ptr noundef nonnull %22) #24
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %1267, label %887

887:                                              ; preds = %884
  %888 = call i32 @LocaleCompare(ptr noundef nonnull @.str.68, ptr noundef nonnull %22) #24
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %910

890:                                              ; preds = %887
  %891 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %891, ptr noundef nonnull %26, ptr noundef %116) #24
  %892 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %893 = call double @fmod(double noundef %892, double noundef 3.600000e+02) #24
  %894 = fmul double %893, 0x400921FB54442D18
  %895 = fdiv double %894, 1.800000e+02
  %896 = call double @cos(double noundef %895) #24
  store double %896, ptr %19, align 8, !tbaa !38
  %897 = call double @fmod(double noundef %892, double noundef 3.600000e+02) #24
  %898 = fmul double %897, 0x400921FB54442D18
  %899 = fdiv double %898, 1.800000e+02
  %900 = call double @sin(double noundef %899) #24
  store double %900, ptr %131, align 8, !tbaa !129
  %901 = call double @fmod(double noundef %892, double noundef 3.600000e+02) #24
  %902 = fmul double %901, 0x400921FB54442D18
  %903 = fdiv double %902, 1.800000e+02
  %904 = call double @sin(double noundef %903) #24
  %905 = fneg double %904
  store double %905, ptr %132, align 8, !tbaa !127
  %906 = call double @fmod(double noundef %892, double noundef 3.600000e+02) #24
  %907 = fmul double %906, 0x400921FB54442D18
  %908 = fdiv double %907, 1.800000e+02
  %909 = call double @cos(double noundef %908) #24
  store double %909, ptr %125, align 8, !tbaa !41
  br label %1267

910:                                              ; preds = %887
  %911 = call i32 @LocaleCompare(ptr noundef nonnull @.str.69, ptr noundef nonnull %22) #24
  %912 = icmp ne i32 %911, 0
  %913 = select i1 %912, i32 0, i32 4
  %914 = select i1 %912, i32 0, i32 %176
  br label %1267

915:                                              ; preds = %192, %192
  %916 = call i32 @LocaleCompare(ptr noundef nonnull @.str.70, ptr noundef nonnull %22) #24
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %918, label %928

918:                                              ; preds = %915
  %919 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %919, ptr noundef nonnull %26, ptr noundef %116) #24
  %920 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %920, ptr %19, align 8, !tbaa !38
  %921 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %921, ptr noundef nonnull %26, ptr noundef %116) #24
  %922 = load i8, ptr %116, align 1, !tbaa !164
  %923 = icmp eq i8 %922, 44
  br i1 %923, label %924, label %926

924:                                              ; preds = %918
  %925 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %925, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %926

926:                                              ; preds = %924, %918
  %927 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %927, ptr %125, align 8, !tbaa !41
  br label %1267

928:                                              ; preds = %915
  %929 = call i32 @LocaleCompare(ptr noundef nonnull @.str.71, ptr noundef nonnull %22) #24
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %931, label %937

931:                                              ; preds = %928
  %932 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %932, ptr noundef nonnull %26, ptr noundef %116) #24
  %933 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %934 = fmul double %933, 0x400921FB54442D18
  %935 = fdiv double %934, 1.800000e+02
  %936 = call double @sin(double noundef %935) #24
  store double %936, ptr %130, align 8, !tbaa !127
  br label %1267

937:                                              ; preds = %928
  %938 = call i32 @LocaleCompare(ptr noundef nonnull @.str.72, ptr noundef nonnull %22) #24
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %940, label %948

940:                                              ; preds = %937
  %941 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %941, ptr noundef nonnull %26, ptr noundef %116) #24
  %942 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %943 = fmul double %942, 0x400921FB54442D18
  %944 = fdiv double %943, 1.800000e+02
  %945 = fmul double %944, 5.000000e-01
  %946 = call double @tan(double noundef %945) #24
  %947 = fneg double %946
  store double %947, ptr %129, align 8, !tbaa !129
  br label %1267

948:                                              ; preds = %937
  %949 = call i32 @LocaleCompare(ptr noundef nonnull @.str.73, ptr noundef nonnull %22) #24
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %957

951:                                              ; preds = %948
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #24
  %952 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %952, ptr noundef nonnull %26, ptr noundef %116) #24
  %953 = call i32 @QueryColorDatabase(ptr noundef %116, ptr noundef nonnull %32, ptr noundef nonnull %117) #24
  %954 = call i32 @GradientImage(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %27, ptr noundef nonnull %32) #24
  %955 = load i64, ptr %32, align 8
  store i64 %955, ptr %27, align 8
  %956 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %956, ptr noundef nonnull %26, ptr noundef %116) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #24
  br label %1267

957:                                              ; preds = %948
  %958 = call i32 @LocaleCompare(ptr noundef nonnull @.str.74, ptr noundef nonnull %22) #24
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %982

960:                                              ; preds = %957
  %961 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %961, ptr noundef nonnull %26, ptr noundef %116) #24
  %962 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %25, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %116) #24
  %963 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %25) #24
  %964 = icmp eq ptr %963, null
  %965 = load ptr, ptr %198, align 8, !tbaa !105
  br i1 %964, label %969, label %966

966:                                              ; preds = %960
  %967 = getelementptr inbounds %struct._DrawInfo, ptr %965, i64 0, i32 11
  %968 = call i32 @DrawPatternPath(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %116, ptr noundef nonnull %967), !range !163
  br label %1267

969:                                              ; preds = %960
  %970 = getelementptr inbounds %struct._DrawInfo, ptr %965, i64 0, i32 6
  %971 = call i32 @QueryColorDatabase(ptr noundef %116, ptr noundef nonnull %970, ptr noundef nonnull %117) #24
  %972 = and i32 %971, %176
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %974, label %1267

974:                                              ; preds = %969
  %975 = call ptr @AcquireImageInfo() #24
  %976 = getelementptr inbounds %struct._ImageInfo, ptr %975, i64 0, i32 51
  %977 = call i64 @CopyMagickString(ptr noundef nonnull %976, ptr noundef %116, i64 noundef 4096) #24
  %978 = call ptr @ReadImage(ptr noundef %975, ptr noundef nonnull %117) #24
  %979 = load ptr, ptr %198, align 8, !tbaa !105
  %980 = getelementptr inbounds %struct._DrawInfo, ptr %979, i64 0, i32 11
  store ptr %978, ptr %980, align 8, !tbaa !90
  call void @CatchException(ptr noundef nonnull %117) #24
  %981 = call ptr @DestroyImageInfo(ptr noundef %975) #24
  br label %1267

982:                                              ; preds = %957
  %983 = call i32 @LocaleCompare(ptr noundef nonnull @.str.75, ptr noundef nonnull %22) #24
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %992

985:                                              ; preds = %982
  %986 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %986, ptr noundef nonnull %26, ptr noundef %116) #24
  %987 = call i64 @strtol(ptr nocapture noundef %116, ptr noundef null, i32 noundef 10) #24
  %988 = icmp ne i64 %987, 0
  %989 = zext i1 %988 to i32
  %990 = load ptr, ptr %198, align 8, !tbaa !105
  %991 = getelementptr inbounds %struct._DrawInfo, ptr %990, i64 0, i32 12
  store i32 %989, ptr %991, align 8, !tbaa !48
  br label %1267

992:                                              ; preds = %982
  %993 = call i32 @LocaleCompare(ptr noundef nonnull @.str.76, ptr noundef nonnull %22) #24
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %1094

995:                                              ; preds = %992
  %996 = load ptr, ptr %198, align 8, !tbaa !105
  %997 = getelementptr inbounds %struct._DrawInfo, ptr %996, i64 0, i32 36
  %998 = load ptr, ptr %997, align 8, !tbaa !100
  %999 = icmp eq ptr %998, null
  br i1 %999, label %1004, label %1000

1000:                                             ; preds = %995
  %1001 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %998) #24
  %1002 = load ptr, ptr %198, align 8, !tbaa !105
  %1003 = getelementptr inbounds %struct._DrawInfo, ptr %1002, i64 0, i32 36
  store ptr %1001, ptr %1003, align 8, !tbaa !100
  br label %1004

1004:                                             ; preds = %1000, %995
  %1005 = load ptr, ptr %26, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #24
  %1006 = call double @InterpretLocaleValue(ptr noundef %1005, ptr noundef nonnull %18) #24
  %1007 = fcmp oeq double %1006, 0.000000e+00
  %1008 = load ptr, ptr %18, align 8
  %1009 = icmp eq ptr %1008, %1005
  %1010 = select i1 %1007, i1 %1009, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #24
  br i1 %1010, label %1092, label %1011

1011:                                             ; preds = %1004
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #24
  %1012 = load ptr, ptr %26, align 8, !tbaa !105
  store ptr %1012, ptr %33, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1012, ptr noundef nonnull %33, ptr noundef %116) #24
  %1013 = load i8, ptr %116, align 1, !tbaa !164
  %1014 = icmp eq i8 %1013, 44
  br i1 %1014, label %1015, label %1017

1015:                                             ; preds = %1011
  %1016 = load ptr, ptr %33, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1016, ptr noundef nonnull %33, ptr noundef %116) #24
  br label %1017

1017:                                             ; preds = %1015, %1011
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #24
  %1018 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef nonnull %17) #24
  %1019 = fcmp oeq double %1018, 0.000000e+00
  %1020 = load ptr, ptr %17, align 8
  %1021 = icmp eq ptr %1020, %116
  %1022 = select i1 %1019, i1 %1021, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #24
  br i1 %1022, label %1037, label %1023

1023:                                             ; preds = %1017, %1030
  %1024 = phi i64 [ %1031, %1030 ], [ 0, %1017 ]
  %1025 = load ptr, ptr %33, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1025, ptr noundef nonnull %33, ptr noundef %116) #24
  %1026 = load i8, ptr %116, align 1, !tbaa !164
  %1027 = icmp eq i8 %1026, 44
  br i1 %1027, label %1028, label %1030

1028:                                             ; preds = %1023
  %1029 = load ptr, ptr %33, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1029, ptr noundef nonnull %33, ptr noundef %116) #24
  br label %1030

1030:                                             ; preds = %1023, %1028
  %1031 = add nuw nsw i64 %1024, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #24
  %1032 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef nonnull %17) #24
  %1033 = fcmp oeq double %1032, 0.000000e+00
  %1034 = load ptr, ptr %17, align 8
  %1035 = icmp eq ptr %1034, %116
  %1036 = select i1 %1033, i1 %1035, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #24
  br i1 %1036, label %1037, label %1023, !llvm.loop !186

1037:                                             ; preds = %1030, %1017
  %1038 = phi i64 [ 0, %1017 ], [ %1031, %1030 ]
  %1039 = shl nuw i64 %1038, 1
  %1040 = or disjoint i64 %1039, 1
  %1041 = call ptr @AcquireQuantumMemory(i64 noundef %1040, i64 noundef 8) #27
  %1042 = load ptr, ptr %198, align 8, !tbaa !105
  %1043 = getelementptr inbounds %struct._DrawInfo, ptr %1042, i64 0, i32 36
  store ptr %1041, ptr %1043, align 8, !tbaa !100
  %1044 = load ptr, ptr %198, align 8, !tbaa !105
  %1045 = getelementptr inbounds %struct._DrawInfo, ptr %1044, i64 0, i32 36
  %1046 = load ptr, ptr %1045, align 8, !tbaa !100
  %1047 = icmp eq ptr %1046, null
  br i1 %1047, label %1050, label %1048

1048:                                             ; preds = %1037
  %1049 = icmp eq i64 %1038, 0
  br i1 %1049, label %1067, label %1052

1050:                                             ; preds = %1037
  %1051 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %117, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2619, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %128) #24
  br label %1091

1052:                                             ; preds = %1048, %1059
  %1053 = phi i64 [ %1065, %1059 ], [ 0, %1048 ]
  %1054 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1054, ptr noundef nonnull %26, ptr noundef %116) #24
  %1055 = load i8, ptr %116, align 1, !tbaa !164
  %1056 = icmp eq i8 %1055, 44
  br i1 %1056, label %1057, label %1059

1057:                                             ; preds = %1052
  %1058 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1058, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1059

1059:                                             ; preds = %1057, %1052
  %1060 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1061 = load ptr, ptr %198, align 8, !tbaa !105
  %1062 = getelementptr inbounds %struct._DrawInfo, ptr %1061, i64 0, i32 36
  %1063 = load ptr, ptr %1062, align 8, !tbaa !100
  %1064 = getelementptr inbounds double, ptr %1063, i64 %1053
  store double %1060, ptr %1064, align 8, !tbaa !87
  %1065 = add nuw i64 %1053, 1
  %1066 = icmp eq i64 %1065, %1038
  br i1 %1066, label %1067, label %1052, !llvm.loop !187

1067:                                             ; preds = %1059, %1048
  %1068 = phi i64 [ 0, %1048 ], [ %1038, %1059 ]
  %1069 = and i64 %1038, 1
  %1070 = icmp ne i64 %1069, 0
  %1071 = icmp slt i64 %1068, %1039
  %1072 = and i1 %1070, %1071
  br i1 %1072, label %1073, label %1085

1073:                                             ; preds = %1067
  %1074 = load ptr, ptr %198, align 8, !tbaa !105
  %1075 = getelementptr inbounds %struct._DrawInfo, ptr %1074, i64 0, i32 36
  %1076 = load ptr, ptr %1075, align 8, !tbaa !100
  br label %1077

1077:                                             ; preds = %1073, %1077
  %1078 = phi i64 [ %1068, %1073 ], [ %1083, %1077 ]
  %1079 = sub nuw nsw i64 %1078, %1038
  %1080 = getelementptr inbounds double, ptr %1076, i64 %1079
  %1081 = load double, ptr %1080, align 8, !tbaa !87
  %1082 = getelementptr inbounds double, ptr %1076, i64 %1078
  store double %1081, ptr %1082, align 8, !tbaa !87
  %1083 = add nuw nsw i64 %1078, 1
  %1084 = icmp eq i64 %1083, %1039
  br i1 %1084, label %1085, label %1077, !llvm.loop !188

1085:                                             ; preds = %1077, %1067
  %1086 = phi i64 [ %1068, %1067 ], [ %1083, %1077 ]
  %1087 = load ptr, ptr %198, align 8, !tbaa !105
  %1088 = getelementptr inbounds %struct._DrawInfo, ptr %1087, i64 0, i32 36
  %1089 = load ptr, ptr %1088, align 8, !tbaa !100
  %1090 = getelementptr inbounds double, ptr %1089, i64 %1086
  store double 0.000000e+00, ptr %1090, align 8, !tbaa !87
  br label %1091

1091:                                             ; preds = %1085, %1050
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #24
  br label %1267

1092:                                             ; preds = %1004
  %1093 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1093, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1267

1094:                                             ; preds = %992
  %1095 = call i32 @LocaleCompare(ptr noundef nonnull @.str.77, ptr noundef nonnull %22) #24
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1094
  %1098 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1098, ptr noundef nonnull %26, ptr noundef %116) #24
  %1099 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1100 = load ptr, ptr %198, align 8, !tbaa !105
  %1101 = getelementptr inbounds %struct._DrawInfo, ptr %1100, i64 0, i32 18
  store double %1099, ptr %1101, align 8, !tbaa !91
  br label %1267

1102:                                             ; preds = %1094
  %1103 = call i32 @LocaleCompare(ptr noundef nonnull @.str.78, ptr noundef nonnull %22) #24
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1105, label %1113

1105:                                             ; preds = %1102
  %1106 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1106, ptr noundef nonnull %26, ptr noundef %116) #24
  %1107 = call i64 @ParseCommandOption(i32 noundef 36, i32 noundef 0, ptr noundef %116) #24
  %1108 = icmp eq i64 %1107, -1
  br i1 %1108, label %1267, label %1109

1109:                                             ; preds = %1105
  %1110 = trunc i64 %1107 to i32
  %1111 = load ptr, ptr %198, align 8, !tbaa !105
  %1112 = getelementptr inbounds %struct._DrawInfo, ptr %1111, i64 0, i32 15
  store i32 %1110, ptr %1112, align 4, !tbaa !59
  br label %1267

1113:                                             ; preds = %1102
  %1114 = call i32 @LocaleCompare(ptr noundef nonnull @.str.79, ptr noundef nonnull %22) #24
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1116, label %1124

1116:                                             ; preds = %1113
  %1117 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1117, ptr noundef nonnull %26, ptr noundef %116) #24
  %1118 = call i64 @ParseCommandOption(i32 noundef 37, i32 noundef 0, ptr noundef %116) #24
  %1119 = icmp eq i64 %1118, -1
  br i1 %1119, label %1267, label %1120

1120:                                             ; preds = %1116
  %1121 = trunc i64 %1118 to i32
  %1122 = load ptr, ptr %198, align 8, !tbaa !105
  %1123 = getelementptr inbounds %struct._DrawInfo, ptr %1122, i64 0, i32 16
  store i32 %1121, ptr %1123, align 8, !tbaa !60
  br label %1267

1124:                                             ; preds = %1113
  %1125 = call i32 @LocaleCompare(ptr noundef nonnull @.str.80, ptr noundef nonnull %22) #24
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1127, label %1132

1127:                                             ; preds = %1124
  %1128 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1128, ptr noundef nonnull %26, ptr noundef %116) #24
  %1129 = call i64 @strtoul(ptr nocapture noundef %116, ptr noundef null, i32 noundef 10) #24
  %1130 = load ptr, ptr %198, align 8, !tbaa !105
  %1131 = getelementptr inbounds %struct._DrawInfo, ptr %1130, i64 0, i32 17
  store i64 %1129, ptr %1131, align 8, !tbaa !61
  br label %1267

1132:                                             ; preds = %1124
  %1133 = call i32 @LocaleCompare(ptr noundef nonnull @.str.81, ptr noundef nonnull %22) #24
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1135, label %1155

1135:                                             ; preds = %1132
  %1136 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1136, ptr noundef nonnull %26, ptr noundef %116) #24
  %1137 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %116, i32 noundef 37) #29
  %1138 = icmp eq ptr %1137, null
  %1139 = select i1 %1138, double 1.000000e+00, double 1.000000e-02
  %1140 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1141 = fneg double %1139
  %1142 = call double @llvm.fmuladd.f64(double %1141, double %1140, double 1.000000e+00)
  %1143 = fmul double %1142, 6.553500e+04
  %1144 = fptrunc double %1143 to float
  %1145 = fcmp ugt float %1144, 0.000000e+00
  br i1 %1145, label %1146, label %1151

1146:                                             ; preds = %1135
  %1147 = fcmp ult float %1144, 6.553500e+04
  br i1 %1147, label %1148, label %1151

1148:                                             ; preds = %1146
  %1149 = fadd float %1144, 5.000000e-01
  %1150 = fptoui float %1149 to i16
  br label %1151

1151:                                             ; preds = %1135, %1146, %1148
  %1152 = phi i16 [ %1150, %1148 ], [ 0, %1135 ], [ -1, %1146 ]
  %1153 = load ptr, ptr %198, align 8, !tbaa !105
  %1154 = getelementptr inbounds %struct._DrawInfo, ptr %1153, i64 0, i32 6, i32 3
  store i16 %1152, ptr %1154, align 2, !tbaa !176
  br label %1267

1155:                                             ; preds = %1132
  %1156 = call i32 @LocaleCompare(ptr noundef nonnull @.str.82, ptr noundef nonnull %22) #24
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1158, label %1267

1158:                                             ; preds = %1155
  %1159 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1159, ptr noundef nonnull %26, ptr noundef %116) #24
  %1160 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1161 = load ptr, ptr %198, align 8, !tbaa !105
  %1162 = getelementptr inbounds %struct._DrawInfo, ptr %1161, i64 0, i32 7
  store double %1160, ptr %1162, align 8, !tbaa !56
  br label %1267

1163:                                             ; preds = %192, %192
  %1164 = call i32 @LocaleCompare(ptr noundef nonnull @.str.83, ptr noundef nonnull %22) #24
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1267, label %1166

1166:                                             ; preds = %1163
  %1167 = call i32 @LocaleCompare(ptr noundef nonnull @.str.84, ptr noundef nonnull %22) #24
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1177

1169:                                             ; preds = %1166
  %1170 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1170, ptr noundef nonnull %26, ptr noundef %116) #24
  %1171 = call i64 @ParseCommandOption(i32 noundef 0, i32 noundef 0, ptr noundef %116) #24
  %1172 = icmp eq i64 %1171, -1
  br i1 %1172, label %1267, label %1173

1173:                                             ; preds = %1169
  %1174 = trunc i64 %1171 to i32
  %1175 = load ptr, ptr %198, align 8, !tbaa !105
  %1176 = getelementptr inbounds %struct._DrawInfo, ptr %1175, i64 0, i32 32
  store i32 %1174, ptr %1176, align 8, !tbaa !99
  br label %1267

1177:                                             ; preds = %1166
  %1178 = call i32 @LocaleCompare(ptr noundef nonnull @.str.85, ptr noundef nonnull %22) #24
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1180, label %1188

1180:                                             ; preds = %1177
  %1181 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1181, ptr noundef nonnull %26, ptr noundef %116) #24
  %1182 = call i64 @ParseCommandOption(i32 noundef 0, i32 noundef 0, ptr noundef %116) #24
  %1183 = icmp eq i64 %1182, -1
  br i1 %1183, label %1267, label %1184

1184:                                             ; preds = %1180
  %1185 = trunc i64 %1182 to i32
  %1186 = load ptr, ptr %198, align 8, !tbaa !105
  %1187 = getelementptr inbounds %struct._DrawInfo, ptr %1186, i64 0, i32 32
  store i32 %1185, ptr %1187, align 8, !tbaa !99
  br label %1267

1188:                                             ; preds = %1177
  %1189 = call i32 @LocaleCompare(ptr noundef nonnull @.str.86, ptr noundef nonnull %22) #24
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1191, label %1198

1191:                                             ; preds = %1188
  %1192 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1192, ptr noundef nonnull %26, ptr noundef %116) #24
  %1193 = call i64 @strtol(ptr nocapture noundef %116, ptr noundef null, i32 noundef 10) #24
  %1194 = icmp ne i64 %1193, 0
  %1195 = zext i1 %1194 to i32
  %1196 = load ptr, ptr %198, align 8, !tbaa !105
  %1197 = getelementptr inbounds %struct._DrawInfo, ptr %1196, i64 0, i32 13
  store i32 %1195, ptr %1197, align 4, !tbaa !67
  br label %1267

1198:                                             ; preds = %1188
  %1199 = call i32 @LocaleCompare(ptr noundef nonnull @.str.87, ptr noundef nonnull %22) #24
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1201, label %1206

1201:                                             ; preds = %1198
  %1202 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1202, ptr noundef nonnull %26, ptr noundef %116) #24
  %1203 = load ptr, ptr %198, align 8, !tbaa !105
  %1204 = getelementptr inbounds %struct._DrawInfo, ptr %1203, i64 0, i32 33
  %1205 = call i32 @QueryColorDatabase(ptr noundef %116, ptr noundef nonnull %1204, ptr noundef nonnull %117) #24
  br label %1267

1206:                                             ; preds = %1198
  %1207 = call i32 @LocaleCompare(ptr noundef nonnull @.str.88, ptr noundef nonnull %22) #24
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1209, label %1267

1209:                                             ; preds = %1206
  %1210 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1210, ptr noundef nonnull %26, ptr noundef %116) #24
  %1211 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %1211, ptr %126, align 8, !tbaa !128
  %1212 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1212, ptr noundef nonnull %26, ptr noundef %116) #24
  %1213 = load i8, ptr %116, align 1, !tbaa !164
  %1214 = icmp eq i8 %1213, 44
  br i1 %1214, label %1215, label %1217

1215:                                             ; preds = %1209
  %1216 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1216, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1217

1217:                                             ; preds = %1215, %1209
  %1218 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  store double %1218, ptr %127, align 8, !tbaa !130
  br label %1267

1219:                                             ; preds = %192, %192
  %1220 = call i32 @LocaleCompare(ptr noundef nonnull @.str.89, ptr noundef nonnull %22) #24
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1222, label %1267

1222:                                             ; preds = %1219
  %1223 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1223, ptr noundef nonnull %26, ptr noundef %116) #24
  %1224 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1225 = fadd double %1224, -5.000000e-01
  %1226 = call double @llvm.ceil.f64(double %1225)
  %1227 = fptosi double %1226 to i64
  %1228 = load ptr, ptr %198, align 8, !tbaa !105
  %1229 = getelementptr inbounds %struct._DrawInfo, ptr %1228, i64 0, i32 2, i32 2
  store i64 %1227, ptr %1229, align 8, !tbaa !189
  %1230 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1230, ptr noundef nonnull %26, ptr noundef %116) #24
  %1231 = load i8, ptr %116, align 1, !tbaa !164
  %1232 = icmp eq i8 %1231, 44
  br i1 %1232, label %1233, label %1235

1233:                                             ; preds = %1222
  %1234 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1234, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1235

1235:                                             ; preds = %1233, %1222
  %1236 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1237 = fadd double %1236, -5.000000e-01
  %1238 = call double @llvm.ceil.f64(double %1237)
  %1239 = fptosi double %1238 to i64
  %1240 = load ptr, ptr %198, align 8, !tbaa !105
  %1241 = getelementptr inbounds %struct._DrawInfo, ptr %1240, i64 0, i32 2, i32 3
  store i64 %1239, ptr %1241, align 8, !tbaa !190
  %1242 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1242, ptr noundef nonnull %26, ptr noundef %116) #24
  %1243 = load i8, ptr %116, align 1, !tbaa !164
  %1244 = icmp eq i8 %1243, 44
  br i1 %1244, label %1245, label %1247

1245:                                             ; preds = %1235
  %1246 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1246, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1247

1247:                                             ; preds = %1245, %1235
  %1248 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1249 = fadd double %1248, 5.000000e-01
  %1250 = call double @llvm.floor.f64(double %1249)
  %1251 = fptoui double %1250 to i64
  %1252 = load ptr, ptr %198, align 8, !tbaa !105
  %1253 = getelementptr inbounds %struct._DrawInfo, ptr %1252, i64 0, i32 2
  store i64 %1251, ptr %1253, align 8, !tbaa !167
  %1254 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1254, ptr noundef nonnull %26, ptr noundef %116) #24
  %1255 = load i8, ptr %116, align 1, !tbaa !164
  %1256 = icmp eq i8 %1255, 44
  br i1 %1256, label %1257, label %1259

1257:                                             ; preds = %1247
  %1258 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1258, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1259

1259:                                             ; preds = %1257, %1247
  %1260 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1261 = fadd double %1260, 5.000000e-01
  %1262 = call double @llvm.floor.f64(double %1261)
  %1263 = fptoui double %1262 to i64
  %1264 = load ptr, ptr %198, align 8, !tbaa !105
  %1265 = getelementptr inbounds %struct._DrawInfo, ptr %1264, i64 0, i32 2, i32 1
  store i64 %1263, ptr %1265, align 8, !tbaa !168
  br label %1267

1266:                                             ; preds = %192
  br label %1267

1267:                                             ; preds = %880, %651, %1219, %1206, %1184, %1180, %1173, %1169, %1163, %1155, %1120, %1116, %1109, %1105, %910, %884, %655, %609, %606, %603, %600, %569, %559, %554, %546, %538, %526, %522, %508, %515, %511, %458, %454, %450, %443, %439, %399, %395, %336, %333, %322, %329, %325, %318, %314, %306, %303, %296, %287, %291, %280, %276, %253, %250, %245, %966, %974, %969, %622, %619, %615, %497, %500, %406, %413, %353, %361, %356, %1266, %1259, %1217, %1201, %1191, %192, %1158, %1151, %1127, %1097, %1092, %1091, %985, %951, %940, %931, %926, %890, %875, %873, %848, %744, %680, %647, %630, %594, %567, %549, %541, %533, %506, %431, %423, %388, %339, %264, %256, %243
  %1268 = phi i64 [ %177, %1266 ], [ %177, %1259 ], [ %177, %1191 ], [ %177, %1201 ], [ %177, %1217 ], [ %177, %926 ], [ %177, %931 ], [ %177, %940 ], [ %177, %951 ], [ %177, %966 ], [ %177, %974 ], [ %177, %969 ], [ %177, %985 ], [ %177, %1091 ], [ %177, %1092 ], [ %177, %1097 ], [ %177, %1127 ], [ %177, %1151 ], [ %177, %1158 ], [ %177, %890 ], [ %177, %615 ], [ %177, %619 ], [ %177, %622 ], [ 0, %630 ], [ %650, %647 ], [ %177, %680 ], [ %177, %744 ], [ %177, %848 ], [ %869, %873 ], [ %869, %875 ], [ %177, %567 ], [ %177, %594 ], [ %177, %549 ], [ %177, %533 ], [ %177, %541 ], [ %177, %506 ], [ %177, %353 ], [ %177, %361 ], [ %177, %356 ], [ %177, %388 ], [ %177, %413 ], [ %177, %406 ], [ %177, %423 ], [ %177, %431 ], [ %177, %500 ], [ %177, %497 ], [ %177, %339 ], [ %177, %264 ], [ %177, %256 ], [ %177, %243 ], [ %177, %192 ], [ %177, %245 ], [ %177, %250 ], [ %177, %253 ], [ %177, %276 ], [ %177, %280 ], [ %177, %291 ], [ %177, %287 ], [ %177, %296 ], [ %177, %303 ], [ %177, %306 ], [ %177, %314 ], [ %177, %318 ], [ %177, %325 ], [ %177, %329 ], [ %177, %322 ], [ %177, %333 ], [ %177, %336 ], [ %177, %395 ], [ %177, %399 ], [ %177, %439 ], [ %177, %443 ], [ %177, %450 ], [ %177, %454 ], [ %177, %458 ], [ %177, %511 ], [ %177, %515 ], [ %177, %508 ], [ %177, %522 ], [ %177, %526 ], [ %177, %538 ], [ %177, %546 ], [ %177, %554 ], [ %177, %559 ], [ %177, %569 ], [ %177, %600 ], [ %177, %603 ], [ %177, %606 ], [ %177, %609 ], [ %177, %651 ], [ %177, %880 ], [ %177, %655 ], [ %177, %884 ], [ %177, %910 ], [ %177, %1105 ], [ %177, %1109 ], [ %177, %1116 ], [ %177, %1120 ], [ %177, %1155 ], [ %177, %1163 ], [ %177, %1169 ], [ %177, %1173 ], [ %177, %1180 ], [ %177, %1184 ], [ %177, %1206 ], [ %177, %1219 ]
  %1269 = phi ptr [ %197, %1266 ], [ %197, %1259 ], [ %197, %1191 ], [ %197, %1201 ], [ %197, %1217 ], [ %197, %926 ], [ %197, %931 ], [ %197, %940 ], [ %197, %951 ], [ %197, %966 ], [ %197, %974 ], [ %197, %969 ], [ %197, %985 ], [ %197, %1091 ], [ %197, %1092 ], [ %197, %1097 ], [ %197, %1127 ], [ %197, %1151 ], [ %197, %1158 ], [ %197, %890 ], [ %197, %615 ], [ %197, %619 ], [ %197, %622 ], [ %197, %630 ], [ %197, %647 ], [ %665, %680 ], [ %729, %744 ], [ %833, %848 ], [ %197, %873 ], [ %197, %875 ], [ %197, %567 ], [ %197, %594 ], [ %197, %549 ], [ %197, %533 ], [ %197, %541 ], [ %197, %506 ], [ %197, %353 ], [ %197, %361 ], [ %197, %356 ], [ %197, %388 ], [ %197, %413 ], [ %197, %406 ], [ %197, %423 ], [ %197, %431 ], [ %197, %500 ], [ %197, %497 ], [ %197, %339 ], [ %197, %264 ], [ %197, %256 ], [ %197, %243 ], [ %197, %192 ], [ %197, %245 ], [ %197, %250 ], [ %197, %253 ], [ %197, %276 ], [ %197, %280 ], [ %197, %291 ], [ %197, %287 ], [ %197, %296 ], [ %197, %303 ], [ %197, %306 ], [ %197, %314 ], [ %197, %318 ], [ %197, %325 ], [ %197, %329 ], [ %197, %322 ], [ %197, %333 ], [ %197, %336 ], [ %197, %395 ], [ %197, %399 ], [ %197, %439 ], [ %197, %443 ], [ %197, %450 ], [ %197, %454 ], [ %197, %458 ], [ %197, %511 ], [ %197, %515 ], [ %197, %508 ], [ %197, %522 ], [ %197, %526 ], [ %197, %538 ], [ %197, %546 ], [ %197, %554 ], [ %197, %559 ], [ %197, %569 ], [ %197, %600 ], [ %197, %603 ], [ %197, %606 ], [ %197, %609 ], [ %197, %651 ], [ %197, %880 ], [ %197, %655 ], [ %197, %884 ], [ %197, %910 ], [ %197, %1105 ], [ %197, %1109 ], [ %197, %1116 ], [ %197, %1120 ], [ %197, %1155 ], [ %197, %1163 ], [ %197, %1169 ], [ %197, %1173 ], [ %197, %1180 ], [ %197, %1184 ], [ %197, %1206 ], [ %197, %1219 ]
  %1270 = phi i1 [ true, %1266 ], [ true, %1259 ], [ true, %1191 ], [ true, %1201 ], [ true, %1217 ], [ true, %926 ], [ true, %931 ], [ true, %940 ], [ true, %951 ], [ true, %966 ], [ true, %974 ], [ true, %969 ], [ true, %985 ], [ true, %1091 ], [ true, %1092 ], [ true, %1097 ], [ true, %1127 ], [ true, %1151 ], [ true, %1158 ], [ true, %890 ], [ true, %615 ], [ true, %619 ], [ true, %622 ], [ true, %630 ], [ true, %647 ], [ true, %680 ], [ true, %744 ], [ true, %848 ], [ true, %873 ], [ true, %875 ], [ true, %567 ], [ true, %594 ], [ true, %549 ], [ true, %533 ], [ true, %541 ], [ true, %506 ], [ true, %353 ], [ true, %361 ], [ true, %356 ], [ true, %388 ], [ true, %413 ], [ true, %406 ], [ true, %423 ], [ true, %431 ], [ true, %500 ], [ true, %497 ], [ true, %339 ], [ true, %264 ], [ true, %256 ], [ true, %243 ], [ true, %192 ], [ %247, %245 ], [ false, %250 ], [ true, %253 ], [ true, %276 ], [ true, %280 ], [ true, %291 ], [ true, %287 ], [ true, %296 ], [ false, %303 ], [ %308, %306 ], [ true, %314 ], [ true, %318 ], [ true, %325 ], [ true, %329 ], [ true, %322 ], [ false, %333 ], [ true, %336 ], [ true, %395 ], [ true, %399 ], [ true, %439 ], [ true, %443 ], [ true, %450 ], [ true, %454 ], [ true, %458 ], [ true, %511 ], [ true, %515 ], [ true, %508 ], [ false, %522 ], [ false, %526 ], [ true, %538 ], [ true, %546 ], [ %556, %554 ], [ %561, %559 ], [ true, %569 ], [ false, %600 ], [ false, %603 ], [ false, %606 ], [ false, %609 ], [ true, %651 ], [ true, %880 ], [ true, %655 ], [ false, %884 ], [ %912, %910 ], [ true, %1105 ], [ true, %1109 ], [ true, %1116 ], [ true, %1120 ], [ true, %1155 ], [ false, %1163 ], [ true, %1169 ], [ true, %1173 ], [ true, %1180 ], [ true, %1184 ], [ true, %1206 ], [ true, %1219 ]
  %1271 = phi i32 [ 0, %1266 ], [ 0, %1259 ], [ 0, %1191 ], [ 0, %1201 ], [ 0, %1217 ], [ 0, %926 ], [ 0, %931 ], [ 0, %940 ], [ 0, %951 ], [ 0, %966 ], [ 0, %974 ], [ 0, %969 ], [ 0, %985 ], [ 0, %1091 ], [ 0, %1092 ], [ 0, %1097 ], [ 0, %1127 ], [ 0, %1151 ], [ 0, %1158 ], [ 0, %890 ], [ 0, %615 ], [ 0, %619 ], [ 0, %622 ], [ 0, %630 ], [ 0, %647 ], [ 0, %680 ], [ 0, %744 ], [ 0, %848 ], [ 0, %873 ], [ 0, %875 ], [ 0, %567 ], [ 0, %594 ], [ 0, %549 ], [ 0, %533 ], [ 0, %541 ], [ 0, %506 ], [ 0, %353 ], [ 0, %361 ], [ 0, %356 ], [ 0, %388 ], [ 0, %413 ], [ 0, %406 ], [ 0, %423 ], [ 0, %431 ], [ 0, %500 ], [ 0, %497 ], [ 0, %339 ], [ 0, %264 ], [ 0, %256 ], [ 0, %243 ], [ 0, %192 ], [ %248, %245 ], [ 10, %250 ], [ 0, %253 ], [ 0, %276 ], [ 0, %280 ], [ 0, %291 ], [ 0, %287 ], [ 0, %296 ], [ 7, %303 ], [ %309, %306 ], [ 0, %314 ], [ 0, %318 ], [ 0, %325 ], [ 0, %329 ], [ 0, %322 ], [ 6, %333 ], [ 0, %336 ], [ 0, %395 ], [ 0, %399 ], [ 0, %439 ], [ 0, %443 ], [ 0, %450 ], [ 0, %454 ], [ 0, %458 ], [ 0, %511 ], [ 0, %515 ], [ 0, %508 ], [ 14, %522 ], [ 14, %526 ], [ 0, %538 ], [ 0, %546 ], [ %557, %554 ], [ %562, %559 ], [ 0, %569 ], [ 15, %600 ], [ 1, %603 ], [ 8, %606 ], [ 9, %609 ], [ 0, %651 ], [ 0, %880 ], [ 0, %655 ], [ 3, %884 ], [ %913, %910 ], [ 0, %1105 ], [ 0, %1109 ], [ 0, %1116 ], [ 0, %1120 ], [ 0, %1155 ], [ 13, %1163 ], [ 0, %1169 ], [ 0, %1173 ], [ 0, %1180 ], [ 0, %1184 ], [ 0, %1206 ], [ 0, %1219 ]
  %1272 = phi i32 [ 0, %1266 ], [ %176, %1259 ], [ %176, %1191 ], [ %176, %1201 ], [ %176, %1217 ], [ %176, %926 ], [ %176, %931 ], [ %176, %940 ], [ %176, %951 ], [ %176, %966 ], [ 0, %974 ], [ %972, %969 ], [ %176, %985 ], [ %176, %1091 ], [ %176, %1092 ], [ %176, %1097 ], [ %176, %1127 ], [ %176, %1151 ], [ %176, %1158 ], [ %176, %890 ], [ %176, %615 ], [ %176, %619 ], [ %176, %622 ], [ %176, %630 ], [ %176, %647 ], [ %176, %680 ], [ %176, %744 ], [ %176, %848 ], [ %176, %873 ], [ %176, %875 ], [ %176, %567 ], [ %176, %594 ], [ %176, %549 ], [ %176, %533 ], [ %176, %541 ], [ %176, %506 ], [ %176, %353 ], [ 0, %361 ], [ %359, %356 ], [ %176, %388 ], [ %176, %413 ], [ %176, %406 ], [ %176, %423 ], [ %176, %431 ], [ %176, %500 ], [ %176, %497 ], [ %176, %339 ], [ %176, %264 ], [ %176, %256 ], [ %176, %243 ], [ %176, %192 ], [ %249, %245 ], [ %176, %250 ], [ 0, %253 ], [ 0, %276 ], [ %176, %280 ], [ %176, %291 ], [ 0, %287 ], [ %176, %296 ], [ %176, %303 ], [ %310, %306 ], [ 0, %314 ], [ %176, %318 ], [ 0, %325 ], [ %176, %329 ], [ 0, %322 ], [ %176, %333 ], [ 0, %336 ], [ 0, %395 ], [ %176, %399 ], [ 0, %439 ], [ %176, %443 ], [ 0, %450 ], [ %176, %454 ], [ 0, %458 ], [ 0, %511 ], [ %176, %515 ], [ 0, %508 ], [ 0, %522 ], [ %176, %526 ], [ 0, %538 ], [ 0, %546 ], [ %558, %554 ], [ %563, %559 ], [ 0, %569 ], [ %176, %600 ], [ %176, %603 ], [ %176, %606 ], [ %176, %609 ], [ %654, %651 ], [ %883, %880 ], [ 0, %655 ], [ %176, %884 ], [ %914, %910 ], [ 0, %1105 ], [ %176, %1109 ], [ 0, %1116 ], [ %176, %1120 ], [ 0, %1155 ], [ %176, %1163 ], [ 0, %1169 ], [ %176, %1173 ], [ 0, %1180 ], [ %176, %1184 ], [ 0, %1206 ], [ 0, %1219 ]
  %1273 = phi ptr [ %175, %1266 ], [ %175, %1259 ], [ %175, %1191 ], [ %175, %1201 ], [ %175, %1217 ], [ %175, %926 ], [ %175, %931 ], [ %175, %940 ], [ %175, %951 ], [ %175, %966 ], [ %175, %974 ], [ %175, %969 ], [ %175, %985 ], [ %175, %1091 ], [ %175, %1092 ], [ %175, %1097 ], [ %175, %1127 ], [ %175, %1151 ], [ %175, %1158 ], [ %175, %890 ], [ %175, %615 ], [ %175, %619 ], [ %175, %622 ], [ %175, %630 ], [ %175, %647 ], [ %175, %680 ], [ %175, %744 ], [ %175, %848 ], [ null, %873 ], [ %871, %875 ], [ %175, %567 ], [ %175, %594 ], [ %175, %549 ], [ %175, %533 ], [ %175, %541 ], [ %175, %506 ], [ %175, %353 ], [ %175, %361 ], [ %175, %356 ], [ %175, %388 ], [ %175, %413 ], [ %175, %406 ], [ %175, %423 ], [ %175, %431 ], [ %175, %500 ], [ %175, %497 ], [ %175, %339 ], [ %175, %264 ], [ %175, %256 ], [ %175, %243 ], [ %175, %192 ], [ %175, %245 ], [ %175, %250 ], [ %175, %253 ], [ %175, %276 ], [ %175, %280 ], [ %175, %291 ], [ %175, %287 ], [ %175, %296 ], [ %175, %303 ], [ %175, %306 ], [ %175, %314 ], [ %175, %318 ], [ %175, %325 ], [ %175, %329 ], [ %175, %322 ], [ %175, %333 ], [ %175, %336 ], [ %175, %395 ], [ %175, %399 ], [ %175, %439 ], [ %175, %443 ], [ %175, %450 ], [ %175, %454 ], [ %175, %458 ], [ %175, %511 ], [ %175, %515 ], [ %175, %508 ], [ %175, %522 ], [ %175, %526 ], [ %175, %538 ], [ %175, %546 ], [ %175, %554 ], [ %175, %559 ], [ %175, %569 ], [ %175, %600 ], [ %175, %603 ], [ %175, %606 ], [ %175, %609 ], [ %175, %651 ], [ %175, %880 ], [ %175, %655 ], [ %175, %884 ], [ %175, %910 ], [ %175, %1105 ], [ %175, %1109 ], [ %175, %1116 ], [ %175, %1120 ], [ %175, %1155 ], [ %175, %1163 ], [ %175, %1169 ], [ %175, %1173 ], [ %175, %1180 ], [ %175, %1184 ], [ %175, %1206 ], [ %175, %1219 ]
  %1274 = icmp eq i32 %1272, 0
  br i1 %1274, label %2688, label %1275

1275:                                             ; preds = %1267
  %1276 = load double, ptr %19, align 8, !tbaa !38
  %1277 = fcmp une double %1276, 1.000000e+00
  %1278 = load double, ptr %145, align 8
  %1279 = fcmp une double %1278, 0.000000e+00
  %1280 = select i1 %1277, i1 true, i1 %1279
  %1281 = load double, ptr %146, align 8
  %1282 = fcmp une double %1281, 0.000000e+00
  %1283 = select i1 %1280, i1 true, i1 %1282
  %1284 = load double, ptr %125, align 8
  %1285 = fcmp une double %1284, 1.000000e+00
  %1286 = select i1 %1283, i1 true, i1 %1285
  %1287 = load double, ptr %147, align 8
  %1288 = fcmp une double %1287, 0.000000e+00
  %1289 = select i1 %1286, i1 true, i1 %1288
  %1290 = load double, ptr %148, align 8
  %1291 = fcmp une double %1290, 0.000000e+00
  %1292 = select i1 %1289, i1 true, i1 %1291
  br i1 %1292, label %1293, label %1322

1293:                                             ; preds = %1275
  %1294 = load double, ptr %20, align 8, !tbaa !38
  %1295 = load double, ptr %149, align 8, !tbaa !127
  %1296 = fmul double %1278, %1295
  %1297 = call double @llvm.fmuladd.f64(double %1294, double %1276, double %1296)
  %1298 = getelementptr inbounds ptr, ptr %1273, i64 %1268
  %1299 = load ptr, ptr %1298, align 8, !tbaa !105
  %1300 = getelementptr inbounds %struct._DrawInfo, ptr %1299, i64 0, i32 3
  store double %1297, ptr %1300, align 8, !tbaa !179
  %1301 = load double, ptr %150, align 8, !tbaa !129
  %1302 = load double, ptr %151, align 8, !tbaa !41
  %1303 = fmul double %1278, %1302
  %1304 = call double @llvm.fmuladd.f64(double %1301, double %1276, double %1303)
  %1305 = getelementptr inbounds %struct._DrawInfo, ptr %1299, i64 0, i32 3, i32 1
  store double %1304, ptr %1305, align 8, !tbaa !182
  %1306 = fmul double %1284, %1295
  %1307 = call double @llvm.fmuladd.f64(double %1294, double %1281, double %1306)
  %1308 = getelementptr inbounds %struct._DrawInfo, ptr %1299, i64 0, i32 3, i32 2
  store double %1307, ptr %1308, align 8, !tbaa !180
  %1309 = fmul double %1284, %1302
  %1310 = call double @llvm.fmuladd.f64(double %1301, double %1281, double %1309)
  %1311 = getelementptr inbounds %struct._DrawInfo, ptr %1299, i64 0, i32 3, i32 3
  store double %1310, ptr %1311, align 8, !tbaa !183
  %1312 = fmul double %1290, %1295
  %1313 = call double @llvm.fmuladd.f64(double %1294, double %1287, double %1312)
  %1314 = load double, ptr %152, align 8, !tbaa !128
  %1315 = fadd double %1313, %1314
  %1316 = getelementptr inbounds %struct._DrawInfo, ptr %1299, i64 0, i32 3, i32 4
  store double %1315, ptr %1316, align 8, !tbaa !181
  %1317 = fmul double %1290, %1302
  %1318 = call double @llvm.fmuladd.f64(double %1301, double %1287, double %1317)
  %1319 = load double, ptr %153, align 8, !tbaa !130
  %1320 = fadd double %1318, %1319
  %1321 = getelementptr inbounds %struct._DrawInfo, ptr %1299, i64 0, i32 3, i32 5
  store double %1320, ptr %1321, align 8, !tbaa !184
  br label %1322

1322:                                             ; preds = %1275, %1293
  br i1 %1270, label %1323, label %1337

1323:                                             ; preds = %1322
  %1324 = load i32, ptr %36, align 8, !tbaa !113
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1333, label %1326

1326:                                             ; preds = %1323
  %1327 = load ptr, ptr %26, align 8, !tbaa !105
  %1328 = ptrtoint ptr %1327 to i64
  %1329 = ptrtoint ptr %1269 to i64
  %1330 = sub i64 %1328, %1329
  %1331 = trunc i64 %1330 to i32
  %1332 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2818, ptr noundef nonnull @.str.90, i32 noundef %1331, ptr noundef nonnull %1269) #24
  br label %1333

1333:                                             ; preds = %1326, %1323
  %1334 = load ptr, ptr %26, align 8, !tbaa !105
  %1335 = load i8, ptr %1334, align 1, !tbaa !164
  %1336 = icmp eq i8 %1335, 0
  br i1 %1336, label %2688, label %173, !llvm.loop !170

1337:                                             ; preds = %1322
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %170, i8 0, i64 16, i1 false)
  %1338 = load ptr, ptr %26, align 8, !tbaa !105
  %1339 = load i8, ptr %1338, align 1, !tbaa !164
  %1340 = icmp eq i8 %1339, 0
  br i1 %1340, label %1387, label %1341

1341:                                             ; preds = %1337, %1381
  %1342 = phi ptr [ %1384, %1381 ], [ %1338, %1337 ]
  %1343 = phi ptr [ %1383, %1381 ], [ %170, %1337 ]
  %1344 = phi i64 [ %1372, %1381 ], [ 0, %1337 ]
  %1345 = phi i64 [ %1382, %1381 ], [ %171, %1337 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #24
  %1346 = call double @InterpretLocaleValue(ptr noundef nonnull %1342, ptr noundef nonnull %16) #24
  %1347 = fcmp oeq double %1346, 0.000000e+00
  %1348 = load ptr, ptr %16, align 8
  %1349 = icmp eq ptr %1348, %1342
  %1350 = select i1 %1347, i1 %1349, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #24
  br i1 %1350, label %1387, label %1351

1351:                                             ; preds = %1341
  %1352 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1352, ptr noundef nonnull %26, ptr noundef %116) #24
  %1353 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1354 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1354, ptr noundef nonnull %26, ptr noundef %116) #24
  %1355 = load i8, ptr %116, align 1, !tbaa !164
  %1356 = icmp eq i8 %1355, 44
  br i1 %1356, label %1357, label %1359

1357:                                             ; preds = %1351
  %1358 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1358, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1359

1359:                                             ; preds = %1357, %1351
  %1360 = call double @InterpretLocaleValue(ptr noundef %116, ptr noundef null) #24
  %1361 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1361, ptr noundef null, ptr noundef %116) #24
  %1362 = load i8, ptr %116, align 1, !tbaa !164
  %1363 = icmp eq i8 %1362, 44
  br i1 %1363, label %1364, label %1366

1364:                                             ; preds = %1359
  %1365 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1365, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %1366

1366:                                             ; preds = %1364, %1359
  %1367 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1343, i64 %1344
  %1368 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1343, i64 %1344, i32 2
  store i32 %1271, ptr %1368, align 8, !tbaa !191
  store double %1353, ptr %1367, align 8, !tbaa.struct !131
  %1369 = getelementptr inbounds i8, ptr %1367, i64 8
  store double %1360, ptr %1369, align 8, !tbaa.struct !132
  %1370 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1343, i64 %1344, i32 1
  store i64 0, ptr %1370, align 8, !tbaa !193
  %1371 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1343, i64 %1344, i32 3
  store i32 3, ptr %1371, align 4, !tbaa !194
  %1372 = add nuw i64 %1344, 1
  %1373 = icmp slt i64 %1372, %1345
  br i1 %1373, label %1381, label %1374

1374:                                             ; preds = %1366
  %1375 = shl i64 %1345, 1
  %1376 = call ptr @ResizeQuantumMemory(ptr noundef %1343, i64 noundef %1375, i64 noundef 40) #30
  %1377 = icmp eq ptr %1376, null
  br i1 %1377, label %1378, label %1381

1378:                                             ; preds = %1374
  %1379 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %1380 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %117, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2857, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %1379) #24
  unreachable

1381:                                             ; preds = %1374, %1366
  %1382 = phi i64 [ %1345, %1366 ], [ %1375, %1374 ]
  %1383 = phi ptr [ %1343, %1366 ], [ %1376, %1374 ]
  %1384 = load ptr, ptr %26, align 8, !tbaa !105
  %1385 = load i8, ptr %1384, align 1, !tbaa !164
  %1386 = icmp eq i8 %1385, 0
  br i1 %1386, label %1387, label %1341, !llvm.loop !195

1387:                                             ; preds = %1381, %1341, %1337
  %1388 = phi i64 [ %171, %1337 ], [ %1382, %1381 ], [ %1345, %1341 ]
  %1389 = phi i64 [ 0, %1337 ], [ %1372, %1381 ], [ %1344, %1341 ]
  %1390 = phi ptr [ %170, %1337 ], [ %1383, %1381 ], [ %1343, %1341 ]
  %1391 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1390, i64 0, i32 2
  store i32 %1271, ptr %1391, align 8, !tbaa !191
  %1392 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1390, i64 0, i32 1
  store i64 %1389, ptr %1392, align 8, !tbaa !193
  %1393 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1390, i64 0, i32 3
  store i32 3, ptr %1393, align 4, !tbaa !194
  %1394 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1390, i64 0, i32 4
  store ptr null, ptr %1394, align 8, !tbaa !196
  %1395 = load double, ptr %1390, align 8, !tbaa !197
  %1396 = getelementptr inbounds %struct._PointInfo, ptr %1390, i64 0, i32 1
  %1397 = load double, ptr %1396, align 8, !tbaa !198
  %1398 = icmp ugt i64 %1389, 1
  br i1 %1398, label %1399, label %1419

1399:                                             ; preds = %1387, %1399
  %1400 = phi double [ %1416, %1399 ], [ %1397, %1387 ]
  %1401 = phi double [ %1414, %1399 ], [ %1395, %1387 ]
  %1402 = phi double [ %1412, %1399 ], [ %1397, %1387 ]
  %1403 = phi double [ %1410, %1399 ], [ %1395, %1387 ]
  %1404 = phi i64 [ %1417, %1399 ], [ 1, %1387 ]
  %1405 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1390, i64 %1404
  %1406 = load double, ptr %1405, align 8, !tbaa.struct !131
  %1407 = getelementptr inbounds i8, ptr %1405, i64 8
  %1408 = load double, ptr %1407, align 8, !tbaa.struct !132
  %1409 = fcmp olt double %1406, %1403
  %1410 = select i1 %1409, double %1406, double %1403
  %1411 = fcmp olt double %1408, %1402
  %1412 = select i1 %1411, double %1408, double %1402
  %1413 = fcmp ogt double %1406, %1401
  %1414 = select i1 %1413, double %1406, double %1401
  %1415 = fcmp ogt double %1408, %1400
  %1416 = select i1 %1415, double %1408, double %1400
  %1417 = add nuw nsw i64 %1404, 1
  %1418 = icmp eq i64 %1417, %1389
  br i1 %1418, label %1419, label %1399, !llvm.loop !199

1419:                                             ; preds = %1399, %1387
  %1420 = phi double [ %1395, %1387 ], [ %1410, %1399 ]
  %1421 = phi double [ %1397, %1387 ], [ %1412, %1399 ]
  %1422 = phi double [ %1395, %1387 ], [ %1414, %1399 ]
  %1423 = phi double [ %1397, %1387 ], [ %1416, %1399 ]
  switch i32 %1271, label %1467 [
    i32 3, label %1424
    i32 4, label %1426
    i32 10, label %1428
    i32 15, label %1435
    i32 7, label %1458
    i32 5, label %1458
    i32 6, label %1458
  ]

1424:                                             ; preds = %1419
  %1425 = mul i64 %1389, 5
  br label %1467

1426:                                             ; preds = %1419
  %1427 = mul i64 %1389, 1605
  br label %1467

1428:                                             ; preds = %1419
  %1429 = icmp ugt i64 %1389, 107
  br i1 %1429, label %1430, label %1432

1430:                                             ; preds = %1428
  %1431 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %117, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2904, i32 noundef 460, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.3, ptr noundef %116) #24
  br label %1432

1432:                                             ; preds = %1430, %1428
  %1433 = load i64, ptr %1392, align 8, !tbaa !193
  %1434 = mul i64 %1433, 200
  br label %1467

1435:                                             ; preds = %1419
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #24
  %1436 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1436, ptr noundef nonnull %26, ptr noundef %116) #24
  store ptr %116, ptr %34, align 8, !tbaa !105
  %1437 = load i8, ptr %116, align 1, !tbaa !164
  %1438 = icmp eq i8 %1437, 0
  br i1 %1438, label %1454, label %1439

1439:                                             ; preds = %1435, %1449
  %1440 = phi ptr [ %1451, %1449 ], [ %116, %1435 ]
  %1441 = phi i64 [ %1450, %1449 ], [ 1, %1435 ]
  %1442 = call double @InterpretLocaleValue(ptr noundef nonnull %1440, ptr noundef nonnull %34) #24
  %1443 = load ptr, ptr %34, align 8, !tbaa !105
  %1444 = icmp eq ptr %1440, %1443
  br i1 %1444, label %1445, label %1447

1445:                                             ; preds = %1439
  %1446 = getelementptr inbounds i8, ptr %1443, i64 1
  store ptr %1446, ptr %34, align 8, !tbaa !105
  br label %1449

1447:                                             ; preds = %1439
  %1448 = add i64 %1441, 1
  br label %1449

1449:                                             ; preds = %1447, %1445
  %1450 = phi i64 [ %1441, %1445 ], [ %1448, %1447 ]
  %1451 = load ptr, ptr %34, align 8, !tbaa !105
  %1452 = load i8, ptr %1451, align 1, !tbaa !164
  %1453 = icmp eq i8 %1452, 0
  br i1 %1453, label %1454, label %1439, !llvm.loop !200

1454:                                             ; preds = %1449, %1435
  %1455 = phi i64 [ 1, %1435 ], [ %1450, %1449 ]
  %1456 = mul i64 %1455, 200
  %1457 = lshr exact i64 %1456, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #24
  br label %1467

1458:                                             ; preds = %1419, %1419, %1419
  %1459 = fsub double %1422, %1420
  %1460 = fsub double %1423, %1421
  %1461 = call double @hypot(double noundef %1459, double noundef %1460) #24
  %1462 = fmul double %1461, 0x400921FB54442D18
  %1463 = call double @llvm.ceil.f64(double %1462)
  %1464 = fptoui double %1463 to i64
  %1465 = shl i64 %1464, 1
  %1466 = add i64 %1465, 1560
  br label %1467

1467:                                             ; preds = %1419, %1458, %1454, %1432, %1426, %1424
  %1468 = phi i64 [ %1389, %1419 ], [ %1466, %1458 ], [ %1457, %1454 ], [ %1434, %1432 ], [ %1427, %1426 ], [ %1425, %1424 ]
  %1469 = add i64 %1468, %1389
  %1470 = icmp ult i64 %1469, %1388
  br i1 %1470, label %1479, label %1471

1471:                                             ; preds = %1467
  %1472 = add i64 %1388, 1
  %1473 = add i64 %1472, %1468
  %1474 = call ptr @ResizeQuantumMemory(ptr noundef nonnull %1390, i64 noundef %1473, i64 noundef 40) #30
  %1475 = icmp eq ptr %1474, null
  br i1 %1475, label %1476, label %1479

1476:                                             ; preds = %1471
  %1477 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %1478 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %117, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2963, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %1477) #24
  br label %2688

1479:                                             ; preds = %1471, %1467
  %1480 = phi i64 [ %1473, %1471 ], [ %1388, %1467 ]
  %1481 = phi ptr [ %1474, %1471 ], [ %1390, %1467 ]
  switch i32 %1271, label %1482 [
    i32 14, label %2528
    i32 2, label %1487
    i32 3, label %1515
    i32 4, label %1547
    i32 5, label %1611
    i32 6, label %1636
    i32 7, label %1653
    i32 8, label %2536
    i32 9, label %1669
    i32 10, label %1676
    i32 15, label %1682
    i32 11, label %2505
    i32 12, label %2505
    i32 13, label %2516
  ]

1482:                                             ; preds = %1479
  %1483 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1484 = load i64, ptr %1483, align 8, !tbaa !193
  %1485 = icmp eq i64 %1484, 1
  br i1 %1485, label %1486, label %2536

1486:                                             ; preds = %1482
  store i64 1, ptr %1483, align 8, !tbaa !193
  br label %2536

1487:                                             ; preds = %1479
  %1488 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1489 = load i64, ptr %1488, align 8, !tbaa !193
  %1490 = icmp eq i64 %1489, 2
  br i1 %1490, label %1491, label %2536

1491:                                             ; preds = %1487
  %1492 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1
  %1493 = load double, ptr %1481, align 8
  %1494 = getelementptr inbounds { double, double }, ptr %1481, i64 0, i32 1
  %1495 = load double, ptr %1494, align 8
  %1496 = load double, ptr %1492, align 8
  %1497 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1, i32 0, i32 1
  %1498 = load double, ptr %1497, align 8
  store i64 1, ptr %1488, align 8, !tbaa !193
  %1499 = fsub double %1493, %1496
  %1500 = call double @llvm.fabs.f64(double %1499)
  %1501 = fcmp olt double %1500, 1.000000e-15
  br i1 %1501, label %1502, label %1506

1502:                                             ; preds = %1491
  %1503 = fsub double %1495, %1498
  %1504 = call double @llvm.fabs.f64(double %1503)
  %1505 = fcmp olt double %1504, 1.000000e-15
  br i1 %1505, label %1510, label %1506

1506:                                             ; preds = %1502, %1491
  %1507 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1, i32 1
  store i64 1, ptr %1507, align 8, !tbaa !193
  %1508 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 2
  %1509 = load i32, ptr %1508, align 8, !tbaa !191
  br label %1510

1510:                                             ; preds = %1502, %1506
  %1511 = phi i64 [ 1, %1506 ], [ 0, %1502 ]
  %1512 = phi i32 [ %1509, %1506 ], [ 1, %1502 ]
  %1513 = phi i64 [ 2, %1506 ], [ 1, %1502 ]
  %1514 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 %1511, i32 2
  store i32 %1512, ptr %1514, align 8, !tbaa !191
  store i64 %1513, ptr %1488, align 8, !tbaa !193
  br label %2536

1515:                                             ; preds = %1479
  %1516 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1517 = load i64, ptr %1516, align 8, !tbaa !193
  %1518 = icmp eq i64 %1517, 2
  br i1 %1518, label %1519, label %2536

1519:                                             ; preds = %1515
  %1520 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1
  %1521 = load double, ptr %1481, align 8
  %1522 = getelementptr inbounds { double, double }, ptr %1481, i64 0, i32 1
  %1523 = load double, ptr %1522, align 8
  %1524 = load double, ptr %1520, align 8
  %1525 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1, i32 0, i32 1
  %1526 = load double, ptr %1525, align 8
  store i64 1, ptr %1516, align 8, !tbaa !193
  %1527 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1, i32 1
  store i64 1, ptr %1527, align 8, !tbaa !193
  store double %1521, ptr %1520, align 8, !tbaa.struct !131
  %1528 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2
  %1529 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2, i32 1
  store i64 1, ptr %1529, align 8, !tbaa !193
  store double %1524, ptr %1528, align 8, !tbaa.struct !131
  %1530 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2, i32 0, i32 1
  store double %1526, ptr %1530, align 8, !tbaa.struct !132
  %1531 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 3
  %1532 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 3, i32 1
  store i64 1, ptr %1532, align 8, !tbaa !193
  store double %1524, ptr %1531, align 8, !tbaa.struct !131
  %1533 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 3, i32 0, i32 1
  store double %1523, ptr %1533, align 8, !tbaa.struct !132
  %1534 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 4
  %1535 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 4, i32 1
  store i64 1, ptr %1535, align 8, !tbaa !193
  store double %1521, ptr %1534, align 8, !tbaa.struct !131
  %1536 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 4, i32 0, i32 1
  store double %1523, ptr %1536, align 8, !tbaa.struct !132
  %1537 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 5
  store i64 5, ptr %1516, align 8, !tbaa !193
  %1538 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 2
  br label %1539

1539:                                             ; preds = %1519, %1539
  %1540 = phi i64 [ 0, %1519 ], [ %1545, %1539 ]
  %1541 = phi ptr [ %1537, %1519 ], [ %1544, %1539 ]
  %1542 = load i32, ptr %1538, align 8, !tbaa !191
  %1543 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1541, i64 0, i32 2
  store i32 %1542, ptr %1543, align 8, !tbaa !191
  %1544 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1541, i64 -1
  %1545 = add nuw nsw i64 %1540, 1
  %1546 = icmp eq i64 %1545, 5
  br i1 %1546, label %2536, label %1539, !llvm.loop !201

1547:                                             ; preds = %1479
  %1548 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1549 = load i64, ptr %1548, align 8, !tbaa !193
  %1550 = icmp eq i64 %1549, 3
  br i1 %1550, label %1551, label %2536

1551:                                             ; preds = %1547
  %1552 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1
  %1553 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2
  %1554 = load double, ptr %1481, align 8
  %1555 = getelementptr inbounds { double, double }, ptr %1481, i64 0, i32 1
  %1556 = load double, ptr %1555, align 8
  %1557 = load double, ptr %1552, align 8
  %1558 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1, i32 0, i32 1
  %1559 = load double, ptr %1558, align 8
  %1560 = load double, ptr %1553, align 8
  %1561 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2, i32 0, i32 1
  %1562 = load double, ptr %1561, align 8
  %1563 = fsub double %1557, %1554
  %1564 = call double @llvm.fabs.f64(double %1563)
  %1565 = fsub double %1559, %1556
  %1566 = call double @llvm.fabs.f64(double %1565)
  %1567 = fmul double %1564, 5.000000e-01
  %1568 = fcmp olt double %1567, %1560
  %1569 = select i1 %1568, double %1567, double %1560
  %1570 = fmul double %1566, 5.000000e-01
  %1571 = fcmp olt double %1570, %1562
  %1572 = select i1 %1571, double %1570, double %1562
  %1573 = fadd double %1554, %1564
  %1574 = fsub double %1573, %1569
  %1575 = fadd double %1556, %1572
  call fastcc void @TraceEllipse(ptr noundef nonnull %1481, double %1574, double %1575, double %1569, double %1572, double 2.700000e+02, double 3.600000e+02)
  %1576 = load i64, ptr %1548, align 8, !tbaa !193
  %1577 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 %1576
  %1578 = fadd double %1556, %1566
  %1579 = fsub double %1578, %1572
  call fastcc void @TraceEllipse(ptr noundef nonnull %1577, double %1574, double %1579, double %1569, double %1572, double 0.000000e+00, double 9.000000e+01)
  %1580 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 %1576, i32 1
  %1581 = load i64, ptr %1580, align 8, !tbaa !193
  %1582 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1577, i64 %1581
  %1583 = fadd double %1554, %1569
  call fastcc void @TraceEllipse(ptr noundef nonnull %1582, double %1583, double %1579, double %1569, double %1572, double 9.000000e+01, double 1.800000e+02)
  %1584 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1577, i64 %1581, i32 1
  %1585 = load i64, ptr %1584, align 8, !tbaa !193
  %1586 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1582, i64 %1585
  call fastcc void @TraceEllipse(ptr noundef nonnull %1586, double %1583, double %1575, double %1569, double %1572, double 1.800000e+02, double 2.700000e+02)
  %1587 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1582, i64 %1585, i32 1
  %1588 = load i64, ptr %1587, align 8, !tbaa !193
  %1589 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1586, i64 %1588
  %1590 = load double, ptr %1481, align 8
  %1591 = load double, ptr %1555, align 8
  %1592 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1586, i64 %1588, i32 1
  store i64 1, ptr %1592, align 8, !tbaa !193
  store double %1590, ptr %1589, align 8, !tbaa.struct !131
  %1593 = getelementptr inbounds i8, ptr %1589, i64 8
  store double %1591, ptr %1593, align 8, !tbaa.struct !132
  %1594 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1589, i64 1
  %1595 = ptrtoint ptr %1594 to i64
  %1596 = ptrtoint ptr %1481 to i64
  %1597 = sub i64 %1595, %1596
  %1598 = sdiv exact i64 %1597, 40
  store i64 %1598, ptr %1548, align 8, !tbaa !193
  %1599 = icmp sgt i64 %1597, 0
  br i1 %1599, label %1600, label %2536

1600:                                             ; preds = %1551
  %1601 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 2
  %1602 = call i64 @llvm.smax.i64(i64 %1598, i64 1)
  br label %1603

1603:                                             ; preds = %1603, %1600
  %1604 = phi i64 [ 0, %1600 ], [ %1609, %1603 ]
  %1605 = phi ptr [ %1594, %1600 ], [ %1608, %1603 ]
  %1606 = load i32, ptr %1601, align 8, !tbaa !191
  %1607 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1605, i64 0, i32 2
  store i32 %1606, ptr %1607, align 8, !tbaa !191
  %1608 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1605, i64 -1
  %1609 = add nuw nsw i64 %1604, 1
  %1610 = icmp eq i64 %1609, %1602
  br i1 %1610, label %2536, label %1603, !llvm.loop !202

1611:                                             ; preds = %1479
  %1612 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1613 = load i64, ptr %1612, align 8, !tbaa !193
  %1614 = icmp eq i64 %1613, 3
  br i1 %1614, label %1615, label %2536

1615:                                             ; preds = %1611
  %1616 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1
  %1617 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2
  %1618 = load double, ptr %1481, align 8
  %1619 = getelementptr inbounds { double, double }, ptr %1481, i64 0, i32 1
  %1620 = load double, ptr %1619, align 8
  %1621 = load double, ptr %1616, align 8
  %1622 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1, i32 0, i32 1
  %1623 = load double, ptr %1622, align 8
  %1624 = load double, ptr %1617, align 8
  %1625 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2, i32 0, i32 1
  %1626 = load double, ptr %1625, align 8
  %1627 = fadd double %1618, %1621
  %1628 = fmul double %1627, 5.000000e-01
  %1629 = fadd double %1620, %1623
  %1630 = fmul double %1629, 5.000000e-01
  %1631 = fsub double %1628, %1618
  %1632 = call double @llvm.fabs.f64(double %1631)
  %1633 = fsub double %1630, %1620
  %1634 = call double @llvm.fabs.f64(double %1633)
  call fastcc void @TraceEllipse(ptr noundef nonnull %1481, double %1628, double %1630, double %1632, double %1634, double %1624, double %1626)
  %1635 = load i64, ptr %1612, align 8, !tbaa !193
  br label %2536

1636:                                             ; preds = %1479
  %1637 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1638 = load i64, ptr %1637, align 8, !tbaa !193
  %1639 = icmp eq i64 %1638, 3
  br i1 %1639, label %1640, label %2536

1640:                                             ; preds = %1636
  %1641 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1
  %1642 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2
  %1643 = load double, ptr %1481, align 8
  %1644 = getelementptr inbounds { double, double }, ptr %1481, i64 0, i32 1
  %1645 = load double, ptr %1644, align 8
  %1646 = load double, ptr %1641, align 8
  %1647 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1, i32 0, i32 1
  %1648 = load double, ptr %1647, align 8
  %1649 = load double, ptr %1642, align 8
  %1650 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 2, i32 0, i32 1
  %1651 = load double, ptr %1650, align 8
  call fastcc void @TraceEllipse(ptr noundef nonnull %1481, double %1643, double %1645, double %1646, double %1648, double %1649, double %1651)
  %1652 = load i64, ptr %1637, align 8, !tbaa !193
  br label %2536

1653:                                             ; preds = %1479
  %1654 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1655 = load i64, ptr %1654, align 8, !tbaa !193
  %1656 = icmp eq i64 %1655, 2
  br i1 %1656, label %1657, label %2536

1657:                                             ; preds = %1653
  %1658 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1
  %1659 = load double, ptr %1481, align 8
  %1660 = getelementptr inbounds { double, double }, ptr %1481, i64 0, i32 1
  %1661 = load double, ptr %1660, align 8
  %1662 = load double, ptr %1658, align 8
  %1663 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 1, i32 0, i32 1
  %1664 = load double, ptr %1663, align 8
  %1665 = fsub double %1662, %1659
  %1666 = fsub double %1664, %1661
  %1667 = call double @hypot(double noundef %1665, double noundef %1666) #24
  call fastcc void @TraceEllipse(ptr noundef nonnull %1481, double %1659, double %1661, double %1667, double %1667, double 0.000000e+00, double 3.600000e+02)
  %1668 = load i64, ptr %1654, align 8, !tbaa !193
  br label %2536

1669:                                             ; preds = %1479
  %1670 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 %1389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1670, ptr noundef nonnull align 8 dereferenceable(40) %1481, i64 40, i1 false), !tbaa.struct !203
  %1671 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 %1389, i32 1
  store i64 0, ptr %1671, align 8, !tbaa !193
  %1672 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1673 = load i64, ptr %1672, align 8, !tbaa !193
  %1674 = add i64 %1673, 1
  store i64 %1674, ptr %1672, align 8, !tbaa !193
  %1675 = add nuw nsw i64 %1389, 1
  br label %2536

1676:                                             ; preds = %1479
  %1677 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %1678 = load i64, ptr %1677, align 8, !tbaa !193
  %1679 = icmp ult i64 %1678, 3
  br i1 %1679, label %2536, label %1680

1680:                                             ; preds = %1676
  call fastcc void @TraceBezier(ptr noundef nonnull %1481, i64 noundef %1678)
  %1681 = load i64, ptr %1677, align 8, !tbaa !193
  br label %2536

1682:                                             ; preds = %1479
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #24
  %1683 = call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 16) #24
  %1684 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 2
  %1685 = load i32, ptr %1684, align 8, !tbaa !191
  store ptr %116, ptr %13, align 8, !tbaa !105
  %1686 = load i8, ptr %116, align 1, !tbaa !164
  %1687 = icmp eq i8 %1686, 0
  br i1 %1687, label %2482, label %1688

1688:                                             ; preds = %1682
  %1689 = tail call ptr @__ctype_b_loc() #25
  br label %1690

1690:                                             ; preds = %2464, %1688
  %1691 = phi ptr [ %1481, %1688 ], [ %2472, %2464 ]
  %1692 = phi i32 [ 0, %1688 ], [ %1725, %2464 ]
  %1693 = phi i64 [ 0, %1688 ], [ %2471, %2464 ]
  %1694 = phi i64 [ 0, %1688 ], [ %2470, %2464 ]
  %1695 = phi ptr [ %1481, %1688 ], [ %2469, %2464 ]
  %1696 = phi double [ 0.000000e+00, %1688 ], [ %2468, %2464 ]
  %1697 = phi double [ 0.000000e+00, %1688 ], [ %2467, %2464 ]
  %1698 = phi double [ 0.000000e+00, %1688 ], [ %2466, %2464 ]
  %1699 = phi double [ 0.000000e+00, %1688 ], [ %2465, %2464 ]
  %1700 = load ptr, ptr %1689, align 8, !tbaa !105
  %1701 = load ptr, ptr %13, align 8, !tbaa !105
  %1702 = load i8, ptr %1701, align 1, !tbaa !164
  %1703 = zext i8 %1702 to i64
  %1704 = getelementptr inbounds i16, ptr %1700, i64 %1703
  %1705 = load i16, ptr %1704, align 2, !tbaa !149
  %1706 = and i16 %1705, 8192
  %1707 = icmp eq i16 %1706, 0
  br i1 %1707, label %1718, label %1708

1708:                                             ; preds = %1690, %1708
  %1709 = phi ptr [ %1710, %1708 ], [ %1701, %1690 ]
  %1710 = getelementptr inbounds i8, ptr %1709, i64 1
  store ptr %1710, ptr %13, align 8, !tbaa !105
  %1711 = load ptr, ptr %1689, align 8, !tbaa !105
  %1712 = load i8, ptr %1710, align 1, !tbaa !164
  %1713 = zext i8 %1712 to i64
  %1714 = getelementptr inbounds i16, ptr %1711, i64 %1713
  %1715 = load i16, ptr %1714, align 2, !tbaa !149
  %1716 = and i16 %1715, 8192
  %1717 = icmp eq i16 %1716, 0
  br i1 %1717, label %1718, label %1708, !llvm.loop !204

1718:                                             ; preds = %1708, %1690
  %1719 = phi ptr [ %1701, %1690 ], [ %1710, %1708 ]
  %1720 = phi i8 [ %1702, %1690 ], [ %1712, %1708 ]
  %1721 = icmp eq i8 %1720, 0
  br i1 %1721, label %2476, label %1722

1722:                                             ; preds = %1718
  %1723 = getelementptr inbounds i8, ptr %1719, i64 1
  store ptr %1723, ptr %13, align 8, !tbaa !105
  %1724 = load i8, ptr %1719, align 1, !tbaa !164
  %1725 = sext i8 %1724 to i32
  switch i8 %1724, label %2454 [
    i8 97, label %1726
    i8 65, label %1726
    i8 99, label %2092
    i8 67, label %2092
    i8 72, label %2138
    i8 104, label %2138
    i8 108, label %2161
    i8 76, label %2161
    i8 77, label %2194
    i8 109, label %2194
    i8 113, label %2251
    i8 81, label %2251
    i8 115, label %2303
    i8 83, label %2303
    i8 116, label %2368
    i8 84, label %2368
    i8 118, label %2420
    i8 86, label %2420
    i8 122, label %2443
    i8 90, label %2443
  ]

1726:                                             ; preds = %1722, %1722
  %1727 = icmp eq i8 %1724, 65
  br label %1728

1728:                                             ; preds = %2085, %1726
  %1729 = phi double [ %1699, %1726 ], [ %1785, %2085 ]
  %1730 = phi double [ %1698, %1726 ], [ %1783, %2085 ]
  %1731 = phi ptr [ %1695, %1726 ], [ %2060, %2085 ]
  %1732 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1732, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %1733 = load i8, ptr %12, align 16, !tbaa !164
  %1734 = icmp eq i8 %1733, 44
  br i1 %1734, label %1735, label %1737

1735:                                             ; preds = %1728
  %1736 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1736, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %1737

1737:                                             ; preds = %1735, %1728
  %1738 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %1739 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1739, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %1740 = load i8, ptr %12, align 16, !tbaa !164
  %1741 = icmp eq i8 %1740, 44
  br i1 %1741, label %1742, label %1744

1742:                                             ; preds = %1737
  %1743 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1743, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %1744

1744:                                             ; preds = %1742, %1737
  %1745 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %1746 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1746, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %1747 = load i8, ptr %12, align 16, !tbaa !164
  %1748 = icmp eq i8 %1747, 44
  br i1 %1748, label %1749, label %1751

1749:                                             ; preds = %1744
  %1750 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1750, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %1751

1751:                                             ; preds = %1749, %1744
  %1752 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %1753 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1753, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %1754 = load i8, ptr %12, align 16, !tbaa !164
  %1755 = icmp eq i8 %1754, 44
  br i1 %1755, label %1756, label %1758

1756:                                             ; preds = %1751
  %1757 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1757, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %1758

1758:                                             ; preds = %1756, %1751
  %1759 = call i64 @strtol(ptr nocapture noundef nonnull %12, ptr noundef null, i32 noundef 10) #24
  %1760 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1760, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %1761 = load i8, ptr %12, align 16, !tbaa !164
  %1762 = icmp eq i8 %1761, 44
  br i1 %1762, label %1763, label %1765

1763:                                             ; preds = %1758
  %1764 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1764, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %1765

1765:                                             ; preds = %1763, %1758
  %1766 = call i64 @strtol(ptr nocapture noundef nonnull %12, ptr noundef null, i32 noundef 10) #24
  %1767 = icmp ne i64 %1766, 0
  %1768 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1768, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %1769 = load i8, ptr %12, align 16, !tbaa !164
  %1770 = icmp eq i8 %1769, 44
  br i1 %1770, label %1771, label %1773

1771:                                             ; preds = %1765
  %1772 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1772, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %1773

1773:                                             ; preds = %1771, %1765
  %1774 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %1775 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1775, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %1776 = load i8, ptr %12, align 16, !tbaa !164
  %1777 = icmp eq i8 %1776, 44
  br i1 %1777, label %1778, label %1780

1778:                                             ; preds = %1773
  %1779 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %1779, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %1780

1780:                                             ; preds = %1778, %1773
  %1781 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %1782 = select i1 %1727, double -0.000000e+00, double %1730
  %1783 = fadd double %1782, %1774
  %1784 = select i1 %1727, double -0.000000e+00, double %1729
  %1785 = fadd double %1784, %1781
  %1786 = fcmp oeq double %1730, %1783
  %1787 = fcmp oeq double %1729, %1785
  %1788 = select i1 %1786, i1 %1787, i1 false
  br i1 %1788, label %1789, label %1792

1789:                                             ; preds = %1780
  %1790 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 0, i32 1
  store i64 1, ptr %1790, align 8, !tbaa !193
  store double %1783, ptr %1731, align 8, !tbaa.struct !131
  %1791 = getelementptr inbounds i8, ptr %1731, i64 8
  store double %1785, ptr %1791, align 8, !tbaa.struct !132
  br label %2057

1792:                                             ; preds = %1780
  %1793 = call double @llvm.fabs.f64(double %1738)
  %1794 = call double @llvm.fabs.f64(double %1745)
  %1795 = fcmp oeq double %1738, 0.000000e+00
  %1796 = fcmp oeq double %1745, 0.000000e+00
  %1797 = select i1 %1795, i1 true, i1 %1796
  br i1 %1797, label %1798, label %1819

1798:                                             ; preds = %1792
  %1799 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 0, i32 1
  store i64 1, ptr %1799, align 8, !tbaa !193
  store double %1730, ptr %1731, align 8, !tbaa.struct !131
  %1800 = getelementptr inbounds i8, ptr %1731, i64 8
  store double %1729, ptr %1800, align 8, !tbaa.struct !132
  %1801 = fsub double %1730, %1783
  %1802 = call double @llvm.fabs.f64(double %1801)
  %1803 = fcmp olt double %1802, 1.000000e-15
  br i1 %1803, label %1804, label %1808

1804:                                             ; preds = %1798
  %1805 = fsub double %1729, %1785
  %1806 = call double @llvm.fabs.f64(double %1805)
  %1807 = fcmp olt double %1806, 1.000000e-15
  br i1 %1807, label %1814, label %1808

1808:                                             ; preds = %1804, %1798
  %1809 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 1
  %1810 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 1, i32 1
  store i64 1, ptr %1810, align 8, !tbaa !193
  store double %1783, ptr %1809, align 8, !tbaa.struct !131
  %1811 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 1, i32 0, i32 1
  store double %1785, ptr %1811, align 8, !tbaa.struct !132
  %1812 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 0, i32 2
  %1813 = load i32, ptr %1812, align 8, !tbaa !191
  br label %1814

1814:                                             ; preds = %1804, %1808
  %1815 = phi i64 [ 1, %1808 ], [ 0, %1804 ]
  %1816 = phi i32 [ %1813, %1808 ], [ 1, %1804 ]
  %1817 = phi i64 [ 2, %1808 ], [ 1, %1804 ]
  %1818 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 %1815, i32 2
  store i32 %1816, ptr %1818, align 8, !tbaa !191
  store i64 %1817, ptr %1799, align 8, !tbaa !193
  br label %2057

1819:                                             ; preds = %1792
  %1820 = call double @fmod(double noundef %1752, double noundef 3.600000e+02) #24
  %1821 = fmul double %1820, 0x400921FB54442D18
  %1822 = fdiv double %1821, 1.800000e+02
  %1823 = call double @cos(double noundef %1822) #24
  %1824 = call double @fmod(double noundef %1752, double noundef 3.600000e+02) #24
  %1825 = fmul double %1824, 0x400921FB54442D18
  %1826 = fdiv double %1825, 1.800000e+02
  %1827 = call double @sin(double noundef %1826) #24
  %1828 = fsub double %1783, %1730
  %1829 = fmul double %1828, %1823
  %1830 = fmul double %1829, 5.000000e-01
  %1831 = fsub double %1785, %1729
  %1832 = fmul double %1831, %1827
  %1833 = fmul double %1832, 5.000000e-01
  %1834 = fadd double %1830, %1833
  %1835 = fmul double %1831, %1823
  %1836 = fmul double %1835, 5.000000e-01
  %1837 = fmul double %1828, %1827
  %1838 = fmul double %1837, 5.000000e-01
  %1839 = fsub double %1836, %1838
  %1840 = fmul double %1834, %1834
  %1841 = fmul double %1738, %1738
  %1842 = fdiv double %1840, %1841
  %1843 = fmul double %1839, %1839
  %1844 = fmul double %1745, %1745
  %1845 = fdiv double %1843, %1844
  %1846 = fadd double %1842, %1845
  %1847 = fcmp olt double %1846, 1.000000e-15
  br i1 %1847, label %1848, label %1869

1848:                                             ; preds = %1819
  %1849 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 0, i32 1
  store i64 1, ptr %1849, align 8, !tbaa !193
  store double %1730, ptr %1731, align 8, !tbaa.struct !131
  %1850 = getelementptr inbounds i8, ptr %1731, i64 8
  store double %1729, ptr %1850, align 8, !tbaa.struct !132
  %1851 = fsub double %1730, %1783
  %1852 = call double @llvm.fabs.f64(double %1851)
  %1853 = fcmp olt double %1852, 1.000000e-15
  br i1 %1853, label %1854, label %1858

1854:                                             ; preds = %1848
  %1855 = fsub double %1729, %1785
  %1856 = call double @llvm.fabs.f64(double %1855)
  %1857 = fcmp olt double %1856, 1.000000e-15
  br i1 %1857, label %1864, label %1858

1858:                                             ; preds = %1854, %1848
  %1859 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 1
  %1860 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 1, i32 1
  store i64 1, ptr %1860, align 8, !tbaa !193
  store double %1783, ptr %1859, align 8, !tbaa.struct !131
  %1861 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 1, i32 0, i32 1
  store double %1785, ptr %1861, align 8, !tbaa.struct !132
  %1862 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 0, i32 2
  %1863 = load i32, ptr %1862, align 8, !tbaa !191
  br label %1864

1864:                                             ; preds = %1854, %1858
  %1865 = phi i64 [ 1, %1858 ], [ 0, %1854 ]
  %1866 = phi i32 [ %1863, %1858 ], [ 1, %1854 ]
  %1867 = phi i64 [ 2, %1858 ], [ 1, %1854 ]
  %1868 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 %1865, i32 2
  store i32 %1866, ptr %1868, align 8, !tbaa !191
  store i64 %1867, ptr %1849, align 8, !tbaa !193
  br label %2057

1869:                                             ; preds = %1819
  %1870 = fcmp ogt double %1846, 1.000000e+00
  br i1 %1870, label %1871, label %1876

1871:                                             ; preds = %1869
  %1872 = call double @sqrt(double noundef %1846) #24
  %1873 = fmul double %1793, %1872
  %1874 = call double @sqrt(double noundef %1846) #24
  %1875 = fmul double %1794, %1874
  br label %1876

1876:                                             ; preds = %1871, %1869
  %1877 = phi double [ %1875, %1871 ], [ %1794, %1869 ]
  %1878 = phi double [ %1873, %1871 ], [ %1793, %1869 ]
  %1879 = fmul double %1730, %1823
  %1880 = fdiv double %1879, %1878
  %1881 = fmul double %1729, %1827
  %1882 = fdiv double %1881, %1878
  %1883 = fadd double %1880, %1882
  %1884 = fmul double %1729, %1823
  %1885 = fdiv double %1884, %1877
  %1886 = fmul double %1730, %1827
  %1887 = fdiv double %1886, %1877
  %1888 = fsub double %1885, %1887
  %1889 = fmul double %1783, %1823
  %1890 = fdiv double %1889, %1878
  %1891 = fmul double %1785, %1827
  %1892 = fdiv double %1891, %1878
  %1893 = fadd double %1890, %1892
  %1894 = fmul double %1785, %1823
  %1895 = fdiv double %1894, %1877
  %1896 = fmul double %1783, %1827
  %1897 = fdiv double %1896, %1877
  %1898 = fsub double %1895, %1897
  %1899 = fsub double %1893, %1883
  %1900 = fsub double %1898, %1888
  %1901 = fmul double %1900, %1900
  %1902 = call double @llvm.fmuladd.f64(double %1899, double %1899, double %1901)
  %1903 = fcmp ult double %1902, 1.000000e-15
  %1904 = fdiv double 1.000000e+00, %1902
  %1905 = fadd double %1904, -2.500000e-01
  %1906 = select i1 %1903, double 0x430C6BF52633FFFD, double %1905
  %1907 = fcmp ugt double %1906, 0.000000e+00
  br i1 %1907, label %1908, label %1914

1908:                                             ; preds = %1876
  %1909 = call double @sqrt(double noundef %1906) #24
  %1910 = icmp eq i64 %1759, 0
  %1911 = xor i1 %1910, %1767
  br i1 %1911, label %1912, label %1914

1912:                                             ; preds = %1908
  %1913 = fneg double %1909
  br label %1914

1914:                                             ; preds = %1912, %1908, %1876
  %1915 = phi double [ %1913, %1912 ], [ %1909, %1908 ], [ 0.000000e+00, %1876 ]
  %1916 = fadd double %1883, %1893
  %1917 = fmul double %1916, 5.000000e-01
  %1918 = fneg double %1915
  %1919 = call double @llvm.fmuladd.f64(double %1918, double %1900, double %1917)
  %1920 = fadd double %1888, %1898
  %1921 = fmul double %1920, 5.000000e-01
  %1922 = call double @llvm.fmuladd.f64(double %1915, double %1899, double %1921)
  %1923 = fsub double %1888, %1922
  %1924 = fsub double %1883, %1919
  %1925 = call double @atan2(double noundef %1923, double noundef %1924) #24
  %1926 = fsub double %1898, %1922
  %1927 = fsub double %1893, %1919
  %1928 = call double @atan2(double noundef %1926, double noundef %1927) #24
  %1929 = fsub double %1928, %1925
  %1930 = fcmp olt double %1929, 0.000000e+00
  %1931 = and i1 %1767, %1930
  br i1 %1931, label %1932, label %1934

1932:                                             ; preds = %1914
  %1933 = fadd double %1929, 0x401921FB54442D18
  br label %1939

1934:                                             ; preds = %1914
  %1935 = fcmp ule double %1929, 0.000000e+00
  %1936 = or i1 %1767, %1935
  br i1 %1936, label %1939, label %1937

1937:                                             ; preds = %1934
  %1938 = fadd double %1929, 0xC01921FB54442D18
  br label %1939

1939:                                             ; preds = %1937, %1934, %1932
  %1940 = phi double [ %1933, %1932 ], [ %1938, %1937 ], [ %1929, %1934 ]
  %1941 = fdiv double %1940, 0x3FF921FB54442D1D
  %1942 = call double @llvm.fabs.f64(double %1941)
  %1943 = call double @llvm.ceil.f64(double %1942)
  %1944 = fptoui double %1943 to i64
  %1945 = icmp sgt i64 %1944, 0
  br i1 %1945, label %1946, label %2038

1946:                                             ; preds = %1939
  %1947 = uitofp i64 %1944 to double
  %1948 = fmul double %1823, %1878
  %1949 = fneg double %1827
  %1950 = fmul double %1877, %1949
  %1951 = fmul double %1827, %1878
  %1952 = fmul double %1823, %1877
  %1953 = add nsw i64 %1944, -1
  br label %1954

1954:                                             ; preds = %2033, %1946
  %1955 = phi i64 [ 0, %1946 ], [ %1957, %2033 ]
  %1956 = phi ptr [ %1731, %1946 ], [ %2036, %2033 ]
  %1957 = add nuw nsw i64 %1955, 1
  %1958 = sitofp i64 %1957 to double
  %1959 = fmul double %1940, %1958
  %1960 = fdiv double %1959, %1947
  %1961 = fadd double %1925, %1960
  %1962 = sitofp i64 %1955 to double
  %1963 = fmul double %1940, %1962
  %1964 = fdiv double %1963, %1947
  %1965 = fadd double %1925, %1964
  %1966 = fsub double %1961, %1965
  %1967 = fmul double %1966, 5.000000e-01
  %1968 = fmul double %1967, 5.000000e-01
  %1969 = call double @fmod(double noundef %1968, double noundef 0x401921FB54442D18) #24
  %1970 = call double @sin(double noundef %1969) #24
  %1971 = fmul double %1970, 0x4005555555555555
  %1972 = call double @fmod(double noundef %1968, double noundef 0x401921FB54442D18) #24
  %1973 = call double @sin(double noundef %1972) #24
  %1974 = fmul double %1971, %1973
  %1975 = call double @fmod(double noundef %1967, double noundef 0x401921FB54442D18) #24
  %1976 = call double @sin(double noundef %1975) #24
  %1977 = fdiv double %1974, %1976
  %1978 = call double @fmod(double noundef %1965, double noundef 0x401921FB54442D18) #24
  %1979 = call double @cos(double noundef %1978) #24
  %1980 = fadd double %1919, %1979
  %1981 = call double @fmod(double noundef %1965, double noundef 0x401921FB54442D18) #24
  %1982 = call double @sin(double noundef %1981) #24
  %1983 = fneg double %1977
  %1984 = call double @llvm.fmuladd.f64(double %1983, double %1982, double %1980)
  %1985 = call double @fmod(double noundef %1965, double noundef 0x401921FB54442D18) #24
  %1986 = call double @sin(double noundef %1985) #24
  %1987 = fadd double %1922, %1986
  %1988 = call double @fmod(double noundef %1965, double noundef 0x401921FB54442D18) #24
  %1989 = call double @cos(double noundef %1988) #24
  %1990 = call double @llvm.fmuladd.f64(double %1977, double %1989, double %1987)
  %1991 = call double @fmod(double noundef %1961, double noundef 0x401921FB54442D18) #24
  %1992 = call double @cos(double noundef %1991) #24
  %1993 = fadd double %1919, %1992
  %1994 = call double @fmod(double noundef %1961, double noundef 0x401921FB54442D18) #24
  %1995 = call double @sin(double noundef %1994) #24
  %1996 = fadd double %1922, %1995
  %1997 = call double @fmod(double noundef %1961, double noundef 0x401921FB54442D18) #24
  %1998 = call double @sin(double noundef %1997) #24
  %1999 = call double @llvm.fmuladd.f64(double %1977, double %1998, double %1993)
  %2000 = call double @fmod(double noundef %1961, double noundef 0x401921FB54442D18) #24
  %2001 = call double @cos(double noundef %2000) #24
  %2002 = call double @llvm.fmuladd.f64(double %1983, double %2001, double %1996)
  %2003 = icmp eq ptr %1956, %1731
  br i1 %2003, label %2009, label %2004

2004:                                             ; preds = %1954
  %2005 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 -1
  %2006 = load double, ptr %2005, align 8, !tbaa !197
  store double %2006, ptr %1956, align 8, !tbaa !197
  %2007 = getelementptr %struct._PrimitiveInfo, ptr %1956, i64 -1, i32 0, i32 1
  %2008 = load double, ptr %2007, align 8, !tbaa !198
  br label %2010

2009:                                             ; preds = %1954
  store double %1730, ptr %1956, align 8, !tbaa !197
  br label %2010

2010:                                             ; preds = %2009, %2004
  %2011 = phi double [ %2008, %2004 ], [ %1729, %2009 ]
  %2012 = getelementptr inbounds %struct._PointInfo, ptr %1956, i64 0, i32 1
  store double %2011, ptr %2012, align 8, !tbaa !198
  %2013 = fmul double %1950, %1990
  %2014 = call double @llvm.fmuladd.f64(double %1948, double %1984, double %2013)
  %2015 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 1
  store double %2014, ptr %2015, align 8, !tbaa !197
  %2016 = fmul double %1952, %1990
  %2017 = call double @llvm.fmuladd.f64(double %1951, double %1984, double %2016)
  %2018 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 1, i32 0, i32 1
  store double %2017, ptr %2018, align 8, !tbaa !198
  %2019 = fmul double %1950, %2002
  %2020 = call double @llvm.fmuladd.f64(double %1948, double %1999, double %2019)
  %2021 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 2
  store double %2020, ptr %2021, align 8, !tbaa !197
  %2022 = fmul double %1952, %2002
  %2023 = call double @llvm.fmuladd.f64(double %1951, double %1999, double %2022)
  %2024 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 2, i32 0, i32 1
  store double %2023, ptr %2024, align 8, !tbaa !198
  %2025 = fmul double %1950, %1996
  %2026 = call double @llvm.fmuladd.f64(double %1948, double %1993, double %2025)
  %2027 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 3
  store double %2026, ptr %2027, align 8, !tbaa !197
  %2028 = fmul double %1952, %1996
  %2029 = call double @llvm.fmuladd.f64(double %1951, double %1993, double %2028)
  %2030 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 3, i32 0, i32 1
  store double %2029, ptr %2030, align 8, !tbaa !198
  %2031 = icmp eq i64 %1955, %1953
  br i1 %2031, label %2032, label %2033

2032:                                             ; preds = %2010
  store double %1783, ptr %2027, align 8, !tbaa.struct !131
  store double %1785, ptr %2030, align 8, !tbaa.struct !132
  br label %2033

2033:                                             ; preds = %2032, %2010
  call fastcc void @TraceBezier(ptr noundef nonnull %1956, i64 noundef 4)
  %2034 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 0, i32 1
  %2035 = load i64, ptr %2034, align 8, !tbaa !193
  %2036 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1956, i64 %2035
  %2037 = icmp eq i64 %1957, %1944
  br i1 %2037, label %2038, label %1954, !llvm.loop !205

2038:                                             ; preds = %2033, %1939
  %2039 = phi ptr [ %1731, %1939 ], [ %2036, %2033 ]
  %2040 = ptrtoint ptr %2039 to i64
  %2041 = ptrtoint ptr %1731 to i64
  %2042 = sub i64 %2040, %2041
  %2043 = sdiv exact i64 %2042, 40
  %2044 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 0, i32 1
  store i64 %2043, ptr %2044, align 8, !tbaa !193
  %2045 = icmp sgt i64 %2042, 0
  br i1 %2045, label %2046, label %2057

2046:                                             ; preds = %2038
  %2047 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 0, i32 2
  %2048 = call i64 @llvm.smax.i64(i64 %2043, i64 1)
  br label %2049

2049:                                             ; preds = %2049, %2046
  %2050 = phi i64 [ 0, %2046 ], [ %2055, %2049 ]
  %2051 = phi ptr [ %2039, %2046 ], [ %2054, %2049 ]
  %2052 = load i32, ptr %2047, align 8, !tbaa !191
  %2053 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2051, i64 0, i32 2
  store i32 %2052, ptr %2053, align 8, !tbaa !191
  %2054 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2051, i64 -1
  %2055 = add nuw nsw i64 %2050, 1
  %2056 = icmp eq i64 %2055, %2048
  br i1 %2056, label %2057, label %2049, !llvm.loop !206

2057:                                             ; preds = %2049, %2038, %1864, %1814, %1789
  %2058 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 0, i32 1
  %2059 = load i64, ptr %2058, align 8, !tbaa !193
  %2060 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1731, i64 %2059
  %2061 = load ptr, ptr %1689, align 8, !tbaa !105
  %2062 = load ptr, ptr %13, align 8, !tbaa !105
  %2063 = load i8, ptr %2062, align 1, !tbaa !164
  %2064 = zext i8 %2063 to i64
  %2065 = getelementptr inbounds i16, ptr %2061, i64 %2064
  %2066 = load i16, ptr %2065, align 2, !tbaa !149
  %2067 = and i16 %2066, 8192
  %2068 = icmp eq i16 %2067, 0
  br i1 %2068, label %2079, label %2069

2069:                                             ; preds = %2057, %2069
  %2070 = phi ptr [ %2071, %2069 ], [ %2062, %2057 ]
  %2071 = getelementptr inbounds i8, ptr %2070, i64 1
  store ptr %2071, ptr %13, align 8, !tbaa !105
  %2072 = load ptr, ptr %1689, align 8, !tbaa !105
  %2073 = load i8, ptr %2071, align 1, !tbaa !164
  %2074 = zext i8 %2073 to i64
  %2075 = getelementptr inbounds i16, ptr %2072, i64 %2074
  %2076 = load i16, ptr %2075, align 2, !tbaa !149
  %2077 = and i16 %2076, 8192
  %2078 = icmp eq i16 %2077, 0
  br i1 %2078, label %2079, label %2069, !llvm.loop !207

2079:                                             ; preds = %2069, %2057
  %2080 = phi ptr [ %2062, %2057 ], [ %2071, %2069 ]
  %2081 = phi i8 [ %2063, %2057 ], [ %2073, %2069 ]
  %2082 = icmp eq i8 %2081, 44
  br i1 %2082, label %2083, label %2085

2083:                                             ; preds = %2079
  %2084 = getelementptr inbounds i8, ptr %2080, i64 1
  store ptr %2084, ptr %13, align 8, !tbaa !105
  br label %2085

2085:                                             ; preds = %2083, %2079
  %2086 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #24
  %2087 = call double @InterpretLocaleValue(ptr noundef %2086, ptr noundef nonnull %11) #24
  %2088 = fcmp oeq double %2087, 0.000000e+00
  %2089 = load ptr, ptr %11, align 8
  %2090 = icmp eq ptr %2089, %2086
  %2091 = select i1 %2088, i1 %2090, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #24
  br i1 %2091, label %2464, label %1728, !llvm.loop !208

2092:                                             ; preds = %1722, %1722
  %2093 = icmp eq i8 %1724, 67
  br label %2094

2094:                                             ; preds = %2128, %2092
  %2095 = phi double [ %1699, %2092 ], [ %2117, %2128 ]
  %2096 = phi double [ %1698, %2092 ], [ %2116, %2128 ]
  %2097 = phi ptr [ %1695, %2092 ], [ %2131, %2128 ]
  store double %2096, ptr %14, align 16, !tbaa.struct !131
  store double %2095, ptr %160, align 8, !tbaa.struct !132
  %2098 = select i1 %2093, double -0.000000e+00, double %2096
  %2099 = select i1 %2093, double -0.000000e+00, double %2095
  br label %2100

2100:                                             ; preds = %2114, %2094
  %2101 = phi i64 [ 1, %2094 ], [ %2120, %2114 ]
  %2102 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2102, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2103 = load i8, ptr %12, align 16, !tbaa !164
  %2104 = icmp eq i8 %2103, 44
  br i1 %2104, label %2105, label %2107

2105:                                             ; preds = %2100
  %2106 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2106, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2107

2107:                                             ; preds = %2105, %2100
  %2108 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2109 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2109, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2110 = load i8, ptr %12, align 16, !tbaa !164
  %2111 = icmp eq i8 %2110, 44
  br i1 %2111, label %2112, label %2114

2112:                                             ; preds = %2107
  %2113 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2113, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2114

2114:                                             ; preds = %2112, %2107
  %2115 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2116 = fadd double %2098, %2108
  %2117 = fadd double %2099, %2115
  %2118 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 %2101
  store double %2116, ptr %2118, align 16, !tbaa.struct !131
  %2119 = getelementptr inbounds i8, ptr %2118, i64 8
  store double %2117, ptr %2119, align 8, !tbaa.struct !132
  %2120 = add nuw nsw i64 %2101, 1
  %2121 = icmp eq i64 %2120, 4
  br i1 %2121, label %2122, label %2100, !llvm.loop !209

2122:                                             ; preds = %2114, %2122
  %2123 = phi i64 [ %2126, %2122 ], [ 0, %2114 ]
  %2124 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2097, i64 %2123
  %2125 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 %2123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2124, ptr noundef nonnull align 16 dereferenceable(16) %2125, i64 16, i1 false), !tbaa.struct !131
  %2126 = add nuw nsw i64 %2123, 1
  %2127 = icmp eq i64 %2126, 4
  br i1 %2127, label %2128, label %2122, !llvm.loop !210

2128:                                             ; preds = %2122
  call fastcc void @TraceBezier(ptr noundef %2097, i64 noundef 4)
  %2129 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2097, i64 0, i32 1
  %2130 = load i64, ptr %2129, align 8, !tbaa !193
  %2131 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2097, i64 %2130
  %2132 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  %2133 = call double @InterpretLocaleValue(ptr noundef %2132, ptr noundef nonnull %10) #24
  %2134 = fcmp oeq double %2133, 0.000000e+00
  %2135 = load ptr, ptr %10, align 8
  %2136 = icmp eq ptr %2135, %2132
  %2137 = select i1 %2134, i1 %2136, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  br i1 %2137, label %2464, label %2094, !llvm.loop !211

2138:                                             ; preds = %1722, %1722
  %2139 = icmp eq i8 %1724, 72
  br label %2140

2140:                                             ; preds = %2148, %2138
  %2141 = phi double [ %1698, %2138 ], [ %2151, %2148 ]
  %2142 = phi ptr [ %1695, %2138 ], [ %2154, %2148 ]
  %2143 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2143, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2144 = load i8, ptr %12, align 16, !tbaa !164
  %2145 = icmp eq i8 %2144, 44
  br i1 %2145, label %2146, label %2148

2146:                                             ; preds = %2140
  %2147 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2147, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2148

2148:                                             ; preds = %2146, %2140
  %2149 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2150 = select i1 %2139, double -0.000000e+00, double %2141
  %2151 = fadd double %2150, %2149
  %2152 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2142, i64 0, i32 1
  store i64 1, ptr %2152, align 8, !tbaa !193
  store double %2151, ptr %2142, align 8, !tbaa.struct !131
  %2153 = getelementptr inbounds i8, ptr %2142, i64 8
  store double %1699, ptr %2153, align 8, !tbaa.struct !132
  %2154 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2142, i64 1
  %2155 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  %2156 = call double @InterpretLocaleValue(ptr noundef %2155, ptr noundef nonnull %9) #24
  %2157 = fcmp oeq double %2156, 0.000000e+00
  %2158 = load ptr, ptr %9, align 8
  %2159 = icmp eq ptr %2158, %2155
  %2160 = select i1 %2157, i1 %2159, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  br i1 %2160, label %2464, label %2140, !llvm.loop !212

2161:                                             ; preds = %1722, %1722
  %2162 = icmp eq i8 %1724, 76
  br label %2163

2163:                                             ; preds = %2179, %2161
  %2164 = phi double [ %1699, %2161 ], [ %2184, %2179 ]
  %2165 = phi double [ %1698, %2161 ], [ %2182, %2179 ]
  %2166 = phi ptr [ %1695, %2161 ], [ %2187, %2179 ]
  %2167 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2167, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2168 = load i8, ptr %12, align 16, !tbaa !164
  %2169 = icmp eq i8 %2168, 44
  br i1 %2169, label %2170, label %2172

2170:                                             ; preds = %2163
  %2171 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2171, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2172

2172:                                             ; preds = %2170, %2163
  %2173 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2174 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2174, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2175 = load i8, ptr %12, align 16, !tbaa !164
  %2176 = icmp eq i8 %2175, 44
  br i1 %2176, label %2177, label %2179

2177:                                             ; preds = %2172
  %2178 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2178, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2179

2179:                                             ; preds = %2177, %2172
  %2180 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2181 = select i1 %2162, double -0.000000e+00, double %2165
  %2182 = fadd double %2181, %2173
  %2183 = select i1 %2162, double -0.000000e+00, double %2164
  %2184 = fadd double %2183, %2180
  %2185 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2166, i64 0, i32 1
  store i64 1, ptr %2185, align 8, !tbaa !193
  store double %2182, ptr %2166, align 8, !tbaa.struct !131
  %2186 = getelementptr inbounds i8, ptr %2166, i64 8
  store double %2184, ptr %2186, align 8, !tbaa.struct !132
  %2187 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2166, i64 1
  %2188 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %2189 = call double @InterpretLocaleValue(ptr noundef %2188, ptr noundef nonnull %8) #24
  %2190 = fcmp oeq double %2189, 0.000000e+00
  %2191 = load ptr, ptr %8, align 8
  %2192 = icmp eq ptr %2191, %2188
  %2193 = select i1 %2190, i1 %2192, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  br i1 %2193, label %2464, label %2163, !llvm.loop !213

2194:                                             ; preds = %1722, %1722
  %2195 = icmp eq ptr %1695, %1691
  br i1 %2195, label %2203, label %2196

2196:                                             ; preds = %2194
  %2197 = ptrtoint ptr %1695 to i64
  %2198 = ptrtoint ptr %1691 to i64
  %2199 = sub i64 %2197, %2198
  %2200 = sdiv exact i64 %2199, 40
  %2201 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1691, i64 0, i32 1
  store i64 %2200, ptr %2201, align 8, !tbaa !193
  %2202 = add i64 %2200, %1694
  br label %2203

2203:                                             ; preds = %2196, %2194
  %2204 = phi i64 [ %2202, %2196 ], [ %1694, %2194 ]
  %2205 = phi ptr [ %1695, %2196 ], [ %1691, %2194 ]
  %2206 = icmp eq i8 %1724, 77
  br label %2207

2207:                                             ; preds = %2243, %2203
  %2208 = phi double [ %1699, %2203 ], [ %2231, %2243 ]
  %2209 = phi double [ %1698, %2203 ], [ %2229, %2243 ]
  %2210 = phi double [ %1697, %2203 ], [ %2233, %2243 ]
  %2211 = phi double [ %1696, %2203 ], [ %2234, %2243 ]
  %2212 = phi ptr [ %1695, %2203 ], [ %2244, %2243 ]
  %2213 = phi i64 [ 0, %2203 ], [ %2235, %2243 ]
  %2214 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2214, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2215 = load i8, ptr %12, align 16, !tbaa !164
  %2216 = icmp eq i8 %2215, 44
  br i1 %2216, label %2217, label %2219

2217:                                             ; preds = %2207
  %2218 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2218, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2219

2219:                                             ; preds = %2217, %2207
  %2220 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2221 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2221, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2222 = load i8, ptr %12, align 16, !tbaa !164
  %2223 = icmp eq i8 %2222, 44
  br i1 %2223, label %2224, label %2226

2224:                                             ; preds = %2219
  %2225 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2225, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2226

2226:                                             ; preds = %2224, %2219
  %2227 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2228 = select i1 %2206, double -0.000000e+00, double %2209
  %2229 = fadd double %2228, %2220
  %2230 = select i1 %2206, double -0.000000e+00, double %2208
  %2231 = fadd double %2230, %2227
  %2232 = icmp eq i64 %2213, 0
  %2233 = select i1 %2232, double %2231, double %2210
  %2234 = select i1 %2232, double %2229, double %2211
  %2235 = add nuw nsw i64 %2213, 1
  %2236 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2212, i64 0, i32 1
  store i64 1, ptr %2236, align 8, !tbaa !193
  store double %2229, ptr %2212, align 8, !tbaa.struct !131
  %2237 = getelementptr inbounds i8, ptr %2212, i64 8
  store double %2231, ptr %2237, align 8, !tbaa.struct !132
  %2238 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2212, i64 1
  br i1 %2206, label %2239, label %2243

2239:                                             ; preds = %2226
  %2240 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2212, i64 1, i32 1
  store i64 1, ptr %2240, align 8, !tbaa !193
  store double %2229, ptr %2238, align 8, !tbaa.struct !131
  %2241 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2212, i64 1, i32 0, i32 1
  store double %2231, ptr %2241, align 8, !tbaa.struct !132
  %2242 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2212, i64 2
  br label %2243

2243:                                             ; preds = %2239, %2226
  %2244 = phi ptr [ %2242, %2239 ], [ %2238, %2226 ]
  %2245 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %2246 = call double @InterpretLocaleValue(ptr noundef %2245, ptr noundef nonnull %7) #24
  %2247 = fcmp oeq double %2246, 0.000000e+00
  %2248 = load ptr, ptr %7, align 8
  %2249 = icmp eq ptr %2248, %2245
  %2250 = select i1 %2247, i1 %2249, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br i1 %2250, label %2464, label %2207, !llvm.loop !214

2251:                                             ; preds = %1722, %1722
  %2252 = icmp eq i8 %1724, 81
  br label %2253

2253:                                             ; preds = %2293, %2251
  %2254 = phi double [ %1699, %2251 ], [ %2282, %2293 ]
  %2255 = phi double [ %1698, %2251 ], [ %2281, %2293 ]
  %2256 = phi ptr [ %1695, %2251 ], [ %2296, %2293 ]
  store double %2255, ptr %14, align 16, !tbaa.struct !131
  store double %2254, ptr %160, align 8, !tbaa.struct !132
  %2257 = select i1 %2252, double -0.000000e+00, double %2255
  %2258 = select i1 %2252, double -0.000000e+00, double %2254
  br label %2259

2259:                                             ; preds = %2280, %2253
  %2260 = phi i64 [ 1, %2253 ], [ %2285, %2280 ]
  %2261 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2261, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2262 = load i8, ptr %12, align 16, !tbaa !164
  %2263 = icmp eq i8 %2262, 44
  br i1 %2263, label %2264, label %2266

2264:                                             ; preds = %2259
  %2265 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2265, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2266

2266:                                             ; preds = %2264, %2259
  %2267 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2268 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2268, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2269 = load i8, ptr %12, align 16, !tbaa !164
  %2270 = icmp eq i8 %2269, 44
  br i1 %2270, label %2271, label %2273

2271:                                             ; preds = %2266
  %2272 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2272, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2273

2273:                                             ; preds = %2271, %2266
  %2274 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2275 = load ptr, ptr %13, align 8, !tbaa !105
  %2276 = load i8, ptr %2275, align 1, !tbaa !164
  %2277 = icmp eq i8 %2276, 44
  br i1 %2277, label %2278, label %2280

2278:                                             ; preds = %2273
  %2279 = getelementptr inbounds i8, ptr %2275, i64 1
  store ptr %2279, ptr %13, align 8, !tbaa !105
  br label %2280

2280:                                             ; preds = %2278, %2273
  %2281 = fadd double %2257, %2267
  %2282 = fadd double %2258, %2274
  %2283 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 %2260
  store double %2281, ptr %2283, align 16, !tbaa.struct !131
  %2284 = getelementptr inbounds i8, ptr %2283, i64 8
  store double %2282, ptr %2284, align 8, !tbaa.struct !132
  %2285 = add nuw nsw i64 %2260, 1
  %2286 = icmp eq i64 %2285, 3
  br i1 %2286, label %2287, label %2259, !llvm.loop !215

2287:                                             ; preds = %2280, %2287
  %2288 = phi i64 [ %2291, %2287 ], [ 0, %2280 ]
  %2289 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2256, i64 %2288
  %2290 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 %2288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2289, ptr noundef nonnull align 16 dereferenceable(16) %2290, i64 16, i1 false), !tbaa.struct !131
  %2291 = add nuw nsw i64 %2288, 1
  %2292 = icmp eq i64 %2291, 3
  br i1 %2292, label %2293, label %2287, !llvm.loop !216

2293:                                             ; preds = %2287
  call fastcc void @TraceBezier(ptr noundef %2256, i64 noundef 3)
  %2294 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2256, i64 0, i32 1
  %2295 = load i64, ptr %2294, align 8, !tbaa !193
  %2296 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2256, i64 %2295
  %2297 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  %2298 = call double @InterpretLocaleValue(ptr noundef %2297, ptr noundef nonnull %6) #24
  %2299 = fcmp oeq double %2298, 0.000000e+00
  %2300 = load ptr, ptr %6, align 8
  %2301 = icmp eq ptr %2300, %2297
  %2302 = select i1 %2299, i1 %2301, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br i1 %2302, label %2464, label %2253, !llvm.loop !217

2303:                                             ; preds = %1722, %1722
  %2304 = icmp eq i8 %1724, 83
  br label %2305

2305:                                             ; preds = %2358, %2303
  %2306 = phi double [ %1699, %2303 ], [ %2342, %2358 ]
  %2307 = phi double [ %1698, %2303 ], [ %2341, %2358 ]
  %2308 = phi ptr [ %1695, %2303 ], [ %2361, %2358 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %158, i64 16, i1 false), !tbaa.struct !131
  %2309 = load double, ptr %158, align 16, !tbaa !124
  %2310 = load double, ptr %154, align 16, !tbaa !124
  %2311 = fneg double %2310
  %2312 = call double @llvm.fmuladd.f64(double %2309, double 2.000000e+00, double %2311)
  store double %2312, ptr %155, align 16, !tbaa !124
  %2313 = load double, ptr %159, align 8, !tbaa !125
  %2314 = load double, ptr %156, align 8, !tbaa !125
  %2315 = fneg double %2314
  %2316 = call double @llvm.fmuladd.f64(double %2313, double 2.000000e+00, double %2315)
  store double %2316, ptr %157, align 8, !tbaa !125
  %2317 = select i1 %2304, double -0.000000e+00, double %2307
  %2318 = select i1 %2304, double -0.000000e+00, double %2306
  br label %2319

2319:                                             ; preds = %2340, %2305
  %2320 = phi i64 [ 2, %2305 ], [ %2345, %2340 ]
  %2321 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2321, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2322 = load i8, ptr %12, align 16, !tbaa !164
  %2323 = icmp eq i8 %2322, 44
  br i1 %2323, label %2324, label %2326

2324:                                             ; preds = %2319
  %2325 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2325, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2326

2326:                                             ; preds = %2324, %2319
  %2327 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2328 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2328, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2329 = load i8, ptr %12, align 16, !tbaa !164
  %2330 = icmp eq i8 %2329, 44
  br i1 %2330, label %2331, label %2333

2331:                                             ; preds = %2326
  %2332 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2332, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2333

2333:                                             ; preds = %2331, %2326
  %2334 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2335 = load ptr, ptr %13, align 8, !tbaa !105
  %2336 = load i8, ptr %2335, align 1, !tbaa !164
  %2337 = icmp eq i8 %2336, 44
  br i1 %2337, label %2338, label %2340

2338:                                             ; preds = %2333
  %2339 = getelementptr inbounds i8, ptr %2335, i64 1
  store ptr %2339, ptr %13, align 8, !tbaa !105
  br label %2340

2340:                                             ; preds = %2338, %2333
  %2341 = fadd double %2317, %2327
  %2342 = fadd double %2318, %2334
  %2343 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 %2320
  store double %2341, ptr %2343, align 16, !tbaa.struct !131
  %2344 = getelementptr inbounds i8, ptr %2343, i64 8
  store double %2342, ptr %2344, align 8, !tbaa.struct !132
  %2345 = add nuw nsw i64 %2320, 1
  %2346 = icmp eq i64 %2345, 4
  br i1 %2346, label %2347, label %2319, !llvm.loop !218

2347:                                             ; preds = %2340
  %2348 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.147, i32 %1692, i64 5)
  %2349 = icmp eq ptr %2348, null
  br i1 %2349, label %2350, label %2351

2350:                                             ; preds = %2347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %154, i64 16, i1 false), !tbaa.struct !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %155, ptr noundef nonnull align 16 dereferenceable(16) %158, i64 16, i1 false), !tbaa.struct !131
  br label %2351

2351:                                             ; preds = %2350, %2347
  br label %2352

2352:                                             ; preds = %2351, %2352
  %2353 = phi i64 [ %2356, %2352 ], [ 0, %2351 ]
  %2354 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2308, i64 %2353
  %2355 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 %2353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2354, ptr noundef nonnull align 16 dereferenceable(16) %2355, i64 16, i1 false), !tbaa.struct !131
  %2356 = add nuw nsw i64 %2353, 1
  %2357 = icmp eq i64 %2356, 4
  br i1 %2357, label %2358, label %2352, !llvm.loop !219

2358:                                             ; preds = %2352
  call fastcc void @TraceBezier(ptr noundef %2308, i64 noundef 4)
  %2359 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2308, i64 0, i32 1
  %2360 = load i64, ptr %2359, align 8, !tbaa !193
  %2361 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2308, i64 %2360
  %2362 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %2363 = call double @InterpretLocaleValue(ptr noundef %2362, ptr noundef nonnull %5) #24
  %2364 = fcmp oeq double %2363, 0.000000e+00
  %2365 = load ptr, ptr %5, align 8
  %2366 = icmp eq ptr %2365, %2362
  %2367 = select i1 %2364, i1 %2366, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br i1 %2367, label %2464, label %2305, !llvm.loop !220

2368:                                             ; preds = %1722, %1722
  %2369 = icmp eq i8 %1724, 84
  br label %2370

2370:                                             ; preds = %2410, %2368
  %2371 = phi double [ %1699, %2368 ], [ %2399, %2410 ]
  %2372 = phi double [ %1698, %2368 ], [ %2398, %2410 ]
  %2373 = phi ptr [ %1695, %2368 ], [ %2413, %2410 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %154, i64 16, i1 false), !tbaa.struct !131
  %2374 = load double, ptr %154, align 16, !tbaa !124
  %2375 = load double, ptr %155, align 16, !tbaa !124
  %2376 = fneg double %2375
  %2377 = call double @llvm.fmuladd.f64(double %2374, double 2.000000e+00, double %2376)
  store double %2377, ptr %155, align 16, !tbaa !124
  %2378 = load double, ptr %156, align 8, !tbaa !125
  %2379 = load double, ptr %157, align 8, !tbaa !125
  %2380 = fneg double %2379
  %2381 = call double @llvm.fmuladd.f64(double %2378, double 2.000000e+00, double %2380)
  store double %2381, ptr %157, align 8, !tbaa !125
  %2382 = select i1 %2369, double -0.000000e+00, double %2372
  %2383 = select i1 %2369, double -0.000000e+00, double %2371
  %2384 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2384, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2385 = load i8, ptr %12, align 16, !tbaa !164
  %2386 = icmp eq i8 %2385, 44
  br i1 %2386, label %2387, label %2389

2387:                                             ; preds = %2370
  %2388 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2388, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2389

2389:                                             ; preds = %2387, %2370
  %2390 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2391 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2391, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2392 = load i8, ptr %12, align 16, !tbaa !164
  %2393 = icmp eq i8 %2392, 44
  br i1 %2393, label %2394, label %2396

2394:                                             ; preds = %2389
  %2395 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2395, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2396

2396:                                             ; preds = %2394, %2389
  %2397 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2398 = fadd double %2382, %2390
  %2399 = fadd double %2383, %2397
  store double %2398, ptr %154, align 16, !tbaa.struct !131
  store double %2399, ptr %156, align 8, !tbaa.struct !132
  %2400 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.148, i32 %1692, i64 5)
  %2401 = icmp eq ptr %2400, null
  br i1 %2401, label %2402, label %2403

2402:                                             ; preds = %2396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %154, i64 16, i1 false), !tbaa.struct !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %155, ptr noundef nonnull align 16 dereferenceable(16) %158, i64 16, i1 false), !tbaa.struct !131
  br label %2403

2403:                                             ; preds = %2402, %2396
  br label %2404

2404:                                             ; preds = %2403, %2404
  %2405 = phi i64 [ %2408, %2404 ], [ 0, %2403 ]
  %2406 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2373, i64 %2405
  %2407 = getelementptr inbounds [4 x %struct._PointInfo], ptr %14, i64 0, i64 %2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2406, ptr noundef nonnull align 16 dereferenceable(16) %2407, i64 16, i1 false), !tbaa.struct !131
  %2408 = add nuw nsw i64 %2405, 1
  %2409 = icmp eq i64 %2408, 3
  br i1 %2409, label %2410, label %2404, !llvm.loop !221

2410:                                             ; preds = %2404
  call fastcc void @TraceBezier(ptr noundef %2373, i64 noundef 3)
  %2411 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2373, i64 0, i32 1
  %2412 = load i64, ptr %2411, align 8, !tbaa !193
  %2413 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2373, i64 %2412
  %2414 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %2415 = call double @InterpretLocaleValue(ptr noundef %2414, ptr noundef nonnull %4) #24
  %2416 = fcmp oeq double %2415, 0.000000e+00
  %2417 = load ptr, ptr %4, align 8
  %2418 = icmp eq ptr %2417, %2414
  %2419 = select i1 %2416, i1 %2418, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br i1 %2419, label %2464, label %2370, !llvm.loop !222

2420:                                             ; preds = %1722, %1722
  %2421 = icmp eq i8 %1724, 86
  br label %2422

2422:                                             ; preds = %2430, %2420
  %2423 = phi double [ %1699, %2420 ], [ %2433, %2430 ]
  %2424 = phi ptr [ %1695, %2420 ], [ %2436, %2430 ]
  %2425 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2425, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %2426 = load i8, ptr %12, align 16, !tbaa !164
  %2427 = icmp eq i8 %2426, 44
  br i1 %2427, label %2428, label %2430

2428:                                             ; preds = %2422
  %2429 = load ptr, ptr %13, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2429, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  br label %2430

2430:                                             ; preds = %2428, %2422
  %2431 = call double @InterpretLocaleValue(ptr noundef nonnull %12, ptr noundef null) #24
  %2432 = select i1 %2421, double -0.000000e+00, double %2423
  %2433 = fadd double %2432, %2431
  %2434 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2424, i64 0, i32 1
  store i64 1, ptr %2434, align 8, !tbaa !193
  store double %1698, ptr %2424, align 8, !tbaa.struct !131
  %2435 = getelementptr inbounds i8, ptr %2424, i64 8
  store double %2433, ptr %2435, align 8, !tbaa.struct !132
  %2436 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2424, i64 1
  %2437 = load ptr, ptr %13, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %2438 = call double @InterpretLocaleValue(ptr noundef %2437, ptr noundef nonnull %3) #24
  %2439 = fcmp oeq double %2438, 0.000000e+00
  %2440 = load ptr, ptr %3, align 8
  %2441 = icmp eq ptr %2440, %2437
  %2442 = select i1 %2439, i1 %2441, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  br i1 %2442, label %2464, label %2422, !llvm.loop !223

2443:                                             ; preds = %1722, %1722
  %2444 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1695, i64 0, i32 1
  store i64 1, ptr %2444, align 8, !tbaa !193
  store double %1696, ptr %1695, align 8, !tbaa.struct !131
  %2445 = getelementptr inbounds i8, ptr %1695, i64 8
  store double %1697, ptr %2445, align 8, !tbaa.struct !132
  %2446 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1695, i64 1
  %2447 = ptrtoint ptr %2446 to i64
  %2448 = ptrtoint ptr %1691 to i64
  %2449 = sub i64 %2447, %2448
  %2450 = sdiv exact i64 %2449, 40
  %2451 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1691, i64 0, i32 1
  store i64 %2450, ptr %2451, align 8, !tbaa !193
  %2452 = add i64 %2450, %1694
  %2453 = add i64 %1693, 1
  br label %2464

2454:                                             ; preds = %1722
  %2455 = load ptr, ptr %1689, align 8, !tbaa !105
  %2456 = zext i8 %1724 to i64
  %2457 = getelementptr inbounds i16, ptr %2455, i64 %2456
  %2458 = load i16, ptr %2457, align 2, !tbaa !149
  %2459 = and i16 %2458, 1024
  %2460 = icmp eq i16 %2459, 0
  br i1 %2460, label %2464, label %2461

2461:                                             ; preds = %2454
  %2462 = load ptr, ptr @stderr, align 8, !tbaa !105
  %2463 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %2462, ptr noundef nonnull @.str.149, i32 noundef %1725) #24
  br label %2464

2464:                                             ; preds = %2430, %2410, %2358, %2293, %2243, %2179, %2148, %2128, %2085, %2461, %2454, %2443
  %2465 = phi double [ %1699, %2461 ], [ %1699, %2454 ], [ %1697, %2443 ], [ %1785, %2085 ], [ %2117, %2128 ], [ %1699, %2148 ], [ %2184, %2179 ], [ %2231, %2243 ], [ %2282, %2293 ], [ %2342, %2358 ], [ %2399, %2410 ], [ %2433, %2430 ]
  %2466 = phi double [ %1698, %2461 ], [ %1698, %2454 ], [ %1696, %2443 ], [ %1783, %2085 ], [ %2116, %2128 ], [ %2151, %2148 ], [ %2182, %2179 ], [ %2229, %2243 ], [ %2281, %2293 ], [ %2341, %2358 ], [ %2398, %2410 ], [ %1698, %2430 ]
  %2467 = phi double [ %1697, %2461 ], [ %1697, %2454 ], [ %1697, %2443 ], [ %1697, %2085 ], [ %1697, %2128 ], [ %1697, %2148 ], [ %1697, %2179 ], [ %2233, %2243 ], [ %1697, %2293 ], [ %1697, %2358 ], [ %1697, %2410 ], [ %1697, %2430 ]
  %2468 = phi double [ %1696, %2461 ], [ %1696, %2454 ], [ %1696, %2443 ], [ %1696, %2085 ], [ %1696, %2128 ], [ %1696, %2148 ], [ %1696, %2179 ], [ %2234, %2243 ], [ %1696, %2293 ], [ %1696, %2358 ], [ %1696, %2410 ], [ %1696, %2430 ]
  %2469 = phi ptr [ %1695, %2461 ], [ %1695, %2454 ], [ %2446, %2443 ], [ %2060, %2085 ], [ %2131, %2128 ], [ %2154, %2148 ], [ %2187, %2179 ], [ %2244, %2243 ], [ %2296, %2293 ], [ %2361, %2358 ], [ %2413, %2410 ], [ %2436, %2430 ]
  %2470 = phi i64 [ %1694, %2461 ], [ %1694, %2454 ], [ %2452, %2443 ], [ %1694, %2085 ], [ %1694, %2128 ], [ %1694, %2148 ], [ %1694, %2179 ], [ %2204, %2243 ], [ %1694, %2293 ], [ %1694, %2358 ], [ %1694, %2410 ], [ %1694, %2430 ]
  %2471 = phi i64 [ %1693, %2461 ], [ %1693, %2454 ], [ %2453, %2443 ], [ %1693, %2085 ], [ %1693, %2128 ], [ %1693, %2148 ], [ %1693, %2179 ], [ %1693, %2243 ], [ %1693, %2293 ], [ %1693, %2358 ], [ %1693, %2410 ], [ %1693, %2430 ]
  %2472 = phi ptr [ %1691, %2461 ], [ %1691, %2454 ], [ %2446, %2443 ], [ %1691, %2085 ], [ %1691, %2128 ], [ %1691, %2148 ], [ %1691, %2179 ], [ %2205, %2243 ], [ %1691, %2293 ], [ %1691, %2358 ], [ %1691, %2410 ], [ %1691, %2430 ]
  %2473 = load ptr, ptr %13, align 8, !tbaa !105
  %2474 = load i8, ptr %2473, align 1, !tbaa !164
  %2475 = icmp eq i8 %2474, 0
  br i1 %2475, label %2476, label %1690, !llvm.loop !224

2476:                                             ; preds = %2464, %1718
  %2477 = phi ptr [ %2469, %2464 ], [ %1695, %1718 ]
  %2478 = phi i64 [ %2470, %2464 ], [ %1694, %1718 ]
  %2479 = phi i64 [ %2471, %2464 ], [ %1693, %1718 ]
  %2480 = phi ptr [ %2472, %2464 ], [ %1691, %1718 ]
  %2481 = icmp ugt i64 %2479, 1
  br label %2482

2482:                                             ; preds = %2476, %1682
  %2483 = phi ptr [ %1481, %1682 ], [ %2477, %2476 ]
  %2484 = phi i64 [ 0, %1682 ], [ %2478, %2476 ]
  %2485 = phi i1 [ false, %1682 ], [ %2481, %2476 ]
  %2486 = phi ptr [ %1481, %1682 ], [ %2480, %2476 ]
  %2487 = ptrtoint ptr %2483 to i64
  %2488 = ptrtoint ptr %2486 to i64
  %2489 = sub i64 %2487, %2488
  %2490 = sdiv exact i64 %2489, 40
  %2491 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2486, i64 0, i32 1
  store i64 %2490, ptr %2491, align 8, !tbaa !193
  %2492 = add i64 %2490, %2484
  %2493 = icmp sgt i64 %2492, 0
  br i1 %2493, label %2494, label %2504

2494:                                             ; preds = %2482, %2501
  %2495 = phi i64 [ %2502, %2501 ], [ 0, %2482 ]
  %2496 = phi ptr [ %2497, %2501 ], [ %2483, %2482 ]
  %2497 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2496, i64 -1
  %2498 = getelementptr %struct._PrimitiveInfo, ptr %2496, i64 -1, i32 2
  store i32 %1685, ptr %2498, align 8, !tbaa !191
  br i1 %2485, label %2499, label %2501

2499:                                             ; preds = %2494
  %2500 = getelementptr %struct._PrimitiveInfo, ptr %2496, i64 -1, i32 3
  store i32 4, ptr %2500, align 4, !tbaa !194
  br label %2501

2501:                                             ; preds = %2499, %2494
  %2502 = add nuw nsw i64 %2495, 1
  %2503 = icmp eq i64 %2502, %2492
  br i1 %2503, label %2504, label %2494, !llvm.loop !225

2504:                                             ; preds = %2501, %2482
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #24
  br label %2536

2505:                                             ; preds = %1479, %1479
  %2506 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %2507 = load i64, ptr %2506, align 8, !tbaa !193
  %2508 = icmp eq i64 %2507, 1
  br i1 %2508, label %2509, label %2536

2509:                                             ; preds = %2505
  %2510 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2510, ptr noundef nonnull %26, ptr noundef %116) #24
  %2511 = call i64 @ParseCommandOption(i32 noundef 43, i32 noundef 0, ptr noundef %116) #24
  %2512 = icmp eq i64 %2511, -1
  br i1 %2512, label %2536, label %2513

2513:                                             ; preds = %2509
  %2514 = trunc i64 %2511 to i32
  %2515 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 3
  store i32 %2514, ptr %2515, align 4, !tbaa !194
  br label %2536

2516:                                             ; preds = %1479
  %2517 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %2518 = load i64, ptr %2517, align 8, !tbaa !193
  %2519 = icmp eq i64 %2518, 1
  br i1 %2519, label %2520, label %2536

2520:                                             ; preds = %2516
  %2521 = load i8, ptr %116, align 1, !tbaa !164
  %2522 = icmp eq i8 %2521, 44
  br i1 %2522, label %2525, label %2523

2523:                                             ; preds = %2520
  %2524 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2524, ptr noundef nonnull %26, ptr noundef %116) #24
  br label %2525

2525:                                             ; preds = %2523, %2520
  %2526 = call ptr @AcquireString(ptr noundef %116) #24
  %2527 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 4
  store ptr %2526, ptr %2527, align 8, !tbaa !196
  br label %2536

2528:                                             ; preds = %1479
  %2529 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 1
  %2530 = load i64, ptr %2529, align 8, !tbaa !193
  %2531 = icmp eq i64 %2530, 2
  br i1 %2531, label %2532, label %2536

2532:                                             ; preds = %2528
  %2533 = load ptr, ptr %26, align 8, !tbaa !105
  call void @GetMagickToken(ptr noundef %2533, ptr noundef nonnull %26, ptr noundef %116) #24
  %2534 = call ptr @AcquireString(ptr noundef %116) #24
  %2535 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 4
  store ptr %2534, ptr %2535, align 8, !tbaa !196
  br label %2536

2536:                                             ; preds = %1603, %1539, %1551, %1486, %1510, %1615, %1640, %1657, %1669, %1680, %1479, %2504, %2525, %2532, %1482, %1487, %1515, %1547, %1611, %1636, %1653, %1676, %2509, %2505, %2513, %2516, %2528
  %2537 = phi i64 [ 1, %1486 ], [ %1389, %2525 ], [ %2492, %2504 ], [ %1681, %1680 ], [ %1675, %1669 ], [ %1389, %1479 ], [ %1668, %1657 ], [ %1652, %1640 ], [ %1635, %1615 ], [ %1513, %1510 ], [ %1389, %2532 ], [ %1389, %1482 ], [ %1389, %1487 ], [ %1389, %1515 ], [ %1389, %1547 ], [ %1389, %1611 ], [ %1389, %1636 ], [ %1389, %1653 ], [ %1389, %1676 ], [ %1389, %2509 ], [ %1389, %2505 ], [ %1389, %2513 ], [ %1389, %2516 ], [ %1389, %2528 ], [ %1598, %1551 ], [ 5, %1539 ], [ %1598, %1603 ]
  %2538 = phi i32 [ %1272, %1486 ], [ %1272, %2525 ], [ %1272, %2504 ], [ %1272, %1680 ], [ %1272, %1669 ], [ %1272, %1479 ], [ %1272, %1657 ], [ %1272, %1640 ], [ %1272, %1615 ], [ %1272, %1510 ], [ %1272, %2532 ], [ 0, %1482 ], [ 0, %1487 ], [ 0, %1515 ], [ 0, %1547 ], [ %1272, %1611 ], [ 0, %1636 ], [ 0, %1653 ], [ 0, %1676 ], [ 0, %2509 ], [ 0, %2505 ], [ %1272, %2513 ], [ 0, %2516 ], [ 0, %2528 ], [ %1272, %1551 ], [ %1272, %1539 ], [ %1272, %1603 ]
  %2539 = load i32, ptr %36, align 8, !tbaa !113
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %2548, label %2541

2541:                                             ; preds = %2536
  %2542 = load ptr, ptr %26, align 8, !tbaa !105
  %2543 = ptrtoint ptr %2542 to i64
  %2544 = ptrtoint ptr %1269 to i64
  %2545 = sub i64 %2543, %2544
  %2546 = trunc i64 %2545 to i32
  %2547 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3129, ptr noundef nonnull @.str.90, i32 noundef %2546, ptr noundef nonnull %1269) #24
  br label %2548

2548:                                             ; preds = %2541, %2536
  %2549 = icmp eq i32 %2538, 0
  br i1 %2549, label %2688, label %2550

2550:                                             ; preds = %2548
  %2551 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 %2537, i32 2
  store i32 0, ptr %2551, align 8, !tbaa !191
  %2552 = icmp eq i64 %2537, 0
  br i1 %2552, label %2683, label %2553

2553:                                             ; preds = %2550
  %2554 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 2
  %2555 = load i32, ptr %2554, align 8, !tbaa !191
  %2556 = icmp eq i32 %2555, 0
  br i1 %2556, label %2629, label %2557

2557:                                             ; preds = %2553
  %2558 = getelementptr inbounds ptr, ptr %1273, i64 %1268
  %2559 = load ptr, ptr %2558, align 8, !tbaa !105
  %2560 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 3
  %2561 = load double, ptr %2560, align 8, !tbaa !179
  %2562 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 3, i32 2
  %2563 = load double, ptr %2562, align 8, !tbaa !180
  %2564 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 3, i32 4
  %2565 = load double, ptr %2564, align 8, !tbaa !181
  %2566 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 3, i32 1
  %2567 = load double, ptr %2566, align 8, !tbaa !182
  %2568 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 3, i32 3
  %2569 = load double, ptr %2568, align 8, !tbaa !183
  %2570 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 3, i32 5
  %2571 = load double, ptr %2570, align 8, !tbaa !184
  %2572 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 38
  %2573 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 38, i32 1
  %2574 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 38, i32 2
  %2575 = getelementptr inbounds %struct._DrawInfo, ptr %2559, i64 0, i32 38, i32 3
  %2576 = load double, ptr %2572, align 8, !tbaa !173
  %2577 = load double, ptr %2573, align 8, !tbaa !174
  %2578 = load double, ptr %2574, align 8, !tbaa !171
  %2579 = load double, ptr %2575, align 8, !tbaa !172
  %2580 = call i64 @llvm.smax.i64(i64 %1480, i64 0)
  br label %2586

2581:                                             ; preds = %2620
  %2582 = add nuw i64 %2592, 1
  %2583 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 %2582, i32 2
  %2584 = load i32, ptr %2583, align 8, !tbaa !191
  %2585 = icmp eq i32 %2584, 0
  br i1 %2585, label %2629, label %2586, !llvm.loop !226

2586:                                             ; preds = %2557, %2581
  %2587 = phi double [ %2579, %2557 ], [ %2618, %2581 ]
  %2588 = phi double [ %2578, %2557 ], [ %2614, %2581 ]
  %2589 = phi double [ %2577, %2557 ], [ %2610, %2581 ]
  %2590 = phi double [ %2576, %2557 ], [ %2606, %2581 ]
  %2591 = phi i32 [ %2555, %2557 ], [ %2584, %2581 ]
  %2592 = phi i64 [ 0, %2557 ], [ %2582, %2581 ]
  %2593 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 %2592
  %2594 = load double, ptr %2593, align 8, !tbaa.struct !131
  %2595 = getelementptr inbounds i8, ptr %2593, i64 8
  %2596 = load double, ptr %2595, align 8, !tbaa.struct !132
  %2597 = fmul double %2596, %2563
  %2598 = call double @llvm.fmuladd.f64(double %2561, double %2594, double %2597)
  %2599 = fadd double %2565, %2598
  store double %2599, ptr %2593, align 8, !tbaa !197
  %2600 = fmul double %2596, %2569
  %2601 = call double @llvm.fmuladd.f64(double %2567, double %2594, double %2600)
  %2602 = fadd double %2571, %2601
  store double %2602, ptr %2595, align 8, !tbaa !198
  %2603 = fcmp olt double %2599, %2590
  br i1 %2603, label %2604, label %2605

2604:                                             ; preds = %2586
  store double %2599, ptr %2572, align 8, !tbaa !173
  br label %2605

2605:                                             ; preds = %2604, %2586
  %2606 = phi double [ %2599, %2604 ], [ %2590, %2586 ]
  %2607 = fcmp olt double %2602, %2589
  br i1 %2607, label %2608, label %2609

2608:                                             ; preds = %2605
  store double %2602, ptr %2573, align 8, !tbaa !174
  br label %2609

2609:                                             ; preds = %2608, %2605
  %2610 = phi double [ %2602, %2608 ], [ %2589, %2605 ]
  %2611 = fcmp ogt double %2599, %2588
  br i1 %2611, label %2612, label %2613

2612:                                             ; preds = %2609
  store double %2599, ptr %2574, align 8, !tbaa !171
  br label %2613

2613:                                             ; preds = %2612, %2609
  %2614 = phi double [ %2599, %2612 ], [ %2588, %2609 ]
  %2615 = fcmp ogt double %2602, %2587
  br i1 %2615, label %2616, label %2617

2616:                                             ; preds = %2613
  store double %2602, ptr %2575, align 8, !tbaa !172
  br label %2617

2617:                                             ; preds = %2616, %2613
  %2618 = phi double [ %2602, %2616 ], [ %2587, %2613 ]
  %2619 = icmp eq i32 %2591, 14
  br i1 %2619, label %2629, label %2620

2620:                                             ; preds = %2617
  %2621 = icmp eq i64 %2592, %2580
  br i1 %2621, label %2622, label %2581

2622:                                             ; preds = %2620
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %35) #24
  call void @GetExceptionInfo(ptr noundef nonnull %35) #24
  %2623 = tail call ptr @__errno_location() #25
  %2624 = load i32, ptr %2623, align 4, !tbaa !34
  %2625 = call ptr @GetExceptionMessage(i32 noundef %2624) #24
  %2626 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3157, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %2625) #24
  %2627 = call ptr @DestroyString(ptr noundef %2625) #24
  call void @CatchException(ptr noundef nonnull %35) #24
  %2628 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %35) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

2629:                                             ; preds = %2581, %2617, %2553
  %2630 = getelementptr inbounds ptr, ptr %1273, i64 %1268
  %2631 = load ptr, ptr %2630, align 8, !tbaa !105
  %2632 = getelementptr inbounds %struct._DrawInfo, ptr %2631, i64 0, i32 41
  %2633 = load i32, ptr %2632, align 8, !tbaa !74
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2660, label %2635

2635:                                             ; preds = %2629
  %2636 = icmp eq i64 %1268, 0
  br i1 %2636, label %2655, label %2637

2637:                                             ; preds = %2635
  %2638 = getelementptr inbounds %struct._DrawInfo, ptr %2631, i64 0, i32 37
  %2639 = load ptr, ptr %2638, align 8, !tbaa !109
  %2640 = icmp eq ptr %2639, null
  br i1 %2640, label %2655, label %2641

2641:                                             ; preds = %2637
  %2642 = add nsw i64 %1268, -1
  %2643 = getelementptr inbounds ptr, ptr %1273, i64 %2642
  %2644 = load ptr, ptr %2643, align 8, !tbaa !105
  %2645 = getelementptr inbounds %struct._DrawInfo, ptr %2644, i64 0, i32 37
  %2646 = load ptr, ptr %2645, align 8, !tbaa !109
  %2647 = call i32 @LocaleCompare(ptr noundef nonnull %2639, ptr noundef %2646) #24
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2655, label %2649

2649:                                             ; preds = %2641
  %2650 = load ptr, ptr %2630, align 8, !tbaa !105
  %2651 = getelementptr inbounds %struct._DrawInfo, ptr %2650, i64 0, i32 37
  %2652 = load ptr, ptr %2651, align 8, !tbaa !109
  %2653 = call i32 @DrawClipPath(ptr noundef %0, ptr noundef %2650, ptr noundef %2652), !range !163
  %2654 = and i32 %2653, %2538
  br label %2655

2655:                                             ; preds = %2649, %2641, %2637, %2635
  %2656 = phi i32 [ %2654, %2649 ], [ %2538, %2641 ], [ %2538, %2637 ], [ %2538, %2635 ]
  %2657 = load ptr, ptr %2630, align 8, !tbaa !105
  %2658 = call i32 @DrawPrimitive(ptr noundef %0, ptr noundef %2657, ptr noundef nonnull %1481), !range !163
  %2659 = and i32 %2658, %2656
  br label %2660

2660:                                             ; preds = %2655, %2629
  %2661 = phi i32 [ %2659, %2655 ], [ %2538, %2629 ]
  %2662 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1481, i64 0, i32 4
  %2663 = load ptr, ptr %2662, align 8, !tbaa !196
  %2664 = icmp eq ptr %2663, null
  br i1 %2664, label %2667, label %2665

2665:                                             ; preds = %2660
  %2666 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %2663) #24
  store ptr %2666, ptr %2662, align 8, !tbaa !196
  br label %2667

2667:                                             ; preds = %2665, %2660
  %2668 = load ptr, ptr %26, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %15) #24
  %2669 = load ptr, ptr %161, align 8, !tbaa !227
  %2670 = icmp eq ptr %2669, null
  br i1 %2670, label %2678, label %2671

2671:                                             ; preds = %2667
  %2672 = ptrtoint ptr %2668 to i64
  %2673 = sub i64 %2672, %163
  %2674 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %15, i64 noundef 4096, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.92, ptr noundef nonnull %164) #24
  %2675 = load ptr, ptr %161, align 8, !tbaa !227
  %2676 = load ptr, ptr %165, align 8, !tbaa !228
  %2677 = call i32 %2675(ptr noundef nonnull %15, i64 noundef %2673, i64 noundef %162, ptr noundef %2676) #24
  br label %2678

2678:                                             ; preds = %2667, %2671
  %2679 = phi i32 [ %2677, %2671 ], [ 1, %2667 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %15) #24
  %2680 = icmp eq i32 %2679, 0
  %2681 = icmp eq i32 %2661, 0
  %2682 = select i1 %2680, i1 true, i1 %2681
  br i1 %2682, label %2688, label %2683

2683:                                             ; preds = %2678, %2550
  %2684 = phi i32 [ %2538, %2550 ], [ %2661, %2678 ]
  %2685 = load ptr, ptr %26, align 8, !tbaa !105
  %2686 = load i8, ptr %2685, align 1, !tbaa !164
  %2687 = icmp eq i8 %2686, 0
  br i1 %2687, label %2688, label %166, !llvm.loop !170

2688:                                             ; preds = %2683, %2678, %2548, %1333, %1267, %188, %178, %121, %1476
  %2689 = phi i64 [ %1268, %1476 ], [ 0, %121 ], [ %177, %178 ], [ %177, %188 ], [ %1268, %1267 ], [ %1268, %1333 ], [ %1268, %2548 ], [ %1268, %2678 ], [ %1268, %2683 ]
  %2690 = phi ptr [ null, %1476 ], [ %85, %121 ], [ %170, %178 ], [ %170, %188 ], [ %170, %1267 ], [ %170, %1333 ], [ %1481, %2548 ], [ %1481, %2678 ], [ %1481, %2683 ]
  %2691 = phi i32 [ 1, %1476 ], [ 1, %121 ], [ %176, %178 ], [ %176, %188 ], [ 1, %1333 ], [ 0, %1267 ], [ %2684, %2683 ], [ %2661, %2678 ], [ 0, %2548 ]
  %2692 = phi ptr [ %1273, %1476 ], [ %75, %121 ], [ %175, %178 ], [ %175, %188 ], [ %1273, %1267 ], [ %1273, %1333 ], [ %1273, %2548 ], [ %1273, %2678 ], [ %1273, %2683 ]
  %2693 = load i32, ptr %36, align 8, !tbaa !113
  %2694 = icmp eq i32 %2693, 0
  br i1 %2694, label %2697, label %2695

2695:                                             ; preds = %2688
  %2696 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3179, ptr noundef nonnull @.str.93) #24
  br label %2697

2697:                                             ; preds = %2695, %2688
  %2698 = call ptr @DestroyString(ptr noundef %116) #24
  %2699 = icmp eq ptr %2690, null
  br i1 %2699, label %2702, label %2700

2700:                                             ; preds = %2697
  %2701 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %2690) #24
  br label %2702

2702:                                             ; preds = %2700, %2697
  %2703 = call ptr @DestroyString(ptr noundef nonnull %69) #24
  %2704 = icmp sgt i64 %2689, -1
  br i1 %2704, label %2705, label %2712

2705:                                             ; preds = %2702, %2705
  %2706 = phi i64 [ %2710, %2705 ], [ %2689, %2702 ]
  %2707 = getelementptr inbounds ptr, ptr %2692, i64 %2706
  %2708 = load ptr, ptr %2707, align 8, !tbaa !105
  %2709 = call ptr @DestroyDrawInfo(ptr noundef %2708)
  store ptr %2709, ptr %2707, align 8, !tbaa !105
  %2710 = add nsw i64 %2706, -1
  %2711 = icmp sgt i64 %2706, 0
  br i1 %2711, label %2705, label %2712, !llvm.loop !229

2712:                                             ; preds = %2705, %2702
  %2713 = call ptr @RelinquishMagickMemory(ptr noundef %2692) #24
  %2714 = icmp eq i32 %2691, 0
  br i1 %2714, label %2715, label %2719

2715:                                             ; preds = %2712
  %2716 = icmp eq ptr %0, null
  br i1 %2716, label %2719, label %2717

2717:                                             ; preds = %2715
  %2718 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %117, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3192, i32 noundef 460, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.3, ptr noundef nonnull %22) #24
  br label %2719

2719:                                             ; preds = %2712, %2715, %2717, %115, %87, %93, %77, %80, %68, %47, %50
  %2720 = phi i32 [ 0, %50 ], [ 0, %47 ], [ 0, %68 ], [ 0, %80 ], [ 0, %77 ], [ 0, %93 ], [ 0, %87 ], [ 0, %115 ], [ 0, %2717 ], [ 0, %2715 ], [ 1, %2712 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #24
  ret i32 %2720
}

declare i32 @NegateImage(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @GetAffineMatrix(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4779, ptr noundef nonnull @.str.5) #24
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 48) #24
  store double 1.000000e+00, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 3
  store double 1.000000e+00, ptr %4, align 8, !tbaa !41
  ret void
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DrawPatternPath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #24
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3567, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #24
  br label %12

12:                                               ; preds = %9, %4
  %13 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %2) #24
  %14 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %5) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %12
  %17 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.64, ptr noundef %2) #24
  %18 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %5) #24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !105
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call ptr @DestroyImage(ptr noundef nonnull %21) #24
  store ptr %24, ptr %3, align 8, !tbaa !105
  br label %25

25:                                               ; preds = %23, %20
  %26 = call ptr @AcquireImageInfo() #24
  %27 = call ptr @AcquireString(ptr noundef nonnull %18) #24
  %28 = getelementptr inbounds %struct._ImageInfo, ptr %26, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !230
  %29 = call ptr @AcquireImage(ptr noundef %26) #24
  store ptr %29, ptr %3, align 8, !tbaa !105
  %30 = call ptr @DestroyImageInfo(ptr noundef %26) #24
  %31 = load ptr, ptr %3, align 8, !tbaa !105
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 12
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %34 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.7, ptr noundef nonnull %32, ptr noundef nonnull %33) #24
  %35 = load ptr, ptr %3, align 8, !tbaa !105
  %36 = call i32 @SetImageBackgroundColor(ptr noundef %35) #24
  %37 = load i32, ptr %6, align 8, !tbaa !113
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %25
  %40 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3588, ptr noundef nonnull @.str.95, ptr noundef %2, ptr noundef nonnull %18) #24
  br label %41

41:                                               ; preds = %39, %25
  %42 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1)
  %43 = call ptr @NewImageList() #24
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %42, i64 0, i32 9
  store ptr %43, ptr %44, align 8, !tbaa !88
  %45 = call ptr @NewImageList() #24
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %42, i64 0, i32 11
  store ptr %45, ptr %46, align 8, !tbaa !90
  %47 = call ptr @CloneString(ptr noundef %42, ptr noundef nonnull %14) #24
  %48 = load ptr, ptr %3, align 8, !tbaa !105
  %49 = call i32 @DrawImage(ptr noundef %48, ptr noundef %42), !range !163
  %50 = call ptr @DestroyDrawInfo(ptr noundef %42)
  %51 = load i32, ptr %6, align 8, !tbaa !113
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %41
  %54 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3597, ptr noundef nonnull @.str.96) #24
  br label %55

55:                                               ; preds = %41, %53, %16, %12
  %56 = phi i32 [ 0, %12 ], [ 0, %16 ], [ %49, %53 ], [ %49, %41 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #24
  ret i32 %56
}

declare ptr @AcquireImageInfo() local_unnamed_addr #3

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #12

declare i32 @GradientImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc void @TraceEllipse(ptr noundef %0, double %1, double %2, double %3, double %4, double %5, double %6) unnamed_addr #14 {
  %8 = fcmp oeq double %3, 0.000000e+00
  %9 = fcmp oeq double %4, 0.000000e+00
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  store i64 1, ptr %12, align 8, !tbaa !193
  store double %1, ptr %0, align 8, !tbaa.struct !131
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  store double %2, ptr %13, align 8, !tbaa.struct !132
  br label %84

14:                                               ; preds = %7
  %15 = fcmp ogt double %3, %4
  %16 = select i1 %15, double %3, double %4
  %17 = fdiv double 2.000000e+00, %16
  %18 = fcmp oge double %17, 0.000000e+00
  %19 = fcmp olt double %17, 0x3FD921FB54442D18
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = fdiv double 0x400921FB54442D18, %17
  %23 = fmul double %22, 5.000000e-01
  %24 = fadd double %23, 5.000000e-01
  %25 = fmul double %24, 4.000000e+00
  %26 = fdiv double 0x400921FB54442D18, %25
  br label %27

27:                                               ; preds = %21, %14
  %28 = phi double [ %26, %21 ], [ 0x3FD921FB54442D18, %14 ]
  %29 = fmul double %5, 0x400921FB54442D18
  %30 = fdiv double %29, 1.800000e+02
  %31 = fcmp olt double %6, %5
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %32
  %33 = phi double [ %34, %32 ], [ %6, %27 ]
  %34 = fadd double %33, 3.600000e+02
  %35 = fcmp olt double %34, %5
  br i1 %35, label %32, label %36, !llvm.loop !231

36:                                               ; preds = %32, %27
  %37 = phi double [ %6, %27 ], [ %34, %32 ]
  %38 = fmul double %37, 0x400921FB54442D18
  %39 = fdiv double %38, 1.800000e+02
  %40 = fadd double %39, -1.000000e-15
  %41 = fcmp olt double %30, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36, %42
  %43 = phi ptr [ %53, %42 ], [ %0, %36 ]
  %44 = phi double [ %54, %42 ], [ %30, %36 ]
  %45 = tail call double @fmod(double noundef %44, double noundef 0x401921FB54442D18) #24
  %46 = tail call double @cos(double noundef %45) #24
  %47 = tail call double @llvm.fmuladd.f64(double %46, double %3, double %1)
  %48 = tail call double @fmod(double noundef %44, double noundef 0x401921FB54442D18) #24
  %49 = tail call double @sin(double noundef %48) #24
  %50 = tail call double @llvm.fmuladd.f64(double %49, double %4, double %2)
  %51 = getelementptr inbounds %struct._PrimitiveInfo, ptr %43, i64 0, i32 1
  store i64 1, ptr %51, align 8, !tbaa !193
  store double %47, ptr %43, align 8, !tbaa.struct !131
  %52 = getelementptr inbounds i8, ptr %43, i64 8
  store double %50, ptr %52, align 8, !tbaa.struct !132
  %53 = getelementptr inbounds %struct._PrimitiveInfo, ptr %43, i64 1
  %54 = fadd double %28, %44
  %55 = fcmp olt double %54, %40
  br i1 %55, label %42, label %56, !llvm.loop !232

56:                                               ; preds = %42, %36
  %57 = phi ptr [ %0, %36 ], [ %53, %42 ]
  %58 = tail call double @fmod(double noundef %40, double noundef 0x401921FB54442D18) #24
  %59 = tail call double @cos(double noundef %58) #24
  %60 = tail call double @llvm.fmuladd.f64(double %59, double %3, double %1)
  %61 = tail call double @fmod(double noundef %40, double noundef 0x401921FB54442D18) #24
  %62 = tail call double @sin(double noundef %61) #24
  %63 = tail call double @llvm.fmuladd.f64(double %62, double %4, double %2)
  %64 = getelementptr inbounds %struct._PrimitiveInfo, ptr %57, i64 0, i32 1
  store i64 1, ptr %64, align 8, !tbaa !193
  store double %60, ptr %57, align 8, !tbaa.struct !131
  %65 = getelementptr inbounds i8, ptr %57, i64 8
  store double %63, ptr %65, align 8, !tbaa.struct !132
  %66 = getelementptr inbounds %struct._PrimitiveInfo, ptr %57, i64 1
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %0 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 40
  %71 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  store i64 %70, ptr %71, align 8, !tbaa !193
  %72 = icmp sgt i64 %69, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %75 = tail call i64 @llvm.smax.i64(i64 %70, i64 1)
  br label %76

76:                                               ; preds = %73, %76
  %77 = phi i64 [ 0, %73 ], [ %82, %76 ]
  %78 = phi ptr [ %66, %73 ], [ %81, %76 ]
  %79 = load i32, ptr %74, align 8, !tbaa !191
  %80 = getelementptr inbounds %struct._PrimitiveInfo, ptr %78, i64 0, i32 2
  store i32 %79, ptr %80, align 8, !tbaa !191
  %81 = getelementptr inbounds %struct._PrimitiveInfo, ptr %78, i64 -1
  %82 = add nuw nsw i64 %77, 1
  %83 = icmp eq i64 %82, %75
  br i1 %83, label %84, label %76, !llvm.loop !233

84:                                               ; preds = %76, %56, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @TraceBezier(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %8, label %39

5:                                                ; preds = %18, %8
  %6 = phi i64 [ %9, %8 ], [ %36, %18 ]
  %7 = icmp eq i64 %11, %1
  br i1 %7, label %39, label %8, !llvm.loop !234

8:                                                ; preds = %2, %5
  %9 = phi i64 [ %6, %5 ], [ %1, %2 ]
  %10 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %11 = add nuw nsw i64 %10, 1
  %12 = icmp slt i64 %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %10
  %15 = load double, ptr %14, align 8, !tbaa !197
  %16 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !198
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ %9, %13 ], [ %36, %18 ]
  %20 = phi i64 [ %11, %13 ], [ %37, %18 ]
  %21 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !197
  %23 = fsub double %22, %15
  %24 = tail call double @llvm.fabs.f64(double %23)
  %25 = uitofp i64 %19 to double
  %26 = fcmp ogt double %24, %25
  %27 = fptoui double %24 to i64
  %28 = select i1 %26, i64 %27, i64 %19
  %29 = getelementptr inbounds %struct._PointInfo, ptr %21, i64 0, i32 1
  %30 = load double, ptr %29, align 8, !tbaa !198
  %31 = fsub double %30, %17
  %32 = tail call double @llvm.fabs.f64(double %31)
  %33 = uitofp i64 %28 to double
  %34 = fcmp ogt double %32, %33
  %35 = fptoui double %32 to i64
  %36 = select i1 %34, i64 %35, i64 %28
  %37 = add nuw nsw i64 %20, 1
  %38 = icmp slt i64 %37, %1
  br i1 %38, label %18, label %5, !llvm.loop !235

39:                                               ; preds = %5, %2
  %40 = phi i64 [ %1, %2 ], [ %6, %5 ]
  %41 = uitofp i64 %40 to double
  %42 = uitofp i64 %1 to double
  %43 = fdiv double %41, %42
  %44 = fcmp olt double %43, 2.000000e+02
  %45 = select i1 %44, double %43, double 2.000000e+02
  %46 = fptoui double %45 to i64
  %47 = mul i64 %46, %1
  %48 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #27
  %49 = tail call ptr @AcquireQuantumMemory(i64 noundef %47, i64 noundef 16) #27
  %50 = icmp eq ptr %48, null
  %51 = icmp eq ptr %49, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #24
  call void @GetExceptionInfo(ptr noundef nonnull %3) #24
  %54 = tail call ptr @__errno_location() #25
  %55 = load i32, ptr %54, align 4, !tbaa !34
  %56 = call ptr @GetExceptionMessage(i32 noundef %55) #24
  %57 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5146, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %56) #24
  %58 = call ptr @DestroyString(ptr noundef %56) #24
  call void @CatchException(ptr noundef nonnull %3) #24
  %59 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #26
  unreachable

60:                                               ; preds = %39
  %61 = add i64 %1, -1
  %62 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa.struct !131
  %64 = getelementptr inbounds i8, ptr %62, i64 8
  %65 = load double, ptr %64, align 8, !tbaa.struct !132
  %66 = icmp sgt i64 %1, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %95
  %68 = phi i64 [ %98, %95 ], [ 0, %60 ]
  %69 = icmp slt i64 %68, %61
  br i1 %69, label %81, label %77

70:                                               ; preds = %95, %60
  %71 = icmp sgt i64 %47, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %70
  %73 = fadd double %42, -1.000000e+00
  %74 = icmp sgt i64 %1, 0
  %75 = uitofp i64 %47 to double
  %76 = fdiv double 1.000000e+00, %75
  br label %102

77:                                               ; preds = %81, %67
  %78 = phi double [ 1.000000e+00, %67 ], [ %86, %81 ]
  %79 = sub nsw i64 %61, %68
  %80 = icmp slt i64 %79, 1
  br i1 %80, label %95, label %88

81:                                               ; preds = %67, %81
  %82 = phi i64 [ %84, %81 ], [ %68, %67 ]
  %83 = phi double [ %86, %81 ], [ 1.000000e+00, %67 ]
  %84 = add nuw nsw i64 %82, 1
  %85 = sitofp i64 %84 to double
  %86 = fmul double %83, %85
  %87 = icmp slt i64 %84, %61
  br i1 %87, label %81, label %77, !llvm.loop !236

88:                                               ; preds = %77, %88
  %89 = phi i64 [ %93, %88 ], [ 1, %77 ]
  %90 = phi double [ %92, %88 ], [ %78, %77 ]
  %91 = sitofp i64 %89 to double
  %92 = fdiv double %90, %91
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp slt i64 %89, %79
  br i1 %94, label %88, label %95, !llvm.loop !237

95:                                               ; preds = %88, %77
  %96 = phi double [ %78, %77 ], [ %92, %88 ]
  %97 = getelementptr inbounds double, ptr %48, i64 %68
  store double %96, ptr %97, align 8, !tbaa !87
  %98 = add nuw nsw i64 %68, 1
  %99 = icmp eq i64 %98, %1
  br i1 %99, label %70, label %67, !llvm.loop !238

100:                                              ; preds = %127, %70
  %101 = icmp sgt i64 %47, 0
  br i1 %101, label %135, label %147

102:                                              ; preds = %72, %127
  %103 = phi i64 [ 0, %72 ], [ %133, %127 ]
  %104 = phi double [ 0.000000e+00, %72 ], [ %132, %127 ]
  %105 = fsub double 1.000000e+00, %104
  %106 = tail call double @pow(double noundef %105, double noundef %73) #24
  br i1 %74, label %107, label %127

107:                                              ; preds = %102
  %108 = fdiv double %104, %105
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi double [ %106, %107 ], [ %123, %109 ]
  %111 = phi i64 [ 0, %107 ], [ %125, %109 ]
  %112 = phi ptr [ %0, %107 ], [ %124, %109 ]
  %113 = phi double [ 0.000000e+00, %107 ], [ %119, %109 ]
  %114 = phi double [ 0.000000e+00, %107 ], [ %122, %109 ]
  %115 = getelementptr inbounds double, ptr %48, i64 %111
  %116 = load double, ptr %115, align 8, !tbaa !87
  %117 = fmul double %110, %116
  %118 = load double, ptr %112, align 8, !tbaa !197
  %119 = tail call double @llvm.fmuladd.f64(double %117, double %118, double %113)
  %120 = getelementptr inbounds %struct._PointInfo, ptr %112, i64 0, i32 1
  %121 = load double, ptr %120, align 8, !tbaa !198
  %122 = tail call double @llvm.fmuladd.f64(double %117, double %121, double %114)
  %123 = fmul double %108, %110
  %124 = getelementptr inbounds %struct._PrimitiveInfo, ptr %112, i64 1
  %125 = add nuw nsw i64 %111, 1
  %126 = icmp eq i64 %125, %1
  br i1 %126, label %127, label %109, !llvm.loop !239

127:                                              ; preds = %109, %102
  %128 = phi double [ 0.000000e+00, %102 ], [ %122, %109 ]
  %129 = phi double [ 0.000000e+00, %102 ], [ %119, %109 ]
  %130 = getelementptr inbounds %struct._PointInfo, ptr %49, i64 %103
  store double %129, ptr %130, align 8, !tbaa.struct !131
  %131 = getelementptr inbounds i8, ptr %130, i64 8
  store double %128, ptr %131, align 8, !tbaa.struct !132
  %132 = fadd double %76, %104
  %133 = add nuw nsw i64 %103, 1
  %134 = icmp eq i64 %133, %47
  br i1 %134, label %100, label %102, !llvm.loop !240

135:                                              ; preds = %100, %135
  %136 = phi i64 [ %145, %135 ], [ 0, %100 ]
  %137 = phi ptr [ %144, %135 ], [ %0, %100 ]
  %138 = getelementptr inbounds %struct._PointInfo, ptr %49, i64 %136
  %139 = load double, ptr %138, align 8
  %140 = getelementptr inbounds { double, double }, ptr %138, i64 0, i32 1
  %141 = load double, ptr %140, align 8
  %142 = getelementptr inbounds %struct._PrimitiveInfo, ptr %137, i64 0, i32 1
  store i64 1, ptr %142, align 8, !tbaa !193
  store double %139, ptr %137, align 8, !tbaa.struct !131
  %143 = getelementptr inbounds i8, ptr %137, i64 8
  store double %141, ptr %143, align 8, !tbaa.struct !132
  %144 = getelementptr inbounds %struct._PrimitiveInfo, ptr %137, i64 1
  %145 = add nuw nsw i64 %136, 1
  %146 = icmp eq i64 %145, %47
  br i1 %146, label %147, label %135, !llvm.loop !241

147:                                              ; preds = %135, %100
  %148 = phi ptr [ %0, %100 ], [ %144, %135 ]
  %149 = getelementptr inbounds %struct._PrimitiveInfo, ptr %148, i64 0, i32 1
  store i64 1, ptr %149, align 8, !tbaa !193
  store double %63, ptr %148, align 8, !tbaa.struct !131
  %150 = getelementptr inbounds i8, ptr %148, i64 8
  store double %65, ptr %150, align 8, !tbaa.struct !132
  %151 = getelementptr inbounds %struct._PrimitiveInfo, ptr %148, i64 1
  %152 = ptrtoint ptr %151 to i64
  %153 = ptrtoint ptr %0 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 40
  %156 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  store i64 %155, ptr %156, align 8, !tbaa !193
  %157 = icmp sgt i64 %154, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %147
  %159 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %160 = tail call i64 @llvm.smax.i64(i64 %155, i64 1)
  br label %161

161:                                              ; preds = %158, %161
  %162 = phi i64 [ 0, %158 ], [ %167, %161 ]
  %163 = phi ptr [ %151, %158 ], [ %166, %161 ]
  %164 = load i32, ptr %159, align 8, !tbaa !191
  %165 = getelementptr inbounds %struct._PrimitiveInfo, ptr %163, i64 0, i32 2
  store i32 %164, ptr %165, align 8, !tbaa !191
  %166 = getelementptr inbounds %struct._PrimitiveInfo, ptr %163, i64 -1
  %167 = add nuw nsw i64 %162, 1
  %168 = icmp eq i64 %167, %160
  br i1 %168, label %169, label %161, !llvm.loop !242

169:                                              ; preds = %161, %147
  %170 = tail call ptr @RelinquishMagickMemory(ptr noundef %49) #24
  %171 = tail call ptr @RelinquishMagickMemory(ptr noundef %48) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawPrimitive(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PixelPacket, align 8
  %5 = alloca %struct._PixelPacket, align 2
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._PixelPacket, align 8
  %8 = alloca %struct._PixelPacket, align 8
  %9 = alloca %struct._PixelPacket, align 2
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._PixelPacket, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca %struct._AffineMatrix, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca ptr, align 8
  %16 = alloca %struct._RectangleInfo, align 8
  %17 = alloca [4096 x i8], align 16
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %19 = load i32, ptr %18, align 8, !tbaa !113
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %3
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4221, ptr noundef nonnull @.str.97) #24
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !179
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !182
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %28 = load double, ptr %27, align 8, !tbaa !180
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  %30 = load double, ptr %29, align 8, !tbaa !183
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 4
  %32 = load double, ptr %31, align 8, !tbaa !181
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 5
  %34 = load double, ptr %33, align 8, !tbaa !184
  %35 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4223, ptr noundef nonnull @.str.98, double noundef %24, double noundef %26, double noundef %28, double noundef %30, double noundef %32, double noundef %34) #24
  br label %36

36:                                               ; preds = %21, %3
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !148
  switch i32 %38, label %87 [
    i32 19, label %39
    i32 17, label %39
    i32 2, label %39
  ]

39:                                               ; preds = %36, %36, %36
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !144
  %42 = uitofp i16 %41 to float
  %43 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !145
  %45 = uitofp i16 %44 to float
  %46 = fsub float %42, %45
  %47 = fcmp olt float %46, 0.000000e+00
  %48 = fneg float %46
  %49 = select i1 %47, float %48, float %46
  %50 = fpext float %49 to double
  %51 = fcmp olt double %50, 1.000000e-15
  br i1 %51, label %52, label %85

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %54 = load i16, ptr %53, align 2, !tbaa !146
  %55 = uitofp i16 %54 to float
  %56 = fsub float %45, %55
  %57 = fcmp olt float %56, 0.000000e+00
  %58 = fneg float %56
  %59 = select i1 %57, float %58, float %56
  %60 = fpext float %59 to double
  %61 = fcmp olt double %60, 1.000000e-15
  br i1 %61, label %62, label %85

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6, i32 2
  %64 = load i16, ptr %63, align 2, !tbaa !144
  %65 = uitofp i16 %64 to float
  %66 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6, i32 1
  %67 = load i16, ptr %66, align 2, !tbaa !145
  %68 = uitofp i16 %67 to float
  %69 = fsub float %65, %68
  %70 = fcmp olt float %69, 0.000000e+00
  %71 = fneg float %69
  %72 = select i1 %70, float %71, float %69
  %73 = fpext float %72 to double
  %74 = fcmp olt double %73, 1.000000e-15
  br i1 %74, label %75, label %85

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %77 = load i16, ptr %76, align 2, !tbaa !146
  %78 = uitofp i16 %77 to float
  %79 = fsub float %68, %78
  %80 = fcmp olt float %79, 0.000000e+00
  %81 = fneg float %79
  %82 = select i1 %80, float %81, float %79
  %83 = fpext float %82 to double
  %84 = fcmp olt double %83, 1.000000e-15
  br i1 %84, label %87, label %85

85:                                               ; preds = %62, %75, %39, %52
  %86 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #24
  br label %87

87:                                               ; preds = %36, %75, %85
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %89 = load double, ptr %2, align 8, !tbaa !197
  %90 = fadd double %89, -5.000000e-01
  %91 = tail call double @llvm.ceil.f64(double %90)
  %92 = fptosi double %91 to i64
  %93 = getelementptr inbounds %struct._PointInfo, ptr %2, i64 0, i32 1
  %94 = load double, ptr %93, align 8, !tbaa !198
  %95 = fadd double %94, -5.000000e-01
  %96 = tail call double @llvm.ceil.f64(double %95)
  %97 = fptosi double %96 to i64
  %98 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %88) #24
  %99 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !191
  switch i32 %100, label %676 [
    i32 1, label %101
    i32 11, label %203
    i32 12, label %367
    i32 13, label %550
    i32 14, label %569
  ]

101:                                              ; preds = %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %102 = icmp slt i64 %97, 0
  br i1 %102, label %201, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %105 = load i64, ptr %104, align 8, !tbaa !126
  %106 = icmp sle i64 %105, %97
  %107 = icmp slt i64 %92, 0
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %201, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %111 = load i64, ptr %110, align 8, !tbaa !123
  %112 = icmp sgt i64 %111, %92
  br i1 %112, label %113, label %201

113:                                              ; preds = %109
  %114 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %98, i64 noundef %92, i64 noundef %97, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %88) #28
  %115 = icmp eq ptr %114, null
  br i1 %115, label %201, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !88
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %122 = load i64, ptr %121, align 4
  store i64 %122, ptr %4, align 8
  br label %137

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 74, i32 2
  %125 = load i64, ptr %124, align 8, !tbaa !243
  %126 = add nsw i64 %125, %92
  %127 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 74, i32 3
  %128 = load i64, ptr %127, align 8, !tbaa !244
  %129 = add nsw i64 %128, %97
  %130 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 58
  %131 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %118, i32 noundef 7, i64 noundef %126, i64 noundef %129, ptr noundef nonnull %4, ptr noundef nonnull %130) #24
  %132 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 6
  %133 = load i32, ptr %132, align 8, !tbaa !245
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 3
  store i16 0, ptr %136, align 2, !tbaa !147
  br label %137

137:                                              ; preds = %120, %123, %135
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 3
  %139 = load i16, ptr %138, align 2, !tbaa !147
  %140 = icmp eq i16 %139, -1
  br i1 %140, label %198, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 3
  %143 = load i16, ptr %142, align 2, !tbaa !147
  %144 = uitofp i16 %139 to double
  %145 = uitofp i16 %143 to double
  %146 = fmul double %144, 0xBDF0002000300040
  %147 = call double @llvm.fmuladd.f64(double %146, double %145, double 1.000000e+00)
  %148 = fcmp olt double %147, 0.000000e+00
  %149 = select i1 %148, double 0.000000e+00, double %147
  %150 = fsub double 1.000000e+00, %149
  %151 = call double @llvm.fmuladd.f64(double %150, double 6.553500e+04, double 5.000000e-01)
  %152 = fptoui double %151 to i16
  store i16 %152, ptr %142, align 2, !tbaa !147
  %153 = fcmp ult double %149, 1.000000e-15
  %154 = fdiv double 1.000000e+00, %149
  %155 = select i1 %153, double 0x430C6BF52633FFFF, double %154
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %157 = load i16, ptr %156, align 4, !tbaa !144
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  %159 = load i16, ptr %158, align 2, !tbaa !144
  %160 = call double @llvm.fmuladd.f64(double %144, double 0xBEF0001000100010, double 1.000000e+00)
  %161 = uitofp i16 %157 to double
  %162 = call double @llvm.fmuladd.f64(double %145, double 0xBEF0001000100010, double 1.000000e+00)
  %163 = uitofp i16 %159 to double
  %164 = fmul double %162, %163
  %165 = fmul double %164, 0x3EF0001000100010
  %166 = fmul double %165, %144
  %167 = call double @llvm.fmuladd.f64(double %160, double %161, double %166)
  %168 = fptrunc double %167 to float
  %169 = fpext float %168 to double
  %170 = call double @llvm.fmuladd.f64(double %155, double %169, double 5.000000e-01)
  %171 = fptoui double %170 to i16
  store i16 %171, ptr %158, align 2, !tbaa !144
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %173 = load i16, ptr %172, align 2, !tbaa !145
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  %175 = load i16, ptr %174, align 2, !tbaa !145
  %176 = uitofp i16 %173 to double
  %177 = uitofp i16 %175 to double
  %178 = fmul double %162, %177
  %179 = fmul double %178, 0x3EF0001000100010
  %180 = fmul double %179, %144
  %181 = call double @llvm.fmuladd.f64(double %160, double %176, double %180)
  %182 = fptrunc double %181 to float
  %183 = fpext float %182 to double
  %184 = call double @llvm.fmuladd.f64(double %155, double %183, double 5.000000e-01)
  %185 = fptoui double %184 to i16
  store i16 %185, ptr %174, align 2, !tbaa !145
  %186 = load i16, ptr %4, align 8, !tbaa !146
  %187 = load i16, ptr %114, align 2, !tbaa !146
  %188 = uitofp i16 %186 to double
  %189 = uitofp i16 %187 to double
  %190 = fmul double %162, %189
  %191 = fmul double %190, 0x3EF0001000100010
  %192 = fmul double %191, %144
  %193 = call double @llvm.fmuladd.f64(double %160, double %188, double %192)
  %194 = fptrunc double %193 to float
  %195 = fpext float %194 to double
  %196 = call double @llvm.fmuladd.f64(double %155, double %195, double 5.000000e-01)
  %197 = fptoui double %196 to i16
  store i16 %197, ptr %114, align 2, !tbaa !146
  br label %198

198:                                              ; preds = %137, %141
  %199 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef nonnull %88) #28
  %200 = and i32 %199, 1
  br label %201

201:                                              ; preds = %113, %109, %101, %103, %198
  %202 = phi i32 [ %200, %198 ], [ 1, %103 ], [ 1, %101 ], [ 1, %109 ], [ 1, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %1074

203:                                              ; preds = %87
  %204 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %205 = load i32, ptr %204, align 4, !tbaa !194
  switch i32 %205, label %214 [
    i32 5, label %206
    i32 2, label %241
    i32 3, label %300
    i32 4, label %300
  ]

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %208 = load i64, ptr %207, align 8, !tbaa !126
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %1074

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %212 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %213 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  br label %326

214:                                              ; preds = %203
  %215 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %98, i64 noundef %92, i64 noundef %97, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %88) #28
  %216 = icmp eq ptr %215, null
  br i1 %216, label %1074, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %219 = load ptr, ptr %218, align 8, !tbaa !88
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %223 = load i64, ptr %222, align 4
  store i64 %223, ptr %215, align 2
  br label %238

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 74, i32 2
  %226 = load i64, ptr %225, align 8, !tbaa !243
  %227 = add nsw i64 %226, %92
  %228 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 74, i32 3
  %229 = load i64, ptr %228, align 8, !tbaa !244
  %230 = add nsw i64 %229, %97
  %231 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 58
  %232 = tail call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %219, i32 noundef 7, i64 noundef %227, i64 noundef %230, ptr noundef nonnull %215, ptr noundef nonnull %231) #24
  %233 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 6
  %234 = load i32, ptr %233, align 8, !tbaa !245
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %224
  %237 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 3
  store i16 0, ptr %237, align 2, !tbaa !147
  br label %238

238:                                              ; preds = %221, %224, %236
  %239 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef nonnull %88) #28
  %240 = and i32 %239, 1
  br label %1074

241:                                              ; preds = %203
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %242 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %98, i64 noundef %92, i64 noundef %97, ptr noundef nonnull %5, ptr noundef nonnull %88) #24
  %243 = and i32 %242, 1
  %244 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %245 = load i64, ptr %244, align 8, !tbaa !126
  %246 = icmp sgt i64 %245, 0
  br i1 %246, label %247, label %299

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %249 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %250 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  br label %255

251:                                              ; preds = %296
  %252 = add nuw nsw i64 %256, 1
  %253 = load i64, ptr %244, align 8, !tbaa !126
  %254 = icmp slt i64 %252, %253
  br i1 %254, label %255, label %299, !llvm.loop !246

255:                                              ; preds = %247, %251
  %256 = phi i64 [ 0, %247 ], [ %252, %251 ]
  %257 = load i64, ptr %248, align 8, !tbaa !123
  %258 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %98, i64 noundef 0, i64 noundef %256, i64 noundef %257, i64 noundef 1, ptr noundef nonnull %88) #28
  %259 = icmp eq ptr %258, null
  br i1 %259, label %296, label %260

260:                                              ; preds = %255
  %261 = load i64, ptr %248, align 8, !tbaa !123
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %292

263:                                              ; preds = %260, %287
  %264 = phi i64 [ %289, %287 ], [ 0, %260 ]
  %265 = phi ptr [ %288, %287 ], [ %258, %260 ]
  %266 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef nonnull %265, ptr noundef nonnull %5) #24
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %287, label %268

268:                                              ; preds = %263
  %269 = load ptr, ptr %249, align 8, !tbaa !88
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i64, ptr %250, align 4
  store i64 %272, ptr %265, align 2
  br label %287

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct._Image, ptr %269, i64 0, i32 74, i32 2
  %275 = load i64, ptr %274, align 8, !tbaa !243
  %276 = add nsw i64 %275, %264
  %277 = getelementptr inbounds %struct._Image, ptr %269, i64 0, i32 74, i32 3
  %278 = load i64, ptr %277, align 8, !tbaa !244
  %279 = add nsw i64 %278, %256
  %280 = getelementptr inbounds %struct._Image, ptr %269, i64 0, i32 58
  %281 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %269, i32 noundef 7, i64 noundef %276, i64 noundef %279, ptr noundef nonnull %265, ptr noundef nonnull %280) #24
  %282 = getelementptr inbounds %struct._Image, ptr %269, i64 0, i32 6
  %283 = load i32, ptr %282, align 8, !tbaa !245
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %273
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 0, i32 3
  store i16 0, ptr %286, align 2, !tbaa !147
  br label %287

287:                                              ; preds = %285, %273, %271, %263
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %265, i64 1
  %289 = add nuw nsw i64 %264, 1
  %290 = load i64, ptr %248, align 8, !tbaa !123
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %263, label %292, !llvm.loop !247

292:                                              ; preds = %287, %260
  %293 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef nonnull %88) #28
  %294 = icmp eq i32 %293, 0
  %295 = select i1 %294, i32 4, i32 0
  br label %296

296:                                              ; preds = %292, %255
  %297 = phi i32 [ 4, %255 ], [ %295, %292 ]
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %251, label %299

299:                                              ; preds = %251, %296, %241
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %1074

300:                                              ; preds = %203, %203
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #24
  %301 = call i32 @GetOneVirtualMagickPixel(ptr noundef %0, i64 noundef %92, i64 noundef %97, ptr noundef nonnull %6, ptr noundef nonnull %88) #24
  %302 = load i32, ptr %204, align 4, !tbaa !194
  %303 = icmp eq i32 %302, 4
  br i1 %303, label %304, label %317

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34
  %306 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34, i32 2
  %307 = load i16, ptr %306, align 4, !tbaa !248
  %308 = uitofp i16 %307 to float
  %309 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  store float %308, ptr %309, align 8, !tbaa !153
  %310 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34, i32 1
  %311 = load i16, ptr %310, align 2, !tbaa !249
  %312 = uitofp i16 %311 to float
  %313 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  store float %312, ptr %313, align 4, !tbaa !155
  %314 = load i16, ptr %305, align 4, !tbaa !250
  %315 = uitofp i16 %314 to float
  %316 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  store float %315, ptr %316, align 8, !tbaa !156
  br label %317

317:                                              ; preds = %304, %300
  %318 = icmp ne i32 %302, 3
  %319 = zext i1 %318 to i32
  %320 = call i32 @FloodfillPaintImage(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef nonnull %6, i64 noundef %92, i64 noundef %97, i32 noundef %319) #24
  %321 = and i32 %320, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #24
  br label %1074

322:                                              ; preds = %364
  %323 = add nuw nsw i64 %327, 1
  %324 = load i64, ptr %207, align 8, !tbaa !126
  %325 = icmp slt i64 %323, %324
  br i1 %325, label %326, label %1074, !llvm.loop !251

326:                                              ; preds = %210, %322
  %327 = phi i64 [ 0, %210 ], [ %323, %322 ]
  %328 = load i64, ptr %211, align 8, !tbaa !123
  %329 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %98, i64 noundef 0, i64 noundef %327, i64 noundef %328, i64 noundef 1, ptr noundef nonnull %88) #28
  %330 = icmp eq ptr %329, null
  br i1 %330, label %364, label %331

331:                                              ; preds = %326
  %332 = load i64, ptr %211, align 8, !tbaa !123
  %333 = icmp sgt i64 %332, 0
  br i1 %333, label %334, label %360

334:                                              ; preds = %331, %355
  %335 = phi ptr [ %356, %355 ], [ %329, %331 ]
  %336 = phi i64 [ %357, %355 ], [ 0, %331 ]
  %337 = load ptr, ptr %212, align 8, !tbaa !88
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = load i64, ptr %213, align 4
  store i64 %340, ptr %335, align 2
  br label %355

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct._Image, ptr %337, i64 0, i32 74, i32 2
  %343 = load i64, ptr %342, align 8, !tbaa !243
  %344 = add nsw i64 %343, %336
  %345 = getelementptr inbounds %struct._Image, ptr %337, i64 0, i32 74, i32 3
  %346 = load i64, ptr %345, align 8, !tbaa !244
  %347 = add nsw i64 %346, %327
  %348 = getelementptr inbounds %struct._Image, ptr %337, i64 0, i32 58
  %349 = tail call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %337, i32 noundef 7, i64 noundef %344, i64 noundef %347, ptr noundef nonnull %335, ptr noundef nonnull %348) #24
  %350 = getelementptr inbounds %struct._Image, ptr %337, i64 0, i32 6
  %351 = load i32, ptr %350, align 8, !tbaa !245
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %341
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %335, i64 0, i32 3
  store i16 0, ptr %354, align 2, !tbaa !147
  br label %355

355:                                              ; preds = %339, %341, %353
  %356 = getelementptr inbounds %struct._PixelPacket, ptr %335, i64 1
  %357 = add nuw nsw i64 %336, 1
  %358 = load i64, ptr %211, align 8, !tbaa !123
  %359 = icmp slt i64 %357, %358
  br i1 %359, label %334, label %360, !llvm.loop !252

360:                                              ; preds = %355, %331
  %361 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef nonnull %88) #28
  %362 = icmp eq i32 %361, 0
  %363 = select i1 %362, i32 10, i32 0
  br label %364

364:                                              ; preds = %360, %326
  %365 = phi i32 [ 10, %326 ], [ %363, %360 ]
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %322, label %1074

367:                                              ; preds = %87
  %368 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %369 = load i32, ptr %368, align 8, !tbaa !245
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  %372 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #24
  br label %373

373:                                              ; preds = %371, %367
  %374 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %375 = load i32, ptr %374, align 4, !tbaa !194
  switch i32 %375, label %376 [
    i32 5, label %493
    i32 2, label %408
    i32 3, label %471
    i32 4, label %471
  ]

376:                                              ; preds = %373
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %377 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %98, i64 noundef %92, i64 noundef %97, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %88) #28
  %378 = icmp eq ptr %377, null
  br i1 %378, label %406, label %379

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %381 = load ptr, ptr %380, align 8, !tbaa !88
  %382 = icmp eq ptr %381, null
  br i1 %382, label %383, label %386

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %385 = load i64, ptr %384, align 4
  store i64 %385, ptr %7, align 8
  br label %400

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct._Image, ptr %381, i64 0, i32 74, i32 2
  %388 = load i64, ptr %387, align 8, !tbaa !243
  %389 = add nsw i64 %388, %92
  %390 = getelementptr inbounds %struct._Image, ptr %381, i64 0, i32 74, i32 3
  %391 = load i64, ptr %390, align 8, !tbaa !244
  %392 = add nsw i64 %391, %97
  %393 = getelementptr inbounds %struct._Image, ptr %381, i64 0, i32 58
  %394 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %381, i32 noundef 7, i64 noundef %389, i64 noundef %392, ptr noundef nonnull %7, ptr noundef nonnull %393) #24
  %395 = getelementptr inbounds %struct._Image, ptr %381, i64 0, i32 6
  %396 = load i32, ptr %395, align 8, !tbaa !245
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %386
  %399 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 3
  store i16 0, ptr %399, align 2, !tbaa !147
  br label %400

400:                                              ; preds = %383, %386, %398
  %401 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 3
  %402 = load i16, ptr %401, align 2, !tbaa !147
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 3
  store i16 %402, ptr %403, align 2, !tbaa !147
  %404 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef nonnull %88) #28
  %405 = and i32 %404, 1
  br label %406

406:                                              ; preds = %376, %400
  %407 = phi i32 [ %405, %400 ], [ 1, %376 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %1074

408:                                              ; preds = %373
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  %409 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %98, i64 noundef %92, i64 noundef %97, ptr noundef nonnull %9, ptr noundef nonnull %88) #24
  %410 = and i32 %409, 1
  %411 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %412 = load i64, ptr %411, align 8, !tbaa !126
  %413 = icmp sgt i64 %412, 0
  br i1 %413, label %414, label %470

414:                                              ; preds = %408
  %415 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %416 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %417 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 3
  %418 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %419 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 3
  br label %424

420:                                              ; preds = %467
  %421 = add nuw nsw i64 %425, 1
  %422 = load i64, ptr %411, align 8, !tbaa !126
  %423 = icmp slt i64 %421, %422
  br i1 %423, label %424, label %470, !llvm.loop !253

424:                                              ; preds = %414, %420
  %425 = phi i64 [ 0, %414 ], [ %421, %420 ]
  %426 = load i64, ptr %415, align 8, !tbaa !123
  %427 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %98, i64 noundef 0, i64 noundef %425, i64 noundef %426, i64 noundef 1, ptr noundef nonnull %88) #28
  %428 = icmp eq ptr %427, null
  br i1 %428, label %467, label %429

429:                                              ; preds = %424
  %430 = load i64, ptr %415, align 8, !tbaa !123
  %431 = icmp sgt i64 %430, 0
  br i1 %431, label %432, label %463

432:                                              ; preds = %429, %458
  %433 = phi i64 [ %460, %458 ], [ 0, %429 ]
  %434 = phi ptr [ %459, %458 ], [ %427, %429 ]
  %435 = call i32 @IsColorSimilar(ptr noundef %0, ptr noundef nonnull %434, ptr noundef nonnull %9) #24
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %458, label %437

437:                                              ; preds = %432
  %438 = load ptr, ptr %416, align 8, !tbaa !88
  %439 = icmp eq ptr %438, null
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = load i64, ptr %418, align 4
  store i64 %441, ptr %8, align 8
  br label %455

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct._Image, ptr %438, i64 0, i32 74, i32 2
  %444 = load i64, ptr %443, align 8, !tbaa !243
  %445 = add nsw i64 %444, %433
  %446 = getelementptr inbounds %struct._Image, ptr %438, i64 0, i32 74, i32 3
  %447 = load i64, ptr %446, align 8, !tbaa !244
  %448 = add nsw i64 %447, %425
  %449 = getelementptr inbounds %struct._Image, ptr %438, i64 0, i32 58
  %450 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %438, i32 noundef 7, i64 noundef %445, i64 noundef %448, ptr noundef nonnull %8, ptr noundef nonnull %449) #24
  %451 = getelementptr inbounds %struct._Image, ptr %438, i64 0, i32 6
  %452 = load i32, ptr %451, align 8, !tbaa !245
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %442
  store i16 0, ptr %417, align 2, !tbaa !147
  br label %455

455:                                              ; preds = %440, %442, %454
  %456 = load i16, ptr %419, align 2, !tbaa !147
  %457 = getelementptr inbounds %struct._PixelPacket, ptr %434, i64 0, i32 3
  store i16 %456, ptr %457, align 2, !tbaa !147
  br label %458

458:                                              ; preds = %432, %455
  %459 = getelementptr inbounds %struct._PixelPacket, ptr %434, i64 1
  %460 = add nuw nsw i64 %433, 1
  %461 = load i64, ptr %415, align 8, !tbaa !123
  %462 = icmp slt i64 %460, %461
  br i1 %462, label %432, label %463, !llvm.loop !254

463:                                              ; preds = %458, %429
  %464 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef nonnull %88) #28
  %465 = icmp eq i32 %464, 0
  %466 = select i1 %465, i32 17, i32 0
  br label %467

467:                                              ; preds = %463, %424
  %468 = phi i32 [ 17, %424 ], [ %466, %463 ]
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %420, label %470

470:                                              ; preds = %420, %467, %408
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  br label %1074

471:                                              ; preds = %373, %373
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #24
  %472 = call i32 @GetOneVirtualMagickPixel(ptr noundef %0, i64 noundef %92, i64 noundef %97, ptr noundef nonnull %10, ptr noundef nonnull %88) #24
  %473 = load i32, ptr %374, align 4, !tbaa !194
  %474 = icmp eq i32 %473, 4
  br i1 %474, label %475, label %488

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34
  %477 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34, i32 2
  %478 = load i16, ptr %477, align 4, !tbaa !248
  %479 = uitofp i16 %478 to float
  %480 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  store float %479, ptr %480, align 8, !tbaa !153
  %481 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34, i32 1
  %482 = load i16, ptr %481, align 2, !tbaa !249
  %483 = uitofp i16 %482 to float
  %484 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  store float %483, ptr %484, align 4, !tbaa !155
  %485 = load i16, ptr %476, align 4, !tbaa !250
  %486 = uitofp i16 %485 to float
  %487 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  store float %486, ptr %487, align 8, !tbaa !156
  br label %488

488:                                              ; preds = %475, %471
  %489 = icmp ne i32 %473, 3
  %490 = zext i1 %489 to i32
  %491 = call i32 @FloodfillPaintImage(ptr noundef %0, i32 noundef 8, ptr noundef %1, ptr noundef nonnull %10, i64 noundef %92, i64 noundef %97, i32 noundef %490) #24
  %492 = and i32 %491, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #24
  br label %1074

493:                                              ; preds = %373
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #24
  %494 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %495 = load i64, ptr %494, align 8, !tbaa !126
  %496 = icmp sgt i64 %495, 0
  br i1 %496, label %497, label %549

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %499 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %500 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 3
  %501 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %502 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 3
  br label %507

503:                                              ; preds = %546
  %504 = add nuw nsw i64 %508, 1
  %505 = load i64, ptr %494, align 8, !tbaa !126
  %506 = icmp slt i64 %504, %505
  br i1 %506, label %507, label %549, !llvm.loop !255

507:                                              ; preds = %497, %503
  %508 = phi i64 [ 0, %497 ], [ %504, %503 ]
  %509 = load i64, ptr %498, align 8, !tbaa !123
  %510 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %98, i64 noundef 0, i64 noundef %508, i64 noundef %509, i64 noundef 1, ptr noundef nonnull %88) #28
  %511 = icmp eq ptr %510, null
  br i1 %511, label %546, label %512

512:                                              ; preds = %507
  %513 = load i64, ptr %498, align 8, !tbaa !123
  %514 = icmp sgt i64 %513, 0
  br i1 %514, label %515, label %542

515:                                              ; preds = %512, %535
  %516 = phi i64 [ %539, %535 ], [ 0, %512 ]
  %517 = phi ptr [ %538, %535 ], [ %510, %512 ]
  %518 = load ptr, ptr %499, align 8, !tbaa !88
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %522

520:                                              ; preds = %515
  %521 = load i64, ptr %501, align 4
  store i64 %521, ptr %11, align 8
  br label %535

522:                                              ; preds = %515
  %523 = getelementptr inbounds %struct._Image, ptr %518, i64 0, i32 74, i32 2
  %524 = load i64, ptr %523, align 8, !tbaa !243
  %525 = add nsw i64 %524, %516
  %526 = getelementptr inbounds %struct._Image, ptr %518, i64 0, i32 74, i32 3
  %527 = load i64, ptr %526, align 8, !tbaa !244
  %528 = add nsw i64 %527, %508
  %529 = getelementptr inbounds %struct._Image, ptr %518, i64 0, i32 58
  %530 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %518, i32 noundef 7, i64 noundef %525, i64 noundef %528, ptr noundef nonnull %11, ptr noundef nonnull %529) #24
  %531 = getelementptr inbounds %struct._Image, ptr %518, i64 0, i32 6
  %532 = load i32, ptr %531, align 8, !tbaa !245
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %522
  store i16 0, ptr %500, align 2, !tbaa !147
  br label %535

535:                                              ; preds = %520, %522, %534
  %536 = load i16, ptr %502, align 2, !tbaa !147
  %537 = getelementptr inbounds %struct._PixelPacket, ptr %517, i64 0, i32 3
  store i16 %536, ptr %537, align 2, !tbaa !147
  %538 = getelementptr inbounds %struct._PixelPacket, ptr %517, i64 1
  %539 = add nuw nsw i64 %516, 1
  %540 = load i64, ptr %498, align 8, !tbaa !123
  %541 = icmp slt i64 %539, %540
  br i1 %541, label %515, label %542, !llvm.loop !256

542:                                              ; preds = %535, %512
  %543 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef nonnull %88) #28
  %544 = icmp eq i32 %543, 0
  %545 = select i1 %544, i32 23, i32 0
  br label %546

546:                                              ; preds = %542, %507
  %547 = phi i32 [ 23, %507 ], [ %545, %542 ]
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %503, label %549

549:                                              ; preds = %503, %546, %493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #24
  br label %1074

550:                                              ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #24
  %551 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 4
  %552 = load ptr, ptr %551, align 8, !tbaa !196
  %553 = icmp eq ptr %552, null
  br i1 %553, label %567, label %554

554:                                              ; preds = %550
  %555 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1)
  %556 = getelementptr inbounds %struct._DrawInfo, ptr %555, i64 0, i32 21
  %557 = load ptr, ptr %551, align 8, !tbaa !196
  %558 = tail call ptr @CloneString(ptr noundef nonnull %556, ptr noundef %557) #24
  %559 = load double, ptr %2, align 8, !tbaa !197
  %560 = load double, ptr %93, align 8, !tbaa !198
  %561 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %12, i64 noundef 4096, ptr noundef nonnull @.str.99, double noundef %559, double noundef %560) #24
  %562 = getelementptr inbounds %struct._DrawInfo, ptr %555, i64 0, i32 1
  %563 = call ptr @CloneString(ptr noundef nonnull %562, ptr noundef nonnull %12) #24
  %564 = call i32 @AnnotateImage(ptr noundef %0, ptr noundef %555) #24
  %565 = and i32 %564, 1
  %566 = call ptr @DestroyDrawInfo(ptr noundef %555)
  br label %567

567:                                              ; preds = %550, %554
  %568 = phi i32 [ %565, %554 ], [ 1, %550 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #24
  br label %1074

569:                                              ; preds = %87
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #24
  %570 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 4
  %571 = load ptr, ptr %570, align 8, !tbaa !196
  %572 = icmp eq ptr %571, null
  br i1 %572, label %675, label %573

573:                                              ; preds = %569
  %574 = tail call ptr @AcquireImageInfo() #24
  %575 = load ptr, ptr %570, align 8, !tbaa !196
  %576 = tail call i32 @LocaleNCompare(ptr noundef %575, ptr noundef nonnull @.str.100, i64 noundef 5) #24
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %573
  %579 = load ptr, ptr %570, align 8, !tbaa !196
  %580 = tail call ptr @ReadInlineImage(ptr noundef %574, ptr noundef %579, ptr noundef nonnull %88) #24
  br label %586

581:                                              ; preds = %573
  %582 = getelementptr inbounds %struct._ImageInfo, ptr %574, i64 0, i32 51
  %583 = load ptr, ptr %570, align 8, !tbaa !196
  %584 = tail call i64 @CopyMagickString(ptr noundef nonnull %582, ptr noundef %583, i64 noundef 4096) #24
  %585 = tail call ptr @ReadImage(ptr noundef %574, ptr noundef nonnull %88) #24
  br label %586

586:                                              ; preds = %581, %578
  %587 = phi ptr [ %585, %581 ], [ %580, %578 ]
  store ptr %587, ptr %15, align 8, !tbaa !105
  %588 = tail call ptr @DestroyImageInfo(ptr noundef %574) #24
  %589 = load ptr, ptr %15, align 8, !tbaa !105
  %590 = icmp eq ptr %589, null
  br i1 %590, label %675, label %591

591:                                              ; preds = %586
  %592 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %589, ptr noundef null, ptr noundef null) #24
  %593 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 1
  %594 = load double, ptr %593, align 8, !tbaa !197
  %595 = fadd double %594, -5.000000e-01
  %596 = tail call double @llvm.ceil.f64(double %595)
  %597 = fptosi double %596 to i64
  %598 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 1, i32 0, i32 1
  %599 = load double, ptr %598, align 8, !tbaa !198
  %600 = fadd double %599, -5.000000e-01
  %601 = tail call double @llvm.ceil.f64(double %600)
  %602 = fptosi double %601 to i64
  %603 = icmp eq i64 %597, 0
  br i1 %603, label %609, label %604

604:                                              ; preds = %591
  %605 = load ptr, ptr %15, align 8, !tbaa !105
  %606 = getelementptr inbounds %struct._Image, ptr %605, i64 0, i32 7
  %607 = load i64, ptr %606, align 8, !tbaa !123
  %608 = icmp eq i64 %607, %597
  br i1 %608, label %609, label %616

609:                                              ; preds = %604, %591
  %610 = icmp eq i64 %602, 0
  br i1 %610, label %623, label %611

611:                                              ; preds = %609
  %612 = load ptr, ptr %15, align 8, !tbaa !105
  %613 = getelementptr inbounds %struct._Image, ptr %612, i64 0, i32 8
  %614 = load i64, ptr %613, align 8, !tbaa !126
  %615 = icmp eq i64 %614, %602
  br i1 %615, label %623, label %616

616:                                              ; preds = %611, %604
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %17) #24
  %617 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %17, i64 noundef 4096, ptr noundef nonnull @.str.101, double noundef %594, double noundef %599) #24
  %618 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %619 = load i32, ptr %618, align 8, !tbaa !257
  %620 = load ptr, ptr %15, align 8, !tbaa !105
  %621 = getelementptr inbounds %struct._Image, ptr %620, i64 0, i32 32
  store i32 %619, ptr %621, align 8, !tbaa !257
  %622 = call i32 @TransformImage(ptr noundef nonnull %15, ptr noundef null, ptr noundef nonnull %17) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %17) #24
  br label %623

623:                                              ; preds = %616, %611, %609
  %624 = load ptr, ptr %15, align 8, !tbaa !105
  %625 = getelementptr inbounds %struct._Image, ptr %624, i64 0, i32 6
  %626 = load i32, ptr %625, align 8, !tbaa !245
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %630

628:                                              ; preds = %623
  %629 = call i32 @SetImageAlphaChannel(ptr noundef %624, i32 noundef 6) #24
  br label %630

630:                                              ; preds = %628, %623
  %631 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 40
  %632 = load i16, ptr %631, align 4, !tbaa !57
  %633 = icmp eq i16 %632, 0
  br i1 %633, label %637, label %634

634:                                              ; preds = %630
  %635 = load ptr, ptr %15, align 8, !tbaa !105
  %636 = call i32 @SetImageOpacity(ptr noundef %635, i16 noundef zeroext %632) #24
  br label %637

637:                                              ; preds = %634, %630
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %16) #24
  %638 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 4
  %639 = load i32, ptr %638, align 8, !tbaa !80
  %640 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  store i32 %639, ptr %640, align 4, !tbaa !258
  %641 = getelementptr inbounds %struct._RectangleInfo, ptr %16, i64 0, i32 2
  store i64 %92, ptr %641, align 8, !tbaa !259
  %642 = getelementptr inbounds %struct._RectangleInfo, ptr %16, i64 0, i32 3
  store i64 %97, ptr %642, align 8, !tbaa !260
  %643 = load ptr, ptr %15, align 8, !tbaa !105
  %644 = getelementptr inbounds %struct._Image, ptr %643, i64 0, i32 7
  %645 = load i64, ptr %644, align 8, !tbaa !123
  %646 = uitofp i64 %645 to double
  %647 = getelementptr inbounds %struct._Image, ptr %643, i64 0, i32 8
  %648 = load i64, ptr %647, align 8, !tbaa !126
  %649 = uitofp i64 %648 to double
  %650 = sitofp i64 %92 to double
  %651 = sitofp i64 %97 to double
  %652 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %14, i64 noundef 4096, ptr noundef nonnull @.str.66, double noundef %646, double noundef %649, double noundef %650, double noundef %651) #24
  %653 = call i32 @ParseGravityGeometry(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %88) #24
  %654 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %654, i64 48, i1 false), !tbaa.struct !86
  %655 = load i64, ptr %641, align 8, !tbaa !259
  %656 = sitofp i64 %655 to double
  %657 = getelementptr inbounds %struct._AffineMatrix, ptr %13, i64 0, i32 4
  store double %656, ptr %657, align 8, !tbaa !128
  %658 = load i64, ptr %642, align 8, !tbaa !260
  %659 = sitofp i64 %658 to double
  %660 = getelementptr inbounds %struct._AffineMatrix, ptr %13, i64 0, i32 5
  store double %659, ptr %660, align 8, !tbaa !130
  %661 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  %662 = load i32, ptr %661, align 8, !tbaa !261
  %663 = load ptr, ptr %15, align 8, !tbaa !105
  %664 = getelementptr inbounds %struct._Image, ptr %663, i64 0, i32 70
  store i32 %662, ptr %664, align 8, !tbaa !261
  %665 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 20
  %666 = load i32, ptr %665, align 4, !tbaa !71
  %667 = icmp eq i32 %666, 40
  br i1 %667, label %668, label %670

668:                                              ; preds = %637
  %669 = call i32 @DrawAffineImage(ptr noundef %0, ptr noundef %663, ptr noundef nonnull %13), !range !163
  br label %672

670:                                              ; preds = %637
  %671 = call i32 @CompositeImage(ptr noundef %0, i32 noundef %666, ptr noundef %663, i64 noundef %655, i64 noundef %658) #24
  br label %672

672:                                              ; preds = %670, %668
  %673 = load ptr, ptr %15, align 8, !tbaa !105
  %674 = call ptr @DestroyImage(ptr noundef %673) #24
  store ptr %674, ptr %15, align 8, !tbaa !105
  br label %675

675:                                              ; preds = %586, %569, %672
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #24
  br label %1074

676:                                              ; preds = %87
  %677 = tail call i32 @IsEventLogging() #24
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %787, label %679

679:                                              ; preds = %676
  %680 = load double, ptr %2, align 8
  %681 = fadd double %680, -5.000000e-01
  %682 = tail call double @llvm.ceil.f64(double %681)
  %683 = fptosi double %682 to i64
  %684 = load double, ptr %93, align 8
  %685 = fadd double %684, -5.000000e-01
  %686 = tail call double @llvm.ceil.f64(double %685)
  %687 = fptosi double %686 to i64
  %688 = load i32, ptr %99, align 8, !tbaa !191
  switch i32 %688, label %689 [
    i32 1, label %693
    i32 11, label %702
    i32 12, label %711
    i32 13, label %720
    i32 14, label %724
  ]

689:                                              ; preds = %679
  %690 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 2
  %691 = load i32, ptr %690, align 8, !tbaa !191
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %787, label %728

693:                                              ; preds = %679
  %694 = sitofp i64 %683 to double
  %695 = sitofp i64 %687 to double
  %696 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %697 = load i32, ptr %696, align 4, !tbaa !194
  %698 = zext i32 %697 to i64
  %699 = getelementptr inbounds [6 x ptr], ptr @__const.LogPrimitiveInfo.methods, i64 0, i64 %698
  %700 = load ptr, ptr %699, align 8, !tbaa !105
  %701 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4130, ptr noundef nonnull @.str.113, double noundef %694, double noundef %695, ptr noundef %700) #24
  br label %787

702:                                              ; preds = %679
  %703 = sitofp i64 %683 to double
  %704 = sitofp i64 %687 to double
  %705 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %706 = load i32, ptr %705, align 4, !tbaa !194
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds [6 x ptr], ptr @__const.LogPrimitiveInfo.methods, i64 0, i64 %707
  %709 = load ptr, ptr %708, align 8, !tbaa !105
  %710 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4137, ptr noundef nonnull @.str.114, double noundef %703, double noundef %704, ptr noundef %709) #24
  br label %787

711:                                              ; preds = %679
  %712 = sitofp i64 %683 to double
  %713 = sitofp i64 %687 to double
  %714 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %715 = load i32, ptr %714, align 4, !tbaa !194
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [6 x ptr], ptr @__const.LogPrimitiveInfo.methods, i64 0, i64 %716
  %718 = load ptr, ptr %717, align 8, !tbaa !105
  %719 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4144, ptr noundef nonnull @.str.115, double noundef %712, double noundef %713, ptr noundef %718) #24
  br label %787

720:                                              ; preds = %679
  %721 = sitofp i64 %683 to double
  %722 = sitofp i64 %687 to double
  %723 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4151, ptr noundef nonnull @.str.116, double noundef %721, double noundef %722) #24
  br label %787

724:                                              ; preds = %679
  %725 = sitofp i64 %683 to double
  %726 = sitofp i64 %687 to double
  %727 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4157, ptr noundef nonnull @.str.117, double noundef %725, double noundef %726) #24
  br label %787

728:                                              ; preds = %689, %781
  %729 = phi ptr [ %783, %781 ], [ %2, %689 ]
  %730 = phi double [ %748, %781 ], [ %684, %689 ]
  %731 = phi i64 [ %765, %781 ], [ 0, %689 ]
  %732 = phi double [ %746, %781 ], [ %680, %689 ]
  %733 = phi i64 [ %782, %781 ], [ 0, %689 ]
  %734 = phi double [ %749, %781 ], [ -1.000000e+00, %689 ]
  %735 = phi double [ %750, %781 ], [ -1.000000e+00, %689 ]
  %736 = getelementptr inbounds i8, ptr %729, i64 8
  %737 = icmp slt i64 %731, 1
  br i1 %737, label %738, label %745

738:                                              ; preds = %728
  %739 = load double, ptr %736, align 8, !tbaa.struct !132
  %740 = load double, ptr %729, align 8, !tbaa.struct !131
  %741 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %733, i32 1
  %742 = load i64, ptr %741, align 8, !tbaa !193
  %743 = sitofp i64 %742 to double
  %744 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4174, ptr noundef nonnull @.str.118, double noundef %743) #24
  br label %745

745:                                              ; preds = %738, %728
  %746 = phi double [ %740, %738 ], [ %732, %728 ]
  %747 = phi i64 [ %742, %738 ], [ %731, %728 ]
  %748 = phi double [ %739, %738 ], [ %730, %728 ]
  %749 = load double, ptr %729, align 8, !tbaa.struct !131
  %750 = load double, ptr %736, align 8, !tbaa.struct !132
  %751 = fsub double %734, %749
  %752 = tail call double @llvm.fabs.f64(double %751)
  %753 = fcmp ult double %752, 1.000000e-15
  br i1 %753, label %754, label %758

754:                                              ; preds = %745
  %755 = fsub double %735, %750
  %756 = tail call double @llvm.fabs.f64(double %755)
  %757 = fcmp ult double %756, 1.000000e-15
  br i1 %757, label %761, label %758

758:                                              ; preds = %754, %745
  %759 = sitofp i64 %747 to double
  %760 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4181, ptr noundef nonnull @.str.119, double noundef %759, double noundef %749, double noundef %750) #24
  br label %764

761:                                              ; preds = %754
  %762 = sitofp i64 %747 to double
  %763 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4184, ptr noundef nonnull @.str.120, double noundef %762, double noundef %749, double noundef %750) #24
  br label %764

764:                                              ; preds = %761, %758
  %765 = add nsw i64 %747, -1
  %766 = icmp sgt i64 %747, 1
  br i1 %766, label %781, label %767

767:                                              ; preds = %764
  %768 = fsub double %746, %749
  %769 = tail call double @llvm.fabs.f64(double %768)
  %770 = fcmp ult double %769, 1.000000e-15
  br i1 %770, label %771, label %775

771:                                              ; preds = %767
  %772 = fsub double %748, %750
  %773 = tail call double @llvm.fabs.f64(double %772)
  %774 = fcmp ult double %773, 1.000000e-15
  br i1 %774, label %778, label %775

775:                                              ; preds = %771, %767
  %776 = sitofp i64 %765 to double
  %777 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4192, ptr noundef nonnull @.str.121, double noundef %776) #24
  br label %781

778:                                              ; preds = %771
  %779 = sitofp i64 %765 to double
  %780 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4195, ptr noundef nonnull @.str.122, double noundef %779) #24
  br label %781

781:                                              ; preds = %778, %775, %764
  %782 = add nuw nsw i64 %733, 1
  %783 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %782
  %784 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %782, i32 2
  %785 = load i32, ptr %784, align 8, !tbaa !191
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %728, !llvm.loop !262

787:                                              ; preds = %781, %689, %724, %720, %711, %702, %693, %676
  %788 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %789 = tail call double @ExpandAffine(ptr noundef nonnull %788) #24
  %790 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 36
  %791 = load ptr, ptr %790, align 8, !tbaa !100
  %792 = icmp eq ptr %791, null
  br i1 %792, label %1018, label %793

793:                                              ; preds = %787
  %794 = load double, ptr %791, align 8, !tbaa !87
  %795 = fcmp une double %794, 0.000000e+00
  br i1 %795, label %796, label %1018

796:                                              ; preds = %793
  %797 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %798 = load double, ptr %797, align 8, !tbaa !56
  %799 = fmul double %789, %798
  %800 = fcmp ult double %799, 1.000000e-15
  br i1 %800, label %1018, label %801

801:                                              ; preds = %796
  %802 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6, i32 3
  %803 = load i16, ptr %802, align 2, !tbaa !176
  %804 = icmp eq i16 %803, -1
  br i1 %804, label %1018, label %805

805:                                              ; preds = %801
  %806 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1)
  %807 = getelementptr inbounds %struct._DrawInfo, ptr %806, i64 0, i32 7
  store double 0.000000e+00, ptr %807, align 8, !tbaa !56
  %808 = getelementptr inbounds %struct._DrawInfo, ptr %806, i64 0, i32 6, i32 3
  store i16 -1, ptr %808, align 2, !tbaa !176
  %809 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %806, ptr noundef nonnull %2), !range !163
  %810 = tail call ptr @DestroyDrawInfo(ptr noundef %806)
  %811 = load i32, ptr %18, align 8, !tbaa !113
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %815, label %813

813:                                              ; preds = %805
  %814 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1549, ptr noundef nonnull @.str.143) #24
  br label %815

815:                                              ; preds = %813, %805
  %816 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1)
  %817 = getelementptr inbounds %struct._DrawInfo, ptr %816, i64 0, i32 17
  store i64 0, ptr %817, align 8, !tbaa !61
  br label %818

818:                                              ; preds = %818, %815
  %819 = phi i64 [ 0, %815 ], [ %823, %818 ]
  %820 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %819, i32 2
  %821 = load i32, ptr %820, align 8, !tbaa !191
  %822 = icmp eq i32 %821, 0
  %823 = add nuw nsw i64 %819, 1
  br i1 %822, label %824, label %818, !llvm.loop !263

824:                                              ; preds = %818
  %825 = shl nuw i64 %819, 1
  %826 = or disjoint i64 %825, 1
  %827 = tail call ptr @AcquireQuantumMemory(i64 noundef %826, i64 noundef 40) #27
  %828 = icmp eq ptr %827, null
  br i1 %828, label %1074, label %829

829:                                              ; preds = %824
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %827, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !203
  %830 = tail call double @ExpandAffine(ptr noundef nonnull %788) #24
  %831 = load ptr, ptr %790, align 8, !tbaa !100
  %832 = load double, ptr %831, align 8, !tbaa !87
  %833 = fadd double %832, -5.000000e-01
  %834 = fmul double %830, %833
  %835 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 18
  %836 = load double, ptr %835, align 8, !tbaa !91
  %837 = fcmp une double %836, 0.000000e+00
  %838 = fmul double %830, %836
  %839 = select i1 %837, double %838, double 0.000000e+00
  %840 = fcmp ogt double %839, 0.000000e+00
  br i1 %840, label %841, label %876

841:                                              ; preds = %829
  %842 = load double, ptr %831, align 8, !tbaa !87
  %843 = fcmp ugt double %842, 0.000000e+00
  br i1 %843, label %848, label %876

844:                                              ; preds = %871
  %845 = getelementptr inbounds double, ptr %831, i64 %874
  %846 = load double, ptr %845, align 8, !tbaa !87
  %847 = fcmp ugt double %846, 0.000000e+00
  br i1 %847, label %848, label %876, !llvm.loop !264

848:                                              ; preds = %841, %844
  %849 = phi double [ %846, %844 ], [ %842, %841 ]
  %850 = phi double [ %872, %844 ], [ %839, %841 ]
  %851 = phi i64 [ 0, %844 ], [ 1, %841 ]
  %852 = phi i64 [ %874, %844 ], [ 0, %841 ]
  %853 = icmp eq i64 %852, 0
  %854 = select i1 %853, double -5.000000e-01, double 5.000000e-01
  %855 = fadd double %854, %849
  %856 = fmul double %830, %855
  %857 = fcmp ogt double %850, %856
  br i1 %857, label %858, label %865

858:                                              ; preds = %848
  %859 = fsub double %850, %856
  %860 = add nsw i64 %852, 1
  %861 = getelementptr inbounds double, ptr %831, i64 %860
  %862 = load double, ptr %861, align 8, !tbaa !87
  %863 = fadd double %862, 5.000000e-01
  %864 = fmul double %830, %863
  br label %871

865:                                              ; preds = %848
  %866 = fcmp olt double %850, %856
  br i1 %866, label %867, label %869

867:                                              ; preds = %865
  %868 = fsub double %856, %850
  br label %876

869:                                              ; preds = %865
  %870 = add nsw i64 %852, 1
  br label %871

871:                                              ; preds = %869, %858
  %872 = phi double [ %859, %858 ], [ 0.000000e+00, %869 ]
  %873 = phi double [ %864, %858 ], [ %856, %869 ]
  %874 = phi i64 [ %860, %858 ], [ %870, %869 ]
  %875 = fcmp ogt double %872, 0.000000e+00
  br i1 %875, label %844, label %876, !llvm.loop !264

876:                                              ; preds = %844, %871, %841, %829, %867
  %877 = phi i64 [ %851, %867 ], [ 1, %829 ], [ 1, %841 ], [ 0, %871 ], [ 0, %844 ]
  %878 = phi i64 [ %852, %867 ], [ 0, %829 ], [ 0, %841 ], [ %874, %871 ], [ %874, %844 ]
  %879 = phi double [ %868, %867 ], [ %834, %829 ], [ %834, %841 ], [ %873, %871 ], [ %873, %844 ]
  %880 = icmp ugt i64 %819, 1
  br i1 %880, label %881, label %985

881:                                              ; preds = %876
  %882 = getelementptr inbounds %struct._PointInfo, ptr %827, i64 0, i32 1
  %883 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 0, i32 1
  br label %884

884:                                              ; preds = %881, %981
  %885 = phi i64 [ %878, %881 ], [ %971, %981 ]
  %886 = phi i64 [ %877, %881 ], [ %982, %981 ]
  %887 = phi i64 [ 1, %881 ], [ %983, %981 ]
  %888 = phi double [ %879, %881 ], [ %974, %981 ]
  %889 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %887
  %890 = load double, ptr %889, align 8, !tbaa !197
  %891 = getelementptr %struct._PrimitiveInfo, ptr %889, i64 -1
  %892 = load double, ptr %891, align 8, !tbaa !197
  %893 = fsub double %890, %892
  %894 = getelementptr inbounds %struct._PointInfo, ptr %889, i64 0, i32 1
  %895 = load double, ptr %894, align 8, !tbaa !198
  %896 = getelementptr %struct._PrimitiveInfo, ptr %889, i64 -1, i32 0, i32 1
  %897 = load double, ptr %896, align 8, !tbaa !198
  %898 = fsub double %895, %897
  %899 = tail call double @hypot(double noundef %893, double noundef %898) #24
  %900 = fcmp oeq double %888, 0.000000e+00
  br i1 %900, label %901, label %914

901:                                              ; preds = %884
  %902 = add nsw i64 %885, 1
  %903 = load ptr, ptr %790, align 8, !tbaa !100
  %904 = getelementptr inbounds double, ptr %903, i64 %902
  %905 = load double, ptr %904, align 8, !tbaa !87
  %906 = fcmp oeq double %905, 0.000000e+00
  %907 = select i1 %906, i64 0, i64 %902
  %908 = getelementptr inbounds double, ptr %903, i64 %907
  %909 = load double, ptr %908, align 8, !tbaa !87
  %910 = icmp eq i64 %907, 0
  %911 = select i1 %910, double -5.000000e-01, double 5.000000e-01
  %912 = fadd double %909, %911
  %913 = fmul double %830, %912
  br label %914

914:                                              ; preds = %901, %884
  %915 = phi double [ %913, %901 ], [ %888, %884 ]
  %916 = phi i64 [ %907, %901 ], [ %885, %884 ]
  %917 = fadd double %915, 0.000000e+00
  %918 = fcmp ugt double %917, %899
  br i1 %918, label %968, label %919

919:                                              ; preds = %914, %952
  %920 = phi double [ %966, %952 ], [ %917, %914 ]
  %921 = phi i64 [ %959, %952 ], [ %916, %914 ]
  %922 = phi i64 [ %953, %952 ], [ %886, %914 ]
  %923 = phi double [ %965, %952 ], [ %915, %914 ]
  %924 = and i64 %921, 1
  %925 = icmp eq i64 %924, 0
  br i1 %925, label %935, label %926

926:                                              ; preds = %919
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %827, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !203
  %927 = load double, ptr %891, align 8, !tbaa !197
  %928 = fmul double %893, %920
  %929 = fdiv double %928, %899
  %930 = fadd double %929, %927
  store double %930, ptr %827, align 8, !tbaa !197
  %931 = load double, ptr %896, align 8, !tbaa !198
  %932 = fmul double %898, %920
  %933 = fdiv double %932, %899
  %934 = fadd double %933, %931
  store double %934, ptr %882, align 8, !tbaa !198
  br label %952

935:                                              ; preds = %919
  %936 = icmp slt i64 %922, %825
  br i1 %936, label %937, label %968

937:                                              ; preds = %935
  %938 = add nsw i64 %922, 1
  %939 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 %922
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %939, ptr noundef nonnull align 8 dereferenceable(40) %891, i64 40, i1 false), !tbaa.struct !203
  %940 = load double, ptr %891, align 8, !tbaa !197
  %941 = fmul double %893, %920
  %942 = fdiv double %941, %899
  %943 = fadd double %942, %940
  store double %943, ptr %939, align 8, !tbaa !197
  %944 = load double, ptr %896, align 8, !tbaa !198
  %945 = fmul double %898, %920
  %946 = fdiv double %945, %899
  %947 = fadd double %946, %944
  %948 = getelementptr inbounds %struct._PointInfo, ptr %939, i64 0, i32 1
  store double %947, ptr %948, align 8, !tbaa !198
  %949 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 %922, i32 1
  store i64 1, ptr %949, align 8, !tbaa !193
  store i64 %938, ptr %883, align 8, !tbaa !193
  %950 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 %938, i32 2
  store i32 0, ptr %950, align 8, !tbaa !191
  %951 = tail call fastcc i32 @DrawStrokePolygon(ptr noundef %0, ptr noundef %816, ptr noundef nonnull %827), !range !163
  br label %952

952:                                              ; preds = %937, %926
  %953 = phi i64 [ 1, %926 ], [ %938, %937 ]
  %954 = add nsw i64 %921, 1
  %955 = load ptr, ptr %790, align 8, !tbaa !100
  %956 = getelementptr inbounds double, ptr %955, i64 %954
  %957 = load double, ptr %956, align 8, !tbaa !87
  %958 = fcmp oeq double %957, 0.000000e+00
  %959 = select i1 %958, i64 0, i64 %954
  %960 = getelementptr inbounds double, ptr %955, i64 %959
  %961 = load double, ptr %960, align 8, !tbaa !87
  %962 = icmp eq i64 %959, 0
  %963 = select i1 %962, double -5.000000e-01, double 5.000000e-01
  %964 = fadd double %961, %963
  %965 = fmul double %830, %964
  %966 = fadd double %920, %965
  %967 = fcmp ugt double %966, %899
  br i1 %967, label %968, label %919, !llvm.loop !265

968:                                              ; preds = %952, %935, %914
  %969 = phi double [ %915, %914 ], [ %965, %952 ], [ %923, %935 ]
  %970 = phi i64 [ %886, %914 ], [ %953, %952 ], [ %922, %935 ]
  %971 = phi i64 [ %916, %914 ], [ %959, %952 ], [ %921, %935 ]
  %972 = phi double [ 0.000000e+00, %914 ], [ %920, %935 ], [ %920, %952 ]
  %973 = fsub double %899, %972
  %974 = fsub double %969, %973
  %975 = and i64 %971, 1
  %976 = icmp eq i64 %975, 0
  br i1 %976, label %977, label %981

977:                                              ; preds = %968
  %978 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 %970
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %978, ptr noundef nonnull align 8 dereferenceable(40) %889, i64 40, i1 false), !tbaa.struct !203
  %979 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 %970, i32 1
  store i64 1, ptr %979, align 8, !tbaa !193
  %980 = add nsw i64 %970, 1
  br label %981

981:                                              ; preds = %977, %968
  %982 = phi i64 [ %970, %968 ], [ %980, %977 ]
  %983 = add nuw nsw i64 %887, 1
  %984 = icmp eq i64 %983, %819
  br i1 %984, label %985, label %884, !llvm.loop !266

985:                                              ; preds = %981, %876
  %986 = phi double [ 0.000000e+00, %876 ], [ %972, %981 ]
  %987 = phi double [ 0.000000e+00, %876 ], [ %899, %981 ]
  %988 = phi i64 [ 1, %876 ], [ %983, %981 ]
  %989 = phi i64 [ %877, %876 ], [ %982, %981 ]
  %990 = phi i64 [ %878, %876 ], [ %971, %981 ]
  %991 = fcmp ugt double %986, %987
  br i1 %991, label %1011, label %992

992:                                              ; preds = %985
  %993 = and i64 %990, 1
  %994 = icmp eq i64 %993, 0
  %995 = icmp sgt i64 %989, 1
  %996 = select i1 %994, i1 %995, i1 false
  br i1 %996, label %997, label %1011

997:                                              ; preds = %992
  %998 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 %989
  %999 = getelementptr %struct._PrimitiveInfo, ptr %2, i64 %988
  %1000 = getelementptr %struct._PrimitiveInfo, ptr %999, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %998, ptr noundef nonnull align 8 dereferenceable(40) %1000, i64 40, i1 false), !tbaa.struct !203
  %1001 = load double, ptr %998, align 8, !tbaa !197
  %1002 = fadd double %1001, 1.000000e-15
  store double %1002, ptr %998, align 8, !tbaa !197
  %1003 = getelementptr inbounds %struct._PointInfo, ptr %998, i64 0, i32 1
  %1004 = load double, ptr %1003, align 8, !tbaa !198
  %1005 = fadd double %1004, 1.000000e-15
  store double %1005, ptr %1003, align 8, !tbaa !198
  %1006 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 %989, i32 1
  store i64 1, ptr %1006, align 8, !tbaa !193
  %1007 = add nuw nsw i64 %989, 1
  %1008 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 0, i32 1
  store i64 %1007, ptr %1008, align 8, !tbaa !193
  %1009 = getelementptr inbounds %struct._PrimitiveInfo, ptr %827, i64 %1007, i32 2
  store i32 0, ptr %1009, align 8, !tbaa !191
  %1010 = tail call fastcc i32 @DrawStrokePolygon(ptr noundef %0, ptr noundef %816, ptr noundef nonnull %827), !range !163
  br label %1011

1011:                                             ; preds = %997, %992, %985
  %1012 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %827) #24
  %1013 = tail call ptr @DestroyDrawInfo(ptr noundef %816)
  %1014 = load i32, ptr %18, align 8, !tbaa !113
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1074, label %1016

1016:                                             ; preds = %1011
  %1017 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1652, ptr noundef nonnull @.str.144) #24
  br label %1074

1018:                                             ; preds = %801, %796, %793, %787
  %1019 = tail call double @ExpandAffine(ptr noundef nonnull %788) #24
  %1020 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %1021 = load double, ptr %1020, align 8, !tbaa !56
  %1022 = fmul double %1019, %1021
  %1023 = fmul double %1022, 5.000000e-01
  %1024 = fcmp ogt double %1023, 1.000000e+00
  br i1 %1024, label %1025, label %1072

1025:                                             ; preds = %1018
  %1026 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6, i32 3
  %1027 = load i16, ptr %1026, align 2, !tbaa !176
  %1028 = icmp eq i16 %1027, -1
  br i1 %1028, label %1072, label %1029

1029:                                             ; preds = %1025, %1029
  %1030 = phi i64 [ %1034, %1029 ], [ 0, %1025 ]
  %1031 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %1030, i32 2
  %1032 = load i32, ptr %1031, align 8, !tbaa !191
  %1033 = icmp eq i32 %1032, 0
  %1034 = add nuw nsw i64 %1030, 1
  br i1 %1033, label %1035, label %1029, !llvm.loop !267

1035:                                             ; preds = %1029
  %1036 = getelementptr %struct._PrimitiveInfo, ptr %2, i64 %1030
  %1037 = getelementptr %struct._PrimitiveInfo, ptr %1036, i64 -1
  %1038 = load double, ptr %1037, align 8, !tbaa !197
  %1039 = load double, ptr %2, align 8, !tbaa !197
  %1040 = fcmp oeq double %1038, %1039
  br i1 %1040, label %1041, label %1046

1041:                                             ; preds = %1035
  %1042 = getelementptr %struct._PrimitiveInfo, ptr %1036, i64 -1, i32 0, i32 1
  %1043 = load double, ptr %1042, align 8, !tbaa !198
  %1044 = load double, ptr %93, align 8, !tbaa !198
  %1045 = fcmp oeq double %1043, %1044
  br label %1046

1046:                                             ; preds = %1041, %1035
  %1047 = phi i1 [ false, %1035 ], [ %1045, %1041 ]
  %1048 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 1
  %1049 = load i64, ptr %1048, align 8, !tbaa !193
  %1050 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 15
  %1051 = load i32, ptr %1050, align 4, !tbaa !59
  %1052 = icmp eq i32 %1051, 2
  %1053 = select i1 %1052, i1 true, i1 %1047
  br i1 %1053, label %1054, label %1058

1054:                                             ; preds = %1046
  %1055 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 16
  %1056 = load i32, ptr %1055, align 8, !tbaa !60
  %1057 = icmp eq i32 %1056, 2
  br i1 %1057, label %1062, label %1058

1058:                                             ; preds = %1046, %1054
  %1059 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %1049, i32 2
  %1060 = load i32, ptr %1059, align 8, !tbaa !191
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1064, label %1062

1062:                                             ; preds = %1058, %1054
  %1063 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !range !163
  br label %1074

1064:                                             ; preds = %1058
  %1065 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1)
  %1066 = getelementptr inbounds %struct._DrawInfo, ptr %1065, i64 0, i32 7
  store double 0.000000e+00, ptr %1066, align 8, !tbaa !56
  %1067 = getelementptr inbounds %struct._DrawInfo, ptr %1065, i64 0, i32 6, i32 3
  store i16 -1, ptr %1067, align 2, !tbaa !176
  %1068 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %1065, ptr noundef nonnull %2), !range !163
  %1069 = tail call ptr @DestroyDrawInfo(ptr noundef %1065)
  %1070 = tail call fastcc i32 @DrawStrokePolygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !range !163
  %1071 = and i32 %1070, %1068
  br label %1074

1072:                                             ; preds = %1025, %1018
  %1073 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !range !163
  br label %1074

1074:                                             ; preds = %364, %322, %206, %1011, %1016, %824, %1072, %1064, %1062, %238, %214, %406, %470, %488, %549, %299, %317, %675, %567, %201
  %1075 = phi i32 [ 1, %675 ], [ %568, %567 ], [ %407, %406 ], [ %492, %488 ], [ %410, %470 ], [ 1, %549 ], [ %321, %317 ], [ %243, %299 ], [ %202, %201 ], [ %240, %238 ], [ 1, %214 ], [ %1073, %1072 ], [ 1, %1062 ], [ %1071, %1064 ], [ %809, %824 ], [ %809, %1016 ], [ %809, %1011 ], [ 1, %206 ], [ 1, %322 ], [ 1, %364 ]
  %1076 = call ptr @DestroyCacheView(ptr noundef %98) #24
  %1077 = load i32, ptr %18, align 8, !tbaa !113
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1081, label %1079

1079:                                             ; preds = %1074
  %1080 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4639, ptr noundef nonnull @.str.102) #24
  br label %1081

1081:                                             ; preds = %1079, %1074
  %1082 = icmp ne i32 %1075, 0
  %1083 = zext i1 %1082 to i32
  ret i32 %1083
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DrawGradientImage(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3316, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #24
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8
  %12 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 2
  %13 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 2, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !268
  %15 = load double, ptr %12, align 8, !tbaa !269
  %16 = fsub double %14, %15
  %17 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 2, i32 3
  %18 = load double, ptr %17, align 8, !tbaa !270
  %19 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 2, i32 1
  %20 = load double, ptr %19, align 8, !tbaa !271
  %21 = fsub double %18, %20
  %22 = fmul double %21, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %22)
  %24 = tail call double @sqrt(double noundef %23) #24
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa.struct !84
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa.struct !272
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 1, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa.struct !273
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 1, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa.struct !274
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %3) #24
  %34 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %33) #24
  %35 = icmp slt i64 %32, %28
  br i1 %35, label %36, label %973

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %38 = getelementptr inbounds i8, ptr %3, i64 4
  %39 = getelementptr inbounds i8, ptr %3, i64 32
  %40 = getelementptr inbounds i8, ptr %3, i64 36
  %41 = getelementptr inbounds i8, ptr %3, i64 40
  %42 = getelementptr inbounds i8, ptr %3, i64 44
  %43 = getelementptr inbounds i8, ptr %3, i64 48
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 8
  %45 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 8, i32 1
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 5
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 9
  %48 = icmp slt i64 %30, %26
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %50 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 5
  %51 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 8
  %52 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 8, i32 1
  %53 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 9
  %54 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 9
  %55 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %56 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 4
  %57 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %58 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 9
  %59 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %60 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %61 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 8
  %62 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 8, i32 1
  %63 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 9
  %64 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %65 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 4
  %66 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %67 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %68 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %69 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 8
  %70 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 8, i32 1
  %71 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 9
  %72 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %73 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 4
  %74 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %75 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %76 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  br label %77

77:                                               ; preds = %36, %969
  %78 = phi i64 [ %32, %36 ], [ %971, %969 ]
  %79 = phi i32 [ 1, %36 ], [ %970, %969 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %969, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %37, align 8, !tbaa !123
  %83 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %78, i64 noundef %82, i64 noundef 1, ptr noundef nonnull %33) #28
  %84 = icmp eq ptr %83, null
  br i1 %84, label %969, label %85

85:                                               ; preds = %81
  %86 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %34) #24
  %87 = load i32, ptr %38, align 4
  %88 = load float, ptr %43, align 8
  %89 = load float, ptr %39, align 8, !tbaa.struct !150
  %90 = load float, ptr %40, align 4, !tbaa.struct !151
  %91 = load float, ptr %41, align 8, !tbaa.struct !152
  %92 = load float, ptr %42, align 4, !tbaa.struct !275
  %93 = load i32, ptr %11, align 8, !tbaa !276
  switch i32 %93, label %137 [
    i32 0, label %94
    i32 1, label %94
    i32 2, label %122
  ]

94:                                               ; preds = %85, %85
  %95 = load double, ptr %13, align 8, !tbaa !268
  %96 = load double, ptr %12, align 8, !tbaa !269
  %97 = fsub double %95, %96
  %98 = load double, ptr %17, align 8, !tbaa !270
  %99 = load double, ptr %19, align 8, !tbaa !271
  %100 = fsub double %98, %99
  %101 = fsub double 0.000000e+00, %96
  %102 = sitofp i64 %78 to double
  %103 = fsub double %102, %99
  %104 = fmul double %103, %103
  %105 = call double @llvm.fmuladd.f64(double %101, double %101, double %104)
  %106 = call double @sqrt(double noundef %105) #24
  %107 = fmul double %100, %100
  %108 = call double @llvm.fmuladd.f64(double %97, double %97, double %107)
  %109 = call double @sqrt(double noundef %108) #24
  %110 = fmul double %106, %109
  %111 = fcmp olt double %110, 0.000000e+00
  %112 = select i1 %111, double -1.000000e+00, double 1.000000e+00
  %113 = fmul double %110, %112
  %114 = fcmp ult double %113, 1.000000e-15
  %115 = fdiv double 1.000000e+00, %110
  %116 = fdiv double %112, 1.000000e-15
  %117 = select i1 %114, double %116, double %115
  %118 = fmul double %100, %103
  %119 = call double @llvm.fmuladd.f64(double %97, double %101, double %118)
  %120 = fmul double %119, %117
  %121 = fmul double %106, %120
  br label %137

122:                                              ; preds = %85
  %123 = load double, ptr %44, align 8, !tbaa !277
  %124 = fsub double 0.000000e+00, %123
  %125 = sitofp i64 %78 to double
  %126 = load double, ptr %45, align 8, !tbaa !278
  %127 = fsub double %125, %126
  %128 = fmul double %127, %127
  %129 = call double @llvm.fmuladd.f64(double %124, double %124, double %128)
  %130 = call double @sqrt(double noundef %129) #24
  %131 = load i32, ptr %46, align 8, !tbaa !279
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %137, label %133

133:                                              ; preds = %122
  %134 = load float, ptr %47, align 8, !tbaa !280
  %135 = fpext float %134 to double
  %136 = fdiv double %130, %135
  br label %137

137:                                              ; preds = %85, %94, %122, %133
  %138 = phi double [ %121, %94 ], [ %136, %133 ], [ %130, %122 ], [ 0.000000e+00, %85 ]
  br i1 %48, label %139, label %965

139:                                              ; preds = %137
  %140 = load i32, ptr %11, align 8, !tbaa !276
  %141 = icmp eq i32 %140, 2
  %142 = select i1 %141, double 1.000000e+00, double %24
  %143 = fdiv double %138, %142
  %144 = icmp ne ptr %86, null
  %145 = sitofp i64 %78 to double
  %146 = sitofp i64 %78 to double
  %147 = sitofp i64 %78 to double
  %148 = sitofp i64 %78 to double
  %149 = sitofp i64 %78 to double
  %150 = sitofp i64 %78 to double
  %151 = icmp eq ptr %86, null
  br label %152

152:                                              ; preds = %139, %961
  %153 = phi ptr [ %83, %139 ], [ %962, %961 ]
  %154 = phi i64 [ %30, %139 ], [ %963, %961 ]
  %155 = phi double [ %143, %139 ], [ %847, %961 ]
  %156 = phi i32 [ %87, %139 ], [ %912, %961 ]
  %157 = phi float [ %88, %139 ], [ %907, %961 ]
  %158 = phi i32 [ %87, %139 ], [ %846, %961 ]
  %159 = phi float [ %89, %139 ], [ %845, %961 ]
  %160 = phi float [ %90, %139 ], [ %844, %961 ]
  %161 = phi float [ %91, %139 ], [ %843, %961 ]
  %162 = phi float [ %92, %139 ], [ %842, %961 ]
  %163 = phi float [ %88, %139 ], [ %841, %961 ]
  %164 = getelementptr inbounds i16, ptr %86, i64 %154
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 2
  %166 = load i16, ptr %165, align 2, !tbaa !144
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 1
  %168 = load i16, ptr %167, align 2, !tbaa !145
  %169 = load i16, ptr %153, align 2, !tbaa !146
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 3
  %171 = load i16, ptr %170, align 2, !tbaa !147
  %172 = load i32, ptr %49, align 4, !tbaa !148
  %173 = icmp eq i32 %172, 12
  %174 = and i1 %144, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %152
  %176 = load i16, ptr %164, align 2, !tbaa !149
  %177 = uitofp i16 %176 to float
  br label %178

178:                                              ; preds = %152, %175
  %179 = phi float [ %177, %175 ], [ %157, %152 ]
  %180 = load i32, ptr %50, align 8, !tbaa !279
  switch i32 %180, label %840 [
    i32 0, label %181
    i32 1, label %181
    i32 2, label %383
    i32 3, label %590
  ]

181:                                              ; preds = %178, %178
  %182 = load double, ptr %12, align 8, !tbaa !269
  %183 = fadd double %182, -5.000000e-01
  %184 = call double @llvm.ceil.f64(double %183)
  %185 = fptosi double %184 to i64
  %186 = icmp eq i64 %154, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load double, ptr %19, align 8, !tbaa !271
  %189 = fadd double %188, -5.000000e-01
  %190 = call double @llvm.ceil.f64(double %189)
  %191 = fptosi double %190 to i64
  %192 = icmp eq i64 %78, %191
  br i1 %192, label %243, label %193

193:                                              ; preds = %187, %181
  %194 = load i32, ptr %11, align 8, !tbaa !276
  switch i32 %194, label %237 [
    i32 0, label %195
    i32 1, label %195
    i32 2, label %222
  ]

195:                                              ; preds = %193, %193
  %196 = load double, ptr %13, align 8, !tbaa !268
  %197 = fsub double %196, %182
  %198 = load double, ptr %17, align 8, !tbaa !270
  %199 = load double, ptr %19, align 8, !tbaa !271
  %200 = fsub double %198, %199
  %201 = sitofp i64 %154 to double
  %202 = fsub double %201, %182
  %203 = fsub double %150, %199
  %204 = fmul double %203, %203
  %205 = call double @llvm.fmuladd.f64(double %202, double %202, double %204)
  %206 = call double @sqrt(double noundef %205) #24
  %207 = fmul double %200, %200
  %208 = call double @llvm.fmuladd.f64(double %197, double %197, double %207)
  %209 = call double @sqrt(double noundef %208) #24
  %210 = fmul double %206, %209
  %211 = fcmp olt double %210, 0.000000e+00
  %212 = select i1 %211, double -1.000000e+00, double 1.000000e+00
  %213 = fmul double %210, %212
  %214 = fcmp ult double %213, 1.000000e-15
  %215 = fdiv double 1.000000e+00, %210
  %216 = fdiv double %212, 1.000000e-15
  %217 = select i1 %214, double %216, double %215
  %218 = fmul double %200, %203
  %219 = call double @llvm.fmuladd.f64(double %197, double %202, double %218)
  %220 = fmul double %219, %217
  %221 = fmul double %206, %220
  br label %237

222:                                              ; preds = %193
  %223 = sitofp i64 %154 to double
  %224 = load double, ptr %69, align 8, !tbaa !277
  %225 = fsub double %223, %224
  %226 = load double, ptr %70, align 8, !tbaa !278
  %227 = fsub double %149, %226
  %228 = fmul double %227, %227
  %229 = call double @llvm.fmuladd.f64(double %225, double %225, double %228)
  %230 = call double @sqrt(double noundef %229) #24
  %231 = load i32, ptr %50, align 8, !tbaa !279
  %232 = icmp eq i32 %231, 3
  br i1 %232, label %237, label %233

233:                                              ; preds = %222
  %234 = load float, ptr %71, align 8, !tbaa !280
  %235 = fpext float %234 to double
  %236 = fdiv double %230, %235
  br label %237

237:                                              ; preds = %193, %195, %222, %233
  %238 = phi double [ %221, %195 ], [ %236, %233 ], [ %230, %222 ], [ 0.000000e+00, %193 ]
  %239 = load i32, ptr %11, align 8, !tbaa !276
  %240 = icmp eq i32 %239, 2
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = fdiv double %238, %24
  br label %243

243:                                              ; preds = %237, %241, %187
  %244 = phi double [ %242, %241 ], [ %238, %237 ], [ %155, %187 ]
  %245 = load i64, ptr %73, align 8, !tbaa !281
  %246 = icmp sgt i64 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %243
  %248 = load ptr, ptr %72, align 8, !tbaa !282
  br label %249

249:                                              ; preds = %247, %255
  %250 = phi i64 [ 0, %247 ], [ %256, %255 ]
  %251 = getelementptr inbounds %struct._StopInfo, ptr %248, i64 %250, i32 1
  %252 = load float, ptr %251, align 8, !tbaa !283
  %253 = fpext float %252 to double
  %254 = fcmp olt double %244, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %249
  %256 = add nuw nsw i64 %250, 1
  %257 = icmp eq i64 %256, %245
  br i1 %257, label %258, label %249, !llvm.loop !285

258:                                              ; preds = %255, %249, %243
  %259 = phi i64 [ 0, %243 ], [ %245, %255 ], [ %250, %249 ]
  %260 = fcmp olt double %244, 0.000000e+00
  %261 = icmp eq i64 %259, 0
  %262 = or i1 %260, %261
  br i1 %262, label %263, label %277

263:                                              ; preds = %258
  %264 = load ptr, ptr %76, align 8, !tbaa !282
  %265 = getelementptr inbounds i8, ptr %264, i64 4
  %266 = load i32, ptr %265, align 4, !tbaa.struct !143
  %267 = getelementptr inbounds i8, ptr %264, i64 32
  %268 = load float, ptr %267, align 8, !tbaa.struct !150
  %269 = getelementptr inbounds i8, ptr %264, i64 36
  %270 = load float, ptr %269, align 4, !tbaa.struct !151
  %271 = getelementptr inbounds i8, ptr %264, i64 40
  %272 = load float, ptr %271, align 8, !tbaa.struct !152
  %273 = getelementptr inbounds i8, ptr %264, i64 44
  %274 = load float, ptr %273, align 4, !tbaa.struct !275
  %275 = getelementptr inbounds i8, ptr %264, i64 48
  %276 = load float, ptr %275, align 8, !tbaa.struct !142
  br label %840

277:                                              ; preds = %258
  %278 = fcmp ogt double %244, 1.000000e+00
  %279 = icmp eq i64 %259, %245
  %280 = or i1 %278, %279
  br i1 %280, label %281, label %296

281:                                              ; preds = %277
  %282 = load ptr, ptr %75, align 8, !tbaa !282
  %283 = getelementptr %struct._StopInfo, ptr %282, i64 %245
  %284 = getelementptr %struct._StopInfo, ptr %283, i64 -1, i32 0, i32 1
  %285 = load i32, ptr %284, align 4, !tbaa.struct !143
  %286 = getelementptr %struct._StopInfo, ptr %283, i64 -1, i32 0, i32 5
  %287 = load float, ptr %286, align 8, !tbaa.struct !150
  %288 = getelementptr %struct._StopInfo, ptr %283, i64 -1, i32 0, i32 6
  %289 = load float, ptr %288, align 4, !tbaa.struct !151
  %290 = getelementptr %struct._StopInfo, ptr %283, i64 -1, i32 0, i32 7
  %291 = load float, ptr %290, align 8, !tbaa.struct !152
  %292 = getelementptr %struct._StopInfo, ptr %283, i64 -1, i32 0, i32 8
  %293 = load float, ptr %292, align 4, !tbaa.struct !275
  %294 = getelementptr %struct._StopInfo, ptr %283, i64 -1, i32 0, i32 9
  %295 = load float, ptr %294, align 8, !tbaa.struct !142
  br label %840

296:                                              ; preds = %277
  %297 = load ptr, ptr %74, align 8, !tbaa !282
  %298 = getelementptr %struct._StopInfo, ptr %297, i64 %259
  %299 = getelementptr %struct._StopInfo, ptr %298, i64 -1, i32 1
  %300 = load float, ptr %299, align 8, !tbaa !283
  %301 = fpext float %300 to double
  %302 = fsub double %244, %301
  %303 = getelementptr inbounds %struct._StopInfo, ptr %297, i64 %259, i32 1
  %304 = load float, ptr %303, align 8, !tbaa !283
  %305 = fsub float %304, %300
  %306 = fpext float %305 to double
  %307 = fdiv double %302, %306
  %308 = fsub double 1.000000e+00, %307
  %309 = fptrunc double %308 to float
  %310 = fptrunc double %307 to float
  %311 = getelementptr %struct._StopInfo, ptr %298, i64 -1, i32 0, i32 8
  %312 = load float, ptr %311, align 4, !tbaa !286
  %313 = fsub float 6.553500e+04, %312
  %314 = fneg float %309
  %315 = call float @llvm.fmuladd.f32(float %314, float %313, float 6.553500e+04)
  %316 = getelementptr inbounds %struct._MagickPixelPacket, ptr %298, i64 0, i32 8
  %317 = load float, ptr %316, align 4, !tbaa !286
  %318 = fsub float 6.553500e+04, %317
  %319 = fneg float %310
  %320 = call float @llvm.fmuladd.f32(float %319, float %318, float 6.553500e+04)
  %321 = fpext float %315 to double
  %322 = call double @llvm.fmuladd.f64(double %321, double 0xBEF0001000100010, double 1.000000e+00)
  %323 = fptrunc double %322 to float
  %324 = fpext float %320 to double
  %325 = call double @llvm.fmuladd.f64(double %324, double 0xBEF0001000100010, double 1.000000e+00)
  %326 = fptrunc double %325 to float
  %327 = fadd float %326, %323
  %328 = fcmp olt float %327, 0.000000e+00
  %329 = fcmp ogt float %327, 1.000000e+00
  %330 = select i1 %329, float 1.000000e+00, float %327
  %331 = select i1 %328, float 0.000000e+00, float %330
  %332 = fpext float %331 to double
  %333 = fsub double 1.000000e+00, %332
  %334 = fmul double %333, 6.553500e+04
  %335 = fptrunc double %334 to float
  %336 = fcmp olt float %331, 0.000000e+00
  %337 = select i1 %336, double -1.000000e+00, double 1.000000e+00
  %338 = fmul double %337, %332
  %339 = fcmp ult double %338, 1.000000e-15
  %340 = fdiv double 1.000000e+00, %332
  %341 = fdiv double %337, 1.000000e-15
  %342 = select i1 %339, double %341, double %340
  %343 = getelementptr %struct._StopInfo, ptr %298, i64 -1, i32 0, i32 5
  %344 = load float, ptr %343, align 8, !tbaa !153
  %345 = getelementptr inbounds %struct._MagickPixelPacket, ptr %298, i64 0, i32 5
  %346 = load float, ptr %345, align 8, !tbaa !153
  %347 = fmul float %346, %326
  %348 = call float @llvm.fmuladd.f32(float %323, float %344, float %347)
  %349 = fpext float %348 to double
  %350 = fmul double %342, %349
  %351 = fptrunc double %350 to float
  %352 = getelementptr %struct._StopInfo, ptr %298, i64 -1, i32 0, i32 6
  %353 = load float, ptr %352, align 4, !tbaa !155
  %354 = getelementptr inbounds %struct._MagickPixelPacket, ptr %298, i64 0, i32 6
  %355 = load float, ptr %354, align 4, !tbaa !155
  %356 = fmul float %355, %326
  %357 = call float @llvm.fmuladd.f32(float %323, float %353, float %356)
  %358 = fpext float %357 to double
  %359 = fmul double %342, %358
  %360 = fptrunc double %359 to float
  %361 = getelementptr %struct._StopInfo, ptr %298, i64 -1, i32 0, i32 7
  %362 = load float, ptr %361, align 8, !tbaa !156
  %363 = getelementptr inbounds %struct._MagickPixelPacket, ptr %298, i64 0, i32 7
  %364 = load float, ptr %363, align 8, !tbaa !156
  %365 = fmul float %364, %326
  %366 = call float @llvm.fmuladd.f32(float %323, float %362, float %365)
  %367 = fpext float %366 to double
  %368 = fmul double %342, %367
  %369 = fptrunc double %368 to float
  %370 = getelementptr inbounds %struct._MagickPixelPacket, ptr %298, i64 0, i32 1
  %371 = load i32, ptr %370, align 4, !tbaa !287
  %372 = icmp eq i32 %371, 12
  br i1 %372, label %373, label %840

373:                                              ; preds = %296
  %374 = getelementptr %struct._StopInfo, ptr %298, i64 -1, i32 0, i32 9
  %375 = load float, ptr %374, align 8, !tbaa !157
  %376 = getelementptr inbounds %struct._MagickPixelPacket, ptr %298, i64 0, i32 9
  %377 = load float, ptr %376, align 8, !tbaa !157
  %378 = fmul float %377, %326
  %379 = call float @llvm.fmuladd.f32(float %323, float %375, float %378)
  %380 = fpext float %379 to double
  %381 = fmul double %342, %380
  %382 = fptrunc double %381 to float
  br label %840

383:                                              ; preds = %178
  %384 = load double, ptr %12, align 8, !tbaa !269
  %385 = fadd double %384, -5.000000e-01
  %386 = call double @llvm.ceil.f64(double %385)
  %387 = fptosi double %386 to i64
  %388 = icmp eq i64 %154, %387
  br i1 %388, label %389, label %395

389:                                              ; preds = %383
  %390 = load double, ptr %19, align 8, !tbaa !271
  %391 = fadd double %390, -5.000000e-01
  %392 = call double @llvm.ceil.f64(double %391)
  %393 = fptosi double %392 to i64
  %394 = icmp eq i64 %78, %393
  br i1 %394, label %445, label %395

395:                                              ; preds = %389, %383
  %396 = load i32, ptr %11, align 8, !tbaa !276
  switch i32 %396, label %439 [
    i32 0, label %397
    i32 1, label %397
    i32 2, label %424
  ]

397:                                              ; preds = %395, %395
  %398 = load double, ptr %13, align 8, !tbaa !268
  %399 = fsub double %398, %384
  %400 = load double, ptr %17, align 8, !tbaa !270
  %401 = load double, ptr %19, align 8, !tbaa !271
  %402 = fsub double %400, %401
  %403 = sitofp i64 %154 to double
  %404 = fsub double %403, %384
  %405 = fsub double %148, %401
  %406 = fmul double %405, %405
  %407 = call double @llvm.fmuladd.f64(double %404, double %404, double %406)
  %408 = call double @sqrt(double noundef %407) #24
  %409 = fmul double %402, %402
  %410 = call double @llvm.fmuladd.f64(double %399, double %399, double %409)
  %411 = call double @sqrt(double noundef %410) #24
  %412 = fmul double %408, %411
  %413 = fcmp olt double %412, 0.000000e+00
  %414 = select i1 %413, double -1.000000e+00, double 1.000000e+00
  %415 = fmul double %412, %414
  %416 = fcmp ult double %415, 1.000000e-15
  %417 = fdiv double 1.000000e+00, %412
  %418 = fdiv double %414, 1.000000e-15
  %419 = select i1 %416, double %418, double %417
  %420 = fmul double %402, %405
  %421 = call double @llvm.fmuladd.f64(double %399, double %404, double %420)
  %422 = fmul double %421, %419
  %423 = fmul double %408, %422
  br label %439

424:                                              ; preds = %395
  %425 = sitofp i64 %154 to double
  %426 = load double, ptr %61, align 8, !tbaa !277
  %427 = fsub double %425, %426
  %428 = load double, ptr %62, align 8, !tbaa !278
  %429 = fsub double %147, %428
  %430 = fmul double %429, %429
  %431 = call double @llvm.fmuladd.f64(double %427, double %427, double %430)
  %432 = call double @sqrt(double noundef %431) #24
  %433 = load i32, ptr %50, align 8, !tbaa !279
  %434 = icmp eq i32 %433, 3
  br i1 %434, label %439, label %435

435:                                              ; preds = %424
  %436 = load float, ptr %63, align 8, !tbaa !280
  %437 = fpext float %436 to double
  %438 = fdiv double %432, %437
  br label %439

439:                                              ; preds = %395, %397, %424, %435
  %440 = phi double [ %423, %397 ], [ %438, %435 ], [ %432, %424 ], [ 0.000000e+00, %395 ]
  %441 = load i32, ptr %11, align 8, !tbaa !276
  %442 = icmp eq i32 %441, 2
  br i1 %442, label %445, label %443

443:                                              ; preds = %439
  %444 = fdiv double %440, %24
  br label %445

445:                                              ; preds = %439, %443, %389
  %446 = phi double [ %444, %443 ], [ %440, %439 ], [ %155, %389 ]
  %447 = fcmp olt double %446, 0.000000e+00
  %448 = fneg double %446
  %449 = select i1 %447, double %448, double %446
  %450 = call double @fmod(double noundef %449, double noundef 2.000000e+00) #24
  %451 = fptosi double %450 to i64
  %452 = icmp eq i64 %451, 0
  %453 = call double @fmod(double noundef %449, double noundef 1.000000e+00) #24
  %454 = fsub double 1.000000e+00, %453
  %455 = select i1 %452, double %453, double %454
  %456 = load i64, ptr %65, align 8, !tbaa !281
  %457 = icmp sgt i64 %456, 0
  br i1 %457, label %458, label %469

458:                                              ; preds = %445
  %459 = load ptr, ptr %64, align 8, !tbaa !282
  br label %460

460:                                              ; preds = %458, %466
  %461 = phi i64 [ 0, %458 ], [ %467, %466 ]
  %462 = getelementptr inbounds %struct._StopInfo, ptr %459, i64 %461, i32 1
  %463 = load float, ptr %462, align 8, !tbaa !283
  %464 = fpext float %463 to double
  %465 = fcmp olt double %455, %464
  br i1 %465, label %469, label %466

466:                                              ; preds = %460
  %467 = add nuw nsw i64 %461, 1
  %468 = icmp eq i64 %467, %456
  br i1 %468, label %469, label %460, !llvm.loop !288

469:                                              ; preds = %466, %460, %445
  %470 = phi i64 [ 0, %445 ], [ %456, %466 ], [ %461, %460 ]
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %486

472:                                              ; preds = %469
  %473 = load ptr, ptr %68, align 8, !tbaa !282
  %474 = getelementptr inbounds i8, ptr %473, i64 4
  %475 = load i32, ptr %474, align 4, !tbaa.struct !143
  %476 = getelementptr inbounds i8, ptr %473, i64 32
  %477 = load float, ptr %476, align 8, !tbaa.struct !150
  %478 = getelementptr inbounds i8, ptr %473, i64 36
  %479 = load float, ptr %478, align 4, !tbaa.struct !151
  %480 = getelementptr inbounds i8, ptr %473, i64 40
  %481 = load float, ptr %480, align 8, !tbaa.struct !152
  %482 = getelementptr inbounds i8, ptr %473, i64 44
  %483 = load float, ptr %482, align 4, !tbaa.struct !275
  %484 = getelementptr inbounds i8, ptr %473, i64 48
  %485 = load float, ptr %484, align 8, !tbaa.struct !142
  br label %840

486:                                              ; preds = %469
  %487 = icmp eq i64 %470, %456
  br i1 %487, label %488, label %503

488:                                              ; preds = %486
  %489 = load ptr, ptr %67, align 8, !tbaa !282
  %490 = getelementptr %struct._StopInfo, ptr %489, i64 %456
  %491 = getelementptr %struct._StopInfo, ptr %490, i64 -1, i32 0, i32 1
  %492 = load i32, ptr %491, align 4, !tbaa.struct !143
  %493 = getelementptr %struct._StopInfo, ptr %490, i64 -1, i32 0, i32 5
  %494 = load float, ptr %493, align 8, !tbaa.struct !150
  %495 = getelementptr %struct._StopInfo, ptr %490, i64 -1, i32 0, i32 6
  %496 = load float, ptr %495, align 4, !tbaa.struct !151
  %497 = getelementptr %struct._StopInfo, ptr %490, i64 -1, i32 0, i32 7
  %498 = load float, ptr %497, align 8, !tbaa.struct !152
  %499 = getelementptr %struct._StopInfo, ptr %490, i64 -1, i32 0, i32 8
  %500 = load float, ptr %499, align 4, !tbaa.struct !275
  %501 = getelementptr %struct._StopInfo, ptr %490, i64 -1, i32 0, i32 9
  %502 = load float, ptr %501, align 8, !tbaa.struct !142
  br label %840

503:                                              ; preds = %486
  %504 = load ptr, ptr %66, align 8, !tbaa !282
  %505 = getelementptr %struct._StopInfo, ptr %504, i64 %470
  %506 = getelementptr %struct._StopInfo, ptr %505, i64 -1, i32 1
  %507 = load float, ptr %506, align 8, !tbaa !283
  %508 = fpext float %507 to double
  %509 = fsub double %455, %508
  %510 = getelementptr inbounds %struct._StopInfo, ptr %504, i64 %470, i32 1
  %511 = load float, ptr %510, align 8, !tbaa !283
  %512 = fsub float %511, %507
  %513 = fpext float %512 to double
  %514 = fdiv double %509, %513
  %515 = fsub double 1.000000e+00, %514
  %516 = fptrunc double %515 to float
  %517 = fptrunc double %514 to float
  %518 = getelementptr %struct._StopInfo, ptr %505, i64 -1, i32 0, i32 8
  %519 = load float, ptr %518, align 4, !tbaa !286
  %520 = fsub float 6.553500e+04, %519
  %521 = fneg float %516
  %522 = call float @llvm.fmuladd.f32(float %521, float %520, float 6.553500e+04)
  %523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %505, i64 0, i32 8
  %524 = load float, ptr %523, align 4, !tbaa !286
  %525 = fsub float 6.553500e+04, %524
  %526 = fneg float %517
  %527 = call float @llvm.fmuladd.f32(float %526, float %525, float 6.553500e+04)
  %528 = fpext float %522 to double
  %529 = call double @llvm.fmuladd.f64(double %528, double 0xBEF0001000100010, double 1.000000e+00)
  %530 = fptrunc double %529 to float
  %531 = fpext float %527 to double
  %532 = call double @llvm.fmuladd.f64(double %531, double 0xBEF0001000100010, double 1.000000e+00)
  %533 = fptrunc double %532 to float
  %534 = fadd float %533, %530
  %535 = fcmp olt float %534, 0.000000e+00
  %536 = fcmp ogt float %534, 1.000000e+00
  %537 = select i1 %536, float 1.000000e+00, float %534
  %538 = select i1 %535, float 0.000000e+00, float %537
  %539 = fpext float %538 to double
  %540 = fsub double 1.000000e+00, %539
  %541 = fmul double %540, 6.553500e+04
  %542 = fptrunc double %541 to float
  %543 = fcmp olt float %538, 0.000000e+00
  %544 = select i1 %543, double -1.000000e+00, double 1.000000e+00
  %545 = fmul double %544, %539
  %546 = fcmp ult double %545, 1.000000e-15
  %547 = fdiv double 1.000000e+00, %539
  %548 = fdiv double %544, 1.000000e-15
  %549 = select i1 %546, double %548, double %547
  %550 = getelementptr %struct._StopInfo, ptr %505, i64 -1, i32 0, i32 5
  %551 = load float, ptr %550, align 8, !tbaa !153
  %552 = getelementptr inbounds %struct._MagickPixelPacket, ptr %505, i64 0, i32 5
  %553 = load float, ptr %552, align 8, !tbaa !153
  %554 = fmul float %553, %533
  %555 = call float @llvm.fmuladd.f32(float %530, float %551, float %554)
  %556 = fpext float %555 to double
  %557 = fmul double %549, %556
  %558 = fptrunc double %557 to float
  %559 = getelementptr %struct._StopInfo, ptr %505, i64 -1, i32 0, i32 6
  %560 = load float, ptr %559, align 4, !tbaa !155
  %561 = getelementptr inbounds %struct._MagickPixelPacket, ptr %505, i64 0, i32 6
  %562 = load float, ptr %561, align 4, !tbaa !155
  %563 = fmul float %562, %533
  %564 = call float @llvm.fmuladd.f32(float %530, float %560, float %563)
  %565 = fpext float %564 to double
  %566 = fmul double %549, %565
  %567 = fptrunc double %566 to float
  %568 = getelementptr %struct._StopInfo, ptr %505, i64 -1, i32 0, i32 7
  %569 = load float, ptr %568, align 8, !tbaa !156
  %570 = getelementptr inbounds %struct._MagickPixelPacket, ptr %505, i64 0, i32 7
  %571 = load float, ptr %570, align 8, !tbaa !156
  %572 = fmul float %571, %533
  %573 = call float @llvm.fmuladd.f32(float %530, float %569, float %572)
  %574 = fpext float %573 to double
  %575 = fmul double %549, %574
  %576 = fptrunc double %575 to float
  %577 = getelementptr inbounds %struct._MagickPixelPacket, ptr %505, i64 0, i32 1
  %578 = load i32, ptr %577, align 4, !tbaa !287
  %579 = icmp eq i32 %578, 12
  br i1 %579, label %580, label %840

580:                                              ; preds = %503
  %581 = getelementptr %struct._StopInfo, ptr %505, i64 -1, i32 0, i32 9
  %582 = load float, ptr %581, align 8, !tbaa !157
  %583 = getelementptr inbounds %struct._MagickPixelPacket, ptr %505, i64 0, i32 9
  %584 = load float, ptr %583, align 8, !tbaa !157
  %585 = fmul float %584, %533
  %586 = call float @llvm.fmuladd.f32(float %530, float %582, float %585)
  %587 = fpext float %586 to double
  %588 = fmul double %549, %587
  %589 = fptrunc double %588 to float
  br label %840

590:                                              ; preds = %178
  %591 = load double, ptr %12, align 8, !tbaa !269
  %592 = fadd double %591, -5.000000e-01
  %593 = call double @llvm.ceil.f64(double %592)
  %594 = fptosi double %593 to i64
  %595 = icmp eq i64 %154, %594
  br i1 %595, label %596, label %602

596:                                              ; preds = %590
  %597 = load double, ptr %19, align 8, !tbaa !271
  %598 = fadd double %597, -5.000000e-01
  %599 = call double @llvm.ceil.f64(double %598)
  %600 = fptosi double %599 to i64
  %601 = icmp eq i64 %78, %600
  br i1 %601, label %686, label %602

602:                                              ; preds = %596, %590
  %603 = load i32, ptr %11, align 8, !tbaa !276
  switch i32 %603, label %646 [
    i32 0, label %604
    i32 1, label %604
    i32 2, label %631
  ]

604:                                              ; preds = %602, %602
  %605 = load double, ptr %13, align 8, !tbaa !268
  %606 = fsub double %605, %591
  %607 = load double, ptr %17, align 8, !tbaa !270
  %608 = load double, ptr %19, align 8, !tbaa !271
  %609 = fsub double %607, %608
  %610 = sitofp i64 %154 to double
  %611 = fsub double %610, %591
  %612 = fsub double %146, %608
  %613 = fmul double %612, %612
  %614 = call double @llvm.fmuladd.f64(double %611, double %611, double %613)
  %615 = call double @sqrt(double noundef %614) #24
  %616 = fmul double %609, %609
  %617 = call double @llvm.fmuladd.f64(double %606, double %606, double %616)
  %618 = call double @sqrt(double noundef %617) #24
  %619 = fmul double %615, %618
  %620 = fcmp olt double %619, 0.000000e+00
  %621 = select i1 %620, double -1.000000e+00, double 1.000000e+00
  %622 = fmul double %619, %621
  %623 = fcmp ult double %622, 1.000000e-15
  %624 = fdiv double 1.000000e+00, %619
  %625 = fdiv double %621, 1.000000e-15
  %626 = select i1 %623, double %625, double %624
  %627 = fmul double %609, %612
  %628 = call double @llvm.fmuladd.f64(double %606, double %611, double %627)
  %629 = fmul double %628, %626
  %630 = fmul double %615, %629
  br label %646

631:                                              ; preds = %602
  %632 = sitofp i64 %154 to double
  %633 = load double, ptr %51, align 8, !tbaa !277
  %634 = fsub double %632, %633
  %635 = load double, ptr %52, align 8, !tbaa !278
  %636 = fsub double %145, %635
  %637 = fmul double %636, %636
  %638 = call double @llvm.fmuladd.f64(double %634, double %634, double %637)
  %639 = call double @sqrt(double noundef %638) #24
  %640 = load i32, ptr %50, align 8, !tbaa !279
  %641 = icmp eq i32 %640, 3
  br i1 %641, label %646, label %642

642:                                              ; preds = %631
  %643 = load float, ptr %53, align 8, !tbaa !280
  %644 = fpext float %643 to double
  %645 = fdiv double %639, %644
  br label %646

646:                                              ; preds = %602, %604, %631, %642
  %647 = phi double [ %630, %604 ], [ %645, %642 ], [ %639, %631 ], [ 0.000000e+00, %602 ]
  %648 = load i32, ptr %11, align 8, !tbaa !276
  %649 = icmp eq i32 %648, 1
  br i1 %649, label %650, label %666

650:                                              ; preds = %646
  %651 = call double @fmod(double noundef %647, double noundef %24) #24
  %652 = fcmp olt double %651, 0.000000e+00
  br i1 %652, label %653, label %657

653:                                              ; preds = %650
  %654 = fneg double %651
  %655 = call double @fmod(double noundef %654, double noundef %24) #24
  %656 = fsub double %24, %655
  br label %659

657:                                              ; preds = %650
  %658 = call double @fmod(double noundef %647, double noundef %24) #24
  br label %659

659:                                              ; preds = %657, %653
  %660 = phi double [ %656, %653 ], [ %658, %657 ]
  %661 = fcmp olt double %660, %24
  %662 = fadd double %660, 1.000000e+00
  %663 = fcmp ogt double %662, %24
  %664 = and i1 %661, %663
  %665 = fdiv double %660, %24
  br label %686

666:                                              ; preds = %646
  %667 = load float, ptr %54, align 8, !tbaa !280
  %668 = fpext float %667 to double
  %669 = call double @fmod(double noundef %647, double noundef %668) #24
  %670 = fcmp olt double %669, 0.000000e+00
  %671 = load float, ptr %54, align 8, !tbaa !280
  %672 = fpext float %671 to double
  br i1 %670, label %673, label %677

673:                                              ; preds = %666
  %674 = fneg double %669
  %675 = call double @fmod(double noundef %674, double noundef %672) #24
  %676 = fsub double %672, %675
  br label %679

677:                                              ; preds = %666
  %678 = call double @fmod(double noundef %647, double noundef %672) #24
  br label %679

679:                                              ; preds = %677, %673
  %680 = phi double [ %676, %673 ], [ %678, %677 ]
  %681 = fadd double %680, 1.000000e+00
  %682 = load float, ptr %54, align 8, !tbaa !280
  %683 = fpext float %682 to double
  %684 = fcmp ogt double %681, %683
  %685 = fdiv double %680, %683
  br label %686

686:                                              ; preds = %659, %679, %596
  %687 = phi double [ %665, %659 ], [ %685, %679 ], [ %155, %596 ]
  %688 = phi double [ %660, %659 ], [ %680, %679 ], [ 0.000000e+00, %596 ]
  %689 = phi i1 [ %664, %659 ], [ %684, %679 ], [ false, %596 ]
  %690 = load i64, ptr %56, align 8, !tbaa !281
  %691 = icmp sgt i64 %690, 0
  br i1 %691, label %692, label %703

692:                                              ; preds = %686
  %693 = load ptr, ptr %55, align 8, !tbaa !282
  br label %694

694:                                              ; preds = %692, %700
  %695 = phi i64 [ 0, %692 ], [ %701, %700 ]
  %696 = getelementptr inbounds %struct._StopInfo, ptr %693, i64 %695, i32 1
  %697 = load float, ptr %696, align 8, !tbaa !283
  %698 = fpext float %697 to double
  %699 = fcmp olt double %687, %698
  br i1 %699, label %703, label %700

700:                                              ; preds = %694
  %701 = add nuw nsw i64 %695, 1
  %702 = icmp eq i64 %701, %690
  br i1 %702, label %703, label %694, !llvm.loop !289

703:                                              ; preds = %700, %694, %686
  %704 = phi i64 [ 0, %686 ], [ %690, %700 ], [ %695, %694 ]
  %705 = icmp eq i64 %704, 0
  br i1 %705, label %706, label %720

706:                                              ; preds = %703
  %707 = load ptr, ptr %60, align 8, !tbaa !282
  %708 = getelementptr inbounds i8, ptr %707, i64 4
  %709 = load i32, ptr %708, align 4, !tbaa.struct !143
  %710 = getelementptr inbounds i8, ptr %707, i64 32
  %711 = load float, ptr %710, align 8, !tbaa.struct !150
  %712 = getelementptr inbounds i8, ptr %707, i64 36
  %713 = load float, ptr %712, align 4, !tbaa.struct !151
  %714 = getelementptr inbounds i8, ptr %707, i64 40
  %715 = load float, ptr %714, align 8, !tbaa.struct !152
  %716 = getelementptr inbounds i8, ptr %707, i64 44
  %717 = load float, ptr %716, align 4, !tbaa.struct !275
  %718 = getelementptr inbounds i8, ptr %707, i64 48
  %719 = load float, ptr %718, align 8, !tbaa.struct !142
  br label %840

720:                                              ; preds = %703
  %721 = icmp eq i64 %704, %690
  br i1 %721, label %722, label %737

722:                                              ; preds = %720
  %723 = load ptr, ptr %59, align 8, !tbaa !282
  %724 = getelementptr %struct._StopInfo, ptr %723, i64 %690
  %725 = getelementptr %struct._StopInfo, ptr %724, i64 -1, i32 0, i32 1
  %726 = load i32, ptr %725, align 4, !tbaa.struct !143
  %727 = getelementptr %struct._StopInfo, ptr %724, i64 -1, i32 0, i32 5
  %728 = load float, ptr %727, align 8, !tbaa.struct !150
  %729 = getelementptr %struct._StopInfo, ptr %724, i64 -1, i32 0, i32 6
  %730 = load float, ptr %729, align 4, !tbaa.struct !151
  %731 = getelementptr %struct._StopInfo, ptr %724, i64 -1, i32 0, i32 7
  %732 = load float, ptr %731, align 8, !tbaa.struct !152
  %733 = getelementptr %struct._StopInfo, ptr %724, i64 -1, i32 0, i32 8
  %734 = load float, ptr %733, align 4, !tbaa.struct !275
  %735 = getelementptr %struct._StopInfo, ptr %724, i64 -1, i32 0, i32 9
  %736 = load float, ptr %735, align 8, !tbaa.struct !142
  br label %840

737:                                              ; preds = %720
  %738 = add nsw i64 %704, -1
  %739 = load ptr, ptr %57, align 8, !tbaa !282
  %740 = getelementptr inbounds %struct._StopInfo, ptr %739, i64 %738, i32 1
  %741 = load float, ptr %740, align 8, !tbaa !283
  %742 = fpext float %741 to double
  %743 = fsub double %687, %742
  %744 = getelementptr inbounds %struct._StopInfo, ptr %739, i64 %704, i32 1
  %745 = load float, ptr %744, align 8, !tbaa !283
  %746 = fsub float %745, %741
  %747 = fpext float %746 to double
  %748 = fdiv double %743, %747
  br i1 %689, label %749, label %759

749:                                              ; preds = %737
  %750 = load i32, ptr %11, align 8, !tbaa !276
  %751 = icmp eq i32 %750, 1
  br i1 %751, label %755, label %752

752:                                              ; preds = %749
  %753 = load float, ptr %58, align 8, !tbaa !280
  %754 = fpext float %753 to double
  br label %755

755:                                              ; preds = %749, %752
  %756 = phi double [ %754, %752 ], [ %24, %749 ]
  %757 = fsub double %756, %688
  %758 = add nsw i64 %690, -1
  br label %759

759:                                              ; preds = %755, %737
  %760 = phi double [ %757, %755 ], [ %748, %737 ]
  %761 = phi i64 [ 0, %755 ], [ %738, %737 ]
  %762 = phi i64 [ %758, %755 ], [ %704, %737 ]
  %763 = getelementptr inbounds %struct._StopInfo, ptr %739, i64 %761
  %764 = fsub double 1.000000e+00, %760
  %765 = fptrunc double %764 to float
  %766 = getelementptr inbounds %struct._StopInfo, ptr %739, i64 %762
  %767 = fptrunc double %760 to float
  %768 = getelementptr inbounds %struct._MagickPixelPacket, ptr %763, i64 0, i32 8
  %769 = load float, ptr %768, align 4, !tbaa !286
  %770 = fsub float 6.553500e+04, %769
  %771 = fneg float %765
  %772 = call float @llvm.fmuladd.f32(float %771, float %770, float 6.553500e+04)
  %773 = getelementptr inbounds %struct._MagickPixelPacket, ptr %766, i64 0, i32 8
  %774 = load float, ptr %773, align 4, !tbaa !286
  %775 = fsub float 6.553500e+04, %774
  %776 = fneg float %767
  %777 = call float @llvm.fmuladd.f32(float %776, float %775, float 6.553500e+04)
  %778 = fpext float %772 to double
  %779 = call double @llvm.fmuladd.f64(double %778, double 0xBEF0001000100010, double 1.000000e+00)
  %780 = fptrunc double %779 to float
  %781 = fpext float %777 to double
  %782 = call double @llvm.fmuladd.f64(double %781, double 0xBEF0001000100010, double 1.000000e+00)
  %783 = fptrunc double %782 to float
  %784 = fadd float %780, %783
  %785 = fcmp olt float %784, 0.000000e+00
  %786 = fcmp ogt float %784, 1.000000e+00
  %787 = select i1 %786, float 1.000000e+00, float %784
  %788 = select i1 %785, float 0.000000e+00, float %787
  %789 = fpext float %788 to double
  %790 = fsub double 1.000000e+00, %789
  %791 = fmul double %790, 6.553500e+04
  %792 = fptrunc double %791 to float
  %793 = fcmp olt float %788, 0.000000e+00
  %794 = select i1 %793, double -1.000000e+00, double 1.000000e+00
  %795 = fmul double %794, %789
  %796 = fcmp ult double %795, 1.000000e-15
  %797 = fdiv double 1.000000e+00, %789
  %798 = fdiv double %794, 1.000000e-15
  %799 = select i1 %796, double %798, double %797
  %800 = getelementptr inbounds %struct._MagickPixelPacket, ptr %763, i64 0, i32 5
  %801 = load float, ptr %800, align 8, !tbaa !153
  %802 = getelementptr inbounds %struct._MagickPixelPacket, ptr %766, i64 0, i32 5
  %803 = load float, ptr %802, align 8, !tbaa !153
  %804 = fmul float %803, %783
  %805 = call float @llvm.fmuladd.f32(float %780, float %801, float %804)
  %806 = fpext float %805 to double
  %807 = fmul double %799, %806
  %808 = fptrunc double %807 to float
  %809 = getelementptr inbounds %struct._MagickPixelPacket, ptr %763, i64 0, i32 6
  %810 = load float, ptr %809, align 4, !tbaa !155
  %811 = getelementptr inbounds %struct._MagickPixelPacket, ptr %766, i64 0, i32 6
  %812 = load float, ptr %811, align 4, !tbaa !155
  %813 = fmul float %812, %783
  %814 = call float @llvm.fmuladd.f32(float %780, float %810, float %813)
  %815 = fpext float %814 to double
  %816 = fmul double %799, %815
  %817 = fptrunc double %816 to float
  %818 = getelementptr inbounds %struct._MagickPixelPacket, ptr %763, i64 0, i32 7
  %819 = load float, ptr %818, align 8, !tbaa !156
  %820 = getelementptr inbounds %struct._MagickPixelPacket, ptr %766, i64 0, i32 7
  %821 = load float, ptr %820, align 8, !tbaa !156
  %822 = fmul float %821, %783
  %823 = call float @llvm.fmuladd.f32(float %780, float %819, float %822)
  %824 = fpext float %823 to double
  %825 = fmul double %799, %824
  %826 = fptrunc double %825 to float
  %827 = getelementptr inbounds %struct._MagickPixelPacket, ptr %766, i64 0, i32 1
  %828 = load i32, ptr %827, align 4, !tbaa !287
  %829 = icmp eq i32 %828, 12
  br i1 %829, label %830, label %840

830:                                              ; preds = %759
  %831 = getelementptr inbounds %struct._MagickPixelPacket, ptr %763, i64 0, i32 9
  %832 = load float, ptr %831, align 8, !tbaa !157
  %833 = getelementptr inbounds %struct._MagickPixelPacket, ptr %766, i64 0, i32 9
  %834 = load float, ptr %833, align 8, !tbaa !157
  %835 = fmul float %834, %783
  %836 = call float @llvm.fmuladd.f32(float %780, float %832, float %835)
  %837 = fpext float %836 to double
  %838 = fmul double %799, %837
  %839 = fptrunc double %838 to float
  br label %840

840:                                              ; preds = %830, %759, %580, %503, %373, %296, %706, %722, %472, %488, %263, %281, %178
  %841 = phi float [ %163, %178 ], [ %719, %706 ], [ %736, %722 ], [ %485, %472 ], [ %502, %488 ], [ %276, %263 ], [ %295, %281 ], [ %163, %296 ], [ %382, %373 ], [ %163, %503 ], [ %589, %580 ], [ %163, %759 ], [ %839, %830 ]
  %842 = phi float [ %162, %178 ], [ %717, %706 ], [ %734, %722 ], [ %483, %472 ], [ %500, %488 ], [ %274, %263 ], [ %293, %281 ], [ %335, %296 ], [ %335, %373 ], [ %542, %503 ], [ %542, %580 ], [ %792, %759 ], [ %792, %830 ]
  %843 = phi float [ %161, %178 ], [ %715, %706 ], [ %732, %722 ], [ %481, %472 ], [ %498, %488 ], [ %272, %263 ], [ %291, %281 ], [ %369, %296 ], [ %369, %373 ], [ %576, %503 ], [ %576, %580 ], [ %826, %759 ], [ %826, %830 ]
  %844 = phi float [ %160, %178 ], [ %713, %706 ], [ %730, %722 ], [ %479, %472 ], [ %496, %488 ], [ %270, %263 ], [ %289, %281 ], [ %360, %296 ], [ %360, %373 ], [ %567, %503 ], [ %567, %580 ], [ %817, %759 ], [ %817, %830 ]
  %845 = phi float [ %159, %178 ], [ %711, %706 ], [ %728, %722 ], [ %477, %472 ], [ %494, %488 ], [ %268, %263 ], [ %287, %281 ], [ %351, %296 ], [ %351, %373 ], [ %558, %503 ], [ %558, %580 ], [ %808, %759 ], [ %808, %830 ]
  %846 = phi i32 [ %158, %178 ], [ %709, %706 ], [ %726, %722 ], [ %475, %472 ], [ %492, %488 ], [ %266, %263 ], [ %285, %281 ], [ %158, %296 ], [ %158, %373 ], [ %158, %503 ], [ %158, %580 ], [ %158, %759 ], [ %158, %830 ]
  %847 = phi double [ %155, %178 ], [ %687, %706 ], [ %687, %722 ], [ %455, %472 ], [ %455, %488 ], [ %244, %263 ], [ %244, %281 ], [ %244, %296 ], [ %244, %373 ], [ %455, %503 ], [ %455, %580 ], [ %687, %759 ], [ %687, %830 ]
  %848 = fcmp oeq float %842, 0.000000e+00
  br i1 %848, label %906, label %849

849:                                              ; preds = %840
  %850 = fpext float %842 to double
  %851 = uitofp i16 %171 to double
  %852 = fmul double %850, 0xBDF0002000300040
  %853 = call double @llvm.fmuladd.f64(double %852, double %851, double 1.000000e+00)
  %854 = fcmp olt double %853, 0.000000e+00
  %855 = select i1 %854, double 0.000000e+00, double %853
  %856 = fsub double 1.000000e+00, %855
  %857 = fmul double %856, 6.553500e+04
  %858 = fptrunc double %857 to float
  %859 = fcmp ult double %855, 1.000000e-15
  %860 = fdiv double 1.000000e+00, %855
  %861 = select i1 %859, double 0x430C6BF52633FFFF, double %860
  %862 = call double @llvm.fmuladd.f64(double %850, double 0xBEF0001000100010, double 1.000000e+00)
  %863 = fpext float %845 to double
  %864 = call double @llvm.fmuladd.f64(double %851, double 0xBEF0001000100010, double 1.000000e+00)
  %865 = uitofp i16 %166 to double
  %866 = fmul double %864, %865
  %867 = fmul double %866, 0x3EF0001000100010
  %868 = fmul double %867, %850
  %869 = call double @llvm.fmuladd.f64(double %862, double %863, double %868)
  %870 = fptrunc double %869 to float
  %871 = fpext float %870 to double
  %872 = fmul double %861, %871
  %873 = fptrunc double %872 to float
  %874 = fpext float %844 to double
  %875 = uitofp i16 %168 to double
  %876 = fmul double %864, %875
  %877 = fmul double %876, 0x3EF0001000100010
  %878 = fmul double %877, %850
  %879 = call double @llvm.fmuladd.f64(double %862, double %874, double %878)
  %880 = fptrunc double %879 to float
  %881 = fpext float %880 to double
  %882 = fmul double %861, %881
  %883 = fptrunc double %882 to float
  %884 = fpext float %843 to double
  %885 = uitofp i16 %169 to double
  %886 = fmul double %864, %885
  %887 = fmul double %886, 0x3EF0001000100010
  %888 = fmul double %887, %850
  %889 = call double @llvm.fmuladd.f64(double %862, double %884, double %888)
  %890 = fptrunc double %889 to float
  %891 = fpext float %890 to double
  %892 = fmul double %861, %891
  %893 = fptrunc double %892 to float
  %894 = icmp eq i32 %156, 12
  br i1 %894, label %895, label %906

895:                                              ; preds = %849
  %896 = fpext float %841 to double
  %897 = fpext float %179 to double
  %898 = fmul double %864, %897
  %899 = fmul double %898, 0x3EF0001000100010
  %900 = fmul double %899, %850
  %901 = call double @llvm.fmuladd.f64(double %862, double %896, double %900)
  %902 = fptrunc double %901 to float
  %903 = fpext float %902 to double
  %904 = fmul double %861, %903
  %905 = fptrunc double %904 to float
  br label %906

906:                                              ; preds = %840, %849, %895
  %907 = phi float [ %905, %895 ], [ %179, %849 ], [ %841, %840 ]
  %908 = phi float [ %858, %895 ], [ %858, %849 ], [ %842, %840 ]
  %909 = phi float [ %893, %895 ], [ %893, %849 ], [ %843, %840 ]
  %910 = phi float [ %883, %895 ], [ %883, %849 ], [ %844, %840 ]
  %911 = phi float [ %873, %895 ], [ %873, %849 ], [ %845, %840 ]
  %912 = phi i32 [ %156, %895 ], [ %156, %849 ], [ %846, %840 ]
  %913 = fcmp ugt float %911, 0.000000e+00
  br i1 %913, label %914, label %919

914:                                              ; preds = %906
  %915 = fcmp ult float %911, 6.553500e+04
  br i1 %915, label %916, label %919

916:                                              ; preds = %914
  %917 = fadd float %911, 5.000000e-01
  %918 = fptoui float %917 to i16
  br label %919

919:                                              ; preds = %916, %914, %906
  %920 = phi i16 [ %918, %916 ], [ 0, %906 ], [ -1, %914 ]
  store i16 %920, ptr %165, align 2, !tbaa !144
  %921 = fcmp ugt float %910, 0.000000e+00
  br i1 %921, label %922, label %927

922:                                              ; preds = %919
  %923 = fcmp ult float %910, 6.553500e+04
  br i1 %923, label %924, label %927

924:                                              ; preds = %922
  %925 = fadd float %910, 5.000000e-01
  %926 = fptoui float %925 to i16
  br label %927

927:                                              ; preds = %924, %922, %919
  %928 = phi i16 [ %926, %924 ], [ 0, %919 ], [ -1, %922 ]
  store i16 %928, ptr %167, align 2, !tbaa !145
  %929 = fcmp ugt float %909, 0.000000e+00
  br i1 %929, label %930, label %935

930:                                              ; preds = %927
  %931 = fcmp ult float %909, 6.553500e+04
  br i1 %931, label %932, label %935

932:                                              ; preds = %930
  %933 = fadd float %909, 5.000000e-01
  %934 = fptoui float %933 to i16
  br label %935

935:                                              ; preds = %932, %930, %927
  %936 = phi i16 [ %934, %932 ], [ 0, %927 ], [ -1, %930 ]
  store i16 %936, ptr %153, align 2, !tbaa !146
  %937 = fcmp ugt float %908, 0.000000e+00
  br i1 %937, label %938, label %943

938:                                              ; preds = %935
  %939 = fcmp ult float %908, 6.553500e+04
  br i1 %939, label %940, label %943

940:                                              ; preds = %938
  %941 = fadd float %908, 5.000000e-01
  %942 = fptoui float %941 to i16
  br label %943

943:                                              ; preds = %940, %938, %935
  %944 = phi i16 [ %942, %940 ], [ 0, %935 ], [ -1, %938 ]
  store i16 %944, ptr %170, align 2, !tbaa !147
  %945 = load i32, ptr %49, align 4, !tbaa !148
  %946 = icmp eq i32 %945, 12
  br i1 %946, label %951, label %947

947:                                              ; preds = %943
  %948 = load i32, ptr %0, align 8, !tbaa !158
  %949 = icmp eq i32 %948, 2
  %950 = and i1 %144, %949
  br i1 %950, label %952, label %961

951:                                              ; preds = %943
  br i1 %151, label %961, label %952

952:                                              ; preds = %951, %947
  %953 = fcmp ugt float %907, 0.000000e+00
  br i1 %953, label %954, label %959

954:                                              ; preds = %952
  %955 = fcmp ult float %907, 6.553500e+04
  br i1 %955, label %956, label %959

956:                                              ; preds = %954
  %957 = fadd float %907, 5.000000e-01
  %958 = fptoui float %957 to i16
  br label %959

959:                                              ; preds = %956, %954, %952
  %960 = phi i16 [ %958, %956 ], [ 0, %952 ], [ -1, %954 ]
  store i16 %960, ptr %164, align 2, !tbaa !149
  br label %961

961:                                              ; preds = %947, %951, %959
  %962 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 1
  %963 = add nsw i64 %154, 1
  %964 = icmp eq i64 %963, %26
  br i1 %964, label %965, label %152, !llvm.loop !290

965:                                              ; preds = %961, %137
  %966 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %34, ptr noundef nonnull %33) #28
  %967 = icmp ne i32 %966, 0
  %968 = zext i1 %967 to i32
  br label %969

969:                                              ; preds = %81, %77, %965
  %970 = phi i32 [ %968, %965 ], [ 0, %77 ], [ 0, %81 ]
  %971 = add i64 %78, 1
  %972 = icmp eq i64 %971, %28
  br i1 %972, label %973, label %77, !llvm.loop !291

973:                                              ; preds = %969, %10
  %974 = phi i32 [ 1, %10 ], [ %970, %969 ]
  %975 = call ptr @DestroyCacheView(ptr noundef %34) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #24
  ret i32 %974
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IsColorSimilar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @GetOneVirtualMagickPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FloodfillPaintImage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @AnnotateImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ReadInlineImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageOpacity(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare double @ExpandAffine(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct._PointInfo, align 8
  %5 = alloca %struct._PointInfo, align 8
  %6 = alloca %struct._PointInfo, align 8
  %7 = alloca %struct._PointInfo, align 8
  %8 = alloca %struct._SegmentInfo, align 8
  %9 = alloca %struct._PixelPacket, align 8
  %10 = alloca %struct._PixelPacket, align 8
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !113
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3888, ptr noundef nonnull @.str.6, ptr noundef nonnull %15) #24
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !193
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %1188, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  %23 = tail call ptr @AcquireQuantumMemory(i64 noundef %22, i64 noundef 8) #27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %469, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  %27 = shl i64 %26, 3
  %28 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef %27) #24
  %29 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !191
  switch i32 %30, label %31 [
    i32 1, label %155
    i32 11, label %155
    i32 12, label %155
    i32 13, label %155
    i32 14, label %155
  ]

31:                                               ; preds = %25, %31
  %32 = phi i64 [ %36, %31 ], [ 0, %25 ]
  %33 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %32, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !191
  %35 = icmp eq i32 %34, 0
  %36 = add nuw nsw i64 %32, 1
  br i1 %35, label %37, label %31, !llvm.loop !292

37:                                               ; preds = %31
  %38 = shl nuw i64 %32, 1
  %39 = add i64 %38, 3
  %40 = tail call ptr @AcquireQuantumMemory(i64 noundef %39, i64 noundef 24) #27
  %41 = icmp eq ptr %40, null
  br i1 %41, label %155, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !191
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %121, label %46

46:                                               ; preds = %42, %114
  %47 = phi ptr [ %117, %114 ], [ %2, %42 ]
  %48 = phi i64 [ %68, %114 ], [ 0, %42 ]
  %49 = phi i64 [ %69, %114 ], [ 0, %42 ]
  %50 = phi i64 [ %115, %114 ], [ 0, %42 ]
  %51 = phi i64 [ %116, %114 ], [ 0, %42 ]
  %52 = phi double [ %91, %114 ], [ -1.000000e+00, %42 ]
  %53 = phi double [ %90, %114 ], [ -1.000000e+00, %42 ]
  %54 = phi double [ %66, %114 ], [ -1.000000e+00, %42 ]
  %55 = phi double [ %65, %114 ], [ -1.000000e+00, %42 ]
  %56 = icmp slt i64 %49, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %51, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !193
  %60 = load double, ptr %47, align 8, !tbaa.struct !131
  %61 = getelementptr inbounds i8, ptr %47, i64 8
  %62 = load double, ptr %61, align 8, !tbaa.struct !132
  br label %63

63:                                               ; preds = %57, %46
  %64 = phi i32 [ 0, %57 ], [ 3, %46 ]
  %65 = phi double [ %62, %57 ], [ %55, %46 ]
  %66 = phi double [ %60, %57 ], [ %54, %46 ]
  %67 = phi i64 [ %59, %57 ], [ %49, %46 ]
  %68 = phi i64 [ %50, %57 ], [ %48, %46 ]
  %69 = add nsw i64 %67, -1
  %70 = icmp eq i64 %51, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %63
  %72 = load double, ptr %47, align 8, !tbaa !197
  %73 = fsub double %52, %72
  %74 = tail call double @llvm.fabs.f64(double %73)
  %75 = fcmp ult double %74, 1.000000e-15
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct._PointInfo, ptr %47, i64 0, i32 1
  %78 = load double, ptr %77, align 8, !tbaa !198
  %79 = fsub double %53, %78
  %80 = tail call double @llvm.fabs.f64(double %79)
  %81 = fcmp ult double %80, 1.000000e-15
  br i1 %81, label %89, label %82

82:                                               ; preds = %76, %71, %63
  %83 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %50
  %84 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %50, i32 1
  store i32 %64, ptr %84, align 8, !tbaa !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(16) %47, i64 16, i1 false), !tbaa.struct !131
  %85 = load double, ptr %47, align 8, !tbaa.struct !131
  %86 = getelementptr inbounds i8, ptr %47, i64 8
  %87 = load double, ptr %86, align 8, !tbaa.struct !132
  %88 = add nsw i64 %50, 1
  br label %89

89:                                               ; preds = %82, %76
  %90 = phi double [ %87, %82 ], [ %53, %76 ]
  %91 = phi double [ %85, %82 ], [ %52, %76 ]
  %92 = phi i64 [ %88, %82 ], [ %50, %76 ]
  %93 = icmp sgt i64 %67, 1
  br i1 %93, label %114, label %94

94:                                               ; preds = %89
  %95 = load double, ptr %47, align 8, !tbaa !197
  %96 = fsub double %66, %95
  %97 = tail call double @llvm.fabs.f64(double %96)
  %98 = fcmp olt double %97, 1.000000e-15
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct._PointInfo, ptr %47, i64 0, i32 1
  %101 = load double, ptr %100, align 8, !tbaa !198
  %102 = fsub double %65, %101
  %103 = tail call double @llvm.fabs.f64(double %102)
  %104 = fcmp olt double %103, 1.000000e-15
  br i1 %104, label %114, label %105

105:                                              ; preds = %99, %94
  %106 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %68, i32 1
  store i32 1, ptr %106, align 8, !tbaa !293
  %107 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %92
  %108 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %92, i32 1
  store i32 2, ptr %108, align 8, !tbaa !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %107, ptr noundef nonnull align 8 dereferenceable(16) %47, i64 16, i1 false), !tbaa.struct !131
  %109 = add nsw i64 %92, 1
  %110 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %109
  %111 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %109, i32 1
  store i32 3, ptr %111, align 8, !tbaa !293
  store double %66, ptr %110, align 8, !tbaa.struct !131
  %112 = getelementptr inbounds i8, ptr %110, i64 8
  store double %65, ptr %112, align 8, !tbaa.struct !132
  %113 = add nsw i64 %92, 2
  br label %114

114:                                              ; preds = %105, %99, %89
  %115 = phi i64 [ %92, %89 ], [ %92, %99 ], [ %113, %105 ]
  %116 = add nuw nsw i64 %51, 1
  %117 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %116
  %118 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %116, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !191
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %46, !llvm.loop !295

121:                                              ; preds = %114, %42
  %122 = phi i64 [ 0, %42 ], [ %115, %114 ]
  %123 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %122
  %124 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 %122, i32 1
  store i32 4, ptr %124, align 8, !tbaa !293
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  %125 = tail call i32 @IsEventLogging() #24
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %155, label %127

127:                                              ; preds = %121
  %128 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 705, ptr noundef nonnull @.str.125) #24
  %129 = getelementptr inbounds %struct._PathInfo, ptr %40, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !293
  %131 = icmp eq i32 %130, 4
  br i1 %131, label %153, label %132

132:                                              ; preds = %127, %146
  %133 = phi i32 [ %151, %146 ], [ %130, %127 ]
  %134 = phi ptr [ %149, %146 ], [ %40, %127 ]
  %135 = load double, ptr %134, align 8, !tbaa !296
  %136 = getelementptr inbounds %struct._PointInfo, ptr %134, i64 0, i32 1
  %137 = load double, ptr %136, align 8, !tbaa !297
  %138 = icmp ult i32 %133, 3
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = icmp eq i32 %133, 3
  %141 = select i1 %140, ptr @.str.130, ptr @.str.112
  br label %146

142:                                              ; preds = %132
  %143 = zext nneg i32 %133 to i64
  %144 = shl i64 %143, 2
  %145 = call ptr @llvm.load.relative.i64(ptr @reltable.DrawPolygonPrimitive, i64 %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = phi ptr [ %141, %139 ], [ %145, %142 ]
  %148 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 707, ptr noundef nonnull @.str.126, double noundef %135, double noundef %137, ptr noundef nonnull %147) #24
  %149 = getelementptr inbounds %struct._PathInfo, ptr %134, i64 1
  %150 = getelementptr inbounds %struct._PathInfo, ptr %134, i64 1, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !293
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %132, !llvm.loop !298

153:                                              ; preds = %146, %127
  %154 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 712, ptr noundef nonnull @.str.131) #24
  br label %155

155:                                              ; preds = %153, %121, %37, %25, %25, %25, %25, %25
  %156 = phi ptr [ null, %25 ], [ null, %25 ], [ null, %25 ], [ null, %25 ], [ null, %25 ], [ null, %37 ], [ %40, %153 ], [ %40, %121 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %165, label %158

158:                                              ; preds = %155
  %159 = icmp sgt i64 %22, 0
  br i1 %159, label %160, label %467

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct._SegmentInfo, ptr %8, i64 0, i32 2
  %162 = getelementptr inbounds %struct._PointInfo, ptr %7, i64 0, i32 1
  %163 = getelementptr inbounds %struct._SegmentInfo, ptr %8, i64 0, i32 2
  %164 = getelementptr inbounds %struct._SegmentInfo, ptr %8, i64 0, i32 2
  br label %170

165:                                              ; preds = %155
  %166 = tail call fastcc ptr @DestroyPolygonThreadSet(ptr noundef nonnull %23)
  br label %469

167:                                              ; preds = %461
  %168 = add nuw nsw i64 %171, 1
  %169 = icmp eq i64 %168, %22
  br i1 %169, label %467, label %170, !llvm.loop !299

170:                                              ; preds = %160, %167
  %171 = phi i64 [ 0, %160 ], [ %168, %167 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #24
  %172 = call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #23
  %173 = icmp eq ptr %172, null
  br i1 %173, label %461, label %174

174:                                              ; preds = %170
  %175 = call dereferenceable_or_null(1280) ptr @AcquireQuantumMemory(i64 noundef 16, i64 noundef 80) #27
  store ptr %175, ptr %172, align 8, !tbaa !300
  %176 = icmp eq ptr %175, null
  br i1 %176, label %461, label %177

177:                                              ; preds = %174
  %178 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 16) #24
  %179 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 32) #24
  br label %180

180:                                              ; preds = %347, %177
  %181 = phi i64 [ 0, %177 ], [ %348, %347 ]
  %182 = phi ptr [ null, %177 ], [ %349, %347 ]
  %183 = phi i64 [ 0, %177 ], [ %355, %347 ]
  %184 = phi i64 [ 0, %177 ], [ %350, %347 ]
  %185 = phi i32 [ 0, %177 ], [ %351, %347 ]
  %186 = phi i64 [ 0, %177 ], [ %352, %347 ]
  %187 = phi i64 [ 16, %177 ], [ %353, %347 ]
  %188 = phi i64 [ 0, %177 ], [ %354, %347 ]
  %189 = getelementptr inbounds %struct._PathInfo, ptr %156, i64 %183
  %190 = getelementptr inbounds %struct._PathInfo, ptr %156, i64 %183, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !293
  switch i32 %191, label %253 [
    i32 4, label %356
    i32 0, label %192
    i32 1, label %192
    i32 2, label %192
  ]

192:                                              ; preds = %180, %180, %180
  %193 = icmp ne ptr %182, null
  %194 = icmp sgt i64 %184, 1
  %195 = select i1 %193, i1 %194, i1 false
  br i1 %195, label %196, label %238

196:                                              ; preds = %192
  %197 = icmp eq i64 %186, %187
  br i1 %197, label %198, label %203

198:                                              ; preds = %196
  %199 = shl i64 %187, 1
  %200 = load ptr, ptr %172, align 8, !tbaa !300
  %201 = call ptr @ResizeQuantumMemory(ptr noundef %200, i64 noundef %199, i64 noundef 80) #30
  store ptr %201, ptr %172, align 8, !tbaa !300
  %202 = icmp eq ptr %201, null
  br i1 %202, label %461, label %203

203:                                              ; preds = %198, %196
  %204 = phi i64 [ %199, %198 ], [ %187, %196 ]
  %205 = load ptr, ptr %172, align 8, !tbaa !300
  %206 = getelementptr inbounds %struct._EdgeInfo, ptr %205, i64 %186, i32 3
  store i64 %184, ptr %206, align 8, !tbaa !302
  %207 = getelementptr inbounds %struct._EdgeInfo, ptr %205, i64 %186, i32 1
  store double -1.000000e+00, ptr %207, align 8, !tbaa !304
  %208 = getelementptr inbounds %struct._EdgeInfo, ptr %205, i64 %186, i32 6
  store i64 0, ptr %208, align 8, !tbaa !305
  %209 = getelementptr inbounds %struct._EdgeInfo, ptr %205, i64 %186, i32 5
  store i32 %185, ptr %209, align 8, !tbaa !306
  %210 = icmp sgt i64 %181, 0
  %211 = zext i1 %210 to i64
  %212 = getelementptr inbounds %struct._EdgeInfo, ptr %205, i64 %186, i32 4
  store i64 %211, ptr %212, align 8, !tbaa !307
  %213 = icmp slt i64 %181, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %203
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %215 = lshr i64 %184, 1
  %216 = icmp ult i64 %184, 2
  br i1 %216, label %224, label %217

217:                                              ; preds = %214, %217
  %218 = phi i64 [ %220, %217 ], [ 0, %214 ]
  %219 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %219, i64 16, i1 false), !tbaa.struct !131
  %220 = add nuw nsw i64 %218, 1
  %221 = sub i64 %184, %220
  %222 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %219, ptr noundef nonnull align 8 dereferenceable(16) %222, i64 16, i1 false), !tbaa.struct !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %222, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !131
  %223 = icmp eq i64 %220, %215
  br i1 %223, label %224, label %217, !llvm.loop !308

224:                                              ; preds = %217, %214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  br label %225

225:                                              ; preds = %224, %203
  %226 = load ptr, ptr %172, align 8, !tbaa !300
  %227 = getelementptr inbounds %struct._EdgeInfo, ptr %226, i64 %186, i32 2
  store ptr %182, ptr %227, align 8, !tbaa !309
  %228 = getelementptr inbounds %struct._EdgeInfo, ptr %226, i64 %186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %228, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !110
  %229 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 0, i32 1
  %230 = load double, ptr %229, align 8, !tbaa !125
  %231 = load ptr, ptr %172, align 8, !tbaa !300
  %232 = getelementptr inbounds %struct._EdgeInfo, ptr %231, i64 %186, i32 0, i32 1
  store double %230, ptr %232, align 8, !tbaa !310
  %233 = add nsw i64 %184, -1
  %234 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %233, i32 1
  %235 = load double, ptr %234, align 8, !tbaa !125
  %236 = getelementptr inbounds %struct._EdgeInfo, ptr %231, i64 %186, i32 0, i32 3
  store double %235, ptr %236, align 8, !tbaa !311
  %237 = add i64 %186, 1
  br label %238

238:                                              ; preds = %225, %192
  %239 = phi ptr [ null, %225 ], [ %182, %192 ]
  %240 = phi i64 [ %237, %225 ], [ %186, %192 ]
  %241 = phi i64 [ %204, %225 ], [ %187, %192 ]
  %242 = icmp eq ptr %239, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = call dereferenceable_or_null(256) ptr @AcquireQuantumMemory(i64 noundef 16, i64 noundef 16) #27
  %245 = icmp eq ptr %244, null
  br i1 %245, label %461, label %246

246:                                              ; preds = %243, %238
  %247 = phi ptr [ %244, %243 ], [ %239, %238 ]
  %248 = phi i64 [ 16, %243 ], [ %188, %238 ]
  %249 = load i32, ptr %190, align 8, !tbaa !293
  %250 = icmp eq i32 %249, 2
  %251 = zext i1 %250 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %189, i64 16, i1 false), !tbaa.struct !131
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %247, ptr noundef nonnull align 8 dereferenceable(16) %189, i64 16, i1 false)
  %252 = load double, ptr %7, align 8, !tbaa !124
  store double %252, ptr %8, align 8, !tbaa !269
  store double %252, ptr %161, align 8, !tbaa !268
  br label %347

253:                                              ; preds = %180
  %254 = getelementptr inbounds %struct._PointInfo, ptr %189, i64 0, i32 1
  %255 = load double, ptr %254, align 8, !tbaa !297
  %256 = load double, ptr %162, align 8, !tbaa !125
  %257 = fcmp ogt double %255, %256
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = fcmp oeq double %255, %256
  br i1 %259, label %260, label %264

260:                                              ; preds = %258
  %261 = load double, ptr %189, align 8, !tbaa !296
  %262 = load double, ptr %7, align 8, !tbaa !124
  %263 = fcmp ogt double %261, %262
  br label %264

264:                                              ; preds = %260, %258, %253
  %265 = phi i1 [ true, %253 ], [ false, %258 ], [ %263, %260 ]
  %266 = select i1 %265, i64 1, i64 -1
  %267 = icmp eq ptr %182, null
  %268 = icmp eq i64 %181, 0
  %269 = select i1 %267, i1 true, i1 %268
  %270 = icmp eq i64 %181, %266
  %271 = select i1 %269, i1 true, i1 %270
  br i1 %271, label %319, label %272

272:                                              ; preds = %264
  %273 = add nsw i64 %184, -1
  %274 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %274, i64 16, i1 false), !tbaa.struct !131
  %275 = icmp eq i64 %186, %187
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  %277 = shl i64 %187, 1
  %278 = load ptr, ptr %172, align 8, !tbaa !300
  %279 = call ptr @ResizeQuantumMemory(ptr noundef %278, i64 noundef %277, i64 noundef 80) #30
  store ptr %279, ptr %172, align 8, !tbaa !300
  %280 = icmp eq ptr %279, null
  br i1 %280, label %461, label %281

281:                                              ; preds = %276, %272
  %282 = phi i64 [ %277, %276 ], [ %187, %272 ]
  %283 = load ptr, ptr %172, align 8, !tbaa !300
  %284 = getelementptr inbounds %struct._EdgeInfo, ptr %283, i64 %186, i32 3
  store i64 %184, ptr %284, align 8, !tbaa !302
  %285 = getelementptr inbounds %struct._EdgeInfo, ptr %283, i64 %186, i32 1
  store double -1.000000e+00, ptr %285, align 8, !tbaa !304
  %286 = getelementptr inbounds %struct._EdgeInfo, ptr %283, i64 %186, i32 6
  store i64 0, ptr %286, align 8, !tbaa !305
  %287 = getelementptr inbounds %struct._EdgeInfo, ptr %283, i64 %186, i32 5
  store i32 %185, ptr %287, align 8, !tbaa !306
  %288 = icmp sgt i64 %181, 0
  %289 = zext i1 %288 to i64
  %290 = getelementptr inbounds %struct._EdgeInfo, ptr %283, i64 %186, i32 4
  store i64 %289, ptr %290, align 8, !tbaa !307
  %291 = icmp slt i64 %181, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  %293 = lshr i64 %184, 1
  %294 = icmp ult i64 %184, 2
  br i1 %294, label %302, label %295

295:                                              ; preds = %292, %295
  %296 = phi i64 [ %298, %295 ], [ 0, %292 ]
  %297 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %297, i64 16, i1 false), !tbaa.struct !131
  %298 = add nuw nsw i64 %296, 1
  %299 = sub i64 %184, %298
  %300 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %297, ptr noundef nonnull align 8 dereferenceable(16) %300, i64 16, i1 false), !tbaa.struct !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %300, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !131
  %301 = icmp eq i64 %298, %293
  br i1 %301, label %302, label %295, !llvm.loop !308

302:                                              ; preds = %295, %292
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  br label %303

303:                                              ; preds = %302, %281
  %304 = load ptr, ptr %172, align 8, !tbaa !300
  %305 = getelementptr inbounds %struct._EdgeInfo, ptr %304, i64 %186, i32 2
  store ptr %182, ptr %305, align 8, !tbaa !309
  %306 = getelementptr inbounds %struct._EdgeInfo, ptr %304, i64 %186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %306, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !110
  %307 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 0, i32 1
  %308 = load double, ptr %307, align 8, !tbaa !125
  %309 = load ptr, ptr %172, align 8, !tbaa !300
  %310 = getelementptr inbounds %struct._EdgeInfo, ptr %309, i64 %186, i32 0, i32 1
  store double %308, ptr %310, align 8, !tbaa !310
  %311 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %273, i32 1
  %312 = load double, ptr %311, align 8, !tbaa !125
  %313 = getelementptr inbounds %struct._EdgeInfo, ptr %309, i64 %186, i32 0, i32 3
  store double %312, ptr %313, align 8, !tbaa !311
  %314 = call dereferenceable_or_null(256) ptr @AcquireQuantumMemory(i64 noundef 16, i64 noundef 16) #27
  %315 = icmp eq ptr %314, null
  br i1 %315, label %461, label %316

316:                                              ; preds = %303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %314, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !131
  %317 = load double, ptr %7, align 8, !tbaa !124
  store double %317, ptr %8, align 8, !tbaa !269
  store double %317, ptr %163, align 8, !tbaa !268
  %318 = add i64 %186, 1
  br label %319

319:                                              ; preds = %316, %264
  %320 = phi ptr [ %314, %316 ], [ %182, %264 ]
  %321 = phi i64 [ 1, %316 ], [ %184, %264 ]
  %322 = phi i32 [ 0, %316 ], [ %185, %264 ]
  %323 = phi i64 [ %318, %316 ], [ %186, %264 ]
  %324 = phi i64 [ %282, %316 ], [ %187, %264 ]
  %325 = phi i64 [ 16, %316 ], [ %188, %264 ]
  %326 = icmp eq ptr %320, null
  br i1 %326, label %347, label %327

327:                                              ; preds = %319
  %328 = icmp eq i64 %321, %325
  br i1 %328, label %329, label %333

329:                                              ; preds = %327
  %330 = shl i64 %325, 1
  %331 = call ptr @ResizeQuantumMemory(ptr noundef nonnull %320, i64 noundef %330, i64 noundef 16) #30
  %332 = icmp eq ptr %331, null
  br i1 %332, label %461, label %333

333:                                              ; preds = %329, %327
  %334 = phi ptr [ %331, %329 ], [ %320, %327 ]
  %335 = phi i64 [ %330, %329 ], [ %325, %327 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %189, i64 16, i1 false), !tbaa.struct !131
  %336 = getelementptr inbounds %struct._PointInfo, ptr %334, i64 %321
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %336, ptr noundef nonnull align 8 dereferenceable(16) %189, i64 16, i1 false)
  %337 = load double, ptr %7, align 8, !tbaa !124
  %338 = load double, ptr %8, align 8, !tbaa !269
  %339 = fcmp olt double %337, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %333
  store double %337, ptr %8, align 8, !tbaa !269
  br label %341

341:                                              ; preds = %340, %333
  %342 = load double, ptr %164, align 8, !tbaa !268
  %343 = fcmp ogt double %337, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  store double %337, ptr %164, align 8, !tbaa !268
  br label %345

345:                                              ; preds = %344, %341
  %346 = add nsw i64 %321, 1
  br label %347

347:                                              ; preds = %345, %319, %246
  %348 = phi i64 [ 0, %246 ], [ %266, %319 ], [ %266, %345 ]
  %349 = phi ptr [ %247, %246 ], [ null, %319 ], [ %334, %345 ]
  %350 = phi i64 [ 1, %246 ], [ %321, %319 ], [ %346, %345 ]
  %351 = phi i32 [ %251, %246 ], [ %322, %319 ], [ %322, %345 ]
  %352 = phi i64 [ %240, %246 ], [ %323, %319 ], [ %323, %345 ]
  %353 = phi i64 [ %241, %246 ], [ %324, %319 ], [ %324, %345 ]
  %354 = phi i64 [ %248, %246 ], [ %325, %319 ], [ %335, %345 ]
  %355 = add nuw nsw i64 %183, 1
  br label %180, !llvm.loop !312

356:                                              ; preds = %180
  %357 = icmp eq ptr %182, null
  br i1 %357, label %403, label %358

358:                                              ; preds = %356
  %359 = icmp slt i64 %184, 2
  br i1 %359, label %360, label %362

360:                                              ; preds = %358
  %361 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %182) #24
  br label %403

362:                                              ; preds = %358
  %363 = icmp eq i64 %186, %187
  br i1 %363, label %364, label %369

364:                                              ; preds = %362
  %365 = shl i64 %187, 1
  %366 = load ptr, ptr %172, align 8, !tbaa !300
  %367 = call ptr @ResizeQuantumMemory(ptr noundef %366, i64 noundef %365, i64 noundef 80) #30
  store ptr %367, ptr %172, align 8, !tbaa !300
  %368 = icmp eq ptr %367, null
  br i1 %368, label %461, label %369

369:                                              ; preds = %364, %362
  %370 = load ptr, ptr %172, align 8, !tbaa !300
  %371 = getelementptr inbounds %struct._EdgeInfo, ptr %370, i64 %186, i32 3
  store i64 %184, ptr %371, align 8, !tbaa !302
  %372 = getelementptr inbounds %struct._EdgeInfo, ptr %370, i64 %186, i32 1
  store double -1.000000e+00, ptr %372, align 8, !tbaa !304
  %373 = getelementptr inbounds %struct._EdgeInfo, ptr %370, i64 %186, i32 6
  store i64 0, ptr %373, align 8, !tbaa !305
  %374 = getelementptr inbounds %struct._EdgeInfo, ptr %370, i64 %186, i32 5
  store i32 %185, ptr %374, align 8, !tbaa !306
  %375 = icmp sgt i64 %181, 0
  %376 = zext i1 %375 to i64
  %377 = getelementptr inbounds %struct._EdgeInfo, ptr %370, i64 %186, i32 4
  store i64 %376, ptr %377, align 8, !tbaa !307
  %378 = icmp slt i64 %181, 0
  br i1 %378, label %379, label %390

379:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %380 = lshr i64 %184, 1
  %381 = call i64 @llvm.umax.i64(i64 %380, i64 1)
  br label %382

382:                                              ; preds = %379, %382
  %383 = phi i64 [ %385, %382 ], [ 0, %379 ]
  %384 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %384, i64 16, i1 false), !tbaa.struct !131
  %385 = add nuw nsw i64 %383, 1
  %386 = sub nsw i64 %184, %385
  %387 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %384, ptr noundef nonnull align 8 dereferenceable(16) %387, i64 16, i1 false), !tbaa.struct !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %387, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !131
  %388 = icmp eq i64 %385, %381
  br i1 %388, label %389, label %382, !llvm.loop !308

389:                                              ; preds = %382
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br label %390

390:                                              ; preds = %389, %369
  %391 = load ptr, ptr %172, align 8, !tbaa !300
  %392 = getelementptr inbounds %struct._EdgeInfo, ptr %391, i64 %186, i32 2
  store ptr %182, ptr %392, align 8, !tbaa !309
  %393 = getelementptr inbounds %struct._EdgeInfo, ptr %391, i64 %186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %393, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !110
  %394 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 0, i32 1
  %395 = load double, ptr %394, align 8, !tbaa !125
  %396 = load ptr, ptr %172, align 8, !tbaa !300
  %397 = getelementptr inbounds %struct._EdgeInfo, ptr %396, i64 %186, i32 0, i32 1
  store double %395, ptr %397, align 8, !tbaa !310
  %398 = add nsw i64 %184, -1
  %399 = getelementptr inbounds %struct._PointInfo, ptr %182, i64 %398, i32 1
  %400 = load double, ptr %399, align 8, !tbaa !125
  %401 = getelementptr inbounds %struct._EdgeInfo, ptr %396, i64 %186, i32 0, i32 3
  store double %400, ptr %401, align 8, !tbaa !311
  %402 = add i64 %186, 1
  br label %403

403:                                              ; preds = %390, %360, %356
  %404 = phi i64 [ %186, %360 ], [ %402, %390 ], [ %186, %356 ]
  %405 = getelementptr inbounds %struct._PolygonInfo, ptr %172, i64 0, i32 1
  store i64 %404, ptr %405, align 8, !tbaa !313
  %406 = load ptr, ptr %172, align 8, !tbaa !300
  call void @qsort(ptr noundef %406, i64 noundef %404, i64 noundef 80, ptr noundef nonnull @CompareEdges) #24
  %407 = call i32 @IsEventLogging() #24
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %461, label %409

409:                                              ; preds = %403
  %410 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 428, ptr noundef nonnull @.str.132) #24
  %411 = load i64, ptr %405, align 8, !tbaa !313
  %412 = icmp sgt i64 %411, 0
  br i1 %412, label %413, label %459

413:                                              ; preds = %409
  %414 = load ptr, ptr %172, align 8, !tbaa !300
  br label %415

415:                                              ; preds = %413, %454
  %416 = phi i64 [ %456, %454 ], [ 0, %413 ]
  %417 = phi ptr [ %455, %454 ], [ %414, %413 ]
  %418 = sitofp i64 %416 to double
  %419 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 432, ptr noundef nonnull @.str.133, double noundef %418) #24
  %420 = getelementptr inbounds %struct._EdgeInfo, ptr %417, i64 0, i32 4
  %421 = load i64, ptr %420, align 8, !tbaa !307
  %422 = icmp eq i64 %421, 0
  %423 = select i1 %422, ptr @.str.136, ptr @.str.135
  %424 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 434, ptr noundef nonnull @.str.134, ptr noundef nonnull %423) #24
  %425 = getelementptr inbounds %struct._EdgeInfo, ptr %417, i64 0, i32 5
  %426 = load i32, ptr %425, align 8, !tbaa !306
  %427 = icmp eq i32 %426, 0
  %428 = select i1 %427, ptr @.str.139, ptr @.str.138
  %429 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 436, ptr noundef nonnull @.str.137, ptr noundef nonnull %428) #24
  %430 = load double, ptr %417, align 8, !tbaa !314
  %431 = getelementptr inbounds %struct._SegmentInfo, ptr %417, i64 0, i32 1
  %432 = load double, ptr %431, align 8, !tbaa !310
  %433 = getelementptr inbounds %struct._SegmentInfo, ptr %417, i64 0, i32 2
  %434 = load double, ptr %433, align 8, !tbaa !315
  %435 = getelementptr inbounds %struct._SegmentInfo, ptr %417, i64 0, i32 3
  %436 = load double, ptr %435, align 8, !tbaa !311
  %437 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 438, ptr noundef nonnull @.str.140, double noundef %430, double noundef %432, double noundef %434, double noundef %436) #24
  %438 = getelementptr inbounds %struct._EdgeInfo, ptr %417, i64 0, i32 3
  %439 = load i64, ptr %438, align 8, !tbaa !302
  %440 = icmp sgt i64 %439, 0
  br i1 %440, label %441, label %454

441:                                              ; preds = %415
  %442 = getelementptr inbounds %struct._EdgeInfo, ptr %417, i64 0, i32 2
  br label %443

443:                                              ; preds = %441, %443
  %444 = phi i64 [ 0, %441 ], [ %451, %443 ]
  %445 = load ptr, ptr %442, align 8, !tbaa !309
  %446 = getelementptr inbounds %struct._PointInfo, ptr %445, i64 %444
  %447 = load double, ptr %446, align 8, !tbaa !124
  %448 = getelementptr inbounds %struct._PointInfo, ptr %445, i64 %444, i32 1
  %449 = load double, ptr %448, align 8, !tbaa !125
  %450 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 442, ptr noundef nonnull @.str.141, double noundef %447, double noundef %449) #24
  %451 = add nuw nsw i64 %444, 1
  %452 = load i64, ptr %438, align 8, !tbaa !302
  %453 = icmp slt i64 %451, %452
  br i1 %453, label %443, label %454, !llvm.loop !316

454:                                              ; preds = %443, %415
  %455 = getelementptr inbounds %struct._EdgeInfo, ptr %417, i64 1
  %456 = add nuw nsw i64 %416, 1
  %457 = load i64, ptr %405, align 8, !tbaa !313
  %458 = icmp slt i64 %456, %457
  br i1 %458, label %415, label %459, !llvm.loop !317

459:                                              ; preds = %454, %409
  %460 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 446, ptr noundef nonnull @.str.142) #24
  br label %461

461:                                              ; preds = %329, %303, %276, %243, %198, %459, %403, %364, %174, %170
  %462 = phi ptr [ null, %170 ], [ null, %174 ], [ null, %364 ], [ %172, %459 ], [ %172, %403 ], [ null, %198 ], [ null, %243 ], [ null, %276 ], [ null, %303 ], [ null, %329 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  %463 = getelementptr inbounds ptr, ptr %23, i64 %171
  store ptr %462, ptr %463, align 8, !tbaa !105
  %464 = icmp eq ptr %462, null
  br i1 %464, label %465, label %167

465:                                              ; preds = %461
  %466 = call fastcc ptr @DestroyPolygonThreadSet(ptr noundef nonnull %23)
  br label %469

467:                                              ; preds = %167, %158
  %468 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %156) #24
  br label %469

469:                                              ; preds = %21, %165, %465, %467
  %470 = phi ptr [ %166, %165 ], [ %466, %465 ], [ %23, %467 ], [ null, %21 ]
  %471 = icmp eq ptr %470, null
  br i1 %471, label %1188, label %472

472:                                              ; preds = %469
  %473 = load i32, ptr %11, align 8, !tbaa !113
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %477, label %475

475:                                              ; preds = %472
  %476 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3902, ptr noundef nonnull @.str.123) #24
  br label %477

477:                                              ; preds = %475, %472
  %478 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %479 = load i32, ptr %478, align 4, !tbaa !194
  %480 = add i32 %479, -5
  %481 = icmp ult i32 %480, -2
  %482 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %483 = call double @ExpandAffine(ptr noundef nonnull %482) #24
  %484 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %485 = load double, ptr %484, align 8, !tbaa !56
  %486 = fmul double %483, %485
  %487 = fmul double %486, 5.000000e-01
  %488 = load ptr, ptr %470, align 8, !tbaa !105
  %489 = load ptr, ptr %488, align 8, !tbaa !300
  %490 = load double, ptr %489, align 8, !tbaa.struct !110
  %491 = getelementptr inbounds i8, ptr %489, i64 8
  %492 = load double, ptr %491, align 8, !tbaa.struct !318
  %493 = getelementptr inbounds i8, ptr %489, i64 16
  %494 = load double, ptr %493, align 8, !tbaa.struct !131
  %495 = getelementptr inbounds i8, ptr %489, i64 24
  %496 = load double, ptr %495, align 8, !tbaa.struct !132
  %497 = getelementptr inbounds %struct._PolygonInfo, ptr %488, i64 0, i32 1
  %498 = load i64, ptr %497, align 8, !tbaa !313
  %499 = icmp sgt i64 %498, 1
  br i1 %499, label %500, label %524

500:                                              ; preds = %477, %500
  %501 = phi i64 [ %522, %500 ], [ 1, %477 ]
  %502 = phi double [ %521, %500 ], [ %496, %477 ]
  %503 = phi double [ %509, %500 ], [ %490, %477 ]
  %504 = phi double [ %513, %500 ], [ %492, %477 ]
  %505 = phi double [ %517, %500 ], [ %494, %477 ]
  %506 = getelementptr inbounds %struct._EdgeInfo, ptr %489, i64 %501
  %507 = load double, ptr %506, align 8, !tbaa !314
  %508 = fcmp olt double %507, %503
  %509 = select i1 %508, double %507, double %503
  %510 = getelementptr inbounds %struct._SegmentInfo, ptr %506, i64 0, i32 1
  %511 = load double, ptr %510, align 8, !tbaa !310
  %512 = fcmp olt double %511, %504
  %513 = select i1 %512, double %511, double %504
  %514 = getelementptr inbounds %struct._SegmentInfo, ptr %506, i64 0, i32 2
  %515 = load double, ptr %514, align 8, !tbaa !315
  %516 = fcmp ogt double %515, %505
  %517 = select i1 %516, double %515, double %505
  %518 = getelementptr inbounds %struct._SegmentInfo, ptr %506, i64 0, i32 3
  %519 = load double, ptr %518, align 8, !tbaa !311
  %520 = fcmp ogt double %519, %502
  %521 = select i1 %520, double %519, double %502
  %522 = add nuw nsw i64 %501, 1
  %523 = icmp eq i64 %522, %498
  br i1 %523, label %524, label %500, !llvm.loop !319

524:                                              ; preds = %500, %477
  %525 = phi double [ %494, %477 ], [ %517, %500 ]
  %526 = phi double [ %492, %477 ], [ %513, %500 ]
  %527 = phi double [ %490, %477 ], [ %509, %500 ]
  %528 = phi double [ %496, %477 ], [ %521, %500 ]
  %529 = fadd double %487, 1.000000e+00
  %530 = fsub double %527, %529
  %531 = fcmp olt double %530, 0.000000e+00
  br i1 %531, label %542, label %532

532:                                              ; preds = %524
  %533 = fadd double %530, -5.000000e-01
  %534 = call double @llvm.ceil.f64(double %533)
  %535 = fptoui double %534 to i64
  %536 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %537 = load i64, ptr %536, align 8, !tbaa !123
  %538 = icmp ugt i64 %537, %535
  br i1 %538, label %542, label %539

539:                                              ; preds = %532
  %540 = uitofp i64 %537 to double
  %541 = fadd double %540, -1.000000e+00
  br label %542

542:                                              ; preds = %532, %539, %524
  %543 = phi double [ 0.000000e+00, %524 ], [ %541, %539 ], [ %530, %532 ]
  %544 = fsub double %526, %529
  %545 = fcmp olt double %544, 0.000000e+00
  br i1 %545, label %556, label %546

546:                                              ; preds = %542
  %547 = fadd double %544, -5.000000e-01
  %548 = call double @llvm.ceil.f64(double %547)
  %549 = fptoui double %548 to i64
  %550 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %551 = load i64, ptr %550, align 8, !tbaa !126
  %552 = icmp ugt i64 %551, %549
  br i1 %552, label %556, label %553

553:                                              ; preds = %546
  %554 = uitofp i64 %551 to double
  %555 = fadd double %554, -1.000000e+00
  br label %556

556:                                              ; preds = %546, %553, %542
  %557 = phi double [ 0.000000e+00, %542 ], [ %555, %553 ], [ %544, %546 ]
  %558 = fadd double %529, %525
  %559 = fcmp olt double %558, 0.000000e+00
  br i1 %559, label %570, label %560

560:                                              ; preds = %556
  %561 = fadd double %558, 5.000000e-01
  %562 = call double @llvm.floor.f64(double %561)
  %563 = fptoui double %562 to i64
  %564 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %565 = load i64, ptr %564, align 8, !tbaa !123
  %566 = icmp ugt i64 %565, %563
  br i1 %566, label %570, label %567

567:                                              ; preds = %560
  %568 = uitofp i64 %565 to double
  %569 = fadd double %568, -1.000000e+00
  br label %570

570:                                              ; preds = %560, %567, %556
  %571 = phi double [ 0.000000e+00, %556 ], [ %569, %567 ], [ %558, %560 ]
  %572 = fadd double %529, %528
  %573 = fcmp olt double %572, 0.000000e+00
  br i1 %573, label %584, label %574

574:                                              ; preds = %570
  %575 = fadd double %572, 5.000000e-01
  %576 = call double @llvm.floor.f64(double %575)
  %577 = fptoui double %576 to i64
  %578 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %579 = load i64, ptr %578, align 8, !tbaa !126
  %580 = icmp ugt i64 %579, %577
  br i1 %580, label %584, label %581

581:                                              ; preds = %574
  %582 = uitofp i64 %579 to double
  %583 = fadd double %582, -1.000000e+00
  br label %584

584:                                              ; preds = %574, %581, %570
  %585 = phi double [ 0.000000e+00, %570 ], [ %583, %581 ], [ %572, %574 ]
  %586 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %587 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %586) #24
  %588 = load i64, ptr %18, align 8, !tbaa !193
  %589 = icmp eq i64 %588, 1
  br i1 %589, label %590, label %670

590:                                              ; preds = %584
  %591 = fadd double %557, -5.000000e-01
  %592 = call double @llvm.ceil.f64(double %591)
  %593 = fptosi double %592 to i64
  %594 = fadd double %585, 5.000000e-01
  %595 = call double @llvm.floor.f64(double %594)
  %596 = fptosi double %595 to i64
  %597 = icmp sgt i64 %593, %596
  br i1 %597, label %664, label %598

598:                                              ; preds = %590
  %599 = fadd double %543, -5.000000e-01
  %600 = call double @llvm.ceil.f64(double %599)
  %601 = fptosi double %600 to i64
  %602 = fadd double %571, 5.000000e-01
  %603 = call double @llvm.floor.f64(double %602)
  %604 = fptosi double %603 to i64
  %605 = sub i64 %604, %601
  %606 = add i64 %605, 1
  %607 = icmp sgt i64 %601, %604
  %608 = getelementptr inbounds %struct._PointInfo, ptr %2, i64 0, i32 1
  %609 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 11
  %610 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  br label %611

611:                                              ; preds = %598, %660
  %612 = phi i32 [ 1, %598 ], [ %661, %660 ]
  %613 = phi i64 [ %593, %598 ], [ %662, %660 ]
  %614 = icmp eq i32 %612, 0
  br i1 %614, label %660, label %615

615:                                              ; preds = %611
  %616 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %587, i64 noundef %601, i64 noundef %613, i64 noundef %606, i64 noundef 1, ptr noundef nonnull %586) #28
  %617 = icmp eq ptr %616, null
  br i1 %617, label %660, label %618

618:                                              ; preds = %615
  br i1 %607, label %656, label %619

619:                                              ; preds = %618, %652
  %620 = phi i64 [ %654, %652 ], [ %601, %618 ]
  %621 = phi ptr [ %653, %652 ], [ %616, %618 ]
  %622 = load double, ptr %2, align 8, !tbaa !197
  %623 = fadd double %622, -5.000000e-01
  %624 = call double @llvm.ceil.f64(double %623)
  %625 = fptosi double %624 to i64
  %626 = icmp eq i64 %620, %625
  br i1 %626, label %627, label %652

627:                                              ; preds = %619
  %628 = load double, ptr %608, align 8, !tbaa !198
  %629 = fadd double %628, -5.000000e-01
  %630 = call double @llvm.ceil.f64(double %629)
  %631 = fptosi double %630 to i64
  %632 = icmp eq i64 %613, %631
  br i1 %632, label %633, label %652

633:                                              ; preds = %627
  %634 = load ptr, ptr %609, align 8, !tbaa !90
  %635 = icmp eq ptr %634, null
  br i1 %635, label %636, label %638

636:                                              ; preds = %633
  %637 = load i64, ptr %610, align 4
  store i64 %637, ptr %621, align 2
  br label %652

638:                                              ; preds = %633
  %639 = getelementptr inbounds %struct._Image, ptr %634, i64 0, i32 74, i32 2
  %640 = load i64, ptr %639, align 8, !tbaa !243
  %641 = add nsw i64 %640, %620
  %642 = getelementptr inbounds %struct._Image, ptr %634, i64 0, i32 74, i32 3
  %643 = load i64, ptr %642, align 8, !tbaa !244
  %644 = add nsw i64 %643, %613
  %645 = getelementptr inbounds %struct._Image, ptr %634, i64 0, i32 58
  %646 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %634, i32 noundef 7, i64 noundef %641, i64 noundef %644, ptr noundef nonnull %621, ptr noundef nonnull %645) #24
  %647 = getelementptr inbounds %struct._Image, ptr %634, i64 0, i32 6
  %648 = load i32, ptr %647, align 8, !tbaa !245
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %652

650:                                              ; preds = %638
  %651 = getelementptr inbounds %struct._PixelPacket, ptr %621, i64 0, i32 3
  store i16 0, ptr %651, align 2, !tbaa !147
  br label %652

652:                                              ; preds = %650, %638, %636, %627, %619
  %653 = getelementptr inbounds %struct._PixelPacket, ptr %621, i64 1
  %654 = add i64 %620, 1
  %655 = icmp eq i64 %620, %604
  br i1 %655, label %656, label %619, !llvm.loop !320

656:                                              ; preds = %652, %618
  %657 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %587, ptr noundef nonnull %586) #28
  %658 = icmp ne i32 %657, 0
  %659 = zext i1 %658 to i32
  br label %660

660:                                              ; preds = %615, %611, %656
  %661 = phi i32 [ %659, %656 ], [ 0, %611 ], [ 0, %615 ]
  %662 = add i64 %613, 1
  %663 = icmp eq i64 %613, %596
  br i1 %663, label %664, label %611, !llvm.loop !321

664:                                              ; preds = %660, %590
  %665 = phi i32 [ 1, %590 ], [ %661, %660 ]
  %666 = call ptr @DestroyCacheView(ptr noundef %587) #24
  %667 = call fastcc ptr @DestroyPolygonThreadSet(ptr noundef nonnull %470)
  %668 = load i32, ptr %11, align 8, !tbaa !113
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %1188, label %1184

670:                                              ; preds = %584
  %671 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %672 = load i32, ptr %671, align 8, !tbaa !245
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %676

674:                                              ; preds = %670
  %675 = call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #24
  br label %676

676:                                              ; preds = %674, %670
  %677 = fadd double %557, -5.000000e-01
  %678 = call double @llvm.ceil.f64(double %677)
  %679 = fptosi double %678 to i64
  %680 = fadd double %585, 5.000000e-01
  %681 = call double @llvm.floor.f64(double %680)
  %682 = fptosi double %681 to i64
  %683 = icmp sgt i64 %679, %682
  br i1 %683, label %1178, label %684

684:                                              ; preds = %676
  %685 = fadd double %543, -5.000000e-01
  %686 = call double @llvm.ceil.f64(double %685)
  %687 = fptosi double %686 to i64
  %688 = fadd double %571, 5.000000e-01
  %689 = call double @llvm.floor.f64(double %688)
  %690 = fptosi double %689 to i64
  %691 = sub i64 %690, %687
  %692 = add i64 %691, 1
  %693 = icmp sgt i64 %687, %690
  %694 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 14
  %695 = fadd double %487, 5.000000e-01
  %696 = fadd double %695, 2.500000e-01
  %697 = fmul double %696, %696
  %698 = fadd double %487, -5.000000e-01
  %699 = fadd double %698, 2.500000e-01
  %700 = fmul double %699, %699
  %701 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 12
  %702 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %703 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 3
  %704 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %705 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 3
  %706 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %707 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  %708 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 11
  %709 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  %710 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %711 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  %712 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  %713 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 1
  br label %714

714:                                              ; preds = %684, %1174
  %715 = phi i32 [ 1, %684 ], [ %1175, %1174 ]
  %716 = phi i64 [ %679, %684 ], [ %1176, %1174 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  %717 = icmp eq i32 %715, 0
  br i1 %717, label %1174, label %718

718:                                              ; preds = %714
  %719 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %587, i64 noundef %687, i64 noundef %716, i64 noundef %692, i64 noundef 1, ptr noundef nonnull %586) #28
  %720 = icmp eq ptr %719, null
  br i1 %720, label %1174, label %721

721:                                              ; preds = %718
  br i1 %693, label %1170, label %722

722:                                              ; preds = %721
  %723 = sitofp i64 %716 to double
  %724 = sitofp i64 %716 to double
  br label %725

725:                                              ; preds = %722, %1166
  %726 = phi i64 [ %687, %722 ], [ %1168, %1166 ]
  %727 = phi ptr [ %719, %722 ], [ %1167, %1166 ]
  %728 = load ptr, ptr %470, align 8, !tbaa !105
  %729 = load i32, ptr %694, align 8, !tbaa !58
  %730 = getelementptr inbounds %struct._PolygonInfo, ptr %728, i64 0, i32 1
  %731 = load i64, ptr %730, align 8, !tbaa !313
  %732 = icmp sgt i64 %731, 0
  br i1 %732, label %733, label %905

733:                                              ; preds = %725
  %734 = load ptr, ptr %728, align 8, !tbaa !300
  %735 = sitofp i64 %726 to double
  %736 = getelementptr inbounds %struct._SegmentInfo, ptr %734, i64 0, i32 1
  %737 = load double, ptr %736, align 8, !tbaa !310
  %738 = fsub double %737, %487
  %739 = fadd double %738, -5.000000e-01
  %740 = fcmp ult double %739, %723
  br i1 %740, label %748, label %905

741:                                              ; preds = %899
  %742 = getelementptr inbounds %struct._EdgeInfo, ptr %751, i64 1
  %743 = getelementptr inbounds %struct._EdgeInfo, ptr %751, i64 1, i32 0, i32 1
  %744 = load double, ptr %743, align 8, !tbaa !310
  %745 = fsub double %744, %487
  %746 = fadd double %745, -5.000000e-01
  %747 = fcmp ult double %746, %723
  br i1 %747, label %748, label %905, !llvm.loop !322

748:                                              ; preds = %733, %741
  %749 = phi double [ %900, %741 ], [ 0.000000e+00, %733 ]
  %750 = phi double [ %901, %741 ], [ 0.000000e+00, %733 ]
  %751 = phi ptr [ %742, %741 ], [ %734, %733 ]
  %752 = phi i64 [ %902, %741 ], [ 0, %733 ]
  %753 = getelementptr inbounds %struct._SegmentInfo, ptr %751, i64 0, i32 3
  %754 = load double, ptr %753, align 8, !tbaa !311
  %755 = fadd double %487, %754
  %756 = fadd double %755, 5.000000e-01
  %757 = fcmp olt double %756, %723
  br i1 %757, label %758, label %774

758:                                              ; preds = %748
  %759 = load ptr, ptr %728, align 8, !tbaa !300
  %760 = getelementptr inbounds %struct._EdgeInfo, ptr %759, i64 %752, i32 2
  %761 = load ptr, ptr %760, align 8, !tbaa !309
  %762 = call ptr @RelinquishMagickMemory(ptr noundef %761) #24
  %763 = load ptr, ptr %728, align 8, !tbaa !300
  %764 = getelementptr inbounds %struct._EdgeInfo, ptr %763, i64 %752, i32 2
  store ptr %762, ptr %764, align 8, !tbaa !309
  %765 = load i64, ptr %730, align 8, !tbaa !313
  %766 = add i64 %765, -1
  store i64 %766, ptr %730, align 8, !tbaa !313
  %767 = icmp ugt i64 %766, %752
  br i1 %767, label %768, label %899

768:                                              ; preds = %758
  %769 = getelementptr inbounds %struct._EdgeInfo, ptr %763, i64 %752
  %770 = getelementptr inbounds %struct._EdgeInfo, ptr %769, i64 1
  %771 = sub i64 %766, %752
  %772 = mul i64 %771, 80
  %773 = call ptr @CopyMagickMemory(ptr noundef %769, ptr noundef nonnull %770, i64 noundef %772) #24
  br label %899

774:                                              ; preds = %748
  %775 = load double, ptr %751, align 8, !tbaa !314
  %776 = fsub double %775, %487
  %777 = fadd double %776, -5.000000e-01
  %778 = fcmp ult double %777, %735
  br i1 %778, label %779, label %899

779:                                              ; preds = %774
  %780 = getelementptr inbounds %struct._SegmentInfo, ptr %751, i64 0, i32 2
  %781 = load double, ptr %780, align 8, !tbaa !315
  %782 = fadd double %487, %781
  %783 = fadd double %782, 5.000000e-01
  %784 = fcmp olt double %783, %735
  br i1 %784, label %899, label %785

785:                                              ; preds = %779
  %786 = getelementptr inbounds %struct._EdgeInfo, ptr %751, i64 0, i32 6
  %787 = load i64, ptr %786, align 8, !tbaa !305
  %788 = uitofp i64 %787 to double
  %789 = fcmp ogt double %788, 1.000000e+00
  %790 = select i1 %789, double %788, double 1.000000e+00
  %791 = fptosi double %790 to i64
  %792 = getelementptr inbounds %struct._EdgeInfo, ptr %751, i64 0, i32 2
  %793 = getelementptr inbounds %struct._EdgeInfo, ptr %751, i64 0, i32 3
  %794 = load i64, ptr %793, align 8, !tbaa !302
  %795 = icmp sgt i64 %794, %791
  br i1 %795, label %796, label %899

796:                                              ; preds = %785
  %797 = getelementptr inbounds %struct._EdgeInfo, ptr %751, i64 0, i32 1
  %798 = getelementptr inbounds %struct._EdgeInfo, ptr %751, i64 0, i32 5
  br label %799

799:                                              ; preds = %796, %893
  %800 = phi i64 [ %791, %796 ], [ %896, %893 ]
  %801 = phi double [ %750, %796 ], [ %895, %893 ]
  %802 = phi double [ %749, %796 ], [ %894, %893 ]
  %803 = load ptr, ptr %792, align 8, !tbaa !309
  %804 = getelementptr %struct._PointInfo, ptr %803, i64 %800
  %805 = getelementptr %struct._PointInfo, ptr %804, i64 -1, i32 1
  %806 = load double, ptr %805, align 8, !tbaa !125
  %807 = fsub double %806, %487
  %808 = fadd double %807, -5.000000e-01
  %809 = fcmp ult double %808, %723
  br i1 %809, label %810, label %899

810:                                              ; preds = %799
  %811 = getelementptr inbounds %struct._PointInfo, ptr %803, i64 %800, i32 1
  %812 = load double, ptr %811, align 8, !tbaa !125
  %813 = fadd double %487, %812
  %814 = fadd double %813, 5.000000e-01
  %815 = fcmp olt double %814, %723
  br i1 %815, label %893, label %816

816:                                              ; preds = %810
  %817 = load double, ptr %797, align 8, !tbaa !304
  %818 = fcmp une double %817, %723
  br i1 %818, label %819, label %820

819:                                              ; preds = %816
  store double %723, ptr %797, align 8, !tbaa !304
  store i64 %800, ptr %786, align 8, !tbaa !305
  br label %820

820:                                              ; preds = %819, %816
  %821 = getelementptr inbounds %struct._PointInfo, ptr %804, i64 -1
  %822 = load double, ptr %804, align 8, !tbaa !124
  %823 = load double, ptr %821, align 8, !tbaa !124
  %824 = fsub double %822, %823
  %825 = fsub double %812, %806
  %826 = fsub double %735, %823
  %827 = fsub double %723, %806
  %828 = fmul double %827, %825
  %829 = call double @llvm.fmuladd.f64(double %824, double %826, double %828)
  %830 = fcmp olt double %829, 0.000000e+00
  br i1 %830, label %831, label %834

831:                                              ; preds = %820
  %832 = fmul double %827, %827
  %833 = call double @llvm.fmuladd.f64(double %826, double %826, double %832)
  br label %850

834:                                              ; preds = %820
  %835 = fmul double %825, %825
  %836 = call double @llvm.fmuladd.f64(double %824, double %824, double %835)
  %837 = fcmp ogt double %829, %836
  br i1 %837, label %838, label %843

838:                                              ; preds = %834
  %839 = fsub double %735, %822
  %840 = fsub double %723, %812
  %841 = fmul double %840, %840
  %842 = call double @llvm.fmuladd.f64(double %839, double %839, double %841)
  br label %850

843:                                              ; preds = %834
  %844 = fdiv double 1.000000e+00, %836
  %845 = fneg double %825
  %846 = fmul double %826, %845
  %847 = call double @llvm.fmuladd.f64(double %824, double %827, double %846)
  %848 = fmul double %844, %847
  %849 = fmul double %847, %848
  br label %850

850:                                              ; preds = %843, %838, %831
  %851 = phi double [ %833, %831 ], [ %842, %838 ], [ %849, %843 ]
  %852 = load i32, ptr %798, align 8, !tbaa !306
  %853 = icmp ne i32 %852, 0
  %854 = fcmp uge double %802, 1.000000e+00
  %855 = select i1 %853, i1 true, i1 %854
  %856 = fcmp ugt double %851, %697
  %857 = select i1 %855, i1 true, i1 %856
  br i1 %857, label %872, label %858

858:                                              ; preds = %850
  %859 = fcmp ugt double %851, %700
  br i1 %859, label %860, label %872

860:                                              ; preds = %858
  %861 = fcmp une double %851, 1.000000e+00
  br i1 %861, label %862, label %864

862:                                              ; preds = %860
  %863 = call double @sqrt(double noundef %851) #24
  br label %864

864:                                              ; preds = %862, %860
  %865 = phi double [ %863, %862 ], [ 1.000000e+00, %860 ]
  %866 = fsub double %865, %487
  %867 = fadd double %866, -5.000000e-01
  %868 = fadd double %867, -2.500000e-01
  %869 = fmul double %868, %868
  %870 = fcmp olt double %802, %869
  br i1 %870, label %871, label %872

871:                                              ; preds = %864
  br label %872

872:                                              ; preds = %858, %871, %864, %850
  %873 = phi double [ %869, %871 ], [ %802, %864 ], [ %802, %850 ], [ 1.000000e+00, %858 ]
  %874 = phi double [ %865, %871 ], [ %865, %864 ], [ 0.000000e+00, %850 ], [ 0.000000e+00, %858 ]
  %875 = fcmp ogt double %851, 1.000000e+00
  %876 = select i1 %481, i1 true, i1 %875
  %877 = fcmp oge double %801, 1.000000e+00
  %878 = select i1 %876, i1 true, i1 %877
  br i1 %878, label %893, label %879

879:                                              ; preds = %872
  %880 = fcmp ugt double %851, 0.000000e+00
  br i1 %880, label %881, label %893

881:                                              ; preds = %879
  %882 = fcmp oeq double %874, 0.000000e+00
  br i1 %882, label %883, label %887

883:                                              ; preds = %881
  %884 = fcmp une double %851, 1.000000e+00
  br i1 %884, label %885, label %887

885:                                              ; preds = %883
  %886 = call double @sqrt(double noundef %851) #24
  br label %887

887:                                              ; preds = %885, %883, %881
  %888 = phi double [ %886, %885 ], [ 1.000000e+00, %883 ], [ %874, %881 ]
  %889 = fadd double %888, -1.000000e+00
  %890 = fmul double %889, %889
  %891 = fcmp olt double %801, %890
  br i1 %891, label %892, label %893

892:                                              ; preds = %887
  br label %893

893:                                              ; preds = %892, %887, %879, %872, %810
  %894 = phi double [ %802, %810 ], [ %873, %872 ], [ %873, %892 ], [ %873, %887 ], [ %873, %879 ]
  %895 = phi double [ %801, %810 ], [ %801, %872 ], [ %890, %892 ], [ %801, %887 ], [ 1.000000e+00, %879 ]
  %896 = add nsw i64 %800, 1
  %897 = load i64, ptr %793, align 8, !tbaa !302
  %898 = icmp slt i64 %896, %897
  br i1 %898, label %799, label %899, !llvm.loop !323

899:                                              ; preds = %893, %799, %785, %779, %774, %768, %758
  %900 = phi double [ %749, %768 ], [ %749, %758 ], [ %749, %779 ], [ %749, %774 ], [ %749, %785 ], [ %802, %799 ], [ %894, %893 ]
  %901 = phi double [ %750, %768 ], [ %750, %758 ], [ %750, %779 ], [ %750, %774 ], [ %750, %785 ], [ %801, %799 ], [ %895, %893 ]
  %902 = add nuw nsw i64 %752, 1
  %903 = load i64, ptr %730, align 8, !tbaa !313
  %904 = icmp slt i64 %902, %903
  br i1 %904, label %741, label %905, !llvm.loop !322

905:                                              ; preds = %741, %899, %733, %725
  %906 = phi double [ 0.000000e+00, %725 ], [ 0.000000e+00, %733 ], [ %900, %899 ], [ %900, %741 ]
  %907 = phi double [ 0.000000e+00, %725 ], [ 0.000000e+00, %733 ], [ %901, %899 ], [ %901, %741 ]
  %908 = phi i64 [ %731, %725 ], [ %731, %733 ], [ %903, %899 ], [ %903, %741 ]
  br i1 %481, label %994, label %909

909:                                              ; preds = %905
  %910 = fcmp ult double %907, 1.000000e+00
  br i1 %910, label %911, label %994

911:                                              ; preds = %909
  %912 = icmp sgt i64 %908, 0
  br i1 %912, label %913, label %985

913:                                              ; preds = %911
  %914 = load ptr, ptr %728, align 8, !tbaa !300
  %915 = sitofp i64 %726 to double
  br label %916

916:                                              ; preds = %913, %980
  %917 = phi i64 [ 0, %913 ], [ %981, %980 ]
  %918 = phi i64 [ 0, %913 ], [ %982, %980 ]
  %919 = phi ptr [ %914, %913 ], [ %983, %980 ]
  %920 = getelementptr inbounds %struct._SegmentInfo, ptr %919, i64 0, i32 1
  %921 = load double, ptr %920, align 8, !tbaa !310
  %922 = fcmp ult double %921, %724
  br i1 %922, label %923, label %985

923:                                              ; preds = %916
  %924 = getelementptr inbounds %struct._SegmentInfo, ptr %919, i64 0, i32 3
  %925 = load double, ptr %924, align 8, !tbaa !311
  %926 = fcmp olt double %925, %724
  br i1 %926, label %980, label %927

927:                                              ; preds = %923
  %928 = load double, ptr %919, align 8, !tbaa !314
  %929 = fcmp ult double %928, %915
  br i1 %929, label %930, label %980

930:                                              ; preds = %927
  %931 = getelementptr inbounds %struct._SegmentInfo, ptr %919, i64 0, i32 2
  %932 = load double, ptr %931, align 8, !tbaa !315
  %933 = fcmp olt double %932, %915
  br i1 %933, label %974, label %934

934:                                              ; preds = %930
  %935 = getelementptr inbounds %struct._EdgeInfo, ptr %919, i64 0, i32 6
  %936 = load i64, ptr %935, align 8, !tbaa !305
  %937 = uitofp i64 %936 to double
  %938 = fcmp ogt double %937, 1.000000e+00
  %939 = select i1 %938, double %937, double 1.000000e+00
  %940 = fptosi double %939 to i64
  %941 = getelementptr inbounds %struct._EdgeInfo, ptr %919, i64 0, i32 3
  %942 = load i64, ptr %941, align 8, !tbaa !302
  %943 = icmp sgt i64 %942, %940
  br i1 %943, label %944, label %955

944:                                              ; preds = %934
  %945 = getelementptr inbounds %struct._EdgeInfo, ptr %919, i64 0, i32 2
  %946 = load ptr, ptr %945, align 8, !tbaa !309
  br label %947

947:                                              ; preds = %944, %952
  %948 = phi i64 [ %940, %944 ], [ %953, %952 ]
  %949 = getelementptr inbounds %struct._PointInfo, ptr %946, i64 %948, i32 1
  %950 = load double, ptr %949, align 8, !tbaa !125
  %951 = fcmp ult double %950, %724
  br i1 %951, label %952, label %955

952:                                              ; preds = %947
  %953 = add i64 %948, 1
  %954 = icmp eq i64 %953, %942
  br i1 %954, label %955, label %947, !llvm.loop !324

955:                                              ; preds = %952, %947, %934
  %956 = phi i64 [ %940, %934 ], [ %942, %952 ], [ %948, %947 ]
  %957 = getelementptr inbounds %struct._EdgeInfo, ptr %919, i64 0, i32 2
  %958 = load ptr, ptr %957, align 8, !tbaa !309
  %959 = getelementptr inbounds %struct._PointInfo, ptr %958, i64 %956
  %960 = getelementptr inbounds %struct._PointInfo, ptr %959, i64 -1
  %961 = load double, ptr %959, align 8, !tbaa !124
  %962 = load double, ptr %960, align 8, !tbaa !124
  %963 = fsub double %961, %962
  %964 = getelementptr %struct._PointInfo, ptr %959, i64 -1, i32 1
  %965 = load double, ptr %964, align 8, !tbaa !125
  %966 = fsub double %724, %965
  %967 = fmul double %963, %966
  %968 = getelementptr inbounds %struct._PointInfo, ptr %958, i64 %956, i32 1
  %969 = load double, ptr %968, align 8, !tbaa !125
  %970 = fsub double %969, %965
  %971 = fsub double %915, %962
  %972 = fmul double %971, %970
  %973 = fcmp ugt double %967, %972
  br i1 %973, label %980, label %974

974:                                              ; preds = %955, %930
  %975 = getelementptr inbounds %struct._EdgeInfo, ptr %919, i64 0, i32 4
  %976 = load i64, ptr %975, align 8, !tbaa !307
  %977 = icmp eq i64 %976, 0
  %978 = select i1 %977, i64 -1, i64 1
  %979 = add nsw i64 %978, %917
  br label %980

980:                                              ; preds = %974, %955, %927, %923
  %981 = phi i64 [ %917, %923 ], [ %917, %927 ], [ %917, %955 ], [ %979, %974 ]
  %982 = add nuw nsw i64 %918, 1
  %983 = getelementptr inbounds %struct._EdgeInfo, ptr %919, i64 1
  %984 = icmp eq i64 %982, %908
  br i1 %984, label %985, label %916, !llvm.loop !325

985:                                              ; preds = %980, %916, %911
  %986 = phi i64 [ 0, %911 ], [ %981, %980 ], [ %917, %916 ]
  %987 = icmp eq i32 %729, 2
  br i1 %987, label %991, label %988

988:                                              ; preds = %985
  %989 = and i64 %986, 1
  %990 = icmp eq i64 %989, 0
  br i1 %990, label %993, label %994

991:                                              ; preds = %985
  %992 = icmp eq i64 %986, 0
  br i1 %992, label %993, label %994

993:                                              ; preds = %991, %988
  br label %994

994:                                              ; preds = %905, %909, %988, %991, %993
  %995 = phi double [ %907, %993 ], [ 0.000000e+00, %905 ], [ 1.000000e+00, %909 ], [ 1.000000e+00, %988 ], [ 1.000000e+00, %991 ]
  %996 = load i32, ptr %701, align 8, !tbaa !48
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1003

998:                                              ; preds = %994
  %999 = fcmp ogt double %995, 2.500000e-01
  %1000 = select i1 %999, double 1.000000e+00, double 0.000000e+00
  %1001 = fcmp ogt double %906, 2.500000e-01
  %1002 = select i1 %1001, double 1.000000e+00, double 0.000000e+00
  br label %1003

1003:                                             ; preds = %998, %994
  %1004 = phi double [ %1002, %998 ], [ %906, %994 ]
  %1005 = phi double [ %1000, %998 ], [ %995, %994 ]
  %1006 = load ptr, ptr %702, align 8, !tbaa !88
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1008, label %1010

1008:                                             ; preds = %1003
  %1009 = load i64, ptr %704, align 4
  store i64 %1009, ptr %9, align 8
  br label %1023

1010:                                             ; preds = %1003
  %1011 = getelementptr inbounds %struct._Image, ptr %1006, i64 0, i32 74, i32 2
  %1012 = load i64, ptr %1011, align 8, !tbaa !243
  %1013 = add nsw i64 %1012, %726
  %1014 = getelementptr inbounds %struct._Image, ptr %1006, i64 0, i32 74, i32 3
  %1015 = load i64, ptr %1014, align 8, !tbaa !244
  %1016 = add nsw i64 %1015, %716
  %1017 = getelementptr inbounds %struct._Image, ptr %1006, i64 0, i32 58
  %1018 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %1006, i32 noundef 7, i64 noundef %1013, i64 noundef %1016, ptr noundef nonnull %9, ptr noundef nonnull %1017) #24
  %1019 = getelementptr inbounds %struct._Image, ptr %1006, i64 0, i32 6
  %1020 = load i32, ptr %1019, align 8, !tbaa !245
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1010
  store i16 0, ptr %703, align 2, !tbaa !147
  br label %1023

1023:                                             ; preds = %1008, %1010, %1022
  %1024 = load i16, ptr %705, align 2, !tbaa !147
  %1025 = xor i16 %1024, -1
  %1026 = uitofp i16 %1025 to double
  %1027 = fneg double %1005
  %1028 = call double @llvm.fmuladd.f64(double %1027, double %1026, double 6.553500e+04)
  %1029 = fptrunc double %1028 to float
  %1030 = getelementptr inbounds %struct._PixelPacket, ptr %727, i64 0, i32 3
  %1031 = fcmp oeq float %1029, 6.553500e+04
  br i1 %1031, label %1086, label %1032

1032:                                             ; preds = %1023
  %1033 = load i16, ptr %1030, align 2, !tbaa !147
  %1034 = fpext float %1029 to double
  %1035 = uitofp i16 %1033 to double
  %1036 = fmul double %1034, 0xBDF0002000300040
  %1037 = call double @llvm.fmuladd.f64(double %1036, double %1035, double 1.000000e+00)
  %1038 = fcmp olt double %1037, 0.000000e+00
  %1039 = select i1 %1038, double 0.000000e+00, double %1037
  %1040 = fsub double 1.000000e+00, %1039
  %1041 = call double @llvm.fmuladd.f64(double %1040, double 6.553500e+04, double 5.000000e-01)
  %1042 = fptoui double %1041 to i16
  store i16 %1042, ptr %1030, align 2, !tbaa !147
  %1043 = fcmp ult double %1039, 1.000000e-15
  %1044 = fdiv double 1.000000e+00, %1039
  %1045 = select i1 %1043, double 0x430C6BF52633FFFF, double %1044
  %1046 = load i16, ptr %706, align 4, !tbaa !144
  %1047 = getelementptr inbounds %struct._PixelPacket, ptr %727, i64 0, i32 2
  %1048 = load i16, ptr %1047, align 2, !tbaa !144
  %1049 = call double @llvm.fmuladd.f64(double %1034, double 0xBEF0001000100010, double 1.000000e+00)
  %1050 = uitofp i16 %1046 to double
  %1051 = call double @llvm.fmuladd.f64(double %1035, double 0xBEF0001000100010, double 1.000000e+00)
  %1052 = uitofp i16 %1048 to double
  %1053 = fmul double %1051, %1052
  %1054 = fmul double %1053, 0x3EF0001000100010
  %1055 = fmul double %1054, %1034
  %1056 = call double @llvm.fmuladd.f64(double %1049, double %1050, double %1055)
  %1057 = fptrunc double %1056 to float
  %1058 = fpext float %1057 to double
  %1059 = call double @llvm.fmuladd.f64(double %1045, double %1058, double 5.000000e-01)
  %1060 = fptoui double %1059 to i16
  store i16 %1060, ptr %1047, align 2, !tbaa !144
  %1061 = load i16, ptr %707, align 2, !tbaa !145
  %1062 = getelementptr inbounds %struct._PixelPacket, ptr %727, i64 0, i32 1
  %1063 = load i16, ptr %1062, align 2, !tbaa !145
  %1064 = uitofp i16 %1061 to double
  %1065 = uitofp i16 %1063 to double
  %1066 = fmul double %1051, %1065
  %1067 = fmul double %1066, 0x3EF0001000100010
  %1068 = fmul double %1067, %1034
  %1069 = call double @llvm.fmuladd.f64(double %1049, double %1064, double %1068)
  %1070 = fptrunc double %1069 to float
  %1071 = fpext float %1070 to double
  %1072 = call double @llvm.fmuladd.f64(double %1045, double %1071, double 5.000000e-01)
  %1073 = fptoui double %1072 to i16
  store i16 %1073, ptr %1062, align 2, !tbaa !145
  %1074 = load i16, ptr %9, align 8, !tbaa !146
  %1075 = load i16, ptr %727, align 2, !tbaa !146
  %1076 = uitofp i16 %1074 to double
  %1077 = uitofp i16 %1075 to double
  %1078 = fmul double %1051, %1077
  %1079 = fmul double %1078, 0x3EF0001000100010
  %1080 = fmul double %1079, %1034
  %1081 = call double @llvm.fmuladd.f64(double %1049, double %1076, double %1080)
  %1082 = fptrunc double %1081 to float
  %1083 = fpext float %1082 to double
  %1084 = call double @llvm.fmuladd.f64(double %1045, double %1083, double 5.000000e-01)
  %1085 = fptoui double %1084 to i16
  store i16 %1085, ptr %727, align 2, !tbaa !146
  br label %1086

1086:                                             ; preds = %1023, %1032
  %1087 = load ptr, ptr %708, align 8, !tbaa !90
  %1088 = icmp eq ptr %1087, null
  br i1 %1088, label %1089, label %1091

1089:                                             ; preds = %1086
  %1090 = load i64, ptr %710, align 4
  store i64 %1090, ptr %10, align 8
  br label %1104

1091:                                             ; preds = %1086
  %1092 = getelementptr inbounds %struct._Image, ptr %1087, i64 0, i32 74, i32 2
  %1093 = load i64, ptr %1092, align 8, !tbaa !243
  %1094 = add nsw i64 %1093, %726
  %1095 = getelementptr inbounds %struct._Image, ptr %1087, i64 0, i32 74, i32 3
  %1096 = load i64, ptr %1095, align 8, !tbaa !244
  %1097 = add nsw i64 %1096, %716
  %1098 = getelementptr inbounds %struct._Image, ptr %1087, i64 0, i32 58
  %1099 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %1087, i32 noundef 7, i64 noundef %1094, i64 noundef %1097, ptr noundef nonnull %10, ptr noundef nonnull %1098) #24
  %1100 = getelementptr inbounds %struct._Image, ptr %1087, i64 0, i32 6
  %1101 = load i32, ptr %1100, align 8, !tbaa !245
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1103, label %1104

1103:                                             ; preds = %1091
  store i16 0, ptr %709, align 2, !tbaa !147
  br label %1104

1104:                                             ; preds = %1089, %1091, %1103
  %1105 = load i16, ptr %711, align 2, !tbaa !147
  %1106 = xor i16 %1105, -1
  %1107 = uitofp i16 %1106 to double
  %1108 = fneg double %1004
  %1109 = call double @llvm.fmuladd.f64(double %1108, double %1107, double 6.553500e+04)
  %1110 = fptrunc double %1109 to float
  %1111 = fcmp oeq float %1110, 6.553500e+04
  br i1 %1111, label %1166, label %1112

1112:                                             ; preds = %1104
  %1113 = load i16, ptr %1030, align 2, !tbaa !147
  %1114 = fpext float %1110 to double
  %1115 = uitofp i16 %1113 to double
  %1116 = fmul double %1114, 0xBDF0002000300040
  %1117 = call double @llvm.fmuladd.f64(double %1116, double %1115, double 1.000000e+00)
  %1118 = fcmp olt double %1117, 0.000000e+00
  %1119 = select i1 %1118, double 0.000000e+00, double %1117
  %1120 = fsub double 1.000000e+00, %1119
  %1121 = call double @llvm.fmuladd.f64(double %1120, double 6.553500e+04, double 5.000000e-01)
  %1122 = fptoui double %1121 to i16
  store i16 %1122, ptr %1030, align 2, !tbaa !147
  %1123 = fcmp ult double %1119, 1.000000e-15
  %1124 = fdiv double 1.000000e+00, %1119
  %1125 = select i1 %1123, double 0x430C6BF52633FFFF, double %1124
  %1126 = load i16, ptr %712, align 4, !tbaa !144
  %1127 = getelementptr inbounds %struct._PixelPacket, ptr %727, i64 0, i32 2
  %1128 = load i16, ptr %1127, align 2, !tbaa !144
  %1129 = call double @llvm.fmuladd.f64(double %1114, double 0xBEF0001000100010, double 1.000000e+00)
  %1130 = uitofp i16 %1126 to double
  %1131 = call double @llvm.fmuladd.f64(double %1115, double 0xBEF0001000100010, double 1.000000e+00)
  %1132 = uitofp i16 %1128 to double
  %1133 = fmul double %1131, %1132
  %1134 = fmul double %1133, 0x3EF0001000100010
  %1135 = fmul double %1134, %1114
  %1136 = call double @llvm.fmuladd.f64(double %1129, double %1130, double %1135)
  %1137 = fptrunc double %1136 to float
  %1138 = fpext float %1137 to double
  %1139 = call double @llvm.fmuladd.f64(double %1125, double %1138, double 5.000000e-01)
  %1140 = fptoui double %1139 to i16
  store i16 %1140, ptr %1127, align 2, !tbaa !144
  %1141 = load i16, ptr %713, align 2, !tbaa !145
  %1142 = getelementptr inbounds %struct._PixelPacket, ptr %727, i64 0, i32 1
  %1143 = load i16, ptr %1142, align 2, !tbaa !145
  %1144 = uitofp i16 %1141 to double
  %1145 = uitofp i16 %1143 to double
  %1146 = fmul double %1131, %1145
  %1147 = fmul double %1146, 0x3EF0001000100010
  %1148 = fmul double %1147, %1114
  %1149 = call double @llvm.fmuladd.f64(double %1129, double %1144, double %1148)
  %1150 = fptrunc double %1149 to float
  %1151 = fpext float %1150 to double
  %1152 = call double @llvm.fmuladd.f64(double %1125, double %1151, double 5.000000e-01)
  %1153 = fptoui double %1152 to i16
  store i16 %1153, ptr %1142, align 2, !tbaa !145
  %1154 = load i16, ptr %10, align 8, !tbaa !146
  %1155 = load i16, ptr %727, align 2, !tbaa !146
  %1156 = uitofp i16 %1154 to double
  %1157 = uitofp i16 %1155 to double
  %1158 = fmul double %1131, %1157
  %1159 = fmul double %1158, 0x3EF0001000100010
  %1160 = fmul double %1159, %1114
  %1161 = call double @llvm.fmuladd.f64(double %1129, double %1156, double %1160)
  %1162 = fptrunc double %1161 to float
  %1163 = fpext float %1162 to double
  %1164 = call double @llvm.fmuladd.f64(double %1125, double %1163, double 5.000000e-01)
  %1165 = fptoui double %1164 to i16
  store i16 %1165, ptr %727, align 2, !tbaa !146
  br label %1166

1166:                                             ; preds = %1104, %1112
  %1167 = getelementptr inbounds %struct._PixelPacket, ptr %727, i64 1
  %1168 = add i64 %726, 1
  %1169 = icmp eq i64 %726, %690
  br i1 %1169, label %1170, label %725, !llvm.loop !326

1170:                                             ; preds = %1166, %721
  %1171 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %587, ptr noundef nonnull %586) #28
  %1172 = icmp ne i32 %1171, 0
  %1173 = zext i1 %1172 to i32
  br label %1174

1174:                                             ; preds = %718, %714, %1170
  %1175 = phi i32 [ %1173, %1170 ], [ 0, %714 ], [ 0, %718 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  %1176 = add i64 %716, 1
  %1177 = icmp eq i64 %716, %682
  br i1 %1177, label %1178, label %714, !llvm.loop !327

1178:                                             ; preds = %1174, %676
  %1179 = phi i32 [ 1, %676 ], [ %1175, %1174 ]
  %1180 = call ptr @DestroyCacheView(ptr noundef %587) #24
  %1181 = call fastcc ptr @DestroyPolygonThreadSet(ptr noundef nonnull %470)
  %1182 = load i32, ptr %11, align 8, !tbaa !113
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1188, label %1184

1184:                                             ; preds = %1178, %664
  %1185 = phi i64 [ 3986, %664 ], [ 4065, %1178 ]
  %1186 = phi i32 [ %665, %664 ], [ %1179, %1178 ]
  %1187 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %1185, ptr noundef nonnull @.str.124) #24
  br label %1188

1188:                                             ; preds = %1184, %1178, %664, %469, %17
  %1189 = phi i32 [ 1, %17 ], [ 0, %469 ], [ %665, %664 ], [ %1179, %1178 ], [ %1186, %1184 ]
  ret i32 %1189
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @DrawStrokePolygon(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [5 x %struct._PrimitiveInfo], align 16
  %5 = alloca [5 x %struct._PrimitiveInfo], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4717, ptr noundef nonnull @.str.145) #24
  br label %11

11:                                               ; preds = %9, %3
  %12 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1)
  %13 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 5
  %14 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %15 = load i64, ptr %14, align 4
  store i64 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #24
  store ptr %20, ptr %16, align 8, !tbaa !88
  br label %21

21:                                               ; preds = %19, %11
  %22 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 58
  %27 = tail call ptr @CloneImage(ptr noundef nonnull %23, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %26) #24
  store ptr %27, ptr %16, align 8, !tbaa !88
  br label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 6, i32 3
  store i16 -1, ptr %29, align 2, !tbaa !176
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 7
  store double 0.000000e+00, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 14
  store i32 2, ptr %31, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !191
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %780, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 16
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %39 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 17
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 15
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 15
  %42 = getelementptr inbounds %struct._PrimitiveInfo, ptr %5, i64 0, i32 1
  %43 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %5, i64 0, i64 1
  %44 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %5, i64 0, i64 2
  %45 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %5, i64 0, i64 2, i32 0, i32 1
  %46 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %5, i64 0, i64 3, i32 0, i32 1
  %47 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %5, i64 0, i64 4, i32 2
  %48 = getelementptr inbounds %struct._PrimitiveInfo, ptr %4, i64 0, i32 1
  %49 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 1
  %50 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 2
  %51 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 2, i32 0, i32 1
  %52 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 3, i32 0, i32 1
  %53 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 4, i32 2
  br label %54

54:                                               ; preds = %35, %774
  %55 = phi i1 [ %34, %35 ], [ %779, %774 ]
  %56 = phi ptr [ %2, %35 ], [ %776, %774 ]
  %57 = getelementptr inbounds %struct._PrimitiveInfo, ptr %56, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !193
  %59 = shl i64 %58, 1
  %60 = add i64 %59, 1560
  %61 = tail call ptr @AcquireQuantumMemory(i64 noundef %60, i64 noundef 16) #27
  %62 = tail call ptr @AcquireQuantumMemory(i64 noundef %60, i64 noundef 16) #27
  %63 = add i64 %58, 2
  %64 = tail call ptr @AcquireQuantumMemory(i64 noundef %63, i64 noundef 40) #27
  %65 = icmp eq ptr %61, null
  %66 = icmp eq ptr %62, null
  %67 = select i1 %65, i1 true, i1 %66
  %68 = icmp eq ptr %64, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %720, label %70

70:                                               ; preds = %54
  %71 = mul i64 %58, 40
  %72 = tail call ptr @CopyMagickMemory(ptr noundef %64, ptr noundef %56, i64 noundef %71) #24
  %73 = getelementptr %struct._PrimitiveInfo, ptr %56, i64 %58
  %74 = getelementptr %struct._PrimitiveInfo, ptr %73, i64 -1
  %75 = load double, ptr %74, align 8, !tbaa !197
  %76 = load double, ptr %56, align 8, !tbaa !197
  %77 = fcmp oeq double %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = getelementptr %struct._PrimitiveInfo, ptr %73, i64 -1, i32 0, i32 1
  %80 = load double, ptr %79, align 8, !tbaa !198
  %81 = getelementptr inbounds %struct._PointInfo, ptr %56, i64 0, i32 1
  %82 = load double, ptr %81, align 8, !tbaa !198
  %83 = fcmp oeq double %80, %82
  br label %84

84:                                               ; preds = %78, %70
  %85 = phi i1 [ false, %70 ], [ %83, %78 ]
  %86 = load i32, ptr %36, align 8, !tbaa !60
  %87 = icmp eq i32 %86, 2
  %88 = icmp eq i32 %86, 1
  %89 = select i1 %88, i1 %85, i1 false
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %58
  %93 = getelementptr inbounds %struct._PrimitiveInfo, ptr %56, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %92, ptr noundef nonnull align 8 dereferenceable(40) %93, i64 40, i1 false), !tbaa.struct !203
  %94 = add i64 %58, 1
  br label %95

95:                                               ; preds = %91, %84
  %96 = phi i64 [ %94, %91 ], [ %58, %84 ]
  %97 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %96, i32 2
  store i32 0, ptr %97, align 8, !tbaa !191
  %98 = icmp sgt i64 %96, 1
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load double, ptr %64, align 8, !tbaa !197
  %101 = getelementptr inbounds %struct._PointInfo, ptr %64, i64 0, i32 1
  %102 = load double, ptr %101, align 8, !tbaa !198
  br label %103

103:                                              ; preds = %99, %116
  %104 = phi i64 [ 1, %99 ], [ %117, %116 ]
  %105 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !197
  %107 = fsub double %106, %100
  %108 = getelementptr inbounds %struct._PointInfo, ptr %105, i64 0, i32 1
  %109 = load double, ptr %108, align 8, !tbaa !198
  %110 = fsub double %109, %102
  %111 = tail call double @llvm.fabs.f64(double %107)
  %112 = fcmp ult double %111, 1.000000e-15
  %113 = tail call double @llvm.fabs.f64(double %110)
  %114 = fcmp ult double %113, 1.000000e-15
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %116, label %119

116:                                              ; preds = %103
  %117 = add nuw nsw i64 %104, 1
  %118 = icmp eq i64 %117, %96
  br i1 %118, label %119, label %103, !llvm.loop !328

119:                                              ; preds = %116, %103, %95
  %120 = phi i64 [ 1, %95 ], [ %96, %116 ], [ %104, %103 ]
  %121 = phi double [ 0.000000e+00, %95 ], [ %110, %103 ], [ %110, %116 ]
  %122 = phi double [ 0.000000e+00, %95 ], [ %107, %103 ], [ %107, %116 ]
  %123 = icmp eq i64 %120, %96
  %124 = add nsw i64 %96, -1
  %125 = select i1 %123, i64 %124, i64 %120
  %126 = fcmp olt double %122, 0.000000e+00
  %127 = select i1 %126, double -1.000000e+00, double 1.000000e+00
  %128 = fmul double %122, %127
  %129 = fcmp oge double %128, 1.000000e-10
  %130 = fdiv double 1.000000e+00, %122
  %131 = fmul double %127, 1.000000e+10
  %132 = select i1 %129, double %130, double %131
  %133 = fmul double %121, %132
  %134 = fcmp olt double %133, 0.000000e+00
  %135 = select i1 %134, double -1.000000e+00, double 1.000000e+00
  %136 = fmul double %133, %135
  %137 = fcmp oge double %136, 1.000000e-10
  %138 = fdiv double 1.000000e+00, %133
  %139 = fmul double %135, 1.000000e+10
  %140 = select i1 %137, double %138, double %139
  %141 = fneg double %140
  %142 = tail call double @ExpandAffine(ptr noundef nonnull %37) #24
  %143 = load double, ptr %38, align 8, !tbaa !56
  %144 = fmul double %142, %143
  %145 = fmul double %144, 5.000000e-01
  %146 = load i64, ptr %39, align 8, !tbaa !61
  %147 = mul i64 %146, %146
  %148 = uitofp i64 %147 to double
  %149 = fmul double %145, %148
  %150 = fmul double %145, %149
  %151 = load i32, ptr %40, align 4, !tbaa !59
  %152 = icmp ne i32 %151, 3
  %153 = select i1 %152, i1 true, i1 %85
  br i1 %153, label %238, label %154

154:                                              ; preds = %119
  %155 = icmp sgt i64 %96, 1
  br i1 %155, label %156, label %176

156:                                              ; preds = %154
  %157 = load double, ptr %64, align 8, !tbaa !197
  %158 = getelementptr inbounds %struct._PointInfo, ptr %64, i64 0, i32 1
  %159 = load double, ptr %158, align 8, !tbaa !198
  br label %160

160:                                              ; preds = %156, %173
  %161 = phi i64 [ 1, %156 ], [ %174, %173 ]
  %162 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !197
  %164 = fsub double %157, %163
  %165 = getelementptr inbounds %struct._PointInfo, ptr %162, i64 0, i32 1
  %166 = load double, ptr %165, align 8, !tbaa !198
  %167 = fsub double %159, %166
  %168 = tail call double @llvm.fabs.f64(double %164)
  %169 = fcmp ult double %168, 1.000000e-15
  %170 = tail call double @llvm.fabs.f64(double %167)
  %171 = fcmp ult double %170, 1.000000e-15
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %176

173:                                              ; preds = %160
  %174 = add nuw nsw i64 %161, 1
  %175 = icmp eq i64 %174, %96
  br i1 %175, label %176, label %160, !llvm.loop !329

176:                                              ; preds = %173, %160, %154
  %177 = phi i64 [ 1, %154 ], [ %96, %173 ], [ %161, %160 ]
  %178 = phi double [ 0.000000e+00, %154 ], [ %164, %160 ], [ %164, %173 ]
  %179 = phi double [ 0.000000e+00, %154 ], [ %167, %160 ], [ %167, %173 ]
  %180 = icmp eq i64 %177, %96
  %181 = select i1 %180, i64 %124, i64 %177
  %182 = tail call double @hypot(double noundef %178, double noundef %179) #24
  %183 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %181
  %184 = load double, ptr %183, align 8, !tbaa !197
  %185 = fadd double %145, %182
  %186 = fmul double %178, %185
  %187 = fdiv double %186, %182
  %188 = fadd double %184, %187
  store double %188, ptr %64, align 8, !tbaa !197
  %189 = getelementptr inbounds %struct._PointInfo, ptr %183, i64 0, i32 1
  %190 = load double, ptr %189, align 8, !tbaa !198
  %191 = fmul double %179, %185
  %192 = fdiv double %191, %182
  %193 = fadd double %190, %192
  %194 = getelementptr inbounds %struct._PointInfo, ptr %64, i64 0, i32 1
  store double %193, ptr %194, align 8, !tbaa !198
  %195 = add nsw i64 %96, -2
  %196 = icmp sgt i64 %96, 1
  br i1 %196, label %197, label %219

197:                                              ; preds = %176
  %198 = getelementptr %struct._PrimitiveInfo, ptr %64, i64 %96
  %199 = getelementptr %struct._PrimitiveInfo, ptr %198, i64 -1
  %200 = load double, ptr %199, align 8, !tbaa !197
  %201 = getelementptr %struct._PrimitiveInfo, ptr %198, i64 -1, i32 0, i32 1
  %202 = load double, ptr %201, align 8, !tbaa !198
  br label %203

203:                                              ; preds = %197, %216
  %204 = phi i64 [ %195, %197 ], [ %217, %216 ]
  %205 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %204
  %206 = load double, ptr %205, align 8, !tbaa !197
  %207 = fsub double %200, %206
  %208 = getelementptr inbounds %struct._PointInfo, ptr %205, i64 0, i32 1
  %209 = load double, ptr %208, align 8, !tbaa !198
  %210 = fsub double %202, %209
  %211 = tail call double @llvm.fabs.f64(double %207)
  %212 = fcmp ult double %211, 1.000000e-15
  %213 = tail call double @llvm.fabs.f64(double %210)
  %214 = fcmp ult double %213, 1.000000e-15
  %215 = select i1 %212, i1 %214, i1 false
  br i1 %215, label %216, label %219

216:                                              ; preds = %203
  %217 = add nsw i64 %204, -1
  %218 = icmp sgt i64 %204, 0
  br i1 %218, label %203, label %219, !llvm.loop !330

219:                                              ; preds = %216, %203, %176
  %220 = phi i64 [ %195, %176 ], [ -1, %216 ], [ %204, %203 ]
  %221 = phi double [ %178, %176 ], [ %207, %203 ], [ %207, %216 ]
  %222 = phi double [ %179, %176 ], [ %210, %203 ], [ %210, %216 ]
  %223 = tail call double @hypot(double noundef %221, double noundef %222) #24
  %224 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %220
  %225 = load double, ptr %224, align 8, !tbaa !197
  %226 = fadd double %145, %223
  %227 = fmul double %221, %226
  %228 = fdiv double %227, %223
  %229 = fadd double %225, %228
  %230 = getelementptr %struct._PrimitiveInfo, ptr %64, i64 %96
  %231 = getelementptr %struct._PrimitiveInfo, ptr %230, i64 -1
  store double %229, ptr %231, align 8, !tbaa !197
  %232 = getelementptr inbounds %struct._PointInfo, ptr %224, i64 0, i32 1
  %233 = load double, ptr %232, align 8, !tbaa !198
  %234 = fmul double %222, %226
  %235 = fdiv double %234, %223
  %236 = fadd double %233, %235
  %237 = getelementptr %struct._PrimitiveInfo, ptr %230, i64 -1, i32 0, i32 1
  store double %236, ptr %237, align 8, !tbaa !198
  br label %238

238:                                              ; preds = %219, %119
  %239 = fmul double %145, %145
  %240 = tail call double @llvm.fmuladd.f64(double %140, double %140, double 1.000000e+00)
  %241 = fdiv double %239, %240
  %242 = tail call double @sqrt(double noundef %241) #24
  %243 = fmul double %242, %141
  %244 = fneg double %122
  %245 = fmul double %243, %244
  %246 = tail call double @llvm.fmuladd.f64(double %121, double %242, double %245)
  %247 = fcmp ogt double %246, 0.000000e+00
  %248 = load double, ptr %64, align 8, !tbaa !197
  %249 = getelementptr inbounds %struct._PointInfo, ptr %64, i64 0, i32 1
  %250 = load double, ptr %249, align 8, !tbaa !198
  %251 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %125
  %252 = load double, ptr %251, align 8, !tbaa !197
  %253 = getelementptr inbounds %struct._PointInfo, ptr %251, i64 0, i32 1
  %254 = load double, ptr %253, align 8, !tbaa !198
  br i1 %247, label %255, label %264

255:                                              ; preds = %238
  %256 = fsub double %248, %242
  %257 = tail call double @llvm.fmuladd.f64(double %242, double %140, double %250)
  %258 = fsub double %252, %242
  %259 = tail call double @llvm.fmuladd.f64(double %242, double %140, double %254)
  %260 = fadd double %242, %248
  %261 = tail call double @llvm.fmuladd.f64(double %242, double %141, double %250)
  %262 = fadd double %242, %252
  %263 = tail call double @llvm.fmuladd.f64(double %242, double %141, double %254)
  br label %273

264:                                              ; preds = %238
  %265 = fadd double %242, %248
  %266 = fadd double %243, %250
  %267 = fadd double %242, %252
  %268 = fadd double %243, %254
  %269 = fsub double %248, %242
  %270 = fsub double %250, %243
  %271 = fsub double %252, %242
  %272 = fsub double %254, %243
  br label %273

273:                                              ; preds = %264, %255
  %274 = phi double [ %257, %255 ], [ %266, %264 ]
  %275 = phi double [ %256, %255 ], [ %265, %264 ]
  %276 = phi double [ %259, %255 ], [ %268, %264 ]
  %277 = phi double [ %258, %255 ], [ %267, %264 ]
  %278 = phi double [ %261, %255 ], [ %270, %264 ]
  %279 = phi double [ %260, %255 ], [ %269, %264 ]
  %280 = phi double [ %263, %255 ], [ %272, %264 ]
  %281 = phi double [ %262, %255 ], [ %271, %264 ]
  store double %279, ptr %62, align 8, !tbaa.struct !131
  %282 = getelementptr inbounds i8, ptr %62, i64 8
  store double %278, ptr %282, align 8, !tbaa.struct !132
  store double %275, ptr %61, align 8, !tbaa.struct !131
  %283 = getelementptr inbounds i8, ptr %61, i64 8
  store double %274, ptr %283, align 8, !tbaa.struct !132
  %284 = add nsw i64 %125, 1
  %285 = icmp slt i64 %284, %96
  br i1 %285, label %286, label %654

286:                                              ; preds = %273
  %287 = fdiv double 1.000000e+00, %145
  %288 = fdiv double 1.000000e+00, %145
  br label %289

289:                                              ; preds = %286, %634
  %290 = phi i64 [ %284, %286 ], [ %652, %634 ]
  %291 = phi i64 [ 1, %286 ], [ %651, %634 ]
  %292 = phi i64 [ 1, %286 ], [ %650, %634 ]
  %293 = phi i64 [ %125, %286 ], [ %649, %634 ]
  %294 = phi i64 [ %60, %286 ], [ %648, %634 ]
  %295 = phi ptr [ %62, %286 ], [ %647, %634 ]
  %296 = phi ptr [ %61, %286 ], [ %646, %634 ]
  %297 = phi double [ %281, %286 ], [ %645, %634 ]
  %298 = phi double [ %280, %286 ], [ %644, %634 ]
  %299 = phi double [ %279, %286 ], [ %643, %634 ]
  %300 = phi double [ %278, %286 ], [ %642, %634 ]
  %301 = phi double [ %277, %286 ], [ %641, %634 ]
  %302 = phi double [ %276, %286 ], [ %640, %634 ]
  %303 = phi double [ %275, %286 ], [ %639, %634 ]
  %304 = phi double [ %274, %286 ], [ %638, %634 ]
  %305 = phi double [ %133, %286 ], [ %637, %634 ]
  %306 = phi double [ %122, %286 ], [ %636, %634 ]
  %307 = phi double [ %121, %286 ], [ %635, %634 ]
  %308 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %290
  %309 = load double, ptr %308, align 8, !tbaa !197
  %310 = getelementptr inbounds %struct._PrimitiveInfo, ptr %64, i64 %293
  %311 = load double, ptr %310, align 8, !tbaa !197
  %312 = fsub double %309, %311
  %313 = getelementptr inbounds %struct._PointInfo, ptr %308, i64 0, i32 1
  %314 = load double, ptr %313, align 8, !tbaa !198
  %315 = getelementptr inbounds %struct._PointInfo, ptr %310, i64 0, i32 1
  %316 = load double, ptr %315, align 8, !tbaa !198
  %317 = fsub double %314, %316
  %318 = fmul double %317, %317
  %319 = tail call double @llvm.fmuladd.f64(double %312, double %312, double %318)
  %320 = fcmp olt double %319, 2.500000e-01
  br i1 %320, label %634, label %321

321:                                              ; preds = %289
  %322 = fcmp olt double %312, 0.000000e+00
  %323 = select i1 %322, double -1.000000e+00, double 1.000000e+00
  %324 = fmul double %312, %323
  %325 = fcmp oge double %324, 1.000000e-10
  %326 = fdiv double 1.000000e+00, %312
  %327 = fmul double %323, 1.000000e+10
  %328 = select i1 %325, double %326, double %327
  %329 = fmul double %317, %328
  %330 = fcmp olt double %329, 0.000000e+00
  %331 = select i1 %330, double -1.000000e+00, double 1.000000e+00
  %332 = fmul double %329, %331
  %333 = fcmp oge double %332, 1.000000e-10
  %334 = fdiv double 1.000000e+00, %329
  %335 = fmul double %331, 1.000000e+10
  %336 = select i1 %333, double %334, double %335
  %337 = fneg double %336
  %338 = tail call double @llvm.fmuladd.f64(double %336, double %336, double 1.000000e+00)
  %339 = fdiv double %239, %338
  %340 = tail call double @sqrt(double noundef %339) #24
  %341 = fmul double %340, %337
  %342 = fneg double %312
  %343 = fmul double %341, %342
  %344 = tail call double @llvm.fmuladd.f64(double %317, double %340, double %343)
  %345 = fcmp ogt double %344, 0.000000e+00
  %346 = load double, ptr %310, align 8, !tbaa !197
  %347 = load double, ptr %315, align 8, !tbaa !198
  %348 = load double, ptr %308, align 8, !tbaa !197
  %349 = load double, ptr %313, align 8, !tbaa !198
  br i1 %345, label %350, label %359

350:                                              ; preds = %321
  %351 = fsub double %346, %340
  %352 = fsub double %347, %341
  %353 = fsub double %348, %340
  %354 = fsub double %349, %341
  %355 = fadd double %340, %346
  %356 = fadd double %341, %347
  %357 = fadd double %340, %348
  %358 = fadd double %341, %349
  br label %368

359:                                              ; preds = %321
  %360 = fadd double %340, %346
  %361 = fadd double %341, %347
  %362 = fadd double %340, %348
  %363 = fadd double %341, %349
  %364 = fsub double %346, %340
  %365 = fsub double %347, %341
  %366 = fsub double %348, %340
  %367 = fsub double %349, %341
  br label %368

368:                                              ; preds = %359, %350
  %369 = phi double [ %352, %350 ], [ %361, %359 ]
  %370 = phi double [ %351, %350 ], [ %360, %359 ]
  %371 = phi double [ %354, %350 ], [ %363, %359 ]
  %372 = phi double [ %353, %350 ], [ %362, %359 ]
  %373 = phi double [ %356, %350 ], [ %365, %359 ]
  %374 = phi double [ %355, %350 ], [ %364, %359 ]
  %375 = phi double [ %358, %350 ], [ %367, %359 ]
  %376 = phi double [ %357, %350 ], [ %366, %359 ]
  %377 = fsub double %305, %329
  %378 = tail call double @llvm.fabs.f64(double %377)
  %379 = fcmp olt double %378, 1.000000e-15
  br i1 %379, label %396, label %380

380:                                              ; preds = %368
  %381 = fneg double %304
  %382 = tail call double @llvm.fmuladd.f64(double %305, double %303, double %381)
  %383 = fneg double %329
  %384 = tail call double @llvm.fmuladd.f64(double %383, double %372, double %382)
  %385 = fadd double %371, %384
  %386 = fdiv double %385, %377
  %387 = fsub double %386, %303
  %388 = tail call double @llvm.fmuladd.f64(double %305, double %387, double %304)
  %389 = fneg double %300
  %390 = tail call double @llvm.fmuladd.f64(double %305, double %299, double %389)
  %391 = tail call double @llvm.fmuladd.f64(double %383, double %376, double %390)
  %392 = fadd double %375, %391
  %393 = fdiv double %392, %377
  %394 = fsub double %393, %299
  %395 = tail call double @llvm.fmuladd.f64(double %305, double %394, double %300)
  br label %396

396:                                              ; preds = %380, %368
  %397 = phi double [ %388, %380 ], [ %302, %368 ]
  %398 = phi double [ %386, %380 ], [ %301, %368 ]
  %399 = phi double [ %395, %380 ], [ %298, %368 ]
  %400 = phi double [ %393, %380 ], [ %297, %368 ]
  %401 = add i64 %294, -1560
  %402 = icmp slt i64 %291, %401
  br i1 %402, label %410, label %403

403:                                              ; preds = %396
  %404 = add i64 %294, 1560
  %405 = tail call ptr @ResizeQuantumMemory(ptr noundef %296, i64 noundef %404, i64 noundef 16) #30
  %406 = tail call ptr @ResizeQuantumMemory(ptr noundef %295, i64 noundef %404, i64 noundef 16) #30
  %407 = icmp eq ptr %405, null
  %408 = icmp eq ptr %406, null
  %409 = select i1 %407, i1 true, i1 %408
  br i1 %409, label %717, label %410

410:                                              ; preds = %403, %396
  %411 = phi ptr [ %405, %403 ], [ %296, %396 ]
  %412 = phi ptr [ %406, %403 ], [ %295, %396 ]
  %413 = phi i64 [ %404, %403 ], [ %294, %396 ]
  %414 = fneg double %306
  %415 = fmul double %317, %414
  %416 = tail call double @llvm.fmuladd.f64(double %312, double %307, double %415)
  %417 = fcmp ugt double %416, 0.000000e+00
  %418 = load i32, ptr %36, align 8, !tbaa !60
  br i1 %417, label %526, label %419

419:                                              ; preds = %410
  switch i32 %418, label %634 [
    i32 3, label %420
    i32 1, label %440
    i32 2, label %463
  ]

420:                                              ; preds = %419
  %421 = add nsw i64 %291, 1
  %422 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %291
  store double %297, ptr %422, align 8, !tbaa.struct !131
  %423 = getelementptr inbounds i8, ptr %422, i64 8
  store double %298, ptr %423, align 8, !tbaa.struct !132
  %424 = add nsw i64 %291, 2
  %425 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %421
  store double %374, ptr %425, align 8, !tbaa.struct !131
  %426 = getelementptr inbounds i8, ptr %425, i64 8
  store double %373, ptr %426, align 8, !tbaa.struct !132
  %427 = fsub double %400, %398
  %428 = fsub double %399, %397
  %429 = fmul double %428, %428
  %430 = tail call double @llvm.fmuladd.f64(double %427, double %427, double %429)
  %431 = fcmp ugt double %430, %150
  %432 = add nsw i64 %292, 1
  %433 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %292
  %434 = getelementptr inbounds i8, ptr %433, i64 8
  br i1 %431, label %436, label %435

435:                                              ; preds = %420
  store double %398, ptr %433, align 8, !tbaa.struct !131
  store double %397, ptr %434, align 8, !tbaa.struct !132
  br label %634

436:                                              ; preds = %420
  store double %301, ptr %433, align 8, !tbaa.struct !131
  store double %302, ptr %434, align 8, !tbaa.struct !132
  %437 = add nsw i64 %292, 2
  %438 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %432
  store double %370, ptr %438, align 8, !tbaa.struct !131
  %439 = getelementptr inbounds i8, ptr %438, i64 8
  store double %369, ptr %439, align 8, !tbaa.struct !132
  br label %634

440:                                              ; preds = %419
  %441 = fsub double %400, %398
  %442 = fsub double %399, %397
  %443 = fmul double %442, %442
  %444 = tail call double @llvm.fmuladd.f64(double %441, double %441, double %443)
  %445 = fcmp ugt double %444, %150
  %446 = add nsw i64 %291, 1
  %447 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %291
  %448 = getelementptr inbounds i8, ptr %447, i64 8
  br i1 %445, label %453, label %449

449:                                              ; preds = %440
  store double %400, ptr %447, align 8, !tbaa.struct !131
  store double %399, ptr %448, align 8, !tbaa.struct !132
  %450 = add nsw i64 %292, 1
  %451 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %292
  store double %398, ptr %451, align 8, !tbaa.struct !131
  %452 = getelementptr inbounds i8, ptr %451, i64 8
  store double %397, ptr %452, align 8, !tbaa.struct !132
  br label %634

453:                                              ; preds = %440
  store double %297, ptr %447, align 8, !tbaa.struct !131
  store double %298, ptr %448, align 8, !tbaa.struct !132
  %454 = add nsw i64 %291, 2
  %455 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %446
  store double %374, ptr %455, align 8, !tbaa.struct !131
  %456 = getelementptr inbounds i8, ptr %455, i64 8
  store double %373, ptr %456, align 8, !tbaa.struct !132
  %457 = add nsw i64 %292, 1
  %458 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %292
  store double %301, ptr %458, align 8, !tbaa.struct !131
  %459 = getelementptr inbounds i8, ptr %458, i64 8
  store double %302, ptr %459, align 8, !tbaa.struct !132
  %460 = add nsw i64 %292, 2
  %461 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %457
  store double %370, ptr %461, align 8, !tbaa.struct !131
  %462 = getelementptr inbounds i8, ptr %461, i64 8
  store double %369, ptr %462, align 8, !tbaa.struct !132
  br label %634

463:                                              ; preds = %419
  %464 = fsub double %400, %398
  %465 = fsub double %399, %397
  %466 = fmul double %465, %465
  %467 = tail call double @llvm.fmuladd.f64(double %464, double %464, double %466)
  %468 = fcmp ugt double %467, %150
  %469 = add nsw i64 %292, 1
  %470 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %292
  %471 = getelementptr inbounds i8, ptr %470, i64 8
  br i1 %468, label %473, label %472

472:                                              ; preds = %463
  store double %398, ptr %470, align 8, !tbaa.struct !131
  store double %397, ptr %471, align 8, !tbaa.struct !132
  br label %477

473:                                              ; preds = %463
  store double %301, ptr %470, align 8, !tbaa.struct !131
  store double %302, ptr %471, align 8, !tbaa.struct !132
  %474 = add nsw i64 %292, 2
  %475 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %469
  store double %370, ptr %475, align 8, !tbaa.struct !131
  %476 = getelementptr inbounds i8, ptr %475, i64 8
  store double %369, ptr %476, align 8, !tbaa.struct !132
  br label %477

477:                                              ; preds = %473, %472
  %478 = phi i64 [ %469, %472 ], [ %474, %473 ]
  %479 = load double, ptr %310, align 8, !tbaa.struct !131
  %480 = load double, ptr %315, align 8, !tbaa.struct !132
  %481 = fsub double %298, %480
  %482 = fsub double %297, %479
  %483 = tail call double @atan2(double noundef %481, double noundef %482) #24
  %484 = fsub double %373, %480
  %485 = fsub double %374, %479
  %486 = tail call double @atan2(double noundef %484, double noundef %485) #24
  %487 = fcmp olt double %486, %483
  %488 = fadd double %486, 0x401921FB54442D18
  %489 = select i1 %487, double %488, double %486
  %490 = fsub double %489, %483
  %491 = tail call double @sqrt(double noundef %287) #24
  %492 = fmul double %491, 2.000000e+00
  %493 = fdiv double %490, %492
  %494 = tail call double @llvm.ceil.f64(double %493)
  %495 = fptoui double %494 to i64
  %496 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %291
  store double %297, ptr %496, align 8, !tbaa !124
  %497 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %291, i32 1
  store double %298, ptr %497, align 8, !tbaa !125
  %498 = add nsw i64 %291, 1
  %499 = icmp sgt i64 %495, 1
  br i1 %499, label %500, label %520

500:                                              ; preds = %477
  %501 = uitofp i64 %495 to double
  br label %502

502:                                              ; preds = %500, %502
  %503 = phi i64 [ %498, %500 ], [ %518, %502 ]
  %504 = phi i64 [ 1, %500 ], [ %517, %502 ]
  %505 = sitofp i64 %504 to double
  %506 = fmul double %490, %505
  %507 = fdiv double %506, %501
  %508 = fadd double %483, %507
  %509 = tail call double @fmod(double noundef %508, double noundef 0x401921FB54442D18) #24
  %510 = tail call double @cos(double noundef %509) #24
  %511 = tail call double @llvm.fmuladd.f64(double %145, double %510, double %479)
  %512 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %503
  store double %511, ptr %512, align 8, !tbaa !124
  %513 = tail call double @fmod(double noundef %508, double noundef 0x401921FB54442D18) #24
  %514 = tail call double @sin(double noundef %513) #24
  %515 = tail call double @llvm.fmuladd.f64(double %145, double %514, double %480)
  %516 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %503, i32 1
  store double %515, ptr %516, align 8, !tbaa !125
  %517 = add nuw nsw i64 %504, 1
  %518 = add nsw i64 %503, 1
  %519 = icmp eq i64 %517, %495
  br i1 %519, label %520, label %502, !llvm.loop !331

520:                                              ; preds = %502, %477
  %521 = phi i64 [ %291, %477 ], [ %503, %502 ]
  %522 = phi i64 [ %498, %477 ], [ %518, %502 ]
  %523 = add nsw i64 %521, 2
  %524 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %522
  store double %374, ptr %524, align 8, !tbaa.struct !131
  %525 = getelementptr inbounds i8, ptr %524, i64 8
  store double %373, ptr %525, align 8, !tbaa.struct !132
  br label %634

526:                                              ; preds = %410
  switch i32 %418, label %634 [
    i32 3, label %527
    i32 1, label %547
    i32 2, label %570
  ]

527:                                              ; preds = %526
  %528 = add nsw i64 %292, 1
  %529 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %292
  store double %301, ptr %529, align 8, !tbaa.struct !131
  %530 = getelementptr inbounds i8, ptr %529, i64 8
  store double %302, ptr %530, align 8, !tbaa.struct !132
  %531 = add nsw i64 %292, 2
  %532 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %528
  store double %370, ptr %532, align 8, !tbaa.struct !131
  %533 = getelementptr inbounds i8, ptr %532, i64 8
  store double %369, ptr %533, align 8, !tbaa.struct !132
  %534 = fsub double %400, %398
  %535 = fsub double %399, %397
  %536 = fmul double %535, %535
  %537 = tail call double @llvm.fmuladd.f64(double %534, double %534, double %536)
  %538 = fcmp ugt double %537, %150
  %539 = add nsw i64 %291, 1
  %540 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %291
  %541 = getelementptr inbounds i8, ptr %540, i64 8
  br i1 %538, label %543, label %542

542:                                              ; preds = %527
  store double %400, ptr %540, align 8, !tbaa.struct !131
  store double %399, ptr %541, align 8, !tbaa.struct !132
  br label %634

543:                                              ; preds = %527
  store double %297, ptr %540, align 8, !tbaa.struct !131
  store double %298, ptr %541, align 8, !tbaa.struct !132
  %544 = add nsw i64 %291, 2
  %545 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %539
  store double %374, ptr %545, align 8, !tbaa.struct !131
  %546 = getelementptr inbounds i8, ptr %545, i64 8
  store double %373, ptr %546, align 8, !tbaa.struct !132
  br label %634

547:                                              ; preds = %526
  %548 = fsub double %400, %398
  %549 = fsub double %399, %397
  %550 = fmul double %549, %549
  %551 = tail call double @llvm.fmuladd.f64(double %548, double %548, double %550)
  %552 = fcmp ugt double %551, %150
  %553 = add nsw i64 %291, 1
  %554 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %291
  %555 = getelementptr inbounds i8, ptr %554, i64 8
  br i1 %552, label %560, label %556

556:                                              ; preds = %547
  store double %400, ptr %554, align 8, !tbaa.struct !131
  store double %399, ptr %555, align 8, !tbaa.struct !132
  %557 = add nsw i64 %292, 1
  %558 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %292
  store double %398, ptr %558, align 8, !tbaa.struct !131
  %559 = getelementptr inbounds i8, ptr %558, i64 8
  store double %397, ptr %559, align 8, !tbaa.struct !132
  br label %634

560:                                              ; preds = %547
  store double %297, ptr %554, align 8, !tbaa.struct !131
  store double %298, ptr %555, align 8, !tbaa.struct !132
  %561 = add nsw i64 %291, 2
  %562 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %553
  store double %374, ptr %562, align 8, !tbaa.struct !131
  %563 = getelementptr inbounds i8, ptr %562, i64 8
  store double %373, ptr %563, align 8, !tbaa.struct !132
  %564 = add nsw i64 %292, 1
  %565 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %292
  store double %301, ptr %565, align 8, !tbaa.struct !131
  %566 = getelementptr inbounds i8, ptr %565, i64 8
  store double %302, ptr %566, align 8, !tbaa.struct !132
  %567 = add nsw i64 %292, 2
  %568 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %564
  store double %370, ptr %568, align 8, !tbaa.struct !131
  %569 = getelementptr inbounds i8, ptr %568, i64 8
  store double %369, ptr %569, align 8, !tbaa.struct !132
  br label %634

570:                                              ; preds = %526
  %571 = fsub double %400, %398
  %572 = fsub double %399, %397
  %573 = fmul double %572, %572
  %574 = tail call double @llvm.fmuladd.f64(double %571, double %571, double %573)
  %575 = fcmp ugt double %574, %150
  %576 = add nsw i64 %291, 1
  %577 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %291
  %578 = getelementptr inbounds i8, ptr %577, i64 8
  br i1 %575, label %580, label %579

579:                                              ; preds = %570
  store double %400, ptr %577, align 8, !tbaa.struct !131
  store double %399, ptr %578, align 8, !tbaa.struct !132
  br label %584

580:                                              ; preds = %570
  store double %297, ptr %577, align 8, !tbaa.struct !131
  store double %298, ptr %578, align 8, !tbaa.struct !132
  %581 = add nsw i64 %291, 2
  %582 = getelementptr inbounds %struct._PointInfo, ptr %412, i64 %576
  store double %374, ptr %582, align 8, !tbaa.struct !131
  %583 = getelementptr inbounds i8, ptr %582, i64 8
  store double %373, ptr %583, align 8, !tbaa.struct !132
  br label %584

584:                                              ; preds = %580, %579
  %585 = phi i64 [ %576, %579 ], [ %581, %580 ]
  %586 = load double, ptr %310, align 8, !tbaa.struct !131
  %587 = load double, ptr %315, align 8, !tbaa.struct !132
  %588 = fsub double %302, %587
  %589 = fsub double %301, %586
  %590 = tail call double @atan2(double noundef %588, double noundef %589) #24
  %591 = fsub double %369, %587
  %592 = fsub double %370, %586
  %593 = tail call double @atan2(double noundef %591, double noundef %592) #24
  %594 = fcmp olt double %590, %593
  %595 = fadd double %590, 0x401921FB54442D18
  %596 = select i1 %594, double %595, double %590
  %597 = fsub double %596, %593
  %598 = tail call double @sqrt(double noundef %288) #24
  %599 = fmul double %598, 2.000000e+00
  %600 = fdiv double %597, %599
  %601 = tail call double @llvm.ceil.f64(double %600)
  %602 = fptoui double %601 to i64
  %603 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %292
  store double %301, ptr %603, align 8, !tbaa.struct !131
  %604 = getelementptr inbounds i8, ptr %603, i64 8
  store double %302, ptr %604, align 8, !tbaa.struct !132
  %605 = add nsw i64 %292, 1
  %606 = icmp sgt i64 %602, 1
  br i1 %606, label %607, label %628

607:                                              ; preds = %584
  %608 = fsub double %593, %596
  %609 = uitofp i64 %602 to double
  br label %610

610:                                              ; preds = %607, %610
  %611 = phi i64 [ %605, %607 ], [ %626, %610 ]
  %612 = phi i64 [ 1, %607 ], [ %625, %610 ]
  %613 = sitofp i64 %612 to double
  %614 = fmul double %608, %613
  %615 = fdiv double %614, %609
  %616 = fadd double %596, %615
  %617 = tail call double @fmod(double noundef %616, double noundef 0x401921FB54442D18) #24
  %618 = tail call double @cos(double noundef %617) #24
  %619 = tail call double @llvm.fmuladd.f64(double %145, double %618, double %586)
  %620 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %611
  store double %619, ptr %620, align 8, !tbaa !124
  %621 = tail call double @fmod(double noundef %616, double noundef 0x401921FB54442D18) #24
  %622 = tail call double @sin(double noundef %621) #24
  %623 = tail call double @llvm.fmuladd.f64(double %145, double %622, double %587)
  %624 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %611, i32 1
  store double %623, ptr %624, align 8, !tbaa !125
  %625 = add nuw nsw i64 %612, 1
  %626 = add nsw i64 %611, 1
  %627 = icmp eq i64 %625, %602
  br i1 %627, label %628, label %610, !llvm.loop !332

628:                                              ; preds = %610, %584
  %629 = phi i64 [ %292, %584 ], [ %611, %610 ]
  %630 = phi i64 [ %605, %584 ], [ %626, %610 ]
  %631 = add nsw i64 %629, 2
  %632 = getelementptr inbounds %struct._PointInfo, ptr %411, i64 %630
  store double %370, ptr %632, align 8, !tbaa.struct !131
  %633 = getelementptr inbounds i8, ptr %632, i64 8
  store double %369, ptr %633, align 8, !tbaa.struct !132
  br label %634

634:                                              ; preds = %628, %560, %556, %543, %542, %526, %520, %453, %449, %436, %435, %419, %289
  %635 = phi double [ %307, %289 ], [ %317, %628 ], [ %317, %543 ], [ %317, %542 ], [ %317, %560 ], [ %317, %556 ], [ %317, %526 ], [ %317, %520 ], [ %317, %436 ], [ %317, %435 ], [ %317, %453 ], [ %317, %449 ], [ %317, %419 ]
  %636 = phi double [ %306, %289 ], [ %312, %628 ], [ %312, %543 ], [ %312, %542 ], [ %312, %560 ], [ %312, %556 ], [ %312, %526 ], [ %312, %520 ], [ %312, %436 ], [ %312, %435 ], [ %312, %453 ], [ %312, %449 ], [ %312, %419 ]
  %637 = phi double [ %305, %289 ], [ %329, %628 ], [ %329, %543 ], [ %329, %542 ], [ %329, %560 ], [ %329, %556 ], [ %329, %526 ], [ %329, %520 ], [ %329, %436 ], [ %329, %435 ], [ %329, %453 ], [ %329, %449 ], [ %329, %419 ]
  %638 = phi double [ %304, %289 ], [ %369, %628 ], [ %369, %543 ], [ %369, %542 ], [ %369, %560 ], [ %369, %556 ], [ %369, %526 ], [ %369, %520 ], [ %369, %436 ], [ %369, %435 ], [ %369, %453 ], [ %369, %449 ], [ %369, %419 ]
  %639 = phi double [ %303, %289 ], [ %370, %628 ], [ %370, %543 ], [ %370, %542 ], [ %370, %560 ], [ %370, %556 ], [ %370, %526 ], [ %370, %520 ], [ %370, %436 ], [ %370, %435 ], [ %370, %453 ], [ %370, %449 ], [ %370, %419 ]
  %640 = phi double [ %302, %289 ], [ %371, %628 ], [ %371, %543 ], [ %371, %542 ], [ %371, %560 ], [ %371, %556 ], [ %371, %526 ], [ %371, %520 ], [ %371, %436 ], [ %371, %435 ], [ %371, %453 ], [ %371, %449 ], [ %371, %419 ]
  %641 = phi double [ %301, %289 ], [ %372, %628 ], [ %372, %543 ], [ %372, %542 ], [ %372, %560 ], [ %372, %556 ], [ %372, %526 ], [ %372, %520 ], [ %372, %436 ], [ %372, %435 ], [ %372, %453 ], [ %372, %449 ], [ %372, %419 ]
  %642 = phi double [ %300, %289 ], [ %373, %628 ], [ %373, %543 ], [ %373, %542 ], [ %373, %560 ], [ %373, %556 ], [ %373, %526 ], [ %373, %520 ], [ %373, %436 ], [ %373, %435 ], [ %373, %453 ], [ %373, %449 ], [ %373, %419 ]
  %643 = phi double [ %299, %289 ], [ %374, %628 ], [ %374, %543 ], [ %374, %542 ], [ %374, %560 ], [ %374, %556 ], [ %374, %526 ], [ %374, %520 ], [ %374, %436 ], [ %374, %435 ], [ %374, %453 ], [ %374, %449 ], [ %374, %419 ]
  %644 = phi double [ %298, %289 ], [ %375, %628 ], [ %375, %543 ], [ %375, %542 ], [ %375, %560 ], [ %375, %556 ], [ %375, %526 ], [ %375, %520 ], [ %375, %436 ], [ %375, %435 ], [ %375, %453 ], [ %375, %449 ], [ %375, %419 ]
  %645 = phi double [ %297, %289 ], [ %376, %628 ], [ %376, %543 ], [ %376, %542 ], [ %376, %560 ], [ %376, %556 ], [ %376, %526 ], [ %376, %520 ], [ %376, %436 ], [ %376, %435 ], [ %376, %453 ], [ %376, %449 ], [ %376, %419 ]
  %646 = phi ptr [ %296, %289 ], [ %411, %628 ], [ %411, %543 ], [ %411, %542 ], [ %411, %560 ], [ %411, %556 ], [ %411, %526 ], [ %411, %520 ], [ %411, %436 ], [ %411, %435 ], [ %411, %453 ], [ %411, %449 ], [ %411, %419 ]
  %647 = phi ptr [ %295, %289 ], [ %412, %628 ], [ %412, %543 ], [ %412, %542 ], [ %412, %560 ], [ %412, %556 ], [ %412, %526 ], [ %412, %520 ], [ %412, %436 ], [ %412, %435 ], [ %412, %453 ], [ %412, %449 ], [ %412, %419 ]
  %648 = phi i64 [ %294, %289 ], [ %413, %628 ], [ %413, %543 ], [ %413, %542 ], [ %413, %560 ], [ %413, %556 ], [ %413, %526 ], [ %413, %520 ], [ %413, %436 ], [ %413, %435 ], [ %413, %453 ], [ %413, %449 ], [ %413, %419 ]
  %649 = phi i64 [ %293, %289 ], [ %290, %628 ], [ %290, %543 ], [ %290, %542 ], [ %290, %560 ], [ %290, %556 ], [ %290, %526 ], [ %290, %520 ], [ %290, %436 ], [ %290, %435 ], [ %290, %453 ], [ %290, %449 ], [ %290, %419 ]
  %650 = phi i64 [ %292, %289 ], [ %631, %628 ], [ %531, %543 ], [ %531, %542 ], [ %567, %560 ], [ %557, %556 ], [ %292, %526 ], [ %478, %520 ], [ %437, %436 ], [ %432, %435 ], [ %460, %453 ], [ %450, %449 ], [ %292, %419 ]
  %651 = phi i64 [ %291, %289 ], [ %585, %628 ], [ %544, %543 ], [ %539, %542 ], [ %561, %560 ], [ %553, %556 ], [ %291, %526 ], [ %523, %520 ], [ %424, %436 ], [ %424, %435 ], [ %454, %453 ], [ %446, %449 ], [ %291, %419 ]
  %652 = add i64 %290, 1
  %653 = icmp eq i64 %652, %96
  br i1 %653, label %654, label %289, !llvm.loop !333

654:                                              ; preds = %634, %273
  %655 = phi double [ %276, %273 ], [ %640, %634 ]
  %656 = phi double [ %277, %273 ], [ %641, %634 ]
  %657 = phi double [ %280, %273 ], [ %644, %634 ]
  %658 = phi double [ %281, %273 ], [ %645, %634 ]
  %659 = phi ptr [ %61, %273 ], [ %646, %634 ]
  %660 = phi ptr [ %62, %273 ], [ %647, %634 ]
  %661 = phi i64 [ 1, %273 ], [ %650, %634 ]
  %662 = phi i64 [ 1, %273 ], [ %651, %634 ]
  %663 = add nsw i64 %661, 1
  %664 = getelementptr inbounds %struct._PointInfo, ptr %659, i64 %661
  store double %656, ptr %664, align 8, !tbaa.struct !131
  %665 = getelementptr inbounds i8, ptr %664, i64 8
  store double %655, ptr %665, align 8, !tbaa.struct !132
  %666 = add nsw i64 %662, 1
  %667 = getelementptr inbounds %struct._PointInfo, ptr %660, i64 %662
  store double %658, ptr %667, align 8, !tbaa.struct !131
  %668 = getelementptr inbounds i8, ptr %667, i64 8
  store double %657, ptr %668, align 8, !tbaa.struct !132
  %669 = add nsw i64 %666, %663
  %670 = zext i1 %85 to i64
  %671 = select i1 %85, i64 4, i64 2
  %672 = add i64 %671, %669
  %673 = tail call ptr @AcquireQuantumMemory(i64 noundef %672, i64 noundef 40) #27
  %674 = icmp eq ptr %673, null
  br i1 %674, label %714, label %675

675:                                              ; preds = %654
  %676 = icmp slt i64 %661, 0
  br i1 %676, label %683, label %677

677:                                              ; preds = %675, %677
  %678 = phi i64 [ %681, %677 ], [ 0, %675 ]
  %679 = getelementptr inbounds %struct._PrimitiveInfo, ptr %673, i64 %678
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %679, ptr noundef nonnull align 8 dereferenceable(40) %64, i64 40, i1 false), !tbaa.struct !203
  %680 = getelementptr inbounds %struct._PointInfo, ptr %659, i64 %678
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %679, ptr noundef nonnull align 8 dereferenceable(16) %680, i64 16, i1 false), !tbaa.struct !131
  %681 = add nuw i64 %678, 1
  %682 = icmp eq i64 %678, %661
  br i1 %682, label %683, label %677, !llvm.loop !334

683:                                              ; preds = %677, %675
  %684 = phi i64 [ 0, %675 ], [ %681, %677 ]
  br i1 %85, label %685, label %688

685:                                              ; preds = %683
  %686 = getelementptr inbounds %struct._PrimitiveInfo, ptr %673, i64 %684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %686, ptr noundef nonnull align 8 dereferenceable(40) %64, i64 40, i1 false), !tbaa.struct !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %686, ptr noundef nonnull align 8 dereferenceable(16) %673, i64 16, i1 false), !tbaa.struct !131
  %687 = add nuw nsw i64 %684, 1
  br label %688

688:                                              ; preds = %685, %683
  %689 = phi i64 [ %687, %685 ], [ %684, %683 ]
  %690 = add nsw i64 %669, %670
  %691 = icmp slt i64 %689, %690
  br i1 %691, label %692, label %699

692:                                              ; preds = %688, %692
  %693 = phi i64 [ %695, %692 ], [ %689, %688 ]
  %694 = getelementptr inbounds %struct._PrimitiveInfo, ptr %673, i64 %693
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %694, ptr noundef nonnull align 8 dereferenceable(40) %64, i64 40, i1 false), !tbaa.struct !203
  %695 = add nsw i64 %693, 1
  %696 = sub nsw i64 %690, %695
  %697 = getelementptr inbounds %struct._PointInfo, ptr %660, i64 %696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %694, ptr noundef nonnull align 8 dereferenceable(16) %697, i64 16, i1 false), !tbaa.struct !131
  %698 = icmp slt i64 %695, %690
  br i1 %698, label %692, label %699, !llvm.loop !335

699:                                              ; preds = %692, %688
  %700 = phi i64 [ %689, %688 ], [ %695, %692 ]
  br i1 %85, label %701, label %706

701:                                              ; preds = %699
  %702 = getelementptr inbounds %struct._PrimitiveInfo, ptr %673, i64 %700
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %702, ptr noundef nonnull align 8 dereferenceable(40) %64, i64 40, i1 false), !tbaa.struct !203
  %703 = getelementptr %struct._PrimitiveInfo, ptr %673, i64 %663
  %704 = getelementptr %struct._PrimitiveInfo, ptr %703, i64 %670
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %702, ptr noundef nonnull align 8 dereferenceable(16) %704, i64 16, i1 false), !tbaa.struct !131
  %705 = add nsw i64 %700, 1
  br label %706

706:                                              ; preds = %701, %699
  %707 = phi i64 [ 2, %701 ], [ 0, %699 ]
  %708 = phi i64 [ %705, %701 ], [ %700, %699 ]
  %709 = getelementptr inbounds %struct._PrimitiveInfo, ptr %673, i64 %708
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %709, ptr noundef nonnull align 8 dereferenceable(40) %64, i64 40, i1 false), !tbaa.struct !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %709, ptr noundef nonnull align 8 dereferenceable(16) %673, i64 16, i1 false), !tbaa.struct !131
  %710 = getelementptr %struct._PrimitiveInfo, ptr %709, i64 1, i32 2
  store i32 0, ptr %710, align 8, !tbaa !191
  %711 = add i64 %669, 1
  %712 = add i64 %711, %707
  %713 = getelementptr inbounds %struct._PrimitiveInfo, ptr %673, i64 0, i32 1
  store i64 %712, ptr %713, align 8, !tbaa !193
  br label %714

714:                                              ; preds = %706, %654
  %715 = tail call ptr @RelinquishMagickMemory(ptr noundef %659) #24
  %716 = tail call ptr @RelinquishMagickMemory(ptr noundef %660) #24
  br label %717

717:                                              ; preds = %403, %714
  %718 = phi ptr [ %673, %714 ], [ null, %403 ]
  %719 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %64) #24
  br label %720

720:                                              ; preds = %717, %54
  %721 = phi ptr [ null, %54 ], [ %718, %717 ]
  %722 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %12, ptr noundef %721), !range !163
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %780, label %724

724:                                              ; preds = %720
  %725 = tail call ptr @RelinquishMagickMemory(ptr noundef %721) #24
  %726 = load i64, ptr %57, align 8, !tbaa !193
  %727 = getelementptr inbounds %struct._PrimitiveInfo, ptr %56, i64 %726
  %728 = getelementptr inbounds %struct._PrimitiveInfo, ptr %727, i64 -1
  %729 = load double, ptr %728, align 8, !tbaa !197
  %730 = load double, ptr %56, align 8, !tbaa !197
  %731 = fcmp oeq double %729, %730
  br i1 %731, label %732, label %738

732:                                              ; preds = %724
  %733 = getelementptr %struct._PrimitiveInfo, ptr %727, i64 -1, i32 0, i32 1
  %734 = load double, ptr %733, align 8, !tbaa !198
  %735 = getelementptr inbounds %struct._PointInfo, ptr %56, i64 0, i32 1
  %736 = load double, ptr %735, align 8, !tbaa !198
  %737 = fcmp oeq double %734, %736
  br label %738

738:                                              ; preds = %732, %724
  %739 = phi i1 [ false, %724 ], [ %737, %732 ]
  %740 = load i32, ptr %41, align 4, !tbaa !59
  %741 = icmp ne i32 %740, 2
  %742 = select i1 %741, i1 true, i1 %739
  br i1 %742, label %774, label %743

743:                                              ; preds = %738
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #24
  br label %744

744:                                              ; preds = %744, %743
  %745 = phi i64 [ 0, %743 ], [ %747, %744 ]
  %746 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %5, i64 0, i64 %745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %746, ptr noundef nonnull align 8 dereferenceable(40) %56, i64 40, i1 false), !tbaa.struct !203
  %747 = add nuw nsw i64 %745, 1
  %748 = icmp eq i64 %747, 4
  br i1 %748, label %749, label %744, !llvm.loop !336

749:                                              ; preds = %744
  store i64 4, ptr %42, align 16, !tbaa !193
  %750 = load double, ptr %43, align 8, !tbaa !197
  %751 = fadd double %750, 0x3D06849B86A12B9C
  store double %751, ptr %43, align 8, !tbaa !197
  %752 = load double, ptr %44, align 16, !tbaa !197
  %753 = fadd double %752, 0x3D06849B86A12B9C
  store double %753, ptr %44, align 16, !tbaa !197
  %754 = load double, ptr %45, align 8, !tbaa !198
  %755 = fadd double %754, 0x3D06849B86A12B9C
  store double %755, ptr %45, align 8, !tbaa !198
  %756 = load double, ptr %46, align 16, !tbaa !198
  %757 = fadd double %756, 0x3D06849B86A12B9C
  store double %757, ptr %46, align 16, !tbaa !198
  store i32 0, ptr %47, align 8, !tbaa !191
  %758 = call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5), !range !163
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #24
  br label %759

759:                                              ; preds = %759, %749
  %760 = phi i64 [ 0, %749 ], [ %762, %759 ]
  %761 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 %760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %761, ptr noundef nonnull align 8 dereferenceable(40) %728, i64 40, i1 false), !tbaa.struct !203
  %762 = add nuw nsw i64 %760, 1
  %763 = icmp eq i64 %762, 4
  br i1 %763, label %764, label %759, !llvm.loop !336

764:                                              ; preds = %759
  store i64 4, ptr %48, align 16, !tbaa !193
  %765 = load double, ptr %49, align 8, !tbaa !197
  %766 = fadd double %765, 0x3D06849B86A12B9C
  store double %766, ptr %49, align 8, !tbaa !197
  %767 = load double, ptr %50, align 16, !tbaa !197
  %768 = fadd double %767, 0x3D06849B86A12B9C
  store double %768, ptr %50, align 16, !tbaa !197
  %769 = load double, ptr %51, align 8, !tbaa !198
  %770 = fadd double %769, 0x3D06849B86A12B9C
  store double %770, ptr %51, align 8, !tbaa !198
  %771 = load double, ptr %52, align 16, !tbaa !198
  %772 = fadd double %771, 0x3D06849B86A12B9C
  store double %772, ptr %52, align 16, !tbaa !198
  store i32 0, ptr %53, align 8, !tbaa !191
  %773 = call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4), !range !163
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #24
  br label %774

774:                                              ; preds = %738, %764
  %775 = load i64, ptr %57, align 8, !tbaa !193
  %776 = getelementptr inbounds %struct._PrimitiveInfo, ptr %56, i64 %775
  %777 = getelementptr inbounds %struct._PrimitiveInfo, ptr %56, i64 %775, i32 2
  %778 = load i32, ptr %777, align 8, !tbaa !191
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %54, !llvm.loop !337

780:                                              ; preds = %774, %720, %28
  %781 = phi i1 [ %34, %28 ], [ %779, %774 ], [ %55, %720 ]
  %782 = tail call ptr @DestroyDrawInfo(ptr noundef %12)
  %783 = load i32, ptr %6, align 8, !tbaa !113
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %787, label %785

785:                                              ; preds = %780
  %786 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4748, ptr noundef nonnull @.str.146) #24
  br label %787

787:                                              ; preds = %785, %780
  %788 = zext i1 %781 to i32
  ret i32 %788
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #3

declare ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @DestroyPolygonThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %1, %28
  %5 = phi i64 [ %29, %28 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._PolygonInfo, ptr %7, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !313
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %21, %13 ], [ 0, %9 ]
  %15 = load ptr, ptr %7, align 8, !tbaa !300
  %16 = getelementptr inbounds %struct._EdgeInfo, ptr %15, i64 %14, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !309
  %18 = tail call ptr @RelinquishMagickMemory(ptr noundef %17) #24
  %19 = load ptr, ptr %7, align 8, !tbaa !300
  %20 = getelementptr inbounds %struct._EdgeInfo, ptr %19, i64 %14, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !309
  %21 = add nuw nsw i64 %14, 1
  %22 = load i64, ptr %10, align 8, !tbaa !313
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %13, label %24, !llvm.loop !338

24:                                               ; preds = %13, %9
  %25 = load ptr, ptr %7, align 8, !tbaa !300
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef %25) #24
  store ptr %26, ptr %7, align 8, !tbaa !300
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #24
  store ptr %27, ptr %6, align 8, !tbaa !105
  br label %28

28:                                               ; preds = %4, %24
  %29 = add nuw nsw i64 %5, 1
  %30 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %4, label %32, !llvm.loop !339

32:                                               ; preds = %28, %1
  %33 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #24
  ret ptr %33
}

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @CompareEdges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = getelementptr inbounds %struct._EdgeInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !309
  %5 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !125
  %7 = fadd double %6, -1.000000e-15
  %8 = getelementptr inbounds %struct._EdgeInfo, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !309
  %10 = getelementptr inbounds %struct._PointInfo, ptr %9, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !125
  %12 = fcmp ogt double %7, %11
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = fadd double %6, 1.000000e-15
  %15 = fcmp olt double %14, %11
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = load double, ptr %4, align 8, !tbaa !124
  %18 = fadd double %17, -1.000000e-15
  %19 = load double, ptr %9, align 8, !tbaa !124
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %16
  %22 = fadd double %17, 1.000000e-15
  %23 = fcmp olt double %22, %19
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !124
  %27 = fsub double %26, %17
  %28 = getelementptr inbounds %struct._PointInfo, ptr %9, i64 1
  %29 = getelementptr inbounds %struct._PointInfo, ptr %9, i64 1, i32 1
  %30 = load double, ptr %29, align 8, !tbaa !125
  %31 = fsub double %30, %11
  %32 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 1, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !125
  %34 = fsub double %33, %6
  %35 = load double, ptr %28, align 8, !tbaa !124
  %36 = fsub double %35, %19
  %37 = fneg double %34
  %38 = fmul double %36, %37
  %39 = tail call double @llvm.fmuladd.f64(double %27, double %31, double %38)
  %40 = fcmp ogt double %39, 0.000000e+00
  %41 = select i1 %40, i32 1, i32 -1
  br label %42

42:                                               ; preds = %24, %21, %16, %13, %2
  %43 = phi i32 [ 1, %2 ], [ -1, %13 ], [ 1, %16 ], [ -1, %21 ], [ %41, %24 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { hot nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(1,2) }

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
!38 = !{!39, !40, i64 0}
!39 = !{!"_AffineMatrix", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40}
!40 = !{!"double", !36, i64 0}
!41 = !{!39, !40, i64 24}
!42 = !{!43, !35, i64 20}
!43 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !45, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !40, i64 144, !40, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !35, i64 184, !35, i64 188, !45, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !45, i64 216, !35, i64 224, !35, i64 228, !44, i64 232, !44, i64 240, !35, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !44, i64 312, !45, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !44, i64 16720, !45, i64 16728, !45, i64 16736, !46, i64 16744, !45, i64 16752, !35, i64 16760, !46, i64 16764, !44, i64 16776, !35, i64 16784}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!"long", !36, i64 0}
!46 = !{!"_PixelPacket", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6}
!47 = !{!"short", !36, i64 0}
!48 = !{!49, !35, i64 280}
!49 = !{!"_DrawInfo", !44, i64 0, !44, i64 8, !50, i64 16, !39, i64 48, !35, i64 96, !46, i64 100, !46, i64 108, !40, i64 120, !51, i64 128, !44, i64 256, !44, i64 264, !44, i64 272, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !45, i64 304, !40, i64 312, !35, i64 320, !35, i64 324, !44, i64 328, !45, i64 336, !44, i64 344, !44, i64 352, !44, i64 360, !35, i64 368, !35, i64 372, !45, i64 376, !44, i64 384, !40, i64 392, !44, i64 400, !35, i64 408, !46, i64 412, !46, i64 420, !44, i64 432, !44, i64 440, !44, i64 448, !52, i64 456, !35, i64 488, !47, i64 492, !35, i64 496, !55, i64 504, !35, i64 672, !45, i64 680, !40, i64 688, !40, i64 696, !40, i64 704, !35, i64 712}
!50 = !{!"_RectangleInfo", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!51 = !{!"_GradientInfo", !35, i64 0, !50, i64 8, !52, i64 40, !44, i64 72, !45, i64 80, !35, i64 88, !35, i64 92, !45, i64 96, !53, i64 104, !54, i64 120}
!52 = !{!"_SegmentInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!53 = !{!"_PointInfo", !40, i64 0, !40, i64 8}
!54 = !{!"float", !36, i64 0}
!55 = !{!"_ElementReference", !44, i64 0, !35, i64 8, !51, i64 16, !45, i64 144, !44, i64 152, !44, i64 160}
!56 = !{!49, !40, i64 120}
!57 = !{!49, !47, i64 492}
!58 = !{!49, !35, i64 288}
!59 = !{!49, !35, i64 292}
!60 = !{!49, !35, i64 296}
!61 = !{!49, !45, i64 304}
!62 = !{!49, !35, i64 320}
!63 = !{!43, !44, i64 120}
!64 = !{!49, !44, i64 344}
!65 = !{!43, !44, i64 136}
!66 = !{!49, !44, i64 400}
!67 = !{!49, !35, i64 284}
!68 = !{!49, !40, i64 392}
!69 = !{!43, !40, i64 144}
!70 = !{!49, !47, i64 418}
!71 = !{!49, !35, i64 324}
!72 = !{!43, !44, i64 112}
!73 = !{!49, !44, i64 432}
!74 = !{!49, !35, i64 496}
!75 = !{!49, !35, i64 672}
!76 = !{!49, !40, i64 688}
!77 = !{!49, !40, i64 704}
!78 = !{!49, !35, i64 712}
!79 = !{!49, !40, i64 696}
!80 = !{!49, !35, i64 96}
!81 = !{!49, !45, i64 680}
!82 = !{!49, !44, i64 0}
!83 = !{!49, !44, i64 8}
!84 = !{i64 0, i64 8, !85, i64 8, i64 8, !85, i64 16, i64 8, !85, i64 24, i64 8, !85}
!85 = !{!45, !45, i64 0}
!86 = !{i64 0, i64 8, !87, i64 8, i64 8, !87, i64 16, i64 8, !87, i64 24, i64 8, !87, i64 32, i64 8, !87, i64 40, i64 8, !87}
!87 = !{!40, !40, i64 0}
!88 = !{!49, !44, i64 256}
!89 = !{!49, !44, i64 264}
!90 = !{!49, !44, i64 272}
!91 = !{!49, !40, i64 312}
!92 = !{!49, !44, i64 328}
!93 = !{!49, !44, i64 352}
!94 = !{!49, !44, i64 360}
!95 = !{!49, !35, i64 368}
!96 = !{!49, !35, i64 372}
!97 = !{!49, !45, i64 376}
!98 = !{!49, !44, i64 384}
!99 = !{!49, !35, i64 408}
!100 = !{!49, !44, i64 440}
!101 = distinct !{!101, !102, !103}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{i64 0, i64 4, !34, i64 8, i64 8, !85, i64 16, i64 8, !85, i64 24, i64 8, !85, i64 32, i64 8, !85, i64 40, i64 8, !87, i64 48, i64 8, !87, i64 56, i64 8, !87, i64 64, i64 8, !87, i64 72, i64 8, !105, i64 80, i64 8, !85, i64 88, i64 4, !34, i64 92, i64 4, !34, i64 96, i64 8, !85, i64 104, i64 8, !87, i64 112, i64 8, !87, i64 120, i64 4, !106}
!105 = !{!44, !44, i64 0}
!106 = !{!54, !54, i64 0}
!107 = !{!49, !44, i64 200}
!108 = !{!49, !45, i64 208}
!109 = !{!49, !44, i64 448}
!110 = !{i64 0, i64 8, !87, i64 8, i64 8, !87, i64 16, i64 8, !87, i64 24, i64 8, !87}
!111 = !{!49, !35, i64 488}
!112 = !{i64 0, i64 8, !105, i64 8, i64 4, !34, i64 16, i64 4, !34, i64 24, i64 8, !85, i64 32, i64 8, !85, i64 40, i64 8, !85, i64 48, i64 8, !85, i64 56, i64 8, !87, i64 64, i64 8, !87, i64 72, i64 8, !87, i64 80, i64 8, !87, i64 88, i64 8, !105, i64 96, i64 8, !85, i64 104, i64 4, !34, i64 108, i64 4, !34, i64 112, i64 8, !85, i64 120, i64 8, !87, i64 128, i64 8, !87, i64 136, i64 4, !106, i64 144, i64 8, !85, i64 152, i64 8, !105, i64 160, i64 8, !105}
!113 = !{!114, !35, i64 12976}
!114 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !45, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !44, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !40, i64 104, !115, i64 112, !35, i64 208, !44, i64 216, !35, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !45, i64 256, !40, i64 264, !40, i64 272, !50, i64 280, !50, i64 312, !50, i64 344, !40, i64 376, !40, i64 384, !40, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !44, i64 424, !45, i64 432, !45, i64 440, !45, i64 448, !45, i64 456, !45, i64 464, !45, i64 472, !117, i64 480, !118, i64 504, !44, i64 568, !44, i64 576, !44, i64 584, !44, i64 592, !44, i64 600, !44, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !45, i64 12904, !45, i64 12912, !120, i64 12920, !35, i64 12976, !45, i64 12984, !44, i64 12992, !121, i64 13000, !121, i64 13032, !44, i64 13064, !45, i64 13072, !45, i64 13080, !44, i64 13088, !44, i64 13096, !44, i64 13104, !35, i64 13112, !35, i64 13116, !46, i64 13120, !44, i64 13128, !50, i64 13136, !44, i64 13168, !44, i64 13176, !35, i64 13184, !35, i64 13188, !122, i64 13192, !35, i64 13200, !45, i64 13208, !45, i64 13216, !35, i64 13224, !45, i64 13232}
!115 = !{!"_ChromaticityInfo", !116, i64 0, !116, i64 24, !116, i64 48, !116, i64 72}
!116 = !{!"_PrimaryInfo", !40, i64 0, !40, i64 8, !40, i64 16}
!117 = !{!"_ErrorInfo", !40, i64 0, !40, i64 8, !40, i64 16}
!118 = !{!"_TimerInfo", !119, i64 0, !119, i64 24, !35, i64 48, !45, i64 56}
!119 = !{!"_Timer", !40, i64 0, !40, i64 8, !40, i64 16}
!120 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !44, i64 8, !44, i64 16, !44, i64 24, !35, i64 32, !44, i64 40, !45, i64 48}
!121 = !{!"_ProfileInfo", !44, i64 0, !45, i64 8, !44, i64 16, !45, i64 24}
!122 = !{!"long long", !36, i64 0}
!123 = !{!114, !45, i64 40}
!124 = !{!53, !40, i64 0}
!125 = !{!53, !40, i64 8}
!126 = !{!114, !45, i64 48}
!127 = !{!39, !40, i64 16}
!128 = !{!39, !40, i64 32}
!129 = !{!39, !40, i64 8}
!130 = !{!39, !40, i64 40}
!131 = !{i64 0, i64 8, !87, i64 8, i64 8, !87}
!132 = !{i64 0, i64 8, !87}
!133 = distinct !{!133, !102, !103}
!134 = distinct !{!134, !102, !103}
!135 = !{!136}
!136 = distinct !{!136, !137, !"InverseAffineMatrix: argument 0"}
!137 = distinct !{!137, !"InverseAffineMatrix"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"AffineEdge: argument 0"}
!140 = distinct !{!140, !"AffineEdge"}
!141 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 16, i64 8, !87, i64 24, i64 8, !85, i64 32, i64 4, !106, i64 36, i64 4, !106, i64 40, i64 4, !106, i64 44, i64 4, !106, i64 48, i64 4, !106}
!142 = !{i64 0, i64 4, !106}
!143 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 12, i64 8, !87, i64 20, i64 8, !85, i64 28, i64 4, !106, i64 32, i64 4, !106, i64 36, i64 4, !106, i64 40, i64 4, !106, i64 44, i64 4, !106}
!144 = !{!46, !47, i64 4}
!145 = !{!46, !47, i64 2}
!146 = !{!46, !47, i64 0}
!147 = !{!46, !47, i64 6}
!148 = !{!114, !35, i64 4}
!149 = !{!47, !47, i64 0}
!150 = !{i64 0, i64 4, !106, i64 4, i64 4, !106, i64 8, i64 4, !106, i64 12, i64 4, !106, i64 16, i64 4, !106}
!151 = !{i64 0, i64 4, !106, i64 4, i64 4, !106, i64 8, i64 4, !106, i64 12, i64 4, !106}
!152 = !{i64 0, i64 4, !106, i64 4, i64 4, !106, i64 8, i64 4, !106}
!153 = !{!154, !54, i64 32}
!154 = !{!"_MagickPixelPacket", !35, i64 0, !35, i64 4, !35, i64 8, !40, i64 16, !45, i64 24, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48}
!155 = !{!154, !54, i64 36}
!156 = !{!154, !54, i64 40}
!157 = !{!154, !54, i64 48}
!158 = !{!114, !35, i64 0}
!159 = distinct !{!159, !102, !103}
!160 = distinct !{!160, !102, !103}
!161 = !{!114, !44, i64 424}
!162 = !{!114, !47, i64 86}
!163 = !{i32 0, i32 2}
!164 = !{!36, !36, i64 0}
!165 = !{!114, !45, i64 280}
!166 = !{!114, !45, i64 288}
!167 = !{!49, !45, i64 16}
!168 = !{!49, !45, i64 24}
!169 = distinct !{!169, !102, !103}
!170 = distinct !{!170, !102, !103}
!171 = !{!49, !40, i64 472}
!172 = !{!49, !40, i64 480}
!173 = !{!49, !40, i64 456}
!174 = !{!49, !40, i64 464}
!175 = !{!49, !47, i64 106}
!176 = !{!49, !47, i64 114}
!177 = distinct !{!177, !102, !103}
!178 = distinct !{!178, !102, !103}
!179 = !{!49, !40, i64 48}
!180 = !{!49, !40, i64 64}
!181 = !{!49, !40, i64 80}
!182 = !{!49, !40, i64 56}
!183 = !{!49, !40, i64 72}
!184 = !{!49, !40, i64 88}
!185 = distinct !{!185, !102, !103}
!186 = distinct !{!186, !102, !103}
!187 = distinct !{!187, !102, !103}
!188 = distinct !{!188, !102, !103}
!189 = !{!49, !45, i64 32}
!190 = !{!49, !45, i64 40}
!191 = !{!192, !35, i64 24}
!192 = !{!"_PrimitiveInfo", !53, i64 0, !45, i64 16, !35, i64 24, !35, i64 28, !44, i64 32}
!193 = !{!192, !45, i64 16}
!194 = !{!192, !35, i64 28}
!195 = distinct !{!195, !102, !103}
!196 = !{!192, !44, i64 32}
!197 = !{!192, !40, i64 0}
!198 = !{!192, !40, i64 8}
!199 = distinct !{!199, !102, !103}
!200 = distinct !{!200, !102, !103}
!201 = distinct !{!201, !102, !103}
!202 = distinct !{!202, !102, !103}
!203 = !{i64 0, i64 8, !87, i64 8, i64 8, !87, i64 16, i64 8, !85, i64 24, i64 4, !34, i64 28, i64 4, !34, i64 32, i64 8, !105}
!204 = distinct !{!204, !102, !103}
!205 = distinct !{!205, !102, !103}
!206 = distinct !{!206, !102, !103}
!207 = distinct !{!207, !102, !103}
!208 = distinct !{!208, !102, !103}
!209 = distinct !{!209, !102, !103}
!210 = distinct !{!210, !102, !103}
!211 = distinct !{!211, !102, !103}
!212 = distinct !{!212, !102, !103}
!213 = distinct !{!213, !102, !103}
!214 = distinct !{!214, !102, !103}
!215 = distinct !{!215, !102, !103}
!216 = distinct !{!216, !102, !103}
!217 = distinct !{!217, !102, !103}
!218 = distinct !{!218, !102, !103}
!219 = distinct !{!219, !102, !103}
!220 = distinct !{!220, !102, !103}
!221 = distinct !{!221, !102, !103}
!222 = distinct !{!222, !102, !103}
!223 = distinct !{!223, !102, !103}
!224 = distinct !{!224, !102, !103}
!225 = distinct !{!225, !102, !103}
!226 = distinct !{!226, !102, !103}
!227 = !{!114, !44, i64 568}
!228 = !{!114, !44, i64 576}
!229 = distinct !{!229, !102, !103}
!230 = !{!43, !44, i64 24}
!231 = distinct !{!231, !102, !103}
!232 = distinct !{!232, !102, !103}
!233 = distinct !{!233, !102, !103}
!234 = distinct !{!234, !102, !103}
!235 = distinct !{!235, !102, !103}
!236 = distinct !{!236, !102, !103}
!237 = distinct !{!237, !102, !103}
!238 = distinct !{!238, !102, !103}
!239 = distinct !{!239, !102, !103}
!240 = distinct !{!240, !102, !103}
!241 = distinct !{!241, !102, !103}
!242 = distinct !{!242, !102, !103}
!243 = !{!114, !45, i64 13152}
!244 = !{!114, !45, i64 13160}
!245 = !{!114, !35, i64 32}
!246 = distinct !{!246, !102, !103}
!247 = distinct !{!247, !102, !103}
!248 = !{!49, !47, i64 424}
!249 = !{!49, !47, i64 422}
!250 = !{!49, !47, i64 420}
!251 = distinct !{!251, !102, !103}
!252 = distinct !{!252, !102, !103}
!253 = distinct !{!253, !102, !103}
!254 = distinct !{!254, !102, !103}
!255 = distinct !{!255, !102, !103}
!256 = distinct !{!256, !102, !103}
!257 = !{!114, !35, i64 400}
!258 = !{!114, !35, i64 412}
!259 = !{!50, !45, i64 16}
!260 = !{!50, !45, i64 24}
!261 = !{!114, !35, i64 13112}
!262 = distinct !{!262, !102, !103}
!263 = distinct !{!263, !102, !103}
!264 = distinct !{!264, !102, !103}
!265 = distinct !{!265, !102, !103}
!266 = distinct !{!266, !102, !103}
!267 = distinct !{!267, !102, !103}
!268 = !{!52, !40, i64 16}
!269 = !{!52, !40, i64 0}
!270 = !{!52, !40, i64 24}
!271 = !{!52, !40, i64 8}
!272 = !{i64 0, i64 8, !85, i64 8, i64 8, !85, i64 16, i64 8, !85}
!273 = !{i64 0, i64 8, !85, i64 8, i64 8, !85}
!274 = !{i64 0, i64 8, !85}
!275 = !{i64 0, i64 4, !106, i64 4, i64 4, !106}
!276 = !{!51, !35, i64 0}
!277 = !{!51, !40, i64 104}
!278 = !{!51, !40, i64 112}
!279 = !{!51, !35, i64 88}
!280 = !{!51, !54, i64 120}
!281 = !{!51, !45, i64 80}
!282 = !{!51, !44, i64 72}
!283 = !{!284, !54, i64 56}
!284 = !{!"_StopInfo", !154, i64 0, !54, i64 56}
!285 = distinct !{!285, !102, !103}
!286 = !{!154, !54, i64 44}
!287 = !{!154, !35, i64 4}
!288 = distinct !{!288, !102, !103}
!289 = distinct !{!289, !102, !103}
!290 = distinct !{!290, !102, !103}
!291 = distinct !{!291, !102, !103}
!292 = distinct !{!292, !102, !103}
!293 = !{!294, !35, i64 16}
!294 = !{!"_PathInfo", !53, i64 0, !35, i64 16}
!295 = distinct !{!295, !102, !103}
!296 = !{!294, !40, i64 0}
!297 = !{!294, !40, i64 8}
!298 = distinct !{!298, !102, !103}
!299 = distinct !{!299, !102, !103}
!300 = !{!301, !44, i64 0}
!301 = !{!"_PolygonInfo", !44, i64 0, !45, i64 8}
!302 = !{!303, !45, i64 48}
!303 = !{!"_EdgeInfo", !52, i64 0, !40, i64 32, !44, i64 40, !45, i64 48, !45, i64 56, !35, i64 64, !45, i64 72}
!304 = !{!303, !40, i64 32}
!305 = !{!303, !45, i64 72}
!306 = !{!303, !35, i64 64}
!307 = !{!303, !45, i64 56}
!308 = distinct !{!308, !102, !103}
!309 = !{!303, !44, i64 40}
!310 = !{!303, !40, i64 8}
!311 = !{!303, !40, i64 24}
!312 = distinct !{!312, !102, !103}
!313 = !{!301, !45, i64 8}
!314 = !{!303, !40, i64 0}
!315 = !{!303, !40, i64 16}
!316 = distinct !{!316, !102, !103}
!317 = distinct !{!317, !102, !103}
!318 = !{i64 0, i64 8, !87, i64 8, i64 8, !87, i64 16, i64 8, !87}
!319 = distinct !{!319, !102, !103}
!320 = distinct !{!320, !102, !103}
!321 = distinct !{!321, !102, !103}
!322 = distinct !{!322, !102, !103}
!323 = distinct !{!323, !102, !103}
!324 = distinct !{!324, !102, !103}
!325 = distinct !{!325, !102, !103}
!326 = distinct !{!326, !102, !103}
!327 = distinct !{!327, !102, !103}
!328 = distinct !{!328, !102, !103}
!329 = distinct !{!329, !102, !103}
!330 = distinct !{!330, !102, !103}
!331 = distinct !{!331, !102, !103}
!332 = distinct !{!332, !102, !103}
!333 = distinct !{!333, !102, !103}
!334 = distinct !{!334, !102, !103}
!335 = distinct !{!335, !102, !103}
!336 = distinct !{!336, !102, !103}
!337 = distinct !{!337, !102, !103}
!338 = distinct !{!338, !102, !103}
!339 = distinct !{!339, !102, !103}
